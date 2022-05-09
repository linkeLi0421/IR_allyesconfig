; ModuleID = '/llk/IR_all_yes/fs/reiserfs/inode.c_pt.bc'
source_filename = "../fs/reiserfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%union.anon.75 = type { i32 }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.85 = type { ptr }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.88, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.88 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cpu_key = type { %struct.in_core_key, i32, i32 }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.reiserfs_key = type { i32, i32, %union.anon.89 }
%union.anon.89 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.90, i16, i16, i16 }
%union.anon.90 = type { i16 }
%struct.offset_v1 = type { i32, i32 }
%struct.__reiserfs_blocknr_hint = type { ptr, i64, %struct.in_core_key, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_list_bitmap = type { ptr, ptr }
%struct.page = type { i32, %union.anon.7, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.block_head = type { i16, i16, i16, i16, %struct.reiserfs_key }
%struct.reiserfs_iget_args = type { i32, i32 }
%struct.stat_data_v1 = type { i16, i16, i16, i16, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.stat_data = type <{ i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, %union.anon.91 }>
%union.anon.91 = type { i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.reiserfs_super_block = type { %struct.reiserfs_super_block_v1, i32, i32, [16 x i8], [16 x i8], i16, i16, i32, i32, [76 x i8] }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
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

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-6004\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_get_block = private unnamed_addr constant [19 x i8] c"reiserfs_get_block\00", align 1
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"convert tail failed inode %lu, error %d\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [176 x i8], [48 x i8] } { [176 x i8] c"(!(pos_in_item != (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))) / (sizeof(unp_t)))) at fs/reiserfs/inode.c:%i:%s: vs-804: invalid position for append\0A\00", [48 x i8] zeroinitializer }, align 32
@item_ops = external dso_local local_unnamed_addr global [16 x ptr], align 4
@.str.5 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"(!(cpu_key_k_offset(&tmp_key) > cpu_key_k_offset(&key))) at fs/reiserfs/inode.c:%i:%s: green-805: invalid offset\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vs-825\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%K should not be found\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-13050\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_update_sd_size = private unnamed_addr constant [24 x i8] c"reiserfs_update_sd_size\00", align 1
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"i/o failure occurred trying to update %K stat data\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-13060\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"stat data of object %k (nlink == %d) not found (pos %d)\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-13070\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_read_locked_inode = private unnamed_addr constant [27 x i8] c"reiserfs_read_locked_inode\00", align 1
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"i/o failure occurred trying to find stat data of %K\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-13075\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"dead inode read from disk %K. This is likely to be race with knfsd. Ignore\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-13077\00", [17 x i8] zeroinitializer }, align 32
@__func__.reiserfs_fh_to_dentry = private unnamed_addr constant [22 x i8] c"reiserfs_fh_to_dentry\00", align 1
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfsd/reiserfs, fhtype=%d, len=%d - odd\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jdm-13090\00", [22 x i8] zeroinitializer }, align 32
@__func__.reiserfs_new_inode = private unnamed_addr constant [19 x i8] c"reiserfs_new_inode\00", align 1
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ACLs aren't enabled in the fs, but vfs thinks they are!\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-6001\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_truncate_file = private unnamed_addr constant [23 x i8] c"reiserfs_truncate_file\00", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"grab_tail_page failed %d\00", [39 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@reiserfs_address_space_operations = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @reiserfs_writepage, ptr @reiserfs_readpage, ptr null, ptr @reiserfs_set_page_dirty, ptr null, ptr @reiserfs_readahead, ptr @reiserfs_write_begin, ptr @reiserfs_write_end, ptr @reiserfs_aop_bmap, ptr @reiserfs_invalidatepage, ptr @reiserfs_releasepage, ptr null, ptr @reiserfs_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-13065\00", [23 x i8] zeroinitializer }, align 32
@__func__.update_stat_data = private unnamed_addr constant [17 x i8] c"update_stat_data\00", align 1
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"key %k, found item %h\00", [42 x i8] zeroinitializer }, align 32
@reiserfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@reiserfs_file_operations = external dso_local constant %struct.file_operations, align 4
@reiserfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@reiserfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@reiserfs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@reiserfs_special_inode_operations = external dso_local constant %struct.inode_operations, align 128
@reiserfs_init_xattr_rwsem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&REISERFS_I(inode)->i_xattr_sem\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-13080\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_new_directory = private unnamed_addr constant [23 x i8] c"reiserfs_new_directory\00", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"i/o failure occurred creating new directory\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"object with this key exists (%k)\00", [63 x i8] zeroinitializer }, align 32
@__func__.reiserfs_new_symlink = private unnamed_addr constant [21 x i8] c"reiserfs_new_symlink\00", align 1
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"i/o failure occurred creating new symlink\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-6000\00", [23 x i8] zeroinitializer }, align 32
@__func__.grab_tail_page = private unnamed_addr constant [15 x i8] c"grab_tail_page\00", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error reading block %lu\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-6002\00", [23 x i8] zeroinitializer }, align 32
@__func__.map_block_for_writepage = private unnamed_addr constant [24 x i8] c"map_block_for_writepage\00", align 1
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bytes_copied %d\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-6003\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad item inode %lu\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/reiserfs/inode.c\00", [44 x i8] zeroinitializer }, align 32
@switch.table.make_le_item_head = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -2, i32 -1, i32 500], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967290, i64 4294967293]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294967290, i64 4294967293]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 4278190079, i64 4294967295]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 933, i32 7 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1022, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1036, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1131, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1465, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1477, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1559, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1597, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1704, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2114, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2285, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant [34 x i8] c"reiserfs_address_space_operations\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3428, i32 39 }
@___asan_gen_.142 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 55, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 260, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1432, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [23 x i8] c"../fs/reiserfs/xattr.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 88, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1841, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1847, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1884, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2239, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 452, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 717, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2414, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2472, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 430, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 366, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 461, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 678, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [23 x i8] c"../fs/reiserfs/inode.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3231, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [31 x i8] c"switch.table.make_le_item_head\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @reiserfs_address_space_operations, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @reiserfs_init_xattr_rwsem.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.make_le_item_head], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_address_space_operations to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_init_xattr_rwsem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.make_le_item_head to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = select i1 %tobool.not, i32 36, i32 202
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #14
  %6 = call ptr @memset(ptr %th, i32 255, i32 36)
  %7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #14
  br i1 %call2, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @dquot_initialize(ptr noundef %inode) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #14
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end6, label %no_delete

if.end6:                                          ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %12 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_state, align 8
  %and7 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %if.end6.if.end35_crit_edge

if.end6.if.end35_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true9:                                   ; preds = %if.end6
  %k_objectid = getelementptr i8, ptr %inode, i32 -260
  %14 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %k_objectid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %land.lhs.true9.if.end35_crit_edge, label %if.then11

land.lhs.true9.if.end35_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then11:                                        ; preds = %land.lhs.true9
  %call12 = tail call i32 @reiserfs_delete_xattrs(ptr noundef %inode) #14
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %17) #14
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %call15 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %19, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then11.out_crit_edge

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end18:                                         ; preds = %if.then11
  call void @reiserfs_update_inode_transaction(ptr noundef %inode) #14
  call void @reiserfs_discard_prealloc(ptr noundef nonnull %th, ptr noundef %inode) #14
  %call19 = call i32 @reiserfs_delete_object(ptr noundef nonnull %th, ptr noundef %inode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %call23 = call i32 @reiserfs_write_unlock_nested(ptr noundef %21) #14
  call void @dquot_free_inode(ptr noundef %inode) #14
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %23, i32 noundef %call23) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18.if.end25_crit_edge
  %call26 = call i32 @journal_end(ptr noundef nonnull %th) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp ne i32 %call26, 0
  %tobool20.not.not = xor i1 %tobool20.not, true
  %brmerge = select i1 %tobool27.not, i1 true, i1 %tobool20.not.not
  br i1 %brmerge, label %if.end25.out_crit_edge, label %if.end32

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call33 = call i32 @remove_save_link(ptr noundef %inode, i32 noundef 0) #14
  br label %out

out:                                              ; preds = %if.end32, %if.end25.out_crit_edge, %if.then11.out_crit_edge
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %25) #14
  br label %if.end35

if.end35:                                         ; preds = %out, %land.lhs.true9.if.end35_crit_edge, %if.end6.if.end35_crit_edge
  call void @clear_inode(ptr noundef %inode) #14
  call void @dquot_drop(ptr noundef %inode) #14
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %26 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %i_blocks, align 8
  br label %cleanup

no_delete:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clear_inode(ptr noundef %inode) #14
  tail call void @dquot_drop(ptr noundef %inode) #14
  br label %cleanup

cleanup:                                          ; preds = %no_delete, %if.end35
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_delete_xattrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_inode_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_discard_prealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_delete_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_free_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_save_link(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @make_cpu_key(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %inode, i64 noundef %offset, i32 noundef %type, i32 noundef %length) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 8
  %and = and i32 %1, 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %k_objectid = getelementptr i8, ptr %inode, i32 -260
  %5 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %k_objectid, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %version1.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %version1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %version1.i, align 8
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %key, align 8
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %10 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %k_objectid.i, align 4
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %11 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %offset, ptr %k_offset.i.i, align 8
  %conv.i.i = trunc i32 %type to i8
  %k_type.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %12 = ptrtoint ptr %k_type.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i, ptr %k_type.i.i, align 8
  %key_length.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %13 = ptrtoint ptr %key_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %length, ptr %key_length.i, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @make_le_item_head(ptr nocapture noundef %ih, ptr noundef readonly %key, i32 noundef %version, i64 noundef %offset, i32 noundef %type, i32 noundef %length, i32 noundef %entry_count) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %ih to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %ih, align 1
  %k_objectid = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %k_objectid, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %k_objectid4 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 1
  %7 = ptrtoint ptr %k_objectid4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %k_objectid4, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %conv = trunc i32 %version to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %ih_version = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %9 = ptrtoint ptr %ih_version to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %ih_version, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp.i.i = icmp eq i16 %conv, 0
  br i1 %cmp.i.i, label %if.then.i.i21, label %if.else.i.i26

if.then.i.i21:                                    ; preds = %do.body
  %conv.i.i = trunc i64 %offset to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #14
  %u.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  %11 = ptrtoint ptr %u.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %u.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %12 = icmp ult i32 %type, 4
  br i1 %12, label %switch.lookup, label %if.then.i.i21.type2uniqueness.exit.i.i_crit_edge

if.then.i.i21.type2uniqueness.exit.i.i_crit_edge: ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %type2uniqueness.exit.i.i

switch.lookup:                                    ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.make_le_item_head, i32 0, i32 %type
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %type2uniqueness.exit.i.i

type2uniqueness.exit.i.i:                         ; preds = %switch.lookup, %if.then.i.i21.type2uniqueness.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 555, %if.then.i.i21.type2uniqueness.exit.i.i_crit_edge ]
  %14 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i) #14
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %k_uniqueness.i.i, align 1
  br label %set_le_ih_k_type.exit

if.else.i.i26:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i.i = and i64 %offset, 1152921504606846975
  %16 = tail call i64 @llvm.bswap.i64(i64 %and.i.i.i) #14
  %u1.i.i23 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  %conv3.i.i.i = zext i32 %type to i64
  %17 = shl nuw nsw i64 %conv3.i.i.i, 4
  %18 = and i64 %17, 240
  %or.i.i.i25 = or i64 %18, %16
  %19 = ptrtoint ptr %u1.i.i23 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %or.i.i.i25, ptr %u1.i.i23, align 1
  br label %set_le_ih_k_type.exit

set_le_ih_k_type.exit:                            ; preds = %if.else.i.i26, %type2uniqueness.exit.i.i
  %conv6 = trunc i32 %length to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %21 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %ih_item_len, align 1
  %conv9 = trunc i32 %entry_count to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %u = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 1
  %23 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %u, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %hint.i18.i654 = alloca %struct.__reiserfs_blocknr_hint, align 8
  %hint.i.i655 = alloca %struct.__reiserfs_blocknr_hint, align 8
  %hint.i18.i = alloca %struct.__reiserfs_blocknr_hint, align 8
  %hint.i.i = alloca %struct.__reiserfs_blocknr_hint, align 8
  %allocated_block_nr = alloca i32, align 4
  %path = alloca %struct.treepath, align 4
  %key = alloca %struct.cpu_key, align 8
  %tmp_ih = alloca %struct.item_head, align 4
  %unp = alloca i32, align 4
  %tmp_key = alloca %struct.cpu_key, align 8
  %tmp_key265 = alloca %struct.cpu_key, align 8
  %unf_single = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocated_block_nr) #14
  %0 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %allocated_block_nr, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #14
  %1 = getelementptr inbounds i8, ptr %path, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #14
  %4 = call ptr @memset(ptr %key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp_ih) #14
  %5 = getelementptr inbounds %struct.reiserfs_key, ptr %tmp_ih, i32 0, i32 1
  %6 = getelementptr inbounds %struct.reiserfs_key, ptr %tmp_ih, i32 0, i32 2
  %7 = getelementptr inbounds %struct.item_head, ptr %tmp_ih, i32 0, i32 1
  %8 = getelementptr inbounds %struct.item_head, ptr %tmp_ih, i32 0, i32 2
  %9 = getelementptr inbounds %struct.item_head, ptr %tmp_ih, i32 0, i32 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = call ptr @memset(ptr %tmp_ih, i32 255, i32 24)
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %16, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = select i1 %tobool.not, i32 55, i32 59
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %18 to i64
  %shl = shl i64 %block, %sh_prom
  %add3 = add i64 %shl, 1
  tail call void @reiserfs_write_lock(ptr noundef %12) #14
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %19 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags, align 8
  %and6 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not.i630 = icmp eq i32 %and6, 0
  br i1 %tobool.not.i630, label %file_capable.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

file_capable.exit:                                ; preds = %entry
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %24 to i32
  %shl.i = lshr i32 -2147483648, %conv.i
  %conv1.i = sext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv1.i, i64 %block)
  %cmp2.i.not = icmp ugt i64 %conv1.i, %block
  br i1 %cmp2.i.not, label %file_capable.exit.if.end_crit_edge, label %if.then

file_capable.exit.if.end_crit_edge:               ; preds = %file_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %file_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %26) #14
  br label %cleanup415

if.end:                                           ; preds = %file_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %and12 = and i32 %create, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %create, 4
  %call15 = tail call fastcc i32 @_get_block_create_0(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %or)
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %28) #14
  br label %cleanup415

if.end17:                                         ; preds = %if.end
  %and18 = and i32 %create, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

lor.lhs.false:                                    ; preds = %if.end17
  %29 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 146
  %33 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i631 = icmp eq ptr %34, null
  br i1 %tobool.not.i631, label %lor.lhs.false.if.end24_crit_edge, label %land.lhs.true.i

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %cmp.i = icmp eq ptr %38, %36
  br i1 %cmp.i, label %land.lhs.true.i.if.end24_crit_edge, label %land.lhs.true2.critedge.i

land.lhs.true.i.if.end24_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true2.critedge.i:                        ; preds = %land.lhs.true.i
  %cmp4.i = icmp eq ptr %38, null
  br i1 %cmp4.i, label %do.body.i, label %land.lhs.true2.critedge.i.if.end24_crit_edge

land.lhs.true2.critedge.i.if.end24_crit_edge:     ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

do.body.i:                                        ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable

if.end24:                                         ; preds = %land.lhs.true2.critedge.i.if.end24_crit_edge, %land.lhs.true.i.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %tobool398.not = phi i1 [ true, %land.lhs.true.i.if.end24_crit_edge ], [ true, %if.end17.if.end24_crit_edge ], [ false, %lor.lhs.false.if.end24_crit_edge ], [ false, %land.lhs.true2.critedge.i.if.end24_crit_edge ]
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i633 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i633 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i633, align 16
  %s_mount_opt27 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %s_mount_opt27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_mount_opt27, align 4
  %and28 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end24.lor.lhs.false34_crit_edge, label %land.lhs.true

if.end24.lor.lhs.false34_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false34

land.lhs.true:                                    ; preds = %if.end24
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 3
  %47 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize, align 16
  %mul31 = shl i32 %48, 2
  %conv32 = zext i32 %mul31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %conv32)
  %cmp = icmp slt i64 %46, %conv32
  br i1 %cmp, label %land.lhs.true.if.then47_crit_edge, label %land.lhs.true.lor.lhs.false34_crit_edge

land.lhs.true.lor.lhs.false34_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false34

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

lor.lhs.false34:                                  ; preds = %land.lhs.true.lor.lhs.false34_crit_edge, %if.end24.lor.lhs.false34_crit_edge
  %and38 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.lhs.false34.if.end51_crit_edge, label %land.lhs.true40

lor.lhs.false34.if.end51_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

land.lhs.true40:                                  ; preds = %lor.lhs.false34
  %i_size41 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %49 = ptrtoint ptr %i_size41 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_size41, align 8
  %s_blocksize43 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 3
  %51 = ptrtoint ptr %s_blocksize43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_blocksize43, align 16
  %conv44 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv44)
  %cmp45 = icmp slt i64 %50, %conv44
  br i1 %cmp45, label %land.lhs.true40.if.then47_crit_edge, label %land.lhs.true40.if.end51_crit_edge

land.lhs.true40.if.end51_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

land.lhs.true40.if.then47_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.then47:                                        ; preds = %land.lhs.true40.if.then47_crit_edge, %land.lhs.true.if.then47_crit_edge
  %or50 = or i32 %20, 4
  %53 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or50, ptr %i_flags, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %land.lhs.true40.if.end51_crit_edge, %lor.lhs.false34.if.end51_crit_edge
  %54 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_flags, align 8
  %and.i637 = and i32 %55, 1
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #14
  %k_objectid.i = getelementptr i8, ptr %inode, i32 -260
  %59 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %k_objectid.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #14
  %version1.i.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %62 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.i637, ptr %version1.i.i, align 8
  %63 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %key, align 8
  %k_objectid.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %64 = ptrtoint ptr %k_objectid.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %k_objectid.i.i, align 4
  %k_offset.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %65 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add3, ptr %k_offset.i.i.i, align 8
  %k_type.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %66 = ptrtoint ptr %k_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 15, ptr %k_type.i.i.i, align 8
  %key_length.i.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %67 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %key_length.i.i, align 4
  %s_blocksize53 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 3
  %68 = ptrtoint ptr %s_blocksize53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_blocksize53, align 16
  %conv54 = zext i32 %69 to i64
  %sub = add i64 %shl, %conv54
  %i_size56 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %70 = ptrtoint ptr %i_size56 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %i_size56, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %71)
  %cmp57 = icmp sgt i64 %sub, %71
  br i1 %cmp57, label %if.end51.start_trans_crit_edge, label %if.end51.if.end65_crit_edge

if.end51.if.end65_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.end51.start_trans_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %start_trans

start_trans.sink.split:                           ; preds = %if.end170.start_trans.sink.split_crit_edge, %if.then80.start_trans.sink.split_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #14
  br label %start_trans

start_trans:                                      ; preds = %start_trans.sink.split, %if.end51.start_trans_crit_edge
  %72 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb, align 4
  %call61 = call ptr @reiserfs_persistent_transaction(ptr noundef %73, i32 noundef %add) #14
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %start_trans.if.end412_crit_edge, label %if.end64

start_trans.if.end412_crit_edge:                  ; preds = %start_trans
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end412

if.end64:                                         ; preds = %start_trans
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_update_inode_transaction(ptr noundef %inode) #14
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end51.if.end65_crit_edge
  %th.0 = phi ptr [ %call61, %if.end64 ], [ null, %if.end51.if.end65_crit_edge ]
  %74 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb, align 4
  %call67958 = call i32 @search_for_position_by_key(ptr noundef %75, ptr noundef nonnull %key, ptr noundef nonnull %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call67958)
  %cmp68959 = icmp eq i32 %call67958, -2
  br i1 %cmp68959, label %if.end65.failure_crit_edge, label %if.end71.lr.ph

if.end65.failure_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end71.lr.ph:                                   ; preds = %if.end65
  %path_elements = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %pos_in_item74 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %and.i650 = and i32 %create, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i650)
  %tobool8.not.i = icmp eq i32 %and.i650, 0
  %block2.i19.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i, i32 0, i32 1
  %key.i20.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i, i32 0, i32 2
  %path3.i21.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i, i32 0, i32 3
  %th4.i22.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i, i32 0, i32 4
  %beg.i23.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i, i32 0, i32 5
  %formatted_node.i24.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i, i32 0, i32 9
  %block2.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i, i32 0, i32 1
  %key.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i, i32 0, i32 2
  %path3.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i, i32 0, i32 3
  %th4.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i, i32 0, i32 4
  %beg.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i, i32 0, i32 5
  %formatted_node.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i, i32 0, i32 9
  %block2.i19.i670 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i654, i32 0, i32 1
  %key.i20.i671 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i654, i32 0, i32 2
  %th4.i22.i673 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i654, i32 0, i32 4
  %beg.i23.i674 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i654, i32 0, i32 5
  %formatted_node.i24.i675 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i18.i654, i32 0, i32 9
  %block2.i.i662 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i655, i32 0, i32 1
  %key.i.i663 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i655, i32 0, i32 2
  %th4.i.i665 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i655, i32 0, i32 4
  %beg.i.i666 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i655, i32 0, i32 5
  %formatted_node.i.i667 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i.i655, i32 0, i32 9
  %version1.i.i755 = getelementptr inbounds %struct.cpu_key, ptr %tmp_key265, i32 0, i32 1
  %k_objectid.i.i756 = getelementptr inbounds %struct.in_core_key, ptr %tmp_key265, i32 0, i32 1
  %k_offset.i.i.i757 = getelementptr inbounds %struct.in_core_key, ptr %tmp_key265, i32 0, i32 2
  %k_type.i.i.i758 = getelementptr inbounds %struct.in_core_key, ptr %tmp_key265, i32 0, i32 3
  %key_length.i.i759 = getelementptr inbounds %struct.cpu_key, ptr %tmp_key265, i32 0, i32 2
  %b_bdev.i.i773 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %b_blocknr.i.i774 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %b_size.i.i776 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %conv.i705 = trunc i32 %and6 to i16
  %76 = shl nuw nsw i16 %conv.i705, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i705)
  %cmp.i.i.i707 = icmp eq i16 %conv.i705, 0
  %k_uniqueness.i.i.i711 = getelementptr inbounds %struct.offset_v1, ptr %6, i32 0, i32 1
  %k_offset.i722 = getelementptr inbounds %struct.in_core_key, ptr %tmp_key, i32 0, i32 2
  br label %if.end71

if.end71:                                         ; preds = %research.backedge.if.end71_crit_edge, %if.end71.lr.ph
  %call67963 = phi i32 [ %call67958, %if.end71.lr.ph ], [ %call67, %research.backedge.if.end71_crit_edge ]
  %th.1960 = phi ptr [ %th.0, %if.end71.lr.ph ], [ %th.1.be, %research.backedge.if.end71_crit_edge ]
  %77 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %path, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %78
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements, i32 %78, i32 1
  %81 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %80, i32 0, i32 5
  %83 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %84, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %82
  %ih_item_location.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %ih_item_location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %ih_item_location.i.i.i, align 1
  %87 = call i16 @llvm.bswap.i16(i16 %86) #14
  %conv.i.i.i = zext i16 %87 to i32
  %add.ptr.i.i.i642 = getelementptr i8, ptr %84, i32 %conv.i.i.i
  %88 = ptrtoint ptr %pos_in_item74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pos_in_item74, align 4
  %90 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i643 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 33
  %92 = ptrtoint ptr %s_fs_info.i643 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i643, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %93, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #14
  %94 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %s_generation_counter, align 4
  call void @copy_item_head(ptr noundef nonnull %tmp_ih, ptr noundef %arrayidx.i.i) #14
  %96 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %allocated_block_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i644 = icmp eq i32 %97, 0
  br i1 %tobool.not.i644, label %if.end.i, label %if.end71.if.end123_crit_edge

if.end71.if.end123_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.end.i:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67963)
  %cmp.i645 = icmp eq i32 %call67963, 1
  br i1 %cmp.i645, label %land.lhs.true.i646, label %if.end.i.if.then80_crit_edge

if.end.i.if.then80_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then80

land.lhs.true.i646:                               ; preds = %if.end.i
  %ih_version.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 4
  %98 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp.i.i.i.i = icmp eq i16 %99, 0
  %u.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i, label %is_indirect_le_ih.exit.i, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %land.lhs.true.i646
  %100 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %u.i.i.i.i, align 1
  %102 = and i64 %101, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %102)
  %phi.cmp1.i.i.i = icmp eq i64 %102, 16
  br i1 %phi.cmp1.i.i.i, label %if.else.i.i.i.i.land.lhs.true3.i_crit_edge, label %if.else.i.i.i.i.if.then80_crit_edge

if.else.i.i.i.i.if.then80_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then80

if.else.i.i.i.i.land.lhs.true3.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true3.i

is_indirect_le_ih.exit.i:                         ; preds = %land.lhs.true.i646
  %k_uniqueness.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %104)
  %cond.i.i.i = icmp eq i32 %104, -16777217
  br i1 %cond.i.i.i, label %is_indirect_le_ih.exit.i.land.lhs.true3.i_crit_edge, label %is_indirect_le_ih.exit.i.if.then80_crit_edge

is_indirect_le_ih.exit.i.if.then80_crit_edge:     ; preds = %is_indirect_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then80

is_indirect_le_ih.exit.i.land.lhs.true3.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %is_indirect_le_ih.exit.i.land.lhs.true3.i_crit_edge, %if.else.i.i.i.i.land.lhs.true3.i_crit_edge
  %add.ptr.i647 = getelementptr i32, ptr %add.ptr.i.i.i642, i32 %89
  %105 = ptrtoint ptr %add.ptr.i647 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %add.ptr.i647, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool5.not.i = icmp eq i32 %106, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.if.then80_crit_edge, label %land.lhs.true3.i.land.rhs.i_crit_edge

land.lhs.true3.i.land.rhs.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.lhs.true3.i.if.then80_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then80

if.then80:                                        ; preds = %land.lhs.true3.i.if.then80_crit_edge, %is_indirect_le_ih.exit.i.if.then80_crit_edge, %if.else.i.i.i.i.if.then80_crit_edge, %if.end.i.if.then80_crit_edge
  %tobool81.not = icmp eq ptr %th.1960, null
  br i1 %tobool81.not, label %if.then80.start_trans.sink.split_crit_edge, label %if.end83

if.then80.start_trans.sink.split_crit_edge:       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  br label %start_trans.sink.split

if.end83:                                         ; preds = %if.then80
  %t_trans_id.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.1960, i32 0, i32 4
  %107 = ptrtoint ptr %t_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %t_trans_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i649 = icmp eq i32 %108, 0
  br i1 %tobool.not.i649, label %do.body4.i, label %do.end7.i, !prof !98

do.body4.i:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 645, 0\0A.popsection", ""() #14, !srcloc !99
  unreachable

do.end7.i:                                        ; preds = %if.end83
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %hint.i.i) #14
  %109 = call ptr @memset(ptr %hint.i.i, i32 255, i32 72)
  %110 = ptrtoint ptr %hint.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %inode, ptr %hint.i.i, align 8
  %111 = ptrtoint ptr %block2.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %block, ptr %block2.i.i, align 8
  %112 = call ptr @memset(ptr %key.i.i, i32 0, i32 24)
  %113 = ptrtoint ptr %path3.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %path, ptr %path3.i.i, align 8
  %114 = ptrtoint ptr %th4.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %th.1960, ptr %th4.i.i, align 4
  %115 = call ptr @memset(ptr %beg.i.i, i32 0, i32 16)
  %116 = ptrtoint ptr %formatted_node.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 127, ptr %formatted_node.i.i, align 8
  %call.i.i651 = call i32 @reiserfs_allocate_blocknrs(ptr noundef nonnull %hint.i.i, ptr noundef nonnull %allocated_block_nr, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %hint.i.i) #14
  br label %_allocate_block.exit

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %hint.i18.i) #14
  %117 = call ptr @memset(ptr %hint.i18.i, i32 255, i32 72)
  %118 = ptrtoint ptr %hint.i18.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %inode, ptr %hint.i18.i, align 8
  %119 = ptrtoint ptr %block2.i19.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %block, ptr %block2.i19.i, align 8
  %120 = call ptr @memset(ptr %key.i20.i, i32 0, i32 24)
  %121 = ptrtoint ptr %path3.i21.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %path, ptr %path3.i21.i, align 8
  %122 = ptrtoint ptr %th4.i22.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %th.1960, ptr %th4.i22.i, align 4
  %123 = call ptr @memset(ptr %beg.i23.i, i32 0, i32 16)
  %124 = ptrtoint ptr %formatted_node.i24.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 63, ptr %formatted_node.i24.i, align 8
  %call.i25.i = call i32 @reiserfs_allocate_blocknrs(ptr noundef nonnull %hint.i18.i, ptr noundef nonnull %allocated_block_nr, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %hint.i18.i) #14
  br label %_allocate_block.exit

_allocate_block.exit:                             ; preds = %if.end10.i, %if.then9.i
  %retval.0.i652 = phi i32 [ %call.i25.i, %if.end10.i ], [ %call.i.i651, %if.then9.i ]
  %125 = zext i32 %retval.0.i652 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i652, label %if.end109 [
    i32 -3, label %_allocate_block.exit.if.then90_crit_edge
    i32 -6, label %_allocate_block.exit.if.then90_crit_edge1441
  ]

_allocate_block.exit.if.then90_crit_edge1441:     ; preds = %_allocate_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then90

_allocate_block.exit.if.then90_crit_edge:         ; preds = %_allocate_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then90

if.then90:                                        ; preds = %_allocate_block.exit.if.then90_crit_edge, %_allocate_block.exit.if.then90_crit_edge1441
  %126 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i653 = getelementptr inbounds %struct.super_block, ptr %127, i32 0, i32 33
  %128 = ptrtoint ptr %s_fs_info.i653 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_fs_info.i653, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_journal, align 4
  %j_next_async_flush = getelementptr inbounds %struct.reiserfs_journal, ptr %131, i32 0, i32 25
  %132 = ptrtoint ptr %j_next_async_flush to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %j_next_async_flush, align 4
  %call93 = call fastcc i32 @restart_transaction(ptr noundef nonnull %th.1960, ptr noundef %inode, ptr noundef nonnull %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.then90.land.lhs.true397.loopexit_crit_edge

if.then90.land.lhs.true397.loopexit_crit_edge:    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true397.loopexit

if.end96:                                         ; preds = %if.then90
  %133 = ptrtoint ptr %t_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %t_trans_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i657 = icmp eq i32 %134, 0
  br i1 %tobool.not.i657, label %do.body4.i658, label %do.end7.i661, !prof !98

do.body4.i658:                                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 645, 0\0A.popsection", ""() #14, !srcloc !99
  unreachable

do.end7.i661:                                     ; preds = %if.end96
  br i1 %tobool8.not.i, label %if.then9.i669, label %if.end10.i677

if.then9.i669:                                    ; preds = %do.end7.i661
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %hint.i.i655) #14
  %135 = call ptr @memset(ptr %hint.i.i655, i32 255, i32 72)
  %136 = ptrtoint ptr %hint.i.i655 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %inode, ptr %hint.i.i655, align 8
  %137 = ptrtoint ptr %block2.i.i662 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %block, ptr %block2.i.i662, align 8
  %138 = call ptr @memset(ptr %key.i.i663, i32 0, i32 28)
  %139 = ptrtoint ptr %th4.i.i665 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %th.1960, ptr %th4.i.i665, align 4
  %140 = call ptr @memset(ptr %beg.i.i666, i32 0, i32 16)
  %141 = ptrtoint ptr %formatted_node.i.i667 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 127, ptr %formatted_node.i.i667, align 8
  %call.i.i668 = call i32 @reiserfs_allocate_blocknrs(ptr noundef nonnull %hint.i.i655, ptr noundef nonnull %allocated_block_nr, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %hint.i.i655) #14
  br label %_allocate_block.exit679

if.end10.i677:                                    ; preds = %do.end7.i661
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %hint.i18.i654) #14
  %142 = call ptr @memset(ptr %hint.i18.i654, i32 255, i32 72)
  %143 = ptrtoint ptr %hint.i18.i654 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %inode, ptr %hint.i18.i654, align 8
  %144 = ptrtoint ptr %block2.i19.i670 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %block, ptr %block2.i19.i670, align 8
  %145 = call ptr @memset(ptr %key.i20.i671, i32 0, i32 28)
  %146 = ptrtoint ptr %th4.i22.i673 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %th.1960, ptr %th4.i22.i673, align 4
  %147 = call ptr @memset(ptr %beg.i23.i674, i32 0, i32 16)
  %148 = ptrtoint ptr %formatted_node.i24.i675 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 63, ptr %formatted_node.i24.i675, align 8
  %call.i25.i676 = call i32 @reiserfs_allocate_blocknrs(ptr noundef nonnull %hint.i18.i654, ptr noundef nonnull %allocated_block_nr, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %hint.i18.i654) #14
  br label %_allocate_block.exit679

_allocate_block.exit679:                          ; preds = %if.end10.i677, %if.then9.i669
  %retval.0.i678 = phi i32 [ %call.i25.i676, %if.end10.i677 ], [ %call.i.i668, %if.then9.i669 ]
  %149 = zext i32 %retval.0.i678 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %retval.0.i678, label %_allocate_block.exit679.research.backedge_crit_edge [
    i32 -6, label %_allocate_block.exit679.land.lhs.true397.loopexit_crit_edge
    i32 -3, label %_allocate_block.exit679.land.lhs.true397_crit_edge
  ]

_allocate_block.exit679.land.lhs.true397_crit_edge: ; preds = %_allocate_block.exit679
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true397

_allocate_block.exit679.land.lhs.true397.loopexit_crit_edge: ; preds = %_allocate_block.exit679
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true397.loopexit

_allocate_block.exit679.research.backedge_crit_edge: ; preds = %_allocate_block.exit679
  call void @__sanitizer_cov_trace_pc() #16
  br label %research.backedge

if.end109:                                        ; preds = %_allocate_block.exit
  %150 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i_sb, align 4
  %152 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i to ptr
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %153, align 16384
  %156 = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i.not.i = icmp eq i32 %156, 0
  br i1 %tobool.i.not.i, label %if.end109.reiserfs_cond_resched.exit_crit_edge, label %if.then.i680

if.end109.reiserfs_cond_resched.exit_crit_edge:   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit

if.then.i680:                                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %151) #14
  call void @schedule() #14
  call void @reiserfs_write_lock_nested(ptr noundef %151, i32 noundef %call1.i) #14
  br label %reiserfs_cond_resched.exit

reiserfs_cond_resched.exit:                       ; preds = %if.then.i680, %if.end109.reiserfs_cond_resched.exit_crit_edge
  %157 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i682 = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 33
  %159 = ptrtoint ptr %s_fs_info.i682 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %s_fs_info.i682, align 16
  %s_generation_counter113 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %160, i32 0, i32 14
  %call.i.i619 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter113, i32 noundef 4) #14
  %161 = ptrtoint ptr %s_generation_counter113 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %s_generation_counter113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %162)
  %cmp115.not = icmp eq i32 %95, %162
  br i1 %cmp115.not, label %reiserfs_cond_resched.exit.if.end123_crit_edge, label %land.lhs.true118

reiserfs_cond_resched.exit.if.end123_crit_edge:   ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

land.lhs.true118:                                 ; preds = %reiserfs_cond_resched.exit
  %call119 = call i32 @comp_items(ptr noundef nonnull %tmp_ih, ptr noundef nonnull %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %land.lhs.true118.if.end123_crit_edge, label %land.lhs.true118.research.backedge_crit_edge

land.lhs.true118.research.backedge_crit_edge:     ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #16
  br label %research.backedge

land.lhs.true118.if.end123_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

research.backedge:                                ; preds = %if.end231.research.backedge_crit_edge, %cleanup, %land.lhs.true118.research.backedge_crit_edge, %_allocate_block.exit679.research.backedge_crit_edge
  %th.1.be = phi ptr [ %th.1960, %land.lhs.true118.research.backedge_crit_edge ], [ %th.1960, %cleanup ], [ %th.1960, %_allocate_block.exit679.research.backedge_crit_edge ], [ %th.3, %if.end231.research.backedge_crit_edge ]
  %163 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %i_sb, align 4
  %call67 = call i32 @search_for_position_by_key(ptr noundef %164, ptr noundef nonnull %key, ptr noundef nonnull %path) #14
  %cmp68 = icmp eq i32 %call67, -2
  br i1 %cmp68, label %research.backedge.failure_crit_edge, label %research.backedge.if.end71_crit_edge

research.backedge.if.end71_crit_edge:             ; preds = %research.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

research.backedge.failure_crit_edge:              ; preds = %research.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end123:                                        ; preds = %land.lhs.true118.if.end123_crit_edge, %reiserfs_cond_resched.exit.if.end123_crit_edge, %if.end71.if.end123_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67963)
  %cmp.i683 = icmp eq i32 %call67963, 1
  br i1 %cmp.i683, label %if.end123.land.rhs.i_crit_edge, label %if.end123.if.end170_crit_edge

if.end123.if.end170_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.end123.land.rhs.i_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end123.land.rhs.i_crit_edge, %land.lhs.true3.i.land.rhs.i_crit_edge
  %ih_version.i.i684 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 4
  %165 = ptrtoint ptr %ih_version.i.i684 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %ih_version.i.i684, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %cmp.i.i.i.i685 = icmp eq i16 %166, 0
  %u.i.i.i.i686 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i685, label %indirect_item_found.exit, label %if.else.i.i.i.i690

if.else.i.i.i.i690:                               ; preds = %land.rhs.i
  %167 = ptrtoint ptr %u.i.i.i.i686 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 8)
  %168 = load i64, ptr %u.i.i.i.i686, align 1
  %169 = and i64 %168, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %169)
  %phi.cmp1.i.i.i689 = icmp eq i64 %169, 16
  br i1 %phi.cmp1.i.i.i689, label %if.else.i.i.i.i690.if.then126_crit_edge, label %if.else.i.i.i.i690.if.end170_crit_edge

if.else.i.i.i.i690.if.end170_crit_edge:           ; preds = %if.else.i.i.i.i690
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.else.i.i.i.i690.if.then126_crit_edge:          ; preds = %if.else.i.i.i.i690
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then126

indirect_item_found.exit:                         ; preds = %land.rhs.i
  %k_uniqueness.i.i.i.i687 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i686, i32 0, i32 1
  %170 = ptrtoint ptr %k_uniqueness.i.i.i.i687 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %k_uniqueness.i.i.i.i687, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %171)
  %cond.i.i.i688 = icmp eq i32 %171, -16777217
  br i1 %cond.i.i.i688, label %indirect_item_found.exit.if.then126_crit_edge, label %indirect_item_found.exit.if.end170_crit_edge

indirect_item_found.exit.if.end170_crit_edge:     ; preds = %indirect_item_found.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

indirect_item_found.exit.if.then126_crit_edge:    ; preds = %indirect_item_found.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then126

if.then126:                                       ; preds = %indirect_item_found.exit.if.then126_crit_edge, %if.else.i.i.i.i690.if.then126_crit_edge
  %add.ptr127 = getelementptr i32, ptr %add.ptr.i.i.i642, i32 %89
  %172 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %add.ptr127, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp129 = icmp eq i32 %173, 0
  br i1 %cmp129, label %if.then131, label %if.end162.loopexit

if.then131:                                       ; preds = %if.then126
  %174 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %i_sb, align 4
  %call133 = call i32 @reiserfs_prepare_for_journal(ptr noundef %175, ptr noundef %80, i32 noundef 1) #14
  %176 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %i_sb, align 4
  %178 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i692 = and i32 %178, -16384
  %179 = inttoptr i32 %and.i.i.i692 to ptr
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %179, align 16384
  %182 = and i32 %181, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.i.not.i693 = icmp eq i32 %182, 0
  br i1 %tobool.i.not.i693, label %if.then131.reiserfs_cond_resched.exit697_crit_edge, label %if.then.i695

if.then131.reiserfs_cond_resched.exit697_crit_edge: ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit697

if.then.i695:                                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i694 = call i32 @reiserfs_write_unlock_nested(ptr noundef %177) #14
  call void @schedule() #14
  call void @reiserfs_write_lock_nested(ptr noundef %177, i32 noundef %call1.i694) #14
  br label %reiserfs_cond_resched.exit697

reiserfs_cond_resched.exit697:                    ; preds = %if.then.i695, %if.then131.reiserfs_cond_resched.exit697_crit_edge
  %183 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i698 = getelementptr inbounds %struct.super_block, ptr %184, i32 0, i32 33
  %185 = ptrtoint ptr %s_fs_info.i698 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %s_fs_info.i698, align 16
  %s_generation_counter138 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %186, i32 0, i32 14
  %call.i.i620 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter138, i32 noundef 4) #14
  %187 = ptrtoint ptr %s_generation_counter138 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %s_generation_counter138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %188)
  %cmp140.not = icmp eq i32 %95, %188
  br i1 %cmp140.not, label %reiserfs_cond_resched.exit697.if.end148_crit_edge, label %land.lhs.true143

reiserfs_cond_resched.exit697.if.end148_crit_edge: ; preds = %reiserfs_cond_resched.exit697
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

land.lhs.true143:                                 ; preds = %reiserfs_cond_resched.exit697
  %call144 = call i32 @comp_items(ptr noundef nonnull %tmp_ih, ptr noundef nonnull %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true143.if.end148_crit_edge, label %cleanup

land.lhs.true143.if.end148_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.end148:                                        ; preds = %land.lhs.true143.if.end148_crit_edge, %reiserfs_cond_resched.exit697.if.end148_crit_edge
  %add.ptr127.le = getelementptr i32, ptr %add.ptr.i.i.i642, i32 %89
  %189 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %bh_result, align 4
  %191 = and i32 %190, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i = icmp eq i32 %191, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end148.set_buffer_new.exit_crit_edge

if.end148.set_buffer_new.exit_crit_edge:          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_buffer_new.exit

if.then.i:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #14
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i, %if.end148.set_buffer_new.exit_crit_edge
  %192 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %bh_result, align 4
  %194 = and i32 %193, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool150.not = icmp eq i32 %194, 0
  br i1 %tobool150.not, label %set_buffer_new.exit.if.end159_crit_edge, label %land.lhs.true151

set_buffer_new.exit.if.end159_crit_edge:          ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159

land.lhs.true151:                                 ; preds = %set_buffer_new.exit
  %195 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i699 = getelementptr inbounds %struct.super_block, ptr %196, i32 0, i32 33
  %197 = ptrtoint ptr %s_fs_info.i699 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %s_fs_info.i699, align 16
  %s_mount_opt154 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %198, i32 0, i32 11
  %199 = ptrtoint ptr %s_mount_opt154 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %s_mount_opt154, align 4
  %and155 = and i32 %200, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %land.lhs.true151.if.end159_crit_edge, label %if.then157

land.lhs.true151.if.end159_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159

if.then157:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #16
  %call158 = call i32 @reiserfs_add_ordered_list(ptr noundef %inode, ptr noundef %bh_result) #14
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %land.lhs.true151.if.end159_crit_edge, %set_buffer_new.exit.if.end159_crit_edge
  %201 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %allocated_block_nr, align 4
  %203 = call i32 @llvm.bswap.i32(i32 %202) #14
  %204 = ptrtoint ptr %add.ptr127.le to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %203, ptr %add.ptr127.le, align 1
  %205 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %allocated_block_nr, align 4
  %call161 = call i32 @journal_mark_dirty(ptr noundef %th.1960, ptr noundef %80) #14
  %207 = ptrtoint ptr %i_size56 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %i_size56, align 8
  call void @reiserfs_update_sd_size(ptr noundef %th.1960, ptr noundef %inode, i64 noundef %208) #14
  br label %if.end162

if.end162.loopexit:                               ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  %209 = call i32 @llvm.bswap.i32(i32 %173) #14
  br label %if.end162

if.end162:                                        ; preds = %if.end162.loopexit, %if.end159
  %unfm_ptr.0 = phi i32 [ %206, %if.end159 ], [ %209, %if.end162.loopexit ]
  %210 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %i_sb, align 4
  %212 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %bh_result, align 4
  %214 = and i32 %213, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool.not.i.i.i = icmp eq i32 %214, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end162.set_block_dev_mapped.exit_crit_edge

if.end162.set_block_dev_mapped.exit_crit_edge:    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_block_dev_mapped.exit

if.then.i.i.i:                                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #14
  br label %set_block_dev_mapped.exit

set_block_dev_mapped.exit:                        ; preds = %if.then.i.i.i, %if.end162.set_block_dev_mapped.exit_crit_edge
  %conv.i701 = zext i32 %unfm_ptr.0 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %211, i32 0, i32 26
  %215 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %s_bdev.i.i, align 4
  %217 = ptrtoint ptr %b_bdev.i.i773 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %216, ptr %b_bdev.i.i773, align 8
  %218 = ptrtoint ptr %b_blocknr.i.i774 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %conv.i701, ptr %b_blocknr.i.i774, align 8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %211, i32 0, i32 3
  %219 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %s_blocksize.i.i, align 16
  %221 = ptrtoint ptr %b_size.i.i776 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %b_size.i.i776, align 8
  call void @pathrelse(ptr noundef nonnull %path) #14
  %tobool398.not.not = xor i1 %tobool398.not, true
  %tobool165.not = icmp eq ptr %th.1960, null
  %or.cond = select i1 %tobool398.not.not, i1 true, i1 %tobool165.not
  br i1 %or.cond, label %set_block_dev_mapped.exit.cleanup.thread_crit_edge, label %if.then166

set_block_dev_mapped.exit.cleanup.thread_crit_edge: ; preds = %set_block_dev_mapped.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.then166:                                       ; preds = %set_block_dev_mapped.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call167 = call i32 @reiserfs_end_persistent_transaction(ptr noundef nonnull %th.1960) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then166, %set_block_dev_mapped.exit.cleanup.thread_crit_edge
  %retval1.0 = phi i32 [ 0, %set_block_dev_mapped.exit.cleanup.thread_crit_edge ], [ %call167, %if.then166 ]
  %222 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %223) #14
  br label %cleanup415

cleanup:                                          ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #16
  %224 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %225, ptr noundef %80) #14
  br label %research.backedge

if.end170:                                        ; preds = %indirect_item_found.exit.if.end170_crit_edge, %if.else.i.i.i.i690.if.end170_crit_edge, %if.end123.if.end170_crit_edge
  %tobool171.not = icmp eq ptr %th.1960, null
  br i1 %tobool171.not, label %if.end170.start_trans.sink.split_crit_edge, label %do.body.preheader

if.end170.start_trans.sink.split_crit_edge:       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %start_trans.sink.split

do.body.preheader:                                ; preds = %if.end170
  %t_blocks_allocated = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.1960, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end385, %do.body.preheader
  %ih.0 = phi ptr [ %arrayidx.i.i789, %if.end385 ], [ %arrayidx.i.i, %do.body.preheader ]
  %pos_in_item.0 = phi i32 [ %435, %if.end385 ], [ %89, %do.body.preheader ]
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %ih.0, i32 0, i32 4
  %226 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 2)
  %227 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %227)
  %cmp.i.i.i = icmp eq i16 %227, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %ih.0, i32 0, i32 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i702, label %is_statdata_le_ih.exit

if.then.i.i.i702:                                 ; preds = %do.body
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %228 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cond = icmp eq i32 %229, 0
  br i1 %cond, label %if.then.i.i.i702.if.then176_crit_edge, label %is_direct_le_ih.exit

if.then.i.i.i702.if.then176_crit_edge:            ; preds = %if.then.i.i.i702
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then176

is_statdata_le_ih.exit:                           ; preds = %do.body
  %230 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 8)
  %231 = load i64, ptr %u.i.i.i, align 1
  %232 = and i64 %231, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %232)
  %phi.cmp1.i.i.not = icmp eq i64 %232, 0
  br i1 %phi.cmp1.i.i.not, label %is_statdata_le_ih.exit.if.then176_crit_edge, label %is_direct_le_ih.exit.thread

is_statdata_le_ih.exit.if.then176_crit_edge:      ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then176

if.then176:                                       ; preds = %is_statdata_le_ih.exit.if.then176_crit_edge, %if.then.i.i.i702.if.then176_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unp) #14
  %233 = ptrtoint ptr %unp to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 0, ptr %unp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_key) #14
  %234 = call ptr @memset(ptr %tmp_key, i32 255, i32 32)
  %235 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %key, align 8
  %237 = call i32 @llvm.bswap.i32(i32 %236) #14
  %238 = ptrtoint ptr %tmp_ih to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %tmp_ih, align 4
  %239 = ptrtoint ptr %k_objectid.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %k_objectid.i.i, align 4
  %241 = call i32 @llvm.bswap.i32(i32 %240) #14
  %242 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %5, align 4
  %243 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %76, ptr %9, align 2
  br i1 %cmp.i.i.i707, label %if.then.i.i21.i, label %if.else.i.i26.i

if.then.i.i21.i:                                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  %244 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 16777216, ptr %6, align 4
  %245 = ptrtoint ptr %k_uniqueness.i.i.i711 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -16777217, ptr %k_uniqueness.i.i.i711, align 4
  br label %make_le_item_head.exit

if.else.i.i26.i:                                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  %246 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %246, i32 8)
  store i64 72057594037927952, ptr %6, align 4
  br label %make_le_item_head.exit

make_le_item_head.exit:                           ; preds = %if.else.i.i26.i, %if.then.i.i21.i
  %247 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 1024, ptr %8, align 2
  %248 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %7, align 4
  %249 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %k_offset.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %250)
  %cmp178 = icmp eq i64 %250, 1
  br i1 %cmp178, label %if.then180, label %make_le_item_head.exit.if.end181_crit_edge

make_le_item_head.exit.if.end181_crit_edge:       ; preds = %make_le_item_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end181

if.then180:                                       ; preds = %make_le_item_head.exit
  %251 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %allocated_block_nr, align 4
  %253 = call i32 @llvm.bswap.i32(i32 %252)
  %254 = ptrtoint ptr %unp to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %unp, align 4
  %255 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %i_sb, align 4
  %257 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile i32, ptr %bh_result, align 4
  %259 = and i32 %258, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.not.i.i.i713 = icmp eq i32 %259, 0
  br i1 %tobool.not.i.i.i713, label %if.then.i.i.i714, label %if.then180.set_block_dev_mapped.exit721_crit_edge

if.then180.set_block_dev_mapped.exit721_crit_edge: ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_block_dev_mapped.exit721

if.then.i.i.i714:                                 ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #14
  br label %set_block_dev_mapped.exit721

set_block_dev_mapped.exit721:                     ; preds = %if.then.i.i.i714, %if.then180.set_block_dev_mapped.exit721_crit_edge
  %conv.i715 = zext i32 %252 to i64
  %s_bdev.i.i716 = getelementptr inbounds %struct.super_block, ptr %256, i32 0, i32 26
  %260 = ptrtoint ptr %s_bdev.i.i716 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %s_bdev.i.i716, align 4
  %262 = ptrtoint ptr %b_bdev.i.i773 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %261, ptr %b_bdev.i.i773, align 8
  %263 = ptrtoint ptr %b_blocknr.i.i774 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %conv.i715, ptr %b_blocknr.i.i774, align 8
  %s_blocksize.i.i719 = getelementptr inbounds %struct.super_block, ptr %256, i32 0, i32 3
  %264 = ptrtoint ptr %s_blocksize.i.i719 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %s_blocksize.i.i719, align 16
  %266 = ptrtoint ptr %b_size.i.i776 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %b_size.i.i776, align 8
  %267 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile i32, ptr %bh_result, align 4
  %269 = and i32 %268, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.not.i621 = icmp eq i32 %269, 0
  br i1 %tobool.not.i621, label %if.then.i622, label %set_block_dev_mapped.exit721.if.end181_crit_edge

set_block_dev_mapped.exit721.if.end181_crit_edge: ; preds = %set_block_dev_mapped.exit721
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end181

if.then.i622:                                     ; preds = %set_block_dev_mapped.exit721
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #14
  br label %if.end181

if.end181:                                        ; preds = %if.then.i622, %set_block_dev_mapped.exit721.if.end181_crit_edge, %make_le_item_head.exit.if.end181_crit_edge
  %done.1 = phi i32 [ 0, %make_le_item_head.exit.if.end181_crit_edge ], [ 1, %set_block_dev_mapped.exit721.if.end181_crit_edge ], [ 1, %if.then.i622 ]
  %270 = call ptr @memcpy(ptr %tmp_key, ptr %key, i32 32)
  %271 = ptrtoint ptr %k_offset.i722 to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 1, ptr %k_offset.i722, align 8
  %272 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %path, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %273, i32 1
  %274 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %pe_position, align 4
  %inc = add i32 %275, 1
  store i32 %inc, ptr %pe_position, align 4
  %call186 = call i32 @reiserfs_insert_item(ptr noundef %th.1960, ptr noundef nonnull %path, ptr noundef nonnull %tmp_key, ptr noundef nonnull %tmp_ih, ptr noundef %inode, ptr noundef nonnull %unp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %cleanup190.thread, label %cleanup190

cleanup190.thread:                                ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_key) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unp) #14
  br label %if.end358

cleanup190:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #16
  %276 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %allocated_block_nr, align 4
  call void @reiserfs_free_block(ptr noundef %th.1960, ptr noundef %inode, i32 noundef %277, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_key) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unp) #14
  br label %failure

is_direct_le_ih.exit:                             ; preds = %if.then.i.i.i702
  %278 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %279)
  %cond.i.i.not = icmp eq i32 %279, -1
  br i1 %cond.i.i.not, label %cond.true.i.i.critedge, label %is_direct_le_ih.exit.if.else264_crit_edge

is_direct_le_ih.exit.if.else264_crit_edge:        ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else264

is_direct_le_ih.exit.thread:                      ; preds = %is_statdata_le_ih.exit
  %280 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %280, i32 8)
  %281 = load i64, ptr %u.i.i.i, align 1
  %282 = and i64 %281, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %282)
  %phi.cmp1.i.i728.not = icmp eq i64 %282, 32
  br i1 %phi.cmp1.i.i728.not, label %cond.false.i.i, label %is_direct_le_ih.exit.thread.if.else264_crit_edge

is_direct_le_ih.exit.thread.if.else264_crit_edge: ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else264

cond.true.i.i.critedge:                           ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  %283 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %283, i32 4)
  %284 = load i32, ptr %u.i.i.i, align 1
  %285 = call i32 @llvm.bswap.i32(i32 %284) #14
  %conv.i.i = zext i32 %285 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %286 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %286, i32 8)
  %287 = load i64, ptr %u.i.i.i, align 1
  %288 = and i64 %287, -241
  %289 = call i64 @llvm.bswap.i64(i64 %288) #14
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i.critedge
  %cond.i.i732 = phi i64 [ %conv.i.i, %cond.true.i.i.critedge ], [ %289, %cond.false.i.i ]
  %sub198 = add nsw i64 %cond.i.i732, 4294967295
  %290 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %i_sb, align 4
  %s_blocksize200 = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 3
  %292 = ptrtoint ptr %s_blocksize200 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %s_blocksize200, align 16
  %neg = sub i32 0, %293
  %conv202 = zext i32 %neg to i64
  %and203 = and i64 %sub198, %conv202
  %add204 = add nuw nsw i64 %and203, 1
  %294 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %k_offset.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add204, i64 %295)
  %cmp206 = icmp eq i64 %add204, %295
  br i1 %cmp206, label %if.then208, label %if.else209

if.then208:                                       ; preds = %le_ih_k_offset.exit
  %s_blocksize200.le = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 3
  %296 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %allocated_block_nr, align 4
  %298 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load volatile i32, ptr %bh_result, align 4
  %300 = and i32 %299, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool.not.i.i.i735 = icmp eq i32 %300, 0
  br i1 %tobool.not.i.i.i735, label %if.then.i.i.i736, label %if.then208.set_block_dev_mapped.exit743_crit_edge

if.then208.set_block_dev_mapped.exit743_crit_edge: ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_block_dev_mapped.exit743

if.then.i.i.i736:                                 ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #14
  br label %set_block_dev_mapped.exit743

set_block_dev_mapped.exit743:                     ; preds = %if.then.i.i.i736, %if.then208.set_block_dev_mapped.exit743_crit_edge
  %conv.i737 = zext i32 %297 to i64
  %s_bdev.i.i738 = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 26
  %301 = ptrtoint ptr %s_bdev.i.i738 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %s_bdev.i.i738, align 4
  %303 = ptrtoint ptr %b_bdev.i.i773 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %302, ptr %b_bdev.i.i773, align 8
  %304 = ptrtoint ptr %b_blocknr.i.i774 to i32
  call void @__asan_store8_noabort(i32 %304)
  store i64 %conv.i737, ptr %b_blocknr.i.i774, align 8
  %305 = ptrtoint ptr %s_blocksize200.le to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %s_blocksize200.le, align 16
  %307 = ptrtoint ptr %b_size.i.i776 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %b_size.i.i776, align 8
  %call253 = call i32 @direct2indirect(ptr noundef %th.1960, ptr noundef %inode, ptr noundef nonnull %path, ptr noundef %bh_result, i64 noundef %add204) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %if.then255

if.else209:                                       ; preds = %le_ih_k_offset.exit
  call void @pathrelse(ptr noundef nonnull %path) #14
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.1960, i32 0, i32 1
  %308 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %t_refcount, align 4
  %310 = zext i32 %309 to i64
  call void @__sanitizer_cov_trace_switch(i64 %310, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %309, label %if.else209.if.end231_crit_edge [
    i32 0, label %do.body216
    i32 1, label %if.then226
  ], !prof !100

if.else209.if.end231_crit_edge:                   ; preds = %if.else209
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end231

do.body216:                                       ; preds = %if.else209
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 918, 0\0A.popsection", ""() #14, !srcloc !101
  unreachable

if.then226:                                       ; preds = %if.else209
  %call227 = call i32 @reiserfs_end_persistent_transaction(ptr noundef %th.1960) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.then226.if.end231_crit_edge, label %if.then226.if.end412_crit_edge

if.then226.if.end412_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end412

if.then226.if.end231_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end231

if.end231:                                        ; preds = %if.then226.if.end231_crit_edge, %if.else209.if.end231_crit_edge
  %th.3 = phi ptr [ null, %if.then226.if.end231_crit_edge ], [ %th.1960, %if.else209.if.end231_crit_edge ]
  %call232 = call fastcc i32 @convert_tail_for_hole(ptr noundef %inode, ptr noundef %bh_result, i64 noundef %add204)
  %311 = zext i32 %call232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %311, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call232, label %if.then237 [
    i32 0, label %if.end231.research.backedge_crit_edge
    i32 -28, label %if.end231.if.end239_crit_edge
  ]

if.end231.if.end239_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end239

if.end231.research.backedge_crit_edge:            ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #16
  br label %research.backedge

if.then237:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #16
  %312 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %314 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %313, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_get_block, ptr noundef nonnull @.str.1, i32 noundef %315, i32 noundef %call232) #14
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.end231.if.end239_crit_edge
  %316 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %allocated_block_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool240.not = icmp eq i32 %317, 0
  br i1 %tobool240.not, label %if.end239.failure_crit_edge, label %if.then241

if.end239.failure_crit_edge:                      ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.then241:                                       ; preds = %if.end239
  %tobool242.not = icmp eq ptr %th.3, null
  br i1 %tobool242.not, label %if.end246, label %if.then241.failure.thread884_crit_edge

if.then241.failure.thread884_crit_edge:           ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure.thread884

if.end246:                                        ; preds = %if.then241
  %318 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %i_sb, align 4
  %call245 = call ptr @reiserfs_persistent_transaction(ptr noundef %319, i32 noundef 3) #14
  %tobool247.not = icmp eq ptr %call245, null
  br i1 %tobool247.not, label %if.end246.if.end412_crit_edge, label %if.end246.failure.thread884_crit_edge

if.end246.failure.thread884_crit_edge:            ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure.thread884

if.end246.if.end412_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end412

failure.thread884:                                ; preds = %if.end246.failure.thread884_crit_edge, %if.then241.failure.thread884_crit_edge
  %th.4820 = phi ptr [ %call245, %if.end246.failure.thread884_crit_edge ], [ %th.3, %if.then241.failure.thread884_crit_edge ]
  %320 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %allocated_block_nr, align 4
  call void @reiserfs_free_block(ptr noundef nonnull %th.4820, ptr noundef %inode, i32 noundef %321, i32 noundef 1) #14
  br label %land.lhs.true397

if.then255:                                       ; preds = %set_block_dev_mapped.exit743
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_unmap_buffer(ptr noundef %bh_result) #14
  %322 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %allocated_block_nr, align 4
  call void @reiserfs_free_block(ptr noundef %th.1960, ptr noundef %inode, i32 noundef %323, i32 noundef 1) #14
  br label %failure

if.end256:                                        ; preds = %set_block_dev_mapped.exit743
  %324 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile i32, ptr %bh_result, align 4
  %and1.i.i624 = and i32 %325, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i624)
  %tobool.not.i625 = icmp eq i32 %and1.i.i624, 0
  br i1 %tobool.not.i625, label %if.then.i626, label %if.end256.set_buffer_uptodate.exit_crit_edge

if.end256.set_buffer_uptodate.exit_crit_edge:     ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_buffer_uptodate.exit

if.then.i626:                                     ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 0, ptr noundef %bh_result) #14
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i626, %if.end256.set_buffer_uptodate.exit_crit_edge
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %326 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %b_page, align 8
  %tobool257.not = icmp eq ptr %327, null
  br i1 %tobool257.not, label %set_buffer_uptodate.exit.failure_crit_edge, label %if.then258

set_buffer_uptodate.exit.failure_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.then258:                                       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call259 = call i32 @reiserfs_add_tail_list(ptr noundef %inode, ptr noundef %bh_result) #14
  call void @mark_buffer_dirty(ptr noundef %bh_result) #14
  br label %failure

if.else264:                                       ; preds = %is_direct_le_ih.exit.thread.if.else264_crit_edge, %is_direct_le_ih.exit.if.else264_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_key265) #14
  %328 = call ptr @memset(ptr %tmp_key265, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unf_single) #14
  %329 = ptrtoint ptr %unf_single to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %unf_single, align 4
  %330 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %i_sb, align 4
  %s_blocksize267 = getelementptr inbounds %struct.super_block, ptr %331, i32 0, i32 3
  %332 = ptrtoint ptr %s_blocksize267 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %s_blocksize267, align 16
  %sub269 = add i32 %333, -48
  %div616 = lshr i32 %sub269, 2
  %conv270 = zext i32 %div616 to i64
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih.0, i32 0, i32 2
  %334 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %334, i32 2)
  %335 = load i16, ptr %ih_item_len, align 1
  %336 = call i16 @llvm.bswap.i16(i16 %335)
  %337 = lshr i16 %336, 2
  %div273 = zext i16 %337 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pos_in_item.0, i32 %div273)
  %cmp274.not = icmp eq i32 %pos_in_item.0, %div273
  br i1 %cmp274.not, label %do.end279, label %if.then276

if.then276:                                       ; preds = %if.else264
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.reiserfs_get_block, ptr noundef nonnull @.str.4, i32 noundef 1023, ptr noundef nonnull @__func__.reiserfs_get_block) #17
  unreachable

do.end279:                                        ; preds = %if.else264
  br i1 %tobool.not.i630, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #16
  %338 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %338, i32 4)
  %339 = load i32, ptr %u.i.i.i, align 1
  %340 = call i32 @llvm.bswap.i32(i32 %339) #14
  %conv.i746 = zext i32 %340 to i64
  br label %le_key_k_offset.exit

cond.false.i:                                     ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #16
  %341 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %341, i32 8)
  %342 = load i64, ptr %u.i.i.i, align 1
  %343 = and i64 %342, -241
  %344 = call i64 @llvm.bswap.i64(i64 %343) #14
  br label %le_key_k_offset.exit

le_key_k_offset.exit:                             ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %conv.i746, %cond.true.i ], [ %344, %cond.false.i ]
  %345 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %345, i32 2)
  %346 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %346)
  %cmp.i.i748 = icmp eq i16 %346, 0
  br i1 %cmp.i.i748, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %le_key_k_offset.exit
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %347 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 4)
  %348 = load i32, ptr %k_uniqueness.i.i, align 1
  %349 = call i32 @llvm.bswap.i32(i32 %348) #14
  %350 = zext i32 %349 to i64
  call void @__sanitizer_cov_trace_switch(i64 %350, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %349, label %sw.default.i.i.i [
    i32 0, label %if.then.i.i.le_ih_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i.i
    i32 -1, label %sw.bb2.i.i.i
    i32 500, label %sw.bb3.i.i.i
  ]

if.then.i.i.le_ih_k_type.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.default.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

if.else.i.i:                                      ; preds = %le_key_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  %351 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %351, i32 8)
  %352 = load i64, ptr %u.i.i.i, align 1
  %353 = trunc i64 %352 to i32
  %354 = lshr i32 %353, 4
  %conv1.i.i.i = and i32 %354, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i)
  %cmp.i.i.i750 = icmp ult i32 %conv1.i.i.i, 4
  %narrow.i.i = select i1 %cmp.i.i.i750, i32 %conv1.i.i.i, i32 15
  br label %le_ih_k_type.exit

le_ih_k_type.exit:                                ; preds = %if.else.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge
  %retval.0.in.i.i = phi i32 [ %narrow.i.i, %if.else.i.i ], [ 15, %sw.default.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ %349, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i
  %355 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %arrayidx, align 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %356, align 4
  %call284 = call i32 %358(ptr noundef %ih.0, i32 noundef %333) #14
  %conv285 = sext i32 %call284 to i64
  %add286 = add nsw i64 %cond.i, %conv285
  %359 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %i_flags, align 8
  %and.i753 = and i32 %360, 1
  %361 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %add.ptr.i, align 8
  %363 = call i32 @llvm.bswap.i32(i32 %362) #14
  %364 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %k_objectid.i, align 4
  %366 = call i32 @llvm.bswap.i32(i32 %365) #14
  %367 = ptrtoint ptr %version1.i.i755 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %and.i753, ptr %version1.i.i755, align 8
  %368 = ptrtoint ptr %tmp_key265 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %363, ptr %tmp_key265, align 8
  %369 = ptrtoint ptr %k_objectid.i.i756 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %366, ptr %k_objectid.i.i756, align 4
  %370 = ptrtoint ptr %k_offset.i.i.i757 to i32
  call void @__asan_store8_noabort(i32 %370)
  store i64 %add286, ptr %k_offset.i.i.i757, align 8
  %371 = ptrtoint ptr %k_type.i.i.i758 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 1, ptr %k_type.i.i.i758, align 8
  %372 = ptrtoint ptr %key_length.i.i759 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 3, ptr %key_length.i.i759, align 4
  %373 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %373)
  %374 = load i64, ptr %k_offset.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %374, i64 %add286)
  %cmp290 = icmp slt i64 %374, %add286
  br i1 %cmp290, label %if.then292, label %do.end295

if.then292:                                       ; preds = %le_ih_k_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.reiserfs_get_block, ptr noundef nonnull @.str.5, i32 noundef 1037, ptr noundef nonnull @__func__.reiserfs_get_block) #17
  unreachable

do.end295:                                        ; preds = %le_ih_k_type.exit
  %sub298 = sub i64 %374, %add286
  %375 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits300 = getelementptr inbounds %struct.super_block, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %s_blocksize_bits300 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %s_blocksize_bits300, align 4
  %sh_prom302 = zext i8 %378 to i64
  %shr = ashr i64 %sub298, %sh_prom302
  %add303 = add i64 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr)
  %cmp304 = icmp eq i64 %shr, 0
  br i1 %cmp304, label %do.end295.if.end317_crit_edge, label %if.else307

do.end295.if.end317_crit_edge:                    ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end317

if.else307:                                       ; preds = %do.end295
  call void @__sanitizer_cov_trace_cmp8(i64 %add303, i64 %conv270)
  %cmp309 = icmp ult i64 %add303, %conv270
  %extract.t = trunc i64 %add303 to i32
  %cond311.off0 = select i1 %cmp309, i32 %extract.t, i32 %div616
  %379 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond311.off0, i32 4) #14
  %380 = extractvalue { i32, i1 } %379, 1
  br i1 %380, label %if.else307.if.end337.thread_crit_edge, label %if.end7.i.i, !prof !98

if.else307.if.end337.thread_crit_edge:            ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337.thread

if.end7.i.i:                                      ; preds = %if.else307
  %381 = extractvalue { i32, i1 } %379, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %381, i32 noundef 3392) #18
  %tobool314.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool314.not, label %if.end7.i.i.if.end337.thread_crit_edge, label %if.end7.i.i.if.end317_crit_edge

if.end7.i.i.if.end317_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end317

if.end7.i.i.if.end337.thread_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337.thread

if.end317:                                        ; preds = %if.end7.i.i.if.end317_crit_edge, %do.end295.if.end317_crit_edge
  %un.0 = phi ptr [ %call8.i.i, %if.end7.i.i.if.end317_crit_edge ], [ %unf_single, %do.end295.if.end317_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add303, i64 %conv270)
  %cmp318.not = icmp ugt i64 %add303, %conv270
  br i1 %cmp318.not, label %if.else324, label %if.then320

if.then320:                                       ; preds = %if.end317
  %382 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %allocated_block_nr, align 4
  %384 = call i32 @llvm.bswap.i32(i32 %383)
  %385 = trunc i64 %add303 to i32
  %idxprom322 = add i32 %385, -1
  %arrayidx323 = getelementptr i32, ptr %un.0, i32 %idxprom322
  %386 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %384, ptr %arrayidx323, align 4
  %387 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %i_sb, align 4
  %389 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load volatile i32, ptr %bh_result, align 4
  %391 = and i32 %390, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool.not.i.i.i769 = icmp eq i32 %391, 0
  br i1 %tobool.not.i.i.i769, label %if.then.i.i.i770, label %if.then320.set_block_dev_mapped.exit777_crit_edge

if.then320.set_block_dev_mapped.exit777_crit_edge: ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_block_dev_mapped.exit777

if.then.i.i.i770:                                 ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #14
  br label %set_block_dev_mapped.exit777

set_block_dev_mapped.exit777:                     ; preds = %if.then.i.i.i770, %if.then320.set_block_dev_mapped.exit777_crit_edge
  %conv.i771 = zext i32 %383 to i64
  %s_bdev.i.i772 = getelementptr inbounds %struct.super_block, ptr %388, i32 0, i32 26
  %392 = ptrtoint ptr %s_bdev.i.i772 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %s_bdev.i.i772, align 4
  %394 = ptrtoint ptr %b_bdev.i.i773 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %393, ptr %b_bdev.i.i773, align 8
  %395 = ptrtoint ptr %b_blocknr.i.i774 to i32
  call void @__asan_store8_noabort(i32 %395)
  store i64 %conv.i771, ptr %b_blocknr.i.i774, align 8
  %s_blocksize.i.i775 = getelementptr inbounds %struct.super_block, ptr %388, i32 0, i32 3
  %396 = ptrtoint ptr %s_blocksize.i.i775 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %s_blocksize.i.i775, align 16
  %398 = ptrtoint ptr %b_size.i.i776 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %397, ptr %b_size.i.i776, align 8
  %399 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load volatile i32, ptr %bh_result, align 4
  %401 = and i32 %400, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %tobool.not.i627 = icmp eq i32 %401, 0
  br i1 %tobool.not.i627, label %if.then.i628, label %set_block_dev_mapped.exit777.if.end330_crit_edge

set_block_dev_mapped.exit777.if.end330_crit_edge: ; preds = %set_block_dev_mapped.exit777
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end330

if.then.i628:                                     ; preds = %set_block_dev_mapped.exit777
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #14
  br label %if.end330

if.else324:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub269)
  %tobool325.not = icmp ult i32 %sub269, 4
  br i1 %tobool325.not, label %if.else324.if.end337.thread_crit_edge, label %if.else324.if.end330_crit_edge

if.else324.if.end330_crit_edge:                   ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end330

if.else324.if.end337.thread_crit_edge:            ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337.thread

if.end330:                                        ; preds = %if.else324.if.end330_crit_edge, %if.then.i628, %set_block_dev_mapped.exit777.if.end330_crit_edge
  %blocks_needed.1.tr.pre-phi = phi i32 [ %385, %if.then.i628 ], [ %385, %set_block_dev_mapped.exit777.if.end330_crit_edge ], [ %div616, %if.else324.if.end330_crit_edge ]
  %done.3 = phi i32 [ 1, %if.then.i628 ], [ 1, %set_block_dev_mapped.exit777.if.end330_crit_edge ], [ 0, %if.else324.if.end330_crit_edge ]
  %blocks_needed.1 = phi i64 [ %add303, %if.then.i628 ], [ %add303, %set_block_dev_mapped.exit777.if.end330_crit_edge ], [ %conv270, %if.else324.if.end330_crit_edge ]
  %conv332 = shl i32 %blocks_needed.1.tr.pre-phi, 2
  %call333 = call i32 @reiserfs_paste_into_item(ptr noundef nonnull %th.1960, ptr noundef nonnull %path, ptr noundef nonnull %tmp_key265, ptr noundef %inode, ptr noundef %un.0, i32 noundef %conv332) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %blocks_needed.1)
  %cmp334.not = icmp eq i64 %blocks_needed.1, 1
  br i1 %cmp334.not, label %if.end330.if.end337_crit_edge, label %if.then336

if.end330.if.end337_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337

if.then336:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef %un.0) #14
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %if.end330.if.end337_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool338.not = icmp eq i32 %call333, 0
  br i1 %tobool338.not, label %if.end340, label %if.end337.cleanup350_crit_edge

if.end337.cleanup350_crit_edge:                   ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup350

if.end337.thread:                                 ; preds = %if.else324.if.end337.thread_crit_edge, %if.end7.i.i.if.end337.thread_crit_edge, %if.else307.if.end337.thread_crit_edge
  %un.0841852 = phi ptr [ %un.0, %if.else324.if.end337.thread_crit_edge ], [ %unf_single, %if.else307.if.end337.thread_crit_edge ], [ %unf_single, %if.end7.i.i.if.end337.thread_crit_edge ]
  %call333859 = call i32 @reiserfs_paste_into_item(ptr noundef nonnull %th.1960, ptr noundef nonnull %path, ptr noundef nonnull %tmp_key265, ptr noundef %inode, ptr noundef %un.0841852, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333859)
  %tobool338.not1070 = icmp eq i32 %call333859, 0
  br i1 %tobool338.not1070, label %if.end337.thread.if.then342_crit_edge, label %if.end337.thread.cleanup350_crit_edge

if.end337.thread.cleanup350_crit_edge:            ; preds = %if.end337.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup350

if.end337.thread.if.then342_crit_edge:            ; preds = %if.end337.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then342

if.end340:                                        ; preds = %if.end337
  br i1 %cmp318.not, label %if.end340.if.then342_crit_edge, label %if.end340.cleanup350.thread_crit_edge

if.end340.cleanup350.thread_crit_edge:            ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup350.thread

if.end340.if.then342_crit_edge:                   ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then342

if.then342:                                       ; preds = %if.end340.if.then342_crit_edge, %if.end337.thread.if.then342_crit_edge
  %blocks_needed.186310721080 = phi i64 [ %blocks_needed.1, %if.end340.if.then342_crit_edge ], [ 1, %if.end337.thread.if.then342_crit_edge ]
  %done.386210731079 = phi i32 [ %done.3, %if.end340.if.then342_crit_edge ], [ 0, %if.end337.thread.if.then342_crit_edge ]
  %402 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %i_sb, align 4
  %s_blocksize344 = getelementptr inbounds %struct.super_block, ptr %403, i32 0, i32 3
  %404 = ptrtoint ptr %s_blocksize344 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %s_blocksize344, align 16
  %conv345 = zext i32 %405 to i64
  %mul346 = mul i64 %blocks_needed.186310721080, %conv345
  %406 = ptrtoint ptr %i_size56 to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %i_size56, align 8
  %add348 = add i64 %mul346, %407
  store i64 %add348, ptr %i_size56, align 8
  br label %cleanup350.thread

cleanup350.thread:                                ; preds = %if.then342, %if.end340.cleanup350.thread_crit_edge
  %done.386210731078 = phi i32 [ %done.386210731079, %if.then342 ], [ %done.3, %if.end340.cleanup350.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unf_single) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_key265) #14
  br label %if.end358

cleanup350:                                       ; preds = %if.end337.thread.cleanup350_crit_edge, %if.end337.cleanup350_crit_edge
  %call3338641071 = phi i32 [ %call333859, %if.end337.thread.cleanup350_crit_edge ], [ %call333, %if.end337.cleanup350_crit_edge ]
  %408 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %allocated_block_nr, align 4
  call void @reiserfs_free_block(ptr noundef nonnull %th.1960, ptr noundef %inode, i32 noundef %409, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unf_single) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_key265) #14
  br label %failure

if.end358:                                        ; preds = %cleanup350.thread, %cleanup190.thread
  %done.4 = phi i32 [ %done.1, %cleanup190.thread ], [ %done.386210731078, %cleanup350.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %done.4)
  %cmp359 = icmp eq i32 %done.4, 1
  br i1 %cmp359, label %if.end358.failure_crit_edge, label %if.end362

if.end358.failure_crit_edge:                      ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end362:                                        ; preds = %if.end358
  %410 = ptrtoint ptr %t_blocks_allocated to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %t_blocks_allocated, align 4
  %call363 = call i32 @journal_transaction_should_end(ptr noundef nonnull %th.1960, i32 noundef %411) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %tobool364.not = icmp eq i32 %call363, 0
  br i1 %tobool364.not, label %if.end362.if.end370_crit_edge, label %if.then365

if.end362.if.end370_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end370

if.then365:                                       ; preds = %if.end362
  %call366 = call fastcc i32 @restart_transaction(ptr noundef nonnull %th.1960, ptr noundef %inode, ptr noundef nonnull %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %if.then365.if.end370_crit_edge, label %if.then365.failure_crit_edge

if.then365.failure_crit_edge:                     ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.then365.if.end370_crit_edge:                   ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end370

if.end370:                                        ; preds = %if.then365.if.end370_crit_edge, %if.end362.if.end370_crit_edge
  %412 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %i_sb, align 4
  %414 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i778 = and i32 %414, -16384
  %415 = inttoptr i32 %and.i.i.i778 to ptr
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load volatile i32, ptr %415, align 16384
  %418 = and i32 %417, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %tobool.i.not.i779 = icmp eq i32 %418, 0
  br i1 %tobool.i.not.i779, label %if.end370.reiserfs_cond_resched.exit783_crit_edge, label %if.then.i781

if.end370.reiserfs_cond_resched.exit783_crit_edge: ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit783

if.then.i781:                                     ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i780 = call i32 @reiserfs_write_unlock_nested(ptr noundef %413) #14
  call void @schedule() #14
  call void @reiserfs_write_lock_nested(ptr noundef %413, i32 noundef %call1.i780) #14
  br label %reiserfs_cond_resched.exit783

reiserfs_cond_resched.exit783:                    ; preds = %if.then.i781, %if.end370.reiserfs_cond_resched.exit783_crit_edge
  %419 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %i_sb, align 4
  %call373 = call i32 @search_for_position_by_key(ptr noundef %420, ptr noundef nonnull %key, ptr noundef nonnull %path) #14
  %421 = zext i32 %call373 to i64
  call void @__sanitizer_cov_trace_switch(i64 %421, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call373, label %if.end385 [
    i32 -2, label %reiserfs_cond_resched.exit783.failure_crit_edge
    i32 1, label %if.then380
  ]

reiserfs_cond_resched.exit783.failure_crit_edge:  ; preds = %reiserfs_cond_resched.exit783
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.then380:                                       ; preds = %reiserfs_cond_resched.exit783
  %422 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %423, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.reiserfs_get_block, ptr noundef nonnull @.str.7, ptr noundef nonnull %key) #14
  %424 = ptrtoint ptr %allocated_block_nr to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %allocated_block_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool382.not = icmp eq i32 %425, 0
  br i1 %tobool382.not, label %if.then380.if.end384_crit_edge, label %if.then383

if.then380.if.end384_crit_edge:                   ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end384

if.then383:                                       ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_free_block(ptr noundef nonnull %th.1960, ptr noundef %inode, i32 noundef %425, i32 noundef 1) #14
  br label %if.end384

if.end384:                                        ; preds = %if.then383, %if.then380.if.end384_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #14
  br label %failure

if.end385:                                        ; preds = %reiserfs_cond_resched.exit783
  call void @__sanitizer_cov_trace_pc() #16
  %426 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %path, align 4
  %add.ptr.i785 = getelementptr %struct.path_element, ptr %path_elements, i32 %427
  %428 = ptrtoint ptr %add.ptr.i785 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %add.ptr.i785, align 4
  %pe_position.i786 = getelementptr %struct.path_element, ptr %path_elements, i32 %427, i32 1
  %430 = ptrtoint ptr %pe_position.i786 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %pe_position.i786, align 4
  %b_data.i.i.i787 = getelementptr inbounds %struct.buffer_head, ptr %429, i32 0, i32 5
  %432 = ptrtoint ptr %b_data.i.i.i787 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %b_data.i.i.i787, align 4
  %add.ptr.i.i.i788 = getelementptr i8, ptr %433, i32 24
  %arrayidx.i.i789 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i788, i32 %431
  %434 = ptrtoint ptr %pos_in_item74 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %pos_in_item74, align 4
  br label %do.body

failure:                                          ; preds = %if.end384, %reiserfs_cond_resched.exit783.failure_crit_edge, %if.then365.failure_crit_edge, %if.end358.failure_crit_edge, %cleanup350, %if.then258, %set_buffer_uptodate.exit.failure_crit_edge, %if.then255, %if.end239.failure_crit_edge, %cleanup190, %research.backedge.failure_crit_edge, %if.end65.failure_crit_edge
  %th.8 = phi ptr [ %th.1960, %cleanup190 ], [ %th.1960, %if.end384 ], [ %th.1960, %cleanup350 ], [ %th.3, %if.end239.failure_crit_edge ], [ %th.1960, %if.then255 ], [ %th.1960, %set_buffer_uptodate.exit.failure_crit_edge ], [ %th.1960, %if.then258 ], [ %th.0, %if.end65.failure_crit_edge ], [ %th.1960, %if.then365.failure_crit_edge ], [ %th.1960, %reiserfs_cond_resched.exit783.failure_crit_edge ], [ %th.1960, %if.end358.failure_crit_edge ], [ %th.1.be, %research.backedge.failure_crit_edge ]
  %retval1.2 = phi i32 [ %call186, %cleanup190 ], [ -17, %if.end384 ], [ %call3338641071, %cleanup350 ], [ %call232, %if.end239.failure_crit_edge ], [ %call253, %if.then255 ], [ 0, %set_buffer_uptodate.exit.failure_crit_edge ], [ 0, %if.then258 ], [ -5, %if.end65.failure_crit_edge ], [ 0, %if.end358.failure_crit_edge ], [ -5, %reiserfs_cond_resched.exit783.failure_crit_edge ], [ %call366, %if.then365.failure_crit_edge ], [ -5, %research.backedge.failure_crit_edge ]
  %tobool396.not = icmp eq ptr %th.8, null
  br i1 %tobool396.not, label %failure.if.end412_crit_edge, label %failure.land.lhs.true397_crit_edge

failure.land.lhs.true397_crit_edge:               ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true397

failure.if.end412_crit_edge:                      ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end412

land.lhs.true397.loopexit:                        ; preds = %_allocate_block.exit679.land.lhs.true397.loopexit_crit_edge, %if.then90.land.lhs.true397.loopexit_crit_edge
  %retval1.2872.ph = phi i32 [ %call93, %if.then90.land.lhs.true397.loopexit_crit_edge ], [ -122, %_allocate_block.exit679.land.lhs.true397.loopexit_crit_edge ]
  br label %land.lhs.true397

land.lhs.true397:                                 ; preds = %land.lhs.true397.loopexit, %failure.land.lhs.true397_crit_edge, %failure.thread884, %_allocate_block.exit679.land.lhs.true397_crit_edge
  %retval1.2872 = phi i32 [ %retval1.2, %failure.land.lhs.true397_crit_edge ], [ %call232, %failure.thread884 ], [ %retval1.2872.ph, %land.lhs.true397.loopexit ], [ -28, %_allocate_block.exit679.land.lhs.true397_crit_edge ]
  %th.8871 = phi ptr [ %th.8, %failure.land.lhs.true397_crit_edge ], [ %th.4820, %failure.thread884 ], [ %th.1960, %land.lhs.true397.loopexit ], [ %th.1960, %_allocate_block.exit679.land.lhs.true397_crit_edge ]
  br i1 %tobool398.not, label %land.lhs.true397.if.then403_crit_edge, label %lor.lhs.false399

land.lhs.true397.if.then403_crit_edge:            ; preds = %land.lhs.true397
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then403

lor.lhs.false399:                                 ; preds = %land.lhs.true397
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.2872)
  %tobool400.not = icmp eq i32 %retval1.2872, 0
  br i1 %tobool400.not, label %lor.lhs.false399.if.end412_crit_edge, label %land.lhs.true401

lor.lhs.false399.if.end412_crit_edge:             ; preds = %lor.lhs.false399
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end412

land.lhs.true401:                                 ; preds = %lor.lhs.false399
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.8871, i32 0, i32 4
  %436 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %437)
  %tobool402.not = icmp eq i32 %437, 0
  br i1 %tobool402.not, label %land.lhs.true401.if.then403_crit_edge, label %land.lhs.true401.if.end412_crit_edge

land.lhs.true401.if.end412_crit_edge:             ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end412

land.lhs.true401.if.then403_crit_edge:            ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then403

if.then403:                                       ; preds = %land.lhs.true401.if.then403_crit_edge, %land.lhs.true397.if.then403_crit_edge
  %t_trans_id404 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.8871, i32 0, i32 4
  %438 = ptrtoint ptr %t_trans_id404 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %t_trans_id404, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %tobool405.not = icmp eq i32 %439, 0
  br i1 %tobool405.not, label %if.then403.if.end407_crit_edge, label %if.then406

if.then403.if.end407_crit_edge:                   ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end407

if.then406:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #16
  %440 = ptrtoint ptr %i_size56 to i32
  call void @__asan_load8_noabort(i32 %440)
  %441 = load i64, ptr %i_size56, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th.8871, ptr noundef %inode, i64 noundef %441) #14
  br label %if.end407

if.end407:                                        ; preds = %if.then406, %if.then403.if.end407_crit_edge
  %call408 = call i32 @reiserfs_end_persistent_transaction(ptr noundef nonnull %th.8871) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  %spec.select618 = select i1 %tobool409.not, i32 %retval1.2872, i32 %call408
  br label %if.end412

if.end412:                                        ; preds = %if.end407, %land.lhs.true401.if.end412_crit_edge, %lor.lhs.false399.if.end412_crit_edge, %failure.if.end412_crit_edge, %if.end246.if.end412_crit_edge, %if.then226.if.end412_crit_edge, %start_trans.if.end412_crit_edge
  %retval1.4 = phi i32 [ %retval1.2872, %land.lhs.true401.if.end412_crit_edge ], [ %spec.select618, %if.end407 ], [ 0, %lor.lhs.false399.if.end412_crit_edge ], [ %retval1.2, %failure.if.end412_crit_edge ], [ -12, %start_trans.if.end412_crit_edge ], [ %call232, %if.end246.if.end412_crit_edge ], [ %call227, %if.then226.if.end412_crit_edge ]
  %442 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %443) #14
  %call414 = call i32 @reiserfs_check_path(ptr noundef nonnull %path) #14
  br label %cleanup415

cleanup415:                                       ; preds = %if.end412, %cleanup.thread, %if.then14, %if.then
  %retval.4 = phi i32 [ %retval1.4, %if.end412 ], [ %call15, %if.then14 ], [ -27, %if.then ], [ %retval1.0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp_ih) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocated_block_nr) #14
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_get_block_create_0(ptr nocapture noundef readonly %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %args) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.treepath, align 4
  %key = alloca %struct.cpu_key, align 8
  %tmp_ih = alloca %struct.item_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #14
  %0 = getelementptr inbounds i8, ptr %path, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #14
  %3 = getelementptr inbounds i8, ptr %key, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp_ih) #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = call ptr @memset(ptr %tmp_ih, i32 255, i32 24)
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %9 to i64
  %mul = mul i64 %conv, %block
  %add = add i64 %mul, 1
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -264
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %11, 1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  %k_objectid.i = getelementptr i8, ptr %inode, i32 -260
  %15 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %k_objectid.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %version1.i.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %18 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %version1.i.i, align 8
  %19 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %key, align 8
  %k_objectid.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %20 = ptrtoint ptr %k_objectid.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %k_objectid.i.i, align 4
  %k_offset.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %21 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add, ptr %k_offset.i.i.i, align 8
  %k_type.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %22 = ptrtoint ptr %k_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 15, ptr %k_type.i.i.i, align 8
  %key_length.i.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %23 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %key_length.i.i, align 4
  %call = call i32 @search_for_position_by_key(ptr noundef %7, ptr noundef nonnull %key, ptr noundef nonnull %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  call void @pathrelse(ptr noundef nonnull %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp4 = icmp eq i32 %call, -2
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.then
  %and = and i32 %args, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %land.lhs.true

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %b_page9 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %24 = ptrtoint ptr %b_page9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_page9, align 8
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.23) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !103
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.cleanup_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.cleanup_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  br label %cleanup

if.end14:                                         ; preds = %entry
  %path_elements = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %37 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %path, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %38
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements, i32 %38, i32 1
  %41 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %42
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp.i.i.i = icmp eq i16 %46, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_indirect_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.end14
  %47 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %u.i.i.i, align 1
  %49 = and i64 %48, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %49)
  %phi.cmp1.i.i = icmp eq i64 %49, 16
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then18_crit_edge, label %if.else.i.i.i.if.end45_crit_edge

if.else.i.i.i.if.end45_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.else.i.i.i.if.then18_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

is_indirect_le_ih.exit:                           ; preds = %if.end14
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %51)
  %cond.i.i = icmp eq i32 %51, -16777217
  br i1 %cond.i.i, label %is_indirect_le_ih.exit.if.then18_crit_edge, label %is_indirect_le_ih.exit.if.end45_crit_edge

is_indirect_le_ih.exit.if.end45_crit_edge:        ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

is_indirect_le_ih.exit.if.then18_crit_edge:       ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.then18:                                        ; preds = %is_indirect_le_ih.exit.if.then18_crit_edge, %if.else.i.i.i.if.then18_crit_edge
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %ih_item_location.i, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53) #14
  %conv.i = zext i16 %54 to i32
  %add.ptr.i230 = getelementptr i8, ptr %44, i32 %conv.i
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %55 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pos_in_item, align 4
  %add.ptr20 = getelementptr i32, ptr %add.ptr.i230, i32 %56
  %57 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %add.ptr20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool22.not = icmp eq i32 %58, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then18
  %59 = call i32 @llvm.bswap.i32(i32 %58) #14
  %60 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb, align 4
  %conv25 = zext i32 %59 to i64
  %62 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %bh_result, align 4
  %64 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i231 = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i231, label %if.then.i.i232, label %if.then23.map_bh.exit_crit_edge

if.then23.map_bh.exit_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bh.exit

if.then.i.i232:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #14
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i232, %if.then23.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 26
  %65 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %67 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %68 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv25, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 3
  %69 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %71 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %b_size.i, align 8
  %72 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pos_in_item, align 4
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %ih_item_len, align 1
  %76 = call i16 @llvm.bswap.i16(i16 %75)
  %77 = lshr i16 %76, 2
  %div = zext i16 %77 to i32
  %sub = add nsw i32 %div, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %sub)
  %cmp28 = icmp eq i32 %73, %sub
  br i1 %cmp28, label %if.then30, label %map_bh.exit.if.end40_crit_edge

map_bh.exit.if.end40_crit_edge:                   ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then30:                                        ; preds = %map_bh.exit
  %78 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %bh_result, align 4
  %80 = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then30.if.end40_crit_edge

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 9, ptr noundef %bh_result) #14
  br label %if.end40

if.else:                                          ; preds = %if.then18
  %and32 = and i32 %args, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else.if.end40_crit_edge, label %land.lhs.true34

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true34:                                  ; preds = %if.else
  %b_page35 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %81 = ptrtoint ptr %b_page35 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_page35, align 8
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %and.i.i233 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233)
  %tobool.not.i.i234 = icmp eq i32 %and.i.i233, 0
  br i1 %tobool.not.i.i234, label %if.end.i.i237, label %if.then.i.i236, !prof !102

if.then.i.i236:                                   ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i235 = add i32 %85, -1
  br label %_compound_head.exit.i241

if.end.i.i237:                                    ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %82 to i32
  br label %_compound_head.exit.i241

_compound_head.exit.i241:                         ; preds = %if.end.i.i237, %if.then.i.i236
  %retval.0.i.i238 = phi i32 [ %sub.i.i235, %if.then.i.i236 ], [ %86, %if.end.i.i237 ]
  %87 = inttoptr i32 %retval.0.i.i238 to ptr
  %88 = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %and.i.i.i.i239 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i239)
  %tobool.not.i.i.i240 = icmp eq i32 %and.i.i.i.i239, 0
  br i1 %tobool.not.i.i.i240, label %folio_flags.exit.i.i244, label %if.then.i.i.i242, !prof !102

if.then.i.i.i242:                                 ; preds = %_compound_head.exit.i241
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.23) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !103
  unreachable

folio_flags.exit.i.i244:                          ; preds = %_compound_head.exit.i241
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %87, align 4
  %93 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.i.not.i243 = icmp eq i32 %93, 0
  br i1 %tobool.i.not.i243, label %folio_flags.exit.i.i244.if.end40_crit_edge, label %do.end.i.i245

folio_flags.exit.i.i244.if.end40_crit_edge:       ; preds = %folio_flags.exit.i.i244
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

do.end.i.i245:                                    ; preds = %folio_flags.exit.i.i244
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  br label %if.end40

if.end40:                                         ; preds = %do.end.i.i245, %folio_flags.exit.i.i244.if.end40_crit_edge, %if.else.if.end40_crit_edge, %if.then.i, %if.then30.if.end40_crit_edge, %map_bh.exit.if.end40_crit_edge
  %ret.0 = phi i32 [ 0, %map_bh.exit.if.end40_crit_edge ], [ 0, %if.else.if.end40_crit_edge ], [ 0, %if.then30.if.end40_crit_edge ], [ 0, %if.then.i ], [ -2, %folio_flags.exit.i.i244.if.end40_crit_edge ], [ 0, %do.end.i.i245 ]
  call void @pathrelse(ptr noundef nonnull %path) #14
  br label %cleanup

if.end45:                                         ; preds = %is_indirect_le_ih.exit.if.end45_crit_edge, %if.else.i.i.i.if.end45_crit_edge
  %and46 = and i32 %args, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  call void @pathrelse(ptr noundef nonnull %path) #14
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %94 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %bh_result, align 4
  %and1.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool55.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool55.not, label %if.else57, label %if.end53.finished.thread_crit_edge

if.end53.finished.thread_crit_edge:               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %finished.thread

if.else57:                                        ; preds = %if.end53
  %b_page58 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %96 = ptrtoint ptr %b_page58 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %b_page58, align 8
  %tobool59.not = icmp eq ptr %97, null
  br i1 %tobool59.not, label %if.else57.if.then63_crit_edge, label %lor.lhs.false

if.else57.if.then63_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then63

lor.lhs.false:                                    ; preds = %if.else57
  %98 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %98, align 4
  %and.i.i248 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i248)
  %tobool.not.i.i249 = icmp eq i32 %and.i.i248, 0
  br i1 %tobool.not.i.i249, label %if.end.i.i252, label %if.then.i.i251, !prof !102

if.then.i.i251:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i250 = add i32 %100, -1
  br label %_compound_head.exit.i256

if.end.i.i252:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %97 to i32
  br label %_compound_head.exit.i256

_compound_head.exit.i256:                         ; preds = %if.end.i.i252, %if.then.i.i251
  %retval.0.i.i253 = phi i32 [ %sub.i.i250, %if.then.i.i251 ], [ %101, %if.end.i.i252 ]
  %102 = inttoptr i32 %retval.0.i.i253 to ptr
  %103 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %103, align 4
  %and.i.i.i.i254 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i254)
  %tobool.not.i.i.i255 = icmp eq i32 %and.i.i.i.i254, 0
  br i1 %tobool.not.i.i.i255, label %folio_flags.exit.i.i259, label %if.then.i.i.i257, !prof !102

if.then.i.i.i257:                                 ; preds = %_compound_head.exit.i256
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %102, ptr noundef nonnull @.str.23) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !103
  unreachable

folio_flags.exit.i.i259:                          ; preds = %_compound_head.exit.i256
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %102, align 4
  %108 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.i.not.i258 = icmp eq i32 %108, 0
  br i1 %tobool.i.not.i258, label %if.end65, label %PageUptodate.exit262

PageUptodate.exit262:                             ; preds = %folio_flags.exit.i.i259
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  br label %if.then63

if.then63:                                        ; preds = %PageUptodate.exit262, %if.else57.if.then63_crit_edge
  %109 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %bh_result, align 4
  %and1.i.i222 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i222)
  %tobool.not.i223 = icmp eq i32 %and1.i.i222, 0
  br i1 %tobool.not.i223, label %if.then.i224, label %if.then63.finished.thread_crit_edge

if.then63.finished.thread_crit_edge:              ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %finished.thread

if.then.i224:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 0, ptr noundef %bh_result) #14
  br label %finished.thread

if.end65:                                         ; preds = %folio_flags.exit.i.i259
  %111 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %k_offset.i.i.i, align 8
  %113 = trunc i64 %112 to i32
  %114 = add i32 %113, 4095
  %conv69 = and i32 %114, 4095
  call void @copy_item_head(ptr noundef nonnull %tmp_ih, ptr noundef %arrayidx.i.i) #14
  %115 = ptrtoint ptr %b_page58 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %b_page58, align 8
  %call73 = call fastcc ptr @kmap(ptr noundef %116)
  %add.ptr75 = getelementptr i8, ptr %call73, i32 %conv69
  %117 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_sb, align 4
  %s_blocksize77 = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %s_blocksize77 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_blocksize77, align 16
  %121 = call ptr @memset(ptr %add.ptr75, i32 0, i32 %120)
  %pos_in_item87319 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %i_size322 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %if.end142, %if.end65
  %bh.0 = phi ptr [ %40, %if.end65 ], [ %187, %if.end142 ]
  %ih.0 = phi ptr [ %arrayidx.i.i, %if.end65 ], [ %arrayidx.i.i302, %if.end142 ]
  %p.1 = phi ptr [ %add.ptr75, %if.end65 ], [ %add.ptr123, %if.end142 ]
  %ih_version.i263 = getelementptr inbounds %struct.item_head, ptr %ih.0, i32 0, i32 4
  %122 = ptrtoint ptr %ih_version.i263 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %ih_version.i263, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp.i.i.i264 = icmp eq i16 %123, 0
  %u.i.i.i265 = getelementptr inbounds %struct.reiserfs_key, ptr %ih.0, i32 0, i32 2
  br i1 %cmp.i.i.i264, label %is_direct_le_ih.exit, label %is_direct_le_ih.exit.thread

is_direct_le_ih.exit:                             ; preds = %do.body
  %k_uniqueness.i.i.i266 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i265, i32 0, i32 1
  %124 = ptrtoint ptr %k_uniqueness.i.i.i266 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %k_uniqueness.i.i.i266, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %cond.i.i267.not = icmp eq i32 %125, -1
  br i1 %cond.i.i267.not, label %le_ih_k_offset.exit, label %is_direct_le_ih.exit.do.body81_crit_edge

is_direct_le_ih.exit.do.body81_crit_edge:         ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body81

is_direct_le_ih.exit.thread:                      ; preds = %do.body
  %126 = ptrtoint ptr %u.i.i.i265 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 8)
  %127 = load i64, ptr %u.i.i.i265, align 1
  %128 = and i64 %127, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %128)
  %phi.cmp1.i.i269.not = icmp eq i64 %128, 32
  br i1 %phi.cmp1.i.i269.not, label %le_ih_k_offset.exit.thread, label %is_direct_le_ih.exit.thread.do.body81_crit_edge

is_direct_le_ih.exit.thread.do.body81_crit_edge:  ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body81

do.body81:                                        ; preds = %is_direct_le_ih.exit.thread.do.body81_crit_edge, %is_direct_le_ih.exit.do.body81_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !105
  unreachable

le_ih_k_offset.exit:                              ; preds = %is_direct_le_ih.exit
  %129 = ptrtoint ptr %u.i.i.i265 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %u.i.i.i265, align 1
  %131 = call i32 @llvm.bswap.i32(i32 %130) #14
  %conv.i.i = zext i32 %131 to i64
  %132 = ptrtoint ptr %pos_in_item87319 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pos_in_item87319, align 4
  %conv88 = sext i32 %133 to i64
  %add89 = add nsw i64 %conv.i.i, %conv88
  %134 = ptrtoint ptr %i_size322 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %i_size322, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add89, i64 %135)
  %cmp90 = icmp sgt i64 %add89, %135
  br i1 %cmp90, label %le_ih_k_offset.exit.finished_crit_edge, label %cond.true.i.i279

le_ih_k_offset.exit.finished_crit_edge:           ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %finished

le_ih_k_offset.exit.thread:                       ; preds = %is_direct_le_ih.exit.thread
  %136 = ptrtoint ptr %u.i.i.i265 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %u.i.i.i265, align 1
  %138 = and i64 %137, -241
  %139 = call i64 @llvm.bswap.i64(i64 %138) #14
  %140 = ptrtoint ptr %pos_in_item87319 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pos_in_item87319, align 4
  %conv88320 = sext i32 %141 to i64
  %add89321 = add nsw i64 %139, %conv88320
  %142 = ptrtoint ptr %i_size322 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %i_size322, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add89321, i64 %143)
  %cmp90323 = icmp sgt i64 %add89321, %143
  br i1 %cmp90323, label %le_ih_k_offset.exit.thread.finished_crit_edge, label %cond.false.i.i280

le_ih_k_offset.exit.thread.finished_crit_edge:    ; preds = %le_ih_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %finished

cond.true.i.i279:                                 ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  %144 = ptrtoint ptr %u.i.i.i265 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %u.i.i.i265, align 1
  %146 = call i32 @llvm.bswap.i32(i32 %145) #14
  %conv.i.i278 = zext i32 %146 to i64
  br label %le_ih_k_offset.exit282

cond.false.i.i280:                                ; preds = %le_ih_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %147 = ptrtoint ptr %u.i.i.i265 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %u.i.i.i265, align 1
  %149 = and i64 %148, -241
  %150 = call i64 @llvm.bswap.i64(i64 %149) #14
  br label %le_ih_k_offset.exit282

le_ih_k_offset.exit282:                           ; preds = %cond.false.i.i280, %cond.true.i.i279
  %151 = phi i32 [ %133, %cond.true.i.i279 ], [ %141, %cond.false.i.i280 ]
  %152 = phi i64 [ %135, %cond.true.i.i279 ], [ %143, %cond.false.i.i280 ]
  %cond.i.i281 = phi i64 [ %conv.i.i278, %cond.true.i.i279 ], [ %150, %cond.false.i.i280 ]
  %sub95 = add nsw i64 %cond.i.i281, -1
  %ih_item_len96 = getelementptr inbounds %struct.item_head, ptr %ih.0, i32 0, i32 2
  %153 = ptrtoint ptr %ih_item_len96 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %ih_item_len96, align 1
  %155 = call i16 @llvm.bswap.i16(i16 %154)
  %conv97 = zext i16 %155 to i64
  %add98 = add nsw i64 %sub95, %conv97
  call void @__sanitizer_cov_trace_cmp8(i64 %add98, i64 %152)
  %cmp100 = icmp sgt i64 %add98, %152
  br i1 %cmp100, label %if.then102, label %if.else111

if.then102:                                       ; preds = %le_ih_k_offset.exit282
  br i1 %cmp.i.i.i264, label %cond.true.i.i287, label %cond.false.i.i288

cond.true.i.i287:                                 ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  %156 = ptrtoint ptr %u.i.i.i265 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %u.i.i.i265, align 1
  %158 = call i32 @llvm.bswap.i32(i32 %157) #14
  %conv.i.i286 = zext i32 %158 to i64
  br label %le_ih_k_offset.exit290

cond.false.i.i288:                                ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  %159 = ptrtoint ptr %u.i.i.i265 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 8)
  %160 = load i64, ptr %u.i.i.i265, align 1
  %161 = and i64 %160, -241
  %162 = call i64 @llvm.bswap.i64(i64 %161) #14
  br label %le_ih_k_offset.exit290

le_ih_k_offset.exit290:                           ; preds = %cond.false.i.i288, %cond.true.i.i287
  %cond.i.i289 = phi i64 [ %conv.i.i286, %cond.true.i.i287 ], [ %162, %cond.false.i.i288 ]
  %conv108221 = zext i32 %151 to i64
  %163 = add nsw i64 %152, 1
  %164 = add nsw i64 %cond.i.i289, %conv108221
  %sub109 = sub i64 %163, %164
  %conv110 = trunc i64 %sub109 to i32
  br label %if.end116

if.else111:                                       ; preds = %le_ih_k_offset.exit282
  call void @__sanitizer_cov_trace_pc() #16
  %conv113 = zext i16 %155 to i32
  %sub115 = sub i32 %conv113, %151
  br label %if.end116

if.end116:                                        ; preds = %if.else111, %le_ih_k_offset.exit290
  %chars.0 = phi i32 [ %conv110, %le_ih_k_offset.exit290 ], [ %sub115, %if.else111 ]
  %b_data.i291 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %165 = ptrtoint ptr %b_data.i291 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %b_data.i291, align 4
  %ih_item_location.i292 = getelementptr inbounds %struct.item_head, ptr %ih.0, i32 0, i32 3
  %167 = ptrtoint ptr %ih_item_location.i292 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %ih_item_location.i292, align 1
  %169 = call i16 @llvm.bswap.i16(i16 %168) #14
  %conv.i293 = zext i16 %169 to i32
  %add.ptr.i294 = getelementptr i8, ptr %166, i32 %conv.i293
  %add.ptr119 = getelementptr i8, ptr %add.ptr.i294, i32 %151
  %170 = call ptr @memcpy(ptr %p.1, ptr %add.ptr119, i32 %chars.0)
  br i1 %cmp100, label %if.end116.finished_crit_edge, label %if.end122

if.end116.finished_crit_edge:                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %finished

if.end122:                                        ; preds = %if.end116
  %add.ptr123 = getelementptr i8, ptr %p.1, i32 %chars.0
  %171 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %path, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %172, i32 1
  %173 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %pe_position, align 4
  %175 = ptrtoint ptr %b_data.i291 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %b_data.i291, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %blk_nr_item, align 2
  %179 = call i16 @llvm.bswap.i16(i16 %178)
  %conv128 = zext i16 %179 to i32
  %sub129 = add nsw i32 %conv128, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %sub129)
  %cmp130.not = icmp eq i32 %174, %sub129
  br i1 %cmp130.not, label %if.end133, label %if.end122.finished_crit_edge

if.end122.finished_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %finished

if.end133:                                        ; preds = %if.end122
  %180 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %k_offset.i.i.i, align 8
  %conv135 = sext i32 %chars.0 to i64
  %add136 = add i64 %181, %conv135
  store i64 %add136, ptr %k_offset.i.i.i, align 8
  %182 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i_sb, align 4
  %call138 = call i32 @search_for_position_by_key(ptr noundef %183, ptr noundef nonnull %key, ptr noundef nonnull %path) #14
  %cmp139.not = icmp eq i32 %call138, 1
  br i1 %cmp139.not, label %if.end142, label %if.end133.finished_crit_edge

if.end133.finished_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %finished

if.end142:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  %184 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %path, align 4
  %add.ptr146 = getelementptr %struct.path_element, ptr %path_elements, i32 %185
  %186 = ptrtoint ptr %add.ptr146 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr146, align 4
  %pe_position.i299 = getelementptr %struct.path_element, ptr %path_elements, i32 %185, i32 1
  %188 = ptrtoint ptr %pe_position.i299 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %pe_position.i299, align 4
  %b_data.i.i.i300 = getelementptr inbounds %struct.buffer_head, ptr %187, i32 0, i32 5
  %190 = ptrtoint ptr %b_data.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %b_data.i.i.i300, align 4
  %add.ptr.i.i.i301 = getelementptr i8, ptr %191, i32 24
  %arrayidx.i.i302 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i301, i32 %189
  br label %do.body

finished.thread:                                  ; preds = %if.then.i224, %if.then63.finished.thread_crit_edge, %if.end53.finished.thread_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #14
  br label %if.end156

finished:                                         ; preds = %if.end133.finished_crit_edge, %if.end122.finished_crit_edge, %if.end116.finished_crit_edge, %le_ih_k_offset.exit.thread.finished_crit_edge, %le_ih_k_offset.exit.finished_crit_edge
  %result.1 = phi i32 [ 1, %le_ih_k_offset.exit.finished_crit_edge ], [ 1, %if.end116.finished_crit_edge ], [ 1, %if.end122.finished_crit_edge ], [ %call138, %if.end133.finished_crit_edge ], [ 1, %le_ih_k_offset.exit.thread.finished_crit_edge ]
  %192 = ptrtoint ptr %b_page58 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %b_page58, align 8
  call void @flush_dcache_page(ptr noundef %193) #14
  %194 = ptrtoint ptr %b_page58 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %b_page58, align 8
  call fastcc void @kunmap(ptr noundef %195)
  call void @pathrelse(ptr noundef nonnull %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %result.1)
  %cmp153 = icmp eq i32 %result.1, -2
  br i1 %cmp153, label %finished.cleanup_crit_edge, label %finished.if.end156_crit_edge

finished.if.end156_crit_edge:                     ; preds = %finished
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

finished.cleanup_crit_edge:                       ; preds = %finished
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end156:                                        ; preds = %finished.if.end156_crit_edge, %finished.thread
  %196 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %i_sb, align 4
  %198 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %bh_result, align 4
  %200 = and i32 %199, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i.i303 = icmp eq i32 %200, 0
  br i1 %tobool.not.i.i303, label %if.then.i.i304, label %if.end156.map_bh.exit310_crit_edge

if.end156.map_bh.exit310_crit_edge:               ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bh.exit310

if.then.i.i304:                                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #14
  br label %map_bh.exit310

map_bh.exit310:                                   ; preds = %if.then.i.i304, %if.end156.map_bh.exit310_crit_edge
  %s_bdev.i305 = getelementptr inbounds %struct.super_block, ptr %197, i32 0, i32 26
  %201 = ptrtoint ptr %s_bdev.i305 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %s_bdev.i305, align 4
  %b_bdev.i306 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %203 = ptrtoint ptr %b_bdev.i306 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %202, ptr %b_bdev.i306, align 8
  %b_blocknr.i307 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %204 = ptrtoint ptr %b_blocknr.i307 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 0, ptr %b_blocknr.i307, align 8
  %s_blocksize.i308 = getelementptr inbounds %struct.super_block, ptr %197, i32 0, i32 3
  %205 = ptrtoint ptr %s_blocksize.i308 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %s_blocksize.i308, align 16
  %b_size.i309 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %207 = ptrtoint ptr %b_size.i309 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %b_size.i309, align 8
  %208 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %bh_result, align 4
  %and1.i.i225 = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i225)
  %tobool.not.i226 = icmp eq i32 %and1.i.i225, 0
  br i1 %tobool.not.i226, label %if.then.i227, label %map_bh.exit310.cleanup_crit_edge

map_bh.exit310.cleanup_crit_edge:                 ; preds = %map_bh.exit310
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i227:                                     ; preds = %map_bh.exit310
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 0, ptr noundef %bh_result) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i227, %map_bh.exit310.cleanup_crit_edge, %finished.cleanup_crit_edge, %if.then48, %if.end40, %PageUptodate.exit, %folio_flags.exit.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end40 ], [ -2, %if.then48 ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %finished.cleanup_crit_edge ], [ 0, %map_bh.exit310.cleanup_crit_edge ], [ 0, %if.then.i227 ], [ -2, %folio_flags.exit.i.i.cleanup_crit_edge ], [ 0, %PageUptodate.exit ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp_ih) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_persistent_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_for_position_by_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_item_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pathrelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @restart_transaction(ptr noundef %th, ptr noundef %inode, ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %2 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !98

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

do.body10:                                        ; preds = %entry
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %4 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !98

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #14, !srcloc !107
  unreachable

do.end29:                                         ; preds = %do.body10
  tail call void @pathrelse(ptr noundef %path) #14
  %6 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.end29.cleanup_crit_edge, label %if.end32

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32:                                         ; preds = %do.end29
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  tail call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %inode, i64 noundef %9) #14
  %call = tail call i32 @journal_end(ptr noundef %th) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool33.not = icmp eq i32 %call, 0
  br i1 %tobool33.not, label %if.then34, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @journal_begin(ptr noundef %th, ptr noundef %1, i32 noundef 108) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_update_inode_transaction(ptr noundef %inode) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then34.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end29.cleanup_crit_edge ], [ %call, %if.end32.cleanup_crit_edge ], [ %call35, %if.then34.cleanup_crit_edge ], [ 0, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_items(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_restore_prepared_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_add_ordered_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_end_persistent_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_insert_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_free_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @convert_tail_for_hole(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %bh_result, i64 noundef %tail_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %2 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_size, align 8
  %sub = add i32 %3, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %conv, %tail_offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and)
  %cmp.not = icmp eq i64 %and, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = trunc i64 %tail_offset to i32
  %conv4 = and i32 %4, 4095
  %or = or i32 %sub, %conv4
  %add = add i32 %or, 1
  %5 = lshr i64 %tail_offset, 12
  %conv7 = trunc i64 %5 to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %index8 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv7)
  %cmp9.not = icmp eq i32 %7, %conv7
  br i1 %cmp9.not, label %lor.lhs.false.land.lhs.true.i_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

lor.lhs.false.land.lhs.true.i_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %9, i32 noundef %conv7, i32 noundef 7, i32 noundef %11) #14
  %tobool12.not = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not, label %if.then11.cleanup_crit_edge, label %if.then11.land.lhs.true.i_crit_edge

if.then11.land.lhs.true.i_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then11.land.lhs.true.i_crit_edge, %lor.lhs.false.land.lhs.true.i_crit_edge
  %tail_page.0 = phi ptr [ %call.i.i, %if.then11.land.lhs.true.i_crit_edge ], [ %1, %lor.lhs.false.land.lhs.true.i_crit_edge ]
  %12 = ptrtoint ptr %tail_page.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %tail_page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !98

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %tail_page.0, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit.i:                               ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %tail_page.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tail_page.0, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge, label %do.body.i

PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge: ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fix_tail_page_for_writing.exit

do.body.i:                                        ; preds = %PagePrivate.exit.i
  %17 = ptrtoint ptr %tail_page.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tail_page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i32.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i32.i, label %if.then.i33.i, label %PagePrivate.exit36.i, !prof !98

if.then.i33.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %tail_page.0, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit36.i:                             ; preds = %do.body.i
  %19 = ptrtoint ptr %tail_page.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %tail_page.0, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not.i = icmp eq i32 %21, 0
  br i1 %tobool3.not.i, label %do.body8.i, label %do.end13.i, !prof !98

do.body8.i:                                       ; preds = %PagePrivate.exit36.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #14, !srcloc !109
  unreachable

do.end13.i:                                       ; preds = %PagePrivate.exit36.i
  %private.i = getelementptr inbounds %struct.page, ptr %tail_page.0, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private.i, align 4
  %24 = inttoptr i32 %23 to ptr
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.end19.i.do.body14.i_crit_edge, %do.end13.i
  %bh.0.i = phi ptr [ %24, %do.end13.i ], [ %26, %if.end19.i.do.body14.i_crit_edge ]
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_this_page.i, align 4
  %27 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bh.0.i, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not.i = icmp eq i32 %29, 0
  br i1 %tobool16.not.i, label %do.body14.i.if.end19.i_crit_edge, label %land.lhs.true17.i

do.body14.i.if.end19.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

land.lhs.true17.i:                                ; preds = %do.body14.i
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %30 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp.i = icmp eq i64 %31, 0
  br i1 %cmp.i, label %if.then18.i, label %land.lhs.true17.i.if.end19.i_crit_edge

land.lhs.true17.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then18.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_unmap_buffer(ptr noundef %bh.0.i) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %land.lhs.true17.i.if.end19.i_crit_edge, %do.body14.i.if.end19.i_crit_edge
  %cmp21.not.i = icmp eq ptr %26, %24
  br i1 %cmp21.not.i, label %if.end19.i.fix_tail_page_for_writing.exit_crit_edge, label %if.end19.i.do.body14.i_crit_edge

if.end19.i.do.body14.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i

if.end19.i.fix_tail_page_for_writing.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fix_tail_page_for_writing.exit

fix_tail_page_for_writing.exit:                   ; preds = %if.end19.i.fix_tail_page_for_writing.exit_crit_edge, %PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge
  %sub16 = sub i32 %add, %conv4
  %call17 = tail call i32 @__reiserfs_write_begin(ptr noundef %tail_page.0, i32 noundef %conv4, i32 noundef %sub16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %fix_tail_page_for_writing.exit.unlock_crit_edge

fix_tail_page_for_writing.exit.unlock_crit_edge:  ; preds = %fix_tail_page_for_writing.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end20:                                         ; preds = %fix_tail_page_for_writing.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @flush_dcache_page(ptr noundef %tail_page.0) #14
  %call21 = tail call i32 @reiserfs_commit_write(ptr undef, ptr noundef %tail_page.0, i32 noundef %conv4, i32 noundef %add)
  br label %unlock

unlock:                                           ; preds = %if.end20, %fix_tail_page_for_writing.exit.unlock_crit_edge
  %retval1.0 = phi i32 [ %call17, %fix_tail_page_for_writing.exit.unlock_crit_edge ], [ %call21, %if.end20 ]
  %cmp22.not = icmp eq ptr %tail_page.0, %1
  br i1 %cmp22.not, label %unlock.cleanup_crit_edge, label %if.then24

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then24:                                        ; preds = %unlock
  tail call void @unlock_page(ptr noundef %tail_page.0) #14
  %32 = getelementptr inbounds %struct.page, ptr %tail_page.0, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i51, !prof !102

if.then.i.i51:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %tail_page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i51
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i51 ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !110
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@convert_tail_for_hole, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !114

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %36) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %unlock.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %retval1.0, %unlock.cleanup_crit_edge ], [ -12, %if.then11.cleanup_crit_edge ], [ %retval1.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %retval1.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @direct2indirect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_unmap_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_add_tail_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_paste_into_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_transaction_should_end(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_check_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %inode, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.cpu_key, align 8
  %path = alloca %struct.treepath, align 4
  %tmp_ih = alloca %struct.item_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #14
  %0 = getelementptr inbounds i8, ptr %key, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #14
  %2 = getelementptr inbounds i8, ptr %path, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 64)
  %4 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp_ih) #14
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %5 = call ptr @memset(ptr %tmp_ih, i32 255, i32 24)
  %6 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !98

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1455, 0\0A.popsection", ""() #14, !srcloc !115
  unreachable

do.end9:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -264
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %8 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %9, 1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %k_objectid.i = getelementptr i8, ptr %inode, i32 -260
  %13 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %k_objectid.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %version1.i.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %16 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %version1.i.i, align 8
  %17 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %key, align 8
  %k_objectid.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %18 = ptrtoint ptr %k_objectid.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %k_objectid.i.i, align 4
  %k_offset.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %19 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %k_offset.i.i.i, align 8
  %k_type.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %20 = ptrtoint ptr %k_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %k_type.i.i.i, align 8
  %key_length.i.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %21 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %key_length.i.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %path_elements23 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %do.end9
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %call = call i32 @search_by_key(ptr noundef %23, ptr noundef nonnull %key, ptr noundef nonnull %path, i32 noundef 1) #14
  %24 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call, label %if.end22 [
    i32 -2, label %if.then10
    i32 0, label %if.then14
  ]

if.then10:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.reiserfs_update_sd_size, ptr noundef nonnull @.str.9, ptr noundef nonnull %key) #14
  br label %cleanup46

if.then14:                                        ; preds = %for.cond
  %27 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %path, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements23, i32 %28, i32 1
  %29 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pe_position, align 4
  call void @pathrelse(ptr noundef nonnull %path) #14
  %31 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp15 = icmp eq i32 %33, 0
  br i1 %cmp15, label %if.then14.cleanup46_crit_edge, label %if.end17

if.then14.cleanup46_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end17:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %35, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.reiserfs_update_sd_size, ptr noundef nonnull @.str.11, ptr noundef %add.ptr.i.i, i32 noundef %33, i32 noundef %30) #14
  %call21 = call i32 @reiserfs_check_path(ptr noundef nonnull %path) #14
  br label %cleanup46

if.end22:                                         ; preds = %for.cond
  %36 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %path, align 4
  %add.ptr26 = getelementptr %struct.path_element, ptr %path_elements23, i32 %37
  %38 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr26, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements23, i32 %37, i32 1
  %40 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %41
  call void @copy_item_head(ptr noundef nonnull %tmp_ih, ptr noundef %arrayidx.i.i) #14
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %47, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #14
  %48 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %s_generation_counter, align 4
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  %call32 = call i32 @reiserfs_prepare_for_journal(ptr noundef %51, ptr noundef %39, i32 noundef 1) #14
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %54 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 16384
  %58 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i, label %if.end22.reiserfs_cond_resched.exit_crit_edge, label %if.then.i

if.end22.reiserfs_cond_resched.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %53) #14
  call void @schedule() #14
  call void @reiserfs_write_lock_nested(ptr noundef %53, i32 noundef %call1.i) #14
  br label %reiserfs_cond_resched.exit

reiserfs_cond_resched.exit:                       ; preds = %if.then.i, %if.end22.reiserfs_cond_resched.exit_crit_edge
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i71 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i71, align 16
  %s_generation_counter36 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %62, i32 0, i32 14
  %call.i.i69 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter36, i32 noundef 4) #14
  %63 = ptrtoint ptr %s_generation_counter36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %s_generation_counter36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %64)
  %cmp38.not = icmp eq i32 %49, %64
  br i1 %cmp38.not, label %reiserfs_cond_resched.exit.for.end_crit_edge, label %land.lhs.true

reiserfs_cond_resched.exit.for.end_crit_edge:     ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true:                                    ; preds = %reiserfs_cond_resched.exit
  %call40 = call i32 @comp_items(ptr noundef nonnull %tmp_ih, ptr noundef nonnull %path) #14
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.for.end_crit_edge, label %cleanup

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %66, ptr noundef %39) #14
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %reiserfs_cond_resched.exit.for.end_crit_edge
  %67 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %path, align 4
  %add.ptr.i73 = getelementptr %struct.path_element, ptr %path_elements23, i32 %68
  %69 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i73, align 4
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements23, i32 %68, i32 1
  %71 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pe_position.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %73 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %74, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %72
  %ih_version.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.i.i.i.i = icmp eq i16 %76, 0
  %u.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %is_statdata_le_ih.exit.i

if.then.i.i.i.i:                                  ; preds = %for.end
  %k_uniqueness.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cond.i = icmp eq i32 %78, 0
  br i1 %cond.i, label %if.then5.i, label %if.then.i.i.i.i.if.then.i74_crit_edge

if.then.i.i.i.i.if.then.i74_crit_edge:            ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i74

is_statdata_le_ih.exit.i:                         ; preds = %for.end
  %79 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %u.i.i.i.i, align 1
  %81 = and i64 %80, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %phi.cmp1.i.i.not.i = icmp eq i64 %81, 0
  br i1 %phi.cmp1.i.i.not.i, label %if.else.i, label %is_statdata_le_ih.exit.i.if.then.i74_crit_edge

is_statdata_le_ih.exit.i.if.then.i74_crit_edge:   ; preds = %is_statdata_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i74

if.then.i74:                                      ; preds = %is_statdata_le_ih.exit.i.if.then.i74_crit_edge, %if.then.i.i.i.i.if.then.i74_crit_edge
  %82 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_sb, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %83, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.update_stat_data, ptr noundef nonnull @.str.26, ptr noundef %add.ptr.i.i, ptr noundef %arrayidx.i.i.i) #17
  unreachable

if.then5.i:                                       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %ih_item_location.i.i, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85) #14
  %conv.i.i = zext i16 %86 to i32
  %add.ptr.i21.i = getelementptr i8, ptr %74, i32 %conv.i.i
  call fastcc void @inode2sd_v1(ptr noundef %add.ptr.i21.i, ptr noundef %inode, i64 noundef %size) #14
  br label %update_stat_data.exit

if.else.i:                                        ; preds = %is_statdata_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %ih_item_location.i23.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %ih_item_location.i23.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %ih_item_location.i23.i, align 1
  %89 = call i16 @llvm.bswap.i16(i16 %88) #14
  %conv.i24.i = zext i16 %89 to i32
  %add.ptr.i25.i = getelementptr i8, ptr %74, i32 %conv.i24.i
  call fastcc void @inode2sd(ptr noundef %add.ptr.i25.i, ptr noundef %inode, i64 noundef %size) #14
  br label %update_stat_data.exit

update_stat_data.exit:                            ; preds = %if.else.i, %if.then5.i
  %call45 = call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %39) #14
  call void @pathrelse(ptr noundef nonnull %path) #14
  br label %cleanup46

cleanup46:                                        ; preds = %update_stat_data.exit, %if.end17, %if.then14.cleanup46_crit_edge, %if.then10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp_ih) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_by_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @reiserfs_init_locked_inode(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_ino, align 8
  %dirid = getelementptr inbounds %struct.reiserfs_iget_args, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dirid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dirid, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_read_locked_inode(ptr noundef %inode, ptr nocapture noundef readonly %args) local_unnamed_addr #0 align 64 {
entry:
  %path_to_sd = alloca %struct.treepath, align 4
  %key = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path_to_sd) #14
  %0 = getelementptr inbounds i8, ptr %path_to_sd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %path_to_sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %path_to_sd, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #14
  %3 = getelementptr inbounds i8, ptr %key, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %3, align 8
  %dirid = getelementptr inbounds %struct.reiserfs_iget_args, ptr %args, i32 0, i32 1
  %5 = ptrtoint ptr %dirid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dirid, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %version1.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %version1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %version1.i, align 8
  %10 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %key, align 8
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %11 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %k_objectid.i, align 4
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %12 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %k_offset.i.i, align 8
  %k_type.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %13 = ptrtoint ptr %k_type.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %k_type.i.i, align 8
  %key_length.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %14 = ptrtoint ptr %key_length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %key_length.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %call = call i32 @search_by_key(ptr noundef %16, ptr noundef nonnull %key, ptr noundef nonnull %path_to_sd, i32 noundef 1) #14
  %17 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call, label %if.then3 [
    i32 -2, label %if.then
    i32 1, label %if.end4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.reiserfs_read_locked_inode, ptr noundef nonnull @.str.13, ptr noundef nonnull %key) #14
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -264
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  call void @make_bad_inode(ptr noundef %inode) #14
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @pathrelse(ptr noundef nonnull %path_to_sd) #14
  %add.ptr.i.i33 = getelementptr i8, ptr %inode, i32 -264
  %21 = call ptr @memset(ptr %add.ptr.i.i33, i32 0, i32 16)
  call void @make_bad_inode(ptr noundef %inode) #14
  call void @clear_nlink(ptr noundef %inode) #14
  br label %cleanup

if.end4:                                          ; preds = %entry
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %path_to_sd, i32 0, i32 2
  %22 = ptrtoint ptr %path_to_sd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %path_to_sd, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %23
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %23, i32 1
  %26 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pe_position.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %27
  %add.ptr.i285.i = getelementptr i8, ptr %inode, i32 -264
  %30 = call ptr @memcpy(ptr %add.ptr.i285.i, ptr %arrayidx.i.i.i, i32 16)
  %i_prealloc_list.i = getelementptr i8, ptr %inode, i32 -228
  %31 = ptrtoint ptr %i_prealloc_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %i_prealloc_list.i, ptr %i_prealloc_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %inode, i32 -224
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %i_prealloc_list.i, ptr %prev.i.i, align 4
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %33 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %i_flags.i, align 8
  %i_prealloc_block.i = getelementptr i8, ptr %inode, i32 -236
  %34 = ptrtoint ptr %i_prealloc_block.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %i_prealloc_block.i, align 4
  %i_prealloc_count.i = getelementptr i8, ptr %inode, i32 -232
  %35 = ptrtoint ptr %i_prealloc_count.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %i_prealloc_count.i, align 8
  %i_trans_id.i = getelementptr i8, ptr %inode, i32 -216
  %36 = ptrtoint ptr %i_trans_id.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %i_trans_id.i, align 8
  %i_jl.i = getelementptr i8, ptr %inode, i32 -212
  %37 = ptrtoint ptr %i_jl.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %i_jl.i, align 4
  %i_xattr_sem.i.i = getelementptr i8, ptr %inode, i32 -112
  call void @__init_rwsem(ptr noundef %i_xattr_sem.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @reiserfs_init_xattr_rwsem.__key) #14
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.i = icmp eq i16 %39, 0
  %40 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.i.i.i.i, align 4
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %ih_item_location.i.i, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43) #14
  %conv.i.i = zext i16 %44 to i32
  %add.ptr.i292.i = getelementptr i8, ptr %41, i32 %conv.i.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end4
  %45 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_flags.i, align 8
  %and15.i = and i32 %46, -4
  store i32 %and15.i, ptr %i_flags.i, align 8
  %47 = ptrtoint ptr %add.ptr.i292.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr.i292.i, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #14
  %50 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %inode, align 8
  %sd_nlink.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 1
  %51 = ptrtoint ptr %sd_nlink.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %sd_nlink.i, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #14
  %conv16.i = zext i16 %53 to i32
  call void @set_nlink(ptr noundef %inode, i32 noundef %conv16.i) #14
  %sd_uid.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 2
  %54 = ptrtoint ptr %sd_uid.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %sd_uid.i, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #14
  %conv17.i = zext i16 %56 to i32
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 53
  %59 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call1.i.i = call i32 @make_kuid(ptr noundef %60, i32 noundef %conv17.i) #14
  %61 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call1.i.i, ptr %i_uid.i.i, align 4
  %sd_gid.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 3
  %62 = ptrtoint ptr %sd_gid.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %sd_gid.i, align 1
  %64 = call i16 @llvm.bswap.i16(i16 %63) #14
  %conv18.i = zext i16 %64 to i32
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %65 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i296.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 53
  %67 = ptrtoint ptr %s_user_ns.i.i296.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_user_ns.i.i296.i, align 8
  %call1.i297.i = call i32 @make_kgid(ptr noundef %68, i32 noundef %conv18.i) #14
  %69 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call1.i297.i, ptr %i_gid.i.i, align 8
  %sd_size.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 4
  %70 = ptrtoint ptr %sd_size.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %sd_size.i, align 1
  %72 = call i32 @llvm.bswap.i32(i32 %71) #14
  %conv19.i = zext i32 %72 to i64
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %73 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv19.i, ptr %i_size.i, align 8
  %sd_atime.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 5
  %74 = ptrtoint ptr %sd_atime.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %sd_atime.i, align 1
  %76 = call i32 @llvm.bswap.i32(i32 %75) #14
  %conv20.i = zext i32 %76 to i64
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %77 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv20.i, ptr %i_atime.i, align 8
  %sd_mtime.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 6
  %78 = ptrtoint ptr %sd_mtime.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %sd_mtime.i, align 1
  %80 = call i32 @llvm.bswap.i32(i32 %79) #14
  %conv21.i = zext i32 %80 to i64
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %81 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv21.i, ptr %i_mtime.i, align 8
  %sd_ctime.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 7
  %82 = ptrtoint ptr %sd_ctime.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %sd_ctime.i, align 1
  %84 = call i32 @llvm.bswap.i32(i32 %83) #14
  %conv23.i = zext i32 %84 to i64
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %85 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv23.i, ptr %i_ctime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %86 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec27.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %87 = ptrtoint ptr %tv_nsec27.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %tv_nsec27.i, align 8
  %tv_nsec29.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %88 = ptrtoint ptr %tv_nsec29.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tv_nsec29.i, align 8
  %u.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 8
  %89 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %u.i, align 1
  %91 = call i32 @llvm.bswap.i32(i32 %90) #14
  %conv30.i = zext i32 %91 to i64
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %92 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv30.i, ptr %i_blocks.i, align 8
  %93 = ptrtoint ptr %add.ptr.i285.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i285.i, align 8
  %95 = call i32 @llvm.bswap.i32(i32 %94) #14
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %96 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %i_generation.i, align 8
  %add.i = add nuw nsw i64 %conv19.i, 511
  %97 = lshr i64 %add.i, 9
  %conv35.i = trunc i64 %97 to i32
  %98 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_blocksize.i, align 16
  %shr36.i = lshr i32 %101, 9
  %add37.i = add nsw i32 %conv35.i, -1
  %sub.i = add nsw i32 %add37.i, %shr36.i
  %neg.i = sub nsw i32 0, %shr36.i
  %and42.i = and i32 %sub.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %and42.i)
  %cmp45.i = icmp ugt i32 %91, %and42.i
  br i1 %cmp45.i, label %if.then47.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then47.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv44.i = zext i32 %and42.i to i64
  %102 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv44.i, ptr %i_blocks.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then47.i, %if.then.i.if.end.i_crit_edge
  %103 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %u.i, align 1
  %105 = call i32 @llvm.bswap.i32(i32 %104) #14
  %sd_first_direct_byte.i = getelementptr inbounds %struct.stat_data_v1, ptr %add.ptr.i292.i, i32 0, i32 9
  %106 = ptrtoint ptr %sd_first_direct_byte.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %sd_first_direct_byte.i, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107) #14
  %i_first_direct_byte.i = getelementptr i8, ptr %inode, i32 -244
  %109 = ptrtoint ptr %i_first_direct_byte.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %i_first_direct_byte.i, align 4
  %110 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %i_blocks.i, align 8
  %and53.i = and i64 %111, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53.i)
  %tobool.not.i = icmp eq i64 %and53.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end56.i_crit_edge, label %if.then54.i

if.end.i.if.end56.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i64 %111, 1
  %112 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %inc.i, ptr %i_blocks.i, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end.i.if.end56.i_crit_edge
  %113 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %inode, align 8
  %115 = and i16 %114, -4096
  %116 = zext i16 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %115, label %if.end.i28.i.i [
    i16 -24576, label %if.end56.i.real_space_diff.exit.i.i_crit_edge
    i16 16384, label %if.end56.i.real_space_diff.exit.i.i_crit_edge36
  ]

if.end56.i.real_space_diff.exit.i.i_crit_edge36:  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i.i

if.end56.i.real_space_diff.exit.i.i_crit_edge:    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i.i

real_space_diff.exit.i.i:                         ; preds = %if.end56.i.real_space_diff.exit.i.i_crit_edge, %if.end56.i.real_space_diff.exit.i.i_crit_edge36
  %add.i.i = add nuw nsw i64 %conv19.i, 32
  br label %to_real_used_space.exit.i

if.end.i28.i.i:                                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  %117 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %i_blocks.i, align 8
  %119 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_blocksize.i, align 16
  %conv.i19.i.i = zext i32 %120 to i64
  %sub.i21.i.i = add nsw i64 %conv19.i, -1
  %add.i22.i.i = add nsw i64 %sub.i21.i.i, %conv.i19.i.i
  %s_blocksize_bits.i23.i.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 2
  %121 = ptrtoint ptr %s_blocksize_bits.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %s_blocksize_bits.i23.i.i, align 4
  %sh_prom.i24.i.i = zext i8 %122 to i64
  %shr.i25.i.i = ashr i64 %add.i22.i.i, %sh_prom.i24.i.i
  %shr.tr.i26.i.i = trunc i64 %shr.i25.i.i to i32
  %123 = shl i32 %shr.tr.i26.i.i, 2
  %conv12.i27.i.i = add i32 %123, 32
  %conv9.i.i = sext i32 %conv12.i27.i.i to i64
  %conv10.i.i = shl i64 %118, 9
  %shl.i301.i = and i64 %conv10.i.i, 2199023255040
  %add11.i.i = add nsw i64 %shl.i301.i, %conv9.i.i
  br label %to_real_used_space.exit.i

to_real_used_space.exit.i:                        ; preds = %if.end.i28.i.i, %real_space_diff.exit.i.i
  %retval.0.i.i = phi i64 [ %add.i.i, %real_space_diff.exit.i.i ], [ %add11.i.i, %if.end.i28.i.i ]
  call void @inode_set_bytes(ptr noundef %inode, i64 noundef %retval.0.i.i) #14
  %124 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %i_flags.i, align 8
  %and62.i = and i32 %125, -9
  br label %if.end143.sink.split.i

if.else.i:                                        ; preds = %if.end4
  %126 = ptrtoint ptr %add.ptr.i292.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %add.ptr.i292.i, align 1
  %128 = call i16 @llvm.bswap.i16(i16 %127) #14
  %129 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %inode, align 8
  %sd_nlink67.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 2
  %130 = ptrtoint ptr %sd_nlink67.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %sd_nlink67.i, align 1
  %132 = call i32 @llvm.bswap.i32(i32 %131) #14
  call void @set_nlink(ptr noundef %inode, i32 noundef %132) #14
  %sd_uid68.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 4
  %133 = ptrtoint ptr %sd_uid68.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %sd_uid68.i, align 1
  %135 = call i32 @llvm.bswap.i32(i32 %134) #14
  %i_uid.i307.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %136 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i309.i = getelementptr inbounds %struct.super_block, ptr %137, i32 0, i32 53
  %138 = ptrtoint ptr %s_user_ns.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %s_user_ns.i.i309.i, align 8
  %call1.i310.i = call i32 @make_kuid(ptr noundef %139, i32 noundef %135) #14
  %140 = ptrtoint ptr %i_uid.i307.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call1.i310.i, ptr %i_uid.i307.i, align 4
  %sd_size69.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 3
  %141 = ptrtoint ptr %sd_size69.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 8)
  %142 = load i64, ptr %sd_size69.i, align 1
  %143 = call i64 @llvm.bswap.i64(i64 %142) #14
  %i_size70.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %144 = ptrtoint ptr %i_size70.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %i_size70.i, align 8
  %sd_gid71.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 5
  %145 = ptrtoint ptr %sd_gid71.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %sd_gid71.i, align 1
  %147 = call i32 @llvm.bswap.i32(i32 %146) #14
  %i_gid.i311.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %148 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i313.i = getelementptr inbounds %struct.super_block, ptr %149, i32 0, i32 53
  %150 = ptrtoint ptr %s_user_ns.i.i313.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_user_ns.i.i313.i, align 8
  %call1.i314.i = call i32 @make_kgid(ptr noundef %151, i32 noundef %147) #14
  %152 = ptrtoint ptr %i_gid.i311.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call1.i314.i, ptr %i_gid.i311.i, align 8
  %sd_mtime72.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 7
  %153 = ptrtoint ptr %sd_mtime72.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %sd_mtime72.i, align 1
  %155 = call i32 @llvm.bswap.i32(i32 %154) #14
  %conv73.i = zext i32 %155 to i64
  %i_mtime74.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %156 = ptrtoint ptr %i_mtime74.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %conv73.i, ptr %i_mtime74.i, align 8
  %sd_atime76.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 6
  %157 = ptrtoint ptr %sd_atime76.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %sd_atime76.i, align 1
  %159 = call i32 @llvm.bswap.i32(i32 %158) #14
  %conv77.i = zext i32 %159 to i64
  %i_atime78.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %160 = ptrtoint ptr %i_atime78.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %conv77.i, ptr %i_atime78.i, align 8
  %sd_ctime80.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 8
  %161 = ptrtoint ptr %sd_ctime80.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %sd_ctime80.i, align 1
  %163 = call i32 @llvm.bswap.i32(i32 %162) #14
  %conv81.i = zext i32 %163 to i64
  %i_ctime82.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %164 = ptrtoint ptr %i_ctime82.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %conv81.i, ptr %i_ctime82.i, align 8
  %tv_nsec85.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %165 = ptrtoint ptr %tv_nsec85.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %tv_nsec85.i, align 8
  %tv_nsec87.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %166 = ptrtoint ptr %tv_nsec87.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %tv_nsec87.i, align 8
  %tv_nsec89.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %167 = ptrtoint ptr %tv_nsec89.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %tv_nsec89.i, align 8
  %sd_blocks.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 9
  %168 = ptrtoint ptr %sd_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %sd_blocks.i, align 1
  %170 = call i32 @llvm.bswap.i32(i32 %169) #14
  %conv90.i = zext i32 %170 to i64
  %i_blocks91.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %171 = ptrtoint ptr %i_blocks91.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %conv90.i, ptr %i_blocks91.i, align 8
  %u92.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 10
  %172 = ptrtoint ptr %u92.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %u92.i, align 1
  %174 = call i32 @llvm.bswap.i32(i32 %173) #14
  %175 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %inode, align 8
  %177 = and i16 %176, -4096
  %178 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %177, label %if.else.i.if.end112.i_crit_edge [
    i16 8192, label %if.else.i.if.then103.i_crit_edge
    i16 24576, label %if.else.i.if.then103.i_crit_edge37
  ]

if.else.i.if.then103.i_crit_edge37:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103.i

if.else.i.if.then103.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103.i

if.else.i.if.end112.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112.i

if.then103.i:                                     ; preds = %if.else.i.if.then103.i_crit_edge, %if.else.i.if.then103.i_crit_edge37
  %179 = ptrtoint ptr %add.ptr.i285.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i285.i, align 8
  %181 = call i32 @llvm.bswap.i32(i32 %180) #14
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then103.i, %if.else.i.if.end112.i_crit_edge
  %.sink.i = phi i32 [ %181, %if.then103.i ], [ %174, %if.else.i.if.end112.i_crit_edge ]
  %i_generation111.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %182 = ptrtoint ptr %i_generation111.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %.sink.i, ptr %i_generation111.i, align 8
  %183 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %177, label %if.else128.i [
    i16 16384, label %if.end112.i.if.then124.i_crit_edge
    i16 -24576, label %if.end112.i.if.then124.i_crit_edge38
  ]

if.end112.i.if.then124.i_crit_edge38:             ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then124.i

if.end112.i.if.then124.i_crit_edge:               ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then124.i

if.then124.i:                                     ; preds = %if.end112.i.if.then124.i_crit_edge, %if.end112.i.if.then124.i_crit_edge38
  %184 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %i_flags.i, align 8
  %and127.i = and i32 %185, -2
  br label %if.end131.i

if.else128.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #16
  %186 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %i_flags.i, align 8
  %or.i = or i32 %187, 1
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.else128.i, %if.then124.i
  %storemerge.i = phi i32 [ %and127.i, %if.then124.i ], [ %or.i, %if.else128.i ]
  %i_first_direct_byte133.i = getelementptr i8, ptr %inode, i32 -244
  %188 = ptrtoint ptr %i_first_direct_byte133.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %i_first_direct_byte133.i, align 4
  %or136.i = or i32 %storemerge.i, 2
  %189 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or136.i, ptr %i_flags.i, align 8
  %190 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %177, label %if.end.i28.i352.i [
    i16 -24576, label %if.end131.i.if.then.i321.i_crit_edge
    i16 16384, label %if.end131.i.if.then.i321.i_crit_edge39
  ]

if.end131.i.if.then.i321.i_crit_edge39:           ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i321.i

if.end131.i.if.then.i321.i_crit_edge:             ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i321.i

if.then.i321.i:                                   ; preds = %if.end131.i.if.then.i321.i_crit_edge, %if.end131.i.if.then.i321.i_crit_edge39
  %191 = ptrtoint ptr %i_size70.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %i_size70.i, align 8
  %193 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %177, label %if.end.i.i332.i [
    i16 -24576, label %if.then.i321.i.real_space_diff.exit.i336.i_crit_edge
    i16 16384, label %if.then.i321.i.real_space_diff.exit.i336.i_crit_edge40
  ]

if.then.i321.i.real_space_diff.exit.i336.i_crit_edge40: ; preds = %if.then.i321.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i336.i

if.then.i321.i.real_space_diff.exit.i336.i_crit_edge: ; preds = %if.then.i321.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i336.i

if.end.i.i332.i:                                  ; preds = %if.then.i321.i
  call void @__sanitizer_cov_trace_pc() #16
  %194 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i.i323.i = getelementptr inbounds %struct.super_block, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %s_blocksize.i.i323.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %s_blocksize.i.i323.i, align 16
  %conv.i.i324.i = zext i32 %197 to i64
  %sub.i.i325.i = add i64 %192, -1
  %add.i.i326.i = add i64 %sub.i.i325.i, %conv.i.i324.i
  %s_blocksize_bits.i.i327.i = getelementptr inbounds %struct.super_block, ptr %195, i32 0, i32 2
  %198 = ptrtoint ptr %s_blocksize_bits.i.i327.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %s_blocksize_bits.i.i327.i, align 4
  %sh_prom.i.i328.i = zext i8 %199 to i64
  %shr.i.i329.i = ashr i64 %add.i.i326.i, %sh_prom.i.i328.i
  %shr.tr.i.i330.i = trunc i64 %shr.i.i329.i to i32
  %200 = shl i32 %shr.tr.i.i330.i, 2
  %conv12.i.i331.i = add i32 %200, 44
  br label %real_space_diff.exit.i336.i

real_space_diff.exit.i336.i:                      ; preds = %if.end.i.i332.i, %if.then.i321.i.real_space_diff.exit.i336.i_crit_edge, %if.then.i321.i.real_space_diff.exit.i336.i_crit_edge40
  %retval.0.i.i333.i = phi i32 [ %conv12.i.i331.i, %if.end.i.i332.i ], [ 44, %if.then.i321.i.real_space_diff.exit.i336.i_crit_edge ], [ 44, %if.then.i321.i.real_space_diff.exit.i336.i_crit_edge40 ]
  %conv7.i334.i = sext i32 %retval.0.i.i333.i to i64
  %add.i335.i = add i64 %192, %conv7.i334.i
  br label %to_real_used_space.exit354.i

if.end.i28.i352.i:                                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #16
  %201 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i18.i338.i = getelementptr inbounds %struct.super_block, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %s_blocksize.i18.i338.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %s_blocksize.i18.i338.i, align 16
  %conv.i19.i339.i = zext i32 %204 to i64
  %205 = ptrtoint ptr %i_size70.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %i_size70.i, align 8
  %sub.i21.i341.i = add nsw i64 %conv.i19.i339.i, -1
  %add.i22.i342.i = add i64 %sub.i21.i341.i, %206
  %s_blocksize_bits.i23.i343.i = getelementptr inbounds %struct.super_block, ptr %202, i32 0, i32 2
  %207 = ptrtoint ptr %s_blocksize_bits.i23.i343.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %s_blocksize_bits.i23.i343.i, align 4
  %sh_prom.i24.i344.i = zext i8 %208 to i64
  %shr.i25.i345.i = ashr i64 %add.i22.i342.i, %sh_prom.i24.i344.i
  %shr.tr.i26.i346.i = trunc i64 %shr.i25.i345.i to i32
  %209 = shl i32 %shr.tr.i26.i346.i, 2
  %conv12.i27.i347.i = add i32 %209, 44
  %conv9.i348.i = sext i32 %conv12.i27.i347.i to i64
  %shl.i350.i = shl nuw nsw i64 %conv90.i, 9
  %add11.i351.i = add nsw i64 %shl.i350.i, %conv9.i348.i
  br label %to_real_used_space.exit354.i

to_real_used_space.exit354.i:                     ; preds = %if.end.i28.i352.i, %real_space_diff.exit.i336.i
  %retval.0.i353.i = phi i64 [ %add.i335.i, %real_space_diff.exit.i336.i ], [ %add11.i351.i, %if.end.i28.i352.i ]
  call void @inode_set_bytes(ptr noundef %inode, i64 noundef %retval.0.i353.i) #14
  %sd_attrs.i = getelementptr inbounds %struct.stat_data, ptr %add.ptr.i292.i, i32 0, i32 1
  %210 = ptrtoint ptr %sd_attrs.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %sd_attrs.i, align 1
  %212 = call i16 @llvm.bswap.i16(i16 %211) #14
  %conv140.i = zext i16 %212 to i32
  %i_attrs.i = getelementptr i8, ptr %inode, i32 -240
  %213 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %conv140.i, ptr %i_attrs.i, align 8
  %214 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %215, i32 0, i32 33
  %216 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_mount_opt.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %217, i32 0, i32 11
  %218 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i.i = and i32 %219, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %to_real_used_space.exit354.i.if.end143.i_crit_edge, label %if.then.i358.i

to_real_used_space.exit354.i.if.end143.i_crit_edge: ; preds = %to_real_used_space.exit354.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

if.then.i358.i:                                   ; preds = %to_real_used_space.exit354.i
  call void @__sanitizer_cov_trace_pc() #16
  %220 = ptrtoint ptr %sd_attrs.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %221 = load i16, ptr %sd_attrs.i, align 1
  %222 = call i16 @llvm.bswap.i16(i16 %221) #14
  %conv.i356.i = zext i16 %222 to i32
  %i_flags4.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %223 = ptrtoint ptr %i_flags4.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %i_flags4.i.i, align 4
  %and5.i.i = and i32 %224, -16
  %and1.i357.i = lshr i32 %conv.i356.i, 3
  %and1.lobit.i.i = and i32 %and1.i357.i, 1
  %and5.sink.i.i = or i32 %and1.lobit.i.i, %and5.i.i
  %and7.i.i = lshr i32 %conv.i356.i, 1
  %225 = and i32 %and7.i.i, 8
  %and14.sink.i.i = or i32 %and5.sink.i.i, %225
  %226 = and i32 %and1.i357.i, 4
  %and24.sink.i.i = or i32 %and14.sink.i.i, %226
  %and27.i.i = lshr i32 %conv.i356.i, 6
  %227 = and i32 %and27.i.i, 2
  %and34.sink.i.i = or i32 %and24.sink.i.i, %227
  store i32 %and34.sink.i.i, ptr %i_flags4.i.i, align 4
  %228 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %i_flags.i, align 8
  %and46.i.i = and i32 %229, -9
  %and37.i.i = lshr i32 %conv.i356.i, 12
  %230 = and i32 %and37.i.i, 8
  %or42.sink.i.i = or i32 %and46.i.i, %230
  br label %if.end143.sink.split.i

if.end143.sink.split.i:                           ; preds = %if.then.i358.i, %to_real_used_space.exit.i
  %or42.sink.i.sink.i = phi i32 [ %or42.sink.i.i, %if.then.i358.i ], [ %and62.i, %to_real_used_space.exit.i ]
  %rdev.0.ph.i = phi i32 [ %174, %if.then.i358.i ], [ %105, %to_real_used_space.exit.i ]
  %231 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %or42.sink.i.sink.i, ptr %i_flags.i, align 8
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.end143.sink.split.i, %to_real_used_space.exit354.i.if.end143.i_crit_edge
  %rdev.0.i = phi i32 [ %174, %to_real_used_space.exit354.i.if.end143.i_crit_edge ], [ %rdev.0.ph.i, %if.end143.sink.split.i ]
  call void @pathrelse(ptr noundef nonnull %path_to_sd) #14
  %232 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %inode, align 8
  %234 = and i16 %233, -4096
  %235 = zext i16 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %234, label %if.else168.i [
    i16 -32768, label %if.then149.i
    i16 16384, label %if.then156.i
    i16 -24576, label %if.then164.i
  ]

if.then149.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_op.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %236 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @reiserfs_file_inode_operations, ptr %i_op.i, align 8
  %237 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @reiserfs_file_operations, ptr %237, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %239 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %240, i32 0, i32 9
  %241 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @reiserfs_address_space_operations, ptr %a_ops.i, align 4
  br label %init_inode.exit

if.then156.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_op157.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %242 = ptrtoint ptr %i_op157.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @reiserfs_dir_inode_operations, ptr %i_op157.i, align 8
  %243 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @reiserfs_dir_operations, ptr %243, align 8
  br label %init_inode.exit

if.then164.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_op165.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %245 = ptrtoint ptr %i_op165.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @reiserfs_symlink_inode_operations, ptr %i_op165.i, align 8
  call void @inode_nohighmem(ptr noundef %inode) #14
  %i_mapping166.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %246 = ptrtoint ptr %i_mapping166.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %i_mapping166.i, align 8
  %a_ops167.i = getelementptr inbounds %struct.address_space, ptr %247, i32 0, i32 9
  %248 = ptrtoint ptr %a_ops167.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @reiserfs_address_space_operations, ptr %a_ops167.i, align 4
  br label %init_inode.exit

if.else168.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_blocks169.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %249 = ptrtoint ptr %i_blocks169.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 0, ptr %i_blocks169.i, align 8
  %i_op170.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %250 = ptrtoint ptr %i_op170.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @reiserfs_special_inode_operations, ptr %i_op170.i, align 8
  %and1.i.i = and i32 %rdev.0.i, 255
  %shr2.i.i = lshr i32 %rdev.0.i, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  %251 = shl i32 %rdev.0.i, 12
  %shl.i.i = and i32 %251, -1048576
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %233, i32 noundef %or4.i.i) #14
  br label %init_inode.exit

init_inode.exit:                                  ; preds = %if.else168.i, %if.then164.i, %if.then156.i, %if.then149.i
  %252 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp5 = icmp eq i32 %254, 0
  br i1 %cmp5, label %land.lhs.true, label %init_inode.exit.if.end10_crit_edge

init_inode.exit.if.end10_crit_edge:               ; preds = %init_inode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %init_inode.exit
  %255 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %256, i32 0, i32 33
  %257 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %s_fs_info.i, align 16
  %s_is_unlinked_ok = getelementptr inbounds %struct.reiserfs_sb_info, ptr %258, i32 0, i32 26
  %259 = ptrtoint ptr %s_is_unlinked_ok to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %s_is_unlinked_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not = icmp eq i32 %260, 0
  br i1 %tobool.not, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %256, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.reiserfs_read_locked_inode, ptr noundef nonnull @.str.15, ptr noundef nonnull %key) #14
  %261 = call ptr @memset(ptr %add.ptr.i285.i, i32 0, i32 16)
  call void @make_bad_inode(ptr noundef %inode) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %init_inode.exit.if.end10_crit_edge
  %call11 = call i32 @reiserfs_check_path(ptr noundef nonnull %path_to_sd) #14
  %262 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %i_flags.i, align 8
  %264 = and i32 %263, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp14 = icmp eq i32 %264, 0
  br i1 %cmp14, label %if.then15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %265 = ptrtoint ptr %i_acl.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr null, ptr %i_acl.i, align 8
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %266 = ptrtoint ptr %i_default_acl.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %i_default_acl.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end10.cleanup_crit_edge, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path_to_sd) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @reiserfs_find_actor(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %opaque) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %2 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opaque, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %dirid = getelementptr inbounds %struct.reiserfs_iget_args, ptr %opaque, i32 0, i32 1
  %7 = ptrtoint ptr %dirid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dirid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp1 = icmp eq i32 %6, %8
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reiserfs_iget(ptr noundef %s, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.reiserfs_iget_args, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #14
  %0 = getelementptr inbounds %struct.reiserfs_iget_args, ptr %args, i32 0, i32 1
  %k_objectid = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %k_objectid, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %args, align 4
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %0, align 4
  %call = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #14
  %7 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %k_objectid, align 4
  %call4 = call ptr @iget5_locked(ptr noundef %s, i32 noundef %8, ptr noundef nonnull @reiserfs_find_actor, ptr noundef nonnull @reiserfs_init_locked_inode, ptr noundef nonnull %args) #14
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call) #14
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 24
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 8
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_read_locked_inode(ptr noundef nonnull %call4, ptr noundef nonnull %args)
  call void @unlock_new_inode(ptr noundef nonnull %call4) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call4, i32 -264
  %call10 = call i32 @comp_short_keys(ptr noundef %add.ptr.i, ptr noundef %key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end8.if.then13_crit_edge

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end8
  %call12 = call zeroext i1 @is_bad_inode(ptr noundef nonnull %call4) #14
  br i1 %call12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end8.if.then13_crit_edge
  call void @iput(ptr noundef nonnull %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then13 ], [ %call4, %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_short_keys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reiserfs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %fh_type, i32 %fh_len)
  %cmp = icmp sgt i32 %fh_type, %fh_len
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %fh_type)
  %cmp1.not = icmp eq i32 %fh_type, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %fh_len)
  %cmp2.not = icmp eq i32 %fh_len, 5
  %or.cond = and i1 %cmp2.not, %cmp1.not
  br i1 %or.cond, label %if.end7.thread, label %if.then3

if.end7.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fid, align 4
  %arrayidx829 = getelementptr [0 x i32], ptr %fid, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx829 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx829, align 4
  br label %cond.true

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.reiserfs_fh_to_dentry, ptr noundef nonnull @.str.17, i32 noundef %fh_type, i32 noundef %fh_len) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %fh_type.addr.0 = phi i32 [ %fh_type, %entry.if.end4_crit_edge ], [ %fh_len, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_len)
  %cmp5 = icmp slt i32 %fh_len, 2
  br i1 %cmp5, label %if.end4.return_crit_edge, label %if.end7

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end7:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fid, align 4
  %arrayidx8 = getelementptr [0 x i32], ptr %fid, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fh_type.addr.0)
  %cmp9 = icmp eq i32 %fh_type.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_type.addr.0)
  %cmp11 = icmp sgt i32 %fh_type.addr.0, 4
  %or.cond24 = or i1 %cmp9, %cmp11
  br i1 %or.cond24, label %if.end7.cond.true_crit_edge, label %if.end7.cond.end_crit_edge

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end7.cond.true_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true

cond.true:                                        ; preds = %if.end7.cond.true_crit_edge, %if.end7.thread
  %8 = phi i32 [ %3, %if.end7.thread ], [ %7, %if.end7.cond.true_crit_edge ]
  %9 = phi i32 [ %1, %if.end7.thread ], [ %5, %if.end7.cond.true_crit_edge ]
  %arrayidx12 = getelementptr [0 x i32], ptr %fid, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end7.cond.end_crit_edge
  %12 = phi i32 [ %8, %cond.true ], [ %7, %if.end7.cond.end_crit_edge ]
  %13 = phi i32 [ %9, %cond.true ], [ %5, %if.end7.cond.end_crit_edge ]
  %cond = phi i32 [ %11, %cond.true ], [ 0, %if.end7.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key.i) #14
  %14 = getelementptr inbounds i8, ptr %key.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %key.i, i32 0, i32 1
  %16 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %k_objectid.i, align 4
  %17 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %key.i, align 8
  tail call void @reiserfs_write_lock(ptr noundef %sb) #14
  %call.i = call ptr @reiserfs_iget(ptr noundef %sb, ptr noundef nonnull %key.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end.reiserfs_get_dentry.exit_crit_edge, label %land.lhs.true.i

cond.end.reiserfs_get_dentry.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_get_dentry.exit

land.lhs.true.i:                                  ; preds = %cond.end
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp.not.i = icmp eq i32 %cond, 0
  %or.cond.i = or i1 %cmp.not.i, %cmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_get_dentry.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 49
  %18 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cond)
  %cmp5.not.i = icmp eq i32 %19, %cond
  br i1 %cmp5.not.i, label %land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge, label %if.then.i

land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_get_dentry.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef nonnull %call.i) #14
  br label %reiserfs_get_dentry.exit

reiserfs_get_dentry.exit:                         ; preds = %if.then.i, %land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge, %land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge, %cond.end.reiserfs_get_dentry.exit_crit_edge
  %inode.0.i = phi ptr [ %call.i, %land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge ], [ null, %if.then.i ], [ %call.i, %land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge ], [ null, %cond.end.reiserfs_get_dentry.exit_crit_edge ]
  call void @reiserfs_write_unlock(ptr noundef %sb) #14
  %call6.i = call ptr @d_obtain_alias(ptr noundef %inode.0.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i) #14
  br label %return

return:                                           ; preds = %reiserfs_get_dentry.exit, %if.end4.return_crit_edge
  %retval.0 = phi ptr [ %call6.i, %reiserfs_get_dentry.exit ], [ null, %if.end4.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reiserfs_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smin.i32(i32 %fh_type, i32 %fh_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp1 = icmp slt i32 %0, 4
  br i1 %cmp1, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp4.not = icmp eq i32 %0, 4
  %arrayidx = getelementptr [0 x i32], ptr %fid, i32 0, i32 3
  %arrayidx5 = getelementptr [0 x i32], ptr %fid, i32 0, i32 2
  %cond.in = select i1 %cmp4.not, ptr %arrayidx5, ptr %arrayidx
  %1 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %cond = load i32, ptr %cond.in, align 4
  %arrayidx8 = getelementptr [0 x i32], ptr %fid, i32 0, i32 4
  %cond12.in = select i1 %cmp4.not, ptr %arrayidx, ptr %arrayidx8
  %2 = ptrtoint ptr %cond12.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond12 = load i32, ptr %cond12.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp13 = icmp eq i32 %0, 6
  br i1 %cmp13, label %cond.true14, label %if.end3.cond.end17_crit_edge

if.end3.cond.end17_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end17

cond.true14:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx15 = getelementptr [0 x i32], ptr %fid, i32 0, i32 5
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx15, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true14, %if.end3.cond.end17_crit_edge
  %cond18 = phi i32 [ %4, %cond.true14 ], [ 0, %if.end3.cond.end17_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key.i) #14
  %5 = getelementptr inbounds i8, ptr %key.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 24)
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %key.i, i32 0, i32 1
  %7 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %k_objectid.i, align 4
  %8 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond12, ptr %key.i, align 8
  tail call void @reiserfs_write_lock(ptr noundef %sb) #14
  %call.i = call ptr @reiserfs_iget(ptr noundef %sb, ptr noundef nonnull %key.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end17.reiserfs_get_dentry.exit_crit_edge, label %land.lhs.true.i

cond.end17.reiserfs_get_dentry.exit_crit_edge:    ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_get_dentry.exit

land.lhs.true.i:                                  ; preds = %cond.end17
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond18)
  %cmp.not.i = icmp eq i32 %cond18, 0
  %or.cond.i = or i1 %cmp.not.i, %cmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_get_dentry.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cond18)
  %cmp5.not.i = icmp eq i32 %10, %cond18
  br i1 %cmp5.not.i, label %land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge, label %if.then.i

land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_get_dentry.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef nonnull %call.i) #14
  br label %reiserfs_get_dentry.exit

reiserfs_get_dentry.exit:                         ; preds = %if.then.i, %land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge, %land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge, %cond.end17.reiserfs_get_dentry.exit_crit_edge
  %inode.0.i = phi ptr [ %call.i, %land.lhs.true.i.reiserfs_get_dentry.exit_crit_edge ], [ null, %if.then.i ], [ %call.i, %land.lhs.true4.i.reiserfs_get_dentry.exit_crit_edge ], [ null, %cond.end17.reiserfs_get_dentry.exit_crit_edge ]
  call void @reiserfs_write_unlock(ptr noundef %sb) #14
  %call6.i = call ptr @d_obtain_alias(ptr noundef %inode.0.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i) #14
  br label %return

return:                                           ; preds = %reiserfs_get_dentry.exit, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call6.i, %reiserfs_get_dentry.exit ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @reiserfs_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %data, ptr nocapture noundef %lenp, ptr noundef readonly %parent) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lenp, align 4
  %tobool.not = icmp eq ptr %parent, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %lenp, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %lenp, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx4 = getelementptr i32, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx4, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %11 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_generation, align 8
  %arrayidx5 = getelementptr i32, ptr %data, i32 2
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx5, align 4
  %14 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %lenp, align 4
  br i1 %tobool.not, label %if.end3.if.end20_crit_edge, label %if.then7

if.end3.if.end20_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then7:                                         ; preds = %if.end3
  %i_ino8 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino8, align 8
  %arrayidx9 = getelementptr i32, ptr %data, i32 3
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx9, align 4
  %add.ptr.i40 = getelementptr i8, ptr %parent, i32 -264
  %18 = ptrtoint ptr %add.ptr.i40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i40, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %arrayidx14 = getelementptr i32, ptr %data, i32 4
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx14, align 4
  %22 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp15 = icmp ugt i32 %1, 5
  br i1 %cmp15, label %if.then16, label %if.then7.if.end20_crit_edge

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then16:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %i_generation17 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %23 = ptrtoint ptr %i_generation17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_generation17, align 8
  %arrayidx18 = getelementptr i32, ptr %data, i32 5
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx18, align 4
  %26 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %lenp, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then7.if.end20_crit_edge, %if.end3.if.end20_crit_edge
  %27 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then2, %if.then
  %retval.0 = phi i32 [ 255, %if.then ], [ 255, %if.then2 ], [ %28, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #14
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %5 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %7 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i17 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i17 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  tail call void @reiserfs_write_lock(ptr noundef %2) #14
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call5 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %14, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %15 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %inode, i64 noundef %16) #14
  %call8 = call i32 @journal_end_sync(ptr noundef nonnull %th) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then2.if.end9_crit_edge
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %18) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_new_inode(ptr noundef %th, ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef %symname, i64 noundef %i_size, ptr noundef %dentry, ptr noundef %inode, ptr noundef %security) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.reiserfs_iget_args, align 4
  %path_to_key = alloca %struct.treepath, align 4
  %key = alloca %struct.cpu_key, align 8
  %ih = alloca %struct.item_head, align 4
  %sd = alloca %struct.stat_data, align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #14
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %args, align 4, !annotation !116
  %3 = getelementptr inbounds %struct.reiserfs_iget_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path_to_key) #14
  %5 = getelementptr inbounds i8, ptr %path_to_key, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 64)
  %7 = ptrtoint ptr %path_to_key to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %path_to_key, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #14
  %8 = call ptr @memset(ptr %key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ih) #14
  %9 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 1
  %10 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  %11 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 1
  %12 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %13 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %14 = call ptr @memset(ptr %ih, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %sd) #14
  %15 = call ptr @memset(ptr %sd, i32 255, i32 44)
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %16 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !98

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1938, 0\0A.popsection", ""() #14, !srcloc !117
  unreachable

do.end10:                                         ; preds = %entry
  %call = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #14
  %call11 = tail call i32 @dquot_alloc_inode(ptr noundef %inode) #14
  tail call void @reiserfs_write_lock_nested(ptr noundef %1, i32 noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.out_end_trans_crit_edge

do.end10.out_end_trans_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans

if.end14:                                         ; preds = %do.end10
  %18 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.end14.out_bad_inode_crit_edge, label %if.end17

if.end14.out_bad_inode_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bad_inode

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i32 @reiserfs_choose_packing(ptr noundef %dir) #14
  %21 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call18, ptr %ih, align 4
  %call19 = tail call i32 @reiserfs_get_unused_objectid(ptr noundef %th) #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %call19)
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool23.not = icmp eq i32 %call19, 0
  br i1 %tobool23.not, label %if.end17.out_bad_inode_crit_edge, label %if.end25

if.end17.out_bad_inode_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bad_inode

if.end25:                                         ; preds = %if.end17
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call19, ptr %i_ino, align 8
  %25 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call19, ptr %args, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_properties, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %13, align 2
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %10, align 4
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %10, i32 0, i32 1
  %32 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %k_uniqueness.i.i.i, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 256, ptr %13, align 2
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %10, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  %storemerge427 = phi i16 [ 11264, %if.else ], [ 8192, %if.then30 ]
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %storemerge427, ptr %12, align 2
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %11, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %37 = call ptr @memcpy(ptr %add.ptr.i, ptr %ih, i32 16)
  %38 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ih, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %3, align 4
  %i_sb36 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb36, align 4
  %call37 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %43) #14
  %44 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %args, align 4
  %call39 = call i32 @insert_inode_locked4(ptr noundef %inode, i32 noundef %45, ptr noundef nonnull @reiserfs_find_actor, ptr noundef nonnull %args) #14
  %46 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb36, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %47, i32 noundef %call37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool41.not = icmp eq i32 %call39, 0
  br i1 %tobool41.not, label %if.end43, label %if.end31.out_bad_inode_crit_edge

if.end31.out_bad_inode_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bad_inode

if.end43:                                         ; preds = %if.end31
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties45 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %s_properties45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_properties45, align 4
  %and46 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else53, label %if.then48

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %k_objectid52 = getelementptr i8, ptr %dir, i32 -260
  br label %if.end56

if.else53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_rs, align 4
  %s_inode_generation = getelementptr inbounds %struct.reiserfs_super_block, ptr %53, i32 0, i32 1
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then48
  %.sink428.in = phi ptr [ %s_inode_generation, %if.else53 ], [ %k_objectid52, %if.then48 ]
  %54 = ptrtoint ptr %.sink428.in to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %.sink428 = load i32, ptr %.sink428.in, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %.sink428)
  %56 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %56, align 8
  %58 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %58)
  %cmp = icmp eq i16 %58, 16384
  %cond = select i1 %cmp, i32 2, i32 1
  call void @set_nlink(ptr noundef %inode, i32 noundef %cond) #14
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #14
  %59 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  %60 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %61 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_size59 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %62 = ptrtoint ptr %i_size59 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %i_size, ptr %i_size59, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %63 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %i_blocks, align 8
  %i_bytes = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %64 = ptrtoint ptr %i_bytes to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %i_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %58)
  %cmp62 = icmp eq i16 %58, -24576
  %cond64 = select i1 %cmp62, i32 1, i32 -1
  %i_first_direct_byte = getelementptr i8, ptr %inode, i32 -244
  %65 = ptrtoint ptr %i_first_direct_byte to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond64, ptr %i_first_direct_byte, align 4
  %i_prealloc_list = getelementptr i8, ptr %inode, i32 -228
  %66 = ptrtoint ptr %i_prealloc_list to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %i_prealloc_list, ptr %i_prealloc_list, align 4
  %prev.i = getelementptr i8, ptr %inode, i32 -224
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %i_prealloc_list, ptr %prev.i, align 4
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %68 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %i_flags, align 8
  %i_prealloc_block = getelementptr i8, ptr %inode, i32 -236
  %69 = ptrtoint ptr %i_prealloc_block to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %i_prealloc_block, align 4
  %i_prealloc_count = getelementptr i8, ptr %inode, i32 -232
  %70 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %i_prealloc_count, align 8
  %i_trans_id = getelementptr i8, ptr %inode, i32 -216
  %71 = ptrtoint ptr %i_trans_id to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %i_trans_id, align 8
  %i_jl = getelementptr i8, ptr %inode, i32 -212
  %72 = ptrtoint ptr %i_jl to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %i_jl, align 4
  %i_attrs = getelementptr i8, ptr %dir, i32 -240
  %73 = ptrtoint ptr %i_attrs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_attrs, align 8
  %and73 = and i32 %74, 32989
  %i_attrs75 = getelementptr i8, ptr %inode, i32 -240
  %75 = ptrtoint ptr %i_attrs75 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and73, ptr %i_attrs75, align 8
  %76 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb36, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %81, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end56.sd_attrs_to_i_attrs.exit_crit_edge, label %if.then.i

if.end56.sd_attrs_to_i_attrs.exit_crit_edge:      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %sd_attrs_to_i_attrs.exit

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %i_flags4.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %82 = ptrtoint ptr %i_flags4.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_flags4.i, align 4
  %and5.i = and i32 %83, -16
  %and1.i = lshr i32 %74, 3
  %and1.lobit.i = and i32 %and1.i, 1
  %and7.i = lshr i32 %74, 1
  %84 = and i32 %and7.i, 8
  %and27.i = lshr i32 %74, 6
  %85 = and i32 %and27.i, 2
  %and5.sink.i = or i32 %84, %and1.lobit.i
  %and14.sink.i = or i32 %and5.sink.i, %85
  %and34.sink.i = or i32 %and14.sink.i, %and5.i
  store i32 %and34.sink.i, ptr %i_flags4.i, align 4
  %86 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_flags, align 8
  %and46.i = and i32 %87, -9
  %and37.i = lshr i32 %74, 12
  %88 = and i32 %and37.i, 8
  %or42.sink.i = or i32 %and46.i, %88
  store i32 %or42.sink.i, ptr %i_flags, align 8
  br label %sd_attrs_to_i_attrs.exit

sd_attrs_to_i_attrs.exit:                         ; preds = %if.then.i, %if.end56.sd_attrs_to_i_attrs.exit_crit_edge
  %i_xattr_sem.i = getelementptr i8, ptr %inode, i32 -112
  call void @__init_rwsem(ptr noundef %i_xattr_sem.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @reiserfs_init_xattr_rwsem.__key) #14
  %89 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ih, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %9, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %version1.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %95 = ptrtoint ptr %version1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %version1.i, align 8
  %96 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %91, ptr %key, align 8
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %97 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %94, ptr %k_objectid.i, align 4
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %98 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 0, ptr %k_offset.i.i, align 8
  %k_type.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %99 = ptrtoint ptr %k_type.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %k_type.i.i, align 8
  %key_length.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %100 = ptrtoint ptr %key_length.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 3, ptr %key_length.i, align 4
  %call83 = call i32 @search_by_key(ptr noundef %1, ptr noundef nonnull %key, ptr noundef nonnull %path_to_key, i32 noundef 1) #14
  %101 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call83, label %if.end91 [
    i32 -2, label %sd_attrs_to_i_attrs.exit.out_bad_inode_crit_edge
    i32 1, label %if.then90
  ]

sd_attrs_to_i_attrs.exit.out_bad_inode_crit_edge: ; preds = %sd_attrs_to_i_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bad_inode

if.then90:                                        ; preds = %sd_attrs_to_i_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @pathrelse(ptr noundef nonnull %path_to_key) #14
  br label %out_bad_inode

if.end91:                                         ; preds = %sd_attrs_to_i_attrs.exit
  %102 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties93 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %s_properties93 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_properties93, align 4
  %and94 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else106, label %if.then96

if.then96:                                        ; preds = %if.end91
  %106 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_sb36, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 53
  %108 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %110 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %111 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = call i32 @from_kuid(ptr noundef %109, [1 x i32] %111) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i)
  %tobool99.not = icmp ult i32 %call1.i, 65536
  br i1 %tobool99.not, label %lor.lhs.false, label %if.then96.if.then103_crit_edge

if.then96.if.then103_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103

lor.lhs.false:                                    ; preds = %if.then96
  %112 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_sb36, align 4
  %s_user_ns.i.i411 = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 53
  %114 = ptrtoint ptr %s_user_ns.i.i411 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_user_ns.i.i411, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %116 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.unpack.i412 = load i32, ptr %i_gid.i, align 8
  %117 = insertvalue [1 x i32] undef, i32 %.unpack.i412, 0
  %call1.i413 = call i32 @from_kgid(ptr noundef %115, [1 x i32] %117) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i413)
  %tobool102.not = icmp ult i32 %call1.i413, 65536
  br i1 %tobool102.not, label %if.end104, label %lor.lhs.false.if.then103_crit_edge

lor.lhs.false.if.then103_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103

if.then103:                                       ; preds = %lor.lhs.false.if.then103_crit_edge, %if.then96.if.then103_crit_edge
  call void @pathrelse(ptr noundef nonnull %path_to_key) #14
  br label %out_bad_inode

if.end104:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %i_size59 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %i_size59, align 8
  call fastcc void @inode2sd_v1(ptr noundef nonnull %sd, ptr noundef %inode, i64 noundef %119)
  br label %if.end108

if.else106:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %i_size59 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %i_size59, align 8
  call fastcc void @inode2sd(ptr noundef nonnull %sd, ptr noundef %inode, i64 noundef %121)
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %if.end104
  %122 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties110 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %123, i32 0, i32 15
  %124 = ptrtoint ptr %s_properties110 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %s_properties110, align 4
  %.fr = freeze i32 %125
  %and111 = and i32 %.fr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not.not, label %switch.early.test, label %if.end108.if.then123_crit_edge

if.end108.if.then123_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then123

switch.early.test:                                ; preds = %if.end108
  %126 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %58, label %if.else127 [
    i16 -24576, label %switch.early.test.if.then123_crit_edge
    i16 16384, label %switch.early.test.if.then123_crit_edge429
  ]

switch.early.test.if.then123_crit_edge429:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then123

switch.early.test.if.then123_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then123

if.then123:                                       ; preds = %switch.early.test.if.then123_crit_edge, %switch.early.test.if.then123_crit_edge429, %if.end108.if.then123_crit_edge
  %127 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %i_flags, align 8
  %and126 = and i32 %128, -2
  br label %if.end130

if.else127:                                       ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  %129 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_flags, align 8
  %or = or i32 %130, 1
  br label %if.end130

if.end130:                                        ; preds = %if.else127, %if.then123
  %storemerge = phi i32 [ %and126, %if.then123 ], [ %or, %if.else127 ]
  %131 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %storemerge, ptr %i_flags, align 8
  %132 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties132 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %133, i32 0, i32 15
  %134 = ptrtoint ptr %s_properties132 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %s_properties132, align 4
  %and138 = and i32 %storemerge, -3
  %and133 = shl i32 %135, 1
  %136 = and i32 %and133, 2
  %137 = or i32 %136, %and138
  %storemerge426 = xor i32 %137, 2
  store i32 %storemerge426, ptr %i_flags, align 8
  %new_packing_locality = getelementptr i8, ptr %dir, i32 -220
  %138 = ptrtoint ptr %new_packing_locality to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load = load i8, ptr %new_packing_locality, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool145.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool145.not, label %if.end130.if.end148_crit_edge, label %if.then146

if.end130.if.end148_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.then146:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  %displace_new_blocks = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 6
  %139 = ptrtoint ptr %displace_new_blocks to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load147 = load i8, ptr %displace_new_blocks, align 4
  %bf.set = or i8 %bf.load147, -128
  store i8 %bf.set, ptr %displace_new_blocks, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end130.if.end148_crit_edge
  %call149 = call i32 @reiserfs_insert_item(ptr noundef %th, ptr noundef nonnull %path_to_key, ptr noundef nonnull %key, ptr noundef nonnull %ih, ptr noundef %inode, ptr noundef nonnull %sd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end153, label %if.then151

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  %call152 = call i32 @reiserfs_check_path(ptr noundef nonnull %path_to_key) #14
  br label %out_bad_inode

if.end153:                                        ; preds = %if.end148
  %displace_new_blocks154 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 6
  %140 = ptrtoint ptr %displace_new_blocks154 to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load155 = load i8, ptr %displace_new_blocks154, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load155)
  %tobool158.not = icmp sgt i8 %bf.load155, -1
  br i1 %tobool158.not, label %if.then159, label %if.end153.if.end165_crit_edge

if.end153.if.end165_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then159:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  %141 = ptrtoint ptr %new_packing_locality to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load162 = load i8, ptr %new_packing_locality, align 4
  %bf.clear163 = and i8 %bf.load162, 127
  store i8 %bf.clear163, ptr %new_packing_locality, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then159, %if.end153.if.end165_crit_edge
  br i1 %cmp, label %if.then170, label %if.end165.if.end172_crit_edge

if.end165.if.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  %call171 = call fastcc i32 @reiserfs_new_directory(ptr noundef %th, ptr noundef %inode, ptr noundef nonnull %ih, ptr noundef nonnull %path_to_key, ptr noundef %dir)
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.end165.if.end172_crit_edge
  %retval1.0 = phi i32 [ %call171, %if.then170 ], [ 0, %if.end165.if.end172_crit_edge ]
  br i1 %cmp62, label %if.then177, label %if.end172.if.end187_crit_edge

if.end172.if.end187_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187

if.then177:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  %142 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties179 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %143, i32 0, i32 15
  %144 = ptrtoint ptr %s_properties179 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %s_properties179, align 4
  %and180 = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  %extract.t = trunc i64 %i_size to i32
  %146 = add i32 %extract.t, 7
  %extract.t391 = and i32 %146, -8
  %i_size.addr.0.off0 = select i1 %tobool181.not, i32 %extract.t391, i32 %extract.t
  %call186 = call fastcc i32 @reiserfs_new_symlink(ptr noundef %th, ptr noundef %inode, ptr noundef nonnull %ih, ptr noundef nonnull %path_to_key, ptr noundef %symname, i32 noundef %i_size.addr.0.off0)
  br label %if.end187

if.end187:                                        ; preds = %if.then177, %if.end172.if.end187_crit_edge
  %retval1.1 = phi i32 [ %call186, %if.then177 ], [ %retval1.0, %if.end172.if.end187_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool188.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool188.not, label %if.end192, label %if.then189

if.then189:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  %call190 = call i32 @reiserfs_check_path(ptr noundef nonnull %path_to_key) #14
  %call191 = call i32 @journal_end(ptr noundef %th) #14
  br label %out_inserted_sd

if.end192:                                        ; preds = %if.end187
  %i_flags193 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %147 = ptrtoint ptr %i_flags193 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %i_flags193, align 4
  %and194 = and i32 %148, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %lor.lhs.false196, label %if.end192.if.then200_crit_edge

if.end192.if.then200_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then200

lor.lhs.false196:                                 ; preds = %if.end192
  %149 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i, align 16
  %priv_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %150, i32 0, i32 31
  %151 = ptrtoint ptr %priv_root to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %priv_root, align 4
  %cmp198 = icmp eq ptr %152, %dentry
  br i1 %cmp198, label %lor.lhs.false196.if.then200_crit_edge, label %lor.lhs.false196.if.end206_crit_edge

lor.lhs.false196.if.end206_crit_edge:             ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

lor.lhs.false196.if.then200_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then200

if.then200:                                       ; preds = %lor.lhs.false196.if.then200_crit_edge, %if.end192.if.then200_crit_edge
  %i_flags201 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %153 = ptrtoint ptr %i_flags201 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %i_flags201, align 4
  %or202 = or i32 %154, 512
  store i32 %or202, ptr %i_flags201, align 4
  %i_opflags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %155 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %i_opflags, align 2
  %157 = and i16 %156, -9
  store i16 %157, ptr %i_opflags, align 2
  br label %if.end206

if.end206:                                        ; preds = %if.then200, %lor.lhs.false196.if.end206_crit_edge
  %158 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_sb36, align 4
  %s_fs_info.i424 = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 33
  %160 = ptrtoint ptr %s_fs_info.i424 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %s_fs_info.i424, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %161, i32 0, i32 11
  %162 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %s_mount_opt, align 4
  %and209 = and i32 %163, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.else220, label %if.then211

if.then211:                                       ; preds = %if.end206
  call void @reiserfs_write_unlock(ptr noundef %159) #14
  %call213 = call i32 @reiserfs_inherit_default_acl(ptr noundef %th, ptr noundef %dir, ptr noundef %dentry, ptr noundef %inode) #14
  %164 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %i_sb36, align 4
  call void @reiserfs_write_lock(ptr noundef %165) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool215.not = icmp eq i32 %call213, 0
  br i1 %tobool215.not, label %if.then211.if.end227_crit_edge, label %if.then216

if.then211.if.end227_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end227

if.then216:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #16
  %call217 = call i32 @reiserfs_check_path(ptr noundef nonnull %path_to_key) #14
  %call218 = call i32 @journal_end(ptr noundef %th) #14
  br label %out_inserted_sd

if.else220:                                       ; preds = %if.end206
  %s_flags = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 10
  %166 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %s_flags, align 4
  %and222 = and i32 %167, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.else220.if.end227_crit_edge, label %if.then224

if.else220.if.end227_crit_edge:                   ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end227

if.then224:                                       ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %159, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_new_inode, ptr noundef nonnull @.str.19) #14
  br label %if.end227

if.end227:                                        ; preds = %if.then224, %if.else220.if.end227_crit_edge, %if.then211.if.end227_crit_edge
  %168 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %security, align 4
  %tobool228.not = icmp eq ptr %169, null
  br i1 %tobool228.not, label %if.end227.if.end241_crit_edge, label %if.then229

if.end227.if.end241_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end241

if.then229:                                       ; preds = %if.end227
  %170 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i_sb36, align 4
  call void @reiserfs_write_unlock(ptr noundef %171) #14
  %call231 = call i32 @reiserfs_security_write(ptr noundef %th, ptr noundef %inode, ptr noundef %security) #14
  %172 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_sb36, align 4
  call void @reiserfs_write_lock(ptr noundef %173) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool233.not = icmp eq i32 %call231, 0
  br i1 %tobool233.not, label %if.then229.if.end241_crit_edge, label %if.then234

if.then229.if.end241_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end241

if.then234:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #16
  %call235 = call i32 @reiserfs_check_path(ptr noundef nonnull %path_to_key) #14
  %call236 = call i32 @journal_end(ptr noundef %th) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  %spec.select = select i1 %tobool237.not, i32 %call231, i32 %call236
  br label %out_inserted_sd

if.end241:                                        ; preds = %if.then229.if.end241_crit_edge, %if.end227.if.end241_crit_edge
  %174 = ptrtoint ptr %i_size59 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %i_size59, align 8
  call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %inode, i64 noundef %175) #14
  %call242 = call i32 @reiserfs_check_path(ptr noundef nonnull %path_to_key) #14
  br label %cleanup

out_bad_inode:                                    ; preds = %if.then151, %if.then103, %if.then90, %sd_attrs_to_i_attrs.exit.out_bad_inode_crit_edge, %if.end31.out_bad_inode_crit_edge, %if.end17.out_bad_inode_crit_edge, %if.end14.out_bad_inode_crit_edge
  %err.0 = phi i32 [ -17, %if.then90 ], [ -22, %if.then103 ], [ %call149, %if.then151 ], [ -1, %if.end14.out_bad_inode_crit_edge ], [ -12, %if.end17.out_bad_inode_crit_edge ], [ -22, %if.end31.out_bad_inode_crit_edge ], [ -5, %sd_attrs_to_i_attrs.exit.out_bad_inode_crit_edge ]
  %k_objectid246 = getelementptr i8, ptr %inode, i32 -260
  %176 = ptrtoint ptr %k_objectid246 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %k_objectid246, align 4
  %i_sb247 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %177 = ptrtoint ptr %i_sb247 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i_sb247, align 4
  %call248 = call i32 @reiserfs_write_unlock_nested(ptr noundef %178) #14
  call void @dquot_free_inode(ptr noundef %inode) #14
  %179 = ptrtoint ptr %i_sb247 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %i_sb247, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %180, i32 noundef %call248) #14
  br label %out_end_trans

out_end_trans:                                    ; preds = %out_bad_inode, %do.end10.out_end_trans_crit_edge
  %err.1 = phi i32 [ %call11, %do.end10.out_end_trans_crit_edge ], [ %err.0, %out_bad_inode ]
  %call250 = call i32 @journal_end(ptr noundef %th) #14
  %i_sb251 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %181 = ptrtoint ptr %i_sb251 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i_sb251, align 4
  %call252 = call i32 @reiserfs_write_unlock_nested(ptr noundef %182) #14
  call void @dquot_drop(ptr noundef %inode) #14
  %183 = ptrtoint ptr %i_sb251 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %i_sb251, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %184, i32 noundef %call252) #14
  %i_flags254 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %185 = ptrtoint ptr %i_flags254 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %i_flags254, align 4
  %or255 = or i32 %186, 32
  store i32 %or255, ptr %i_flags254, align 4
  call void @make_bad_inode(ptr noundef %inode) #14
  br label %out_inserted_sd

out_inserted_sd:                                  ; preds = %out_end_trans, %if.then234, %if.then216, %if.then189
  %err.2 = phi i32 [ %err.1, %out_end_trans ], [ %retval1.1, %if.then189 ], [ %call213, %if.then216 ], [ %spec.select, %if.then234 ]
  call void @clear_nlink(ptr noundef %inode) #14
  %187 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %t_trans_id, align 4
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %188 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %i_state, align 8
  %and257 = and i32 %189, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  br i1 %tobool258.not, label %out_inserted_sd.if.end260_crit_edge, label %if.then259

out_inserted_sd.if.end260_crit_edge:              ; preds = %out_inserted_sd
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end260

if.then259:                                       ; preds = %out_inserted_sd
  call void @__sanitizer_cov_trace_pc() #16
  call void @unlock_new_inode(ptr noundef %inode) #14
  br label %if.end260

if.end260:                                        ; preds = %if.then259, %out_inserted_sd.if.end260_crit_edge
  call void @iput(ptr noundef %inode) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end260, %if.end241
  %retval.0 = phi i32 [ %err.2, %if.end260 ], [ 0, %if.end241 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sd) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ih) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path_to_key) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_alloc_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_choose_packing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_get_unused_objectid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sd_attrs_to_i_attrs(i16 noundef zeroext %sd_attrs, ptr nocapture noundef %inode) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end48_crit_edge, label %if.then

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i16 %sd_attrs to i32
  %i_flags4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags4, align 4
  %and5 = and i32 %7, -16
  %and1 = lshr i32 %conv, 3
  %and1.lobit = and i32 %and1, 1
  %and5.sink = or i32 %and5, %and1.lobit
  %and7 = lshr i32 %conv, 1
  %8 = and i32 %and7, 8
  %and14.sink = or i32 %and5.sink, %8
  %and17 = lshr i32 %conv, 3
  %9 = and i32 %and17, 4
  %and24.sink = or i32 %and14.sink, %9
  %i_flags33 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %and27 = lshr i32 %conv, 6
  %10 = and i32 %and27, 2
  %and34.sink = or i32 %and24.sink, %10
  %11 = ptrtoint ptr %i_flags33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and34.sink, ptr %i_flags33, align 4
  %i_flags45 = getelementptr i8, ptr %inode, i32 -248
  %12 = ptrtoint ptr %i_flags45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags45, align 8
  %and46 = and i32 %13, -9
  %and37 = lshr i32 %conv, 12
  %14 = and i32 %and37, 8
  %or42.sink = or i32 %and46, %14
  store i32 %or42.sink, ptr %i_flags45, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then, %entry.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode2sd_v1(ptr nocapture noundef writeonly %sd, ptr noundef %inode, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %sd to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %sd, align 1
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
  %call1.i = tail call i32 @from_kuid(ptr noundef %7, [1 x i32] %9) #14
  %conv = trunc i32 %call1.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %sd_uid = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 2
  %11 = ptrtoint ptr %sd_uid to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %sd_uid, align 1
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i44 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns.i.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns.i.i44, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %16 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i45 = load i32, ptr %i_gid.i, align 8
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i45, 0
  %call1.i46 = tail call i32 @from_kgid(ptr noundef %15, [1 x i32] %17) #14
  %conv2 = trunc i32 %call1.i46 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %sd_gid = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 3
  %19 = ptrtoint ptr %sd_gid to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %sd_gid, align 1
  %20 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %conv3 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %sd_nlink = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 1
  %24 = ptrtoint ptr %sd_nlink to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %sd_nlink, align 1
  %conv4 = trunc i64 %size to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv4)
  %sd_size = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 4
  %26 = ptrtoint ptr %sd_size to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %sd_size, align 1
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %27 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_atime, align 8
  %conv5 = trunc i64 %28 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv5)
  %sd_atime = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 5
  %30 = ptrtoint ptr %sd_atime to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %sd_atime, align 1
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %31 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_ctime, align 8
  %conv7 = trunc i64 %32 to i32
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv7)
  %sd_ctime = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 7
  %34 = ptrtoint ptr %sd_ctime to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %sd_ctime, align 1
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %35 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_mtime, align 8
  %conv9 = trunc i64 %36 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %sd_mtime = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 6
  %38 = ptrtoint ptr %sd_mtime to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %sd_mtime, align 1
  %39 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %inode, align 8
  %41 = and i16 %40, -4096
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %41, label %if.else [
    i16 8192, label %entry.if.then_crit_edge
    i16 24576, label %entry.if.then_crit_edge48
  ]

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge48
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %43 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_rdev, align 8
  %and1.i = and i32 %44, 255
  %45 = lshr i32 %44, 12
  %shl.i = and i32 %45, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %44, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call i64 @inode_get_bytes(ptr noundef %inode) #14
  %46 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %inode, align 8
  %48 = and i16 %47, -4096
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %48, label %if.end.i.i [
    i16 -24576, label %if.else.real_space_diff.exit.i_crit_edge
    i16 16384, label %if.else.real_space_diff.exit.i_crit_edge49
  ]

if.else.real_space_diff.exit.i_crit_edge49:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i

if.else.real_space_diff.exit.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_blocksize.i.i, align 16
  %conv.i.i = zext i32 %53 to i64
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %54 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_size.i.i, align 8
  %sub.i.i = add nsw i64 %conv.i.i, -1
  %add.i.i = add i64 %sub.i.i, %55
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i8 %57 to i64
  %shr.i.i = ashr i64 %add.i.i, %sh_prom.i.i
  %shr.tr.i.i = trunc i64 %shr.i.i to i32
  %58 = shl i32 %shr.tr.i.i, 2
  %conv12.i.i = add i32 %58, 32
  br label %real_space_diff.exit.i

real_space_diff.exit.i:                           ; preds = %if.end.i.i, %if.else.real_space_diff.exit.i_crit_edge, %if.else.real_space_diff.exit.i_crit_edge49
  %retval.0.i.i = phi i32 [ %conv12.i.i, %if.end.i.i ], [ 32, %if.else.real_space_diff.exit.i_crit_edge ], [ 32, %if.else.real_space_diff.exit.i_crit_edge49 ]
  %59 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %48, label %real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge [
    i16 -24576, label %real_space_diff.exit.i.if.then.i_crit_edge
    i16 16384, label %real_space_diff.exit.i.if.then.i_crit_edge50
  ]

real_space_diff.exit.i.if.then.i_crit_edge50:     ; preds = %real_space_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

real_space_diff.exit.i.if.then.i_crit_edge:       ; preds = %real_space_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge: ; preds = %real_space_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fake_used_blocks.exit

if.then.i:                                        ; preds = %real_space_diff.exit.i.if.then.i_crit_edge, %real_space_diff.exit.i.if.then.i_crit_edge50
  %add.i = add i64 %call.i, 511
  br label %to_fake_used_blocks.exit

to_fake_used_blocks.exit:                         ; preds = %if.then.i, %real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge
  %bytes.0.i = phi i64 [ %add.i, %if.then.i ], [ %call.i, %real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge ]
  %conv.i = sext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bytes.0.i, i64 %conv.i)
  %cmp9.i = icmp slt i64 %bytes.0.i, %conv.i
  %sub.i = sub i64 %bytes.0.i, %conv.i
  %60 = lshr i64 %sub.i, 9
  %conv13.i = trunc i64 %60 to i32
  %retval.0.i = select i1 %cmp9.i, i32 0, i32 %conv13.i
  br label %if.end

if.end:                                           ; preds = %to_fake_used_blocks.exit, %if.then
  %retval.0.i.sink = phi i32 [ %retval.0.i, %to_fake_used_blocks.exit ], [ %or4.i, %if.then ]
  %61 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.sink)
  %u20 = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 8
  %62 = ptrtoint ptr %u20 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %u20, align 1
  %i_first_direct_byte = getelementptr i8, ptr %inode, i32 -244
  %63 = ptrtoint ptr %i_first_direct_byte to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_first_direct_byte, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %sd_first_direct_byte = getelementptr inbounds %struct.stat_data_v1, ptr %sd, i32 0, i32 9
  %66 = ptrtoint ptr %sd_first_direct_byte to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %sd_first_direct_byte, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode2sd(ptr nocapture noundef writeonly %sd, ptr noundef %inode, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %sd to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %sd, align 1
  %4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %sd_nlink = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 2
  %8 = ptrtoint ptr %sd_nlink to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %sd_nlink, align 1
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %13 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %14 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %12, [1 x i32] %14) #14
  %15 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  %sd_uid = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 4
  %16 = ptrtoint ptr %sd_uid to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %sd_uid, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %size)
  %sd_size = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 3
  %18 = ptrtoint ptr %sd_size to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %sd_size, align 1
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i43 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %s_user_ns.i.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_user_ns.i.i43, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %23 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i44 = load i32, ptr %i_gid.i, align 8
  %24 = insertvalue [1 x i32] undef, i32 %.unpack.i44, 0
  %call1.i45 = tail call i32 @from_kgid(ptr noundef %22, [1 x i32] %24) #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %call1.i45)
  %sd_gid = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 5
  %26 = ptrtoint ptr %sd_gid to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %sd_gid, align 1
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %27 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_mtime, align 8
  %conv = trunc i64 %28 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %sd_mtime = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 7
  %30 = ptrtoint ptr %sd_mtime to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %sd_mtime, align 1
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %31 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_atime, align 8
  %conv3 = trunc i64 %32 to i32
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv3)
  %sd_atime = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 6
  %34 = ptrtoint ptr %sd_atime to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %sd_atime, align 1
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %35 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ctime, align 8
  %conv5 = trunc i64 %36 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv5)
  %sd_ctime = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 8
  %38 = ptrtoint ptr %sd_ctime to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %sd_ctime, align 1
  %call.i = tail call i64 @inode_get_bytes(ptr noundef %inode) #14
  %39 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %inode, align 8
  %41 = and i16 %40, -4096
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %41, label %if.end.i.i [
    i16 -24576, label %entry.real_space_diff.exit.i_crit_edge
    i16 16384, label %entry.real_space_diff.exit.i_crit_edge48
  ]

entry.real_space_diff.exit.i_crit_edge48:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i

entry.real_space_diff.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %real_space_diff.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_blocksize.i.i, align 16
  %conv.i.i = zext i32 %46 to i64
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %47 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_size.i.i, align 8
  %sub.i.i = add nsw i64 %conv.i.i, -1
  %add.i.i = add i64 %sub.i.i, %48
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 2
  %49 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i8 %50 to i64
  %shr.i.i = ashr i64 %add.i.i, %sh_prom.i.i
  %shr.tr.i.i = trunc i64 %shr.i.i to i32
  %51 = shl i32 %shr.tr.i.i, 2
  %conv12.i.i = add i32 %51, 44
  br label %real_space_diff.exit.i

real_space_diff.exit.i:                           ; preds = %if.end.i.i, %entry.real_space_diff.exit.i_crit_edge, %entry.real_space_diff.exit.i_crit_edge48
  %retval.0.i.i = phi i32 [ %conv12.i.i, %if.end.i.i ], [ 44, %entry.real_space_diff.exit.i_crit_edge ], [ 44, %entry.real_space_diff.exit.i_crit_edge48 ]
  %52 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %41, label %real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge [
    i16 -24576, label %real_space_diff.exit.i.if.then.i_crit_edge
    i16 16384, label %real_space_diff.exit.i.if.then.i_crit_edge49
  ]

real_space_diff.exit.i.if.then.i_crit_edge49:     ; preds = %real_space_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

real_space_diff.exit.i.if.then.i_crit_edge:       ; preds = %real_space_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge: ; preds = %real_space_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fake_used_blocks.exit

if.then.i:                                        ; preds = %real_space_diff.exit.i.if.then.i_crit_edge, %real_space_diff.exit.i.if.then.i_crit_edge49
  %add.i = add i64 %call.i, 511
  br label %to_fake_used_blocks.exit

to_fake_used_blocks.exit:                         ; preds = %if.then.i, %real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge
  %bytes.0.i = phi i64 [ %add.i, %if.then.i ], [ %call.i, %real_space_diff.exit.i.to_fake_used_blocks.exit_crit_edge ]
  %conv.i = sext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bytes.0.i, i64 %conv.i)
  %cmp9.i = icmp slt i64 %bytes.0.i, %conv.i
  %sub.i = sub i64 %bytes.0.i, %conv.i
  %53 = lshr i64 %sub.i, 9
  %conv13.i = trunc i64 %53 to i32
  %retval.0.i = select i1 %cmp9.i, i32 0, i32 %conv13.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %sd_blocks = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 9
  %55 = ptrtoint ptr %sd_blocks to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %sd_blocks, align 1
  %56 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %inode, align 8
  %58 = and i16 %57, -4096
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %58, label %if.else [
    i16 8192, label %to_fake_used_blocks.exit.if.then_crit_edge
    i16 24576, label %to_fake_used_blocks.exit.if.then_crit_edge50
  ]

to_fake_used_blocks.exit.if.then_crit_edge50:     ; preds = %to_fake_used_blocks.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

to_fake_used_blocks.exit.if.then_crit_edge:       ; preds = %to_fake_used_blocks.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %to_fake_used_blocks.exit.if.then_crit_edge, %to_fake_used_blocks.exit.if.then_crit_edge50
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %60 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_rdev, align 8
  %and1.i = and i32 %61, 255
  %62 = lshr i32 %61, 12
  %shl.i = and i32 %62, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %61, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  br label %if.end

if.else:                                          ; preds = %to_fake_used_blocks.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %63 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_generation, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink47 = phi i32 [ %64, %if.else ], [ %or4.i, %if.then ]
  %65 = tail call i32 @llvm.bswap.i32(i32 %.sink47)
  %u16 = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 10
  %66 = ptrtoint ptr %u16 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %u16, align 1
  %i_attrs = getelementptr i8, ptr %inode, i32 -240
  %67 = ptrtoint ptr %i_attrs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_attrs, align 8
  %conv18 = trunc i32 %68 to i16
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %sd_attrs = getelementptr inbounds %struct.stat_data, ptr %sd, i32 0, i32 1
  %70 = ptrtoint ptr %sd_attrs to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %sd_attrs, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reiserfs_new_directory(ptr noundef %th, ptr noundef %inode, ptr noundef %ih, ptr noundef %path, ptr nocapture noundef readonly %dir) unnamed_addr #0 align 64 {
entry:
  %empty_dir = alloca [48 x i8], align 1
  %key = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %empty_dir) #14
  %2 = call ptr @memset(ptr %empty_dir, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #14
  %3 = getelementptr inbounds i8, ptr %key, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %3, align 8
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %5 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !98

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1809, 0\0A.popsection", ""() #14, !srcloc !118
  unreachable

do.end10:                                         ; preds = %entry
  %7 = ptrtoint ptr %ih to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %ih, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %k_objectid = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 1
  %10 = ptrtoint ptr %k_objectid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %k_objectid, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %version1.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %13 = ptrtoint ptr %version1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %version1.i, align 8
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %key, align 8
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %k_objectid.i, align 4
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %16 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %k_offset.i.i, align 8
  %k_type.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %17 = ptrtoint ptr %k_type.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %k_type.i.i, align 8
  %key_length.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %18 = ptrtoint ptr %key_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %key_length.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_properties, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %ih_version.i73 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %23 = ptrtoint ptr %ih_version.i73 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 0, ptr %ih_version.i73, align 1
  %u.i.i.i74 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  %24 = ptrtoint ptr %u.i.i.i74 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 16777216, ptr %u.i.i.i74, align 1
  %k_uniqueness.i.i.i75 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i74, i32 0, i32 1
  %25 = ptrtoint ptr %k_uniqueness.i.i.i75 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 -201261056, ptr %k_uniqueness.i.i.i75, align 1
  %ih_item_len.i76 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %ih_item_len.i76 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 8960, ptr %ih_item_len.i76, align 1
  %u.i = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 1
  %27 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 512, ptr %u.i, align 1
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -264
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 8
  %k_objectid24 = getelementptr i8, ptr %dir, i32 -260
  %30 = ptrtoint ptr %k_objectid24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %k_objectid24, align 4
  call void @make_empty_dir_item_v1(ptr noundef nonnull %empty_dir, i32 noundef %8, i32 noundef %11, i32 noundef %29, i32 noundef %31) #14
  br label %if.end37

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %ih_item_len.i76 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 12288, ptr %ih_item_len.i76, align 1
  %u.i77 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 1
  %33 = ptrtoint ptr %u.i77 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 512, ptr %u.i77, align 1
  %add.ptr.i78 = getelementptr i8, ptr %dir, i32 -264
  %34 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i78, align 8
  %k_objectid36 = getelementptr i8, ptr %dir, i32 -260
  %36 = ptrtoint ptr %k_objectid36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %k_objectid36, align 4
  call void @make_empty_dir_item(ptr noundef nonnull %empty_dir, i32 noundef %8, i32 noundef %11, i32 noundef %35, i32 noundef %37) #14
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then13
  %call38 = call i32 @search_by_key(ptr noundef %1, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 1) #14
  %38 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call38, label %if.end44 [
    i32 -2, label %if.then39
    i32 1, label %if.then42
  ]

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.reiserfs_new_directory, ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  call void @pathrelse(ptr noundef %path) #14
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.reiserfs_new_directory, ptr noundef nonnull @.str.30, ptr noundef %ih) #14
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = call i32 @reiserfs_insert_item(ptr noundef %th, ptr noundef %path, ptr noundef nonnull %key, ptr noundef %ih, ptr noundef %inode, ptr noundef nonnull %empty_dir) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then42, %if.then39
  %retval.0 = phi i32 [ -5, %if.then39 ], [ -17, %if.then42 ], [ %call45, %if.end44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %empty_dir) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reiserfs_new_symlink(ptr noundef %th, ptr noundef %inode, ptr noundef %ih, ptr noundef %path, ptr noundef %symname, i32 noundef %item_len) unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #14
  %2 = getelementptr inbounds i8, ptr %key, i32 16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %4 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !98

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1871, 0\0A.popsection", ""() #14, !srcloc !119
  unreachable

do.end10:                                         ; preds = %entry
  %6 = ptrtoint ptr %ih to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ih, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %k_objectid = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 1
  %9 = ptrtoint ptr %k_objectid to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %k_objectid, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %version1.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %12 = ptrtoint ptr %version1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %version1.i, align 8
  %13 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %key, align 8
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %14 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %k_objectid.i, align 4
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %15 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %k_offset.i.i, align 8
  %k_type.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %16 = ptrtoint ptr %k_type.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %k_type.i.i, align 8
  %key_length.i = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %17 = ptrtoint ptr %key_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %key_length.i, align 4
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %18 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 0, ptr %ih_version.i, align 1
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  %19 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 16777216, ptr %u.i.i.i, align 1
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -1, ptr %k_uniqueness.i.i.i, align 1
  %conv6.i = trunc i32 %item_len to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #14
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %22 = ptrtoint ptr %ih_item_len.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %ih_item_len.i, align 1
  %u.i = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 1
  %23 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 0, ptr %u.i, align 1
  %call = call i32 @search_by_key(ptr noundef %1, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 1) #14
  %24 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call, label %if.end17 [
    i32 -2, label %if.then12
    i32 1, label %if.then15
  ]

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.reiserfs_new_symlink, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.then15:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @pathrelse(ptr noundef %path) #14
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.reiserfs_new_symlink, ptr noundef nonnull @.str.30, ptr noundef %ih) #14
  br label %cleanup

if.end17:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = call i32 @reiserfs_insert_item(ptr noundef %th, ptr noundef %path, ptr noundef nonnull %key, ptr noundef %ih, ptr noundef %inode, ptr noundef %symname) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then12
  %retval.0 = phi i32 [ -5, %if.then12 ], [ -17, %if.then15 ], [ %call18, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_inherit_default_acl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_security_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_truncate_file(ptr noundef %inode, i32 noundef %update_timestamps) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %page = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #14
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %1 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_size, align 8
  %3 = trunc i64 %2 to i32
  %conv = and i32 %3, 4095
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #14
  %8 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %page, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #14
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bh, align 4
  tail call void @reiserfs_write_lock(ptr noundef %5) #14
  %10 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp = icmp sgt i64 %11, 0
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @grab_tail_page(ptr noundef %inode, ptr noundef nonnull %page, ptr noundef nonnull %bh)
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call, label %if.then7 [
    i32 0, label %if.then.if.end10_crit_edge
    i32 -2, label %if.then.if.end_crit_edge
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %14, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.reiserfs_truncate_file, ptr noundef nonnull @.str.21, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %page, align 4
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bh, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %call12 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %18, i32 noundef 37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.outthread-pre-split_crit_edge

if.end10.outthread-pre-split_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %outthread-pre-split

if.end15:                                         ; preds = %if.end10
  call void @reiserfs_update_inode_transaction(ptr noundef %inode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_timestamps)
  %tobool16.not = icmp eq i32 %update_timestamps, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  call void @add_save_link(ptr noundef nonnull %th, ptr noundef %inode, i32 noundef 1) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %page, align 4
  %call19 = call i32 @reiserfs_do_truncate(ptr noundef nonnull %th, ptr noundef %inode, ptr noundef %20, i32 noundef %update_timestamps) #14
  %call20 = call i32 @journal_end(ptr noundef nonnull %th) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.outthread-pre-split_crit_edge

if.end23.outthread-pre-split_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %outthread-pre-split

if.end26:                                         ; preds = %if.end23
  br i1 %tobool16.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  %call29 = call i32 @remove_save_link(ptr noundef %inode, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.outthread-pre-split_crit_edge

if.then28.outthread-pre-split_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %outthread-pre-split

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %tobool34.not = icmp eq ptr %20, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  %sub = add i32 %7, 4095
  %and36 = and i32 %sub, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then35.if.end46_crit_edge, label %if.then38

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then38:                                        ; preds = %if.then35
  %sub39 = add i32 %conv, %7
  %add.i = sub i32 %sub39, %and36
  call void @zero_user_segments(ptr noundef nonnull %20, i32 noundef %conv, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #14
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool41.not = icmp eq i32 %25, 0
  br i1 %tobool41.not, label %if.then38.if.end46_crit_edge, label %land.lhs.true

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

land.lhs.true:                                    ; preds = %if.then38
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp42.not = icmp eq i64 %27, 0
  br i1 %cmp42.not, label %land.lhs.true.if.end46_crit_edge, label %if.then44

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @mark_buffer_dirty(ptr noundef %22) #14
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true.if.end46_crit_edge, %if.then38.if.end46_crit_edge, %if.then35.if.end46_crit_edge
  call void @unlock_page(ptr noundef nonnull %20) #14
  %28 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %20 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.35) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !110
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@reiserfs_truncate_file, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !114

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

outthread-pre-split:                              ; preds = %if.then28.outthread-pre-split_crit_edge, %if.end23.outthread-pre-split_crit_edge, %if.end10.outthread-pre-split_crit_edge
  %error.0.ph = phi i32 [ %call19, %if.end23.outthread-pre-split_crit_edge ], [ %call29, %if.then28.outthread-pre-split_crit_edge ], [ %call12, %if.end10.outthread-pre-split_crit_edge ]
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %page, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.end18.out_crit_edge
  %37 = phi ptr [ %.pr, %outthread-pre-split ], [ %20, %if.end18.out_crit_edge ]
  %error.0 = phi i32 [ %error.0.ph, %outthread-pre-split ], [ %call20, %if.end18.out_crit_edge ]
  %tobool49.not = icmp eq ptr %37, null
  br i1 %tobool49.not, label %out.cleanup_crit_edge, label %if.then50

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then50:                                        ; preds = %out
  call void @unlock_page(ptr noundef nonnull %37) #14
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i86 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86)
  %tobool.not.i.i87 = icmp eq i32 %and.i.i86, 0
  br i1 %tobool.not.i.i87, label %if.end.i.i90, label %if.then.i.i89, !prof !102

if.then.i.i89:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i88 = add i32 %40, -1
  br label %_compound_head.exit.i95

if.end.i.i90:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %37 to i32
  br label %_compound_head.exit.i95

_compound_head.exit.i95:                          ; preds = %if.end.i.i90, %if.then.i.i89
  %retval.0.i.i91 = phi i32 [ %sub.i.i88, %if.then.i.i89 ], [ %41, %if.end.i.i90 ]
  %42 = inttoptr i32 %retval.0.i.i91 to ptr
  %_refcount.i.i.i.i.i92 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  %call.i.i.i.i.i.i.i93 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i92, i32 noundef 4) #14
  %43 = ptrtoint ptr %_refcount.i.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_refcount.i.i.i.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i.i94 = icmp eq i32 %44, 0
  br i1 %cmp.i.i.i.i94, label %if.then.i.i.i.i96, label %do.end5.i.i.i.i100, !prof !98

if.then.i.i.i.i96:                                ; preds = %_compound_head.exit.i95
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.35) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !110
  unreachable

do.end5.i.i.i.i100:                               ; preds = %_compound_head.exit.i95
  %call.i.i.i10.i.i.i.i97 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i92, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i92, i32 1, i32 3, i32 1) #14
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i92, ptr %_refcount.i.i.i.i.i92, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i92) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i.i.i98 = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i98)
  %cmp.i.i.i.i.i.i.i99 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i98, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@reiserfs_truncate_file, %if.then.i.i.i.i.i102)) #14
          to label %folio_put_testzero.exit.i.i103 [label %if.then.i.i.i.i.i102], !srcloc !114

if.then.i.i.i.i.i102:                             ; preds = %do.end5.i.i.i.i100
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i101 = zext i1 %cmp.i.i.i.i.i.i.i99 to i32
  call void @__page_ref_mod_and_test(ptr noundef %42, i32 noundef -1, i32 noundef %conv.i.i.i.i.i101) #14
  br label %folio_put_testzero.exit.i.i103

folio_put_testzero.exit.i.i103:                   ; preds = %if.then.i.i.i.i.i102, %do.end5.i.i.i.i100
  br i1 %cmp.i.i.i.i.i.i.i99, label %folio_put_testzero.exit.i.i103.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i103.cleanup_crit_edge

folio_put_testzero.exit.i.i103.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

folio_put_testzero.exit.i.i103.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i103.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %32, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %42, %folio_put_testzero.exit.i.i103.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %error.0, %folio_put_testzero.exit.i.i103.cleanup.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i103.cleanup_crit_edge, %out.cleanup_crit_edge, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %error.0, %folio_put_testzero.exit.i.i103.cleanup_crit_edge ], [ %error.0, %out.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %47) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @grab_tail_page(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %page_result, ptr nocapture noundef writeonly %bh_result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %6 = trunc i64 %1 to i32
  %conv2 = and i32 %6, 4095
  %sub3 = add i32 %5, 4095
  %and4 = and i32 %sub3, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i64 %1, 17592186044415
  %7 = lshr i64 %sub, 12
  %conv = trunc i64 %7 to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %9, i32 noundef %conv, i32 noundef 7, i32 noundef %11) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = urem i32 %conv2, %5
  %mul = sub nsw i32 %conv2, %12
  %conv8 = zext i32 %mul to i64
  %call10 = tail call i32 @__block_write_begin(ptr noundef nonnull %call.i.i, i64 noundef %conv8, i32 noundef %12, ptr noundef nonnull @reiserfs_get_block_create_0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body, label %if.end7.unlock_crit_edge

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

do.body:                                          ; preds = %if.end7
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !98

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit:                                 ; preds = %do.body
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call.i.i, align 4
  %17 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %do.body20, label %do.end26, !prof !98

do.body20:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2222, 0\0A.popsection", ""() #14, !srcloc !120
  unreachable

do.end26:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private, align 4
  %20 = inttoptr i32 %19 to ptr
  br label %do.body27

do.body27:                                        ; preds = %if.end31.do.body27_crit_edge, %do.end26
  %pos.0 = phi i32 [ 0, %do.end26 ], [ %add, %if.end31.do.body27_crit_edge ]
  %bh.0 = phi ptr [ %20, %do.end26 ], [ %22, %if.end31.do.body27_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %mul)
  %cmp28.not = icmp ult i32 %pos.0, %mul
  br i1 %cmp28.not, label %if.end31, label %do.body27.do.end35_crit_edge

do.body27.do.end35_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

if.end31:                                         ; preds = %do.body27
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %21 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_this_page, align 4
  %add = add i32 %pos.0, %5
  %cmp33.not = icmp eq ptr %22, %20
  br i1 %cmp33.not, label %if.end31.do.end35_crit_edge, label %if.end31.do.body27_crit_edge

if.end31.do.body27_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27

if.end31.do.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

do.end35:                                         ; preds = %if.end31.do.end35_crit_edge, %do.body27.do.end35_crit_edge
  %bh.1 = phi ptr [ %bh.0, %do.body27.do.end35_crit_edge ], [ %20, %if.end31.do.end35_crit_edge ]
  %23 = ptrtoint ptr %bh.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %bh.1, align 4
  %and1.i.i74 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i74)
  %tobool37.not = icmp eq i32 %and1.i.i74, 0
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %26, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.grab_tail_page, ptr noundef nonnull @.str.33, i64 noundef %28) #14
  br label %unlock

if.end40:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %bh_result to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bh.1, ptr %bh_result, align 4
  %30 = ptrtoint ptr %page_result to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %page_result, align 4
  br label %cleanup

unlock:                                           ; preds = %if.then38, %if.end7.unlock_crit_edge
  %error.1 = phi i32 [ %call10, %if.end7.unlock_crit_edge ], [ -5, %if.then38 ]
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #14
  %31 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %34, %if.end.i.i ]
  %35 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !110
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@grab_tail_page, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !114

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %35) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end40 ], [ -12, %if.end.cleanup_crit_edge ], [ %error.1, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %error.1, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_save_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_do_truncate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__reiserfs_write_begin(ptr noundef %page, i32 noundef %from, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %call = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %5) #14
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_wait_on_write_block(ptr noundef %7) #14
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock_nested(ptr noundef %9, i32 noundef %call) #14
  %tobool.not.i = icmp eq ptr %page, null
  br i1 %tobool.not.i, label %entry.fix_tail_page_for_writing.exit_crit_edge, label %land.lhs.true.i

entry.fix_tail_page_for_writing.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fix_tail_page_for_writing.exit

land.lhs.true.i:                                  ; preds = %entry
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i.i = icmp eq i32 %11, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !98

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit.i:                               ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  %14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge, label %do.body.i

PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge: ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fix_tail_page_for_writing.exit

do.body.i:                                        ; preds = %PagePrivate.exit.i
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i32.i = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i32.i, label %if.then.i33.i, label %PagePrivate.exit36.i, !prof !98

if.then.i33.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit36.i:                             ; preds = %do.body.i
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i, label %do.body8.i, label %do.end13.i, !prof !98

do.body8.i:                                       ; preds = %PagePrivate.exit36.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #14, !srcloc !109
  unreachable

do.end13.i:                                       ; preds = %PagePrivate.exit36.i
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private.i, align 4
  %22 = inttoptr i32 %21 to ptr
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.end19.i.do.body14.i_crit_edge, %do.end13.i
  %bh.0.i = phi ptr [ %22, %do.end13.i ], [ %24, %if.end19.i.do.body14.i_crit_edge ]
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_this_page.i, align 4
  %25 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %bh.0.i, align 4
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool16.not.i = icmp eq i32 %27, 0
  br i1 %tobool16.not.i, label %do.body14.i.if.end19.i_crit_edge, label %land.lhs.true17.i

do.body14.i.if.end19.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

land.lhs.true17.i:                                ; preds = %do.body14.i
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %28 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp.i = icmp eq i64 %29, 0
  br i1 %cmp.i, label %if.then18.i, label %land.lhs.true17.i.if.end19.i_crit_edge

land.lhs.true17.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then18.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_unmap_buffer(ptr noundef %bh.0.i) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %land.lhs.true17.i.if.end19.i_crit_edge, %do.body14.i.if.end19.i_crit_edge
  %cmp21.not.i = icmp eq ptr %24, %22
  br i1 %cmp21.not.i, label %if.end19.i.fix_tail_page_for_writing.exit_crit_edge, label %if.end19.i.do.body14.i_crit_edge

if.end19.i.do.body14.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i

if.end19.i.fix_tail_page_for_writing.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fix_tail_page_for_writing.exit

fix_tail_page_for_writing.exit:                   ; preds = %if.end19.i.fix_tail_page_for_writing.exit_crit_edge, %PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge, %entry.fix_tail_page_for_writing.exit_crit_edge
  %30 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 146
  %34 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i81 = icmp eq ptr %35, null
  br i1 %tobool.not.i81, label %fix_tail_page_for_writing.exit.if.end39_crit_edge, label %land.lhs.true.i83

fix_tail_page_for_writing.exit.if.end39_crit_edge: ; preds = %fix_tail_page_for_writing.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true.i83:                                ; preds = %fix_tail_page_for_writing.exit
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %cmp.i82 = icmp eq ptr %39, %37
  br i1 %cmp.i82, label %if.then, label %land.lhs.true2.critedge.i

land.lhs.true2.critedge.i:                        ; preds = %land.lhs.true.i83
  %cmp4.i = icmp eq ptr %39, null
  br i1 %cmp4.i, label %do.body.i84, label %land.lhs.true2.critedge.i.if.end39_crit_edge

land.lhs.true2.critedge.i.if.end39_crit_edge:     ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

do.body.i84:                                      ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable

if.then:                                          ; preds = %land.lhs.true.i83
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool6.not = icmp eq i32 %41, 0
  br i1 %tobool6.not, label %do.body11, label %do.body17, !prof !98

do.body11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2844, 0\0A.popsection", ""() #14, !srcloc !121
  unreachable

do.body17:                                        ; preds = %if.then
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %35, i32 0, i32 4
  %42 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not = icmp eq i32 %43, 0
  br i1 %tobool18.not, label %do.body28, label %do.end36, !prof !98

do.body28:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2845, 0\0A.popsection", ""() #14, !srcloc !122
  unreachable

do.end36:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %41, 1
  %44 = ptrtoint ptr %t_refcount to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc, ptr %t_refcount, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %land.lhs.true2.critedge.i.if.end39_crit_edge, %fix_tail_page_for_writing.exit.if.end39_crit_edge
  %old_ref.0 = phi i32 [ %41, %do.end36 ], [ 0, %fix_tail_page_for_writing.exit.if.end39_crit_edge ], [ 0, %land.lhs.true2.critedge.i.if.end39_crit_edge ]
  %conv = zext i32 %from to i64
  %call40 = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %conv, i32 noundef %len, ptr noundef nonnull @reiserfs_get_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.if.end64_crit_edge, label %land.lhs.true

if.end39.if.end64_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end39
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  %47 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i85 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i85 to ptr
  %task.i86 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i86, align 8
  %journal_info.i87 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 146
  %51 = ptrtoint ptr %journal_info.i87 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %journal_info.i87, align 4
  %tobool.not.i88 = icmp eq ptr %52, null
  br i1 %tobool.not.i88, label %land.lhs.true.if.end64_crit_edge, label %land.lhs.true.i90

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.lhs.true.i90:                                ; preds = %land.lhs.true
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %cmp.i89 = icmp eq ptr %54, %46
  br i1 %cmp.i89, label %if.then45, label %land.lhs.true2.critedge.i92

land.lhs.true2.critedge.i92:                      ; preds = %land.lhs.true.i90
  %cmp4.i91 = icmp eq ptr %54, null
  br i1 %cmp4.i91, label %do.body.i93, label %land.lhs.true2.critedge.i92.if.end64_crit_edge

land.lhs.true2.critedge.i92.if.end64_crit_edge:   ; preds = %land.lhs.true2.critedge.i92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

do.body.i93:                                      ; preds = %land.lhs.true2.critedge.i92
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable

if.then45:                                        ; preds = %land.lhs.true.i90
  %t_refcount50 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %t_refcount50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %t_refcount50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %old_ref.0)
  %cmp = icmp sgt i32 %56, %old_ref.0
  br i1 %cmp, label %if.then52, label %if.then45.if.end64_crit_edge

if.then45.if.end64_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then52:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_ref.0)
  %tobool53.not = icmp eq i32 %old_ref.0, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add nsw i32 %56, -1
  %57 = ptrtoint ptr %t_refcount50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dec, ptr %t_refcount50, align 4
  br label %if.end64

if.else:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_write_lock(ptr noundef %46) #14
  %call57 = tail call i32 @reiserfs_end_persistent_transaction(ptr noundef nonnull %52) #14
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  %spec.select = select i1 %tobool59.not, i32 %call40, i32 %call57
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then54, %if.then45.if.end64_crit_edge, %land.lhs.true2.critedge.i92.if.end64_crit_edge, %land.lhs.true.if.end64_crit_edge, %if.end39.if.end64_crit_edge
  %ret.2 = phi i32 [ 0, %if.end39.if.end64_crit_edge ], [ %call40, %if.then54 ], [ %spec.select, %if.else ], [ %call40, %if.then45.if.end64_crit_edge ], [ %call40, %land.lhs.true.if.end64_crit_edge ], [ %call40, %land.lhs.true2.critedge.i92.if.end64_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_wait_on_write_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_commit_write(ptr nocapture readnone %f, ptr noundef %page, i32 noundef %from, i32 noundef %to) local_unnamed_addr #0 align 64 {
entry:
  %myth = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %conv1 = zext i32 %to to i64
  %add = add nuw nsw i64 %shl, %conv1
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %7) #14
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_wait_on_write_block(ptr noundef %9) #14
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock_nested(ptr noundef %11, i32 noundef %call) #14
  %12 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %cmp.i = icmp eq ptr %21, %19
  br i1 %cmp.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.critedge.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true2.critedge.i:                        ; preds = %land.lhs.true.i
  %cmp4.i = icmp eq ptr %21, null
  br i1 %cmp4.i, label %do.body.i, label %land.lhs.true2.critedge.i.if.end_crit_edge

land.lhs.true2.critedge.i.if.end_crit_edge:       ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body.i:                                        ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable

if.end:                                           ; preds = %land.lhs.true2.critedge.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %th.0 = phi ptr [ %17, %land.lhs.true.i.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ null, %land.lhs.true2.critedge.i.if.end_crit_edge ]
  %call7 = tail call i32 @reiserfs_commit_page(ptr noundef %3, ptr noundef %page, i32 noundef %from, i32 noundef %to) #14
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %23)
  %cmp = icmp sgt i64 %add, %23
  br i1 %cmp, label %if.then9, label %if.end44

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %myth) #14
  %24 = call ptr @memset(ptr %myth, i32 255, i32 36)
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then9.lor.lhs.false_crit_edge, label %land.lhs.true

if.then9.lor.lhs.false_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then9
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %32, 2
  %conv15 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv15)
  %cmp16 = icmp sgt i64 %23, %conv15
  br i1 %cmp16, label %land.lhs.true.if.then30_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then9.lor.lhs.false_crit_edge
  %and21 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.end33_crit_edge, label %land.lhs.true23

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %s_blocksize26 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 3
  %33 = ptrtoint ptr %s_blocksize26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_blocksize26, align 16
  %conv27 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv27)
  %cmp28 = icmp sgt i64 %23, %conv27
  br i1 %cmp28, label %land.lhs.true23.if.then30_crit_edge, label %land.lhs.true23.if.end33_crit_edge

land.lhs.true23.if.end33_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true23.if.then30_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true23.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge
  %i_flags = getelementptr i8, ptr %3, i32 -248
  %35 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_flags, align 8
  %and32 = and i32 %36, -5
  store i32 %and32, ptr %i_flags, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true23.if.end33_crit_edge, %lor.lhs.false.if.end33_crit_edge
  %call35 = call i32 @journal_begin(ptr noundef nonnull %myth, ptr noundef %26, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %journal_error.thread

if.end38:                                         ; preds = %if.end33
  call void @reiserfs_update_inode_transaction(ptr noundef %3) #14
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add, ptr %i_size, align 8
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #14
  %38 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %myth, ptr noundef %3, i64 noundef %39) #14
  %call40 = call i32 @journal_end(ptr noundef nonnull %myth) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %myth) #14
  %tobool45.not111 = icmp eq ptr %th.0, null
  br i1 %tobool45.not111, label %if.end38.cleanup62_crit_edge, label %if.end38.cleanup62.sink.split_crit_edge

if.end38.cleanup62.sink.split_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup62.sink.split

if.end38.cleanup62_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup62

if.end44:                                         ; preds = %if.end
  %tobool45.not = icmp eq ptr %th.0, null
  br i1 %tobool45.not, label %if.end44.cleanup62_crit_edge, label %if.then48

if.end44.cleanup62_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup62

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #14
  br label %cleanup62.sink.split

journal_error.thread:                             ; preds = %if.end33
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %myth) #14
  %tobool55.not116 = icmp eq ptr %th.0, null
  br i1 %tobool55.not116, label %journal_error.thread.cleanup62_crit_edge, label %if.then58

journal_error.thread.cleanup62_crit_edge:         ; preds = %journal_error.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup62

if.then58:                                        ; preds = %journal_error.thread
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th.0, ptr noundef %3, i64 noundef %41) #14
  br label %cleanup62.sink.split

cleanup62.sink.split:                             ; preds = %if.then58, %if.then48, %if.end38.cleanup62.sink.split_crit_edge
  %call60 = call i32 @reiserfs_end_persistent_transaction(ptr noundef nonnull %th.0) #14
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup62.sink.split, %journal_error.thread.cleanup62_crit_edge, %if.end44.cleanup62_crit_edge, %if.end38.cleanup62_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44.cleanup62_crit_edge ], [ %call35, %journal_error.thread.cleanup62_crit_edge ], [ %call60, %cleanup62.sink.split ], [ %call40, %if.end38.cleanup62_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_commit_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %th87 = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup176_crit_edge

entry.cleanup176_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and = and i32 %3, -6145
  store i32 %and, ptr %attr, align 8
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

lor.lhs.false.i:                                  ; preds = %if.end
  %and2.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ia_uid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack17.i = load i32, ptr %ia_uid.i, align 8
  %5 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack18.i = load i32, ptr %i_uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack17.i, i32 %.unpack18.i)
  %cmp.i.i = icmp eq i32 %.unpack17.i, %.unpack18.i
  br i1 %cmp.i.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %and6.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %lor.rhs.i.if.end9_crit_edge, label %is_quota_modification.exit

lor.rhs.i.if.end9_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

is_quota_modification.exit:                       ; preds = %lor.rhs.i
  %ia_gid.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack.i = load i32, ptr %ia_gid.i, align 4
  %7 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack16.i = load i32, ptr %i_gid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack16.i)
  %cmp.i19.i.not = icmp eq i32 %.unpack.i, %.unpack16.i
  br i1 %cmp.i19.i.not, label %is_quota_modification.exit.if.end9_crit_edge, label %is_quota_modification.exit.if.then4_crit_edge

is_quota_modification.exit.if.then4_crit_edge:    ; preds = %is_quota_modification.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

is_quota_modification.exit.if.end9_crit_edge:     ; preds = %is_quota_modification.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then4:                                         ; preds = %is_quota_modification.exit.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %call5 = tail call i32 @dquot_initialize(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then4.cleanup176_crit_edge

if.then4.cleanup176_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %is_quota_modification.exit.if.end9_crit_edge, %lor.rhs.i.if.end9_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %9) #14
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr, align 8
  %and11 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end45_crit_edge, label %if.then13

if.end9.if.end45_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then13:                                        ; preds = %if.end9
  %i_flags = getelementptr i8, ptr %1, i32 -248
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 8
  %and15 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp = icmp eq i32 %and15, 0
  br i1 %cmp, label %land.lhs.true, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then13
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %14 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %15)
  %cmp17 = icmp sgt i64 %15, 2147483647
  br i1 %cmp17, label %if.then18, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %17) #14
  br label %cleanup176

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.then13.if.end20_crit_edge
  tail call void @inode_dio_wait(ptr noundef %1) #14
  %ia_size21 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %18 = ptrtoint ptr %ia_size21 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ia_size21, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp22 = icmp sgt i64 %19, %21
  br i1 %cmp22, label %if.then23, label %if.end20.if.end45_crit_edge

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then23:                                        ; preds = %if.end20
  %call25 = tail call i32 @generic_cont_expand_simple(ptr noundef %1, i64 noundef %19) #14
  %i_prealloc_count = getelementptr i8, ptr %1, i32 -232
  %22 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_prealloc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp27 = icmp sgt i32 %23, 0
  br i1 %cmp27, label %if.then28, label %if.then23.if.end38_crit_edge

if.then23.if.end38_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then28:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #14
  %24 = call ptr @memset(ptr %th, i32 255, i32 36)
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %call30 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %26, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.then28.if.end34_crit_edge

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_discard_prealloc(ptr noundef nonnull %th, ptr noundef %1) #14
  %call33 = call i32 @journal_end(ptr noundef nonnull %th) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then28.if.end34_crit_edge
  %err.0 = phi i32 [ %call30, %if.then28.if.end34_crit_edge ], [ %call33, %if.then32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool35.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool35.not, i32 %call25, i32 %err.0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #14
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.then23.if.end38_crit_edge
  %error.2 = phi i32 [ %spec.select, %if.end34 ], [ %call25, %if.then23.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool39.not = icmp eq i32 %error.2, 0
  br i1 %tobool39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %28) #14
  br label %cleanup176

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %attr, align 8
  %or = or i32 %30, 96
  store i32 %or, ptr %attr, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.end20.if.end45_crit_edge, %if.end9.if.end45_crit_edge
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %32) #14
  %33 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attr, align 8
  %and48 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end45.lor.lhs.false_crit_edge, label %land.lhs.true50

if.end45.lor.lhs.false_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true50:                                  ; preds = %if.end45
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %35 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack263 = load i32, ptr %ia_uid, align 8
  %36 = insertvalue [1 x i32] undef, i32 %.unpack263, 0
  %call51 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call51)
  %tobool53.not = icmp ult i32 %call51, 65536
  br i1 %tobool53.not, label %land.lhs.true50.lor.lhs.false_crit_edge, label %land.lhs.true50.land.lhs.true62_crit_edge

land.lhs.true50.land.lhs.true62_crit_edge:        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true62

land.lhs.true50.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true50.lor.lhs.false_crit_edge, %if.end45.lor.lhs.false_crit_edge
  %37 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %attr, align 8
  %and55 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.lhs.false.if.end70_crit_edge, label %land.lhs.true57

lor.lhs.false.if.end70_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.lhs.true57:                                  ; preds = %lor.lhs.false
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %39 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack262 = load i32, ptr %ia_gid, align 4
  %40 = insertvalue [1 x i32] undef, i32 %.unpack262, 0
  %call59 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call59)
  %tobool61.not = icmp ult i32 %call59, 65536
  br i1 %tobool61.not, label %land.lhs.true57.if.end70_crit_edge, label %land.lhs.true57.land.lhs.true62_crit_edge

land.lhs.true57.land.lhs.true62_crit_edge:        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true62

land.lhs.true57.if.end70_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.lhs.true62:                                  ; preds = %land.lhs.true57.land.lhs.true62_crit_edge, %land.lhs.true50.land.lhs.true62_crit_edge
  %i_flags64 = getelementptr i8, ptr %1, i32 -248
  %41 = ptrtoint ptr %i_flags64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_flags64, align 8
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp68 = icmp eq i32 %43, 0
  br i1 %cmp68, label %land.lhs.true62.cleanup176_crit_edge, label %land.lhs.true62.if.end70_crit_edge

land.lhs.true62.if.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.lhs.true62.cleanup176_crit_edge:             ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.end70:                                         ; preds = %land.lhs.true62.if.end70_crit_edge, %land.lhs.true57.if.end70_crit_edge, %lor.lhs.false.if.end70_crit_edge
  %and71 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.lor.lhs.false78_crit_edge, label %land.lhs.true73

if.end70.lor.lhs.false78_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false78

land.lhs.true73:                                  ; preds = %if.end70
  %ia_uid74 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %ia_uid74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack260 = load i32, ptr %ia_uid74, align 8
  %45 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack261 = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack260, i32 %.unpack261)
  %cmp.i = icmp eq i32 %.unpack260, %.unpack261
  br i1 %cmp.i, label %land.lhs.true73.lor.lhs.false78_crit_edge, label %land.lhs.true73.if.then86_crit_edge

land.lhs.true73.if.then86_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

land.lhs.true73.lor.lhs.false78_crit_edge:        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %land.lhs.true73.lor.lhs.false78_crit_edge, %if.end70.lor.lhs.false78_crit_edge
  %and79 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %lor.lhs.false78.if.end138_crit_edge, label %land.lhs.true81

lor.lhs.false78.if.end138_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

land.lhs.true81:                                  ; preds = %lor.lhs.false78
  %ia_gid82 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %i_gid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %ia_gid82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack = load i32, ptr %ia_gid82, align 4
  %47 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack259 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack259)
  %cmp.i266 = icmp eq i32 %.unpack, %.unpack259
  br i1 %cmp.i266, label %land.lhs.true81.if.end138_crit_edge, label %land.lhs.true81.if.then86_crit_edge

land.lhs.true81.if.then86_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

land.lhs.true81.if.end138_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

if.then86:                                        ; preds = %land.lhs.true81.if.then86_crit_edge, %land.lhs.true73.if.then86_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th87) #14
  %48 = call ptr @memset(ptr %th87, i32 255, i32 36)
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_mount_opt, align 4
  %call100 = call i32 @reiserfs_chown_xattrs(ptr noundef %1, ptr noundef %attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %cleanup.thread274

cleanup.thread274:                                ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th87) #14
  br label %cleanup176

if.end103:                                        ; preds = %if.then86
  %and90 = and i32 %54, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %add99 = select i1 %tobool91.not, i32 2, i32 182
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %56) #14
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  %call106 = call i32 @journal_begin(ptr noundef nonnull %th87, ptr noundef %58, i32 noundef %add99) #14
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool108.not = icmp eq i32 %call106, 0
  br i1 %tobool108.not, label %if.end110, label %if.end103.cleanup.thread_crit_edge

if.end103.cleanup.thread_crit_edge:               ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end110:                                        ; preds = %if.end103
  %call111 = call i32 @dquot_transfer(ptr noundef %1, ptr noundef %attr) #14
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool113.not = icmp eq i32 %call111, 0
  br i1 %tobool113.not, label %if.end117, label %if.then114

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  %call115 = call i32 @journal_end(ptr noundef nonnull %th87) #14
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %64) #14
  br label %cleanup.thread

if.end117:                                        ; preds = %if.end110
  %65 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %attr, align 8
  %and119 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end117.if.end124_crit_edge, label %if.then121

if.end117.if.end124_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  %i_uid122 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %ia_uid123 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %67 = ptrtoint ptr %ia_uid123 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ia_uid123, align 8
  %69 = ptrtoint ptr %i_uid122 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %i_uid122, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.end117.if.end124_crit_edge
  %70 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %attr, align 8
  %and126 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end124.if.end131_crit_edge, label %if.then128

if.end124.if.end131_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %i_gid129 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %ia_gid130 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %72 = ptrtoint ptr %ia_gid130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ia_gid130, align 4
  %74 = ptrtoint ptr %i_gid129 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %i_gid129, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end124.if.end131_crit_edge
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #14
  %call132 = call i32 @journal_end(ptr noundef nonnull %th87) #14
  %75 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %76) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool134.not = icmp eq i32 %call132, 0
  br i1 %tobool134.not, label %cleanup, label %if.end131.cleanup.thread_crit_edge

if.end131.cleanup.thread_crit_edge:               ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end131.cleanup.thread_crit_edge, %if.then114, %if.end103.cleanup.thread_crit_edge
  %error.4.ph = phi i32 [ %call132, %if.end131.cleanup.thread_crit_edge ], [ %call106, %if.end103.cleanup.thread_crit_edge ], [ %call111, %if.then114 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th87) #14
  br label %cleanup176

cleanup:                                          ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th87) #14
  br label %if.end138

if.end138:                                        ; preds = %cleanup, %land.lhs.true81.if.end138_crit_edge, %lor.lhs.false78.if.end138_crit_edge
  %77 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %attr, align 8
  %and140 = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end138.if.then159_crit_edge, label %land.lhs.true142

if.end138.if.then159_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then159

land.lhs.true142:                                 ; preds = %if.end138
  %ia_size143 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %79 = ptrtoint ptr %ia_size143 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ia_size143, align 8
  %call144 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %call144)
  %cmp145.not = icmp eq i64 %80, %call144
  br i1 %cmp145.not, label %land.lhs.true142.if.then159_crit_edge, label %if.then146

land.lhs.true142.if.then159_crit_edge:            ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then159

if.then146:                                       ; preds = %land.lhs.true142
  %81 = ptrtoint ptr %ia_size143 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ia_size143, align 8
  %call148 = call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then150, label %if.then146.cleanup176_crit_edge

if.then146.cleanup176_crit_edge:                  ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then150:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #16
  %tailpack = getelementptr i8, ptr %1, i32 -204
  call void @mutex_lock_nested(ptr noundef %tailpack, i32 noundef 0) #14
  %83 = ptrtoint ptr %ia_size143 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %ia_size143, align 8
  call void @truncate_setsize(ptr noundef %1, i64 noundef %84) #14
  %call153 = call i32 @reiserfs_truncate_file(ptr noundef %1, i32 noundef 1)
  call void @mutex_unlock(ptr noundef %tailpack) #14
  br label %if.then159

if.then159:                                       ; preds = %if.then150, %land.lhs.true142.if.then159_crit_edge, %if.end138.if.then159_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #14
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #14
  %85 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i270 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 33
  %87 = ptrtoint ptr %s_fs_info.i270 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i270, align 16
  %s_mount_opt165 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %s_mount_opt165 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_mount_opt165, align 4
  %and166 = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.then159.cleanup176_crit_edge, label %if.then168

if.then159.cleanup176_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then168:                                       ; preds = %if.then159
  %91 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %attr, align 8
  %and170 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.then168.cleanup176_crit_edge, label %if.then172

if.then168.cleanup176_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then172:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #16
  %call173 = call i32 @reiserfs_acl_chmod(ptr noundef %1) #14
  br label %cleanup176

cleanup176:                                       ; preds = %if.then172, %if.then168.cleanup176_crit_edge, %if.then159.cleanup176_crit_edge, %if.then146.cleanup176_crit_edge, %cleanup.thread, %cleanup.thread274, %land.lhs.true62.cleanup176_crit_edge, %if.then40, %if.then18, %if.then4.cleanup176_crit_edge, %entry.cleanup176_crit_edge
  %retval.1 = phi i32 [ %call1, %entry.cleanup176_crit_edge ], [ %call5, %if.then4.cleanup176_crit_edge ], [ %call100, %cleanup.thread274 ], [ -27, %if.then18 ], [ %error.2, %if.then40 ], [ %call173, %if.then172 ], [ 0, %if.then168.cleanup176_crit_edge ], [ 0, %if.then159.cleanup176_crit_edge ], [ -22, %land.lhs.true62.cleanup176_crit_edge ], [ %error.4.ph, %cleanup.thread ], [ %call148, %if.then146.cleanup176_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_cont_expand_simple(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_chown_xattrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !123
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #14
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !124
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !98

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !125
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !127
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !129
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_acl_chmod(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  %th.i.i = alloca %struct.reiserfs_transaction_handle, align 4
  %tmp_ih.i.i = alloca %struct.item_head, align 4
  %key.i.i = alloca %struct.cpu_key, align 8
  %path.i.i = alloca %struct.treepath, align 4
  %th.i = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void @reiserfs_wait_on_write_block(ptr noundef %5) #14
  %6 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapping, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size.i, align 8
  %12 = lshr i64 %11, 12
  %conv.i = trunc i64 %12 to i32
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageChecked.exit.i, !prof !98

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !130
  unreachable

PageChecked.exit.i:                               ; preds = %entry
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i) #14
  %17 = call ptr @memset(ptr %th.i, i32 255, i32 36)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize.i, align 16
  %div.i = udiv i32 4096, %21
  %t_trans_id.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.i, i32 0, i32 4
  %22 = ptrtoint ptr %t_trans_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %t_trans_id.i, align 4
  %23 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %PageChecked.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

PageChecked.exit.i.if.end.i_crit_edge:            ; preds = %PageChecked.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %PageChecked.exit.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #14
  tail call void @unlock_page(ptr noundef %page) #14
  br label %reiserfs_write_full_page.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %PageChecked.exit.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i341.i = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i341.i, label %if.then.i342.i, label %PagePrivate.exit.i, !prof !98

if.then.i342.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end.i
  %32 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %page, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool5.not.i = icmp eq i32 %34, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %PagePrivate.exit.i.do.body.i_crit_edge

PagePrivate.exit.i.do.body.i_crit_edge:           ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then6.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_blocksize.i, align 16
  tail call void @create_empty_buffers(ptr noundef %page, i32 noundef %36, i32 noundef 3) #14
  br label %do.body.i

do.body.i:                                        ; preds = %if.then6.i, %PagePrivate.exit.i.do.body.i_crit_edge
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i345.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i345.i, label %if.then.i346.i, label %PagePrivate.exit349.i, !prof !98

if.then.i346.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit349.i:                            ; preds = %do.body.i
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  %41 = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool10.not.i = icmp eq i32 %41, 0
  br i1 %tobool10.not.i, label %do.body15.i, label %do.end21.i, !prof !98

do.body15.i:                                      ; preds = %PagePrivate.exit349.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2556, 0\0A.popsection", ""() #14, !srcloc !131
  unreachable

do.end21.i:                                       ; preds = %PagePrivate.exit349.i
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %42 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %private.i, align 4
  %44 = inttoptr i32 %43 to ptr
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %46, %conv.i
  br i1 %cmp.not.i, label %do.end21.i.if.end33.i_crit_edge, label %if.then23.i

do.end21.i.if.end33.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then23.i:                                      ; preds = %do.end21.i
  %47 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_size.i, align 8
  %49 = trunc i64 %48 to i32
  %conv26.i = and i32 %49, 4095
  %add.i = add i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add.i)
  %cmp28.not.i = icmp uge i32 %46, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv26.i)
  %tobool30.not.i = icmp eq i32 %conv26.i, 0
  %or.cond.i = select i1 %cmp28.not.i, i1 true, i1 %tobool30.not.i
  br i1 %or.cond.i, label %if.then31.i, label %if.end32.i

if.then31.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unlock_page(ptr noundef %page) #14
  br label %reiserfs_write_full_page.exit

if.end32.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %conv26.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end32.i, %do.end21.i.if.end33.i_crit_edge
  %50 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 2
  %52 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv35.i = zext i8 %53 to i32
  %sub.i = sub nsw i32 12, %conv35.i
  %shl.i = shl i32 %51, %sub.i
  %call36.i = tail call fastcc i64 @i_size_read(ptr noundef %9) #14
  %sub37.i = add i64 %call36.i, -1
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 20
  %54 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %55 to i64
  %shr39.i = ashr i64 %sub37.i, %sh_prom.i
  %56 = getelementptr inbounds i8, ptr %path.i.i, i32 4
  %t_trans_id.i.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.i.i, i32 0, i32 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 -264
  %i_flags.i.i.i = getelementptr i8, ptr %9, i32 -248
  %k_objectid.i.i.i = getelementptr i8, ptr %9, i32 -260
  %version1.i.i.i.i = getelementptr inbounds %struct.cpu_key, ptr %key.i.i, i32 0, i32 1
  %k_objectid.i.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key.i.i, i32 0, i32 1
  %k_offset.i.i.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key.i.i, i32 0, i32 2
  %k_type.i.i.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %key.i.i, i32 0, i32 3
  %key_length.i.i.i.i = getelementptr inbounds %struct.cpu_key, ptr %key.i.i, i32 0, i32 2
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %path.i.i, i32 0, i32 2
  %pos_in_item12.i.i = getelementptr inbounds %struct.treepath, ptr %path.i.i, i32 0, i32 3
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  br label %do.body40.i

do.body40.i:                                      ; preds = %do.body40.backedge.i, %if.end33.i
  %block.0.i = phi i32 [ %shl.i, %if.end33.i ], [ %block.0.be.i, %do.body40.backedge.i ]
  %bh.0.i = phi ptr [ %44, %if.end33.i ], [ %bh.0.be.i, %do.body40.backedge.i ]
  %conv41.i = zext i32 %block.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr39.i, i64 %conv41.i)
  %cmp42.i = icmp ult i64 %shr39.i, %conv41.i
  br i1 %cmp42.i, label %if.then44.i, label %if.else.i

if.then44.i:                                      ; preds = %do.body40.i
  call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0.i) #14
  %57 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i350.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i350.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i350.i, 0
  br i1 %tobool.not.i.i, label %if.then.i351.i, label %if.then44.i.if.end61.i_crit_edge

if.then44.i.if.end61.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

if.then.i351.i:                                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #14
  br label %if.end61.i

if.else.i:                                        ; preds = %do.body40.i
  br i1 %tobool.not.i, label %lor.lhs.false46.i, label %if.else.i.land.lhs.true49.i_crit_edge

if.else.i.land.lhs.true49.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true49.i

lor.lhs.false46.i:                                ; preds = %if.else.i
  %59 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %bh.0.i, align 4
  %61 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool48.not.i = icmp eq i32 %61, 0
  br i1 %tobool48.not.i, label %if.end61.thread.i, label %lor.lhs.false46.i.land.lhs.true49.i_crit_edge

lor.lhs.false46.i.land.lhs.true49.i_crit_edge:    ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true49.i

land.lhs.true49.i:                                ; preds = %lor.lhs.false46.i.land.lhs.true49.i_crit_edge, %if.else.i.land.lhs.true49.i_crit_edge
  %62 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %bh.0.i, align 4
  %64 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool51.not.i = icmp eq i32 %64, 0
  br i1 %tobool51.not.i, label %land.lhs.true49.i.if.then55.i_crit_edge, label %lor.lhs.false52.i

land.lhs.true49.i.if.then55.i_crit_edge:          ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55.i

lor.lhs.false52.i:                                ; preds = %land.lhs.true49.i
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %65 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp53.i = icmp eq i64 %66, 0
  br i1 %cmp53.i, label %lor.lhs.false52.i.if.then55.i_crit_edge, label %lor.lhs.false52.i.if.end61.i_crit_edge

lor.lhs.false52.i.if.end61.i_crit_edge:           ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

lor.lhs.false52.i.if.then55.i_crit_edge:          ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55.i

if.then55.i:                                      ; preds = %lor.lhs.false52.i.if.then55.i_crit_edge, %land.lhs.true49.i.if.then55.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i.i) #14
  %67 = call ptr @memset(ptr %th.i.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp_ih.i.i) #14
  %68 = call ptr @memset(ptr %tmp_ih.i.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key.i.i) #14
  %69 = call ptr @memset(ptr %key.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path.i.i) #14
  %70 = call ptr @memset(ptr %56, i32 0, i32 64)
  %71 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %path.i.i, align 4
  %72 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i8 %75 to i64
  %shl.i.i = shl i64 %conv41.i, %sh_prom.i.i
  %add.i.i = add i64 %shl.i.i, 1
  %76 = ptrtoint ptr %t_trans_id.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %t_trans_id.i.i, align 4
  %77 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i437.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i437.i, label %if.then55.i.map_block_for_writepage.exit.i_crit_edge, label %if.end.i.i

if.then55.i.map_block_for_writepage.exit.i_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_block_for_writepage.exit.i

if.end.i.i:                                       ; preds = %if.then55.i
  %b_page.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 2
  %79 = ptrtoint ptr %b_page.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %b_page.i.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 44) #14
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %shr.i.i218.i.i = lshr i32 %82, 30
  %83 = zext i32 %shr.i.i218.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %shr.i.i218.i.i, label %if.end.i.i.if.then.i.i438.i_crit_edge [
    i32 2, label %if.end.i.i.if.else.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

if.end.i.i.if.else.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i.i

if.end.i.i.if.then.i.i438.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i438.i

is_highmem_idx.exit.i.i.i:                        ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %84 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp2.i.not.i.i.i = icmp eq i32 %84, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.if.then.i.i438.i_crit_edge

is_highmem_idx.exit.i.i.i.if.then.i.i438.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i438.i

is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i.i

if.then.i.i438.i:                                 ; preds = %is_highmem_idx.exit.i.i.i.if.then.i.i438.i_crit_edge, %if.end.i.i.if.then.i.i438.i_crit_edge
  %call5.i.i.i = call ptr @page_address(ptr noundef %80) #14
  br label %kmap.exit.i.i

if.else.i.i.i:                                    ; preds = %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, %if.end.i.i.if.else.i.i.i_crit_edge
  %call6.i.i.i = call ptr @kmap_high(ptr noundef %80) #14
  br label %kmap.exit.i.i

kmap.exit.i.i:                                    ; preds = %if.else.i.i.i, %if.then.i.i438.i
  %85 = trunc i64 %shl.i.i to i32
  %idx.ext.i.i = and i32 %85, 4095
  %b_bdev.i.i238.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 6
  %b_blocknr.i.i239.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %b_size.i.i241.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 4
  br label %start_over.i.i

start_over.i.i:                                   ; preds = %start_over.i.i.backedge, %kmap.exit.i.i
  %bytes_copied.0.i.i = phi i32 [ 0, %kmap.exit.i.i ], [ %bytes_copied.4265278.i.i, %start_over.i.i.backedge ]
  %86 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_lock(ptr noundef %87) #14
  %88 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_flags.i.i.i, align 8
  %and.i.i439.i = and i32 %89, 1
  %90 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i.i.i, align 8
  %92 = call i32 @llvm.bswap.i32(i32 %91) #14
  %93 = ptrtoint ptr %k_objectid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %k_objectid.i.i.i, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #14
  %96 = ptrtoint ptr %version1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and.i.i439.i, ptr %version1.i.i.i.i, align 8
  %97 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %92, ptr %key.i.i, align 8
  %98 = ptrtoint ptr %k_objectid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %k_objectid.i.i.i.i, align 4
  %99 = ptrtoint ptr %k_offset.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %add.i.i, ptr %k_offset.i.i.i.i.i, align 8
  %100 = ptrtoint ptr %k_type.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 15, ptr %k_type.i.i.i.i.i, align 8
  %101 = ptrtoint ptr %key_length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %key_length.i.i.i.i, align 4
  %102 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb.i, align 4
  %call6302.i.i = call i32 @search_for_position_by_key(ptr noundef %103, ptr noundef nonnull %key.i.i, ptr noundef nonnull %path.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6302.i.i)
  %cmp.not303.i.i = icmp eq i32 %call6302.i.i, 1
  br i1 %cmp.not303.i.i, label %start_over.i.i.if.end9.i.i_crit_edge, label %out.thread.i.i

start_over.i.i.if.end9.i.i_crit_edge:             ; preds = %start_over.i.i
  br label %if.end9.i.i

out.thread.i.i:                                   ; preds = %start_over.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @pathrelse(ptr noundef nonnull %path.i.i) #14
  br label %if.end104.i.i

if.end9.i.i:                                      ; preds = %cleanup.i.i.if.end9.i.i_crit_edge, %start_over.i.i.if.end9.i.i_crit_edge
  %tobool98.not307.i.i = phi i1 [ false, %cleanup.i.i.if.end9.i.i_crit_edge ], [ true, %start_over.i.i.if.end9.i.i_crit_edge ]
  %bytes_copied.1304.i.i = phi i32 [ %bytes_copied.2.i.i, %cleanup.i.i.if.end9.i.i_crit_edge ], [ %bytes_copied.0.i.i, %start_over.i.i.if.end9.i.i_crit_edge ]
  %104 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %path.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %105
  %106 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i.i, align 4
  %pe_position.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %105, i32 1
  %108 = ptrtoint ptr %pe_position.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pe_position.i.i.i, align 4
  %b_data.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %107, i32 0, i32 5
  %110 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %111, i32 24
  %arrayidx.i.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i, i32 %109
  %ih_item_location.i.i.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %ih_item_location.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %ih_item_location.i.i.i.i.i, align 1
  %114 = ptrtoint ptr %pos_in_item12.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pos_in_item12.i.i, align 4
  %ih_version.i.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 4
  %116 = ptrtoint ptr %ih_version.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %ih_version.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %cmp.i.i.i.i.i.i = icmp eq i16 %117, 0
  %u.i.i.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i.i, label %indirect_item_found.exit.i.i, label %indirect_item_found.exit.thread.i.i

indirect_item_found.exit.i.i:                     ; preds = %if.end9.i.i
  %k_uniqueness.i.i.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %k_uniqueness.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %k_uniqueness.i.i.i.i.i.i, align 1
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %119, label %indirect_item_found.exit.i.i.if.else94.i.i_crit_edge [
    i32 -16777217, label %indirect_item_found.exit.i.i.if.then15.i.i_crit_edge
    i32 -1, label %indirect_item_found.exit.i.i.if.then30.i.i_crit_edge
  ]

indirect_item_found.exit.i.i.if.then30.i.i_crit_edge: ; preds = %indirect_item_found.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30.i.i

indirect_item_found.exit.i.i.if.then15.i.i_crit_edge: ; preds = %indirect_item_found.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i.i

indirect_item_found.exit.i.i.if.else94.i.i_crit_edge: ; preds = %indirect_item_found.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else94.i.i

indirect_item_found.exit.thread.i.i:              ; preds = %if.end9.i.i
  %121 = ptrtoint ptr %u.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %u.i.i.i.i.i.i, align 1
  %123 = trunc i64 %122 to i8
  %trunc.i = and i8 %123, -16
  %124 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %trunc.i, label %indirect_item_found.exit.thread.i.i.if.else94.i.i_crit_edge [
    i8 16, label %indirect_item_found.exit.thread.i.i.if.then15.i.i_crit_edge
    i8 32, label %indirect_item_found.exit.thread.i.i.if.then30.i.i_crit_edge
  ]

indirect_item_found.exit.thread.i.i.if.then30.i.i_crit_edge: ; preds = %indirect_item_found.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30.i.i

indirect_item_found.exit.thread.i.i.if.then15.i.i_crit_edge: ; preds = %indirect_item_found.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i.i

indirect_item_found.exit.thread.i.i.if.else94.i.i_crit_edge: ; preds = %indirect_item_found.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else94.i.i

if.then15.i.i:                                    ; preds = %indirect_item_found.exit.thread.i.i.if.then15.i.i_crit_edge, %indirect_item_found.exit.i.i.if.then15.i.i_crit_edge
  %125 = call i16 @llvm.bswap.i16(i16 %113) #14
  %conv.i.i.i.le.i.i = zext i16 %125 to i32
  %add.ptr.i.i.i222.le.i.i = getelementptr i8, ptr %111, i32 %conv.i.i.i.le.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_copied.1304.i.i)
  %cmp16.i.i = icmp sgt i32 %bytes_copied.1304.i.i, 0
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.then15.i.i.if.end20.i.i_crit_edge

if.then15.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %127, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.map_block_for_writepage, ptr noundef nonnull @.str.37, i32 noundef %bytes_copied.1304.i.i) #14
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.then15.i.i.if.end20.i.i_crit_edge
  %add.ptr21.i.i = getelementptr i32, ptr %add.ptr.i.i.i222.le.i.i, i32 %115
  %128 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %add.ptr21.i.i, align 1
  %130 = call i32 @llvm.bswap.i32(i32 %129) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool23.not.i.i = icmp eq i32 %129, 0
  br i1 %tobool23.not.i.i, label %out.i.i, label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end20.i.i
  %131 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_sb.i, align 4
  %133 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %bh.0.i, align 4
  %135 = and i32 %134, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i.i.i.i.i = icmp eq i32 %135, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end25.i.i.set_block_dev_mapped.exit.i.i_crit_edge

if.end25.i.i.set_block_dev_mapped.exit.i.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_block_dev_mapped.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh.0.i) #14
  br label %set_block_dev_mapped.exit.i.i

set_block_dev_mapped.exit.i.i:                    ; preds = %if.then.i.i.i.i.i, %if.end25.i.i.set_block_dev_mapped.exit.i.i_crit_edge
  %conv.i.i.i = zext i32 %130 to i64
  %s_bdev.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 26
  %136 = ptrtoint ptr %s_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_bdev.i.i.i.i, align 4
  %138 = ptrtoint ptr %b_bdev.i.i238.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %b_bdev.i.i238.i.i, align 8
  %139 = ptrtoint ptr %b_blocknr.i.i239.i.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %conv.i.i.i, ptr %b_blocknr.i.i239.i.i, align 8
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 3
  %140 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %142 = ptrtoint ptr %b_size.i.i241.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %b_size.i.i241.i.i, align 8
  call void @pathrelse(ptr noundef nonnull %path.i.i) #14
  br i1 %tobool98.not307.i.i, label %set_block_dev_mapped.exit.i.i.if.end104.thread352.i.i_crit_edge, label %set_block_dev_mapped.exit.i.i.if.then99.i.i_crit_edge

set_block_dev_mapped.exit.i.i.if.then99.i.i_crit_edge: ; preds = %set_block_dev_mapped.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99.i.i

set_block_dev_mapped.exit.i.i.if.end104.thread352.i.i_crit_edge: ; preds = %set_block_dev_mapped.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104.thread352.i.i

if.then30.i.i:                                    ; preds = %indirect_item_found.exit.thread.i.i.if.then30.i.i_crit_edge, %indirect_item_found.exit.i.i.if.then30.i.i_crit_edge
  %143 = ptrtoint ptr %b_page.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %b_page.i.i, align 8
  %call32.i.i = call ptr @page_address(ptr noundef %144) #14
  %add.ptr33.i.i = getelementptr i8, ptr %call32.i.i, i32 %idx.ext.i.i
  %ih_item_len.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %ih_item_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %ih_item_len.i.i, align 1
  %147 = call i16 @llvm.bswap.i16(i16 %146) #14
  %conv34.i.i = zext i16 %147 to i32
  %sub35.i.i = sub i32 %conv34.i.i, %115
  %148 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %149, i32 0, i32 33
  %150 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_generation_counter.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %151, i32 0, i32 14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter.i.i, i32 noundef 4) #14
  %152 = ptrtoint ptr %s_generation_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %s_generation_counter.i.i, align 4
  call void @copy_item_head(ptr noundef nonnull %tmp_ih.i.i, ptr noundef %arrayidx.i.i.i.i) #14
  br i1 %tobool98.not307.i.i, label %if.then40.i.i, label %if.then30.i.i.if.end59.i.i_crit_edge

if.then30.i.i.if.end59.i.i_crit_edge:             ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i

if.then40.i.i:                                    ; preds = %if.then30.i.i
  %154 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i_sb.i, align 4
  %call42.i.i = call i32 @journal_begin(ptr noundef nonnull %th.i.i, ptr noundef %155, i32 noundef 18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end45.i.i, label %if.end104.thread.i.i

if.end104.thread.i.i:                             ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @pathrelse(ptr noundef nonnull %path.i.i) #14
  %156 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %157) #14
  br label %if.end119.i.i

if.end45.i.i:                                     ; preds = %if.then40.i.i
  call void @reiserfs_update_inode_transaction(ptr noundef %9) #14
  %158 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_sb.i, align 4
  %160 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i440.i = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i.i440.i to ptr
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %161, align 16384
  %164 = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.i.not.i.i.i = icmp eq i32 %164, 0
  br i1 %tobool.i.not.i.i.i, label %if.end45.i.i.reiserfs_cond_resched.exit.i.i_crit_edge, label %if.then.i224.i.i

if.end45.i.i.reiserfs_cond_resched.exit.i.i_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit.i.i

if.then.i224.i.i:                                 ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i.i.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %159) #14
  call void @schedule() #14
  call void @reiserfs_write_lock_nested(ptr noundef %159, i32 noundef %call1.i.i.i) #14
  br label %reiserfs_cond_resched.exit.i.i

reiserfs_cond_resched.exit.i.i:                   ; preds = %if.then.i224.i.i, %if.end45.i.i.reiserfs_cond_resched.exit.i.i_crit_edge
  %165 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i225.i.i = getelementptr inbounds %struct.super_block, ptr %166, i32 0, i32 33
  %167 = ptrtoint ptr %s_fs_info.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %s_fs_info.i225.i.i, align 16
  %s_generation_counter49.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %168, i32 0, i32 14
  %call.i.i213.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter49.i.i, i32 noundef 4) #14
  %169 = ptrtoint ptr %s_generation_counter49.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %s_generation_counter49.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %170)
  %cmp51.not.i.i = icmp eq i32 %153, %170
  br i1 %cmp51.not.i.i, label %reiserfs_cond_resched.exit.i.i.if.end59.i.i_crit_edge, label %land.lhs.true.i.i

reiserfs_cond_resched.exit.i.i.if.end59.i.i_crit_edge: ; preds = %reiserfs_cond_resched.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i

land.lhs.true.i.i:                                ; preds = %reiserfs_cond_resched.exit.i.i
  %call54.i.i = call i32 @comp_items(ptr noundef nonnull %tmp_ih.i.i, ptr noundef nonnull %path.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool55.not.i.i, label %land.lhs.true.i.i.if.end59.i.i_crit_edge, label %if.then56.i.i

land.lhs.true.i.i.if.end59.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i

if.then56.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %171 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %172, ptr noundef %107) #14
  br label %cleanup.i.i

if.end59.i.i:                                     ; preds = %land.lhs.true.i.i.if.end59.i.i_crit_edge, %reiserfs_cond_resched.exit.i.i.if.end59.i.i_crit_edge, %if.then30.i.i.if.end59.i.i_crit_edge
  %173 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i_sb.i, align 4
  %call61.i.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %174, ptr noundef %107, i32 noundef 1) #14
  %175 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i_sb.i, align 4
  %177 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i226.i.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i226.i.i to ptr
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %178, align 16384
  %181 = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool.i.not.i227.i.i = icmp eq i32 %181, 0
  br i1 %tobool.i.not.i227.i.i, label %if.end59.i.i.reiserfs_cond_resched.exit230.i.i_crit_edge, label %if.then.i229.i.i

if.end59.i.i.reiserfs_cond_resched.exit230.i.i_crit_edge: ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit230.i.i

if.then.i229.i.i:                                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i228.i.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %176) #14
  call void @schedule() #14
  call void @reiserfs_write_lock_nested(ptr noundef %176, i32 noundef %call1.i228.i.i) #14
  br label %reiserfs_cond_resched.exit230.i.i

reiserfs_cond_resched.exit230.i.i:                ; preds = %if.then.i229.i.i, %if.end59.i.i.reiserfs_cond_resched.exit230.i.i_crit_edge
  %182 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i231.i.i = getelementptr inbounds %struct.super_block, ptr %183, i32 0, i32 33
  %184 = ptrtoint ptr %s_fs_info.i231.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_fs_info.i231.i.i, align 16
  %s_generation_counter66.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %185, i32 0, i32 14
  %call.i.i214.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter66.i.i, i32 noundef 4) #14
  %186 = ptrtoint ptr %s_generation_counter66.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %s_generation_counter66.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %187)
  %cmp68.not.i.i = icmp eq i32 %153, %187
  br i1 %cmp68.not.i.i, label %reiserfs_cond_resched.exit230.i.i.if.end76.i.i_crit_edge, label %land.lhs.true71.i.i

reiserfs_cond_resched.exit230.i.i.if.end76.i.i_crit_edge: ; preds = %reiserfs_cond_resched.exit230.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76.i.i

land.lhs.true71.i.i:                              ; preds = %reiserfs_cond_resched.exit230.i.i
  %call72.i.i = call i32 @comp_items(ptr noundef nonnull %tmp_ih.i.i, ptr noundef nonnull %path.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %tobool73.not.i.i = icmp eq i32 %call72.i.i, 0
  br i1 %tobool73.not.i.i, label %land.lhs.true71.i.i.if.end76.i.i_crit_edge, label %if.then74.i.i

land.lhs.true71.i.i.if.end76.i.i_crit_edge:       ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76.i.i

if.then74.i.i:                                    ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %188 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %189, ptr noundef %107) #14
  br label %cleanup.i.i

if.end76.i.i:                                     ; preds = %land.lhs.true71.i.i.if.end76.i.i_crit_edge, %reiserfs_cond_resched.exit230.i.i.if.end76.i.i_crit_edge
  %190 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %192 = ptrtoint ptr %ih_item_location.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %192, i32 2)
  %193 = load i16, ptr %ih_item_location.i.i.i.i.i, align 1
  %194 = call i16 @llvm.bswap.i16(i16 %193) #14
  %conv.i232.i.i = zext i16 %194 to i32
  %add.ptr.i233.i.i = getelementptr i8, ptr %191, i32 %conv.i232.i.i
  %add.ptr78.i.i = getelementptr i8, ptr %add.ptr.i233.i.i, i32 %115
  %add.ptr79.i.i = getelementptr i8, ptr %add.ptr33.i.i, i32 %bytes_copied.1304.i.i
  %195 = call ptr @memcpy(ptr %add.ptr78.i.i, ptr %add.ptr79.i.i, i32 %sub35.i.i)
  %call80.i.i = call i32 @journal_mark_dirty(ptr noundef nonnull %th.i.i, ptr noundef %107) #14
  %add81.i.i = add i32 %sub35.i.i, %bytes_copied.1304.i.i
  %196 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %i_sb.i, align 4
  %198 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %bh.0.i, align 4
  %200 = and i32 %199, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i.i.i235.i.i = icmp eq i32 %200, 0
  br i1 %tobool.not.i.i.i235.i.i, label %if.then.i.i.i236.i.i, label %if.end76.i.i.set_block_dev_mapped.exit242.i.i_crit_edge

if.end76.i.i.set_block_dev_mapped.exit242.i.i_crit_edge: ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_block_dev_mapped.exit242.i.i

if.then.i.i.i236.i.i:                             ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 4, ptr noundef %bh.0.i) #14
  br label %set_block_dev_mapped.exit242.i.i

set_block_dev_mapped.exit242.i.i:                 ; preds = %if.then.i.i.i236.i.i, %if.end76.i.i.set_block_dev_mapped.exit242.i.i_crit_edge
  %s_bdev.i.i237.i.i = getelementptr inbounds %struct.super_block, ptr %197, i32 0, i32 26
  %201 = ptrtoint ptr %s_bdev.i.i237.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %s_bdev.i.i237.i.i, align 4
  %203 = ptrtoint ptr %b_bdev.i.i238.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %202, ptr %b_bdev.i.i238.i.i, align 8
  %204 = ptrtoint ptr %b_blocknr.i.i239.i.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 0, ptr %b_blocknr.i.i239.i.i, align 8
  %s_blocksize.i.i240.i.i = getelementptr inbounds %struct.super_block, ptr %197, i32 0, i32 3
  %205 = ptrtoint ptr %s_blocksize.i.i240.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %s_blocksize.i.i240.i.i, align 16
  %207 = ptrtoint ptr %b_size.i.i241.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %b_size.i.i241.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.i.i, i32 %206)
  %cmp82.i.i = icmp ult i32 %add81.i.i, %206
  br i1 %cmp82.i.i, label %land.lhs.true84.i.i, label %set_block_dev_mapped.exit242.i.i.if.then99.sink.split.i.i_crit_edge

set_block_dev_mapped.exit242.i.i.if.then99.sink.split.i.i_crit_edge: ; preds = %set_block_dev_mapped.exit242.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99.sink.split.i.i

land.lhs.true84.i.i:                              ; preds = %set_block_dev_mapped.exit242.i.i
  %conv85.i.i = sext i32 %add81.i.i to i64
  %add86.i.i = add i64 %add.i.i, %conv85.i.i
  %208 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add86.i.i, i64 %209)
  %cmp87.i.i = icmp slt i64 %add86.i.i, %209
  br i1 %cmp87.i.i, label %if.then89.i.i, label %land.lhs.true84.i.i.if.then99.sink.split.i.i_crit_edge

land.lhs.true84.i.i.if.then99.sink.split.i.i_crit_edge: ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99.sink.split.i.i

if.then89.i.i:                                    ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %210 = ptrtoint ptr %k_offset.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %k_offset.i.i.i.i.i, align 8
  %conv91.i.i = sext i32 %sub35.i.i to i64
  %add92.i.i = add i64 %211, %conv91.i.i
  store i64 %add92.i.i, ptr %k_offset.i.i.i.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then89.i.i, %if.then74.i.i, %if.then56.i.i
  %bytes_copied.2.i.i = phi i32 [ %bytes_copied.1304.i.i, %if.then74.i.i ], [ %add81.i.i, %if.then89.i.i ], [ %bytes_copied.1304.i.i, %if.then56.i.i ]
  %212 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %i_sb.i, align 4
  %call6.i.i = call i32 @search_for_position_by_key(ptr noundef %213, ptr noundef nonnull %key.i.i, ptr noundef nonnull %path.i.i) #14
  %cmp.not.i.i = icmp eq i32 %call6.i.i, 1
  br i1 %cmp.not.i.i, label %cleanup.i.i.if.end9.i.i_crit_edge, label %cleanup.i.i.if.then99.sink.split.i.i_crit_edge

cleanup.i.i.if.then99.sink.split.i.i_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99.sink.split.i.i

cleanup.i.i.if.end9.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i.i

if.else94.i.i:                                    ; preds = %indirect_item_found.exit.thread.i.i.if.else94.i.i_crit_edge, %indirect_item_found.exit.i.i.if.else94.i.i_crit_edge
  %214 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i_sb.i, align 4
  %216 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %i_ino.i.i, align 8
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %215, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.map_block_for_writepage, ptr noundef nonnull @.str.39, i32 noundef %217) #14
  call void @pathrelse(ptr noundef nonnull %path.i.i) #14
  br i1 %tobool98.not307.i.i, label %if.else94.i.i.if.end104.thread352.i.i_crit_edge, label %if.else94.i.i.if.then99.i.i_crit_edge

if.else94.i.i.if.then99.i.i_crit_edge:            ; preds = %if.else94.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99.i.i

if.else94.i.i.if.end104.thread352.i.i_crit_edge:  ; preds = %if.else94.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104.thread352.i.i

out.i.i:                                          ; preds = %if.end20.i.i
  call void @pathrelse(ptr noundef nonnull %path.i.i) #14
  br i1 %tobool98.not307.i.i, label %out.i.i.if.end104.i.i_crit_edge, label %out.i.i.if.then99.i.i_crit_edge

out.i.i.if.then99.i.i_crit_edge:                  ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99.i.i

out.i.i.if.end104.i.i_crit_edge:                  ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104.i.i

if.then99.sink.split.i.i:                         ; preds = %cleanup.i.i.if.then99.sink.split.i.i_crit_edge, %land.lhs.true84.i.i.if.then99.sink.split.i.i_crit_edge, %set_block_dev_mapped.exit242.i.i.if.then99.sink.split.i.i_crit_edge
  %bytes_copied.4274.ph.i.i = phi i32 [ %add81.i.i, %set_block_dev_mapped.exit242.i.i.if.then99.sink.split.i.i_crit_edge ], [ %add81.i.i, %land.lhs.true84.i.i.if.then99.sink.split.i.i_crit_edge ], [ %bytes_copied.2.i.i, %cleanup.i.i.if.then99.sink.split.i.i_crit_edge ]
  %tobool106.not273.ph.i.i = phi i1 [ true, %set_block_dev_mapped.exit242.i.i.if.then99.sink.split.i.i_crit_edge ], [ true, %land.lhs.true84.i.i.if.then99.sink.split.i.i_crit_edge ], [ false, %cleanup.i.i.if.then99.sink.split.i.i_crit_edge ]
  %retval2.2272.ph.i.i = phi i32 [ 0, %set_block_dev_mapped.exit242.i.i.if.then99.sink.split.i.i_crit_edge ], [ 0, %land.lhs.true84.i.i.if.then99.sink.split.i.i_crit_edge ], [ %call6.i.i, %cleanup.i.i.if.then99.sink.split.i.i_crit_edge ]
  call void @pathrelse(ptr noundef nonnull %path.i.i) #14
  br label %if.then99.i.i

if.then99.i.i:                                    ; preds = %if.then99.sink.split.i.i, %out.i.i.if.then99.i.i_crit_edge, %if.else94.i.i.if.then99.i.i_crit_edge, %set_block_dev_mapped.exit.i.i.if.then99.i.i_crit_edge
  %bytes_copied.4274.i.i = phi i32 [ %bytes_copied.1304.i.i, %out.i.i.if.then99.i.i_crit_edge ], [ %bytes_copied.1304.i.i, %if.else94.i.i.if.then99.i.i_crit_edge ], [ %bytes_copied.1304.i.i, %set_block_dev_mapped.exit.i.i.if.then99.i.i_crit_edge ], [ %bytes_copied.4274.ph.i.i, %if.then99.sink.split.i.i ]
  %tobool106.not273.i.i = phi i1 [ false, %out.i.i.if.then99.i.i_crit_edge ], [ true, %if.else94.i.i.if.then99.i.i_crit_edge ], [ true, %set_block_dev_mapped.exit.i.i.if.then99.i.i_crit_edge ], [ %tobool106.not273.ph.i.i, %if.then99.sink.split.i.i ]
  %retval2.2272.i.i = phi i32 [ 1, %out.i.i.if.then99.i.i_crit_edge ], [ -5, %if.else94.i.i.if.then99.i.i_crit_edge ], [ 0, %set_block_dev_mapped.exit.i.i.if.then99.i.i_crit_edge ], [ %retval2.2272.ph.i.i, %if.then99.sink.split.i.i ]
  %call100.i.i = call i32 @journal_end(ptr noundef nonnull %th.i.i) #14
  %218 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %219) #14
  br i1 %tobool106.not273.i.i, label %if.end119.loopexit.split.loop.exit314.i.i, label %if.then99.i.i.if.then107.i.i_crit_edge

if.then99.i.i.if.then107.i.i_crit_edge:           ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107.i.i

if.end104.thread352.i.i:                          ; preds = %if.else94.i.i.if.end104.thread352.i.i_crit_edge, %set_block_dev_mapped.exit.i.i.if.end104.thread352.i.i_crit_edge
  %retval2.2345.ph.i.i = phi i32 [ 0, %set_block_dev_mapped.exit.i.i.if.end104.thread352.i.i_crit_edge ], [ -5, %if.else94.i.i.if.end104.thread352.i.i_crit_edge ]
  %220 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %221) #14
  br label %if.end119.i.i

if.end104.i.i:                                    ; preds = %out.i.i.if.end104.i.i_crit_edge, %out.thread.i.i
  %bytes_copied.1292344.i.i = phi i32 [ %bytes_copied.0.i.i, %out.thread.i.i ], [ %bytes_copied.1304.i.i, %out.i.i.if.end104.i.i_crit_edge ]
  %222 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %223) #14
  br label %if.then107.i.i

if.then107.i.i:                                   ; preds = %if.end104.i.i, %if.then99.i.i.if.then107.i.i_crit_edge
  %bytes_copied.4265278.i.i = phi i32 [ %bytes_copied.4274.i.i, %if.then99.i.i.if.then107.i.i_crit_edge ], [ %bytes_copied.1292344.i.i, %if.end104.i.i ]
  %call109.i.i = call i32 @reiserfs_get_block(ptr noundef %9, i64 noundef %conv41.i, ptr noundef %bh.0.i, i32 noundef 25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i.i)
  %tobool110.not.i.i = icmp eq i32 %call109.i.i, 0
  br i1 %tobool110.not.i.i, label %if.then111.i.i, label %if.then107.i.i.if.end119.i.i_crit_edge

if.then107.i.i.if.end119.i.i_crit_edge:           ; preds = %if.then107.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119.i.i

if.then111.i.i:                                   ; preds = %if.then107.i.i
  %224 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile i32, ptr %bh.0.i, align 4
  %226 = and i32 %225, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool113.not.i.i = icmp eq i32 %226, 0
  br i1 %tobool113.not.i.i, label %if.then111.i.i.start_over.i.i.backedge_crit_edge, label %lor.lhs.false.i.i

if.then111.i.i.start_over.i.i.backedge_crit_edge: ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %start_over.i.i.backedge

lor.lhs.false.i.i:                                ; preds = %if.then111.i.i
  %227 = ptrtoint ptr %b_blocknr.i.i239.i.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %b_blocknr.i.i239.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %228)
  %cmp114.i.i = icmp eq i64 %228, 0
  br i1 %cmp114.i.i, label %lor.lhs.false.i.i.start_over.i.i.backedge_crit_edge, label %lor.lhs.false.i.i.if.end119.i.i_crit_edge

lor.lhs.false.i.i.if.end119.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119.i.i

lor.lhs.false.i.i.start_over.i.i.backedge_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %start_over.i.i.backedge

start_over.i.i.backedge:                          ; preds = %lor.lhs.false.i.i.start_over.i.i.backedge_crit_edge, %if.then111.i.i.start_over.i.i.backedge_crit_edge
  br label %start_over.i.i

if.end119.loopexit.split.loop.exit314.i.i:        ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i.i)
  %tobool101.not.le.i.i = icmp eq i32 %call100.i.i, 0
  %spec.select.le.i.i = select i1 %tobool101.not.le.i.i, i32 %retval2.2272.i.i, i32 %call100.i.i
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %if.end119.loopexit.split.loop.exit314.i.i, %lor.lhs.false.i.i.if.end119.i.i_crit_edge, %if.then107.i.i.if.end119.i.i_crit_edge, %if.end104.thread352.i.i, %if.end104.thread.i.i
  %retval2.5.i.i = phi i32 [ %call42.i.i, %if.end104.thread.i.i ], [ %spec.select.le.i.i, %if.end119.loopexit.split.loop.exit314.i.i ], [ %retval2.2345.ph.i.i, %if.end104.thread352.i.i ], [ 0, %lor.lhs.false.i.i.if.end119.i.i_crit_edge ], [ %call109.i.i, %if.then107.i.i.if.end119.i.i_crit_edge ]
  %229 = ptrtoint ptr %b_page.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %b_page.i.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 55) #14
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 4
  %shr.i.i244.i.i = lshr i32 %232, 30
  %233 = zext i32 %shr.i.i244.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %shr.i.i244.i.i, label %if.end119.i.i.kunmap.exit.i.i_crit_edge [
    i32 2, label %if.end119.i.i.if.end.i.i441.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i246.i.i
  ]

if.end119.i.i.if.end.i.i441.i_crit_edge:          ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i441.i

if.end119.i.i.kunmap.exit.i.i_crit_edge:          ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.i.i

is_highmem_idx.exit.i246.i.i:                     ; preds = %if.end119.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %234 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %234)
  %cmp2.i.not.i245.i.i = icmp eq i32 %234, 2
  br i1 %cmp2.i.not.i245.i.i, label %is_highmem_idx.exit.i246.i.i.if.end.i.i441.i_crit_edge, label %is_highmem_idx.exit.i246.i.i.kunmap.exit.i.i_crit_edge

is_highmem_idx.exit.i246.i.i.kunmap.exit.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i246.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.i.i

is_highmem_idx.exit.i246.i.i.if.end.i.i441.i_crit_edge: ; preds = %is_highmem_idx.exit.i246.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i441.i

if.end.i.i441.i:                                  ; preds = %is_highmem_idx.exit.i246.i.i.if.end.i.i441.i_crit_edge, %if.end119.i.i.if.end.i.i441.i_crit_edge
  call void @kunmap_high(ptr noundef %230) #14
  br label %kunmap.exit.i.i

kunmap.exit.i.i:                                  ; preds = %if.end.i.i441.i, %is_highmem_idx.exit.i246.i.i.kunmap.exit.i.i_crit_edge, %if.end119.i.i.kunmap.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.5.i.i)
  %tobool121.not.i.i = icmp eq i32 %retval2.5.i.i, 0
  br i1 %tobool121.not.i.i, label %land.lhs.true122.i.i, label %kunmap.exit.i.i.map_block_for_writepage.exit.i_crit_edge

kunmap.exit.i.i.map_block_for_writepage.exit.i_crit_edge: ; preds = %kunmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_block_for_writepage.exit.i

land.lhs.true122.i.i:                             ; preds = %kunmap.exit.i.i
  %235 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %bh.0.i, align 4
  %237 = and i32 %236, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool124.not.i.i = icmp eq i32 %237, 0
  br i1 %tobool124.not.i.i, label %land.lhs.true122.i.i.map_block_for_writepage.exit.thread.i_crit_edge, label %land.lhs.true125.i.i

land.lhs.true122.i.i.map_block_for_writepage.exit.thread.i_crit_edge: ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_block_for_writepage.exit.thread.i

land.lhs.true125.i.i:                             ; preds = %land.lhs.true122.i.i
  %238 = ptrtoint ptr %b_blocknr.i.i239.i.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %b_blocknr.i.i239.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %239)
  %cmp127.i.i = icmp eq i64 %239, 0
  br i1 %cmp127.i.i, label %if.then129.i.i, label %land.lhs.true125.i.i.map_block_for_writepage.exit.thread.i_crit_edge

land.lhs.true125.i.i.map_block_for_writepage.exit.thread.i_crit_edge: ; preds = %land.lhs.true125.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_block_for_writepage.exit.thread.i

if.then129.i.i:                                   ; preds = %land.lhs.true125.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 366) #14
  %call.i.i.i.i465.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh.0.i, i32 noundef 4) #14
  %240 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %bh.0.i, align 4
  %and.i.i.i.i466.i = and i32 %241, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i466.i)
  %tobool.not.i.i.i.i467.i = icmp eq i32 %and.i.i.i.i466.i, 0
  br i1 %tobool.not.i.i.i.i467.i, label %trylock_buffer.exit.i470.i, label %if.then129.i.i.if.then.i471.i_crit_edge

if.then129.i.i.if.then.i471.i_crit_edge:          ; preds = %if.then129.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i471.i

trylock_buffer.exit.i470.i:                       ; preds = %if.then129.i.i
  call void @llvm.prefetch.p0(ptr %bh.0.i, i32 1, i32 3, i32 1) #14
  %242 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0.i, ptr %bh.0.i, i32 4, ptr elementtype(i32) %bh.0.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i468.i = extractvalue { i32, i32, i32 } %242, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !133
  %243 = and i32 %asmresult.i.i.i.i.i.i.i468.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.not.not.i469.i = icmp eq i32 %243, 0
  br i1 %tobool.not.not.i469.i, label %trylock_buffer.exit.i470.i.lock_buffer.exit473.i_crit_edge, label %trylock_buffer.exit.i470.i.if.then.i471.i_crit_edge

trylock_buffer.exit.i470.i.if.then.i471.i_crit_edge: ; preds = %trylock_buffer.exit.i470.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i471.i

trylock_buffer.exit.i470.i.lock_buffer.exit473.i_crit_edge: ; preds = %trylock_buffer.exit.i470.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_buffer.exit473.i

if.then.i471.i:                                   ; preds = %trylock_buffer.exit.i470.i.if.then.i471.i_crit_edge, %if.then129.i.i.if.then.i471.i_crit_edge
  call void @__lock_buffer(ptr noundef %bh.0.i) #14
  br label %lock_buffer.exit473.i

lock_buffer.exit473.i:                            ; preds = %if.then.i471.i, %trylock_buffer.exit.i470.i.lock_buffer.exit473.i_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0.i) #14
  call void @unlock_buffer(ptr noundef %bh.0.i) #14
  br label %map_block_for_writepage.exit.thread.i

map_block_for_writepage.exit.thread.i:            ; preds = %lock_buffer.exit473.i, %land.lhs.true125.i.i.map_block_for_writepage.exit.thread.i_crit_edge, %land.lhs.true122.i.i.map_block_for_writepage.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp_ih.i.i) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i.i) #14
  br label %if.end61.i

map_block_for_writepage.exit.i:                   ; preds = %kunmap.exit.i.i.map_block_for_writepage.exit.i_crit_edge, %if.then55.i.map_block_for_writepage.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -5, %if.then55.i.map_block_for_writepage.exit.i_crit_edge ], [ %retval2.5.i.i, %kunmap.exit.i.i.map_block_for_writepage.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp_ih.i.i) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i.i) #14
  br label %fail.i

if.end61.i:                                       ; preds = %map_block_for_writepage.exit.thread.i, %lor.lhs.false52.i.if.end61.i_crit_edge, %if.then.i351.i, %if.then44.i.if.end61.i_crit_edge
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %244 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %b_this_page.i, align 4
  %cmp63.not.i = icmp eq ptr %245, %44
  br i1 %cmp63.not.i, label %do.end65.i, label %if.end61.i.do.body40.backedge.i_crit_edge

if.end61.i.do.body40.backedge.i_crit_edge:        ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40.backedge.i

do.body40.backedge.i:                             ; preds = %if.end61.thread.i.do.body40.backedge.i_crit_edge, %if.end61.i.do.body40.backedge.i_crit_edge
  %bh.0.be.i = phi ptr [ %245, %if.end61.i.do.body40.backedge.i_crit_edge ], [ %247, %if.end61.thread.i.do.body40.backedge.i_crit_edge ]
  %block.0.be.i = add i32 %block.0.i, 1
  br label %do.body40.i

if.end61.thread.i:                                ; preds = %lor.lhs.false46.i
  %b_this_page476.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %246 = ptrtoint ptr %b_this_page476.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %b_this_page476.i, align 4
  %cmp63.not478.i = icmp eq ptr %247, %44
  br i1 %cmp63.not478.i, label %if.end61.thread.i.if.end73.i_crit_edge, label %if.end61.thread.i.do.body40.backedge.i_crit_edge

if.end61.thread.i.do.body40.backedge.i_crit_edge: ; preds = %if.end61.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40.backedge.i

if.end61.thread.i.if.end73.i_crit_edge:           ; preds = %if.end61.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

do.end65.i:                                       ; preds = %if.end61.i
  br i1 %tobool.not.i, label %do.end65.i.if.end73.i_crit_edge, label %if.then67.i

do.end65.i.if.end73.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then67.i:                                      ; preds = %do.end65.i
  %248 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %page, align 4
  %250 = and i32 %249, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.not.i.i.i = icmp eq i32 %250, 0
  br i1 %tobool.not.i.i.i, label %PageCompound.exit.i.i, label %if.then67.i.if.then.i357.i_crit_edge

if.then67.i.if.then.i357.i_crit_edge:             ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i357.i

PageCompound.exit.i.i:                            ; preds = %if.then67.i
  %251 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile i32, ptr %251, align 4
  %and.i.i.i.i = and i32 %253, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i356.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i356.i, label %do.body7.i.i, label %PageCompound.exit.i.i.if.then.i357.i_crit_edge, !prof !102

PageCompound.exit.i.i.if.then.i357.i_crit_edge:   ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i357.i

if.then.i357.i:                                   ; preds = %PageCompound.exit.i.i.if.then.i357.i_crit_edge, %if.then67.i.if.then.i357.i_crit_edge
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.body7.i.i:                                     ; preds = %PageCompound.exit.i.i
  %254 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %255)
  %cmp.i.not.i358.i = icmp eq i32 %255, -1
  br i1 %cmp.i.not.i358.i, label %if.then16.i.i, label %ClearPageChecked.exit.i, !prof !98

if.then16.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

ClearPageChecked.exit.i:                          ; preds = %do.body7.i.i
  call void @_clear_bit(i32 noundef 10, ptr noundef %page) #14
  call void @reiserfs_write_lock(ptr noundef %19) #14
  %add68.i = add nuw nsw i32 %div.i, 1
  %call69.i = call i32 @journal_begin(ptr noundef nonnull %th.i, ptr noundef %19, i32 noundef %add68.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.then71.i

if.then71.i:                                      ; preds = %ClearPageChecked.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_write_unlock(ptr noundef %19) #14
  br label %fail.i

if.end72.i:                                       ; preds = %ClearPageChecked.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_update_inode_transaction(ptr noundef %9) #14
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.end72.i, %do.end65.i.if.end73.i_crit_edge, %if.end61.thread.i.if.end73.i_crit_edge
  %sync_mode.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  br label %do.body74.i

do.body74.i:                                      ; preds = %do.body74.i.backedge, %if.end73.i
  %bh.1.i = phi ptr [ %44, %if.end73.i ], [ %bh.1.i.be, %do.body74.i.backedge ]
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 11
  %call.i.i.i442.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #14
  %256 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #14, !srcloc !136
  %257 = ptrtoint ptr %bh.1.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile i32, ptr %bh.1.i, align 4
  %259 = and i32 %258, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool76.not.i = icmp eq i32 %259, 0
  br i1 %tobool76.not.i, label %do.body74.i.do.cond107.i_crit_edge, label %if.end78.i

do.body74.i.do.cond107.i_crit_edge:               ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond107.i

if.end78.i:                                       ; preds = %do.body74.i
  %260 = ptrtoint ptr %bh.1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile i32, ptr %bh.1.i, align 4
  %262 = and i32 %261, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool80.not.i = icmp eq i32 %262, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end86.i_crit_edge, label %land.lhs.true81.i

if.end78.i.if.end86.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86.i

land.lhs.true81.i:                                ; preds = %if.end78.i
  %b_blocknr82.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 3
  %263 = ptrtoint ptr %b_blocknr82.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %b_blocknr82.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %264)
  %cmp83.i = icmp eq i64 %264, 0
  br i1 %cmp83.i, label %land.lhs.true81.i.do.cond107.i_crit_edge, label %land.lhs.true81.i.if.end86.i_crit_edge

land.lhs.true81.i.if.end86.i_crit_edge:           ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86.i

land.lhs.true81.i.do.cond107.i_crit_edge:         ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond107.i

if.end86.i:                                       ; preds = %land.lhs.true81.i.if.end86.i_crit_edge, %if.end78.i.if.end86.i_crit_edge
  br i1 %tobool.not.i, label %if.end91.i, label %do.cond107.thread.i

if.end91.i:                                       ; preds = %if.end86.i
  %265 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %sync_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp92.not.i = icmp eq i32 %266, 0
  br i1 %cmp92.not.i, label %if.else95.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end91.i
  call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 366) #14
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh.1.i, i32 noundef 4) #14
  %267 = ptrtoint ptr %bh.1.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile i32, ptr %bh.1.i, align 4
  %and.i.i.i.i443.i = and i32 %268, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i443.i)
  %tobool.not.i.i.i.i444.i = icmp eq i32 %and.i.i.i.i443.i, 0
  br i1 %tobool.not.i.i.i.i444.i, label %trylock_buffer.exit.i.i, label %if.then94.i.if.then.i445.i_crit_edge

if.then94.i.if.then.i445.i_crit_edge:             ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i445.i

trylock_buffer.exit.i.i:                          ; preds = %if.then94.i
  call void @llvm.prefetch.p0(ptr %bh.1.i, i32 1, i32 3, i32 1) #14
  %269 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.1.i, ptr %bh.1.i, i32 4, ptr elementtype(i32) %bh.1.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %269, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !133
  %270 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool.not.not.i.i = icmp eq i32 %270, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.if.end101.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i445.i_crit_edge

trylock_buffer.exit.i.i.if.then.i445.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i445.i

trylock_buffer.exit.i.i.if.end101.i_crit_edge:    ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i

if.then.i445.i:                                   ; preds = %trylock_buffer.exit.i.i.if.then.i445.i_crit_edge, %if.then94.i.if.then.i445.i_crit_edge
  call void @__lock_buffer(ptr noundef %bh.1.i) #14
  br label %if.end101.i

if.else95.i:                                      ; preds = %if.end91.i
  %call.i.i.i447.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh.1.i, i32 noundef 4) #14
  %271 = ptrtoint ptr %bh.1.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile i32, ptr %bh.1.i, align 4
  %and.i.i.i448.i = and i32 %272, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i448.i)
  %tobool.not.i.i.i449.i = icmp eq i32 %and.i.i.i448.i, 0
  br i1 %tobool.not.i.i.i449.i, label %trylock_buffer.exit.i, label %if.else95.i.if.then98.i_crit_edge

if.else95.i.if.then98.i_crit_edge:                ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then98.i

trylock_buffer.exit.i:                            ; preds = %if.else95.i
  call void @llvm.prefetch.p0(ptr %bh.1.i, i32 1, i32 3, i32 1) #14
  %273 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.1.i, ptr %bh.1.i, i32 4, ptr elementtype(i32) %bh.1.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %273, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !133
  %274 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool97.not.not.i = icmp eq i32 %274, 0
  br i1 %tobool97.not.not.i, label %trylock_buffer.exit.i.if.end101.i_crit_edge, label %trylock_buffer.exit.i.if.then98.i_crit_edge

trylock_buffer.exit.i.if.then98.i_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then98.i

trylock_buffer.exit.i.if.end101.i_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i

if.then98.i:                                      ; preds = %trylock_buffer.exit.i.if.then98.i_crit_edge, %if.else95.i.if.then98.i_crit_edge
  %call99.i = call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #14
  br label %do.cond107.i

if.end101.i:                                      ; preds = %trylock_buffer.exit.i.if.end101.i_crit_edge, %if.then.i445.i, %trylock_buffer.exit.i.i.if.end101.i_crit_edge
  %call.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %bh.1.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool103.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool103.not.i, label %if.else105.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mark_buffer_async_write(ptr noundef %bh.1.i) #14
  br label %do.cond107.i

if.else105.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @unlock_buffer(ptr noundef %bh.1.i) #14
  br label %do.cond107.i

do.cond107.i:                                     ; preds = %if.else105.i, %if.then104.i, %if.then98.i, %land.lhs.true81.i.do.cond107.i_crit_edge, %do.body74.i.do.cond107.i_crit_edge
  %b_this_page108.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 1
  %275 = ptrtoint ptr %b_this_page108.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %b_this_page108.i, align 4
  %cmp109.not.i = icmp eq ptr %276, %44
  br i1 %cmp109.not.i, label %do.end111.i, label %do.cond107.i.do.body74.i.backedge_crit_edge

do.cond107.i.do.body74.i.backedge_crit_edge:      ; preds = %do.cond107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body74.i.backedge

do.cond107.thread.i:                              ; preds = %if.end86.i
  %call89.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %19, ptr noundef %bh.1.i, i32 noundef 1) #14
  %call90.i = call i32 @journal_mark_dirty(ptr noundef nonnull %th.i, ptr noundef %bh.1.i) #14
  %b_this_page108481.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 1
  %277 = ptrtoint ptr %b_this_page108481.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %b_this_page108481.i, align 4
  %cmp109.not482.i = icmp eq ptr %278, %44
  br i1 %cmp109.not482.i, label %do.cond107.thread.i.if.then113.i_crit_edge, label %do.cond107.thread.i.do.body74.i.backedge_crit_edge

do.cond107.thread.i.do.body74.i.backedge_crit_edge: ; preds = %do.cond107.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body74.i.backedge

do.cond107.thread.i.if.then113.i_crit_edge:       ; preds = %do.cond107.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then113.i

do.body74.i.backedge:                             ; preds = %do.cond107.thread.i.do.body74.i.backedge_crit_edge, %do.cond107.i.do.body74.i.backedge_crit_edge
  %bh.1.i.be = phi ptr [ %276, %do.cond107.i.do.body74.i.backedge_crit_edge ], [ %278, %do.cond107.thread.i.do.body74.i.backedge_crit_edge ]
  br label %do.body74.i

do.end111.i:                                      ; preds = %do.cond107.i
  br i1 %tobool.not.i, label %do.end111.i.do.body119.i_crit_edge, label %do.end111.i.if.then113.i_crit_edge

do.end111.i.if.then113.i_crit_edge:               ; preds = %do.end111.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then113.i

do.end111.i.do.body119.i_crit_edge:               ; preds = %do.end111.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119.i

if.then113.i:                                     ; preds = %do.end111.i.if.then113.i_crit_edge, %do.cond107.thread.i.if.then113.i_crit_edge
  %call114.i = call i32 @journal_end(ptr noundef nonnull %th.i) #14
  call void @reiserfs_write_unlock(ptr noundef %19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.then113.i.do.body119.i_crit_edge, label %if.then113.i.fail.i_crit_edge

if.then113.i.fail.i_crit_edge:                    ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail.i

if.then113.i.do.body119.i_crit_edge:              ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119.i

do.body119.i:                                     ; preds = %if.then113.i.do.body119.i_crit_edge, %do.end111.i.do.body119.i_crit_edge
  %279 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load volatile i32, ptr %279, align 4
  %and.i.i.i = and i32 %281, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i363.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i363.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %281, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #16
  %282 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %282, %if.end.i.i.i ]
  %283 = inttoptr i32 %retval.0.i.i.i to ptr
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load volatile i32, ptr %283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %285)
  %cmp.i.not.i364.i = icmp eq i32 %285, -1
  %286 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %279, align 4
  %and.i16.i.i = and i32 %287, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i364.i, label %if.then.i365.i, label %do.end10.i.i, !prof !98

if.then.i365.i:                                   ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !102

if.then.i19.i.i:                                  ; preds = %if.then.i365.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i18.i.i = add i32 %287, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i365.i
  call void @__sanitizer_cov_trace_pc() #16
  %288 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %288, %if.end.i20.i.i ]
  %289 = inttoptr i32 %retval.0.i21.i.i to ptr
  call void @dump_page(ptr noundef %289, ptr noundef nonnull @.str.42) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #14, !srcloc !137
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !102

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i25.i.i = add i32 %287, -1
  br label %PageWriteback.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %290 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit.i

PageWriteback.exit.i:                             ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %290, %if.end.i27.i.i ]
  %291 = inttoptr i32 %retval.0.i28.i.i to ptr
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load volatile i32, ptr %291, align 4
  %294 = and i32 %293, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool121.not.i = icmp eq i32 %294, 0
  br i1 %tobool121.not.i, label %do.end137.i, label %do.body129.i, !prof !102

do.body129.i:                                     ; preds = %PageWriteback.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2655, 0\0A.popsection", ""() #14, !srcloc !138
  unreachable

do.end137.i:                                      ; preds = %PageWriteback.exit.i
  %call138.i = call zeroext i1 @set_page_writeback(ptr noundef %page) #14
  call void @unlock_page(ptr noundef %page) #14
  br label %do.body139.i

do.body139.i:                                     ; preds = %if.end146.i.do.body139.i_crit_edge, %do.end137.i
  %bh.2.i = phi ptr [ %44, %do.end137.i ], [ %296, %if.end146.i.do.body139.i_crit_edge ]
  %nr.0.i = phi i32 [ 0, %do.end137.i ], [ %nr.1.i, %if.end146.i.do.body139.i_crit_edge ]
  %b_this_page140.i = getelementptr inbounds %struct.buffer_head, ptr %bh.2.i, i32 0, i32 1
  %295 = ptrtoint ptr %b_this_page140.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %b_this_page140.i, align 4
  %297 = ptrtoint ptr %bh.2.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load volatile i32, ptr %bh.2.i, align 4
  %299 = and i32 %298, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool142.not.i = icmp eq i32 %299, 0
  br i1 %tobool142.not.i, label %do.body139.i.if.end146.i_crit_edge, label %if.then143.i

do.body139.i.if.end146.i_crit_edge:               ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146.i

if.then143.i:                                     ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #16
  %call144.i = call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %bh.2.i) #14
  %inc145.i = add i32 %nr.0.i, 1
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then143.i, %do.body139.i.if.end146.i_crit_edge
  %nr.1.i = phi i32 [ %inc145.i, %if.then143.i ], [ %nr.0.i, %do.body139.i.if.end146.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !139
  %b_count.i450.i = getelementptr inbounds %struct.buffer_head, ptr %bh.2.i, i32 0, i32 11
  %call.i.i.i451.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i450.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %b_count.i450.i, i32 1, i32 3, i32 1) #14
  %300 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i450.i, ptr %b_count.i450.i, i32 1, ptr elementtype(i32) %b_count.i450.i) #14, !srcloc !140
  %cmp148.not.i = icmp eq ptr %296, %44
  br i1 %cmp148.not.i, label %if.end146.i.done.i_crit_edge, label %if.end146.i.do.body139.i_crit_edge

if.end146.i.do.body139.i_crit_edge:               ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body139.i

if.end146.i.done.i_crit_edge:                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

done.i:                                           ; preds = %if.end213.i.done.i_crit_edge, %if.end146.i.done.i_crit_edge
  %error.0.i = phi i32 [ 0, %if.end146.i.done.i_crit_edge ], [ %error.1.i, %if.end213.i.done.i_crit_edge ]
  %nr.2.i = phi i32 [ %nr.1.i, %if.end146.i.done.i_crit_edge ], [ %nr.4.i, %if.end213.i.done.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.2.i)
  %cmp151.i = icmp eq i32 %nr.2.i, 0
  br i1 %cmp151.i, label %done.i.do.body154.i_crit_edge, label %done.i.reiserfs_write_full_page.exit_crit_edge

done.i.reiserfs_write_full_page.exit_crit_edge:   ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_write_full_page.exit

done.i.do.body154.i_crit_edge:                    ; preds = %done.i
  br label %do.body154.i

do.body154.i:                                     ; preds = %if.end158.i.do.body154.i_crit_edge, %done.i.do.body154.i_crit_edge
  %bh.3.i = phi ptr [ %304, %if.end158.i.do.body154.i_crit_edge ], [ %44, %done.i.do.body154.i_crit_edge ]
  %301 = ptrtoint ptr %bh.3.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load volatile i32, ptr %bh.3.i, align 4
  %and1.i.i370.i = and i32 %302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i370.i)
  %tobool156.not.i = icmp eq i32 %and1.i.i370.i, 0
  br i1 %tobool156.not.i, label %do.body154.i.if.end166.i_crit_edge, label %if.end158.i

do.body154.i.if.end166.i_crit_edge:               ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166.i

if.end158.i:                                      ; preds = %do.body154.i
  %b_this_page159.i = getelementptr inbounds %struct.buffer_head, ptr %bh.3.i, i32 0, i32 1
  %303 = ptrtoint ptr %b_this_page159.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %b_this_page159.i, align 4
  %cmp161.not.i = icmp eq ptr %304, %44
  br i1 %cmp161.not.i, label %if.then165.critedge.i, label %if.end158.i.do.body154.i_crit_edge

if.end158.i.do.body154.i_crit_edge:               ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body154.i

if.then165.critedge.i:                            ; preds = %if.end158.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  %305 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load volatile i32, ptr %305, align 4
  %and.i.i.i.i.i = and i32 %307, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !102

if.then.i.i.i.i:                                  ; preds = %if.then165.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.23) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !103
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then165.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #14
  br label %if.end166.i

if.end166.i:                                      ; preds = %SetPageUptodate.exit.i, %do.body154.i.if.end166.i_crit_edge
  call void @end_page_writeback(ptr noundef %page) #14
  br label %reiserfs_write_full_page.exit

fail.i:                                           ; preds = %if.then113.i.fail.i_crit_edge, %if.then71.i, %map_block_for_writepage.exit.i
  %error.1.i = phi i32 [ %call69.i, %if.then71.i ], [ %call114.i, %if.then113.i.fail.i_crit_edge ], [ %retval.0.i.i, %map_block_for_writepage.exit.i ]
  %308 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load volatile i32, ptr %308, align 4
  %and.i.i371.i = and i32 %310, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i371.i)
  %tobool.not.i372.i = icmp eq i32 %and.i.i371.i, 0
  br i1 %tobool.not.i372.i, label %do.body7.i375.i, label %if.then.i373.i, !prof !102

if.then.i373.i:                                   ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.43) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #14, !srcloc !142
  unreachable

do.body7.i375.i:                                  ; preds = %fail.i
  %311 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load volatile i32, ptr %308, align 4
  %and.i31.i.i = and i32 %312, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i.i)
  %tobool.not.i.i374.i = icmp eq i32 %and.i31.i.i, 0
  br i1 %tobool.not.i.i374.i, label %if.end.i.i378.i, label %if.then.i.i377.i, !prof !102

if.then.i.i377.i:                                 ; preds = %do.body7.i375.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i376.i = add i32 %312, -1
  br label %_compound_head.exit.i381.i

if.end.i.i378.i:                                  ; preds = %do.body7.i375.i
  call void @__sanitizer_cov_trace_pc() #16
  %313 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i381.i

_compound_head.exit.i381.i:                       ; preds = %if.end.i.i378.i, %if.then.i.i377.i
  %retval.0.i.i379.i = phi i32 [ %sub.i.i376.i, %if.then.i.i377.i ], [ %313, %if.end.i.i378.i ]
  %314 = inttoptr i32 %retval.0.i.i379.i to ptr
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %316)
  %cmp.i.not.i380.i = icmp eq i32 %316, -1
  %317 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %308, align 4
  %and.i32.i.i = and i32 %318, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %cmp.i.not.i380.i, label %if.then17.i.i, label %do.end24.i.i, !prof !98

if.then17.i.i:                                    ; preds = %_compound_head.exit.i381.i
  br i1 %tobool.not.i33.i.i, label %if.end.i36.i.i, label %if.then.i35.i.i, !prof !102

if.then.i35.i.i:                                  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i34.i.i = add i32 %318, -1
  br label %_compound_head.exit38.i.i

if.end.i36.i.i:                                   ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %319 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i.i

_compound_head.exit38.i.i:                        ; preds = %if.end.i36.i.i, %if.then.i35.i.i
  %retval.0.i37.i.i = phi i32 [ %sub.i34.i.i, %if.then.i35.i.i ], [ %319, %if.end.i36.i.i ]
  %320 = inttoptr i32 %retval.0.i37.i.i to ptr
  call void @dump_page(ptr noundef %320, ptr noundef nonnull @.str.42) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #14, !srcloc !143
  unreachable

do.end24.i.i:                                     ; preds = %_compound_head.exit.i381.i
  br i1 %tobool.not.i33.i.i, label %if.end.i43.i.i, label %if.then.i42.i.i, !prof !102

if.then.i42.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i41.i.i = add i32 %318, -1
  br label %ClearPageUptodate.exit.i

if.end.i43.i.i:                                   ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %321 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit.i

ClearPageUptodate.exit.i:                         ; preds = %if.end.i43.i.i, %if.then.i42.i.i
  %retval.0.i44.i.i = phi i32 [ %sub.i41.i.i, %if.then.i42.i.i ], [ %321, %if.end.i43.i.i ]
  %322 = inttoptr i32 %retval.0.i44.i.i to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %322) #14
  br label %do.body168.i

do.body168.i:                                     ; preds = %if.end179.i.do.body168.i_crit_edge, %ClearPageUptodate.exit.i
  %bh.4.i = phi ptr [ %44, %ClearPageUptodate.exit.i ], [ %337, %if.end179.i.do.body168.i_crit_edge ]
  %b_count.i452.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4.i, i32 0, i32 11
  %call.i.i.i453.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i452.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %b_count.i452.i, i32 1, i32 3, i32 1) #14
  %323 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i452.i, ptr %b_count.i452.i, i32 1, ptr elementtype(i32) %b_count.i452.i) #14, !srcloc !136
  %324 = ptrtoint ptr %bh.4.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile i32, ptr %bh.4.i, align 4
  %326 = and i32 %325, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool170.not.i = icmp eq i32 %326, 0
  br i1 %tobool170.not.i, label %do.body168.i.if.else178.i_crit_edge, label %land.lhs.true171.i

do.body168.i.if.else178.i_crit_edge:              ; preds = %do.body168.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else178.i

land.lhs.true171.i:                               ; preds = %do.body168.i
  %327 = ptrtoint ptr %bh.4.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load volatile i32, ptr %bh.4.i, align 4
  %329 = and i32 %328, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool173.not.i = icmp eq i32 %329, 0
  br i1 %tobool173.not.i, label %land.lhs.true171.i.if.else178.i_crit_edge, label %land.lhs.true174.i

land.lhs.true171.i.if.else178.i_crit_edge:        ; preds = %land.lhs.true171.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else178.i

land.lhs.true174.i:                               ; preds = %land.lhs.true171.i
  %b_blocknr175.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4.i, i32 0, i32 3
  %330 = ptrtoint ptr %b_blocknr175.i to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %b_blocknr175.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %331)
  %tobool176.not.i = icmp eq i64 %331, 0
  br i1 %tobool176.not.i, label %land.lhs.true174.i.if.else178.i_crit_edge, label %if.then177.i

land.lhs.true174.i.if.else178.i_crit_edge:        ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else178.i

if.then177.i:                                     ; preds = %land.lhs.true174.i
  call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 366) #14
  %call.i.i.i.i454.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh.4.i, i32 noundef 4) #14
  %332 = ptrtoint ptr %bh.4.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load volatile i32, ptr %bh.4.i, align 4
  %and.i.i.i.i455.i = and i32 %333, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i455.i)
  %tobool.not.i.i.i.i456.i = icmp eq i32 %and.i.i.i.i455.i, 0
  br i1 %tobool.not.i.i.i.i456.i, label %trylock_buffer.exit.i459.i, label %if.then177.i.if.then.i460.i_crit_edge

if.then177.i.if.then.i460.i_crit_edge:            ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i460.i

trylock_buffer.exit.i459.i:                       ; preds = %if.then177.i
  call void @llvm.prefetch.p0(ptr %bh.4.i, i32 1, i32 3, i32 1) #14
  %334 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.4.i, ptr %bh.4.i, i32 4, ptr elementtype(i32) %bh.4.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i457.i = extractvalue { i32, i32, i32 } %334, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !133
  %335 = and i32 %asmresult.i.i.i.i.i.i.i457.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool.not.not.i458.i = icmp eq i32 %335, 0
  br i1 %tobool.not.not.i458.i, label %trylock_buffer.exit.i459.i.lock_buffer.exit462.i_crit_edge, label %trylock_buffer.exit.i459.i.if.then.i460.i_crit_edge

trylock_buffer.exit.i459.i.if.then.i460.i_crit_edge: ; preds = %trylock_buffer.exit.i459.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i460.i

trylock_buffer.exit.i459.i.lock_buffer.exit462.i_crit_edge: ; preds = %trylock_buffer.exit.i459.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_buffer.exit462.i

if.then.i460.i:                                   ; preds = %trylock_buffer.exit.i459.i.if.then.i460.i_crit_edge, %if.then177.i.if.then.i460.i_crit_edge
  call void @__lock_buffer(ptr noundef %bh.4.i) #14
  br label %lock_buffer.exit462.i

lock_buffer.exit462.i:                            ; preds = %if.then.i460.i, %trylock_buffer.exit.i459.i.lock_buffer.exit462.i_crit_edge
  call void @mark_buffer_async_write(ptr noundef %bh.4.i) #14
  br label %if.end179.i

if.else178.i:                                     ; preds = %land.lhs.true174.i.if.else178.i_crit_edge, %land.lhs.true171.i.if.else178.i_crit_edge, %do.body168.i.if.else178.i_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %bh.4.i) #14
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else178.i, %lock_buffer.exit462.i
  %b_this_page180.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4.i, i32 0, i32 1
  %336 = ptrtoint ptr %b_this_page180.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %b_this_page180.i, align 4
  %cmp182.not.i = icmp eq ptr %337, %44
  br i1 %cmp182.not.i, label %do.end184.i, label %if.end179.i.do.body168.i_crit_edge

if.end179.i.do.body168.i_crit_edge:               ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body168.i

do.end184.i:                                      ; preds = %if.end179.i
  %338 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load volatile i32, ptr %308, align 4
  %and.i.i386.i = and i32 %339, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i386.i)
  %tobool.not.i387.i = icmp eq i32 %and.i.i386.i, 0
  br i1 %tobool.not.i387.i, label %do.body7.i391.i, label %if.then.i388.i, !prof !102

if.then.i388.i:                                   ; preds = %do.end184.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.43) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !144
  unreachable

do.body7.i391.i:                                  ; preds = %do.end184.i
  %340 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load volatile i32, ptr %308, align 4
  %and.i31.i389.i = and i32 %341, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i389.i)
  %tobool.not.i.i390.i = icmp eq i32 %and.i31.i389.i, 0
  br i1 %tobool.not.i.i390.i, label %if.end.i.i394.i, label %if.then.i.i393.i, !prof !102

if.then.i.i393.i:                                 ; preds = %do.body7.i391.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i392.i = add i32 %341, -1
  br label %_compound_head.exit.i399.i

if.end.i.i394.i:                                  ; preds = %do.body7.i391.i
  call void @__sanitizer_cov_trace_pc() #16
  %342 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i399.i

_compound_head.exit.i399.i:                       ; preds = %if.end.i.i394.i, %if.then.i.i393.i
  %retval.0.i.i395.i = phi i32 [ %sub.i.i392.i, %if.then.i.i393.i ], [ %342, %if.end.i.i394.i ]
  %343 = inttoptr i32 %retval.0.i.i395.i to ptr
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load volatile i32, ptr %343, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %345)
  %cmp.i.not.i396.i = icmp eq i32 %345, -1
  %346 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load volatile i32, ptr %308, align 4
  %and.i32.i397.i = and i32 %347, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i397.i)
  %tobool.not.i33.i398.i = icmp eq i32 %and.i32.i397.i, 0
  br i1 %cmp.i.not.i396.i, label %if.then17.i400.i, label %do.end24.i406.i, !prof !98

if.then17.i400.i:                                 ; preds = %_compound_head.exit.i399.i
  br i1 %tobool.not.i33.i398.i, label %if.end.i36.i403.i, label %if.then.i35.i402.i, !prof !102

if.then.i35.i402.i:                               ; preds = %if.then17.i400.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i34.i401.i = add i32 %347, -1
  br label %_compound_head.exit38.i405.i

if.end.i36.i403.i:                                ; preds = %if.then17.i400.i
  call void @__sanitizer_cov_trace_pc() #16
  %348 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i405.i

_compound_head.exit38.i405.i:                     ; preds = %if.end.i36.i403.i, %if.then.i35.i402.i
  %retval.0.i37.i404.i = phi i32 [ %sub.i34.i401.i, %if.then.i35.i402.i ], [ %348, %if.end.i36.i403.i ]
  %349 = inttoptr i32 %retval.0.i37.i404.i to ptr
  call void @dump_page(ptr noundef %349, ptr noundef nonnull @.str.42) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #14, !srcloc !145
  unreachable

do.end24.i406.i:                                  ; preds = %_compound_head.exit.i399.i
  br i1 %tobool.not.i33.i398.i, label %if.end.i43.i409.i, label %if.then.i42.i408.i, !prof !102

if.then.i42.i408.i:                               ; preds = %do.end24.i406.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i41.i407.i = add i32 %347, -1
  br label %SetPageError.exit.i

if.end.i43.i409.i:                                ; preds = %do.end24.i406.i
  call void @__sanitizer_cov_trace_pc() #16
  %350 = ptrtoint ptr %page to i32
  br label %SetPageError.exit.i

SetPageError.exit.i:                              ; preds = %if.end.i43.i409.i, %if.then.i42.i408.i
  %retval.0.i44.i410.i = phi i32 [ %sub.i41.i407.i, %if.then.i42.i408.i ], [ %350, %if.end.i43.i409.i ]
  %351 = inttoptr i32 %retval.0.i44.i410.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %351) #14
  %352 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load volatile i32, ptr %308, align 4
  %and.i.i411.i = and i32 %353, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i411.i)
  %tobool.not.i.i412.i = icmp eq i32 %and.i.i411.i, 0
  br i1 %tobool.not.i.i412.i, label %if.end.i.i415.i, label %if.then.i.i414.i, !prof !102

if.then.i.i414.i:                                 ; preds = %SetPageError.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i413.i = add i32 %353, -1
  br label %_compound_head.exit.i420.i

if.end.i.i415.i:                                  ; preds = %SetPageError.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %354 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i420.i

_compound_head.exit.i420.i:                       ; preds = %if.end.i.i415.i, %if.then.i.i414.i
  %retval.0.i.i416.i = phi i32 [ %sub.i.i413.i, %if.then.i.i414.i ], [ %354, %if.end.i.i415.i ]
  %355 = inttoptr i32 %retval.0.i.i416.i to ptr
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load volatile i32, ptr %355, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %357)
  %cmp.i.not.i417.i = icmp eq i32 %357, -1
  %358 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load volatile i32, ptr %308, align 4
  %and.i16.i418.i = and i32 %359, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i418.i)
  %tobool.not.i17.i419.i = icmp eq i32 %and.i16.i418.i, 0
  br i1 %cmp.i.not.i417.i, label %if.then.i421.i, label %do.end10.i427.i, !prof !98

if.then.i421.i:                                   ; preds = %_compound_head.exit.i420.i
  br i1 %tobool.not.i17.i419.i, label %if.end.i20.i424.i, label %if.then.i19.i423.i, !prof !102

if.then.i19.i423.i:                               ; preds = %if.then.i421.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i18.i422.i = add i32 %359, -1
  br label %_compound_head.exit22.i426.i

if.end.i20.i424.i:                                ; preds = %if.then.i421.i
  call void @__sanitizer_cov_trace_pc() #16
  %360 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i426.i

_compound_head.exit22.i426.i:                     ; preds = %if.end.i20.i424.i, %if.then.i19.i423.i
  %retval.0.i21.i425.i = phi i32 [ %sub.i18.i422.i, %if.then.i19.i423.i ], [ %360, %if.end.i20.i424.i ]
  %361 = inttoptr i32 %retval.0.i21.i425.i to ptr
  call void @dump_page(ptr noundef %361, ptr noundef nonnull @.str.42) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #14, !srcloc !137
  unreachable

do.end10.i427.i:                                  ; preds = %_compound_head.exit.i420.i
  br i1 %tobool.not.i17.i419.i, label %if.end.i27.i430.i, label %if.then.i26.i429.i, !prof !102

if.then.i26.i429.i:                               ; preds = %do.end10.i427.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i25.i428.i = add i32 %359, -1
  br label %PageWriteback.exit434.i

if.end.i27.i430.i:                                ; preds = %do.end10.i427.i
  call void @__sanitizer_cov_trace_pc() #16
  %362 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit434.i

PageWriteback.exit434.i:                          ; preds = %if.end.i27.i430.i, %if.then.i26.i429.i
  %retval.0.i28.i431.i = phi i32 [ %sub.i25.i428.i, %if.then.i26.i429.i ], [ %362, %if.end.i27.i430.i ]
  %363 = inttoptr i32 %retval.0.i28.i431.i to ptr
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load volatile i32, ptr %363, align 4
  %366 = and i32 %365, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %tobool187.not.i = icmp eq i32 %366, 0
  br i1 %tobool187.not.i, label %do.end203.i, label %do.body195.i, !prof !102

do.body195.i:                                     ; preds = %PageWriteback.exit434.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2720, 0\0A.popsection", ""() #14, !srcloc !146
  unreachable

do.end203.i:                                      ; preds = %PageWriteback.exit434.i
  %call204.i = call zeroext i1 @set_page_writeback(ptr noundef %page) #14
  call void @unlock_page(ptr noundef %page) #14
  br label %do.body205.i

do.body205.i:                                     ; preds = %if.end213.i.do.body205.i_crit_edge, %do.end203.i
  %bh.5.i = phi ptr [ %44, %do.end203.i ], [ %368, %if.end213.i.do.body205.i_crit_edge ]
  %nr.3.i = phi i32 [ 0, %do.end203.i ], [ %nr.4.i, %if.end213.i.do.body205.i_crit_edge ]
  %b_this_page207.i = getelementptr inbounds %struct.buffer_head, ptr %bh.5.i, i32 0, i32 1
  %367 = ptrtoint ptr %b_this_page207.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %b_this_page207.i, align 4
  %369 = ptrtoint ptr %bh.5.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load volatile i32, ptr %bh.5.i, align 4
  %371 = and i32 %370, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool209.not.i = icmp eq i32 %371, 0
  br i1 %tobool209.not.i, label %do.body205.i.if.end213.i_crit_edge, label %if.then210.i

do.body205.i.if.end213.i_crit_edge:               ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end213.i

if.then210.i:                                     ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 1, ptr noundef %bh.5.i) #14
  %call211.i = call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %bh.5.i) #14
  %inc212.i = add i32 %nr.3.i, 1
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.then210.i, %do.body205.i.if.end213.i_crit_edge
  %nr.4.i = phi i32 [ %inc212.i, %if.then210.i ], [ %nr.3.i, %do.body205.i.if.end213.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !139
  %b_count.i463.i = getelementptr inbounds %struct.buffer_head, ptr %bh.5.i, i32 0, i32 11
  %call.i.i.i464.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i463.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %b_count.i463.i, i32 1, i32 3, i32 1) #14
  %372 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i463.i, ptr %b_count.i463.i, i32 1, ptr elementtype(i32) %b_count.i463.i) #14, !srcloc !140
  %cmp215.not.i = icmp eq ptr %368, %44
  br i1 %cmp215.not.i, label %if.end213.i.done.i_crit_edge, label %if.end213.i.do.body205.i_crit_edge

if.end213.i.do.body205.i_crit_edge:               ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body205.i

if.end213.i.done.i_crit_edge:                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

reiserfs_write_full_page.exit:                    ; preds = %if.end166.i, %done.i.reiserfs_write_full_page.exit_crit_edge, %if.then31.i, %if.then.i
  %retval.1.i = phi i32 [ 0, %if.then.i ], [ 0, %if.then31.i ], [ %error.0.i, %if.end166.i ], [ %error.0.i, %done.i.reiserfs_write_full_page.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i) #14
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_readpage(ptr nocapture noundef readnone %f, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @reiserfs_get_block) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %reiserfs_file_data_log.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

reiserfs_file_data_log.exit:                      ; preds = %entry
  %i_flags.i = getelementptr i8, ptr %3, i32 -248
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 8
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %reiserfs_file_data_log.exit.if.then_crit_edge

reiserfs_file_data_log.exit.if.then_crit_edge:    ; preds = %reiserfs_file_data_log.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %reiserfs_file_data_log.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then
  %16 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !102

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !98

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !148
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #14
  %call1 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %page) #14
  br label %cleanup

if.end:                                           ; preds = %reiserfs_file_data_log.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @__set_page_dirty_buffers(ptr noundef %page) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %SetPageChecked.exit
  %retval.0 = phi i32 [ %call1, %SetPageChecked.exit ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @reiserfs_get_block) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef writeonly %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fsdata, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %6, -1
  %conv = zext i32 %sub to i64
  %and1 = and i64 %conv, %pos
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i64 %pos, 1
  %7 = inttoptr i32 %flags to ptr
  %8 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %fsdata, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pos.addr.0 = phi i64 [ %inc, %if.then ], [ %pos, %land.lhs.true.if.end_crit_edge ], [ %pos, %entry.if.end_crit_edge ]
  %9 = lshr i64 %pos.addr.0, 12
  %conv3 = trunc i64 %9 to i32
  %call = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv3, i32 noundef %flags) #14
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %10 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %pagep, align 4
  %i_sb7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb7, align 4
  tail call void @reiserfs_wait_on_write_block(ptr noundef %12) #14
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !98

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit.i:                               ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call, align 4
  %17 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.i, label %PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge, label %do.body.i

PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge: ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fix_tail_page_for_writing.exit

do.body.i:                                        ; preds = %PagePrivate.exit.i
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i32.i = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i32.i, label %if.then.i33.i, label %PagePrivate.exit36.i, !prof !98

if.then.i33.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit36.i:                             ; preds = %do.body.i
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call, align 4
  %22 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i = icmp eq i32 %22, 0
  br i1 %tobool3.not.i, label %do.body8.i, label %do.end13.i, !prof !98

do.body8.i:                                       ; preds = %PagePrivate.exit36.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #14, !srcloc !109
  unreachable

do.end13.i:                                       ; preds = %PagePrivate.exit36.i
  %private.i = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private.i, align 4
  %25 = inttoptr i32 %24 to ptr
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.end19.i.do.body14.i_crit_edge, %do.end13.i
  %bh.0.i = phi ptr [ %25, %do.end13.i ], [ %27, %if.end19.i.do.body14.i_crit_edge ]
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_this_page.i, align 4
  %28 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %bh.0.i, align 4
  %30 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16.not.i = icmp eq i32 %30, 0
  br i1 %tobool16.not.i, label %do.body14.i.if.end19.i_crit_edge, label %land.lhs.true17.i

do.body14.i.if.end19.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

land.lhs.true17.i:                                ; preds = %do.body14.i
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp.i = icmp eq i64 %32, 0
  br i1 %cmp.i, label %if.then18.i, label %land.lhs.true17.i.if.end19.i_crit_edge

land.lhs.true17.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then18.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_unmap_buffer(ptr noundef %bh.0.i) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %land.lhs.true17.i.if.end19.i_crit_edge, %do.body14.i.if.end19.i_crit_edge
  %cmp21.not.i = icmp eq ptr %27, %25
  br i1 %cmp21.not.i, label %if.end19.i.fix_tail_page_for_writing.exit_crit_edge, label %if.end19.i.do.body14.i_crit_edge

if.end19.i.do.body14.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i

if.end19.i.fix_tail_page_for_writing.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fix_tail_page_for_writing.exit

fix_tail_page_for_writing.exit:                   ; preds = %if.end19.i.fix_tail_page_for_writing.exit_crit_edge, %PagePrivate.exit.i.fix_tail_page_for_writing.exit_crit_edge
  %33 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 146
  %37 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i110 = icmp eq ptr %38, null
  br i1 %tobool.not.i110, label %fix_tail_page_for_writing.exit.if.end48_crit_edge, label %land.lhs.true.i112

fix_tail_page_for_writing.exit.if.end48_crit_edge: ; preds = %fix_tail_page_for_writing.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.lhs.true.i112:                               ; preds = %fix_tail_page_for_writing.exit
  %39 = ptrtoint ptr %i_sb7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb7, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %cmp.i111 = icmp eq ptr %42, %40
  br i1 %cmp.i111, label %if.then11, label %land.lhs.true2.critedge.i

land.lhs.true2.critedge.i:                        ; preds = %land.lhs.true.i112
  %cmp4.i = icmp eq ptr %42, null
  br i1 %cmp4.i, label %do.body.i113, label %land.lhs.true2.critedge.i.if.end48_crit_edge

land.lhs.true2.critedge.i.if.end48_crit_edge:     ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.body.i113:                                     ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable

if.then11:                                        ; preds = %land.lhs.true.i112
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool13.not = icmp eq i32 %44, 0
  br i1 %tobool13.not, label %do.body18, label %do.body25, !prof !98

do.body18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2785, 0\0A.popsection", ""() #14, !srcloc !149
  unreachable

do.body25:                                        ; preds = %if.then11
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %38, i32 0, i32 4
  %45 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool26.not = icmp eq i32 %46, 0
  br i1 %tobool26.not, label %do.body36, label %do.end44, !prof !98

do.body36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2786, 0\0A.popsection", ""() #14, !srcloc !150
  unreachable

do.end44:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  %inc47 = add i32 %44, 1
  %47 = ptrtoint ptr %t_refcount to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc47, ptr %t_refcount, align 4
  br label %if.end48

if.end48:                                         ; preds = %do.end44, %land.lhs.true2.critedge.i.if.end48_crit_edge, %fix_tail_page_for_writing.exit.if.end48_crit_edge
  %old_ref.0 = phi i32 [ %44, %do.end44 ], [ 0, %fix_tail_page_for_writing.exit.if.end48_crit_edge ], [ 0, %land.lhs.true2.critedge.i.if.end48_crit_edge ]
  %call49 = tail call i32 @__block_write_begin(ptr noundef nonnull %call, i64 noundef %pos.addr.0, i32 noundef %len, ptr noundef nonnull @reiserfs_get_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %land.lhs.true51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true51:                                  ; preds = %if.end48
  %48 = ptrtoint ptr %i_sb7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb7, align 4
  %50 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i114 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i114 to ptr
  %task.i115 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i115, align 8
  %journal_info.i116 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 146
  %54 = ptrtoint ptr %journal_info.i116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %journal_info.i116, align 4
  %tobool.not.i117 = icmp eq ptr %55, null
  br i1 %tobool.not.i117, label %land.lhs.true51.if.then77_crit_edge, label %land.lhs.true.i119

land.lhs.true51.if.then77_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

land.lhs.true.i119:                               ; preds = %land.lhs.true51
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %cmp.i118 = icmp eq ptr %57, %49
  br i1 %cmp.i118, label %if.then55, label %land.lhs.true2.critedge.i121

land.lhs.true2.critedge.i121:                     ; preds = %land.lhs.true.i119
  %cmp4.i120 = icmp eq ptr %57, null
  br i1 %cmp4.i120, label %do.body.i122, label %land.lhs.true2.critedge.i121.if.then77_crit_edge

land.lhs.true2.critedge.i121.if.then77_crit_edge: ; preds = %land.lhs.true2.critedge.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

do.body.i122:                                     ; preds = %land.lhs.true2.critedge.i121
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable

if.then55:                                        ; preds = %land.lhs.true.i119
  %t_refcount60 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %t_refcount60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %t_refcount60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %old_ref.0)
  %cmp61 = icmp sgt i32 %59, %old_ref.0
  br i1 %cmp61, label %if.then63, label %if.then55.if.then77_crit_edge

if.then55.if.then77_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

if.then63:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_ref.0)
  %tobool64.not = icmp eq i32 %old_ref.0, 0
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add nsw i32 %59, -1
  %60 = ptrtoint ptr %t_refcount60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %dec, ptr %t_refcount60, align 4
  br label %if.then77

if.else:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_write_lock(ptr noundef %49) #14
  %call68 = tail call i32 @reiserfs_end_persistent_transaction(ptr noundef nonnull %55) #14
  %61 = ptrtoint ptr %i_sb7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb7, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool70.not = icmp eq i32 %call68, 0
  %spec.select = select i1 %tobool70.not, i32 %call49, i32 %call68
  br label %if.then77

if.then77:                                        ; preds = %if.else, %if.then65, %if.then55.if.then77_crit_edge, %land.lhs.true2.critedge.i121.if.then77_crit_edge, %land.lhs.true51.if.then77_crit_edge
  %ret.2.ph = phi i32 [ %call49, %if.then55.if.then77_crit_edge ], [ %call49, %if.then65 ], [ %call49, %land.lhs.true51.if.then77_crit_edge ], [ %call49, %land.lhs.true2.critedge.i121.if.then77_crit_edge ], [ %spec.select, %if.else ]
  tail call void @unlock_page(ptr noundef nonnull %call) #14
  %63 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i126 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i126)
  %tobool.not.i.i = icmp eq i32 %and.i.i126, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i127, !prof !102

if.then.i.i127:                                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %65, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i127
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i127 ], [ %66, %if.end.i.i ]
  %67 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %68 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i.i.i = icmp eq i32 %69, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %67, ptr noundef nonnull @.str.35) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !110
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@reiserfs_write_begin, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !114

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %67, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %67) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %71 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_mapping.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %73 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %i_size.i, align 8
  tail call void @truncate_inode_pages(ptr noundef %72, i64 noundef %74) #14
  %call.i = tail call i32 @reiserfs_truncate_file(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit, %if.end48.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %ret.2.ph, %put_page.exit ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_write_end(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #0 align 64 {
entry:
  %myth = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %fsdata to i32
  %and = and i32 %4, 1
  %5 = zext i32 %and to i64
  %spec.select = add i64 %5, %pos
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_wait_on_write_block(ptr noundef %7) #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 146
  %12 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %land.lhs.true.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true.i:                                  ; preds = %entry
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %cmp.i = icmp eq ptr %17, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.end6_crit_edge, label %land.lhs.true2.critedge.i

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true2.critedge.i:                        ; preds = %land.lhs.true.i
  %cmp4.i = icmp eq ptr %17, null
  br i1 %cmp4.i, label %do.body.i, label %land.lhs.true2.critedge.i.if.end6_crit_edge

land.lhs.true2.critedge.i.if.end6_crit_edge:      ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

do.body.i:                                        ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable

if.end6:                                          ; preds = %land.lhs.true2.critedge.i.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %th.0 = phi ptr [ %13, %land.lhs.true.i.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ], [ null, %land.lhs.true2.critedge.i.if.end6_crit_edge ]
  %18 = trunc i64 %spec.select to i32
  %conv = and i32 %18, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %copied, i32 %len)
  %cmp = icmp ult i32 %copied, %len
  br i1 %cmp, label %if.then11, label %if.end6.if.end17_crit_edge, !prof !98

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call fastcc i32 @PageUptodate(ptr noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.select159 = select i1 %tobool13.not, i32 0, i32 %copied
  %add = add i32 %spec.select159, %conv
  %add16 = add i32 %conv, %len
  tail call void @page_zero_new_buffers(ptr noundef %page, i32 noundef %add, i32 noundef %add16) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end6.if.end17_crit_edge
  %copied.addr.1 = phi i32 [ %spec.select159, %if.then11 ], [ %copied, %if.end6.if.end17_crit_edge ]
  tail call void @flush_dcache_page(ptr noundef %page) #14
  %add18 = add i32 %copied.addr.1, %conv
  %call19 = tail call i32 @reiserfs_commit_page(ptr noundef %3, ptr noundef %page, i32 noundef %conv, i32 noundef %add18) #14
  %conv20 = zext i32 %copied.addr.1 to i64
  %add21 = add i64 %spec.select, %conv20
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add21, i64 %20)
  %cmp22 = icmp sgt i64 %add21, %20
  br i1 %cmp22, label %if.then24, label %if.end63.thread

if.then24:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %myth) #14
  %21 = call ptr @memset(ptr %myth, i32 255, i32 36)
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %23) #14
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_mount_opt, align 4
  %and28 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then24.lor.lhs.false_crit_edge, label %land.lhs.true

if.then24.lor.lhs.false_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then24
  %30 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %33, 2
  %conv32 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv32)
  %cmp33 = icmp sgt i64 %31, %conv32
  br i1 %cmp33, label %land.lhs.true.if.then47_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then24.lor.lhs.false_crit_edge
  %and38 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.lhs.false.if.end50_crit_edge, label %land.lhs.true40

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

land.lhs.true40:                                  ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_size, align 8
  %s_blocksize43 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 3
  %36 = ptrtoint ptr %s_blocksize43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize43, align 16
  %conv44 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %conv44)
  %cmp45 = icmp sgt i64 %35, %conv44
  br i1 %cmp45, label %land.lhs.true40.if.then47_crit_edge, label %land.lhs.true40.if.end50_crit_edge

land.lhs.true40.if.end50_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

land.lhs.true40.if.then47_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.then47:                                        ; preds = %land.lhs.true40.if.then47_crit_edge, %land.lhs.true.if.then47_crit_edge
  %i_flags = getelementptr i8, ptr %3, i32 -248
  %38 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_flags, align 8
  %and49 = and i32 %39, -5
  store i32 %and49, ptr %i_flags, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %land.lhs.true40.if.end50_crit_edge, %lor.lhs.false.if.end50_crit_edge
  %call52 = call i32 @journal_begin(ptr noundef nonnull %myth, ptr noundef %25, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %journal_error.thread

if.end55:                                         ; preds = %if.end50
  call void @reiserfs_update_inode_transaction(ptr noundef %3) #14
  %40 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add21, ptr %i_size, align 8
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #14
  %41 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %myth, ptr noundef %3, i64 noundef %42) #14
  %call59 = call i32 @journal_end(ptr noundef nonnull %myth) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %myth) #14
  br i1 %tobool60.not, label %if.end63, label %journal_error

if.end63:                                         ; preds = %if.end55
  %tobool64.not = icmp eq ptr %th.0, null
  br i1 %tobool64.not, label %if.end63.if.then79_crit_edge, label %if.end63.out.thread189_crit_edge

if.end63.out.thread189_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread189

if.end63.if.then79_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

if.end63.thread:                                  ; preds = %if.end17
  %tobool64.not174 = icmp eq ptr %th.0, null
  br i1 %tobool64.not174, label %if.end63.thread.if.end81_crit_edge, label %if.then71

if.end63.thread.if.end81_crit_edge:               ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then71:                                        ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %44) #14
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #14
  br label %out.thread189

out.thread189:                                    ; preds = %if.then71, %if.end63.out.thread189_crit_edge
  %call73 = call i32 @reiserfs_end_persistent_transaction(ptr noundef nonnull %th.0) #14
  br label %if.then79

if.then79:                                        ; preds = %out.thread189, %if.end63.if.then79_crit_edge
  %ret.2192 = phi i32 [ %call73, %out.thread189 ], [ 0, %if.end63.if.then79_crit_edge ]
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %46) #14
  br label %if.end81

if.end81:                                         ; preds = %if.end96, %journal_error.thread.if.end81_crit_edge, %journal_error.if.end81_crit_edge, %if.then79, %if.end63.thread.if.end81_crit_edge
  %ret.2188 = phi i32 [ %ret.2192, %if.then79 ], [ 0, %if.end63.thread.if.end81_crit_edge ], [ %call59, %journal_error.if.end81_crit_edge ], [ %call97, %if.end96 ], [ %call52, %journal_error.thread.if.end81_crit_edge ]
  call void @unlock_page(ptr noundef %page) #14
  %47 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i162 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162)
  %tobool.not.i.i = icmp eq i32 %and.i.i162, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %49, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %50, %if.end.i.i ]
  %51 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %52 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i.i = icmp eq i32 %53, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.35) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !110
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %54 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@reiserfs_write_end, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !114

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__put_page(ptr noundef %51) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %conv82 = zext i32 %len to i64
  %add83 = add i64 %spec.select, %conv82
  %55 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add83, i64 %56)
  %cmp85 = icmp sgt i64 %add83, %56
  br i1 %cmp85, label %if.then87, label %put_page.exit.if.end88_crit_edge

put_page.exit.if.end88_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then87:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %57 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_mapping.i, align 8
  call void @truncate_inode_pages(ptr noundef %58, i64 noundef %56) #14
  %call.i = call i32 @reiserfs_truncate_file(ptr noundef %3, i32 noundef 0) #14
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %put_page.exit.if.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2188)
  %cmp89 = icmp eq i32 %ret.2188, 0
  %copied.addr.1.ret.2 = select i1 %cmp89, i32 %copied.addr.1, i32 %ret.2188
  ret i32 %copied.addr.1.ret.2

journal_error:                                    ; preds = %if.end55
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %60) #14
  %tobool92.not = icmp eq ptr %th.0, null
  br i1 %tobool92.not, label %journal_error.if.end81_crit_edge, label %journal_error.if.end96_crit_edge

journal_error.if.end96_crit_edge:                 ; preds = %journal_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

journal_error.if.end81_crit_edge:                 ; preds = %journal_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

journal_error.thread:                             ; preds = %if.end50
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %myth) #14
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %62) #14
  %tobool92.not194 = icmp eq ptr %th.0, null
  br i1 %tobool92.not194, label %journal_error.thread.if.end81_crit_edge, label %if.then95

journal_error.thread.if.end81_crit_edge:          ; preds = %journal_error.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then95:                                        ; preds = %journal_error.thread
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th.0, ptr noundef %3, i64 noundef %64) #14
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %journal_error.if.end96_crit_edge
  %call97 = call i32 @reiserfs_end_persistent_transaction(ptr noundef nonnull %th.0) #14
  br label %if.end81
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @reiserfs_aop_bmap(ptr noundef %as, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %as, i64 noundef %block, ptr noundef nonnull @reiserfs_bmap) #14
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add = add i32 %length, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp ne i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ult i32 %length, 4096
  %spec.select = or i1 %tobool.not, %cmp
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !98

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !102

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.42) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !102

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i25.i = add i32 %12, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %15, %if.end.i27.i ]
  %16 = inttoptr i32 %retval.0.i28.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool1.not, label %do.body5, label %do.end10, !prof !98

do.body5:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3161, 0\0A.popsection", ""() #14, !srcloc !152
  unreachable

do.end10:                                         ; preds = %PageLocked.exit
  br i1 %spec.select, label %do.end10.if.end13_crit_edge, label %if.then12

do.end10.if.end13_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %do.end10
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i85 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i85, label %PageCompound.exit.i, label %if.then12.if.then.i86_crit_edge

if.then12.if.then.i86_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i86

PageCompound.exit.i:                              ; preds = %if.then12
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i86_crit_edge, !prof !102

PageCompound.exit.i.if.then.i86_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i86

if.then.i86:                                      ; preds = %PageCompound.exit.i.if.then.i86_crit_edge, %if.then12.if.then.i86_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i87 = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i87, label %if.then16.i, label %ClearPageChecked.exit, !prof !98

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #14
  br label %if.end13

if.end13:                                         ; preds = %ClearPageChecked.exit, %do.end10.if.end13_crit_edge
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i88 = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i88, label %if.then.i89, label %PagePrivate.exit, !prof !98

if.then.i89:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit:                                 ; preds = %if.end13
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not = icmp eq i32 %30, 0
  br i1 %tobool15.not, label %PagePrivate.exit.cleanup59_crit_edge, label %do.body18

PagePrivate.exit.cleanup59_crit_edge:             ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

do.body18:                                        ; preds = %PagePrivate.exit
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i91 = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i91, label %if.then.i92, label %PagePrivate.exit95, !prof !98

if.then.i92:                                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit95:                               ; preds = %do.body18
  %33 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %page, align 4
  %35 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20.not = icmp eq i32 %35, 0
  br i1 %tobool20.not, label %do.body30, label %do.end38, !prof !98

do.body30:                                        ; preds = %PagePrivate.exit95
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3169, 0\0A.popsection", ""() #14, !srcloc !153
  unreachable

do.end38:                                         ; preds = %PagePrivate.exit95
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %private, align 4
  %38 = inttoptr i32 %37 to ptr
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %i_flags.i.i = getelementptr i8, ptr %3, i32 -248
  br label %do.body39

do.body39:                                        ; preds = %do.cond51.do.body39_crit_edge, %do.end38
  %bh.0 = phi ptr [ %38, %do.end38 ], [ %42, %do.cond51.do.body39_crit_edge ]
  %curr_off.0 = phi i32 [ 0, %do.end38 ], [ %add40, %do.cond51.do.body39_crit_edge ]
  %ret.0 = phi i32 [ 1, %do.end38 ], [ %ret.2.ph, %do.cond51.do.body39_crit_edge ]
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 4
  %39 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %b_size, align 8
  %add40 = add i32 %40, %curr_off.0
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %41 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_this_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %add)
  %cmp41 = icmp ugt i32 %add40, %add
  br i1 %cmp41, label %do.body39.cleanup59_crit_edge, label %if.end43

do.body39.cleanup59_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end43:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_off.0, i32 %offset)
  %cmp44.not = icmp ult i32 %curr_off.0, %offset
  br i1 %cmp44.not, label %if.end43.do.cond51_crit_edge, label %if.then45

if.end43.do.cond51_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond51

if.then45:                                        ; preds = %if.end43
  %43 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_journal.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 366) #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #14
  %49 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.then45.if.then.i.i96_crit_edge

if.then45.if.then.i.i96_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i96

trylock_buffer.exit.i.i:                          ; preds = %if.then45
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #14
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0, ptr %bh.0, i32 4, ptr elementtype(i32) %bh.0) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !133
  %52 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i.i96_crit_edge

trylock_buffer.exit.i.i.if.then.i.i96_crit_edge:  ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i96

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_buffer.exit.i

if.then.i.i96:                                    ; preds = %trylock_buffer.exit.i.i.if.then.i.i96_crit_edge, %if.then45.if.then.i.i96_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.0) #14
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i.i96, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %j_dirty_buffers_lock.i = getelementptr inbounds %struct.reiserfs_journal, ptr %48, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %j_dirty_buffers_lock.i) #14
  %53 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bh.0, align 4
  %55 = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i97 = icmp eq i32 %55, 0
  br i1 %tobool.not.i97, label %lock_buffer.exit.i.land.lhs.true26.i_crit_edge, label %if.end.i

lock_buffer.exit.i.land.lhs.true26.i_crit_edge:   ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26.i

if.end.i:                                         ; preds = %lock_buffer.exit.i
  %56 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_mount_opt.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i.i98 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %and.i.i98, 0
  br i1 %tobool.not.i.i99, label %reiserfs_file_data_log.exit.i, label %if.end.i.if.then4.i_crit_edge

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

reiserfs_file_data_log.exit.i:                    ; preds = %if.end.i
  %62 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_flags.i.i, align 8
  %64 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool3.not.i = icmp eq i32 %64, 0
  br i1 %tobool3.not.i, label %if.else.i, label %reiserfs_file_data_log.exit.i.if.then4.i_crit_edge

reiserfs_file_data_log.exit.i.if.then4.i_crit_edge: ; preds = %reiserfs_file_data_log.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.then4.i:                                       ; preds = %reiserfs_file_data_log.exit.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %65 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %bh.0, align 4
  %67 = and i32 %66, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool6.not.i = icmp eq i32 %67, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %do.cond51.critedge

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %68 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %bh.0, align 4
  %70 = and i32 %69, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool8.not.i = icmp eq i32 %70, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.land.lhs.true26.i_crit_edge, label %do.cond51.critedge108

lor.lhs.false.i.land.lhs.true26.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26.i

if.else.i:                                        ; preds = %reiserfs_file_data_log.exit.i
  %71 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %bh.0, align 4
  %73 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool12.not.i = icmp eq i32 %73, 0
  br i1 %tobool12.not.i, label %if.else.i.land.lhs.true26.i_crit_edge, label %if.then13.i

if.else.i.land.lhs.true26.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26.i

if.then13.i:                                      ; preds = %if.else.i
  %b_private.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 8
  %74 = ptrtoint ptr %b_private.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_private.i, align 8
  %tobool14.not.i = icmp eq ptr %75, null
  br i1 %tobool14.not.i, label %if.then13.i.land.lhs.true26.i_crit_edge, label %land.lhs.true.i

if.then13.i.land.lhs.true26.i_crit_edge:          ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26.i

land.lhs.true.i:                                  ; preds = %if.then13.i
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %tobool16.not.i = icmp eq ptr %77, null
  br i1 %tobool16.not.i, label %land.lhs.true.i.land.lhs.true26.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i.land.lhs.true26.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %s_journal20.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %59, i32 0, i32 3
  %78 = ptrtoint ptr %s_journal20.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_journal20.i, align 4
  %j_current_jl.i = getelementptr inbounds %struct.reiserfs_journal, ptr %79, i32 0, i32 35
  %80 = ptrtoint ptr %j_current_jl.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %j_current_jl.i, align 4
  %cmp.not.i = icmp eq ptr %77, %81
  br i1 %cmp.not.i, label %land.lhs.true17.i.land.lhs.true26.i_crit_edge, label %do.cond51.critedge109

land.lhs.true17.i.land.lhs.true26.i_crit_edge:    ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26.i

land.lhs.true26.i:                                ; preds = %land.lhs.true17.i.land.lhs.true26.i_crit_edge, %land.lhs.true.i.land.lhs.true26.i_crit_edge, %if.then13.i.land.lhs.true26.i_crit_edge, %if.else.i.land.lhs.true26.i_crit_edge, %lor.lhs.false.i.land.lhs.true26.i_crit_edge, %lock_buffer.exit.i.land.lhs.true26.i_crit_edge
  %b_private27.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 8
  %82 = ptrtoint ptr %b_private27.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_private27.i, align 8
  %tobool28.not.i = icmp eq ptr %83, null
  br i1 %tobool28.not.i, label %land.lhs.true26.i.invalidatepage_can_drop.exit_crit_edge, label %if.then29.i

land.lhs.true26.i.invalidatepage_can_drop.exit_crit_edge: ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %invalidatepage_can_drop.exit

if.then29.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_free_jh(ptr noundef %bh.0) #14
  br label %invalidatepage_can_drop.exit

invalidatepage_can_drop.exit:                     ; preds = %if.then29.i, %land.lhs.true26.i.invalidatepage_can_drop.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock.i) #14
  tail call void @unlock_buffer(ptr noundef %bh.0) #14
  tail call void @reiserfs_unmap_buffer(ptr noundef %bh.0) #14
  br label %do.cond51

do.cond51.critedge:                               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock.i) #14
  tail call void @unlock_buffer(ptr noundef %bh.0) #14
  br label %do.cond51

do.cond51.critedge108:                            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock.i) #14
  tail call void @unlock_buffer(ptr noundef %bh.0) #14
  br label %do.cond51

do.cond51.critedge109:                            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock.i) #14
  tail call void @unlock_buffer(ptr noundef %bh.0) #14
  br label %do.cond51

do.cond51:                                        ; preds = %do.cond51.critedge109, %do.cond51.critedge108, %do.cond51.critedge, %invalidatepage_can_drop.exit, %if.end43.do.cond51_crit_edge
  %ret.2.ph = phi i32 [ %ret.0, %if.end43.do.cond51_crit_edge ], [ %ret.0, %invalidatepage_can_drop.exit ], [ 0, %do.cond51.critedge ], [ 0, %do.cond51.critedge108 ], [ 0, %do.cond51.critedge109 ]
  %cmp52.not = icmp eq ptr %42, %38
  br i1 %cmp52.not, label %do.end53, label %do.cond51.do.body39_crit_edge

do.cond51.do.body39_crit_edge:                    ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body39

do.end53:                                         ; preds = %do.cond51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.ph)
  %tobool55.not = icmp eq i32 %ret.2.ph, 0
  %or.cond = select i1 %spec.select, i1 true, i1 %tobool55.not
  br i1 %or.cond, label %do.end53.cleanup59_crit_edge, label %if.then56

do.end53.cleanup59_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.then56:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #16
  %call57 = tail call i32 @try_to_release_page(ptr noundef %page, i32 noundef 0) #14
  br label %cleanup59

cleanup59:                                        ; preds = %if.then56, %do.end53.cleanup59_crit_edge, %do.body39.cleanup59_crit_edge, %PagePrivate.exit.cleanup59_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_releasepage(ptr noundef %page, i32 noundef %unused_gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_journal, align 4
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !98

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #14, !srcloc !130
  unreachable

PageChecked.exit:                                 ; preds = %entry
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  %14 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %PageChecked.exit.if.end_crit_edge, label %do.end, !prof !102

PageChecked.exit.if.end_crit_edge:                ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 3231, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %PageChecked.exit.if.end_crit_edge
  %j_dirty_buffers_lock = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %j_dirty_buffers_lock) #14
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i73 = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i73, label %if.then.i74, label %PagePrivate.exit, !prof !98

if.then.i74:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool23.not = icmp eq i32 %19, 0
  br i1 %tobool23.not, label %do.body33, label %do.end41, !prof !98

do.body33:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3233, 0\0A.popsection", ""() #14, !srcloc !154
  unreachable

do.end41:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private, align 4
  %22 = inttoptr i32 %21 to ptr
  br label %do.body43

do.body43:                                        ; preds = %if.end52.do.body43_crit_edge, %do.end41
  %bh.0 = phi ptr [ %22, %do.end41 ], [ %32, %if.end52.do.body43_crit_edge ]
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 8
  %23 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_private, align 8
  %tobool44.not = icmp eq ptr %24, null
  br i1 %tobool44.not, label %do.body43.if.end52_crit_edge, label %if.then45

do.body43.if.end52_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then45:                                        ; preds = %do.body43
  %25 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %bh.0, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  br i1 %tobool47.not, label %land.lhs.true, label %if.then45.if.end58_crit_edge

if.then45.if.end58_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true:                                    ; preds = %if.then45
  %28 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %bh.0, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool49.not = icmp eq i32 %30, 0
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @reiserfs_free_jh(ptr noundef %bh.0) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %do.body43.if.end52_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %31 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %32, %22
  br i1 %cmp.not, label %if.then56.critedge, label %if.end52.do.body43_crit_edge

if.end52.do.body43_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43

if.then56.critedge:                               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %call57 = tail call i32 @try_to_free_buffers(ptr noundef %page) #14
  br label %if.end58

if.end58:                                         ; preds = %if.then56.critedge, %land.lhs.true.if.end58_crit_edge, %if.then45.if.end58_crit_edge
  %ret.1 = phi i32 [ %call57, %if.then56.critedge ], [ 0, %if.then45.if.end58_crit_edge ], [ 0, %land.lhs.true.if.end58_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock) #14
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %11, ptr noundef %iter, ptr noundef nonnull @reiserfs_get_blocks_direct_io, ptr noundef null, ptr noundef null, i32 noundef 3) #14
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %12 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_source.i, align 2, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %spec.select, label %if.then, label %entry.if.end15_crit_edge, !prof !98

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

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
  br i1 %cmp9, label %land.lhs.true, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then
  %call11 = tail call i32 @inode_newsize_ok(ptr noundef %5, i64 noundef %call7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @truncate_setsize(ptr noundef %5, i64 noundef %call7) #14
  tail call void @reiserfs_vfs_truncate_file(ptr noundef %5) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunmap(ptr noundef %page) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 55) #14
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %shr.i, label %entry.return_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.end_crit_edge, label %is_highmem_idx.exit.return_crit_edge

is_highmem_idx.exit.return_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_highmem_idx.exit.if.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %is_highmem_idx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #14
  br label %return

return:                                           ; preds = %if.end, %is_highmem_idx.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !102

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.23) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !103
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap(ptr noundef %page) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 44) #14
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %shr.i, label %entry.if.then_crit_edge [
    i32 2, label %entry.if.else_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.else_crit_edge, label %is_highmem_idx.exit.if.then_crit_edge

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call ptr @page_address(ptr noundef %page) #14
  br label %if.end

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call6 = tail call ptr @kmap_high(ptr noundef %page) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addr.0 = phi ptr [ %call6, %if.else ], [ %call5, %if.then ]
  ret ptr %addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_allocate_blocknrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inode_get_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_item_v1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_get_block_create_0(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reiserfs_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_async_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_zero_new_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_bmap(ptr nocapture noundef readonly %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %file_capable.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

file_capable.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = lshr i32 -2147483648, %conv.i
  %conv1.i = sext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv1.i, i64 %block)
  %cmp2.i.not = icmp ugt i64 %conv1.i, %block
  br i1 %cmp2.i.not, label %file_capable.exit.if.end_crit_edge, label %file_capable.exit.return_crit_edge

file_capable.exit.return_crit_edge:               ; preds = %file_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

file_capable.exit.if.end_crit_edge:               ; preds = %file_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %file_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %7) #14
  %call1 = tail call fastcc i32 @_get_block_create_0(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef 0)
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %9) #14
  br label %return

return:                                           ; preds = %if.end, %file_capable.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -27, %file_capable.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_free_jh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_get_blocks_direct_io(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %b_page, align 8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %1 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %3 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl.i, ptr %b_size, align 8
  %or = or i32 %create, 16
  %call1 = tail call i32 @reiserfs_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh_result, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %7 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh_result) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ -22, %if.then4 ], [ 0, %land.lhs.true.if.end5_crit_edge ], [ 0, %if.end.if.end5_crit_edge ]
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %9 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.then8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %12) #14
  %call9 = tail call i32 @reiserfs_commit_for_inode(ptr noundef %inode) #14
  %13 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags, align 8
  %and12 = and i32 %14, -5
  store i32 %and12, ptr %i_flags, align 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp14 = icmp slt i32 %call9, 0
  %spec.select = select i1 %cmp14, i32 %call9, i32 %ret.0
  br label %out

out:                                              ; preds = %if.then8, %if.end5.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %call1, %entry.out_crit_edge ], [ %spec.select, %if.then8 ], [ %ret.0, %if.end5.out_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_vfs_truncate_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_commit_for_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !76, !77, !79, !81, !83, !85}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/inode.c", i32 933, i32 7}
!2 = !{ptr @__func__.reiserfs_get_block, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/inode.c", i32 1022, i32 4}
!6 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/reiserfs/inode.c", i32 1036, i32 4}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/reiserfs/inode.c", i32 1131, i32 4}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/inode.c", i32 1465, i32 4}
!14 = !{ptr @__func__.reiserfs_update_sd_size, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/reiserfs/inode.c", i32 1477, i32 4}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/reiserfs/inode.c", i32 1559, i32 3}
!21 = !{ptr @__func__.reiserfs_read_locked_inode, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/reiserfs/inode.c", i32 1597, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/reiserfs/inode.c", i32 1704, i32 4}
!28 = !{ptr @__func__.reiserfs_fh_to_dentry, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/inode.c", i32 2114, i32 3}
!32 = !{ptr @__func__.reiserfs_new_inode, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/reiserfs/inode.c", i32 2285, i32 5}
!36 = !{ptr @__func__.reiserfs_truncate_file, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @reiserfs_address_space_operations, !39, !"reiserfs_address_space_operations", i1 false, i1 false}
!39 = !{!"../fs/reiserfs/inode.c", i32 3428, i32 39}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/reiserfs/inode.c", i32 1432, i32 3}
!48 = !{ptr @__func__.update_stat_data, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @reiserfs_init_xattr_rwsem.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/xattr.h", i32 88, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/reiserfs/inode.c", i32 1841, i32 3}
!55 = !{ptr @__func__.reiserfs_new_directory, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/reiserfs/inode.c", i32 1847, i32 3}
!59 = !{ptr @__func__.reiserfs_new_symlink, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/inode.c", i32 1884, i32 3}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/reiserfs/inode.c", i32 2239, i32 3}
!64 = !{ptr @__func__.grab_tail_page, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/mm.h", i32 717, i32 2}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/reiserfs/inode.c", i32 2414, i32 4}
!72 = !{ptr @__func__.map_block_for_writepage, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/inode.c", i32 2472, i32 3}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/page-flags.h", i32 461, i32 1}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/reiserfs/inode.c", i32 3231, i32 2}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2154175465, i64 2154175953, i64 2154175502, i64 2154175558, i64 2154175592, i64 2154175616, i64 2154175657, i64 2154175678, i64 2154175706, i64 2154175740}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2155183800, i64 2155184284, i64 2155183837, i64 2155183893, i64 2155183927, i64 2155183951, i64 2155183992, i64 2155184013, i64 2155184041, i64 2155184075}
!100 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!101 = !{i64 2155187508, i64 2155187992, i64 2155187545, i64 2155187601, i64 2155187635, i64 2155187659, i64 2155187700, i64 2155187721, i64 2155187749, i64 2155187783}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2150653497, i64 2150653988, i64 2150653534, i64 2150653590, i64 2150653624, i64 2150653648, i64 2150653689, i64 2150653710, i64 2150653738, i64 2150653772}
!104 = !{i64 2151403389}
!105 = !{i64 2155180711, i64 2155181195, i64 2155180748, i64 2155180804, i64 2155180838, i64 2155180862, i64 2155180903, i64 2155180924, i64 2155180952, i64 2155180986}
!106 = !{i64 2155176930, i64 2155177414, i64 2155176967, i64 2155177023, i64 2155177057, i64 2155177081, i64 2155177122, i64 2155177143, i64 2155177171, i64 2155177205}
!107 = !{i64 2155178516, i64 2155179000, i64 2155178553, i64 2155178609, i64 2155178643, i64 2155178667, i64 2155178708, i64 2155178729, i64 2155178757, i64 2155178791}
!108 = !{i64 2151112203, i64 2151112694, i64 2151112240, i64 2151112296, i64 2151112330, i64 2151112354, i64 2151112395, i64 2151112416, i64 2151112444, i64 2151112478}
!109 = !{i64 2155174660, i64 2155175144, i64 2155174697, i64 2155174753, i64 2155174787, i64 2155174811, i64 2155174852, i64 2155174873, i64 2155174901, i64 2155174935}
!110 = !{i64 2153829500, i64 2153829983, i64 2153829537, i64 2153829593, i64 2153829627, i64 2153829651, i64 2153829692, i64 2153829713, i64 2153829741, i64 2153829775}
!111 = !{i64 2148380954}
!112 = !{i64 2148295687, i64 2148295719, i64 2148295748, i64 2148295782, i64 2148295813, i64 2148295836}
!113 = !{i64 2148381183}
!114 = !{i64 2149142843, i64 2149142848, i64 2149142861, i64 2149142905, i64 2149142939, i64 2149142960}
!115 = !{i64 2155207714, i64 2155208199, i64 2155207751, i64 2155207807, i64 2155207841, i64 2155207865, i64 2155207906, i64 2155207927, i64 2155207955, i64 2155207989}
!116 = !{!"auto-init"}
!117 = !{i64 2155218117, i64 2155218602, i64 2155218154, i64 2155218210, i64 2155218244, i64 2155218268, i64 2155218309, i64 2155218330, i64 2155218358, i64 2155218392}
!118 = !{i64 2155212954, i64 2155213439, i64 2155212991, i64 2155213047, i64 2155213081, i64 2155213105, i64 2155213146, i64 2155213167, i64 2155213195, i64 2155213229}
!119 = !{i64 2155215805, i64 2155216290, i64 2155215842, i64 2155215898, i64 2155215932, i64 2155215956, i64 2155215997, i64 2155216018, i64 2155216046, i64 2155216080}
!120 = !{i64 2155224208, i64 2155224693, i64 2155224245, i64 2155224301, i64 2155224335, i64 2155224359, i64 2155224400, i64 2155224421, i64 2155224449, i64 2155224483}
!121 = !{i64 2155240348, i64 2155240833, i64 2155240385, i64 2155240441, i64 2155240475, i64 2155240499, i64 2155240540, i64 2155240561, i64 2155240589, i64 2155240623}
!122 = !{i64 2155241937, i64 2155242422, i64 2155241974, i64 2155242030, i64 2155242064, i64 2155242088, i64 2155242129, i64 2155242150, i64 2155242178, i64 2155242212}
!123 = !{i64 685780, i64 685841}
!124 = !{i64 688512}
!125 = !{i64 688797}
!126 = !{i64 2152587583}
!127 = !{i64 2152587425}
!128 = !{i64 2152587753}
!129 = !{i64 2150197218}
!130 = !{i64 2150901836, i64 2150902327, i64 2150901873, i64 2150901929, i64 2150901963, i64 2150901987, i64 2150902028, i64 2150902049, i64 2150902077, i64 2150902111}
!131 = !{i64 2155228009, i64 2155228494, i64 2155228046, i64 2155228102, i64 2155228136, i64 2155228160, i64 2155228201, i64 2155228222, i64 2155228250, i64 2155228284}
!132 = !{i64 2148301360, i64 2148301392, i64 2148301421, i64 2148301455, i64 2148301486, i64 2148301509}
!133 = !{i64 2148390441}
!134 = !{i64 2150918026, i64 2150918199, i64 2150918214, i64 2150918266, i64 2150918325, i64 2150918349, i64 2150918390, i64 2150918411, i64 2150918439, i64 2150918471}
!135 = !{i64 2150918797, i64 2150918970, i64 2150918985, i64 2150919037, i64 2150919096, i64 2150919120, i64 2150919161, i64 2150919182, i64 2150919210, i64 2150919242}
!136 = !{i64 2148292502, i64 2148292528, i64 2148292557, i64 2148292591, i64 2148292622, i64 2148292645}
!137 = !{i64 2151169351, i64 2151169842, i64 2151169388, i64 2151169444, i64 2151169478, i64 2151169502, i64 2151169543, i64 2151169564, i64 2151169592, i64 2151169626}
!138 = !{i64 2155229752, i64 2155230237, i64 2155229789, i64 2155229845, i64 2155229879, i64 2155229903, i64 2155229944, i64 2155229965, i64 2155229993, i64 2155230027}
!139 = !{i64 2154139621}
!140 = !{i64 2148294967, i64 2148294993, i64 2148295022, i64 2148295056, i64 2148295087, i64 2148295110}
!141 = !{i64 2151404460}
!142 = !{i64 2151412373, i64 2151412546, i64 2151412561, i64 2151412613, i64 2151412672, i64 2151412696, i64 2151412737, i64 2151412758, i64 2151412786, i64 2151412818}
!143 = !{i64 2151413248, i64 2151413421, i64 2151413436, i64 2151413488, i64 2151413547, i64 2151413571, i64 2151413612, i64 2151413633, i64 2151413661, i64 2151413693}
!144 = !{i64 2150715087, i64 2150715260, i64 2150715275, i64 2150715327, i64 2150715386, i64 2150715410, i64 2150715451, i64 2150715472, i64 2150715500, i64 2150715532}
!145 = !{i64 2150715962, i64 2150716135, i64 2150716150, i64 2150716202, i64 2150716261, i64 2150716285, i64 2150716326, i64 2150716347, i64 2150716375, i64 2150716407}
!146 = !{i64 2155231349, i64 2155231834, i64 2155231386, i64 2155231442, i64 2155231476, i64 2155231500, i64 2155231541, i64 2155231562, i64 2155231590, i64 2155231624}
!147 = !{i64 2150909879, i64 2150910052, i64 2150910067, i64 2150910119, i64 2150910178, i64 2150910202, i64 2150910243, i64 2150910264, i64 2150910292, i64 2150910324}
!148 = !{i64 2150910650, i64 2150910823, i64 2150910838, i64 2150910890, i64 2150910949, i64 2150910973, i64 2150911014, i64 2150911035, i64 2150911063, i64 2150911095}
!149 = !{i64 2155233021, i64 2155237567, i64 2155233058, i64 2155233114, i64 2155233148, i64 2155233172, i64 2155233213, i64 2155233234, i64 2155233262, i64 2155233296}
!150 = !{i64 2155238671, i64 2155239156, i64 2155238708, i64 2155238764, i64 2155238798, i64 2155238822, i64 2155238863, i64 2155238884, i64 2155238912, i64 2155238946}
!151 = !{i64 2150660930, i64 2150661421, i64 2150660967, i64 2150661023, i64 2150661057, i64 2150661081, i64 2150661122, i64 2150661143, i64 2150661171, i64 2150661205}
!152 = !{i64 2155244616, i64 2155245101, i64 2155244653, i64 2155244709, i64 2155244743, i64 2155244767, i64 2155244808, i64 2155244829, i64 2155244857, i64 2155244891}
!153 = !{i64 2155246345, i64 2155246830, i64 2155246382, i64 2155246438, i64 2155246472, i64 2155246496, i64 2155246537, i64 2155246558, i64 2155246586, i64 2155246620}
!154 = !{i64 2155248615, i64 2155249100, i64 2155248652, i64 2155248708, i64 2155248742, i64 2155248766, i64 2155248807, i64 2155248828, i64 2155248856, i64 2155248890}
!155 = !{i8 0, i8 2}
