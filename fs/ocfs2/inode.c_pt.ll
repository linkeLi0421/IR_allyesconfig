; ModuleID = '/llk/IR_all_yes/fs/ocfs2/inode.c_pt.bc'
source_filename = "../fs/ocfs2/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.ocfs2_caching_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.ocfs2_inode_info = type { i64, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, i32, %struct.list_head, i32, i16, %struct.mutex, i32, i32, %struct.list_head, ptr, %struct.ocfs2_caching_info, %struct.ocfs2_extent_map, %struct.inode, %struct.jbd2_inode, i32, i32, i64, i32, %struct.ocfs2_alloc_reservation, i32, i32, [3 x ptr] }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.81, ptr }
%union.anon.81 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_caching_info = type { ptr, i32, i32, i32, i32, %union.anon.82 }
%union.anon.82 = type { [2 x i64] }
%struct.ocfs2_extent_map = type { i32, %struct.list_head }
%struct.jbd2_inode = type { ptr, ptr, %struct.list_head, ptr, i32, i64, i64 }
%struct.ocfs2_alloc_reservation = type { %struct.rb_node, i32, i32, i32, i32, %struct.list_head, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ocfs2_find_inode_args = type { i64, i32, i32, i32 }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.85, %union.anon.89 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.85 = type { i64 }
%union.anon.89 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.90, [16 x i8] }
%union.anon.90 = type { i32 }
%struct.ocfs2_journal = type { i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.work_struct }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.jbd2_journal_handle = type { %union.anon.94, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.94 = type { ptr }

@__func__.ocfs2_iget = private unnamed_addr constant [11 x i8] c"ocfs2_iget\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INODE01\00", [24 x i8] zeroinitializer }, align 32
@ocfs2_fast_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@ocfs2_aops = external dso_local constant %struct.address_space_operations, align 4
@__func__.ocfs2_populate_inode = private unnamed_addr constant [21 x i8] c"ocfs2_populate_inode\00", align 1
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ip_blkno %llu != i_blkno %llu!\0A\00", [32 x i8] zeroinitializer }, align 32
@ocfs2_fops = external dso_local constant %struct.file_operations, align 4
@ocfs2_fops_no_plocks = external dso_local constant %struct.file_operations, align 4
@ocfs2_file_iops = external dso_local constant %struct.inode_operations, align 128
@ocfs2_dir_iops = external dso_local constant %struct.inode_operations, align 128
@ocfs2_dops = external dso_local constant %struct.file_operations, align 4
@ocfs2_dops_no_plocks = external dso_local constant %struct.file_operations, align 4
@ocfs2_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ocfs2_special_file_iops = external dso_local constant %struct.inode_operations, align 128
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ocfs2/inode.c\00", [47 x i8] zeroinitializer }, align 32
@__func__.ocfs2_inode_revalidate = private unnamed_addr constant [23 x i8] c"ocfs2_inode_revalidate\00", align 1
@__func__.ocfs2_mark_inode_dirty = private unnamed_addr constant [23 x i8] c"ocfs2_mark_inode_dirty\00", align 1
@__func__.ocfs2_validate_inode_block = private unnamed_addr constant [27 x i8] c"ocfs2_validate_inode_block\00", align 1
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Checksum failed for dinode %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_validate_inode_block = private unnamed_addr constant [75 x i8] c"int ocfs2_validate_inode_block(struct super_block *, struct buffer_head *)\00", align 1
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid dinode #%llu: signature = %.*s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid dinode #%llu: i_blkno is %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid dinode #%llu: OCFS2_VALID_FL not set\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid dinode #%llu: fs_generation is %u\0A\00", [53 x i8] zeroinitializer }, align 32
@ocfs2_inode_caching_ops = dso_local constant { %struct.ocfs2_caching_operations, [40 x i8] } { %struct.ocfs2_caching_operations { ptr @ocfs2_inode_cache_owner, ptr @ocfs2_inode_cache_get_super, ptr @ocfs2_inode_cache_lock, ptr @ocfs2_inode_cache_unlock, ptr @ocfs2_inode_cache_io_lock, ptr @ocfs2_inode_cache_io_unlock }, [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_iget_begin = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_iget_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_iget5_locked = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_iget5_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_iget_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_iget_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_find_actor = private unnamed_addr constant [17 x i8] c"ocfs2_find_actor\00", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bug expression: !inode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No inode in find actor!\0A\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_find_actor = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_find_actor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"&ocfs2_sysfile_lock_key[args->fi_sysfile_type]\00", [49 x i8] zeroinitializer }, align 32
@ocfs2_sysfile_lock_key = internal global { [15 x %struct.lock_class_key], [40 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&ocfs2_quota_ip_alloc_sem_key\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&ocfs2_file_ip_alloc_sem_key\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_populate_inode = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_populate_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_read_locked_inode = private unnamed_addr constant [24 x i8] c"ocfs2_read_locked_inode\00", align 1
@.str.18 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"bug expression: !!(fe->i_flags & cpu_to_le32(OCFS2_SYSTEM_FL)) != !!(args->fi_flags & OCFS2_FI_FLAG_SYSFILE)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Inode %llu: system file state is ambiguous\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_read_locked_inode = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_read_locked_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_filecheck_validate_inode_block = private unnamed_addr constant [37 x i8] c"ocfs2_filecheck_validate_inode_block\00", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Filecheck: checksum failed for dinode %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Filecheck: invalid dinode #%llu: signature = %.*s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Filecheck: invalid dinode #%llu: i_blkno is %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Filecheck: invalid dinode #%llu: OCFS2_VALID_FL not set\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Filecheck: invalid dinode #%llu: fs_generation is %u\0A\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_filecheck_validate_inode_block = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_filecheck_validate_inode_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_filecheck_repair_inode_block = private unnamed_addr constant [35 x i8] c"ocfs2_filecheck_repair_inode_block\00", align 1
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Filecheck: cannot repair dinode #%llu on readonly filesystem\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Filecheck: cannot repair dinode #%llu, its buffer is in jbd\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Filecheck: reset dinode #%llu: i_blkno to %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Filecheck: reset dinode #%llu: fs_generation to %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Filecheck: reset dinode #%llu: compute meta ecc\0A\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_filecheck_repair_inode_block = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_filecheck_repair_inode_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_delete_inode = private unnamed_addr constant [19 x i8] c"ocfs2_delete_inode\00", align 1
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"getting nfs sync lock(PR) failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_delete_inode = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_delete_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_inode_is_valid_to_delete = private unnamed_addr constant [31 x i8] c"ocfs2_inode_is_valid_to_delete\00", align 1
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Skipping delete of root inode.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Skipping delete of system file %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_inode_is_valid_to_delete = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_inode_is_valid_to_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_cleanup_delete_inode = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_cleanup_delete_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_query_inode_wipe = private unnamed_addr constant [23 x i8] c"ocfs2_query_inode_wipe\00", align 1
@.str.33 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Inode %llu (on-disk %llu) not orphaned! Disk flags  0x%x, inode flags 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_query_inode_wipe_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_query_inode_wipe_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_query_inode_wipe_succ = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_query_inode_wipe_succ.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_query_inode_wipe_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_query_inode_wipe_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_wipe_inode = private unnamed_addr constant [17 x i8] c"ocfs2_wipe_inode\00", align 1
@__tracepoint_ocfs2_check_orphan_recovery_state = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_check_orphan_recovery_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_truncate_for_delete = private unnamed_addr constant [26 x i8] c"ocfs2_truncate_for_delete\00", align 1
@__func__.ocfs2_remove_inode = private unnamed_addr constant [19 x i8] c"ocfs2_remove_inode\00", align 1
@__func__.ocfs2_clear_inode = private unnamed_addr constant [18 x i8] c"ocfs2_clear_inode\00", align 1
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bug expression: osb == NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Inode=%lu\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"bug expression: !list_empty(&oi->ip_io_markers)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Clear inode of %llu, inode has io markers\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bug expression: !list_empty(&oi->ip_unwritten_list)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Clear inode of %llu, inode has unwritten extents\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bug expression: INODE_CACHE(inode)->ci_num_cached\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Clear inode of %llu, inode has %u cache items\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"bug expression: !(INODE_CACHE(inode)->ci_flags & OCFS2_CACHE_FL_INLINE)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Clear inode of %llu, inode has a bad flag\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bug expression: spin_is_locked(&oi->ip_lock)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Clear inode of %llu, inode is locked\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bug expression: !mutex_trylock(&oi->ip_io_mutex)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Clear inode of %llu, io_mutex is locked\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bug expression: !down_write_trylock(&oi->ip_alloc_sem)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Clear inode of %llu, alloc_sem is locked\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bug expression: oi->ip_open_count\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Clear inode of %llu has open count %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_clear_inode = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_clear_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ocfs2/journal.h\00", [45 x i8] zeroinitializer }, align 32
@trans_inc_lock = external dso_local global %struct.spinlock, align 4
@__tracepoint_ocfs2_drop_inode = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_drop_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_inode_revalidate = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_inode_revalidate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_mark_inode_dirty = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_mark_inode_dirty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_validate_inode_block = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_validate_inode_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 13, i64 14]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967261, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 137, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 278, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 313, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1238, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1378, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1390, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1397, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1404, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1412, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"ocfs2_inode_caching_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1651, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1478, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 108, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 219, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [29 x i8] c"ocfs2_quota_ip_alloc_sem_key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 239, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"ocfs2_file_ip_alloc_sem_key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 240, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 245, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [23 x i8] c"ocfs2_sysfile_lock_key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 53, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 251, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 254, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 271, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 533, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1444, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1451, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1460, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1469, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1479, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1504, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1512, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1534, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1544, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1553, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1032, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 852, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 871, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 932, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1120, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1148, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1151, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1167, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1172, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1176, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1180, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1189, i32 2 }
@___asan_gen_.247 = private constant [20 x i8] c"../fs/ocfs2/inode.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1194, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [22 x i8] c"../fs/ocfs2/journal.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 204, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ocfs2_inode_caching_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key, ptr @ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key, ptr @.str.14, ptr @ocfs2_sysfile_lock_key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_inode_caching_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_sysfile_lock_key to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ocfs2_set_inode_flags(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_attr = getelementptr i8, ptr %inode, i32 -72
  %0 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip_attr, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, -80
  %and1 = lshr i32 %1, 1
  %4 = and i32 %and1, 8
  %5 = or i32 %4, %and
  %and3 = lshr i32 %1, 3
  %6 = and i32 %and3, 1
  %7 = or i32 %6, %5
  store i32 %7, ptr %i_flags, align 4
  %and9 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %entry.if.end14_crit_edge, label %if.then11

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %or13 = or i32 %9, 4
  store i32 %or13, ptr %i_flags, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %entry.if.end14_crit_edge
  %and15 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags, align 4
  %or19 = or i32 %11, 2
  store i32 %or19, ptr %i_flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %and21 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %or25 = or i32 %13, 64
  store i32 %or25, ptr %i_flags, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ocfs2_get_inode_flags(ptr nocapture noundef %oi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.ocfs2_inode_info, ptr %oi, i32 0, i32 18, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %ip_attr = getelementptr inbounds %struct.ocfs2_inode_info, ptr %oi, i32 0, i32 13
  %2 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip_attr, align 8
  %and = and i32 %3, -65721
  %and1 = shl i32 %1, 3
  %4 = and i32 %and1, 8
  %5 = or i32 %4, %and
  %6 = and i32 %and1, 32
  %7 = or i32 %6, %5
  store i32 %7, ptr %ip_attr, align 8
  %and9 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %entry.if.end14_crit_edge, label %if.then11

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip_attr, align 8
  %or13 = or i32 %9, 16
  store i32 %or13, ptr %ip_attr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %entry.if.end14_crit_edge
  %and15 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip_attr, align 8
  %or19 = or i32 %11, 128
  store i32 %or19, ptr %ip_attr, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %and21 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ip_attr, align 8
  %or25 = or i32 %13, 65536
  store i32 %or25, ptr %ip_attr, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_ilookup(ptr noundef %sb, i64 noundef %blkno) local_unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.ocfs2_find_inode_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %0 = getelementptr inbounds i8, ptr %args, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %blkno, ptr %args, align 8
  %fi_flags = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %fi_flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %fi_flags, align 4
  %conv.i = trunc i64 %blkno to i32
  %fi_ino = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %fi_ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %fi_ino, align 8
  %fi_sysfile_type = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %args, i32 0, i32 3
  %5 = ptrtoint ptr %fi_sysfile_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fi_sysfile_type, align 8
  %call1 = call ptr @ilookup5(ptr noundef %sb, i32 noundef %conv.i, ptr noundef nonnull @ocfs2_find_actor, ptr noundef nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_find_actor(ptr noundef %inode, ptr noundef %opaque) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %do.body1, label %do.end20

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_find_actor, i32 noundef 219, ptr noundef nonnull @.str.12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #10
  %1 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606846976, ptr %_m5, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.ocfs2_find_actor, i32 noundef 219, ptr noundef nonnull @.str.13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #10, !srcloc !196
  unreachable

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %opaque, align 8
  tail call fastcc void @trace_ocfs2_find_actor(ptr noundef nonnull %inode, i64 noundef %conv, ptr noundef %opaque, i64 noundef %5)
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %8 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %opaque, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.not = icmp eq i64 %7, %9
  %spec.select = zext i1 %cmp.not to i32
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_iget(ptr nocapture noundef readonly %osb, i64 noundef %blkno, i32 noundef %flags, i32 noundef %sysfile_type) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i381.i = alloca ptr, align 4
  %tmp.i372.i = alloca ptr, align 4
  %tmp.i.i = alloca ptr, align 4
  %bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m51.i = alloca i64, align 8
  %_m135.i = alloca i64, align 8
  %_m162.i = alloca i64, align 8
  %_m170.i = alloca i64, align 8
  %_m251.i = alloca i64, align 8
  %args = alloca %struct.ocfs2_find_inode_args, align 8
  %_m = alloca i64, align 8
  %_m40 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %2 = call ptr @memset(ptr %args, i32 255, i32 24)
  tail call fastcc void @trace_ocfs2_iget_begin(i64 noundef %blkno, i32 noundef %flags, i32 noundef %sysfile_type)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blkno)
  %cmp = icmp eq i64 %blkno, 0
  br i1 %cmp, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_iget, i32 noundef 137, ptr noundef nonnull @.str, i64 noundef -22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end80

if.end14:                                         ; preds = %entry
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %blkno, ptr %args, align 8
  %fi_flags = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %args, i32 0, i32 2
  %5 = ptrtoint ptr %fi_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %fi_flags, align 4
  %conv.i = trunc i64 %blkno to i32
  %fi_ino = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %args, i32 0, i32 1
  %6 = ptrtoint ptr %fi_ino to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %fi_ino, align 8
  %fi_sysfile_type = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %args, i32 0, i32 3
  %7 = ptrtoint ptr %fi_sysfile_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sysfile_type, ptr %fi_sysfile_type, align 8
  %call17 = call ptr @iget5_locked(ptr noundef %1, i32 noundef %conv.i, ptr noundef nonnull @ocfs2_find_actor, ptr noundef nonnull @ocfs2_init_locked_inode, ptr noundef nonnull %args) #10
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %do.body39, label %if.end50

do.body39:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #10
  %8 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m40, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.ocfs2_iget, i32 noundef 153, ptr noundef nonnull @.str, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #10
  br label %if.end80

if.end50:                                         ; preds = %if.end14
  %i_state = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 24
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 8
  %conv51 = zext i32 %10 to i64
  call fastcc void @trace_ocfs2_iget5_locked(i64 noundef %conv51)
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and53 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end50.if.end57_crit_edge, label %if.then55

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #10
  %13 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bh.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %18 = ptrtoint ptr %fi_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fi_flags, align 4
  %20 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %land.rhs.i, label %if.then55.land.end.i_crit_edge

if.then55.land.end.i_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then55
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 19
  %22 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %land.rhs.i.ocfs2_mount_local.exit.i_crit_edge

land.rhs.i.ocfs2_mount_local.exit.i_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_mount_local.exit.i

lor.rhs.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %s_mount_opt.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 28
  %24 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_mount_opt.i.i, align 8
  %and1.i.i = lshr i32 %25, 18
  %and1.lobit.i.i = and i32 %and1.i.i, 1
  br label %ocfs2_mount_local.exit.i

ocfs2_mount_local.exit.i:                         ; preds = %lor.rhs.i.i, %land.rhs.i.ocfs2_mount_local.exit.i_crit_edge
  %26 = phi i32 [ 1, %land.rhs.i.ocfs2_mount_local.exit.i_crit_edge ], [ %and1.lobit.i.i, %lor.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.not.i = icmp eq i32 %26, 0
  br label %land.end.i

land.end.i:                                       ; preds = %ocfs2_mount_local.exit.i, %if.then55.land.end.i_crit_edge
  %27 = phi i1 [ false, %if.then55.land.end.i_crit_edge ], [ %tobool4.not.i, %ocfs2_mount_local.exit.i ]
  %land.ext.i = zext i1 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call17, i32 -1608
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.i.i, align 8
  call fastcc void @trace_ocfs2_read_locked_inode(i64 noundef %29, i32 noundef %land.ext.i) #10
  %30 = ptrtoint ptr %fi_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fi_flags, align 4
  %and7.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.end.i.if.end.i_crit_edge, label %if.then.i

land.end.i.if.end.i_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fs_generation.i = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 17
  %32 = ptrtoint ptr %fs_generation.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fs_generation.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.end.i.if.end.i_crit_edge
  %generation.0.i = phi i32 [ %33, %if.then.i ], [ 0, %land.end.i.if.end.i_crit_edge ]
  %ip_inode_lockres.i = getelementptr i8, ptr %call17, i32 -1208
  call void @ocfs2_inode_lock_res_init(ptr noundef %ip_inode_lockres.i, i32 noundef 0, i32 noundef %generation.0.i, ptr noundef nonnull %call17) #10
  %ip_open_lockres.i = getelementptr i8, ptr %call17, i32 -816
  call void @ocfs2_inode_lock_res_init(ptr noundef %ip_open_lockres.i, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %call17) #10
  br i1 %27, label %if.then12.i, label %if.end.i.if.end62.i_crit_edge

if.end.i.if.end62.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

if.then12.i:                                      ; preds = %if.end.i
  %call13.i = call i32 @ocfs2_open_lock(ptr noundef nonnull %call17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end30.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @make_bad_inode(ptr noundef nonnull %call17) #10
  %34 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13.i, label %do.body.i [
    i32 -512, label %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge
    i32 -4, label %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge127
    i32 524289, label %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge128
    i32 -28, label %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge129
    i32 -122, label %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge130
  ]

if.then15.i.ocfs2_read_locked_inode.exit_crit_edge130: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then15.i.ocfs2_read_locked_inode.exit_crit_edge129: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then15.i.ocfs2_read_locked_inode.exit_crit_edge128: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then15.i.ocfs2_read_locked_inode.exit_crit_edge127: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then15.i.ocfs2_read_locked_inode.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

do.body.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %35 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i122 = sext i32 %call13.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_read_locked_inode, i32 noundef 473, ptr noundef nonnull @.str, i64 noundef %conv.i122) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %ocfs2_read_locked_inode.exit

if.end30.i:                                       ; preds = %if.then12.i
  %call31.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call17, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end62.i_crit_edge, label %if.then33.i

if.end30.i.if.end62.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @make_bad_inode(ptr noundef nonnull %call17) #10
  %36 = zext i32 %call31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call31.i, label %do.body50.i [
    i32 -512, label %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge
    i32 -4, label %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge131
    i32 524289, label %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge132
    i32 -28, label %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge133
    i32 -122, label %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge134
  ]

if.then33.i.ocfs2_read_locked_inode.exit_crit_edge134: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then33.i.ocfs2_read_locked_inode.exit_crit_edge133: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then33.i.ocfs2_read_locked_inode.exit_crit_edge132: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then33.i.ocfs2_read_locked_inode.exit_crit_edge131: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then33.i.ocfs2_read_locked_inode.exit_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

do.body50.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m51.i) #10
  %37 = ptrtoint ptr %_m51.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m51.i, align 8
  %conv55.i = sext i32 %call31.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m51.i, ptr noundef nonnull @__func__.ocfs2_read_locked_inode, i32 noundef 479, ptr noundef nonnull @.str, i64 noundef %conv55.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m51.i) #10
  br label %ocfs2_read_locked_inode.exit

if.end62.i:                                       ; preds = %if.end30.i.if.end62.i_crit_edge, %if.end.i.if.end62.i_crit_edge
  %38 = ptrtoint ptr %fi_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fi_flags, align 4
  %and64.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end62.i.if.end71.i_crit_edge, label %if.then66.i

if.end62.i.if.end71.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then66.i:                                      ; preds = %if.end62.i
  %call67.i = call i32 @ocfs2_try_open_lock(ptr noundef nonnull %call17, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.then66.i.if.end71.i_crit_edge, label %if.then69.i

if.then66.i.if.end71.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then69.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @make_bad_inode(ptr noundef nonnull %call17) #10
  br label %ocfs2_read_locked_inode.exit

if.end71.i:                                       ; preds = %if.then66.i.if.end71.i_crit_edge, %if.end62.i.if.end71.i_crit_edge
  br i1 %27, label %if.then73.i, label %if.else88.i

if.then73.i:                                      ; preds = %if.end71.i
  %40 = ptrtoint ptr %fi_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fi_flags, align 4
  %and75.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.else.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.then73.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %42 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bh.i, align 4
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %tmp.i.i, align 4
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %call17, i32 -56
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i.i, align 8
  %call6.i.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i.i, i64 noundef %46, i32 noundef 1, ptr noundef nonnull %tmp.i.i, i32 noundef 1, ptr noundef nonnull @ocfs2_filecheck_validate_inode_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i, label %if.then77.i.ocfs2_filecheck_read_inode_block_full.exit.i_crit_edge

if.then77.i.ocfs2_filecheck_read_inode_block_full.exit.i_crit_edge: ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_filecheck_read_inode_block_full.exit.i

land.lhs.true.i.i:                                ; preds = %if.then77.i
  %47 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bh.i, align 4
  %tobool8.not.i.i = icmp eq ptr %48, null
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %land.lhs.true.i.i.ocfs2_filecheck_read_inode_block_full.exit.i_crit_edge

land.lhs.true.i.i.ocfs2_filecheck_read_inode_block_full.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_filecheck_read_inode_block_full.exit.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tmp.i.i, align 4
  %51 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %bh.i, align 4
  br label %ocfs2_filecheck_read_inode_block_full.exit.i

ocfs2_filecheck_read_inode_block_full.exit.i:     ; preds = %if.then9.i.i, %land.lhs.true.i.i.ocfs2_filecheck_read_inode_block_full.exit.i_crit_edge, %if.then77.i.ocfs2_filecheck_read_inode_block_full.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  br label %if.end114.i

if.else.i:                                        ; preds = %if.then73.i
  %and80.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.else84.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i372.i) #10
  %52 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bh.i, align 4
  %54 = ptrtoint ptr %tmp.i372.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %tmp.i372.i, align 4
  %ip_metadata_cache.i.i373.i = getelementptr i8, ptr %call17, i32 -56
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr.i.i, align 8
  %call6.i375.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i373.i, i64 noundef %56, i32 noundef 1, ptr noundef nonnull %tmp.i372.i, i32 noundef 1, ptr noundef nonnull @ocfs2_filecheck_repair_inode_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i375.i)
  %tobool7.not.i376.i = icmp eq i32 %call6.i375.i, 0
  br i1 %tobool7.not.i376.i, label %land.lhs.true.i378.i, label %if.then82.i.ocfs2_filecheck_read_inode_block_full.exit380.i_crit_edge

if.then82.i.ocfs2_filecheck_read_inode_block_full.exit380.i_crit_edge: ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_filecheck_read_inode_block_full.exit380.i

land.lhs.true.i378.i:                             ; preds = %if.then82.i
  %57 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh.i, align 4
  %tobool8.not.i377.i = icmp eq ptr %58, null
  br i1 %tobool8.not.i377.i, label %if.then9.i379.i, label %land.lhs.true.i378.i.ocfs2_filecheck_read_inode_block_full.exit380.i_crit_edge

land.lhs.true.i378.i.ocfs2_filecheck_read_inode_block_full.exit380.i_crit_edge: ; preds = %land.lhs.true.i378.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_filecheck_read_inode_block_full.exit380.i

if.then9.i379.i:                                  ; preds = %land.lhs.true.i378.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %tmp.i372.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tmp.i372.i, align 4
  %61 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %bh.i, align 4
  br label %ocfs2_filecheck_read_inode_block_full.exit380.i

ocfs2_filecheck_read_inode_block_full.exit380.i:  ; preds = %if.then9.i379.i, %land.lhs.true.i378.i.ocfs2_filecheck_read_inode_block_full.exit380.i_crit_edge, %if.then82.i.ocfs2_filecheck_read_inode_block_full.exit380.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i372.i) #10
  br label %if.end114.i

if.else84.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i381.i) #10
  %62 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bh.i, align 4
  %64 = ptrtoint ptr %tmp.i381.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %tmp.i381.i, align 4
  %ip_metadata_cache.i.i382.i = getelementptr i8, ptr %call17, i32 -56
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr.i.i, align 8
  %call2.i.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i382.i, i64 noundef %66, i32 noundef 1, ptr noundef nonnull %tmp.i381.i, i32 noundef 1, ptr noundef nonnull @ocfs2_validate_inode_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i384.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i384.i, label %land.lhs.true.i385.i, label %if.else84.i.ocfs2_read_inode_block_full.exit.i_crit_edge

if.else84.i.ocfs2_read_inode_block_full.exit.i_crit_edge: ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_inode_block_full.exit.i

land.lhs.true.i385.i:                             ; preds = %if.else84.i
  %67 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh.i, align 4
  %tobool3.not.i.i = icmp eq ptr %68, null
  br i1 %tobool3.not.i.i, label %if.then.i.i, label %land.lhs.true.i385.i.ocfs2_read_inode_block_full.exit.i_crit_edge

land.lhs.true.i385.i.ocfs2_read_inode_block_full.exit.i_crit_edge: ; preds = %land.lhs.true.i385.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_inode_block_full.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i385.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %tmp.i381.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tmp.i381.i, align 4
  %71 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %bh.i, align 4
  br label %ocfs2_read_inode_block_full.exit.i

ocfs2_read_inode_block_full.exit.i:               ; preds = %if.then.i.i, %land.lhs.true.i385.i.ocfs2_read_inode_block_full.exit.i_crit_edge, %if.else84.i.ocfs2_read_inode_block_full.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i381.i) #10
  br label %if.end114.i

if.else88.i:                                      ; preds = %if.end71.i
  %72 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %args, align 8
  %call89.i = call i32 @ocfs2_read_blocks_sync(ptr noundef %17, i64 noundef %73, i32 noundef 1, ptr noundef nonnull %bh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %land.lhs.true91.i, label %if.else88.i.if.end114.i_crit_edge

if.else88.i.if.end114.i_crit_edge:                ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114.i

land.lhs.true91.i:                                ; preds = %if.else88.i
  %74 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bh.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %78 = and i32 %77, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool93.not.i = icmp eq i32 %78, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %land.lhs.true91.i.if.end145.i_crit_edge

land.lhs.true91.i.if.end145.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145.i

if.then94.i:                                      ; preds = %land.lhs.true91.i
  %79 = ptrtoint ptr %fi_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fi_flags, align 4
  %and96.i = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.else101.i, label %if.then98.i

if.then98.i:                                      ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  %sb99.i = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 1
  %81 = ptrtoint ptr %sb99.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sb99.i, align 4
  %call100.i = call i32 @ocfs2_filecheck_validate_inode_block(ptr noundef %82, ptr noundef %75) #10
  br label %if.end114.i

if.else101.i:                                     ; preds = %if.then94.i
  %and103.i = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  %sb109.i = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 1
  %83 = ptrtoint ptr %sb109.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sb109.i, align 4
  br i1 %tobool104.not.i, label %if.else108.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #12
  %call107.i = call i32 @ocfs2_filecheck_repair_inode_block(ptr noundef %84, ptr noundef %75) #10
  br label %if.end114.i

if.else108.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #12
  %call110.i = call i32 @ocfs2_validate_inode_block(ptr noundef %84, ptr noundef %75) #10
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.else108.i, %if.then105.i, %if.then98.i, %if.else88.i.if.end114.i_crit_edge, %ocfs2_read_inode_block_full.exit.i, %ocfs2_filecheck_read_inode_block_full.exit380.i, %ocfs2_filecheck_read_inode_block_full.exit.i
  %status.0.i = phi i32 [ %call6.i.i, %ocfs2_filecheck_read_inode_block_full.exit.i ], [ %call6.i375.i, %ocfs2_filecheck_read_inode_block_full.exit380.i ], [ %call2.i.i, %ocfs2_read_inode_block_full.exit.i ], [ %call89.i, %if.else88.i.if.end114.i_crit_edge ], [ %call100.i, %if.then98.i ], [ %call107.i, %if.then105.i ], [ %call110.i, %if.else108.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp115.i = icmp slt i32 %status.0.i, 0
  br i1 %cmp115.i, label %if.then117.i, label %if.end114.i.if.end145.i_crit_edge

if.end114.i.if.end145.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145.i

if.then117.i:                                     ; preds = %if.end114.i
  %85 = zext i32 %status.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %status.0.i, label %do.body134.i [
    i32 -512, label %if.then117.i.bail.i_crit_edge
    i32 -4, label %if.then117.i.bail.i_crit_edge135
    i32 -28, label %if.then117.i.bail.i_crit_edge136
    i32 -122, label %if.then117.i.bail.i_crit_edge137
  ]

if.then117.i.bail.i_crit_edge137:                 ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then117.i.bail.i_crit_edge136:                 ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then117.i.bail.i_crit_edge135:                 ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then117.i.bail.i_crit_edge:                    ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

do.body134.i:                                     ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m135.i) #10
  %86 = ptrtoint ptr %_m135.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 1152921504606846976, ptr %_m135.i, align 8
  %conv139.i = sext i32 %status.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m135.i, ptr noundef nonnull @__func__.ocfs2_read_locked_inode, i32 noundef 521, ptr noundef nonnull @.str, i64 noundef %conv139.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m135.i) #10
  br label %bail.i

if.end145.i:                                      ; preds = %if.end114.i.if.end145.i_crit_edge, %land.lhs.true91.i.if.end145.i_crit_edge
  %87 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_data.i, align 4
  %i_flags.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %90, i32 0, i32 12
  %91 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_flags.i, align 4
  %and147.i = lshr i32 %92, 28
  %93 = ptrtoint ptr %fi_flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fi_flags, align 4
  %95 = xor i32 %and147.i, %94
  %96 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp158.not.i = icmp eq i32 %96, 0
  br i1 %cmp158.not.i, label %do.end186.i, label %do.body161.i

do.body161.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m162.i) #10
  %97 = ptrtoint ptr %_m162.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 1152921504606846976, ptr %_m162.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m162.i, ptr noundef nonnull @__func__.ocfs2_read_locked_inode, i32 noundef 536, ptr noundef nonnull @.str.18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m162.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m170.i) #10
  %98 = ptrtoint ptr %_m170.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 1152921504606846976, ptr %_m170.i, align 8
  %99 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %args, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m170.i, ptr noundef nonnull @__func__.ocfs2_read_locked_inode, i32 noundef 536, ptr noundef nonnull @.str.19, i64 noundef %100) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m170.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 536, 0\0A.popsection", ""() #10, !srcloc !197
  unreachable

do.end186.i:                                      ; preds = %if.end145.i
  %i_mode.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %90, i32 0, i32 10
  %101 = ptrtoint ptr %i_mode.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %i_mode.i, align 8
  %103 = shl i16 %102, 8
  %104 = and i16 %103, -4096
  %105 = zext i16 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %104, label %do.end186.i.if.end199.i_crit_edge [
    i16 8192, label %do.end186.i.if.then196.i_crit_edge
    i16 24576, label %do.end186.i.if.then196.i_crit_edge138
  ]

do.end186.i.if.then196.i_crit_edge138:            ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then196.i

do.end186.i.if.then196.i_crit_edge:               ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then196.i

do.end186.i.if.end199.i_crit_edge:                ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.i

if.then196.i:                                     ; preds = %do.end186.i.if.then196.i_crit_edge, %do.end186.i.if.then196.i_crit_edge138
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %90, i32 0, i32 34
  %106 = ptrtoint ptr %id1.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %id1.i, align 8
  %108 = call i64 @llvm.bswap.i64(i64 %107) #10
  %conv.i.i = trunc i64 %108 to i32
  %and1.i.i365.i = and i32 %conv.i.i, 255
  %shr2.i.i.i = lshr i32 %conv.i.i, 12
  %and3.i.i.i = and i32 %shr2.i.i.i, 1048320
  %or.i.i.i = or i32 %and3.i.i.i, %and1.i.i365.i
  %109 = shl i32 %conv.i.i, 12
  %shl.i.i.i = and i32 %109, -1048576
  %or4.i.i.i = or i32 %or.i.i.i, %shl.i.i.i
  %i_rdev198.i = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 13
  %110 = ptrtoint ptr %i_rdev198.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or4.i.i.i, ptr %i_rdev198.i, align 8
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.then196.i, %do.end186.i.if.end199.i_crit_edge
  call void @ocfs2_populate_inode(ptr noundef nonnull %call17, ptr noundef %90, i32 noundef 0) #10
  %111 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %args, align 8
  %i_blkno.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %90, i32 0, i32 17
  %113 = ptrtoint ptr %i_blkno.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %i_blkno.i, align 8
  %115 = call i64 @llvm.bswap.i64(i64 %114) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %112, i64 %115)
  %cmp202.not.i = icmp eq i64 %112, %115
  br i1 %cmp202.not.i, label %do.end218.i, label %do.body210.i, !prof !198

do.body210.i:                                     ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 544, 0\0A.popsection", ""() #10, !srcloc !199
  unreachable

do.end218.i:                                      ; preds = %if.end199.i
  %116 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bh.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %120 = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool220.not.i = icmp eq i32 %120, 0
  br i1 %tobool220.not.i, label %do.end218.i.bail.i_crit_edge, label %land.lhs.true221.i

do.end218.i.bail.i_crit_edge:                     ; preds = %do.end218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

land.lhs.true221.i:                               ; preds = %do.end218.i
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %117, align 4
  %123 = and i32 %122, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool223.not.i = icmp eq i32 %123, 0
  br i1 %tobool223.not.i, label %if.then224.i, label %land.lhs.true221.i.bail.i_crit_edge

land.lhs.true221.i.bail.i_crit_edge:              ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then224.i:                                     ; preds = %land.lhs.true221.i
  br i1 %27, label %if.then226.i, label %if.then224.i.if.end228.i_crit_edge

if.then224.i.if.end228.i_crit_edge:               ; preds = %if.then224.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228.i

if.then226.i:                                     ; preds = %if.then224.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call17, i32 noundef 0) #10
  %call227.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call17, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.then226.i, %if.then224.i.if.end228.i_crit_edge
  %lock_level.0.i = phi i32 [ 1, %if.then226.i ], [ 0, %if.then224.i.if.end228.i_crit_edge ]
  %124 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bh.i, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %call17, i32 -56
  %call230.i = call i32 @ocfs2_write_block(ptr noundef %17, ptr noundef %125, ptr noundef %ip_metadata_cache.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230.i)
  %cmp231.i = icmp slt i32 %call230.i, 0
  br i1 %cmp231.i, label %if.then233.i, label %if.end228.i.bail.i_crit_edge

if.end228.i.bail.i_crit_edge:                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then233.i:                                     ; preds = %if.end228.i
  %126 = zext i32 %call230.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call230.i, label %do.body250.i [
    i32 -512, label %if.then233.i.bail.i_crit_edge
    i32 -4, label %if.then233.i.bail.i_crit_edge139
    i32 -28, label %if.then233.i.bail.i_crit_edge140
    i32 -122, label %if.then233.i.bail.i_crit_edge141
  ]

if.then233.i.bail.i_crit_edge141:                 ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then233.i.bail.i_crit_edge140:                 ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then233.i.bail.i_crit_edge139:                 ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then233.i.bail.i_crit_edge:                    ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

do.body250.i:                                     ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m251.i) #10
  %127 = ptrtoint ptr %_m251.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 1152921504606846976, ptr %_m251.i, align 8
  %conv255.i = sext i32 %call230.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m251.i, ptr noundef nonnull @__func__.ocfs2_read_locked_inode, i32 noundef 554, ptr noundef nonnull @.str, i64 noundef %conv255.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m251.i) #10
  br label %bail.i

bail.i:                                           ; preds = %do.body250.i, %if.then233.i.bail.i_crit_edge, %if.then233.i.bail.i_crit_edge139, %if.then233.i.bail.i_crit_edge140, %if.then233.i.bail.i_crit_edge141, %if.end228.i.bail.i_crit_edge, %land.lhs.true221.i.bail.i_crit_edge, %do.end218.i.bail.i_crit_edge, %do.body134.i, %if.then117.i.bail.i_crit_edge, %if.then117.i.bail.i_crit_edge135, %if.then117.i.bail.i_crit_edge136, %if.then117.i.bail.i_crit_edge137
  %lock_level.2.i = phi i32 [ 0, %if.then117.i.bail.i_crit_edge ], [ 0, %if.then117.i.bail.i_crit_edge135 ], [ 0, %if.then117.i.bail.i_crit_edge136 ], [ 0, %if.then117.i.bail.i_crit_edge137 ], [ 0, %do.body134.i ], [ %lock_level.0.i, %if.then233.i.bail.i_crit_edge ], [ %lock_level.0.i, %if.then233.i.bail.i_crit_edge139 ], [ %lock_level.0.i, %if.then233.i.bail.i_crit_edge140 ], [ %lock_level.0.i, %if.then233.i.bail.i_crit_edge141 ], [ %lock_level.0.i, %do.body250.i ], [ 0, %land.lhs.true221.i.bail.i_crit_edge ], [ %lock_level.0.i, %if.end228.i.bail.i_crit_edge ], [ 0, %do.end218.i.bail.i_crit_edge ]
  %status.1.i = phi i32 [ %status.0.i, %if.then117.i.bail.i_crit_edge ], [ %status.0.i, %if.then117.i.bail.i_crit_edge135 ], [ %status.0.i, %if.then117.i.bail.i_crit_edge136 ], [ %status.0.i, %if.then117.i.bail.i_crit_edge137 ], [ %status.0.i, %do.body134.i ], [ %call230.i, %if.then233.i.bail.i_crit_edge ], [ %call230.i, %if.then233.i.bail.i_crit_edge139 ], [ %call230.i, %if.then233.i.bail.i_crit_edge140 ], [ %call230.i, %if.then233.i.bail.i_crit_edge141 ], [ %call230.i, %do.body250.i ], [ 0, %land.lhs.true221.i.bail.i_crit_edge ], [ 0, %if.end228.i.bail.i_crit_edge ], [ 0, %do.end218.i.bail.i_crit_edge ]
  br i1 %27, label %if.then264.i, label %bail.i.if.end265.i_crit_edge

bail.i.if.end265.i_crit_edge:                     ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265.i

if.then264.i:                                     ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call17, i32 noundef %lock_level.2.i) #10
  br label %if.end265.i

if.end265.i:                                      ; preds = %if.then264.i, %bail.i.if.end265.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i)
  %cmp266.i = icmp slt i32 %status.1.i, 0
  br i1 %cmp266.i, label %if.then268.i, label %if.end265.i.if.end269.i_crit_edge

if.end265.i.if.end269.i_crit_edge:                ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269.i

if.then268.i:                                     ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @make_bad_inode(ptr noundef nonnull %call17) #10
  br label %if.end269.i

if.end269.i:                                      ; preds = %if.then268.i, %if.end265.i.if.end269.i_crit_edge
  %128 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bh.i, align 4
  %tobool.not.i386.i = icmp eq ptr %129, null
  br i1 %tobool.not.i386.i, label %if.end269.i.ocfs2_read_locked_inode.exit_crit_edge, label %if.then.i387.i

if.end269.i.ocfs2_read_locked_inode.exit_crit_edge: ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_locked_inode.exit

if.then.i387.i:                                   ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %129) #10
  br label %ocfs2_read_locked_inode.exit

ocfs2_read_locked_inode.exit:                     ; preds = %if.then.i387.i, %if.end269.i.ocfs2_read_locked_inode.exit_crit_edge, %if.then69.i, %do.body50.i, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge131, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge132, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge133, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge134, %do.body.i, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge127, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge128, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge129, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge130
  %retval.0.i = phi i32 [ %call67.i, %if.then69.i ], [ %call13.i, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge ], [ %call13.i, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge127 ], [ %call13.i, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge128 ], [ %call13.i, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge129 ], [ %call13.i, %if.then15.i.ocfs2_read_locked_inode.exit_crit_edge130 ], [ %call13.i, %do.body.i ], [ %call31.i, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge ], [ %call31.i, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge131 ], [ %call31.i, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge132 ], [ %call31.i, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge133 ], [ %call31.i, %if.then33.i.ocfs2_read_locked_inode.exit_crit_edge134 ], [ %call31.i, %do.body50.i ], [ %status.1.i, %if.end269.i.ocfs2_read_locked_inode.exit_crit_edge ], [ %status.1.i, %if.then.i387.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #10
  call void @unlock_new_inode(ptr noundef nonnull %call17) #10
  br label %if.end57

if.end57:                                         ; preds = %ocfs2_read_locked_inode.exit, %if.end50.if.end57_crit_edge
  %rc.0 = phi i32 [ %retval.0.i, %ocfs2_read_locked_inode.exit ], [ -116, %if.end50.if.end57_crit_edge ]
  %call58 = call zeroext i1 @is_bad_inode(ptr noundef nonnull %call17) #10
  br i1 %call58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void @iput(ptr noundef nonnull %call17) #10
  %130 = inttoptr i32 %rc.0 to ptr
  br label %bail

if.end61:                                         ; preds = %if.end57
  %journal = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %131 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %journal, align 4
  %tobool62.not = icmp eq ptr %132, null
  br i1 %tobool62.not, label %if.end61.bail_crit_edge, label %if.then63

if.end61.bail_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then63:                                        ; preds = %if.end61
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %j_journal, align 4
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %134, i32 0, i32 7
  call void @_raw_read_lock(ptr noundef %j_state_lock) #10
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %134, i32 0, i32 10
  %135 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %j_running_transaction, align 8
  %tobool67.not = icmp eq ptr %136, null
  br i1 %tobool67.not, label %if.else, label %if.then63.if.end70_crit_edge

if.then63.if.end70_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %134, i32 0, i32 11
  %137 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %j_committing_transaction, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then63.if.end70_crit_edge
  %transaction.0 = phi ptr [ %138, %if.else ], [ %136, %if.then63.if.end70_crit_edge ]
  %tobool71.not = icmp eq ptr %transaction.0, null
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %transaction.0, i32 0, i32 1
  %j_commit_sequence = getelementptr inbounds %struct.journal_s, ptr %134, i32 0, i32 43
  %tid.0.in = select i1 %tobool71.not, ptr %j_commit_sequence, ptr %t_tid
  %139 = ptrtoint ptr %tid.0.in to i32
  call void @__asan_load4_noabort(i32 %139)
  %tid.0 = load i32, ptr %tid.0.in, align 4
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #10
  %i_sync_tid = getelementptr i8, ptr %call17, i32 884
  %140 = ptrtoint ptr %i_sync_tid to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %tid.0, ptr %i_sync_tid, align 4
  %i_datasync_tid = getelementptr i8, ptr %call17, i32 888
  %141 = ptrtoint ptr %i_datasync_tid to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %tid.0, ptr %i_datasync_tid, align 8
  br label %bail

bail:                                             ; preds = %if.end70, %if.end61.bail_crit_edge, %if.then59
  %inode.0 = phi ptr [ %130, %if.then59 ], [ %call17, %if.end70 ], [ %call17, %if.end61.bail_crit_edge ]
  %cmp.i = icmp ugt ptr %inode.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bail.if.end80_crit_edge, label %if.then78

bail.if.end80_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then78:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i123 = getelementptr i8, ptr %inode.0, i32 -1608
  %142 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %add.ptr.i123, align 8
  call fastcc void @trace_ocfs2_iget_end(ptr noundef %inode.0, i64 noundef %143)
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %bail.if.end80_crit_edge, %do.body39, %do.body
  %inode.0126 = phi ptr [ %inode.0, %if.then78 ], [ %inode.0, %bail.if.end80_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.body39 ], [ inttoptr (i32 -22 to ptr), %do.body ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret ptr %inode.0126
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_iget_begin(i64 noundef %ino, i32 noundef %flags, i32 noundef %sysfile_type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_iget_begin, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  %call42 = tail call i32 @__traceiter_ocfs2_iget_begin(ptr noundef null, i64 noundef %ino, i32 noundef %flags, i32 noundef %sysfile_type) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_iget_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_iget_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1493, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_init_locked_inode(ptr noundef %inode, ptr nocapture noundef readonly %opaque) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fi_ino = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %opaque, i32 0, i32 1
  %0 = ptrtoint ptr %fi_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi_ino, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_ino, align 8
  %3 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %opaque, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %add.ptr.i, align 8
  %fi_sysfile_type = getelementptr inbounds %struct.ocfs2_find_inode_args, ptr %opaque, i32 0, i32 3
  %6 = ptrtoint ptr %fi_sysfile_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fi_sysfile_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %if.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %arrayidx = getelementptr [15 x %struct.lock_class_key], ptr @ocfs2_sysfile_lock_key, i32 0, i32 %7
  %wait_type_inner = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6, i32 4
  %8 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.14, ptr noundef %arrayidx, i32 noundef 0, i8 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %10 = ptrtoint ptr %fi_sysfile_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %fi_sysfile_type, align 8
  %11 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %.pr, label %if.end.if.else_crit_edge [
    i32 5, label %if.end.if.then16_crit_edge
    i32 6, label %if.end.if.then16_crit_edge63
    i32 13, label %if.end.if.then16_crit_edge64
    i32 14, label %if.end.if.then16_crit_edge65
  ]

if.end.if.then16_crit_edge65:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.if.then16_crit_edge64:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.if.then16_crit_edge63:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge63, %if.end.if.then16_crit_edge64, %if.end.if.then16_crit_edge65
  %dep_map18 = getelementptr i8, ptr %inode, i32 -356
  %wait_type_inner22 = getelementptr i8, ptr %inode, i32 -339
  %12 = ptrtoint ptr %wait_type_inner22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wait_type_inner22, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map18, ptr noundef nonnull @.str.15, ptr noundef nonnull @ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key, i32 noundef 0, i8 noundef zeroext %13, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end38

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %dep_map29 = getelementptr i8, ptr %inode, i32 -356
  %wait_type_inner33 = getelementptr i8, ptr %inode, i32 -339
  %14 = ptrtoint ptr %wait_type_inner33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wait_type_inner33, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map29, ptr noundef nonnull @.str.16, ptr noundef nonnull @ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key, i32 noundef 0, i8 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then16
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_iget5_locked(i64 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget5_locked, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_iget5_locked, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  %call42 = tail call i32 @__traceiter_ocfs2_iget5_locked(ptr noundef null, i64 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget5_locked, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget5_locked, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_iget5_locked.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_iget5_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1495, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_iget_end(ptr noundef %inode, i64 noundef %ino) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_iget_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  %call42 = tail call i32 @__traceiter_ocfs2_iget_end(ptr noundef null, ptr noundef %inode, i64 noundef %ino) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_iget_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_iget_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_iget_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1509, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_populate_inode(ptr noundef %inode, ptr noundef readonly %fe, i32 noundef %create_ino) local_unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
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
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %8 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call i32 @ocfs2_stack_supports_plocks() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false2.do.body_crit_edge

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.then, %lor.lhs.false2.do.body_crit_edge
  %tobool159.not = phi i1 [ false, %lor.lhs.false2.do.body_crit_edge ], [ true, %if.then ]
  %call5 = tail call i32 @strcmp(ptr noundef %fe, ptr noundef nonnull dereferenceable(8) @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body19, label %do.body12, !prof !198

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !209
  unreachable

do.body19:                                        ; preds = %do.body
  %i_flags = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 12
  %9 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags, align 4
  %and20 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body31, label %do.body40, !prof !210

do.body31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #10, !srcloc !211
  unreachable

do.body40:                                        ; preds = %do.body19
  %i_fs_generation = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 19
  %11 = ptrtoint ptr %i_fs_generation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_fs_generation, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %fs_generation = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %fs_generation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %do.end56, label %do.body48, !prof !198

do.body48:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #10, !srcloc !212
  unreachable

do.end56:                                         ; preds = %do.body40
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 6
  %16 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_clusters, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %19 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ip_clusters, align 8
  %i_attr = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 23
  %20 = ptrtoint ptr %i_attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_attr, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %ip_attr = getelementptr i8, ptr %inode, i32 -72
  %23 = ptrtoint ptr %ip_attr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ip_attr, align 8
  %i_dyn_features = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 25
  %24 = ptrtoint ptr %i_dyn_features to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %i_dyn_features, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %27 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %ip_dyn_features, align 4
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #10
  %i_generation = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 1
  %28 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_generation, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %i_generation60 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %31 = ptrtoint ptr %i_generation60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %i_generation60, align 8
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 34
  %32 = ptrtoint ptr %id1 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %id1, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %conv.i = trunc i64 %34 to i32
  %and1.i.i = and i32 %conv.i, 255
  %shr2.i.i = lshr i32 %conv.i, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  %35 = shl i32 %conv.i, 12
  %shl.i.i = and i32 %35, -1048576
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  %i_rdev62 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %36 = ptrtoint ptr %i_rdev62 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or4.i.i, ptr %i_rdev62, align 8
  %i_mode = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 10
  %37 = ptrtoint ptr %i_mode to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %i_mode, align 8
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %40 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %inode, align 8
  %i_uid = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 7
  %41 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_uid, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %47, i32 noundef %43) #10
  %48 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 8
  %49 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_gid, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i309 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 53
  %54 = ptrtoint ptr %s_user_ns.i.i309 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_user_ns.i.i309, align 8
  %call1.i310 = tail call i32 @make_kgid(ptr noundef %55, i32 noundef %51) #10
  %56 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call1.i310, ptr %i_gid.i, align 8
  %57 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %inode, align 8
  %59 = and i16 %58, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %59)
  %cmp66 = icmp eq i16 %59, -24576
  br i1 %cmp66, label %land.lhs.true, label %do.end56.if.else_crit_edge

do.end56.if.else_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.end56
  %60 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool69.not = icmp eq i32 %61, 0
  br i1 %tobool69.not, label %land.lhs.true.if.end75_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end56.if.else_crit_edge
  %62 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %65, i32 0, i32 36
  %66 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_clustersize_bits.i, align 8
  %sub.i = add i32 %67, -9
  %68 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ip_clusters, align 8
  %conv.i311 = zext i32 %69 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i311, %sh_prom.i
  br label %if.end75

if.end75:                                         ; preds = %if.else, %land.lhs.true.if.end75_crit_edge
  %shl.i.sink = phi i64 [ %shl.i, %if.else ], [ 0, %land.lhs.true.if.end75_crit_edge ]
  %ocfs2_aops.sink = phi ptr [ @ocfs2_aops, %if.else ], [ @ocfs2_fast_symlink_aops, %land.lhs.true.if.end75_crit_edge ]
  %i_blocks72 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %70 = ptrtoint ptr %i_blocks72 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %shl.i.sink, ptr %i_blocks72, align 8
  %i_mapping73 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %71 = ptrtoint ptr %i_mapping73 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_mapping73, align 8
  %a_ops74 = getelementptr inbounds %struct.address_space, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %a_ops74 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ocfs2_aops.sink, ptr %a_ops74, align 4
  %i_atime = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 13
  %74 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %i_atime, align 8
  %76 = tail call i64 @llvm.bswap.i64(i64 %75)
  %i_atime76 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %77 = ptrtoint ptr %i_atime76 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %i_atime76, align 8
  %i_atime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 20
  %78 = ptrtoint ptr %i_atime_nsec to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_atime_nsec, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %81 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %tv_nsec, align 8
  %i_mtime = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 15
  %82 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %i_mtime, align 8
  %84 = tail call i64 @llvm.bswap.i64(i64 %83)
  %i_mtime78 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %85 = ptrtoint ptr %i_mtime78 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %i_mtime78, align 8
  %i_mtime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 22
  %86 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_mtime_nsec, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %tv_nsec81 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %89 = ptrtoint ptr %tv_nsec81 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %tv_nsec81, align 8
  %i_ctime = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 14
  %90 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %i_ctime, align 8
  %92 = tail call i64 @llvm.bswap.i64(i64 %91)
  %i_ctime82 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %93 = ptrtoint ptr %i_ctime82 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %i_ctime82, align 8
  %i_ctime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 21
  %94 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_ctime_nsec, align 8
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %tv_nsec85 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %97 = ptrtoint ptr %tv_nsec85 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %tv_nsec85, align 8
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %add.ptr.i, align 8
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 17
  %100 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %i_blkno, align 8
  %102 = tail call i64 @llvm.bswap.i64(i64 %101)
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %102)
  %cmp87.not = icmp eq i64 %99, %102
  br i1 %cmp87.not, label %if.end75.if.end100_crit_edge, label %do.body90

if.end75.if.end100_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.body90:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %103 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_populate_inode, i32 noundef 316, ptr noundef nonnull @.str.2, i64 noundef %99, i64 noundef %102) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end100

if.end100:                                        ; preds = %do.body90, %if.end75.if.end100_crit_edge
  %i_links_count.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 11
  %104 = ptrtoint ptr %i_links_count.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %i_links_count.i, align 2
  %106 = call i16 @llvm.bswap.i16(i16 %105) #10
  %conv.i314 = zext i16 %106 to i32
  %107 = ptrtoint ptr %i_dyn_features to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %i_dyn_features, align 2
  %109 = and i16 %108, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool.not.i315 = icmp eq i16 %109, 0
  br i1 %tobool.not.i315, label %if.end100.ocfs2_read_links_count.exit_crit_edge, label %if.then.i

if.end100.ocfs2_read_links_count.exit_crit_edge:  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_links_count.exit

if.then.i:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %i_links_count_hi.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 4
  %110 = ptrtoint ptr %i_links_count_hi.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %i_links_count_hi.i, align 8
  %112 = call i16 @llvm.bswap.i16(i16 %111) #10
  %conv1.i = zext i16 %112 to i32
  %shl.i316 = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i316, %conv.i314
  br label %ocfs2_read_links_count.exit

ocfs2_read_links_count.exit:                      ; preds = %if.then.i, %if.end100.ocfs2_read_links_count.exit_crit_edge
  %nlink.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i314, %if.end100.ocfs2_read_links_count.exit_crit_edge ]
  call void @set_nlink(ptr noundef %inode, i32 noundef %nlink.0.i) #10
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %add.ptr.i, align 8
  %115 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_flags, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116)
  call fastcc void @trace_ocfs2_populate_inode(i64 noundef %114, i32 noundef %117)
  %118 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_flags, align 4
  %and106 = and i32 %119, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %ocfs2_read_links_count.exit.if.end112_crit_edge, label %if.then108

ocfs2_read_links_count.exit.if.end112_crit_edge:  ; preds = %ocfs2_read_links_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then108:                                       ; preds = %ocfs2_read_links_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %120 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ip_flags, align 4
  %or = or i32 %121, 1
  store i32 %or, ptr %ip_flags, align 4
  %i_flags110 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %122 = ptrtoint ptr %i_flags110 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %i_flags110, align 4
  %or111 = or i32 %123, 32
  store i32 %or111, ptr %i_flags110, align 4
  %124 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr = load i32, ptr %i_flags, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %ocfs2_read_links_count.exit.if.end112_crit_edge
  %125 = phi i32 [ %.pr, %if.then108 ], [ %119, %ocfs2_read_links_count.exit.if.end112_crit_edge ]
  %and114 = and i32 %125, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.else120, label %if.then116

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %ip_flags118 = getelementptr i8, ptr %inode, i32 -76
  br label %if.end149.sink.split

if.else120:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %tobool123.not = icmp sgt i32 %125, -1
  br i1 %tobool123.not, label %if.else128, label %if.then124

if.then124:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #12
  %ip_flags126 = getelementptr i8, ptr %inode, i32 -76
  br label %if.end149.sink.split

if.else128:                                       ; preds = %if.else120
  %and130 = and i32 %125, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.else135, label %if.then132

if.then132:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags133 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %if.end149.sink.split

if.else135:                                       ; preds = %if.else128
  %and137 = and i32 %125, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.else135.if.end149_crit_edge, label %do.body140

if.else135.if.end149_crit_edge:                   ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

do.body140:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 336, 0\0A.popsection", ""() #10, !srcloc !213
  unreachable

if.end149.sink.split:                             ; preds = %if.then132, %if.then124, %if.then116
  %ip_flags126.sink333 = phi ptr [ %ip_flags126, %if.then124 ], [ %i_flags133, %if.then132 ], [ %ip_flags118, %if.then116 ]
  %.sink332 = phi i32 [ 4, %if.then124 ], [ 32, %if.then132 ], [ 4, %if.then116 ]
  %126 = ptrtoint ptr %ip_flags126.sink333 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ip_flags126.sink333, align 4
  %or127 = or i32 %127, %.sink332
  store i32 %or127, ptr %ip_flags126.sink333, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.end149.sink.split, %if.else135.if.end149_crit_edge
  %128 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %inode, align 8
  %130 = and i16 %129, -4096
  %131 = zext i16 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %130, label %sw.default [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb157
    i16 -24576, label %sw.bb165
  ]

sw.bb:                                            ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = select i1 %tobool159.not, ptr @ocfs2_fops_no_plocks, ptr @ocfs2_fops
  %132 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %spec.select, ptr %132, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %134 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @ocfs2_file_iops, ptr %i_op, align 8
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 9
  %135 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %i_size, align 8
  %137 = call i64 @llvm.bswap.i64(i64 %136)
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %137)
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %i_op158 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %138 = ptrtoint ptr %i_op158 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @ocfs2_dir_iops, ptr %i_op158, align 8
  %spec.select334 = select i1 %tobool159.not, ptr @ocfs2_dops_no_plocks, ptr @ocfs2_dops
  %139 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %spec.select334, ptr %139, align 8
  %i_size163 = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 9
  %141 = ptrtoint ptr %i_size163 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %i_size163, align 8
  %143 = call i64 @llvm.bswap.i64(i64 %142)
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %143)
  %ip_dir_lock_gen = getelementptr i8, ptr %inode, i32 840
  %144 = ptrtoint ptr %ip_dir_lock_gen to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %ip_dir_lock_gen, align 8
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %i_op166 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %145 = ptrtoint ptr %i_op166 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @ocfs2_symlink_inode_operations, ptr %i_op166, align 8
  call void @inode_nohighmem(ptr noundef %inode) #10
  %i_size167 = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 9
  %146 = ptrtoint ptr %i_size167 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %i_size167, align 8
  %148 = call i64 @llvm.bswap.i64(i64 %147)
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %148)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %i_op168 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %149 = ptrtoint ptr %i_op168 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @ocfs2_special_file_iops, ptr %i_op168, align 8
  %150 = ptrtoint ptr %i_rdev62 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %i_rdev62, align 8
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %129, i32 noundef %151) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb165, %sw.bb157, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create_ino)
  %tobool171.not = icmp eq i32 %create_ino, 0
  br i1 %tobool171.not, label %sw.epilog.if.end198_crit_edge, label %if.then172

sw.epilog.if.end198_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.then172:                                       ; preds = %sw.epilog
  %152 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %i_blkno, align 8
  %154 = call i64 @llvm.bswap.i64(i64 %153)
  %conv.i322 = trunc i64 %154 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %155 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv.i322, ptr %i_ino, align 8
  %156 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %i_flags, align 4
  %158 = and i32 %157, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool179.not = icmp eq i32 %158, 0
  br i1 %tobool179.not, label %do.end195, label %do.body187, !prof !198

do.body187:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #10, !srcloc !214
  unreachable

do.end195:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  %ip_inode_lockres = getelementptr i8, ptr %inode, i32 -1208
  call void @ocfs2_inode_lock_res_init(ptr noundef %ip_inode_lockres, i32 noundef 0, i32 noundef 0, ptr noundef %inode) #10
  %ip_open_lockres = getelementptr i8, ptr %inode, i32 -816
  call void @ocfs2_inode_lock_res_init(ptr noundef %ip_open_lockres, i32 noundef 6, i32 noundef 0, ptr noundef %inode) #10
  br label %if.end198

if.end198:                                        ; preds = %do.end195, %sw.epilog.if.end198_crit_edge
  %ip_rw_lockres = getelementptr i8, ptr %inode, i32 -1600
  %159 = ptrtoint ptr %i_generation60 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %i_generation60, align 8
  call void @ocfs2_inode_lock_res_init(ptr noundef %ip_rw_lockres, i32 noundef 4, i32 noundef %160, ptr noundef %inode) #10
  %161 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ip_attr, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %163 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %i_flags.i, align 4
  %and.i326 = and i32 %164, -80
  %and1.i327 = lshr i32 %162, 1
  %165 = and i32 %and1.i327, 8
  %166 = or i32 %165, %and.i326
  %and3.i = lshr i32 %162, 3
  %167 = and i32 %and3.i, 1
  %168 = or i32 %166, %167
  %169 = and i32 %and3.i, 4
  %170 = or i32 %169, %168
  store i32 %170, ptr %i_flags.i, align 4
  %and15.i = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end198.if.end20.i_crit_edge, label %if.then17.i

if.end198.if.end20.i_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %i_flags.i, align 4
  %or19.i = or i32 %172, 2
  store i32 %or19.i, ptr %i_flags.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end198.if.end20.i_crit_edge
  %and21.i = and i32 %162, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.ocfs2_set_inode_flags.exit_crit_edge, label %if.then23.i

if.end20.i.ocfs2_set_inode_flags.exit_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_set_inode_flags.exit

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %i_flags.i, align 4
  %or25.i = or i32 %174, 64
  store i32 %or25.i, ptr %i_flags.i, align 4
  br label %ocfs2_set_inode_flags.exit

ocfs2_set_inode_flags.exit:                       ; preds = %if.then23.i, %if.end20.i.ocfs2_set_inode_flags.exit_crit_edge
  %ip_last_used_slot = getelementptr i8, ptr %inode, i32 828
  %175 = ptrtoint ptr %ip_last_used_slot to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %ip_last_used_slot, align 4
  %ip_last_used_group = getelementptr i8, ptr %inode, i32 832
  %176 = ptrtoint ptr %ip_last_used_group to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 0, ptr %ip_last_used_group, align 8
  %177 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %inode, align 8
  %179 = and i16 %178, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %179)
  %cmp206 = icmp eq i16 %179, 16384
  br i1 %cmp206, label %if.then208, label %ocfs2_set_inode_flags.exit.if.end210_crit_edge

ocfs2_set_inode_flags.exit.if.end210_crit_edge:   ; preds = %ocfs2_set_inode_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

if.then208:                                       ; preds = %ocfs2_set_inode_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ip_la_data_resv = getelementptr i8, ptr %inode, i32 844
  call void @ocfs2_resv_set_type(ptr noundef %ip_la_data_resv, i32 noundef 4) #10
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %ocfs2_set_inode_flags.exit.if.end210_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_stack_supports_plocks() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_populate_inode(i64 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_populate_inode, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_populate_inode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !215
  %call42 = tail call i32 @__traceiter_ocfs2_populate_inode(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !216
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_populate_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_populate_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_populate_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_populate_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1531, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !218
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !219
  %18 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !220
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !221
  %37 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !198

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !222
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #10
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #10
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !223
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !224
  %48 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_lock_res_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resv_set_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_sync_blockdev(ptr nocapture noundef readonly %sb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %call = tail call i32 @sync_blockdev(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_evict_inode(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i6 = alloca i64, align 8
  %_m4.i = alloca i64, align 8
  %_m30.i = alloca i64, align 8
  %_m38.i = alloca i64, align 8
  %_m60.i = alloca i64, align 8
  %_m68.i = alloca i64, align 8
  %_m98.i = alloca i64, align 8
  %_m116.i = alloca i64, align 8
  %_m124.i = alloca i64, align 8
  %_m149.i = alloca i64, align 8
  %_m157.i = alloca i64, align 8
  %_m179.i = alloca i64, align 8
  %_m187.i = alloca i64, align 8
  %_m209.i = alloca i64, align 8
  %_m217.i = alloca i64, align 8
  %_m240.i = alloca i64, align 8
  %_m248.i = alloca i64, align 8
  %_m270.i = alloca i64, align 8
  %_m278.i = alloca i64, align 8
  %inode_alloc_bh.i.i.i = alloca ptr, align 4
  %_m.i322.i.i = alloca i64, align 8
  %_m40.i.i.i = alloca i64, align 8
  %_m74.i.i.i = alloca i64, align 8
  %_m110.i.i.i = alloca i64, align 8
  %_m144.i.i.i = alloca i64, align 8
  %_m179.i.i.i = alloca i64, align 8
  %_m.i.i.i = alloca i64, align 8
  %_m43.i.i.i = alloca i64, align 8
  %_m75.i.i.i = alloca i64, align 8
  %_m108.i.i.i = alloca i64, align 8
  %orphan_dir_bh.i.i = alloca ptr, align 4
  %_m.i196.i = alloca i64, align 8
  %_m48.i.i = alloca i64, align 8
  %_m81.i.i = alloca i64, align 8
  %_m117.i.i = alloca i64, align 8
  %_m150.i.i = alloca i64, align 8
  %_m182.i.i = alloca i64, align 8
  %_m214.i.i = alloca i64, align 8
  %_m.i.i = alloca i64, align 8
  %_m38.i.i = alloca i64, align 8
  %_m73.i.i = alloca i64, align 8
  %oldset.i = alloca %struct.sigset_t, align 4
  %di_bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m41.i = alloca i64, align 8
  %_m84.i = alloca i64, align 8
  %_m120.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %3 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ip_flags, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldset.i) #10
  %5 = ptrtoint ptr %oldset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %oldset.i, align 4, !annotation !225
  %6 = getelementptr inbounds [2 x i32], ptr %oldset.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !225
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh.i) #10
  %8 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %di_bh.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %10 to i64
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -1608
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i.i, align 8
  %call1.i = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  %conv2.i = zext i1 %call1.i to i32
  tail call fastcc void @trace_ocfs2_delete_inode(i64 noundef %conv.i, i64 noundef %12, i32 noundef %conv2.i) #10
  %call3.i = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  br i1 %call3.i, label %if.then.ocfs2_delete_inode.exit_crit_edge, label %lor.lhs.false.i

if.then.ocfs2_delete_inode.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_delete_inode.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.ocfs2_delete_inode.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ocfs2_delete_inode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_delete_inode.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call7.i = tail call fastcc i32 @ocfs2_inode_is_valid_to_delete(ptr noundef %inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.i.i, align 8
  tail call fastcc void @trace_ocfs2_cleanup_delete_inode(i64 noundef %16, i32 noundef 0) #10
  %i_data.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data.i.i) #10
  br label %ocfs2_delete_inode.exit

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call i32 @dquot_initialize(ptr noundef %inode) #10
  call void @ocfs2_block_signals(ptr noundef nonnull %oldset.i) #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %call12.i = call i32 @ocfs2_nfs_sync_lock(ptr noundef %20, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end18.i

do.body.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %21 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_delete_inode, i32 noundef 1032, ptr noundef nonnull @.str.30, i32 noundef %call12.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.i.i, align 8
  call fastcc void @trace_ocfs2_cleanup_delete_inode(i64 noundef %23, i32 noundef 0) #10
  %i_data.i184.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages_final(ptr noundef %i_data.i184.i) #10
  br label %bail_unblock.i

if.end18.i:                                       ; preds = %if.end10.i
  %call19.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef nonnull %di_bh.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end51.i

if.then22.i:                                      ; preds = %if.end18.i
  %24 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call19.i, label %do.body40.i [
    i32 -2, label %if.then22.i.if.end50.i_crit_edge
    i32 -512, label %if.then22.i.if.end50.i_crit_edge21
    i32 -4, label %if.then22.i.if.end50.i_crit_edge22
    i32 -28, label %if.then22.i.if.end50.i_crit_edge23
    i32 -122, label %if.then22.i.if.end50.i_crit_edge24
  ]

if.then22.i.if.end50.i_crit_edge24:               ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then22.i.if.end50.i_crit_edge23:               ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then22.i.if.end50.i_crit_edge22:               ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then22.i.if.end50.i_crit_edge21:               ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then22.i.if.end50.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

do.body40.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41.i) #10
  %25 = ptrtoint ptr %_m41.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m41.i, align 8
  %conv45.i = sext i32 %call19.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41.i, ptr noundef nonnull @__func__.ocfs2_delete_inode, i32 noundef 1047, ptr noundef nonnull @.str, i64 noundef %conv45.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41.i) #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.body40.i, %if.then22.i.if.end50.i_crit_edge, %if.then22.i.if.end50.i_crit_edge21, %if.then22.i.if.end50.i_crit_edge22, %if.then22.i.if.end50.i_crit_edge23, %if.then22.i.if.end50.i_crit_edge24
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr.i.i, align 8
  call fastcc void @trace_ocfs2_cleanup_delete_inode(i64 noundef %27, i32 noundef 0) #10
  %i_data.i186.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages_final(ptr noundef %i_data.i186.i) #10
  br label %bail_unlock_nfs_sync.i

if.end51.i:                                       ; preds = %if.end18.i
  %28 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %di_bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data.i, align 4
  %i_flags.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_flags.i, align 4
  %and52.i = and i32 %33, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i.i, align 8
  br i1 %tobool53.not.i, label %if.end57.i, label %if.then56.i, !prof !198

if.then56.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_ocfs2_cleanup_delete_inode(i64 noundef %35, i32 noundef 0) #10
  %i_data.i188.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages_final(ptr noundef %i_data.i188.i) #10
  br label %bail_unlock_inode.i

if.end57.i:                                       ; preds = %if.end51.i
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %0, align 4
  call fastcc void @trace_ocfs2_query_inode_wipe_begin(i64 noundef %35, i32 noundef %37) #10
  %call1.i.i = call fastcc i32 @ocfs2_inode_is_valid_to_delete(ptr noundef %inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end57.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge, label %if.end.i.i

if.end57.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.i

if.end.i.i:                                       ; preds = %if.end57.i
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge

if.end.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %40 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.i, align 4
  %i_flags.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %43, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %if.end4.i.i.if.end20.i.i_crit_edge

if.end4.i.i.if.end20.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i.i
  %ip_flags.i.i = getelementptr i8, ptr %inode, i32 -76
  %44 = ptrtoint ptr %ip_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ip_flags.i.i, align 4
  %and6.i.i = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %land.lhs.true.i.i.if.end20.i.i_crit_edge

land.lhs.true.i.i.if.end20.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  %i_dyn_features.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %41, i32 0, i32 25
  %46 = ptrtoint ptr %i_dyn_features.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %i_dyn_features.i.i, align 2
  %48 = and i16 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool10.not.i.i = icmp eq i16 %48, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.then8.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge

if.then8.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.i

if.end12.i.i:                                     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %49 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr.i.i, align 8
  %i_blkno.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %41, i32 0, i32 17
  %52 = ptrtoint ptr %i_blkno.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_blkno.i.i, align 8
  %54 = call i64 @llvm.bswap.i64(i64 %53) #10
  %55 = call i32 @llvm.bswap.i32(i32 %43) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_query_inode_wipe, i32 noundef 937, ptr noundef nonnull @.str.33, i64 noundef %51, i64 noundef %54, i32 noundef %55, i32 noundef %45) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  br label %ocfs2_query_inode_wipe.exit.thread.thread.i.thread

if.end20.i.i:                                     ; preds = %land.lhs.true.i.i.if.end20.i.i_crit_edge, %if.end4.i.i.if.end20.i.i_crit_edge
  %i_dtime.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %41, i32 0, i32 16
  %56 = ptrtoint ptr %i_dtime.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_dtime.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %tobool21.not.i.i = icmp eq i64 %57, 0
  br i1 %tobool21.not.i.i, label %if.end47.i.i, label %do.body37.i.i

do.body37.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38.i.i) #10
  %58 = ptrtoint ptr %_m38.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1152921504606846976, ptr %_m38.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38.i.i, ptr noundef nonnull @__func__.ocfs2_query_inode_wipe, i32 noundef 944, ptr noundef nonnull @.str, i64 noundef -17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38.i.i) #10
  br label %ocfs2_query_inode_wipe.exit.thread.thread.i.thread

if.end47.i.i:                                     ; preds = %if.end20.i.i
  %call48.i.i = call i32 @ocfs2_try_open_lock(ptr noundef %inode, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call48.i.i)
  %cmp49.i.i = icmp eq i32 %call48.i.i, -11
  br i1 %cmp49.i.i, label %if.end47.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge, label %if.end52.i.i

if.end47.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge: ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.i

if.end52.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %cmp53.i.i = icmp slt i32 %call48.i.i, 0
  br i1 %cmp53.i.i, label %if.then55.i.i, label %ocfs2_query_inode_wipe.exit.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  %59 = zext i32 %call48.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call48.i.i, label %do.body72.i.i [
    i32 -512, label %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge
    i32 -4, label %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge25
    i32 -122, label %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge26
    i32 -28, label %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge27
  ]

if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge27: ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.thread.i

if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge26: ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.thread.i

if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge25: ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.thread.i

if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge: ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_query_inode_wipe.exit.thread.thread.i

do.body72.i.i:                                    ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m73.i.i) #10
  %60 = ptrtoint ptr %_m73.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 1152921504606846976, ptr %_m73.i.i, align 8
  %conv77.i.i = sext i32 %call48.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m73.i.i, ptr noundef nonnull @__func__.ocfs2_query_inode_wipe, i32 noundef 967, ptr noundef nonnull @.str, i64 noundef %conv77.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m73.i.i) #10
  br label %ocfs2_query_inode_wipe.exit.thread.thread.i

ocfs2_query_inode_wipe.exit.thread.thread.i.thread: ; preds = %do.body37.i.i, %if.end12.i.i
  call fastcc void @trace_ocfs2_query_inode_wipe_end(i32 noundef -17, i32 noundef 0) #10
  br label %do.body83.i

ocfs2_query_inode_wipe.exit.thread.thread.i:      ; preds = %do.body72.i.i, %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge, %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge25, %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge26, %if.then55.i.i.ocfs2_query_inode_wipe.exit.thread.thread.i_crit_edge27
  call fastcc void @trace_ocfs2_query_inode_wipe_end(i32 noundef %call48.i.i, i32 noundef 0) #10
  %61 = zext i32 %call48.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call48.i.i, label %ocfs2_query_inode_wipe.exit.thread.thread.i.do.body83.i_crit_edge [
    i32 -512, label %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge
    i32 -4, label %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge28
    i32 -28, label %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge29
    i32 -122, label %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge30
  ]

ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge30: ; preds = %ocfs2_query_inode_wipe.exit.thread.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i

ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge29: ; preds = %ocfs2_query_inode_wipe.exit.thread.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i

ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge28: ; preds = %ocfs2_query_inode_wipe.exit.thread.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i

ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge: ; preds = %ocfs2_query_inode_wipe.exit.thread.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i

ocfs2_query_inode_wipe.exit.thread.thread.i.do.body83.i_crit_edge: ; preds = %ocfs2_query_inode_wipe.exit.thread.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body83.i

ocfs2_query_inode_wipe.exit.thread.i:             ; preds = %if.end47.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge, %if.then8.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge, %if.end.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge, %if.end57.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge
  %reason.0.i.ph.i = phi i32 [ 3, %if.end47.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge ], [ 2, %if.then8.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge ], [ 0, %if.end.i.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge ], [ 1, %if.end57.i.ocfs2_query_inode_wipe.exit.thread.i_crit_edge ]
  call fastcc void @trace_ocfs2_query_inode_wipe_end(i32 noundef 0, i32 noundef %reason.0.i.ph.i) #10
  br label %if.end94.i

ocfs2_query_inode_wipe.exit.i:                    ; preds = %if.end52.i.i
  %i_orphaned_slot.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %41, i32 0, i32 24
  %62 = ptrtoint ptr %i_orphaned_slot.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %i_orphaned_slot.i.i, align 4
  %64 = call i16 @llvm.bswap.i16(i16 %63) #10
  %conv84.i.i = zext i16 %64 to i32
  call fastcc void @trace_ocfs2_query_inode_wipe_succ(i32 noundef %conv84.i.i) #10
  call fastcc void @trace_ocfs2_query_inode_wipe_end(i32 noundef %call48.i.i, i32 noundef 0) #10
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr.i.i, align 8
  call fastcc void @trace_ocfs2_cleanup_delete_inode(i64 noundef %66, i32 noundef 0) #10
  %i_data.i194.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages_final(ptr noundef %i_data.i194.i) #10
  %67 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %di_bh.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orphan_dir_bh.i.i) #10
  %69 = ptrtoint ptr %orphan_dir_bh.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %orphan_dir_bh.i.i, align 4
  %70 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i, align 16
  %b_data.i197.i = getelementptr inbounds %struct.buffer_head, ptr %68, i32 0, i32 5
  %ip_flags.i198.i = getelementptr i8, ptr %inode, i32 -76
  %74 = ptrtoint ptr %ip_flags.i198.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ip_flags.i198.i, align 4
  %and.i199.i = and i32 %75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199.i)
  %tobool.not.i200.i = icmp eq i32 %and.i199.i, 0
  br i1 %tobool.not.i200.i, label %if.then.i.i, label %ocfs2_query_inode_wipe.exit.i.if.end59.i.i_crit_edge

ocfs2_query_inode_wipe.exit.i.if.end59.i.i_crit_edge: ; preds = %ocfs2_query_inode_wipe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

do.body83.i:                                      ; preds = %ocfs2_query_inode_wipe.exit.thread.thread.i.do.body83.i_crit_edge, %ocfs2_query_inode_wipe.exit.thread.thread.i.thread
  %status.0.i.ph.ph.i20 = phi i32 [ -17, %ocfs2_query_inode_wipe.exit.thread.thread.i.thread ], [ %call48.i.i, %ocfs2_query_inode_wipe.exit.thread.thread.i.do.body83.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m84.i) #10
  %76 = ptrtoint ptr %_m84.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 1152921504606846976, ptr %_m84.i, align 8
  %conv88.i = sext i32 %status.0.i.ph.ph.i20 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m84.i, ptr noundef nonnull @__func__.ocfs2_delete_inode, i32 noundef 1068, ptr noundef nonnull @.str, i64 noundef %conv88.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m84.i) #10
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.body83.i, %ocfs2_query_inode_wipe.exit.thread.i, %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge, %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge28, %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge29, %ocfs2_query_inode_wipe.exit.thread.thread.i.if.end94.i_crit_edge30
  %77 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %add.ptr.i.i, align 8
  call fastcc void @trace_ocfs2_cleanup_delete_inode(i64 noundef %78, i32 noundef 1) #10
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %79 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_mapping.i.i, align 8
  %call.i.i.i = call i32 @filemap_write_and_wait_range(ptr noundef %80, i64 noundef 0, i64 noundef 9223372036854775807) #10
  %i_data.i191.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages_final(ptr noundef %i_data.i191.i) #10
  br label %bail_unlock_inode.i

if.then.i.i:                                      ; preds = %ocfs2_query_inode_wipe.exit.i
  %81 = ptrtoint ptr %b_data.i197.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_data.i197.i, align 4
  %i_orphaned_slot.i201.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %82, i32 0, i32 24
  %83 = ptrtoint ptr %i_orphaned_slot.i201.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %i_orphaned_slot.i201.i, align 4
  %85 = call i16 @llvm.bswap.i16(i16 %84) #10
  %conv.i.i = zext i16 %85 to i32
  %osb_lock.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i.i) #10
  %osb_recovering_orphan_dirs.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 90
  %call.i.i202.i = call i32 @ocfs2_node_map_test_bit(ptr noundef %73, ptr noundef %osb_recovering_orphan_dirs.i.i.i, i32 noundef %conv.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i202.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i202.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.ocfs2_check_orphan_recovery_state.exit.i.i_crit_edge

if.then.i.i.ocfs2_check_orphan_recovery_state.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_check_orphan_recovery_state.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %osb_orphan_wipes.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 91
  %86 = ptrtoint ptr %osb_orphan_wipes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %osb_orphan_wipes.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %87, i32 %conv.i.i
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add i32 %89, 1
  store i32 %inc.i.i.i, ptr %arrayidx.i.i.i, align 4
  br label %ocfs2_check_orphan_recovery_state.exit.i.i

ocfs2_check_orphan_recovery_state.exit.i.i:       ; preds = %if.end.i.i.i, %if.then.i.i.ocfs2_check_orphan_recovery_state.exit.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ -35, %if.then.i.i.ocfs2_check_orphan_recovery_state.exit.i.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i.i) #10
  call fastcc void @trace_ocfs2_check_orphan_recovery_state(i32 noundef %conv.i.i, i32 noundef %ret.0.i.i.i) #10
  br i1 %tobool.not.i.i.i, label %if.end.i204.i, label %ocfs2_check_orphan_recovery_state.exit.i.i.ocfs2_wipe_inode.exit.i_crit_edge

ocfs2_check_orphan_recovery_state.exit.i.i.ocfs2_wipe_inode.exit.i_crit_edge: ; preds = %ocfs2_check_orphan_recovery_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_wipe_inode.exit.i

if.end.i204.i:                                    ; preds = %ocfs2_check_orphan_recovery_state.exit.i.i
  %call4.i.i = call ptr @ocfs2_get_system_file_inode(ptr noundef %73, i32 noundef 7, i32 noundef %conv.i.i) #10
  %tobool5.not.i203.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i203.i, label %do.body.i.i, label %if.end26.i.i

do.body.i.i:                                      ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i196.i) #10
  %90 = ptrtoint ptr %_m.i196.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 1152921504606846976, ptr %_m.i196.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i196.i, ptr noundef nonnull @__func__.ocfs2_wipe_inode, i32 noundef 769, ptr noundef nonnull @.str, i64 noundef -2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i196.i) #10
  br label %bail.i.i

if.end26.i.i:                                     ; preds = %if.end.i204.i
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %call4.i.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #10
  %call27.i.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call4.i.i, ptr noundef nonnull %orphan_dir_bh.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 0
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.end26.i.i.if.end59.i.i_crit_edge

if.end26.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

if.then30.i.i:                                    ; preds = %if.end26.i.i
  call void @up_write(ptr noundef %i_rwsem.i.i.i) #10
  %91 = zext i32 %call27.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call27.i.i, label %do.body47.i.i [
    i32 -512, label %if.then30.i.i.bail.i.i_crit_edge
    i32 -4, label %if.then30.i.i.bail.i.i_crit_edge31
    i32 -28, label %if.then30.i.i.bail.i.i_crit_edge32
    i32 -122, label %if.then30.i.i.bail.i.i_crit_edge33
  ]

if.then30.i.i.bail.i.i_crit_edge33:               ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

if.then30.i.i.bail.i.i_crit_edge32:               ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

if.then30.i.i.bail.i.i_crit_edge31:               ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

if.then30.i.i.bail.i.i_crit_edge:                 ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

do.body47.i.i:                                    ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m48.i.i) #10
  %92 = ptrtoint ptr %_m48.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 1152921504606846976, ptr %_m48.i.i, align 8
  %conv52.i.i = sext i32 %call27.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m48.i.i, ptr noundef nonnull @__func__.ocfs2_wipe_inode, i32 noundef 781, ptr noundef nonnull @.str, i64 noundef %conv52.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m48.i.i) #10
  br label %bail.i.i

if.end59.i.i:                                     ; preds = %if.end26.i.i.if.end59.i.i_crit_edge, %ocfs2_query_inode_wipe.exit.i.if.end59.i.i_crit_edge
  %orphan_dir_inode.0.i.i = phi ptr [ null, %ocfs2_query_inode_wipe.exit.i.if.end59.i.i_crit_edge ], [ %call4.i.i, %if.end26.i.i.if.end59.i.i_crit_edge ]
  %orphaned_slot.0.i.i = phi i32 [ -1, %ocfs2_query_inode_wipe.exit.i.if.end59.i.i_crit_edge ], [ %conv.i.i, %if.end26.i.i.if.end59.i.i_crit_edge ]
  %93 = ptrtoint ptr %b_data.i197.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %b_data.i197.i, align 4
  %i_clusters.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %i_clusters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_clusters.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i320.i.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i320.i.i, label %if.end59.i.i.if.end91.i.i_crit_edge, label %if.then.i.i.i

if.end59.i.i.if.end91.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i.i

if.then.i.i.i:                                    ; preds = %if.end59.i.i
  %97 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %inode, align 8
  %99 = and i16 %98, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %99)
  %cmp.i.i.i.i = icmp eq i16 %99, -32768
  br i1 %cmp.i.i.i.i, label %ocfs2_should_order_data.exit.i.i.i, label %if.then.i.i.i.if.end.i321.i.i_crit_edge

if.then.i.i.i.if.end.i321.i.i_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i321.i.i

ocfs2_should_order_data.exit.i.i.i:               ; preds = %if.then.i.i.i
  %100 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 33
  %102 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_mount_opt.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %103, i32 0, i32 28
  %104 = ptrtoint ptr %s_mount_opt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_mount_opt.i.i.i.i, align 8
  %106 = and i32 %105, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool1.not.not.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool1.not.not.i.i.i, label %if.then2.i.i.i, label %ocfs2_should_order_data.exit.i.i.i.if.end.i321.i.i_crit_edge

ocfs2_should_order_data.exit.i.i.i.if.end.i321.i.i_crit_edge: ; preds = %ocfs2_should_order_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i321.i.i

if.then2.i.i.i:                                   ; preds = %ocfs2_should_order_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %journal.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %103, i32 0, i32 45
  %107 = ptrtoint ptr %journal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %journal.i.i.i.i, align 4
  %j_journal.i.i.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %j_journal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %j_journal.i.i.i.i, align 4
  %ip_jinode.i.i.i.i = getelementptr i8, ptr %inode, i32 784
  %call1.i.i.i.i = call i32 @jbd2_journal_begin_ordered_truncate(ptr noundef %110, ptr noundef %ip_jinode.i.i.i.i, i64 noundef 0) #10
  br label %if.end.i321.i.i

if.end.i321.i.i:                                  ; preds = %if.then2.i.i.i, %ocfs2_should_order_data.exit.i.i.i.if.end.i321.i.i_crit_edge, %if.then.i.i.i.if.end.i321.i.i_crit_edge
  %call4.i.i.i = call ptr @ocfs2_start_trans(ptr noundef %73, i32 noundef 1) #10
  %cmp.i174.i.i.i = icmp ugt ptr %call4.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174.i.i.i, label %if.then6.i.i.i, label %if.end20.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i321.i.i
  %111 = ptrtoint ptr %call4.i.i.i to i32
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %111, label %do.body.i.i.i [
    i32 -512, label %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge
    i32 -4, label %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge34
    i32 524289, label %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge35
    i32 -28, label %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge36
    i32 -122, label %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge37
  ]

if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge37: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_truncate_for_delete.exit.i.i

if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge36: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_truncate_for_delete.exit.i.i

if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge35: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_truncate_for_delete.exit.i.i

if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge34: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_truncate_for_delete.exit.i.i

if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_truncate_for_delete.exit.i.i

do.body.i.i.i:                                    ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  %113 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 1152921504606846976, ptr %_m.i.i.i, align 8
  %conv.i.i.i = sext i32 %111 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.ocfs2_truncate_for_delete, i32 noundef 600, ptr noundef nonnull @.str, i64 noundef %conv.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  br label %ocfs2_truncate_for_delete.exit.i.i

if.end20.i.i.i:                                   ; preds = %if.end.i321.i.i
  %ip_metadata_cache.i.i.i.i = getelementptr i8, ptr %inode, i32 -56
  %call22.i.i.i = call i32 @ocfs2_journal_access_di(ptr noundef %call4.i.i.i, ptr noundef %ip_metadata_cache.i.i.i.i, ptr noundef %68, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %cmp23.i.i.i = icmp slt i32 %call22.i.i.i, 0
  br i1 %cmp23.i.i.i, label %if.then25.i.i.i, label %if.end53.i.i.i

if.then25.i.i.i:                                  ; preds = %if.end20.i.i.i
  %114 = zext i32 %call22.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call22.i.i.i, label %do.body42.i.i.i [
    i32 -512, label %if.then25.i.i.i.out.i.i.i_crit_edge
    i32 -4, label %if.then25.i.i.i.out.i.i.i_crit_edge38
    i32 -28, label %if.then25.i.i.i.out.i.i.i_crit_edge39
    i32 -122, label %if.then25.i.i.i.out.i.i.i_crit_edge40
  ]

if.then25.i.i.i.out.i.i.i_crit_edge40:            ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then25.i.i.i.out.i.i.i_crit_edge39:            ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then25.i.i.i.out.i.i.i_crit_edge38:            ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then25.i.i.i.out.i.i.i_crit_edge:              ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.body42.i.i.i:                                  ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43.i.i.i) #10
  %115 = ptrtoint ptr %_m43.i.i.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 1152921504606846976, ptr %_m43.i.i.i, align 8
  %conv47.i.i.i = sext i32 %call22.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43.i.i.i, ptr noundef nonnull @__func__.ocfs2_truncate_for_delete, i32 noundef 608, ptr noundef nonnull @.str, i64 noundef %conv47.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43.i.i.i) #10
  br label %out.i.i.i

if.end53.i.i.i:                                   ; preds = %if.end20.i.i.i
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef 0) #10
  %call54.i.i.i = call i32 @ocfs2_mark_inode_dirty(ptr noundef %call4.i.i.i, ptr noundef %inode, ptr noundef %68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i.i)
  %cmp55.i.i.i = icmp slt i32 %call54.i.i.i, 0
  br i1 %cmp55.i.i.i, label %if.then57.i.i.i, label %if.end85.i.i.i

if.then57.i.i.i:                                  ; preds = %if.end53.i.i.i
  %116 = zext i32 %call54.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call54.i.i.i, label %do.body74.i.i.i [
    i32 -512, label %if.then57.i.i.i.out.i.i.i_crit_edge
    i32 -4, label %if.then57.i.i.i.out.i.i.i_crit_edge41
    i32 -28, label %if.then57.i.i.i.out.i.i.i_crit_edge42
    i32 -122, label %if.then57.i.i.i.out.i.i.i_crit_edge43
  ]

if.then57.i.i.i.out.i.i.i_crit_edge43:            ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then57.i.i.i.out.i.i.i_crit_edge42:            ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then57.i.i.i.out.i.i.i_crit_edge41:            ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then57.i.i.i.out.i.i.i_crit_edge:              ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.body74.i.i.i:                                  ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m75.i.i.i) #10
  %117 = ptrtoint ptr %_m75.i.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 1152921504606846976, ptr %_m75.i.i.i, align 8
  %conv79.i.i.i = sext i32 %call54.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m75.i.i.i, ptr noundef nonnull @__func__.ocfs2_truncate_for_delete, i32 noundef 616, ptr noundef nonnull @.str, i64 noundef %conv79.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m75.i.i.i) #10
  br label %out.i.i.i

if.end85.i.i.i:                                   ; preds = %if.end53.i.i.i
  %call86.i.i.i = call i32 @ocfs2_commit_trans(ptr noundef %73, ptr noundef %call4.i.i.i) #10
  %call87.i.i.i = call i32 @ocfs2_commit_truncate(ptr noundef %73, ptr noundef %inode, ptr noundef %68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i.i.i)
  %cmp88.i.i.i = icmp slt i32 %call87.i.i.i, 0
  br i1 %cmp88.i.i.i, label %if.then90.i.i.i, label %if.end85.i.i.i.if.end91.i.i_crit_edge

if.end85.i.i.i.if.end91.i.i_crit_edge:            ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i.i

if.then90.i.i.i:                                  ; preds = %if.end85.i.i.i
  %118 = zext i32 %call87.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call87.i.i.i, label %do.body107.i.i.i [
    i32 -512, label %if.then90.i.i.i.if.then63.i.i_crit_edge
    i32 -4, label %if.then90.i.i.i.if.then63.i.i_crit_edge44
    i32 -28, label %if.then90.i.i.i.if.then63.i.i_crit_edge45
    i32 -122, label %if.then90.i.i.i.if.then63.i.i_crit_edge46
  ]

if.then90.i.i.i.if.then63.i.i_crit_edge46:        ; preds = %if.then90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63.i.i

if.then90.i.i.i.if.then63.i.i_crit_edge45:        ; preds = %if.then90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63.i.i

if.then90.i.i.i.if.then63.i.i_crit_edge44:        ; preds = %if.then90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63.i.i

if.then90.i.i.i.if.then63.i.i_crit_edge:          ; preds = %if.then90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63.i.i

do.body107.i.i.i:                                 ; preds = %if.then90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m108.i.i.i) #10
  %119 = ptrtoint ptr %_m108.i.i.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 1152921504606846976, ptr %_m108.i.i.i, align 8
  %conv112.i.i.i = sext i32 %call87.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m108.i.i.i, ptr noundef nonnull @__func__.ocfs2_truncate_for_delete, i32 noundef 625, ptr noundef nonnull @.str, i64 noundef %conv112.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m108.i.i.i) #10
  br label %if.then63.i.i

out.i.i.i:                                        ; preds = %do.body74.i.i.i, %if.then57.i.i.i.out.i.i.i_crit_edge, %if.then57.i.i.i.out.i.i.i_crit_edge41, %if.then57.i.i.i.out.i.i.i_crit_edge42, %if.then57.i.i.i.out.i.i.i_crit_edge43, %do.body42.i.i.i, %if.then25.i.i.i.out.i.i.i_crit_edge, %if.then25.i.i.i.out.i.i.i_crit_edge38, %if.then25.i.i.i.out.i.i.i_crit_edge39, %if.then25.i.i.i.out.i.i.i_crit_edge40
  %status.0.i.i.i = phi i32 [ %call22.i.i.i, %if.then25.i.i.i.out.i.i.i_crit_edge ], [ %call22.i.i.i, %if.then25.i.i.i.out.i.i.i_crit_edge38 ], [ %call22.i.i.i, %if.then25.i.i.i.out.i.i.i_crit_edge39 ], [ %call22.i.i.i, %if.then25.i.i.i.out.i.i.i_crit_edge40 ], [ %call22.i.i.i, %do.body42.i.i.i ], [ %call54.i.i.i, %if.then57.i.i.i.out.i.i.i_crit_edge ], [ %call54.i.i.i, %if.then57.i.i.i.out.i.i.i_crit_edge41 ], [ %call54.i.i.i, %if.then57.i.i.i.out.i.i.i_crit_edge42 ], [ %call54.i.i.i, %if.then57.i.i.i.out.i.i.i_crit_edge43 ], [ %call54.i.i.i, %do.body74.i.i.i ]
  %tobool120.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool120.not.i.i.i, label %out.i.i.i.if.then63.i.i_crit_edge, label %if.then121.i.i.i

out.i.i.i.if.then63.i.i_crit_edge:                ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63.i.i

if.then121.i.i.i:                                 ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call122.i.i.i = call i32 @ocfs2_commit_trans(ptr noundef %73, ptr noundef nonnull %call4.i.i.i) #10
  br label %if.then63.i.i

ocfs2_truncate_for_delete.exit.i.i:               ; preds = %do.body.i.i.i, %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge, %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge34, %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge35, %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge36, %if.then6.i.i.i.ocfs2_truncate_for_delete.exit.i.i_crit_edge37
  %cmp61.i.i = icmp slt ptr %call4.i.i.i, null
  br i1 %cmp61.i.i, label %ocfs2_truncate_for_delete.exit.i.i.if.then63.i.i_crit_edge, label %ocfs2_truncate_for_delete.exit.i.i.if.end91.i.i_crit_edge

ocfs2_truncate_for_delete.exit.i.i.if.end91.i.i_crit_edge: ; preds = %ocfs2_truncate_for_delete.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i.i

ocfs2_truncate_for_delete.exit.i.i.if.then63.i.i_crit_edge: ; preds = %ocfs2_truncate_for_delete.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63.i.i

if.then63.i.i:                                    ; preds = %ocfs2_truncate_for_delete.exit.i.i.if.then63.i.i_crit_edge, %if.then121.i.i.i, %out.i.i.i.if.then63.i.i_crit_edge, %do.body107.i.i.i, %if.then90.i.i.i.if.then63.i.i_crit_edge, %if.then90.i.i.i.if.then63.i.i_crit_edge44, %if.then90.i.i.i.if.then63.i.i_crit_edge45, %if.then90.i.i.i.if.then63.i.i_crit_edge46
  %status.0180.i342.i.i = phi i32 [ %111, %ocfs2_truncate_for_delete.exit.i.i.if.then63.i.i_crit_edge ], [ %call87.i.i.i, %if.then90.i.i.i.if.then63.i.i_crit_edge ], [ %call87.i.i.i, %if.then90.i.i.i.if.then63.i.i_crit_edge44 ], [ %call87.i.i.i, %if.then90.i.i.i.if.then63.i.i_crit_edge45 ], [ %call87.i.i.i, %if.then90.i.i.i.if.then63.i.i_crit_edge46 ], [ %call87.i.i.i, %do.body107.i.i.i ], [ %status.0.i.i.i, %out.i.i.i.if.then63.i.i_crit_edge ], [ %status.0.i.i.i, %if.then121.i.i.i ]
  %120 = zext i32 %status.0180.i342.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %status.0180.i342.i.i, label %do.body80.i.i [
    i32 -512, label %if.then63.i.i.bail_unlock_dir.i.i_crit_edge
    i32 -4, label %if.then63.i.i.bail_unlock_dir.i.i_crit_edge47
    i32 -28, label %if.then63.i.i.bail_unlock_dir.i.i_crit_edge48
    i32 -122, label %if.then63.i.i.bail_unlock_dir.i.i_crit_edge49
  ]

if.then63.i.i.bail_unlock_dir.i.i_crit_edge49:    ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then63.i.i.bail_unlock_dir.i.i_crit_edge48:    ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then63.i.i.bail_unlock_dir.i.i_crit_edge47:    ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then63.i.i.bail_unlock_dir.i.i_crit_edge:      ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

do.body80.i.i:                                    ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81.i.i) #10
  %121 = ptrtoint ptr %_m81.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 1152921504606846976, ptr %_m81.i.i, align 8
  %conv85.i.i = sext i32 %status.0180.i342.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81.i.i, ptr noundef nonnull @__func__.ocfs2_wipe_inode, i32 noundef 792, ptr noundef nonnull @.str, i64 noundef %conv85.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81.i.i) #10
  br label %bail_unlock_dir.i.i

if.end91.i.i:                                     ; preds = %ocfs2_truncate_for_delete.exit.i.i.if.end91.i.i_crit_edge, %if.end85.i.i.i.if.end91.i.i_crit_edge, %if.end59.i.i.if.end91.i.i_crit_edge
  %122 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %inode, align 8
  %124 = and i16 %123, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %124)
  %cmp94.i.i = icmp eq i16 %124, 16384
  br i1 %cmp94.i.i, label %if.then96.i.i, label %if.end91.i.i.if.end128.i.i_crit_edge

if.end91.i.i.if.end128.i.i_crit_edge:             ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128.i.i

if.then96.i.i:                                    ; preds = %if.end91.i.i
  %call97.i.i = call i32 @ocfs2_dx_dir_truncate(ptr noundef %inode, ptr noundef %68) #10
  %125 = zext i32 %call97.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call97.i.i, label %do.body116.i.i [
    i32 0, label %if.then96.i.i.if.end128.i.i_crit_edge
    i32 -512, label %if.then96.i.i.bail_unlock_dir.i.i_crit_edge
    i32 -4, label %if.then96.i.i.bail_unlock_dir.i.i_crit_edge50
    i32 524289, label %if.then96.i.i.bail_unlock_dir.i.i_crit_edge51
    i32 -28, label %if.then96.i.i.bail_unlock_dir.i.i_crit_edge52
    i32 -122, label %if.then96.i.i.bail_unlock_dir.i.i_crit_edge53
  ]

if.then96.i.i.bail_unlock_dir.i.i_crit_edge53:    ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then96.i.i.bail_unlock_dir.i.i_crit_edge52:    ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then96.i.i.bail_unlock_dir.i.i_crit_edge51:    ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then96.i.i.bail_unlock_dir.i.i_crit_edge50:    ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then96.i.i.bail_unlock_dir.i.i_crit_edge:      ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then96.i.i.if.end128.i.i_crit_edge:            ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128.i.i

do.body116.i.i:                                   ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m117.i.i) #10
  %126 = ptrtoint ptr %_m117.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 1152921504606846976, ptr %_m117.i.i, align 8
  %conv121.i.i = sext i32 %call97.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m117.i.i, ptr noundef nonnull @__func__.ocfs2_wipe_inode, i32 noundef 800, ptr noundef nonnull @.str, i64 noundef %conv121.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m117.i.i) #10
  br label %bail_unlock_dir.i.i

if.end128.i.i:                                    ; preds = %if.then96.i.i.if.end128.i.i_crit_edge, %if.end91.i.i.if.end128.i.i_crit_edge
  %call129.i.i = call i32 @ocfs2_xattr_remove(ptr noundef %inode, ptr noundef %68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i.i)
  %cmp130.i.i = icmp slt i32 %call129.i.i, 0
  br i1 %cmp130.i.i, label %if.then132.i.i, label %if.end160.i.i

if.then132.i.i:                                   ; preds = %if.end128.i.i
  %127 = zext i32 %call129.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call129.i.i, label %do.body149.i.i [
    i32 -512, label %if.then132.i.i.bail_unlock_dir.i.i_crit_edge
    i32 -4, label %if.then132.i.i.bail_unlock_dir.i.i_crit_edge54
    i32 -28, label %if.then132.i.i.bail_unlock_dir.i.i_crit_edge55
    i32 -122, label %if.then132.i.i.bail_unlock_dir.i.i_crit_edge56
  ]

if.then132.i.i.bail_unlock_dir.i.i_crit_edge56:   ; preds = %if.then132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then132.i.i.bail_unlock_dir.i.i_crit_edge55:   ; preds = %if.then132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then132.i.i.bail_unlock_dir.i.i_crit_edge54:   ; preds = %if.then132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then132.i.i.bail_unlock_dir.i.i_crit_edge:     ; preds = %if.then132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

do.body149.i.i:                                   ; preds = %if.then132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m150.i.i) #10
  %128 = ptrtoint ptr %_m150.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 1152921504606846976, ptr %_m150.i.i, align 8
  %conv154.i.i = sext i32 %call129.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m150.i.i, ptr noundef nonnull @__func__.ocfs2_wipe_inode, i32 noundef 808, ptr noundef nonnull @.str, i64 noundef %conv154.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m150.i.i) #10
  br label %bail_unlock_dir.i.i

if.end160.i.i:                                    ; preds = %if.end128.i.i
  %call161.i.i = call i32 @ocfs2_remove_refcount_tree(ptr noundef %inode, ptr noundef %68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i.i)
  %cmp162.i.i = icmp slt i32 %call161.i.i, 0
  br i1 %cmp162.i.i, label %if.then164.i.i, label %if.end192.i.i

if.then164.i.i:                                   ; preds = %if.end160.i.i
  %129 = zext i32 %call161.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call161.i.i, label %do.body181.i.i [
    i32 -512, label %if.then164.i.i.bail_unlock_dir.i.i_crit_edge
    i32 -4, label %if.then164.i.i.bail_unlock_dir.i.i_crit_edge57
    i32 -28, label %if.then164.i.i.bail_unlock_dir.i.i_crit_edge58
    i32 -122, label %if.then164.i.i.bail_unlock_dir.i.i_crit_edge59
  ]

if.then164.i.i.bail_unlock_dir.i.i_crit_edge59:   ; preds = %if.then164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then164.i.i.bail_unlock_dir.i.i_crit_edge58:   ; preds = %if.then164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then164.i.i.bail_unlock_dir.i.i_crit_edge57:   ; preds = %if.then164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then164.i.i.bail_unlock_dir.i.i_crit_edge:     ; preds = %if.then164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

do.body181.i.i:                                   ; preds = %if.then164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m182.i.i) #10
  %130 = ptrtoint ptr %_m182.i.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 1152921504606846976, ptr %_m182.i.i, align 8
  %conv186.i.i = sext i32 %call161.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m182.i.i, ptr noundef nonnull @__func__.ocfs2_wipe_inode, i32 noundef 814, ptr noundef nonnull @.str, i64 noundef %conv186.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m182.i.i) #10
  br label %bail_unlock_dir.i.i

if.end192.i.i:                                    ; preds = %if.end160.i.i
  %131 = ptrtoint ptr %orphan_dir_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %orphan_dir_bh.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode_alloc_bh.i.i.i) #10
  %133 = ptrtoint ptr %inode_alloc_bh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %inode_alloc_bh.i.i.i, align 4
  %134 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 33
  %136 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %138 = ptrtoint ptr %b_data.i197.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %b_data.i197.i, align 4
  %i_suballoc_slot.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %i_suballoc_slot.i.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %i_suballoc_slot.i.i.i, align 4
  %142 = call i16 @llvm.bswap.i16(i16 %141) #10
  %conv.i324.i.i = zext i16 %142 to i32
  %call.i325.i.i = call ptr @ocfs2_get_system_file_inode(ptr noundef %137, i32 noundef 9, i32 noundef %conv.i324.i.i) #10
  %tobool.not.i326.i.i = icmp eq ptr %call.i325.i.i, null
  br i1 %tobool.not.i326.i.i, label %do.body.i327.i.i, label %if.end18.i.i.i

do.body.i327.i.i:                                 ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i322.i.i) #10
  %143 = ptrtoint ptr %_m.i322.i.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 1152921504606846976, ptr %_m.i322.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i322.i.i, ptr noundef nonnull @__func__.ocfs2_remove_inode, i32 noundef 651, ptr noundef nonnull @.str, i64 noundef -2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i322.i.i) #10
  br label %ocfs2_remove_inode.exit.thread.i.i

if.end18.i.i.i:                                   ; preds = %if.end192.i.i
  %i_rwsem.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i325.i.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i.i) #10
  %call19.i.i.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call.i325.i.i, ptr noundef nonnull %inode_alloc_bh.i.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %cmp20.i.i.i = icmp slt i32 %call19.i.i.i, 0
  br i1 %cmp20.i.i.i, label %if.then22.i.i.i, label %if.end50.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end18.i.i.i
  call void @up_write(ptr noundef %i_rwsem.i.i.i.i) #10
  %144 = zext i32 %call19.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call19.i.i.i, label %do.body39.i.i.i [
    i32 -512, label %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge
    i32 -4, label %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge60
    i32 -28, label %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge61
    i32 -122, label %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge62
  ]

if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge62: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_remove_inode.exit.thread.i.i

if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge61: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_remove_inode.exit.thread.i.i

if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge60: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_remove_inode.exit.thread.i.i

if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_remove_inode.exit.thread.i.i

do.body39.i.i.i:                                  ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i.i.i) #10
  %145 = ptrtoint ptr %_m40.i.i.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 1152921504606846976, ptr %_m40.i.i.i, align 8
  %conv44.i.i.i = sext i32 %call19.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i.i.i, ptr noundef nonnull @__func__.ocfs2_remove_inode, i32 noundef 660, ptr noundef nonnull @.str, i64 noundef %conv44.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i.i.i) #10
  br label %ocfs2_remove_inode.exit.thread.i.i

if.end50.i.i.i:                                   ; preds = %if.end18.i.i.i
  %146 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i328.i.i = getelementptr inbounds %struct.super_block, ptr %147, i32 0, i32 33
  %148 = ptrtoint ptr %s_fs_info.i.i328.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %s_fs_info.i.i328.i.i, align 16
  %s_feature_ro_compat.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %149, i32 0, i32 20
  %150 = ptrtoint ptr %s_feature_ro_compat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %s_feature_ro_compat.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 3
  %and3.i.i.i.i = and i32 %151, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %and3.i.i.i.i, 0
  %add6.i.i.i.i = add nuw nsw i32 %spec.select.i.i.i.i, 3
  %credits.1.i.i.i.i = select i1 %tobool4.not.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %add6.i.i.i.i
  %add.i.i.i = add nuw nsw i32 %credits.1.i.i.i.i, 7
  %call53.i.i.i = call ptr @ocfs2_start_trans(ptr noundef %137, i32 noundef %add.i.i.i) #10
  %cmp.i.i329.i.i = icmp ugt ptr %call53.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i329.i.i, label %if.then55.i.i.i, label %if.end84.i.i.i

if.then55.i.i.i:                                  ; preds = %if.end50.i.i.i
  %152 = ptrtoint ptr %call53.i.i.i to i32
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %152, label %do.body73.i.i.i [
    i32 -512, label %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge
    i32 -4, label %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge63
    i32 524289, label %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge64
    i32 -28, label %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge65
    i32 -122, label %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge66
  ]

if.then55.i.i.i.bail_unlock.i.i.i_crit_edge66:    ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock.i.i.i

if.then55.i.i.i.bail_unlock.i.i.i_crit_edge65:    ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock.i.i.i

if.then55.i.i.i.bail_unlock.i.i.i_crit_edge64:    ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock.i.i.i

if.then55.i.i.i.bail_unlock.i.i.i_crit_edge63:    ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock.i.i.i

if.then55.i.i.i.bail_unlock.i.i.i_crit_edge:      ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock.i.i.i

do.body73.i.i.i:                                  ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74.i.i.i) #10
  %154 = ptrtoint ptr %_m74.i.i.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 1152921504606846976, ptr %_m74.i.i.i, align 8
  %conv78.i.i.i = sext i32 %152 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74.i.i.i, ptr noundef nonnull @__func__.ocfs2_remove_inode, i32 noundef 668, ptr noundef nonnull @.str, i64 noundef %conv78.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74.i.i.i) #10
  br label %bail_unlock.i.i.i

if.end84.i.i.i:                                   ; preds = %if.end50.i.i.i
  %155 = ptrtoint ptr %ip_flags.i198.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ip_flags.i198.i, align 4
  %and86.i.i.i = and i32 %156, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i.i)
  %tobool87.not.i.i.i = icmp eq i32 %and86.i.i.i, 0
  br i1 %tobool87.not.i.i.i, label %if.then88.i.i.i, label %if.end84.i.i.i.if.end121.i.i.i_crit_edge

if.end84.i.i.i.if.end121.i.i.i_crit_edge:         ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i.i.i

if.then88.i.i.i:                                  ; preds = %if.end84.i.i.i
  %call89.i.i.i = call i32 @ocfs2_orphan_del(ptr noundef %137, ptr noundef %call53.i.i.i, ptr noundef %orphan_dir_inode.0.i.i, ptr noundef %inode, ptr noundef %132, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i.i)
  %cmp90.i.i.i = icmp slt i32 %call89.i.i.i, 0
  br i1 %cmp90.i.i.i, label %if.then92.i.i.i, label %if.then88.i.i.i.if.end121.i.i.i_crit_edge

if.then88.i.i.i.if.end121.i.i.i_crit_edge:        ; preds = %if.then88.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i.i.i

if.then92.i.i.i:                                  ; preds = %if.then88.i.i.i
  %157 = zext i32 %call89.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call89.i.i.i, label %do.body109.i.i.i [
    i32 -512, label %if.then92.i.i.i.bail_commit.i.i.i_crit_edge
    i32 -4, label %if.then92.i.i.i.bail_commit.i.i.i_crit_edge67
    i32 -28, label %if.then92.i.i.i.bail_commit.i.i.i_crit_edge68
    i32 -122, label %if.then92.i.i.i.bail_commit.i.i.i_crit_edge69
  ]

if.then92.i.i.i.bail_commit.i.i.i_crit_edge69:    ; preds = %if.then92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then92.i.i.i.bail_commit.i.i.i_crit_edge68:    ; preds = %if.then92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then92.i.i.i.bail_commit.i.i.i_crit_edge67:    ; preds = %if.then92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then92.i.i.i.bail_commit.i.i.i_crit_edge:      ; preds = %if.then92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

do.body109.i.i.i:                                 ; preds = %if.then92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110.i.i.i) #10
  %158 = ptrtoint ptr %_m110.i.i.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 1152921504606846976, ptr %_m110.i.i.i, align 8
  %conv114.i.i.i = sext i32 %call89.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110.i.i.i, ptr noundef nonnull @__func__.ocfs2_remove_inode, i32 noundef 676, ptr noundef nonnull @.str, i64 noundef %conv114.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110.i.i.i) #10
  br label %bail_commit.i.i.i

if.end121.i.i.i:                                  ; preds = %if.then88.i.i.i.if.end121.i.i.i_crit_edge, %if.end84.i.i.i.if.end121.i.i.i_crit_edge
  %ip_metadata_cache.i.i330.i.i = getelementptr i8, ptr %inode, i32 -56
  %call123.i.i.i = call i32 @ocfs2_journal_access_di(ptr noundef %call53.i.i.i, ptr noundef %ip_metadata_cache.i.i330.i.i, ptr noundef %68, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i.i.i)
  %cmp124.i.i.i = icmp slt i32 %call123.i.i.i, 0
  br i1 %cmp124.i.i.i, label %if.then126.i.i.i, label %if.end154.i.i.i

if.then126.i.i.i:                                 ; preds = %if.end121.i.i.i
  %159 = zext i32 %call123.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call123.i.i.i, label %do.body143.i.i.i [
    i32 -512, label %if.then126.i.i.i.bail_commit.i.i.i_crit_edge
    i32 -4, label %if.then126.i.i.i.bail_commit.i.i.i_crit_edge70
    i32 -28, label %if.then126.i.i.i.bail_commit.i.i.i_crit_edge71
    i32 -122, label %if.then126.i.i.i.bail_commit.i.i.i_crit_edge72
  ]

if.then126.i.i.i.bail_commit.i.i.i_crit_edge72:   ; preds = %if.then126.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then126.i.i.i.bail_commit.i.i.i_crit_edge71:   ; preds = %if.then126.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then126.i.i.i.bail_commit.i.i.i_crit_edge70:   ; preds = %if.then126.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then126.i.i.i.bail_commit.i.i.i_crit_edge:     ; preds = %if.then126.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

do.body143.i.i.i:                                 ; preds = %if.then126.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m144.i.i.i) #10
  %160 = ptrtoint ptr %_m144.i.i.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 1152921504606846976, ptr %_m144.i.i.i, align 8
  %conv148.i.i.i = sext i32 %call123.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m144.i.i.i, ptr noundef nonnull @__func__.ocfs2_remove_inode, i32 noundef 685, ptr noundef nonnull @.str, i64 noundef %conv148.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m144.i.i.i) #10
  br label %bail_commit.i.i.i

if.end154.i.i.i:                                  ; preds = %if.end121.i.i.i
  %call155.i.i.i = call i64 @ktime_get_real_seconds() #10
  %161 = call i64 @llvm.bswap.i64(i64 %call155.i.i.i) #10
  %i_dtime.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %139, i32 0, i32 16
  %162 = ptrtoint ptr %i_dtime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %i_dtime.i.i.i, align 8
  %i_flags.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %139, i32 0, i32 12
  %163 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %i_flags.i.i.i, align 4
  %and156.i.i.i = and i32 %164, -83886081
  store i32 %and156.i.i.i, ptr %i_flags.i.i.i, align 4
  call void @ocfs2_journal_dirty(ptr noundef %call53.i.i.i, ptr noundef %68) #10
  call void @ocfs2_remove_from_cache(ptr noundef %ip_metadata_cache.i.i330.i.i, ptr noundef %68) #10
  call void @dquot_free_inode(ptr noundef %inode) #10
  %165 = ptrtoint ptr %inode_alloc_bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %inode_alloc_bh.i.i.i, align 4
  %call158.i.i.i = call i32 @ocfs2_free_dinode(ptr noundef %call53.i.i.i, ptr noundef nonnull %call.i325.i.i, ptr noundef %166, ptr noundef %139) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i.i.i)
  %cmp159.i.i.i = icmp slt i32 %call158.i.i.i, 0
  br i1 %cmp159.i.i.i, label %if.then161.i.i.i, label %if.end154.i.i.i.bail_commit.i.i.i_crit_edge

if.end154.i.i.i.bail_commit.i.i.i_crit_edge:      ; preds = %if.end154.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then161.i.i.i:                                 ; preds = %if.end154.i.i.i
  %167 = zext i32 %call158.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call158.i.i.i, label %do.body178.i.i.i [
    i32 -512, label %if.then161.i.i.i.bail_commit.i.i.i_crit_edge
    i32 -4, label %if.then161.i.i.i.bail_commit.i.i.i_crit_edge73
    i32 -28, label %if.then161.i.i.i.bail_commit.i.i.i_crit_edge74
    i32 -122, label %if.then161.i.i.i.bail_commit.i.i.i_crit_edge75
  ]

if.then161.i.i.i.bail_commit.i.i.i_crit_edge75:   ; preds = %if.then161.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then161.i.i.i.bail_commit.i.i.i_crit_edge74:   ; preds = %if.then161.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then161.i.i.i.bail_commit.i.i.i_crit_edge73:   ; preds = %if.then161.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

if.then161.i.i.i.bail_commit.i.i.i_crit_edge:     ; preds = %if.then161.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit.i.i.i

do.body178.i.i.i:                                 ; preds = %if.then161.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m179.i.i.i) #10
  %168 = ptrtoint ptr %_m179.i.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 1152921504606846976, ptr %_m179.i.i.i, align 8
  %conv183.i.i.i = sext i32 %call158.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m179.i.i.i, ptr noundef nonnull @__func__.ocfs2_remove_inode, i32 noundef 699, ptr noundef nonnull @.str, i64 noundef %conv183.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m179.i.i.i) #10
  br label %bail_commit.i.i.i

bail_commit.i.i.i:                                ; preds = %do.body178.i.i.i, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge73, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge74, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge75, %if.end154.i.i.i.bail_commit.i.i.i_crit_edge, %do.body143.i.i.i, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge70, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge71, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge72, %do.body109.i.i.i, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge67, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge68, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge69
  %status.0.i331.i.i = phi i32 [ %call158.i.i.i, %if.end154.i.i.i.bail_commit.i.i.i_crit_edge ], [ %call89.i.i.i, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge ], [ %call89.i.i.i, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge67 ], [ %call89.i.i.i, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge68 ], [ %call89.i.i.i, %if.then92.i.i.i.bail_commit.i.i.i_crit_edge69 ], [ %call89.i.i.i, %do.body109.i.i.i ], [ %call123.i.i.i, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge ], [ %call123.i.i.i, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge70 ], [ %call123.i.i.i, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge71 ], [ %call123.i.i.i, %if.then126.i.i.i.bail_commit.i.i.i_crit_edge72 ], [ %call123.i.i.i, %do.body143.i.i.i ], [ %call158.i.i.i, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge ], [ %call158.i.i.i, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge73 ], [ %call158.i.i.i, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge74 ], [ %call158.i.i.i, %if.then161.i.i.i.bail_commit.i.i.i_crit_edge75 ], [ %call158.i.i.i, %do.body178.i.i.i ]
  %call190.i.i.i = call i32 @ocfs2_commit_trans(ptr noundef %137, ptr noundef %call53.i.i.i) #10
  br label %bail_unlock.i.i.i

bail_unlock.i.i.i:                                ; preds = %bail_commit.i.i.i, %do.body73.i.i.i, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge63, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge64, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge65, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge66
  %status.1.i.i.i = phi i32 [ %status.0.i331.i.i, %bail_commit.i.i.i ], [ %152, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge ], [ %152, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge63 ], [ %152, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge64 ], [ %152, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge65 ], [ %152, %if.then55.i.i.i.bail_unlock.i.i.i_crit_edge66 ], [ %152, %do.body73.i.i.i ]
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call.i325.i.i, i32 noundef 1) #10
  call void @up_write(ptr noundef %i_rwsem.i.i.i.i) #10
  %169 = ptrtoint ptr %inode_alloc_bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %inode_alloc_bh.i.i.i, align 4
  %tobool.not.i268.i.i.i = icmp eq ptr %170, null
  br i1 %tobool.not.i268.i.i.i, label %bail_unlock.i.i.i.ocfs2_remove_inode.exit.i.i_crit_edge, label %if.then.i.i.i.i

bail_unlock.i.i.i.ocfs2_remove_inode.exit.i.i_crit_edge: ; preds = %bail_unlock.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_remove_inode.exit.i.i

if.then.i.i.i.i:                                  ; preds = %bail_unlock.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %170) #10
  br label %ocfs2_remove_inode.exit.i.i

ocfs2_remove_inode.exit.thread.i.i:               ; preds = %do.body39.i.i.i, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge60, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge61, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge62, %do.body.i327.i.i
  %status.2.i.ph.i.i = phi i32 [ %call19.i.i.i, %do.body39.i.i.i ], [ %call19.i.i.i, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge ], [ %call19.i.i.i, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge60 ], [ %call19.i.i.i, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge61 ], [ %call19.i.i.i, %if.then22.i.i.i.ocfs2_remove_inode.exit.thread.i.i_crit_edge62 ], [ -2, %do.body.i327.i.i ]
  call void @iput(ptr noundef %call.i325.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode_alloc_bh.i.i.i) #10
  br label %if.then196.i.i

ocfs2_remove_inode.exit.i.i:                      ; preds = %if.then.i.i.i.i, %bail_unlock.i.i.i.ocfs2_remove_inode.exit.i.i_crit_edge
  call void @iput(ptr noundef nonnull %call.i325.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode_alloc_bh.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i.i.i)
  %cmp194.i.i = icmp slt i32 %status.1.i.i.i, 0
  br i1 %cmp194.i.i, label %ocfs2_remove_inode.exit.i.i.if.then196.i.i_crit_edge, label %ocfs2_remove_inode.exit.i.i.bail_unlock_dir.i.i_crit_edge

ocfs2_remove_inode.exit.i.i.bail_unlock_dir.i.i_crit_edge: ; preds = %ocfs2_remove_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

ocfs2_remove_inode.exit.i.i.if.then196.i.i_crit_edge: ; preds = %ocfs2_remove_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then196.i.i

if.then196.i.i:                                   ; preds = %ocfs2_remove_inode.exit.i.i.if.then196.i.i_crit_edge, %ocfs2_remove_inode.exit.thread.i.i
  %status.2.i350.i.i = phi i32 [ %status.2.i.ph.i.i, %ocfs2_remove_inode.exit.thread.i.i ], [ %status.1.i.i.i, %ocfs2_remove_inode.exit.i.i.if.then196.i.i_crit_edge ]
  %171 = zext i32 %status.2.i350.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %status.2.i350.i.i, label %do.body213.i.i [
    i32 -512, label %if.then196.i.i.bail_unlock_dir.i.i_crit_edge
    i32 -4, label %if.then196.i.i.bail_unlock_dir.i.i_crit_edge76
    i32 -28, label %if.then196.i.i.bail_unlock_dir.i.i_crit_edge77
    i32 -122, label %if.then196.i.i.bail_unlock_dir.i.i_crit_edge78
  ]

if.then196.i.i.bail_unlock_dir.i.i_crit_edge78:   ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then196.i.i.bail_unlock_dir.i.i_crit_edge77:   ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then196.i.i.bail_unlock_dir.i.i_crit_edge76:   ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

if.then196.i.i.bail_unlock_dir.i.i_crit_edge:     ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_dir.i.i

do.body213.i.i:                                   ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m214.i.i) #10
  %172 = ptrtoint ptr %_m214.i.i to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 1152921504606846976, ptr %_m214.i.i, align 8
  %conv218.i.i = sext i32 %status.2.i350.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m214.i.i, ptr noundef nonnull @__func__.ocfs2_wipe_inode, i32 noundef 821, ptr noundef nonnull @.str, i64 noundef %conv218.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m214.i.i) #10
  br label %bail_unlock_dir.i.i

bail_unlock_dir.i.i:                              ; preds = %do.body213.i.i, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge76, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge77, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge78, %ocfs2_remove_inode.exit.i.i.bail_unlock_dir.i.i_crit_edge, %do.body181.i.i, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge57, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge58, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge59, %do.body149.i.i, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge54, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge55, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge56, %do.body116.i.i, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge50, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge51, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge52, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge53, %do.body80.i.i, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge47, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge48, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge49
  %status.0.i205.i = phi i32 [ %status.1.i.i.i, %ocfs2_remove_inode.exit.i.i.bail_unlock_dir.i.i_crit_edge ], [ %status.0180.i342.i.i, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge ], [ %status.0180.i342.i.i, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge47 ], [ %status.0180.i342.i.i, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge48 ], [ %status.0180.i342.i.i, %if.then63.i.i.bail_unlock_dir.i.i_crit_edge49 ], [ %status.0180.i342.i.i, %do.body80.i.i ], [ %call97.i.i, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge ], [ %call97.i.i, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge50 ], [ %call97.i.i, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge51 ], [ %call97.i.i, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge52 ], [ %call97.i.i, %if.then96.i.i.bail_unlock_dir.i.i_crit_edge53 ], [ %call97.i.i, %do.body116.i.i ], [ %call129.i.i, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge ], [ %call129.i.i, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge54 ], [ %call129.i.i, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge55 ], [ %call129.i.i, %if.then132.i.i.bail_unlock_dir.i.i_crit_edge56 ], [ %call129.i.i, %do.body149.i.i ], [ %call161.i.i, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge ], [ %call161.i.i, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge57 ], [ %call161.i.i, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge58 ], [ %call161.i.i, %if.then164.i.i.bail_unlock_dir.i.i_crit_edge59 ], [ %call161.i.i, %do.body181.i.i ], [ %status.2.i350.i.i, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge ], [ %status.2.i350.i.i, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge76 ], [ %status.2.i350.i.i, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge77 ], [ %status.2.i350.i.i, %if.then196.i.i.bail_unlock_dir.i.i_crit_edge78 ], [ %status.2.i350.i.i, %do.body213.i.i ]
  %173 = ptrtoint ptr %ip_flags.i198.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %ip_flags.i198.i, align 4
  %and227.i.i = and i32 %174, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227.i.i)
  %tobool228.not.i.i = icmp eq i32 %and227.i.i, 0
  br i1 %tobool228.not.i.i, label %if.end230.i.i, label %bail_unlock_dir.i.i.ocfs2_wipe_inode.exit.i_crit_edge

bail_unlock_dir.i.i.ocfs2_wipe_inode.exit.i_crit_edge: ; preds = %bail_unlock_dir.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_wipe_inode.exit.i

if.end230.i.i:                                    ; preds = %bail_unlock_dir.i.i
  call void @ocfs2_inode_unlock(ptr noundef %orphan_dir_inode.0.i.i, i32 noundef 1) #10
  %i_rwsem.i333.i.i = getelementptr inbounds %struct.inode, ptr %orphan_dir_inode.0.i.i, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i333.i.i) #10
  %175 = ptrtoint ptr %orphan_dir_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %orphan_dir_bh.i.i, align 4
  %tobool.not.i334.i.i = icmp eq ptr %176, null
  br i1 %tobool.not.i334.i.i, label %if.end230.i.i.bail.i.i_crit_edge, label %if.then.i335.i.i

if.end230.i.i.bail.i.i_crit_edge:                 ; preds = %if.end230.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

if.then.i335.i.i:                                 ; preds = %if.end230.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %176) #10
  br label %bail.i.i

bail.i.i:                                         ; preds = %if.then.i335.i.i, %if.end230.i.i.bail.i.i_crit_edge, %do.body47.i.i, %if.then30.i.i.bail.i.i_crit_edge, %if.then30.i.i.bail.i.i_crit_edge31, %if.then30.i.i.bail.i.i_crit_edge32, %if.then30.i.i.bail.i.i_crit_edge33, %do.body.i.i
  %orphan_dir_inode.1.i.i = phi ptr [ null, %do.body.i.i ], [ %call4.i.i, %if.then30.i.i.bail.i.i_crit_edge ], [ %call4.i.i, %if.then30.i.i.bail.i.i_crit_edge31 ], [ %call4.i.i, %if.then30.i.i.bail.i.i_crit_edge32 ], [ %call4.i.i, %if.then30.i.i.bail.i.i_crit_edge33 ], [ %call4.i.i, %do.body47.i.i ], [ %orphan_dir_inode.0.i.i, %if.end230.i.i.bail.i.i_crit_edge ], [ %orphan_dir_inode.0.i.i, %if.then.i335.i.i ]
  %orphaned_slot.1.i.i = phi i32 [ %conv.i.i, %do.body.i.i ], [ %conv.i.i, %if.then30.i.i.bail.i.i_crit_edge ], [ %conv.i.i, %if.then30.i.i.bail.i.i_crit_edge31 ], [ %conv.i.i, %if.then30.i.i.bail.i.i_crit_edge32 ], [ %conv.i.i, %if.then30.i.i.bail.i.i_crit_edge33 ], [ %conv.i.i, %do.body47.i.i ], [ %orphaned_slot.0.i.i, %if.end230.i.i.bail.i.i_crit_edge ], [ %orphaned_slot.0.i.i, %if.then.i335.i.i ]
  %status.1.i.i = phi i32 [ -2, %do.body.i.i ], [ %call27.i.i, %if.then30.i.i.bail.i.i_crit_edge ], [ %call27.i.i, %if.then30.i.i.bail.i.i_crit_edge31 ], [ %call27.i.i, %if.then30.i.i.bail.i.i_crit_edge32 ], [ %call27.i.i, %if.then30.i.i.bail.i.i_crit_edge33 ], [ %call27.i.i, %do.body47.i.i ], [ %status.0.i205.i, %if.end230.i.i.bail.i.i_crit_edge ], [ %status.0.i205.i, %if.then.i335.i.i ]
  call void @iput(ptr noundef %orphan_dir_inode.1.i.i) #10
  %osb_lock.i337.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i337.i.i) #10
  %osb_orphan_wipes.i338.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 91
  %177 = ptrtoint ptr %osb_orphan_wipes.i338.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %osb_orphan_wipes.i338.i.i, align 4
  %arrayidx.i339.i.i = getelementptr i32, ptr %178, i32 %orphaned_slot.1.i.i
  %179 = ptrtoint ptr %arrayidx.i339.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i339.i.i, align 4
  %dec.i.i.i = add i32 %180, -1
  store i32 %dec.i.i.i, ptr %arrayidx.i339.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i337.i.i) #10
  %osb_wipe_event.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 92
  call void @__wake_up(ptr noundef %osb_wipe_event.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %ocfs2_wipe_inode.exit.i

ocfs2_wipe_inode.exit.i:                          ; preds = %bail.i.i, %bail_unlock_dir.i.i.ocfs2_wipe_inode.exit.i_crit_edge, %ocfs2_check_orphan_recovery_state.exit.i.i.ocfs2_wipe_inode.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %status.1.i.i, %bail.i.i ], [ %ret.0.i.i.i, %ocfs2_check_orphan_recovery_state.exit.i.i.ocfs2_wipe_inode.exit.i_crit_edge ], [ %status.0.i205.i, %bail_unlock_dir.i.i.ocfs2_wipe_inode.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orphan_dir_bh.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp97.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp97.i, label %if.then99.i, label %if.end131.i

if.then99.i:                                      ; preds = %ocfs2_wipe_inode.exit.i
  %181 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %retval.0.i.i, label %do.body119.i [
    i32 -35, label %if.then99.i.bail_unlock_inode.i_crit_edge
    i32 -512, label %if.then99.i.bail_unlock_inode.i_crit_edge79
    i32 -4, label %if.then99.i.bail_unlock_inode.i_crit_edge80
    i32 -28, label %if.then99.i.bail_unlock_inode.i_crit_edge81
    i32 -122, label %if.then99.i.bail_unlock_inode.i_crit_edge82
  ]

if.then99.i.bail_unlock_inode.i_crit_edge82:      ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_inode.i

if.then99.i.bail_unlock_inode.i_crit_edge81:      ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_inode.i

if.then99.i.bail_unlock_inode.i_crit_edge80:      ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_inode.i

if.then99.i.bail_unlock_inode.i_crit_edge79:      ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_inode.i

if.then99.i.bail_unlock_inode.i_crit_edge:        ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_inode.i

do.body119.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m120.i) #10
  %182 = ptrtoint ptr %_m120.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 1152921504606846976, ptr %_m120.i, align 8
  %conv124.i = sext i32 %retval.0.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m120.i, ptr noundef nonnull @__func__.ocfs2_delete_inode, i32 noundef 1082, ptr noundef nonnull @.str, i64 noundef %conv124.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m120.i) #10
  br label %bail_unlock_inode.i

if.end131.i:                                      ; preds = %ocfs2_wipe_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %ip_flags.i198.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ip_flags.i198.i, align 4
  %or.i = or i32 %184, 8
  store i32 %or.i, ptr %ip_flags.i198.i, align 4
  br label %bail_unlock_inode.i

bail_unlock_inode.i:                              ; preds = %if.end131.i, %do.body119.i, %if.then99.i.bail_unlock_inode.i_crit_edge, %if.then99.i.bail_unlock_inode.i_crit_edge79, %if.then99.i.bail_unlock_inode.i_crit_edge80, %if.then99.i.bail_unlock_inode.i_crit_edge81, %if.then99.i.bail_unlock_inode.i_crit_edge82, %if.end94.i, %if.then56.i
  call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef 1) #10
  %185 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %di_bh.i, align 4
  %tobool.not.i207.i = icmp eq ptr %186, null
  br i1 %tobool.not.i207.i, label %bail_unlock_inode.i.bail_unlock_nfs_sync.i_crit_edge, label %if.then.i208.i

bail_unlock_inode.i.bail_unlock_nfs_sync.i_crit_edge: ; preds = %bail_unlock_inode.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_nfs_sync.i

if.then.i208.i:                                   ; preds = %bail_unlock_inode.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %186) #10
  br label %bail_unlock_nfs_sync.i

bail_unlock_nfs_sync.i:                           ; preds = %if.then.i208.i, %bail_unlock_inode.i.bail_unlock_nfs_sync.i_crit_edge, %if.end50.i
  %187 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info134.i = getelementptr inbounds %struct.super_block, ptr %188, i32 0, i32 33
  %189 = ptrtoint ptr %s_fs_info134.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %s_fs_info134.i, align 16
  call void @ocfs2_nfs_sync_unlock(ptr noundef %190, i32 noundef 0) #10
  br label %bail_unblock.i

bail_unblock.i:                                   ; preds = %bail_unlock_nfs_sync.i, %do.body.i
  call void @ocfs2_unblock_signals(ptr noundef nonnull %oldset.i) #10
  br label %ocfs2_delete_inode.exit

ocfs2_delete_inode.exit:                          ; preds = %bail_unblock.i, %if.then9.i, %lor.lhs.false.i.ocfs2_delete_inode.exit_crit_edge, %if.then.ocfs2_delete_inode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldset.i) #10
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %ocfs2_delete_inode.exit
  %add.ptr.i.i7 = getelementptr i8, ptr %inode, i32 -1608
  %i_sb.i8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %191 = ptrtoint ptr %i_sb.i8 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i_sb.i8, align 4
  %s_fs_info.i9 = getelementptr inbounds %struct.super_block, ptr %192, i32 0, i32 33
  %193 = ptrtoint ptr %s_fs_info.i9 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %s_fs_info.i9, align 16
  call void @clear_inode(ptr noundef %inode) #10
  %195 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %add.ptr.i.i7, align 8
  %197 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %0, align 4
  call fastcc void @trace_ocfs2_clear_inode(i64 noundef %196, i32 noundef %198) #10
  %cmp.i10 = icmp eq ptr %194, null
  br i1 %cmp.i10, label %do.body1.i, label %do.end19.i

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i6) #10
  %199 = ptrtoint ptr %_m.i6 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 1152921504606846976, ptr %_m.i6, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i6, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1121, ptr noundef nonnull @.str.34) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4.i) #10
  %200 = ptrtoint ptr %_m4.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 1152921504606846976, ptr %_m4.i, align 8
  %i_ino.i11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %201 = ptrtoint ptr %i_ino.i11 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %i_ino.i11, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1121, ptr noundef nonnull @.str.35, i32 noundef %202) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1121, 0\0A.popsection", ""() #10, !srcloc !226
  unreachable

do.end19.i:                                       ; preds = %if.end
  call void @dquot_drop(ptr noundef %inode) #10
  call void @ocfs2_open_unlock(ptr noundef %inode) #10
  %ip_rw_lockres.i = getelementptr i8, ptr %inode, i32 -1600
  call void @ocfs2_mark_lockres_freeing(ptr noundef nonnull %194, ptr noundef %ip_rw_lockres.i) #10
  %ip_inode_lockres.i = getelementptr i8, ptr %inode, i32 -1208
  call void @ocfs2_mark_lockres_freeing(ptr noundef nonnull %194, ptr noundef %ip_inode_lockres.i) #10
  %ip_open_lockres.i = getelementptr i8, ptr %inode, i32 -816
  call void @ocfs2_mark_lockres_freeing(ptr noundef nonnull %194, ptr noundef %ip_open_lockres.i) #10
  %osb_la_resmap.i = getelementptr inbounds %struct.ocfs2_super, ptr %194, i32 0, i32 54
  %ip_la_data_resv.i = getelementptr i8, ptr %inode, i32 844
  call void @ocfs2_resv_discard(ptr noundef %osb_la_resmap.i, ptr noundef %ip_la_data_resv.i) #10
  call void @ocfs2_resv_init_once(ptr noundef %ip_la_data_resv.i) #10
  %ip_flags.i = getelementptr i8, ptr %inode, i32 -76
  %203 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %ip_flags.i, align 4
  %and21.i = and i32 %204, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %do.end19.i.do.body25.i_crit_edge

do.end19.i.do.body25.i_crit_edge:                 ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

if.then23.i:                                      ; preds = %do.end19.i
  %205 = ptrtoint ptr %i_sb.i8 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %i_sb.i8, align 4
  %s_fs_info.i.i12 = getelementptr inbounds %struct.super_block, ptr %206, i32 0, i32 33
  %207 = ptrtoint ptr %s_fs_info.i.i12 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %s_fs_info.i.i12, align 16
  %s_feature_incompat.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %208, i32 0, i32 19
  %209 = ptrtoint ptr %s_feature_incompat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %s_feature_incompat.i.i.i, align 8
  %and.i.i.i = and i32 %210, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i13 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i13, label %ocfs2_mount_local.exit.i.i, label %if.then23.i.do.body25.i_crit_edge

if.then23.i.do.body25.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

ocfs2_mount_local.exit.i.i:                       ; preds = %if.then23.i
  %s_mount_opt.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %208, i32 0, i32 28
  %211 = ptrtoint ptr %s_mount_opt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %s_mount_opt.i.i.i, align 8
  %213 = and i32 %212, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i.i14 = icmp eq i32 %213, 0
  br i1 %tobool.not.i.i14, label %if.end.i.i17, label %ocfs2_mount_local.exit.i.i.do.body25.i_crit_edge

ocfs2_mount_local.exit.i.i.do.body25.i_crit_edge: ; preds = %ocfs2_mount_local.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

if.end.i.i17:                                     ; preds = %ocfs2_mount_local.exit.i.i
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %inode, i32 -56
  %call.i.i.i15 = call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ip_metadata_cache.i.i.i) #10
  %s_fs_info.i.i.i16 = getelementptr inbounds %struct.super_block, ptr %call.i.i.i15, i32 0, i32 33
  %214 = ptrtoint ptr %s_fs_info.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %s_fs_info.i.i.i16, align 16
  %journal1.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %215, i32 0, i32 45
  %216 = ptrtoint ptr %journal1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %journal1.i.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #10
  %ci_last_trans.i.i.i = getelementptr i8, ptr %inode, i32 -48
  %218 = ptrtoint ptr %ci_last_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ci_last_trans.i.i.i, align 8
  %j_trans_id.i.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %217, i32 0, i32 7
  %220 = ptrtoint ptr %j_trans_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %j_trans_id.i.i.i, align 4
  %sub.i.i.i = sub i32 %219, %221
  call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %tobool3.not.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i17.do.body25.i_crit_edge

if.end.i.i17.do.body25.i_crit_edge:               ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

if.then4.i.i:                                     ; preds = %if.end.i.i17
  %checkpoint_event.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %208, i32 0, i32 44
  call void @__wake_up(ptr noundef %checkpoint_event.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 205) #10
  %call.i35.i.i = call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ip_metadata_cache.i.i.i) #10
  %s_fs_info.i36.i.i = getelementptr inbounds %struct.super_block, ptr %call.i35.i.i, i32 0, i32 33
  %222 = ptrtoint ptr %s_fs_info.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %s_fs_info.i36.i.i, align 16
  %journal1.i37.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %223, i32 0, i32 45
  %224 = ptrtoint ptr %journal1.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %journal1.i37.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #10
  %226 = ptrtoint ptr %ci_last_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ci_last_trans.i.i.i, align 8
  %j_trans_id.i39.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %225, i32 0, i32 7
  %228 = ptrtoint ptr %j_trans_id.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %j_trans_id.i39.i.i, align 4
  %sub.i40.i.i = sub i32 %227, %229
  call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i40.i.i)
  %tobool11.not.i.i = icmp sgt i32 %sub.i40.i.i, -1
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.then4.i.i.do.body25.i_crit_edge

if.then4.i.i.do.body25.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

if.end13.i.i:                                     ; preds = %if.then4.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  %230 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #10
  %journal.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %208, i32 0, i32 45
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %cleanup.i.i, %if.end13.i.i
  %231 = ptrtoint ptr %journal.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %journal.i.i, align 4
  %j_checkpointed.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %232, i32 0, i32 9
  %call14.i.i = call i32 @prepare_to_wait_event(ptr noundef %j_checkpointed.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  %call.i43.i.i = call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ip_metadata_cache.i.i.i) #10
  %s_fs_info.i44.i.i = getelementptr inbounds %struct.super_block, ptr %call.i43.i.i, i32 0, i32 33
  %233 = ptrtoint ptr %s_fs_info.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %s_fs_info.i44.i.i, align 16
  %journal1.i45.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %234, i32 0, i32 45
  %235 = ptrtoint ptr %journal1.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %journal1.i45.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #10
  %237 = ptrtoint ptr %ci_last_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ci_last_trans.i.i.i, align 8
  %j_trans_id.i47.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %236, i32 0, i32 7
  %239 = ptrtoint ptr %j_trans_id.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %j_trans_id.i47.i.i, align 4
  %sub.i48.i.i = sub i32 %238, %240
  call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #10
  %tobool17.not.i.i = icmp sgt i32 %sub.i48.i.i, -1
  br i1 %tobool17.not.i.i, label %cleanup.i.i, label %for.end.i.i

cleanup.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @schedule() #10
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %241 = ptrtoint ptr %journal.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %journal.i.i, align 4
  %j_checkpointed21.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %242, i32 0, i32 9
  call void @finish_wait(ptr noundef %j_checkpointed21.i.i, ptr noundef nonnull %__wq_entry.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  br label %do.body25.i

do.body25.i:                                      ; preds = %for.end.i.i, %if.then4.i.i.do.body25.i_crit_edge, %if.end.i.i17.do.body25.i_crit_edge, %ocfs2_mount_local.exit.i.i.do.body25.i_crit_edge, %if.then23.i.do.body25.i_crit_edge, %do.end19.i.do.body25.i_crit_edge
  %ip_io_markers.i = getelementptr i8, ptr %inode, i32 -184
  %243 = ptrtoint ptr %ip_io_markers.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile ptr, ptr %ip_io_markers.i, align 4
  %cmp.i.not.i = icmp eq ptr %244, %ip_io_markers.i
  br i1 %cmp.i.not.i, label %do.body55.i, label %do.body29.i

do.body29.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30.i) #10
  %245 = ptrtoint ptr %_m30.i to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 1152921504606846976, ptr %_m30.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1150, ptr noundef nonnull @.str.36) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38.i) #10
  %246 = ptrtoint ptr %_m38.i to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 1152921504606846976, ptr %_m38.i, align 8
  %247 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %add.ptr.i.i7, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1150, ptr noundef nonnull @.str.37, i64 noundef %248) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1150, 0\0A.popsection", ""() #10, !srcloc !227
  unreachable

do.body55.i:                                      ; preds = %do.body25.i
  %ip_unwritten_list.i = getelementptr i8, ptr %inode, i32 -68
  %249 = ptrtoint ptr %ip_unwritten_list.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile ptr, ptr %ip_unwritten_list.i, align 4
  %cmp.i353.not.i = icmp eq ptr %250, %ip_unwritten_list.i
  br i1 %cmp.i353.not.i, label %do.end84.i, label %do.body59.i

do.body59.i:                                      ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60.i) #10
  %251 = ptrtoint ptr %_m60.i to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 1152921504606846976, ptr %_m60.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1153, ptr noundef nonnull @.str.38) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68.i) #10
  %252 = ptrtoint ptr %_m68.i to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 1152921504606846976, ptr %_m68.i, align 8
  %253 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %add.ptr.i.i7, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1153, ptr noundef nonnull @.str.39, i64 noundef %254) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1153, 0\0A.popsection", ""() #10, !srcloc !228
  unreachable

do.end84.i:                                       ; preds = %do.body55.i
  call void @ocfs2_extent_map_trunc(ptr noundef %inode, i32 noundef 0) #10
  %call85.i = call i32 @ocfs2_drop_inode_locks(ptr noundef %inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  br i1 %cmp86.i, label %if.then87.i, label %do.end84.i.if.end106.i_crit_edge

do.end84.i.if.end106.i_crit_edge:                 ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

if.then87.i:                                      ; preds = %do.end84.i
  %255 = zext i32 %call85.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call85.i, label %do.body97.i [
    i32 -512, label %if.then87.i.if.end106.i_crit_edge
    i32 -4, label %if.then87.i.if.end106.i_crit_edge83
    i32 -28, label %if.then87.i.if.end106.i_crit_edge84
    i32 -122, label %if.then87.i.if.end106.i_crit_edge85
  ]

if.then87.i.if.end106.i_crit_edge85:              ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

if.then87.i.if.end106.i_crit_edge84:              ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

if.then87.i.if.end106.i_crit_edge83:              ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

if.then87.i.if.end106.i_crit_edge:                ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

do.body97.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m98.i) #10
  %256 = ptrtoint ptr %_m98.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 1152921504606846976, ptr %_m98.i, align 8
  %conv.i18 = sext i32 %call85.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m98.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1159, ptr noundef nonnull @.str, i64 noundef %conv.i18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m98.i) #10
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.body97.i, %if.then87.i.if.end106.i_crit_edge, %if.then87.i.if.end106.i_crit_edge83, %if.then87.i.if.end106.i_crit_edge84, %if.then87.i.if.end106.i_crit_edge85, %do.end84.i.if.end106.i_crit_edge
  call void @ocfs2_lock_res_free(ptr noundef %ip_rw_lockres.i) #10
  call void @ocfs2_lock_res_free(ptr noundef %ip_inode_lockres.i) #10
  call void @ocfs2_lock_res_free(ptr noundef %ip_open_lockres.i) #10
  %ip_metadata_cache.i.i = getelementptr i8, ptr %inode, i32 -56
  call void @ocfs2_metadata_cache_exit(ptr noundef %ip_metadata_cache.i.i) #10
  %ci_num_cached.i = getelementptr i8, ptr %inode, i32 -40
  %257 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %ci_num_cached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool113.not.i = icmp eq i32 %258, 0
  br i1 %tobool113.not.i, label %do.body143.i, label %do.body115.i

do.body115.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m116.i) #10
  %259 = ptrtoint ptr %_m116.i to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 1152921504606846976, ptr %_m116.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m116.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1170, ptr noundef nonnull @.str.40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m116.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m124.i) #10
  %260 = ptrtoint ptr %_m124.i to i32
  call void @__asan_store8_noabort(i32 %260)
  store i64 1152921504606846976, ptr %_m124.i, align 8
  %261 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %add.ptr.i.i7, align 8
  %263 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %ci_num_cached.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m124.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1170, ptr noundef nonnull @.str.41, i64 noundef %262, i32 noundef %264) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m124.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1170, 0\0A.popsection", ""() #10, !srcloc !229
  unreachable

do.body143.i:                                     ; preds = %if.end106.i
  %ci_flags.i = getelementptr i8, ptr %inode, i32 -44
  %265 = ptrtoint ptr %ci_flags.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %ci_flags.i, align 4
  %and145.i = and i32 %266, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i)
  %tobool146.not.i = icmp eq i32 %and145.i, 0
  br i1 %tobool146.not.i, label %do.body148.i, label %do.body174.i

do.body148.i:                                     ; preds = %do.body143.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m149.i) #10
  %267 = ptrtoint ptr %_m149.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 1152921504606846976, ptr %_m149.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m149.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1174, ptr noundef nonnull @.str.42) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m149.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m157.i) #10
  %268 = ptrtoint ptr %_m157.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 1152921504606846976, ptr %_m157.i, align 8
  %269 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %add.ptr.i.i7, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m157.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1174, ptr noundef nonnull @.str.43, i64 noundef %270) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m157.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

do.body174.i:                                     ; preds = %do.body143.i
  %ip_lock.i = getelementptr i8, ptr %inode, i32 -232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %271 = ptrtoint ptr %ip_lock.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %ip_lock.i, align 4
  %272 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.i.not.i, label %do.body204.i, label %do.body178.i

do.body178.i:                                     ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m179.i) #10
  %273 = ptrtoint ptr %_m179.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 1152921504606846976, ptr %_m179.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m179.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1178, ptr noundef nonnull @.str.44) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m179.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m187.i) #10
  %274 = ptrtoint ptr %_m187.i to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 1152921504606846976, ptr %_m187.i, align 8
  %275 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %add.ptr.i.i7, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m187.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1178, ptr noundef nonnull @.str.45, i64 noundef %276) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m187.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1178, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

do.body204.i:                                     ; preds = %do.body174.i
  %ip_io_mutex.i = getelementptr i8, ptr %inode, i32 -168
  %call205.i = call i32 @mutex_trylock(ptr noundef %ip_io_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205.i)
  %tobool206.not.i = icmp eq i32 %call205.i, 0
  br i1 %tobool206.not.i, label %do.body208.i, label %do.end233.i

do.body208.i:                                     ; preds = %do.body204.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m209.i) #10
  %277 = ptrtoint ptr %_m209.i to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 1152921504606846976, ptr %_m209.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m209.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1182, ptr noundef nonnull @.str.46) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m209.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m217.i) #10
  %278 = ptrtoint ptr %_m217.i to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 1152921504606846976, ptr %_m217.i, align 8
  %279 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %add.ptr.i.i7, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m217.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1182, ptr noundef nonnull @.str.47, i64 noundef %280) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m217.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1182, 0\0A.popsection", ""() #10, !srcloc !232
  unreachable

do.end233.i:                                      ; preds = %do.body204.i
  call void @mutex_unlock(ptr noundef %ip_io_mutex.i) #10
  %ip_alloc_sem.i = getelementptr i8, ptr %inode, i32 -424
  %call236.i = call i32 @down_write_trylock(ptr noundef %ip_alloc_sem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236.i)
  %tobool237.not.i = icmp eq i32 %call236.i, 0
  br i1 %tobool237.not.i, label %do.body239.i, label %do.end264.i

do.body239.i:                                     ; preds = %do.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m240.i) #10
  %281 = ptrtoint ptr %_m240.i to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 1152921504606846976, ptr %_m240.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m240.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1191, ptr noundef nonnull @.str.48) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m240.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m248.i) #10
  %282 = ptrtoint ptr %_m248.i to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 1152921504606846976, ptr %_m248.i, align 8
  %283 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %add.ptr.i.i7, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m248.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1191, ptr noundef nonnull @.str.49, i64 noundef %284) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m248.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1191, 0\0A.popsection", ""() #10, !srcloc !233
  unreachable

do.end264.i:                                      ; preds = %do.end233.i
  call void @up_write(ptr noundef %ip_alloc_sem.i) #10
  %ip_open_count.i = getelementptr i8, ptr %inode, i32 -188
  %285 = ptrtoint ptr %ip_open_count.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ip_open_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool267.not.i = icmp eq i32 %286, 0
  br i1 %tobool267.not.i, label %ocfs2_clear_inode.exit, label %do.body269.i

do.body269.i:                                     ; preds = %do.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m270.i) #10
  %287 = ptrtoint ptr %_m270.i to i32
  call void @__asan_store8_noabort(i32 %287)
  store i64 1152921504606846976, ptr %_m270.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m270.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1196, ptr noundef nonnull @.str.50) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m270.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m278.i) #10
  %288 = ptrtoint ptr %_m278.i to i32
  call void @__asan_store8_noabort(i32 %288)
  store i64 1152921504606846976, ptr %_m278.i, align 8
  %289 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %add.ptr.i.i7, align 8
  %291 = ptrtoint ptr %ip_open_count.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %ip_open_count.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m278.i, ptr noundef nonnull @__func__.ocfs2_clear_inode, i32 noundef 1196, ptr noundef nonnull @.str.51, i64 noundef %290, i32 noundef %292) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m278.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #10, !srcloc !234
  unreachable

ocfs2_clear_inode.exit:                           ; preds = %do.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  %293 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %ip_flags.i, align 4
  %ip_dir_start_lookup.i = getelementptr i8, ptr %inode, i32 824
  %294 = ptrtoint ptr %ip_dir_start_lookup.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %ip_dir_start_lookup.i, align 8
  %295 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_store8_noabort(i32 %295)
  store i64 0, ptr %add.ptr.i.i7, align 8
  %journal.i = getelementptr inbounds %struct.ocfs2_super, ptr %194, i32 0, i32 45
  %296 = ptrtoint ptr %journal.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %journal.i, align 4
  %j_journal.i = getelementptr inbounds %struct.ocfs2_journal, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %j_journal.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %j_journal.i, align 4
  %ip_jinode.i = getelementptr i8, ptr %inode, i32 784
  call void @jbd2_journal_release_jbd_inode(ptr noundef %299, ptr noundef %ip_jinode.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_drop_inode(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %5 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip_flags, align 4
  tail call fastcc void @trace_ocfs2_drop_inode(i64 noundef %1, i32 noundef %4, i32 noundef %6)
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %7 = ptrtoint ptr %i_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %i_lock, align 4
  %8 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body5, label %do.end10, !prof !210

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1233, 0\0A.popsection", ""() #10, !srcloc !235
  unreachable

do.end10:                                         ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 8
  %or = or i32 %10, 16
  store i32 %or, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  %call12 = tail call i32 @write_inode_now(ptr noundef %inode, i32 noundef 1) #10
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #10
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.end10.if.end37_crit_edge, label %do.end31, !prof !198

do.end10.if.end37_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end31:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1238, i32 noundef 9, ptr noundef null) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %do.end10.if.end37_crit_edge
  %13 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_state, align 8
  %and45 = and i32 %14, -17
  store i32 %and45, ptr %i_state, align 8
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_drop_inode(i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_drop_inode, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_drop_inode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !236
  %call42 = tail call i32 @__traceiter_ocfs2_drop_inode(ptr noundef null, i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !237
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_drop_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_drop_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_drop_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_drop_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1573, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_inode_revalidate(ptr nocapture noundef readonly %dentry) local_unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.critedge, label %cond.true3

cond.true3:                                       ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1608
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i, align 8
  %ip_flags = getelementptr i8, ptr %1, i32 -76
  %4 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ip_flags, align 4
  tail call fastcc void @trace_ocfs2_inode_revalidate(ptr noundef nonnull %1, i64 noundef %3, i32 noundef %5)
  %ip_lock = getelementptr i8, ptr %1, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %6 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  br i1 %tobool13.not, label %if.end17, label %cond.true3.bail_crit_edge

cond.true3.bail_crit_edge:                        ; preds = %cond.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_ocfs2_inode_revalidate(ptr noundef null, i64 noundef 0, i32 noundef 0)
  br label %bail

if.end17:                                         ; preds = %cond.true3
  %call20 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then22, label %if.end47

if.then22:                                        ; preds = %if.end17
  %8 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call20, label %do.body [
    i32 -2, label %if.then22.bail_crit_edge
    i32 -512, label %if.then22.bail_crit_edge75
    i32 -4, label %if.then22.bail_crit_edge76
    i32 -28, label %if.then22.bail_crit_edge77
    i32 -122, label %if.then22.bail_crit_edge78
  ]

if.then22.bail_crit_edge78:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then22.bail_crit_edge77:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then22.bail_crit_edge76:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then22.bail_crit_edge75:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then22.bail_crit_edge:                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv43 = sext i32 %call20 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_inode_revalidate, i32 noundef 1274, ptr noundef nonnull @.str, i64 noundef %conv43) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

if.end47:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ocfs2_inode_unlock(ptr noundef nonnull %1, i32 noundef 0) #10
  br label %bail

bail:                                             ; preds = %if.end47, %do.body, %if.then22.bail_crit_edge, %if.then22.bail_crit_edge75, %if.then22.bail_crit_edge76, %if.then22.bail_crit_edge77, %if.then22.bail_crit_edge78, %if.then.critedge, %cond.true3.bail_crit_edge
  %status.0 = phi i32 [ %call20, %if.then22.bail_crit_edge ], [ %call20, %if.end47 ], [ -2, %if.then.critedge ], [ -2, %cond.true3.bail_crit_edge ], [ %call20, %if.then22.bail_crit_edge75 ], [ %call20, %if.then22.bail_crit_edge76 ], [ %call20, %if.then22.bail_crit_edge77 ], [ %call20, %if.then22.bail_crit_edge78 ], [ %call20, %do.body ]
  ret i32 %status.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_inode_revalidate(ptr noundef %inode, i64 noundef %ino, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_inode_revalidate, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_inode_revalidate, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !238
  %call42 = tail call i32 @__traceiter_ocfs2_inode_revalidate(ptr noundef null, ptr noundef %inode, i64 noundef %ino, i32 noundef %flags) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !239
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_inode_revalidate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_inode_revalidate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_inode_revalidate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_inode_revalidate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1590, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_mark_inode_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef %bh) local_unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i, align 8
  tail call fastcc void @trace_ocfs2_mark_inode_dirty(i64 noundef %3)
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call2 = tail call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call2, label %do.body [
    i32 -512, label %if.then.leave_crit_edge
    i32 -4, label %if.then.leave_crit_edge100
    i32 -28, label %if.then.leave_crit_edge101
    i32 -122, label %if.then.leave_crit_edge102
  ]

if.then.leave_crit_edge102:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then.leave_crit_edge101:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then.leave_crit_edge100:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then.leave_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_mark_inode_dirty, i32 noundef 1299, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %leave

if.end14:                                         ; preds = %entry
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %6 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_clusters, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %i_clusters to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %i_clusters, align 4
  %i_flags.i = getelementptr i8, ptr %inode, i32 12
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 4
  %ip_attr.i = getelementptr i8, ptr %inode, i32 -72
  %12 = ptrtoint ptr %ip_attr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ip_attr.i, align 8
  %and.i = and i32 %13, -65721
  %and1.i = shl i32 %11, 3
  %14 = and i32 %and1.i, 8
  %15 = or i32 %14, %and.i
  %16 = and i32 %and1.i, 32
  %17 = or i32 %15, %16
  %and9.i = shl i32 %11, 1
  %18 = and i32 %and9.i, 16
  %19 = or i32 %18, %17
  store i32 %19, ptr %ip_attr.i, align 8
  %and15.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.if.end20.i_crit_edge, label %if.then17.i

if.end14.if.end20.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ip_attr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip_attr.i, align 8
  %or19.i = or i32 %21, 128
  store i32 %or19.i, ptr %ip_attr.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.if.end20.i_crit_edge
  %and21.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.ocfs2_get_inode_flags.exit_crit_edge, label %if.then23.i

if.end20.i.ocfs2_get_inode_flags.exit_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_get_inode_flags.exit

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ip_attr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip_attr.i, align 8
  %or25.i = or i32 %23, 65536
  store i32 %or25.i, ptr %ip_attr.i, align 8
  br label %ocfs2_get_inode_flags.exit

ocfs2_get_inode_flags.exit:                       ; preds = %if.then23.i, %if.end20.i.ocfs2_get_inode_flags.exit_crit_edge
  %24 = ptrtoint ptr %ip_attr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip_attr.i, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %i_attr = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 23
  %27 = ptrtoint ptr %i_attr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %i_attr, align 8
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %28 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ip_dyn_features, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %i_dyn_features = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 25
  %31 = ptrtoint ptr %i_dyn_features to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %i_dyn_features, align 2
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %ocfs2_get_inode_flags.exit
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !240
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %33 = tail call ptr @llvm.returnaddress(i32 0) #10
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %34) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %34) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = tail call ptr @llvm.returnaddress(i32 0) #10
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %36) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %36) #10
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !241
  %and.i.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !210

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #10, !srcloc !242
  %38 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !244
  %40 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i86 = and i32 %41, 1
  %tobool.not.i = icmp eq i32 %and.i86, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %39, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %41, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !245
  %42 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !246
  %44 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %45, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %46 = tail call i64 @llvm.bswap.i64(i64 %43)
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %i_size, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %conv.i = trunc i32 %50 to i16
  %shr.i = lshr i32 %50, 16
  %conv1.i = trunc i32 %shr.i to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %i_links_count.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %i_links_count.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %i_links_count.i, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #10
  %i_links_count_hi.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %i_links_count_hi.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %i_links_count_hi.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %55 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 53
  %57 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %59 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %60 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %58, [1 x i32] %60) #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  %i_uid = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 7
  %62 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %i_uid, align 8
  %63 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i88 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 53
  %65 = ptrtoint ptr %s_user_ns.i.i88 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_user_ns.i.i88, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %67 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack.i89 = load i32, ptr %i_gid.i, align 8
  %68 = insertvalue [1 x i32] undef, i32 %.unpack.i89, 0
  %call1.i90 = tail call i32 @from_kgid(ptr noundef %66, [1 x i32] %68) #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %call1.i90)
  %i_gid = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 8
  %70 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %i_gid, align 4
  %71 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %inode, align 8
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %i_mode25 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 10
  %74 = ptrtoint ptr %i_mode25 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %i_mode25, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %75 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %i_atime, align 8
  %77 = tail call i64 @llvm.bswap.i64(i64 %76)
  %i_atime26 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 13
  %78 = ptrtoint ptr %i_atime26 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %i_atime26, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %79 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tv_nsec, align 8
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %i_atime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 20
  %82 = ptrtoint ptr %i_atime_nsec to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %i_atime_nsec, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %83 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %i_ctime, align 8
  %85 = tail call i64 @llvm.bswap.i64(i64 %84)
  %i_ctime29 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 14
  %86 = ptrtoint ptr %i_ctime29 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %i_ctime29, align 8
  %tv_nsec31 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %87 = ptrtoint ptr %tv_nsec31 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tv_nsec31, align 8
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %i_ctime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 21
  %90 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %i_ctime_nsec, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %91 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %i_mtime, align 8
  %93 = tail call i64 @llvm.bswap.i64(i64 %92)
  %i_mtime33 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 15
  %94 = ptrtoint ptr %i_mtime33 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %i_mtime33, align 8
  %tv_nsec35 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %95 = ptrtoint ptr %tv_nsec35 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tv_nsec35, align 8
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %i_mtime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 22
  %98 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %i_mtime_nsec, align 4
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %bh) #10
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %99 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %100 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i91 = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i91, label %lor.lhs.false.i.i, label %i_size_read.exit.leave_crit_edge

i_size_read.exit.leave_crit_edge:                 ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

lor.lhs.false.i.i:                                ; preds = %i_size_read.exit
  %101 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i = icmp eq ptr %102, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.leave_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.leave_crit_edge:                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %and.i.i.i92 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i92)
  %tobool.not.i93 = icmp eq i32 %and.i.i.i92, 0
  br i1 %tobool.not.i93, label %if.then.i, label %is_handle_aborted.exit.i.leave_crit_edge

is_handle_aborted.exit.i.leave_crit_edge:         ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %102, i32 0, i32 1
  %107 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 884
  %109 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %i_sync_tid.i, align 4
  %110 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %handle, align 4
  %t_tid4.i = getelementptr inbounds %struct.transaction_s, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %t_tid4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %t_tid4.i, align 4
  %i_datasync_tid.i = getelementptr i8, ptr %inode, i32 888
  %114 = ptrtoint ptr %i_datasync_tid.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %i_datasync_tid.i, align 8
  br label %leave

leave:                                            ; preds = %if.then.i, %is_handle_aborted.exit.i.leave_crit_edge, %lor.lhs.false.i.i.leave_crit_edge, %i_size_read.exit.leave_crit_edge, %do.body, %if.then.leave_crit_edge, %if.then.leave_crit_edge100, %if.then.leave_crit_edge101, %if.then.leave_crit_edge102
  ret i32 %call2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_mark_inode_dirty(i64 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_inode_dirty, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_mark_inode_dirty, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !247
  %call42 = tail call i32 @__traceiter_ocfs2_mark_inode_dirty(ptr noundef null, i64 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !248
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_inode_dirty, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_inode_dirty, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_mark_inode_dirty.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_mark_inode_dirty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1592, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_refresh_inode(ptr noundef %inode, ptr nocapture noundef readonly %fe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_clusters, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %3 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ip_clusters, align 8
  %i_attr = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 23
  %4 = ptrtoint ptr %i_attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_attr, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %ip_attr = getelementptr i8, ptr %inode, i32 -72
  %7 = ptrtoint ptr %ip_attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ip_attr, align 8
  %i_dyn_features = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 25
  %8 = ptrtoint ptr %i_dyn_features to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_dyn_features, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %11 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ip_dyn_features, align 4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %13, -80
  %and1.i = lshr i32 %6, 1
  %14 = and i32 %and1.i, 8
  %15 = or i32 %14, %and.i
  %and3.i = lshr i32 %6, 3
  %16 = and i32 %and3.i, 1
  %17 = or i32 %15, %16
  %18 = and i32 %and3.i, 4
  %19 = or i32 %18, %17
  store i32 %19, ptr %i_flags.i, align 4
  %and15.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %entry.if.end20.i_crit_edge, label %if.then17.i

entry.if.end20.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags.i, align 4
  %or19.i = or i32 %21, 2
  store i32 %or19.i, ptr %i_flags.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %entry.if.end20.i_crit_edge
  %and21.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.ocfs2_set_inode_flags.exit_crit_edge, label %if.then23.i

if.end20.i.ocfs2_set_inode_flags.exit_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_set_inode_flags.exit

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags.i, align 4
  %or25.i = or i32 %23, 64
  store i32 %or25.i, ptr %i_flags.i, align 4
  br label %ocfs2_set_inode_flags.exit

ocfs2_set_inode_flags.exit:                       ; preds = %if.then23.i, %if.end20.i.ocfs2_set_inode_flags.exit_crit_edge
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 9
  %24 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %26)
  %i_links_count.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 11
  %27 = ptrtoint ptr %i_links_count.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_links_count.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  %conv.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %i_dyn_features to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %i_dyn_features, align 2
  %32 = and i16 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %ocfs2_set_inode_flags.exit.ocfs2_read_links_count.exit_crit_edge, label %if.then.i

ocfs2_set_inode_flags.exit.ocfs2_read_links_count.exit_crit_edge: ; preds = %ocfs2_set_inode_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_links_count.exit

if.then.i:                                        ; preds = %ocfs2_set_inode_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_links_count_hi.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 4
  %33 = ptrtoint ptr %i_links_count_hi.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %i_links_count_hi.i, align 8
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  %conv1.i = zext i16 %35 to i32
  %shl.i = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %ocfs2_read_links_count.exit

ocfs2_read_links_count.exit:                      ; preds = %if.then.i, %ocfs2_set_inode_flags.exit.ocfs2_read_links_count.exit_crit_edge
  %nlink.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %ocfs2_set_inode_flags.exit.ocfs2_read_links_count.exit_crit_edge ]
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %nlink.0.i) #10
  %i_uid = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 7
  %36 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_uid, align 8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 53
  %41 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %42, i32 noundef %38) #10
  %43 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 8
  %44 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_gid, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %47 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i63 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 53
  %49 = ptrtoint ptr %s_user_ns.i.i63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_user_ns.i.i63, align 8
  %call1.i64 = tail call i32 @make_kgid(ptr noundef %50, i32 noundef %46) #10
  %51 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call1.i64, ptr %i_gid.i, align 8
  %i_mode = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 10
  %52 = ptrtoint ptr %i_mode to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %i_mode, align 8
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %inode, align 8
  %56 = and i16 %54, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %56)
  %cmp = icmp eq i16 %56, -24576
  br i1 %cmp, label %land.lhs.true, label %ocfs2_read_links_count.exit.if.else_crit_edge

ocfs2_read_links_count.exit.if.else_crit_edge:    ; preds = %ocfs2_read_links_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %ocfs2_read_links_count.exit
  %57 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp9 = icmp eq i32 %58, 0
  br i1 %cmp9, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %ocfs2_read_links_count.exit.if.else_crit_edge
  %59 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %62, i32 0, i32 36
  %63 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_clustersize_bits.i, align 8
  %sub.i = add i32 %64, -9
  %65 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ip_clusters, align 8
  %conv.i65 = zext i32 %66 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i66 = shl i64 %conv.i65, %sh_prom.i
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %shl.i66.sink = phi i64 [ %shl.i66, %if.else ], [ 0, %land.lhs.true.if.end_crit_edge ]
  %i_blocks12 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %67 = ptrtoint ptr %i_blocks12 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %shl.i66.sink, ptr %i_blocks12, align 8
  %i_atime = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 13
  %68 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_atime, align 8
  %70 = tail call i64 @llvm.bswap.i64(i64 %69)
  %i_atime13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %71 = ptrtoint ptr %i_atime13 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %i_atime13, align 8
  %i_atime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 20
  %72 = ptrtoint ptr %i_atime_nsec to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_atime_nsec, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %75 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %tv_nsec, align 8
  %i_mtime = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 15
  %76 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %i_mtime, align 8
  %78 = tail call i64 @llvm.bswap.i64(i64 %77)
  %i_mtime15 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %79 = ptrtoint ptr %i_mtime15 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %i_mtime15, align 8
  %i_mtime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 22
  %80 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_mtime_nsec, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %tv_nsec18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %83 = ptrtoint ptr %tv_nsec18 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tv_nsec18, align 8
  %i_ctime = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 14
  %84 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %i_ctime, align 8
  %86 = tail call i64 @llvm.bswap.i64(i64 %85)
  %i_ctime19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %87 = ptrtoint ptr %i_ctime19 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %i_ctime19, align 8
  %i_ctime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe, i32 0, i32 21
  %88 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_ctime_nsec, align 8
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %tv_nsec22 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %91 = ptrtoint ptr %tv_nsec22 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %tv_nsec22, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_validate_inode_block(ptr noundef %sb, ptr noundef %bh) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_validate_inode_block(i64 noundef %3)
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !210

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1369, 0\0A.popsection", ""() #10, !srcloc !249
  unreachable

do.end9:                                          ; preds = %entry
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %i_check = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 27
  %call11 = tail call i32 @ocfs2_validate_meta_ecc(ptr noundef %sb, ptr noundef %7, ptr noundef %i_check) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end21, label %do.body14

do.body14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m, align 8
  %9 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_validate_inode_block, i32 noundef 1379, ptr noundef nonnull @.str.4, i64 noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

if.end21:                                         ; preds = %do.end9
  %call22 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %b_blocknr, align 8
  %call28 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_inode_block, ptr noundef nonnull @.str.5, i64 noundef %12, i32 noundef 7, ptr noundef %1) #10
  br label %bail

if.end29:                                         ; preds = %if.end21
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_blkno, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp.not = icmp eq i64 %15, %17
  br i1 %cmp.not, label %if.end35, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_inode_block, ptr noundef nonnull @.str.6, i64 noundef %17, i64 noundef %15) #10
  br label %bail

if.end35:                                         ; preds = %if.end29
  %i_flags = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags, align 4
  %and36 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_inode_block, ptr noundef nonnull @.str.7, i64 noundef %15) #10
  br label %bail

if.end41:                                         ; preds = %if.end35
  %i_fs_generation = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %i_fs_generation to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_fs_generation, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info, align 16
  %fs_generation = getelementptr inbounds %struct.ocfs2_super, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %fs_generation to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fs_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp42.not = icmp eq i32 %22, %26
  br i1 %cmp42.not, label %if.end41.bail_crit_edge, label %if.then43

if.end41.bail_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_inode_block, ptr noundef nonnull @.str.8, i64 noundef %15, i32 noundef %22) #10
  br label %bail

bail:                                             ; preds = %if.then43, %if.end41.bail_crit_edge, %if.then38, %if.then31, %if.then24, %do.body14
  %rc.0 = phi i32 [ %call11, %do.body14 ], [ %call28, %if.then24 ], [ %call34, %if.then31 ], [ %call46, %if.then43 ], [ %call40, %if.then38 ], [ 0, %if.end41.bail_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_validate_inode_block(i64 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_inode_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_validate_inode_block, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !250
  %call42 = tail call i32 @__traceiter_ocfs2_validate_inode_block(ptr noundef null, i64 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !251
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_inode_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_inode_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_validate_inode_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_validate_inode_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1537, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @ocfs2_validate_meta_ecc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_inode_block_full(ptr noundef %inode, ptr nocapture noundef %bh, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %tmp, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.i, align 8
  %call2 = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i, i64 noundef %4, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef %flags, ptr noundef nonnull @ocfs2_validate_inode_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bh, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp, align 4
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %bh, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr nocapture noundef %bh) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %tmp.i, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %inode, i32 -56
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -1608
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.i.i, align 8
  %call2.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %4, i32 noundef 1, ptr noundef nonnull %tmp.i, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_inode_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.ocfs2_read_inode_block_full.exit_crit_edge

entry.ocfs2_read_inode_block_full.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_inode_block_full.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bh, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true.i.ocfs2_read_inode_block_full.exit_crit_edge

land.lhs.true.i.ocfs2_read_inode_block_full.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_read_inode_block_full.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp.i, align 4
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %bh, align 4
  br label %ocfs2_read_inode_block_full.exit

ocfs2_read_inode_block_full.exit:                 ; preds = %if.then.i, %land.lhs.true.i.ocfs2_read_inode_block_full.exit_crit_edge, %entry.ocfs2_read_inode_block_full.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  ret i32 %call2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @ocfs2_inode_cache_owner(ptr nocapture noundef readonly %ci) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ci, i32 -1552
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ocfs2_inode_cache_get_super(ptr nocapture noundef readonly %ci) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr i8, ptr %ci, i32 84
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_inode_cache_lock(ptr noundef %ci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_lock = getelementptr i8, ptr %ci, i32 -176
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_inode_cache_unlock(ptr noundef %ci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_lock = getelementptr i8, ptr %ci, i32 -176
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_inode_cache_io_lock(ptr noundef %ci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_io_mutex = getelementptr i8, ptr %ci, i32 -112
  tail call void @mutex_lock_nested(ptr noundef %ip_io_mutex, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_inode_cache_io_unlock(ptr noundef %ci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_io_mutex = getelementptr i8, ptr %ci, i32 -112
  tail call void @mutex_unlock(ptr noundef %ip_io_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_iget_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_iget5_locked(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_iget_end(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_find_actor(ptr noundef %inode, i64 noundef %ino, ptr noundef %args, i64 noundef %fi_blkno) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_find_actor, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_find_actor, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !252
  %call42 = tail call i32 @__traceiter_ocfs2_find_actor(ptr noundef null, ptr noundef %inode, i64 noundef %ino, ptr noundef %args, i64 noundef %fi_blkno) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !253
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_find_actor, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_find_actor, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_find_actor.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_find_actor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1529, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @__traceiter_ocfs2_find_actor(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_populate_inode(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_read_locked_inode(i64 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_locked_inode, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_locked_inode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !254
  %call42 = tail call i32 @__traceiter_ocfs2_read_locked_inode(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !255
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_locked_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_locked_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_read_locked_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_read_locked_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1533, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @ocfs2_open_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_try_open_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks_sync(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_filecheck_validate_inode_block(ptr noundef %sb, ptr noundef %bh) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m43 = alloca i64, align 8
  %_m57 = alloca i64, align 8
  %_m69 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_filecheck_validate_inode_block(i64 noundef %3)
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !210

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1434, 0\0A.popsection", ""() #10, !srcloc !256
  unreachable

do.end9:                                          ; preds = %entry
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %i_check = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 27
  %call11 = tail call i32 @ocfs2_validate_meta_ecc(ptr noundef %sb, ptr noundef %7, ptr noundef %i_check) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end21, label %if.end21.thread

if.end21:                                         ; preds = %do.end9
  %call22 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end39, label %if.end21.do.body25_crit_edge

if.end21.do.body25_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

if.end21.thread:                                  ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m, align 8
  %9 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_filecheck_validate_inode_block, i32 noundef 1446, ptr noundef nonnull @.str.20, i64 noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call2299 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2299)
  %tobool23.not100 = icmp eq i32 %call2299, 0
  br i1 %tobool23.not100, label %if.end21.thread.bail_crit_edge, label %if.end21.thread.do.body25_crit_edge

if.end21.thread.do.body25_crit_edge:              ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

if.end21.thread.bail_crit_edge:                   ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body25:                                        ; preds = %if.end21.thread.do.body25_crit_edge, %if.end21.do.body25_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #10
  %11 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m26, align 8
  %12 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.ocfs2_filecheck_validate_inode_block, i32 noundef 1453, ptr noundef nonnull @.str.21, i64 noundef %13, i32 noundef 7, ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #10
  br label %bail

if.end39:                                         ; preds = %if.end21
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_blkno, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %17 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp.not = icmp eq i64 %16, %18
  br i1 %cmp.not, label %if.end52, label %do.body42

do.body42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #10
  %19 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m43, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.ocfs2_filecheck_validate_inode_block, i32 noundef 1463, ptr noundef nonnull @.str.22, i64 noundef %18, i64 noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #10
  br label %bail

if.end52:                                         ; preds = %if.end39
  %i_flags = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags, align 4
  %and53 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body56, label %if.end65

do.body56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57) #10
  %22 = ptrtoint ptr %_m57 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m57, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57, ptr noundef nonnull @__func__.ocfs2_filecheck_validate_inode_block, i32 noundef 1472, ptr noundef nonnull @.str.23, i64 noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57) #10
  br label %bail

if.end65:                                         ; preds = %if.end52
  %i_fs_generation = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %i_fs_generation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_fs_generation, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info, align 16
  %fs_generation = getelementptr inbounds %struct.ocfs2_super, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %fs_generation to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fs_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp66.not = icmp eq i32 %25, %29
  br i1 %cmp66.not, label %if.end65.bail_crit_edge, label %do.body68

if.end65.bail_crit_edge:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69) #10
  %30 = ptrtoint ptr %_m69 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606846976, ptr %_m69, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69, ptr noundef nonnull @__func__.ocfs2_filecheck_validate_inode_block, i32 noundef 1482, ptr noundef nonnull @.str.24, i64 noundef %16, i32 noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69) #10
  br label %bail

bail:                                             ; preds = %do.body68, %if.end65.bail_crit_edge, %do.body56, %do.body42, %do.body25, %if.end21.thread.bail_crit_edge
  %rc.1 = phi i32 [ -1004, %do.body25 ], [ -1006, %do.body42 ], [ -1008, %do.body68 ], [ 0, %if.end65.bail_crit_edge ], [ -1007, %do.body56 ], [ -1005, %if.end21.thread.bail_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_filecheck_repair_inode_block(ptr noundef %sb, ptr noundef %bh) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m16 = alloca i64, align 8
  %_m38 = alloca i64, align 8
  %_m55 = alloca i64, align 8
  %_m74 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %call = tail call i32 @ocfs2_filecheck_validate_inode_block(ptr noundef %sb, ptr noundef %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_filecheck_repair_inode_block(i64 noundef %3)
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %7, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %osb_lock.i113 = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i113) #10
  %osb_flags.i114 = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %osb_flags.i114 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %osb_flags.i114, align 8
  %and.i115 = and i32 %11, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i113) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool5.not = icmp eq i32 %and.i115, 0
  br i1 %tobool5.not, label %if.end11, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %13 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_filecheck_repair_inode_block, i32 noundef 1507, ptr noundef nonnull @.str.25, i64 noundef %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %bh, align 4
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.end24, label %do.body15

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m16) #10
  %18 = ptrtoint ptr %_m16 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m16, align 8
  %19 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m16, ptr noundef nonnull @__func__.ocfs2_filecheck_repair_inode_block, i32 noundef 1515, ptr noundef nonnull @.str.26, i64 noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m16) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %call25 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %i_flags = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_flags, align 4
  %and29 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_blkno, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %26 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp.not = icmp eq i64 %25, %27
  br i1 %cmp.not, label %if.end47, label %if.end47.thread

if.end47:                                         ; preds = %if.end32
  %i_fs_generation = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %i_fs_generation to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_fs_generation, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info, align 16
  %fs_generation = getelementptr inbounds %struct.ocfs2_super, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %fs_generation to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fs_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %34)
  %cmp49.not = icmp eq i32 %30, %34
  br i1 %cmp49.not, label %lor.lhs.false66, label %if.end47.if.end64.thread_crit_edge

if.end47.if.end64.thread_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.thread

if.end47.thread:                                  ; preds = %if.end32
  %35 = tail call i64 @llvm.bswap.i64(i64 %27)
  %36 = ptrtoint ptr %i_blkno to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %i_blkno, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38) #10
  %37 = ptrtoint ptr %_m38 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m38, align 8
  %38 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38, ptr noundef nonnull @__func__.ocfs2_filecheck_repair_inode_block, i32 noundef 1537, ptr noundef nonnull @.str.27, i64 noundef %39, i64 noundef %27) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38) #10
  %i_fs_generation118 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %i_fs_generation118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_fs_generation118, align 8
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info, align 16
  %fs_generation119 = getelementptr inbounds %struct.ocfs2_super, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %fs_generation119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fs_generation119, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %46)
  %cmp49.not120 = icmp eq i32 %42, %46
  br i1 %cmp49.not120, label %if.end47.thread.if.then70_crit_edge, label %if.end47.thread.if.end64.thread_crit_edge

if.end47.thread.if.end64.thread_crit_edge:        ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.thread

if.end47.thread.if.then70_crit_edge:              ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

if.end64.thread:                                  ; preds = %if.end47.thread.if.end64.thread_crit_edge, %if.end47.if.end64.thread_crit_edge
  %47 = phi i32 [ %46, %if.end47.thread.if.end64.thread_crit_edge ], [ %34, %if.end47.if.end64.thread_crit_edge ]
  %i_fs_generation121 = phi ptr [ %i_fs_generation118, %if.end47.thread.if.end64.thread_crit_edge ], [ %i_fs_generation, %if.end47.if.end64.thread_crit_edge ]
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %i_fs_generation121 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %i_fs_generation121, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #10
  %50 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1152921504606846976, ptr %_m55, align 8
  %51 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.ocfs2_filecheck_repair_inode_block, i32 noundef 1547, ptr noundef nonnull @.str.28, i64 noundef %52, i32 noundef %47) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #10
  br label %if.then70

lor.lhs.false66:                                  ; preds = %if.end47
  %53 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data, align 4
  %i_check = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 27
  %call68 = call i32 @ocfs2_validate_meta_ecc(ptr noundef %sb, ptr noundef %54, ptr noundef %i_check) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %lor.lhs.false66.cleanup_crit_edge, label %lor.lhs.false66.if.then70_crit_edge

lor.lhs.false66.if.then70_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

lor.lhs.false66.cleanup_crit_edge:                ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then70:                                        ; preds = %lor.lhs.false66.if.then70_crit_edge, %if.end64.thread, %if.end47.thread.if.then70_crit_edge
  %55 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data, align 4
  %i_check72 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 27
  call void @ocfs2_compute_meta_ecc(ptr noundef %sb, ptr noundef %56, ptr noundef %i_check72) #10
  call void @mark_buffer_dirty(ptr noundef %bh) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #10
  %57 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m74, align 8
  %58 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.ocfs2_filecheck_repair_inode_block, i32 noundef 1555, ptr noundef nonnull @.str.29, i64 noundef %59) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %lor.lhs.false66.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.body15, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1002, %do.body ], [ -1003, %do.body15 ], [ 0, %entry.cleanup_crit_edge ], [ -1004, %if.end24.cleanup_crit_edge ], [ -1007, %if.end28.cleanup_crit_edge ], [ 0, %if.then70 ], [ 0, %lor.lhs.false66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_write_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_locked_inode(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_filecheck_validate_inode_block(i64 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_filecheck_validate_inode_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_filecheck_validate_inode_block, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !257
  %call42 = tail call i32 @__traceiter_ocfs2_filecheck_validate_inode_block(ptr noundef null, i64 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !258
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_filecheck_validate_inode_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_filecheck_validate_inode_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_filecheck_validate_inode_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_filecheck_validate_inode_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1538, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @__traceiter_ocfs2_filecheck_validate_inode_block(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_filecheck_repair_inode_block(i64 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_filecheck_repair_inode_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_filecheck_repair_inode_block, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  %call42 = tail call i32 @__traceiter_ocfs2_filecheck_repair_inode_block(ptr noundef null, i64 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_filecheck_repair_inode_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_filecheck_repair_inode_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_filecheck_repair_inode_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_filecheck_repair_inode_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1539, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local void @ocfs2_compute_meta_ecc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_filecheck_repair_inode_block(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_delete_inode(i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_delete_inode, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_delete_inode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !261
  %call42 = tail call i32 @__traceiter_ocfs2_delete_inode(ptr noundef null, i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !262
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_delete_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_delete_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_delete_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_delete_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1569, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_inode_is_valid_to_delete(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m15 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %dc_task = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 76
  %8 = ptrtoint ptr %dc_task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc_task, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i, align 8
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %12 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ip_flags, align 4
  tail call fastcc void @trace_ocfs2_inode_is_valid_to_delete(ptr noundef %7, ptr noundef %9, i64 noundef %11, i32 noundef %13)
  %root_inode = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %root_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root_inode, align 8
  %cmp = icmp eq ptr %15, %inode
  br i1 %cmp, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %16 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_inode_is_valid_to_delete, i32 noundef 852, ptr noundef nonnull @.str.31) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

if.end3:                                          ; preds = %entry
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %dc_task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dc_task, align 4
  %cmp7 = icmp eq ptr %18, %20
  br i1 %cmp7, label %if.end3.bail_crit_edge, label %if.end9

if.end3.bail_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.end9:                                          ; preds = %if.end3
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %21 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ip_flags, align 4
  %and11 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.bail_unlock_crit_edge, label %do.body14

if.end9.bail_unlock_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m15) #10
  %23 = ptrtoint ptr %_m15 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606846976, ptr %_m15, align 8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m15, ptr noundef nonnull @__func__.ocfs2_inode_is_valid_to_delete, i32 noundef 872, ptr noundef nonnull @.str.32, i64 noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m15) #10
  br label %bail_unlock

bail_unlock:                                      ; preds = %do.body14, %if.end9.bail_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %do.body14 ], [ 1, %if.end9.bail_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  br label %bail

bail:                                             ; preds = %bail_unlock, %if.end3.bail_crit_edge, %do.body
  %ret.1 = phi i32 [ 0, %do.body ], [ 0, %if.end3.bail_crit_edge ], [ %ret.0, %bail_unlock ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_block_signals(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_nfs_sync_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_nfs_sync_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_unblock_signals(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_delete_inode(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_inode_is_valid_to_delete(ptr noundef %task, ptr noundef %dc_task, i64 noundef %ino, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_inode_is_valid_to_delete, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_inode_is_valid_to_delete, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !263
  %call42 = tail call i32 @__traceiter_ocfs2_inode_is_valid_to_delete(ptr noundef null, ptr noundef %task, ptr noundef %dc_task, i64 noundef %ino, i32 noundef %flags) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !264
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_inode_is_valid_to_delete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_inode_is_valid_to_delete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_inode_is_valid_to_delete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_inode_is_valid_to_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1559, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @__traceiter_ocfs2_inode_is_valid_to_delete(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_cleanup_delete_inode(i64 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cleanup_delete_inode, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_cleanup_delete_inode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !265
  %call42 = tail call i32 @__traceiter_ocfs2_cleanup_delete_inode(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !266
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cleanup_delete_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cleanup_delete_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_cleanup_delete_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_cleanup_delete_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1567, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @__traceiter_ocfs2_cleanup_delete_inode(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_query_inode_wipe_begin(i64 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_query_inode_wipe_begin, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !267
  %call42 = tail call i32 @__traceiter_ocfs2_query_inode_wipe_begin(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !268
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_query_inode_wipe_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_query_inode_wipe_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1561, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
define internal fastcc void @trace_ocfs2_query_inode_wipe_succ(i32 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_succ, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_query_inode_wipe_succ, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !269
  %call42 = tail call i32 @__traceiter_ocfs2_query_inode_wipe_succ(ptr noundef null, i32 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !270
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_succ, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_succ, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_query_inode_wipe_succ.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_query_inode_wipe_succ.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1563, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
define internal fastcc void @trace_ocfs2_query_inode_wipe_end(i32 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_query_inode_wipe_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !271
  %call42 = tail call i32 @__traceiter_ocfs2_query_inode_wipe_end(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !272
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_query_inode_wipe_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_query_inode_wipe_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_query_inode_wipe_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1565, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @__traceiter_ocfs2_query_inode_wipe_begin(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_query_inode_wipe_succ(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_query_inode_wipe_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dx_dir_truncate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_xattr_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_remove_refcount_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_node_map_test_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_check_orphan_recovery_state(i32 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_check_orphan_recovery_state, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_check_orphan_recovery_state, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !273
  %call42 = tail call i32 @__traceiter_ocfs2_check_orphan_recovery_state(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !274
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_check_orphan_recovery_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_check_orphan_recovery_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_check_orphan_recovery_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_check_orphan_recovery_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1535, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local i32 @__traceiter_ocfs2_check_orphan_recovery_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_truncate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_begin_ordered_truncate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_orphan_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_remove_from_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_free_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_free_dinode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_clear_inode(i64 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_clear_inode, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_clear_inode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !275
  %call42 = tail call i32 @__traceiter_ocfs2_clear_inode(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !276
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_clear_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_clear_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_clear_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_clear_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1571, ptr noundef nonnull @.str.10) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #10
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
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_open_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_mark_lockres_freeing(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resv_discard(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resv_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_extent_map_trunc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_drop_inode_locks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_lock_res_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_metadata_cache_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_release_jbd_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_clear_inode(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_metadata_cache_get_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_drop_inode(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_inode_revalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_mark_inode_dirty(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_validate_inode_block(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !67, !69, !71, !72, !74, !75, !77, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !98, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !136, !137, !139, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176, !177, !179, !180, !182, !183, !185}
!llvm.named.register.sp = !{!186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @__func__.ocfs2_iget, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/inode.c", i32 137, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/inode.c", i32 278, i32 2}
!5 = !{ptr @__func__.ocfs2_populate_inode, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/inode.c", i32 313, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/inode.c", i32 1238, i32 2}
!10 = !{ptr @__func__.ocfs2_inode_revalidate, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/inode.c", i32 1274, i32 4}
!12 = !{ptr @__func__.ocfs2_mark_inode_dirty, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/inode.c", i32 1299, i32 3}
!14 = !{ptr @__func__.ocfs2_validate_inode_block, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/inode.c", i32 1378, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__PRETTY_FUNCTION__.ocfs2_validate_inode_block, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/inode.c", i32 1390, i32 8}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/inode.c", i32 1397, i32 8}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/inode.c", i32 1404, i32 8}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/inode.c", i32 1412, i32 8}
!26 = !{ptr @ocfs2_inode_caching_ops, !27, !"ocfs2_inode_caching_ops", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/inode.c", i32 1651, i32 39}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1478, i32 1}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1495, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1497, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = !{ptr @__func__.ocfs2_find_actor, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/inode.c", i32 219, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1511, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = !{ptr @ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key, !50, !"ocfs2_quota_ip_alloc_sem_key", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/inode.c", i32 239, i32 31}
!51 = !{ptr @ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key, !52, !"ocfs2_file_ip_alloc_sem_key", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/inode.c", i32 240, i32 10}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/inode.c", i32 245, i32 3}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/inode.c", i32 251, i32 3}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/inode.c", i32 254, i32 3}
!59 = !{ptr @ocfs2_sysfile_lock_key, !60, !"ocfs2_sysfile_lock_key", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/inode.c", i32 53, i32 30}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1531, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__func__.ocfs2_read_locked_inode, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ocfs2/inode.c", i32 473, i32 4}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ocfs2/inode.c", i32 533, i32 2}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1533, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = !{ptr @__func__.ocfs2_filecheck_validate_inode_block, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/inode.c", i32 1444, i32 3}
!77 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ocfs2/inode.c", i32 1451, i32 3}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ocfs2/inode.c", i32 1460, i32 3}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ocfs2/inode.c", i32 1469, i32 3}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/inode.c", i32 1479, i32 3}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1538, i32 1}
!88 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!89 = !{ptr @__func__.ocfs2_filecheck_repair_inode_block, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ocfs2/inode.c", i32 1504, i32 3}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/inode.c", i32 1512, i32 3}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/inode.c", i32 1534, i32 3}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/inode.c", i32 1544, i32 3}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ocfs2/inode.c", i32 1553, i32 3}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1539, i32 1}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = !{ptr @__func__.ocfs2_delete_inode, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ocfs2/inode.c", i32 1032, i32 3}
!105 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1569, i32 1}
!108 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!109 = !{ptr @__func__.ocfs2_inode_is_valid_to_delete, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ocfs2/inode.c", i32 852, i32 3}
!111 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ocfs2/inode.c", i32 871, i32 3}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1541, i32 1}
!116 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1567, i32 1}
!119 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!120 = !{ptr @__func__.ocfs2_query_inode_wipe, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ocfs2/inode.c", i32 932, i32 3}
!122 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1561, i32 1}
!125 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1563, i32 1}
!128 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1565, i32 1}
!131 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!132 = !{ptr @__func__.ocfs2_wipe_inode, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ocfs2/inode.c", i32 769, i32 4}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1535, i32 1}
!136 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!137 = !{ptr @__func__.ocfs2_truncate_for_delete, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ocfs2/inode.c", i32 600, i32 4}
!139 = !{ptr @__func__.ocfs2_remove_inode, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ocfs2/inode.c", i32 651, i32 3}
!141 = !{ptr @__func__.ocfs2_clear_inode, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ocfs2/inode.c", i32 1120, i32 2}
!143 = !{ptr @.str.34, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.35, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.36, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ocfs2/inode.c", i32 1148, i32 2}
!147 = !{ptr @.str.37, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.38, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ocfs2/inode.c", i32 1151, i32 2}
!150 = !{ptr @.str.39, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.40, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ocfs2/inode.c", i32 1167, i32 2}
!153 = !{ptr @.str.41, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.42, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ocfs2/inode.c", i32 1172, i32 2}
!156 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.44, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ocfs2/inode.c", i32 1176, i32 2}
!159 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.46, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ocfs2/inode.c", i32 1180, i32 2}
!162 = !{ptr @.str.47, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.48, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ocfs2/inode.c", i32 1189, i32 2}
!165 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.50, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ocfs2/inode.c", i32 1194, i32 2}
!168 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1571, i32 1}
!171 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!172 = !{ptr @.str.52, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ocfs2/journal.h", i32 204, i32 3}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1573, i32 1}
!176 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1575, i32 1}
!179 = distinct !{null, !178, !"__warned", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1592, i32 1}
!182 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1537, i32 1}
!185 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!186 = !{!"sp"}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 2161286742, i64 2161287223, i64 2161286779, i64 2161286835, i64 2161286869, i64 2161286893, i64 2161286934, i64 2161286955, i64 2161286983, i64 2161287017}
!197 = !{i64 2161305180, i64 2161305661, i64 2161305217, i64 2161305273, i64 2161305307, i64 2161305331, i64 2161305372, i64 2161305393, i64 2161305421, i64 2161305455}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2161307721, i64 2161312263, i64 2161307758, i64 2161307814, i64 2161307848, i64 2161307872, i64 2161307913, i64 2161307934, i64 2161307962, i64 2161307996}
!200 = !{i64 2148521352, i64 2148521357, i64 2148521370, i64 2148521414, i64 2148521448, i64 2148521469}
!201 = !{i64 2157604463}
!202 = !{i64 2157604706}
!203 = !{i64 2149517759}
!204 = !{i64 2149518795}
!205 = !{i64 2157621001}
!206 = !{i64 2157621206}
!207 = !{i64 2157637390}
!208 = !{i64 2157637601}
!209 = !{i64 2161289367, i64 2161289848, i64 2161289404, i64 2161289460, i64 2161289494, i64 2161289518, i64 2161289559, i64 2161289580, i64 2161289608, i64 2161289642}
!210 = !{!"branch_weights", i32 1, i32 2000}
!211 = !{i64 2161291222, i64 2161291703, i64 2161291259, i64 2161291315, i64 2161291349, i64 2161291373, i64 2161291414, i64 2161291435, i64 2161291463, i64 2161291497}
!212 = !{i64 2161293134, i64 2161293615, i64 2161293171, i64 2161293227, i64 2161293261, i64 2161293285, i64 2161293326, i64 2161293347, i64 2161293375, i64 2161293409}
!213 = !{i64 2161298139, i64 2161298620, i64 2161298176, i64 2161298232, i64 2161298266, i64 2161298290, i64 2161298331, i64 2161298352, i64 2161298380, i64 2161298414}
!214 = !{i64 2161300601, i64 2161301082, i64 2161300638, i64 2161300694, i64 2161300728, i64 2161300752, i64 2161300793, i64 2161300814, i64 2161300842, i64 2161300876}
!215 = !{i64 2157675603}
!216 = !{i64 2157675826}
!217 = !{i64 2152541516}
!218 = !{i64 2150017821}
!219 = !{i64 2150022755}
!220 = !{i64 2150044473}
!221 = !{i64 2150049367}
!222 = !{i64 2150125894}
!223 = !{i64 2150126219}
!224 = !{i64 2152553378}
!225 = !{!"auto-init"}
!226 = !{i64 2161330226, i64 2161330708, i64 2161330263, i64 2161330319, i64 2161330353, i64 2161330377, i64 2161330418, i64 2161330439, i64 2161330467, i64 2161330501}
!227 = !{i64 2161332624, i64 2161333106, i64 2161332661, i64 2161332717, i64 2161332751, i64 2161332775, i64 2161332816, i64 2161332837, i64 2161332865, i64 2161332899}
!228 = !{i64 2161335037, i64 2161335519, i64 2161335074, i64 2161335130, i64 2161335164, i64 2161335188, i64 2161335229, i64 2161335250, i64 2161335278, i64 2161335312}
!229 = !{i64 2161338044, i64 2161338526, i64 2161338081, i64 2161338137, i64 2161338171, i64 2161338195, i64 2161338236, i64 2161338257, i64 2161338285, i64 2161338319}
!230 = !{i64 2161340503, i64 2161340985, i64 2161340540, i64 2161340596, i64 2161340630, i64 2161340654, i64 2161340695, i64 2161340716, i64 2161340744, i64 2161340778}
!231 = !{i64 2161342871, i64 2161343353, i64 2161342908, i64 2161342964, i64 2161342998, i64 2161343022, i64 2161343063, i64 2161343084, i64 2161343112, i64 2161343146}
!232 = !{i64 2161345257, i64 2161345739, i64 2161345294, i64 2161345350, i64 2161345384, i64 2161345408, i64 2161345449, i64 2161345470, i64 2161345498, i64 2161345532}
!233 = !{i64 2161347663, i64 2161348145, i64 2161347700, i64 2161347756, i64 2161347790, i64 2161347814, i64 2161347855, i64 2161347876, i64 2161347904, i64 2161347938}
!234 = !{i64 2161350038, i64 2161350520, i64 2161350075, i64 2161350131, i64 2161350165, i64 2161350189, i64 2161350230, i64 2161350251, i64 2161350279, i64 2161350313}
!235 = !{i64 2161351905, i64 2161352387, i64 2161351942, i64 2161351998, i64 2161352032, i64 2161352056, i64 2161352097, i64 2161352118, i64 2161352146, i64 2161352180}
!236 = !{i64 2157919791}
!237 = !{i64 2157920018}
!238 = !{i64 2157936953}
!239 = !{i64 2157937194}
!240 = !{i64 1101434, i64 1101495}
!241 = !{i64 1104166}
!242 = !{i64 1104451}
!243 = !{i64 2152539585}
!244 = !{i64 2152539427}
!245 = !{i64 2152539755}
!246 = !{i64 2150125569}
!247 = !{i64 2157957972}
!248 = !{i64 2157958185}
!249 = !{i64 2161358957, i64 2161359439, i64 2161358994, i64 2161359050, i64 2161359084, i64 2161359108, i64 2161359149, i64 2161359170, i64 2161359198, i64 2161359232}
!250 = !{i64 2157731625}
!251 = !{i64 2157731846}
!252 = !{i64 2157658556}
!253 = !{i64 2157658803}
!254 = !{i64 2157692643}
!255 = !{i64 2157692872}
!256 = !{i64 2161362359, i64 2161362841, i64 2161362396, i64 2161362452, i64 2161362486, i64 2161362510, i64 2161362551, i64 2161362572, i64 2161362600, i64 2161362634}
!257 = !{i64 2157749161}
!258 = !{i64 2157749402}
!259 = !{i64 2157771220}
!260 = !{i64 2157771457}
!261 = !{i64 2157885683}
!262 = !{i64 2157885914}
!263 = !{i64 2157789734}
!264 = !{i64 2157790007}
!265 = !{i64 2157863821}
!266 = !{i64 2157864056}
!267 = !{i64 2157807825}
!268 = !{i64 2157808064}
!269 = !{i64 2157829186}
!270 = !{i64 2157829409}
!271 = !{i64 2157846388}
!272 = !{i64 2157846623}
!273 = !{i64 2157714053}
!274 = !{i64 2157714302}
!275 = !{i64 2157902625}
!276 = !{i64 2157902842}
