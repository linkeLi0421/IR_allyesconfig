; ModuleID = '/llk/IR_all_yes/fs/ocfs2/move_extents.c_pt.bc'
source_filename = "../fs/ocfs2/move_extents.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ocfs2_move_extents = type { i64, i64, i64, i64, i64, i64, i64, [2 x i32] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.ocfs2_move_extents_context = type { ptr, ptr, i32, i32, i32, i32, i32, i64, ptr, %struct.ocfs2_extent_tree, ptr, ptr, %struct.ocfs2_cached_dealloc_ctxt }
%struct.ocfs2_extent_tree = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.ocfs2_cached_dealloc_ctxt = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.99, ptr }
%union.anon.99 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_group_desc = type { [8 x i8], i16, i16, i16, i16, i32, i32, i64, i64, i64, %struct.ocfs2_block_check, i64, %union.anon.90 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { [256 x i8], %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i16, i16, i16, i16, i64, [0 x %struct.ocfs2_extent_rec] }
%struct.ocfs2_extent_rec = type { i32, %union.anon.84, i64 }
%union.anon.84 = type { i32 }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.92, %union.anon.96 }
%union.anon.92 = type { i64 }
%union.anon.96 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.97, [16 x i8] }
%union.anon.97 = type { i32 }
%struct.jbd2_journal_handle = type { %union.anon.87, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.87 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.anon.94 = type { i32, i32 }
%struct.ocfs2_chain_rec = type { i32, i32, i64 }
%struct.ocfs2_alloc_context = type { ptr, ptr, i32, i32, i32, i32, i16, i32, ptr, i64, i64, i32, ptr, ptr }
%struct.ocfs2_path = type { i32, ptr, [5 x %struct.ocfs2_path_item] }
%struct.ocfs2_path_item = type { ptr, ptr }
%struct.anon.85 = type { i16, i8, i8 }

@__func__.ocfs2_ioctl_move_extents = private unnamed_addr constant [25 x i8] c"ocfs2_ioctl_move_extents\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_find_victim_alloc_group = private unnamed_addr constant [30 x i8] c"ocfs2_find_victim_alloc_group\00", align 1
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"global_bitmap\00", [18 x i8] zeroinitializer }, align 32
@__func__.ocfs2_move_extents = private unnamed_addr constant [19 x i8] c"ocfs2_move_extents\00", align 1
@__func__.__ocfs2_move_extents_range = private unnamed_addr constant [27 x i8] c"__ocfs2_move_extents_range\00", align 1
@__func__.ocfs2_defrag_extent = private unnamed_addr constant [20 x i8] c"ocfs2_defrag_extent\00", align 1
@__func__.ocfs2_lock_meta_allocator_move_extents = private unnamed_addr constant [39 x i8] c"ocfs2_lock_meta_allocator_move_extents\00", align 1
@__func__.__ocfs2_move_extent = private unnamed_addr constant [20 x i8] c"__ocfs2_move_extent\00", align 1
@__PRETTY_FUNCTION__.__ocfs2_move_extent = private unnamed_addr constant [98 x i8] c"int __ocfs2_move_extent(handle_t *, struct ocfs2_move_extents_context *, u32, u32, u32, u32, int)\00", align 1
@.str.27 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Inode %llu has an extent at cpos %u which can no longer be found\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ocfs2_move_extent = private unnamed_addr constant [18 x i8] c"ocfs2_move_extent\00", align 1
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to get global_bitmap inode\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.63 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1011, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 156, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [23 x i8] c"../fs/ocfs2/ocfs2_fs.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 359, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 93, i32 9 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [27 x i8] c"../fs/ocfs2/move_extents.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 636, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.3, ptr @.str.11, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_ioctl_move_extents(ptr noundef %filp, ptr noundef %argp) local_unnamed_addr #0 align 64 {
entry:
  %range = alloca %struct.ocfs2_move_extents, align 8
  %_m = alloca i64, align 8
  %_m103 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %range) #10
  %2 = call ptr @memset(ptr %range, i32 255, i32 64)
  %tobool.not = icmp eq ptr %argp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %lor.lhs.false, label %if.end4.out_drop_crit_edge

if.end4.out_drop_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

lor.lhs.false:                                    ; preds = %if.end4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and6 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false.out_drop_crit_edge, label %if.end9

lor.lhs.false.out_drop_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.end9:                                          ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %and10 = and i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_drop_crit_edge

if.end9.out_drop_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.end13:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3392, i32 noundef 96) #13
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %do.body, label %if.end37

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_ioctl_move_extents, i32 noundef 1011, ptr noundef nonnull @.str, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out_drop

if.end37:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %call7.i.i, align 8
  %file = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %filp, ptr %file, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end37.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end37.if.then11.i.i_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end37
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %argp, i32 64, i32 -1226833920) #14
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range, i32 noundef 64) #10
  %15 = call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !91
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range, ptr noundef nonnull %argp, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end42, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !90

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end37.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.end37.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %range, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %out_free

if.end42:                                         ; preds = %if.end.i.i
  %19 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %range, align 8
  %call43 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %call43)
  %cmp44 = icmp ugt i64 %20, %call43
  br i1 %cmp44, label %if.end42.out_free_crit_edge, label %if.end47

if.end42.out_free_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end47:                                         ; preds = %if.end42
  %21 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %range, align 8
  %me_len = getelementptr inbounds %struct.ocfs2_move_extents, ptr %range, i32 0, i32 1
  %23 = ptrtoint ptr %me_len to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %me_len, align 8
  %add = add i64 %24, %22
  %call49 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call49)
  %cmp50 = icmp ugt i64 %add, %call49
  br i1 %cmp50, label %if.then52, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = call fastcc i64 @i_size_read(ptr noundef %1)
  %25 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %range, align 8
  %sub = sub i64 %call53, %26
  %27 = ptrtoint ptr %me_len to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sub, ptr %me_len, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47.if.end56_crit_edge
  %range57 = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %call7.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %range57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %range, ptr %range57, align 8
  %me_flags = getelementptr inbounds %struct.ocfs2_move_extents, ptr %range, i32 0, i32 4
  %29 = ptrtoint ptr %me_flags to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %me_flags, align 8
  %and58 = and i64 %30, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58)
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end56
  %auto_defrag = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %auto_defrag to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %auto_defrag, align 8
  %me_threshold = getelementptr inbounds %struct.ocfs2_move_extents, ptr %range, i32 0, i32 3
  %32 = ptrtoint ptr %me_threshold to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %me_threshold, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool61.not = icmp eq i64 %33, 0
  br i1 %tobool61.not, label %if.then62, label %if.then60.if.end64_crit_edge

if.then60.if.end64_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %me_threshold to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1048576, ptr %me_threshold, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.then60.if.end64_crit_edge
  %35 = ptrtoint ptr %me_threshold to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %me_threshold, align 8
  %call66 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %call66)
  %cmp67 = icmp ugt i64 %36, %call66
  br i1 %cmp67, label %if.then69, label %if.end64.if.end72_crit_edge

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = call fastcc i64 @i_size_read(ptr noundef %1)
  %37 = ptrtoint ptr %me_threshold to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call70, ptr %me_threshold, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end64.if.end72_crit_edge
  %38 = ptrtoint ptr %me_flags to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %me_flags, align 8
  %and74 = and i64 %39, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and74)
  %tobool75.not = icmp eq i64 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.end82_crit_edge, label %if.then76

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %partial = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %call7.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %partial, align 4
  br label %if.end82

if.else:                                          ; preds = %if.end56
  %call78 = call fastcc i32 @ocfs2_validate_and_adjust_move_goal(ptr noundef %1, ptr noundef nonnull %range)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.else.if.end82_crit_edge, label %if.else.if.then.i163_crit_edge

if.else.if.then.i163_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i163

if.else.if.end82_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end82:                                         ; preds = %if.else.if.end82_crit_edge, %if.then76, %if.end72.if.end82_crit_edge
  %call83 = call fastcc i32 @ocfs2_move_extents(ptr noundef nonnull %call7.i.i)
  %41 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call83, label %do.body102 [
    i32 0, label %if.end82.if.then.i163_crit_edge
    i32 -512, label %if.end82.if.then.i163_crit_edge173
    i32 -4, label %if.end82.if.then.i163_crit_edge174
    i32 524289, label %if.end82.if.then.i163_crit_edge175
    i32 -28, label %if.end82.if.then.i163_crit_edge176
    i32 -122, label %if.end82.if.then.i163_crit_edge177
  ]

if.end82.if.then.i163_crit_edge177:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i163

if.end82.if.then.i163_crit_edge176:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i163

if.end82.if.then.i163_crit_edge175:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i163

if.end82.if.then.i163_crit_edge174:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i163

if.end82.if.then.i163_crit_edge173:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i163

if.end82.if.then.i163_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i163

do.body102:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #10
  %42 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606846976, ptr %_m103, align 8
  %conv107 = sext i32 %call83 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.ocfs2_ioctl_move_extents, i32 noundef 1063, ptr noundef nonnull @.str, i64 noundef %conv107) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #10
  br label %if.then.i163

if.then.i163:                                     ; preds = %do.body102, %if.end82.if.then.i163_crit_edge, %if.end82.if.then.i163_crit_edge173, %if.end82.if.then.i163_crit_edge174, %if.end82.if.then.i163_crit_edge175, %if.end82.if.then.i163_crit_edge176, %if.end82.if.then.i163_crit_edge177, %if.else.if.then.i163_crit_edge
  %status.0 = phi i32 [ %call83, %if.end82.if.then.i163_crit_edge ], [ %call78, %if.else.if.then.i163_crit_edge ], [ %call83, %if.end82.if.then.i163_crit_edge173 ], [ %call83, %if.end82.if.then.i163_crit_edge174 ], [ %call83, %if.end82.if.then.i163_crit_edge175 ], [ %call83, %if.end82.if.then.i163_crit_edge176 ], [ %call83, %if.end82.if.then.i163_crit_edge177 ], [ %call83, %do.body102 ]
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #10
  %call.i.i162 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i162, label %if.then.i163.out_free_crit_edge, label %copy_to_user.exit

if.then.i163.out_free_crit_edge:                  ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

copy_to_user.exit:                                ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i167 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range, i32 noundef 64) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %argp, ptr noundef nonnull %range, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool115.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool115.not, i32 %status.0, i32 -14
  br label %out_free

out_free:                                         ; preds = %copy_to_user.exit, %if.then.i163.out_free_crit_edge, %if.end42.out_free_crit_edge, %if.then11.i.i
  %status.1 = phi i32 [ -22, %if.end42.out_free_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i163.out_free_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out_drop

out_drop:                                         ; preds = %out_free, %do.body, %if.end9.out_drop_crit_edge, %lor.lhs.false.out_drop_crit_edge, %if.end4.out_drop_crit_edge
  %status.2 = phi i32 [ %status.1, %out_free ], [ -12, %do.body ], [ -1, %lor.lhs.false.out_drop_crit_edge ], [ -1, %if.end4.out_drop_crit_edge ], [ -1, %if.end9.out_drop_crit_edge ]
  call void @mnt_drop_write_file(ptr noundef %filp) #10
  br label %cleanup

cleanup:                                          ; preds = %out_drop, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %out_drop ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %range) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !94
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !95
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !96

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !97
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !99
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_validate_and_adjust_move_goal(ptr nocapture noundef readonly %inode, ptr nocapture noundef %range) unnamed_addr #0 align 64 {
entry:
  %goal_bit = alloca i32, align 4
  %gd_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goal_bit) #10
  %0 = ptrtoint ptr %goal_bit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %goal_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gd_bh) #10
  %1 = ptrtoint ptr %gd_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %gd_bh, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_clustersize_bits, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %9 to i32
  %sub = sub i32 %7, %conv
  %shl = shl nuw i32 1, %sub
  %me_goal = getelementptr inbounds %struct.ocfs2_move_extents, ptr %range, i32 0, i32 2
  %10 = ptrtoint ptr %me_goal to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %me_goal, align 8
  %sh_prom.i.i = zext i32 %sub to i64
  %shr.i.i = lshr i64 %11, %sh_prom.i.i
  %conv1.i = and i64 %shr.i.i, 4294967295
  %shl.i = shl i64 %conv1.i, %sh_prom.i.i
  store i64 %shl.i, ptr %me_goal, align 8
  %call5 = call fastcc i32 @ocfs2_find_victim_alloc_group(ptr noundef %inode, i64 noundef %shl.i, ptr noundef nonnull %goal_bit, ptr noundef nonnull %gd_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %gd_bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gd_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %16 = ptrtoint ptr %me_goal to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %me_goal, align 8
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 9
  %18 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bg_blkno, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %20)
  %cmp = icmp eq i64 %17, %20
  br i1 %cmp, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv9 = sext i32 %shl to i64
  %add = add i64 %17, %conv9
  %21 = ptrtoint ptr %me_goal to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add, ptr %me_goal, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bg_bits, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv12 = zext i16 %24 to i32
  %25 = ptrtoint ptr %goal_bit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %goal_bit, align 4
  %sub13 = sub i32 %conv12, %26
  %s_clustersize = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 35
  %27 = ptrtoint ptr %s_clustersize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_clustersize, align 4
  %mul = mul i32 %sub13, %28
  %conv14 = sext i32 %mul to i64
  %me_len = getelementptr inbounds %struct.ocfs2_move_extents, ptr %range, i32 0, i32 1
  %29 = ptrtoint ptr %me_len to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %me_len, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv14)
  %cmp15 = icmp ugt i64 %30, %conv14
  %spec.select = select i1 %cmp15, i32 -22, i32 0
  br label %out

out:                                              ; preds = %if.end11, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call5, %entry.out_crit_edge ], [ %spec.select, %if.end11 ]
  %31 = ptrtoint ptr %gd_bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gd_bh, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %32) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gd_bh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goal_bit) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_move_extents(ptr noundef %context) unnamed_addr #0 align 64 {
entry:
  %di_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m74 = alloca i64, align 8
  %_m106 = alloca i64, align 8
  %_m138 = alloca i64, align 8
  %tmp149 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #10
  %2 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %di_bh, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %8, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %9 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %osb_flags.i, align 8
  %and.i224 = and i32 %10, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool3.not = icmp eq i32 %and.i224, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call4 = tail call i32 @ocfs2_rw_lock(ptr noundef %1, i32 noundef 1) #10
  %11 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call4, label %do.body [
    i32 0, label %if.end19
    i32 -512, label %if.end.out_crit_edge
    i32 -4, label %if.end.out_crit_edge229
    i32 524289, label %if.end.out_crit_edge230
    i32 -28, label %if.end.out_crit_edge231
    i32 -122, label %if.end.out_crit_edge232
  ]

if.end.out_crit_edge232:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge231:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge230:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge229:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_move_extents, i32 noundef 921, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end19:                                         ; preds = %if.end
  %call20 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %1, ptr noundef nonnull %di_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  %13 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call20, label %do.body39 [
    i32 0, label %if.end50
    i32 -512, label %if.end19.out_rw_unlock_crit_edge
    i32 -4, label %if.end19.out_rw_unlock_crit_edge233
    i32 524289, label %if.end19.out_rw_unlock_crit_edge234
    i32 -28, label %if.end19.out_rw_unlock_crit_edge235
    i32 -122, label %if.end19.out_rw_unlock_crit_edge236
  ]

if.end19.out_rw_unlock_crit_edge236:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge235:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge234:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge233:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

do.body39:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #10
  %14 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m40, align 8
  %conv44 = sext i32 %call20 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.ocfs2_move_extents, i32 noundef 927, ptr noundef nonnull @.str, i64 noundef %conv44) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #10
  br label %out_rw_unlock

if.end50:                                         ; preds = %if.end19
  %ip_alloc_sem = getelementptr i8, ptr %1, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #10
  %15 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %di_bh, align 4
  %call52 = call fastcc i32 @__ocfs2_move_extents_range(ptr noundef %16, ptr noundef %context)
  call void @up_write(ptr noundef %ip_alloc_sem) #10
  %17 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call52, label %do.body73 [
    i32 0, label %if.end84
    i32 -512, label %if.end50.out_inode_unlock_crit_edge
    i32 -4, label %if.end50.out_inode_unlock_crit_edge237
    i32 524289, label %if.end50.out_inode_unlock_crit_edge238
    i32 -28, label %if.end50.out_inode_unlock_crit_edge239
    i32 -122, label %if.end50.out_inode_unlock_crit_edge240
  ]

if.end50.out_inode_unlock_crit_edge240:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end50.out_inode_unlock_crit_edge239:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end50.out_inode_unlock_crit_edge238:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end50.out_inode_unlock_crit_edge237:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end50.out_inode_unlock_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

do.body73:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #10
  %18 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m74, align 8
  %conv78 = sext i32 %call52 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.ocfs2_move_extents, i32 noundef 940, ptr noundef nonnull @.str, i64 noundef %conv78) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #10
  br label %out_inode_unlock

if.end84:                                         ; preds = %if.end50
  %call85 = call ptr @ocfs2_start_trans(ptr noundef %6, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then87, label %if.end116

if.then87:                                        ; preds = %if.end84
  %19 = ptrtoint ptr %call85 to i32
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %19, label %do.body105 [
    i32 -512, label %if.then87.out_inode_unlock_crit_edge
    i32 -4, label %if.then87.out_inode_unlock_crit_edge241
    i32 524289, label %if.then87.out_inode_unlock_crit_edge242
    i32 -28, label %if.then87.out_inode_unlock_crit_edge243
    i32 -122, label %if.then87.out_inode_unlock_crit_edge244
  ]

if.then87.out_inode_unlock_crit_edge244:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then87.out_inode_unlock_crit_edge243:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then87.out_inode_unlock_crit_edge242:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then87.out_inode_unlock_crit_edge241:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then87.out_inode_unlock_crit_edge:             ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

do.body105:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m106) #10
  %21 = ptrtoint ptr %_m106 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m106, align 8
  %conv110 = sext i32 %19 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m106, ptr noundef nonnull @__func__.ocfs2_move_extents, i32 noundef 950, ptr noundef nonnull @.str, i64 noundef %conv110) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m106) #10
  br label %out_inode_unlock

if.end116:                                        ; preds = %if.end84
  %ip_metadata_cache.i = getelementptr i8, ptr %1, i32 -56
  %22 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %di_bh, align 4
  %call118 = call i32 @ocfs2_journal_access_di(ptr noundef %call85, ptr noundef %ip_metadata_cache.i, ptr noundef %23, i32 noundef 1) #10
  %24 = zext i32 %call118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call118, label %do.body137 [
    i32 0, label %if.end148
    i32 -512, label %if.end116.out_commit_crit_edge
    i32 -4, label %if.end116.out_commit_crit_edge245
    i32 524289, label %if.end116.out_commit_crit_edge246
    i32 -28, label %if.end116.out_commit_crit_edge247
    i32 -122, label %if.end116.out_commit_crit_edge248
  ]

if.end116.out_commit_crit_edge248:                ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end116.out_commit_crit_edge247:                ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end116.out_commit_crit_edge246:                ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end116.out_commit_crit_edge245:                ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end116.out_commit_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

do.body137:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m138) #10
  %25 = ptrtoint ptr %_m138 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m138, align 8
  %conv142 = sext i32 %call118 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m138, ptr noundef nonnull @__func__.ocfs2_move_extents, i32 noundef 957, ptr noundef nonnull @.str, i64 noundef %conv142) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m138) #10
  br label %out_commit

if.end148:                                        ; preds = %if.end116
  %26 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %di_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp149) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp149, ptr noundef %1) #10
  %30 = call ptr @memcpy(ptr %i_ctime, ptr %tmp149, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp149) #10
  %31 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_ctime, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32)
  %i_ctime151 = getelementptr inbounds %struct.ocfs2_dinode, ptr %29, i32 0, i32 14
  %34 = ptrtoint ptr %i_ctime151 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %i_ctime151, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tv_nsec, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %i_ctime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %29, i32 0, i32 21
  %38 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %i_ctime_nsec, align 8
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call85, i32 0, i32 7
  %39 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %40 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end148.ocfs2_update_inode_fsync_trans.exit_crit_edge

if.end148.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

lor.lhs.false.i.i:                                ; preds = %if.end148
  %41 = ptrtoint ptr %call85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call85, align 4
  %tobool1.not.i.i = icmp eq ptr %42, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %and.i.i.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge

is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %1, i32 884
  %49 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %i_sync_tid.i, align 4
  br label %ocfs2_update_inode_fsync_trans.exit

ocfs2_update_inode_fsync_trans.exit:              ; preds = %if.then.i, %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %if.end148.ocfs2_update_inode_fsync_trans.exit_crit_edge
  %50 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %di_bh, align 4
  call void @ocfs2_journal_dirty(ptr noundef %call85, ptr noundef %51) #10
  br label %out_commit

out_commit:                                       ; preds = %ocfs2_update_inode_fsync_trans.exit, %do.body137, %if.end116.out_commit_crit_edge, %if.end116.out_commit_crit_edge245, %if.end116.out_commit_crit_edge246, %if.end116.out_commit_crit_edge247, %if.end116.out_commit_crit_edge248
  %call153 = call i32 @ocfs2_commit_trans(ptr noundef %6, ptr noundef %call85) #10
  br label %out_inode_unlock

out_inode_unlock:                                 ; preds = %out_commit, %do.body105, %if.then87.out_inode_unlock_crit_edge, %if.then87.out_inode_unlock_crit_edge241, %if.then87.out_inode_unlock_crit_edge242, %if.then87.out_inode_unlock_crit_edge243, %if.then87.out_inode_unlock_crit_edge244, %do.body73, %if.end50.out_inode_unlock_crit_edge, %if.end50.out_inode_unlock_crit_edge237, %if.end50.out_inode_unlock_crit_edge238, %if.end50.out_inode_unlock_crit_edge239, %if.end50.out_inode_unlock_crit_edge240
  %status.0 = phi i32 [ %call118, %out_commit ], [ %call52, %if.end50.out_inode_unlock_crit_edge ], [ %call52, %if.end50.out_inode_unlock_crit_edge237 ], [ %call52, %if.end50.out_inode_unlock_crit_edge238 ], [ %call52, %if.end50.out_inode_unlock_crit_edge239 ], [ %call52, %if.end50.out_inode_unlock_crit_edge240 ], [ %call52, %do.body73 ], [ %19, %if.then87.out_inode_unlock_crit_edge ], [ %19, %if.then87.out_inode_unlock_crit_edge241 ], [ %19, %if.then87.out_inode_unlock_crit_edge242 ], [ %19, %if.then87.out_inode_unlock_crit_edge243 ], [ %19, %if.then87.out_inode_unlock_crit_edge244 ], [ %19, %do.body105 ]
  %52 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %di_bh, align 4
  %tobool.not.i226 = icmp eq ptr %53, null
  br i1 %tobool.not.i226, label %out_inode_unlock.brelse.exit_crit_edge, label %if.then.i227

out_inode_unlock.brelse.exit_crit_edge:           ; preds = %out_inode_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i227:                                     ; preds = %out_inode_unlock
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %53) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i227, %out_inode_unlock.brelse.exit_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef %1, i32 noundef 1) #10
  br label %out_rw_unlock

out_rw_unlock:                                    ; preds = %brelse.exit, %do.body39, %if.end19.out_rw_unlock_crit_edge, %if.end19.out_rw_unlock_crit_edge233, %if.end19.out_rw_unlock_crit_edge234, %if.end19.out_rw_unlock_crit_edge235, %if.end19.out_rw_unlock_crit_edge236
  %status.1 = phi i32 [ %status.0, %brelse.exit ], [ %call20, %if.end19.out_rw_unlock_crit_edge ], [ %call20, %if.end19.out_rw_unlock_crit_edge233 ], [ %call20, %if.end19.out_rw_unlock_crit_edge234 ], [ %call20, %if.end19.out_rw_unlock_crit_edge235 ], [ %call20, %if.end19.out_rw_unlock_crit_edge236 ], [ %call20, %do.body39 ]
  call void @ocfs2_rw_unlock(ptr noundef %1, i32 noundef 1) #10
  br label %out

out:                                              ; preds = %out_rw_unlock, %do.body, %if.end.out_crit_edge, %if.end.out_crit_edge229, %if.end.out_crit_edge230, %if.end.out_crit_edge231, %if.end.out_crit_edge232
  %status.2 = phi i32 [ %status.1, %out_rw_unlock ], [ %call4, %if.end.out_crit_edge ], [ %call4, %if.end.out_crit_edge229 ], [ %call4, %if.end.out_crit_edge230 ], [ %call4, %if.end.out_crit_edge231 ], [ %call4, %if.end.out_crit_edge232 ], [ %call4, %do.body ]
  call void @up_write(ptr noundef %i_rwsem.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %out ], [ -30, %lor.lhs.false.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_find_victim_alloc_group(ptr nocapture noundef readonly %inode, i64 noundef %vict_blkno, ptr nocapture noundef writeonly %vict_bit, ptr nocapture noundef writeonly %ret_bh) unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i64, align 8
  %namebuf = alloca [40 x i8], align 1
  %ac_bh = alloca ptr, align 4
  %gd_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m70 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno) #10
  %0 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blkno, align 8, !annotation !102
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %namebuf) #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac_bh) #10
  %5 = ptrtoint ptr %ac_bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ac_bh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gd_bh) #10
  %6 = ptrtoint ptr %gd_bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gd_bh, align 4
  %7 = getelementptr inbounds i8, ptr %namebuf, i32 14
  %8 = call ptr @memset(ptr %7, i32 255, i32 26)
  %9 = call ptr @memcpy(ptr %namebuf, ptr @.str.11, i32 14)
  %sys_root_inode = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %sys_root_inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_root_inode, align 4
  %call3 = call i32 @strlen(ptr noundef nonnull %namebuf) #15
  %call4 = call i32 @ocfs2_lookup_ino_from_name(ptr noundef %11, ptr noundef nonnull %namebuf, i32 noundef %call3, ptr noundef nonnull %blkno) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %blkno, align 8
  %call5 = call i32 @ocfs2_read_blocks_sync(ptr noundef %4, i64 noundef %13, i32 noundef 1, ptr noundef nonnull %ac_bh) #10
  %14 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call5, label %do.body [
    i32 0, label %if.end20
    i32 -512, label %if.end.out_crit_edge
    i32 -4, label %if.end.out_crit_edge37
    i32 524289, label %if.end.out_crit_edge38
    i32 -28, label %if.end.out_crit_edge39
    i32 -122, label %if.end.out_crit_edge40
  ]

if.end.out_crit_edge40:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge39:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge38:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge37:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call5 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_find_victim_alloc_group, i32 noundef 398, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end20:                                         ; preds = %if.end
  %16 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ac_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %19, i32 0, i32 35, i32 0, i32 7
  %c_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %19, i32 0, i32 35, i32 0, i32 8
  %20 = ptrtoint ptr %c_blkno to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %c_blkno, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %vict_blkno)
  %cmp27 = icmp ugt i64 %22, %vict_blkno
  br i1 %cmp27, label %if.end20.out_crit_edge, label %lor.lhs.false

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end20
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 36
  %23 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_clustersize_bits, align 8
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_blocksize_bits, align 4
  %conv25 = zext i8 %28 to i32
  %sub = sub i32 %24, %conv25
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %19, i32 0, i32 34
  %i_total = getelementptr inbounds %struct.anon.94, ptr %id1, i32 0, i32 1
  %29 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_total, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %conv29 = zext i32 %31 to i64
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %conv29, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %vict_blkno)
  %cmp30.not = icmp ugt i64 %shl, %vict_blkno
  br i1 %cmp30.not, label %for.cond.preheader, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cl_next_free_rec = getelementptr inbounds %struct.ocfs2_dinode, ptr %19, i32 0, i32 35, i32 0, i32 3
  %32 = ptrtoint ptr %cl_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cl_next_free_rec, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp3510.not = icmp eq i16 %33, 0
  br i1 %cmp3510.not, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx38 = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %i.011
  %tobool39.not = icmp eq ptr %arrayidx38, null
  br i1 %tobool39.not, label %for.body.for.inc_crit_edge, label %do.body42.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body42.preheader:                              ; preds = %for.body
  %c_blkno45 = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %i.011, i32 2
  br label %do.body42

do.body42:                                        ; preds = %do.cond100.do.body42_crit_edge, %do.body42.preheader
  %bg.0 = phi ptr [ %48, %do.cond100.do.body42_crit_edge ], [ null, %do.body42.preheader ]
  %tobool43.not = icmp eq ptr %bg.0, null
  %bg_next_group = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg.0, i32 0, i32 7
  %bg_next_group.sink = select i1 %tobool43.not, ptr %c_blkno45, ptr %bg_next_group
  %34 = ptrtoint ptr %bg_next_group.sink to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bg_next_group.sink, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  %37 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %blkno, align 8
  %38 = ptrtoint ptr %gd_bh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gd_bh, align 4
  %tobool47.not = icmp eq ptr %39, null
  br i1 %tobool47.not, label %do.body42.if.end49_crit_edge, label %brelse.exit

do.body42.if.end49_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

brelse.exit:                                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %39) #10
  %40 = ptrtoint ptr %gd_bh to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %gd_bh, align 4
  br label %if.end49

if.end49:                                         ; preds = %brelse.exit, %do.body42.if.end49_crit_edge
  %41 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %blkno, align 8
  %call50 = call i32 @ocfs2_read_blocks_sync(ptr noundef %4, i64 noundef %42, i32 noundef 1, ptr noundef nonnull %gd_bh) #10
  %43 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call50, label %do.body69 [
    i32 0, label %if.end80
    i32 -512, label %if.end49.out_crit_edge
    i32 -4, label %if.end49.out_crit_edge41
    i32 524289, label %if.end49.out_crit_edge42
    i32 -28, label %if.end49.out_crit_edge43
    i32 -122, label %if.end49.out_crit_edge44
  ]

if.end49.out_crit_edge44:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end49.out_crit_edge43:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end49.out_crit_edge42:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end49.out_crit_edge41:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body69:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70) #10
  %44 = ptrtoint ptr %_m70 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 1152921504606846976, ptr %_m70, align 8
  %conv74 = sext i32 %call50 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70, ptr noundef nonnull @__func__.ocfs2_find_victim_alloc_group, i32 noundef 440, ptr noundef nonnull @.str, i64 noundef %conv74) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70) #10
  br label %out

if.end80:                                         ; preds = %if.end49
  %45 = ptrtoint ptr %gd_bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gd_bh, align 4
  %b_data81 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %b_data81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data81, align 4
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bg_blkno, align 8
  %51 = call i64 @llvm.bswap.i64(i64 %50)
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %48, i32 0, i32 2
  %52 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bg_bits, align 2
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %conv82 = zext i16 %54 to i64
  %add = add i64 %51, %conv82
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %vict_blkno)
  %cmp83 = icmp ugt i64 %add, %vict_blkno
  br i1 %cmp83, label %if.then85, label %do.cond100

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ret_bh to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %46, ptr %ret_bh, align 4
  %56 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %blkno, align 8
  %sub86 = sub i64 %vict_blkno, %57
  %shr = lshr i64 %sub86, %sh_prom
  %conv88 = trunc i64 %shr to i32
  %58 = ptrtoint ptr %vict_bit to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv88, ptr %vict_bit, align 4
  br label %out

do.cond100:                                       ; preds = %if.end80
  %bg_next_group101 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %48, i32 0, i32 7
  %59 = ptrtoint ptr %bg_next_group101 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bg_next_group101, align 8
  %tobool102.not = icmp eq i64 %60, 0
  br i1 %tobool102.not, label %do.cond100.for.inc_crit_edge, label %do.cond100.do.body42_crit_edge

do.cond100.do.body42_crit_edge:                   ; preds = %do.cond100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

do.cond100.for.inc_crit_edge:                     ; preds = %do.cond100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %do.cond100.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %61 = ptrtoint ptr %cl_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %cl_next_free_rec, align 2
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %conv34 = zext i16 %63 to i32
  %cmp35 = icmp ult i32 %inc, %conv34
  br i1 %cmp35, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.then85, %do.body69, %if.end49.out_crit_edge, %if.end49.out_crit_edge41, %if.end49.out_crit_edge42, %if.end49.out_crit_edge43, %if.end49.out_crit_edge44, %for.cond.preheader.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end20.out_crit_edge, %do.body, %if.end.out_crit_edge, %if.end.out_crit_edge37, %if.end.out_crit_edge38, %if.end.out_crit_edge39, %if.end.out_crit_edge40, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then85 ], [ -2, %entry.out_crit_edge ], [ %call5, %if.end.out_crit_edge ], [ %call5, %if.end.out_crit_edge37 ], [ %call5, %if.end.out_crit_edge38 ], [ %call5, %if.end.out_crit_edge39 ], [ %call5, %if.end.out_crit_edge40 ], [ %call5, %do.body ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end20.out_crit_edge ], [ %call50, %do.body69 ], [ -22, %for.cond.preheader.out_crit_edge ], [ %call50, %if.end49.out_crit_edge ], [ %call50, %if.end49.out_crit_edge41 ], [ %call50, %if.end49.out_crit_edge42 ], [ %call50, %if.end49.out_crit_edge43 ], [ %call50, %if.end49.out_crit_edge44 ], [ -22, %for.inc.out_crit_edge ]
  %64 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ac_bh, align 4
  %tobool.not.i1 = icmp eq ptr %65, null
  br i1 %tobool.not.i1, label %out.brelse.exit3_crit_edge, label %if.then.i2

out.brelse.exit3_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit3

if.then.i2:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %65) #10
  br label %brelse.exit3

brelse.exit3:                                     ; preds = %if.then.i2, %out.brelse.exit3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gd_bh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac_bh) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %namebuf) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno) #10
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lookup_ino_from_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks_sync(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_rw_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_move_extents_range(ptr noundef %di_bh, ptr noundef %context) unnamed_addr #0 align 64 {
entry:
  %credits.i229 = alloca i32, align 4
  %extra_blocks.i230 = alloca i32, align 4
  %goal_bit.i = alloca i32, align 4
  %gb_bh.i = alloca ptr, align 4
  %gd_bh.i = alloca ptr, align 4
  %ref_tree.i231 = alloca ptr, align 4
  %_m.i232 = alloca i64, align 8
  %_m80.i = alloca i64, align 8
  %_m112.i = alloca i64, align 8
  %_m127.i = alloca i64, align 8
  %_m155.i = alloca i64, align 8
  %_m187.i = alloca i64, align 8
  %_m220.i = alloca i64, align 8
  %_m254.i = alloca i64, align 8
  %_m285.i = alloca i64, align 8
  %_m317.i = alloca i64, align 8
  %_m350.i = alloca i64, align 8
  %credits.i = alloca i32, align 4
  %extra_blocks.i = alloca i32, align 4
  %ref_tree.i = alloca ptr, align 4
  %new_phys_cpos.i = alloca i32, align 4
  %new_len.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m79.i = alloca i64, align 8
  %_m111.i = alloca i64, align 8
  %_m146.i = alloca i64, align 8
  %_m178.i = alloca i64, align 8
  %_m210.i = alloca i64, align 8
  %_m242.i = alloca i64, align 8
  %_m297.i = alloca i64, align 8
  %_m336.i = alloca i64, align 8
  %flags = alloca i32, align 4
  %phys_cpos = alloca i32, align 4
  %alloc_size = alloca i32, align 4
  %new_phys_cpos = alloca i32, align 4
  %_m56 = alloca i64, align 8
  %_m114 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_cpos) #10
  %1 = ptrtoint ptr %phys_cpos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %phys_cpos, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloc_size) #10
  %2 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %alloc_size, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_phys_cpos) #10
  %3 = ptrtoint ptr %new_phys_cpos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %new_phys_cpos, align 4
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %range2 = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 8
  %8 = ptrtoint ptr %range2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %range2, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  %call = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %me_len = getelementptr inbounds %struct.ocfs2_move_extents, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %me_len to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %me_len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp3 = icmp eq i64 %15, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ip_dyn_features = getelementptr i8, ptr %5, i32 -172
  %16 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ip_dyn_features, align 4
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_refcount_loc = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 29
  %19 = ptrtoint ptr %i_refcount_loc to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_refcount_loc, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %refcount_loc = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 7
  %22 = ptrtoint ptr %refcount_loc to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %refcount_loc, align 8
  %et = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 9
  %ip_metadata_cache.i = getelementptr i8, ptr %5, i32 -56
  tail call void @ocfs2_init_dinode_extent_tree(ptr noundef %et, ptr noundef %ip_metadata_cache.i, ptr noundef %di_bh) #10
  %dealloc = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 12
  %23 = ptrtoint ptr %dealloc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dealloc, align 4
  %c_global_allocator.i = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 12, i32 1
  %24 = ptrtoint ptr %c_global_allocator.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %c_global_allocator.i, align 4
  %auto_defrag = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 2
  %25 = ptrtoint ptr %auto_defrag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %auto_defrag, align 8
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 1
  %27 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sb, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %9, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %32, i32 0, i32 36
  %33 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %32, i32 0, i32 35
  %35 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %36, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %30, %conv.i
  %sh_prom.i = zext i32 %34 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %37 = ptrtoint ptr %me_len to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %me_len, align 8
  %add = add i64 %38, %30
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 36
  %39 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %40 to i64
  %shr = lshr i64 %add, %sh_prom
  %conv11 = trunc i64 %shr to i32
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %conv11, i32 %conv2.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %if.else26, label %if.then17

if.then17:                                        ; preds = %if.end6
  %me_threshold = getelementptr inbounds %struct.ocfs2_move_extents, ptr %9, i32 0, i32 3
  %42 = ptrtoint ptr %me_threshold to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %me_threshold, align 8
  %shr20 = lshr i64 %43, %sh_prom
  %conv21 = trunc i64 %shr20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv21)
  %cmp22 = icmp ult i32 %conv21, 2
  br i1 %cmp22, label %if.then17.done_crit_edge, label %if.then17.if.end36_crit_edge

if.then17.if.end36_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then17.done_crit_edge:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.else26:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %me_goal = getelementptr inbounds %struct.ocfs2_move_extents, ptr %9, i32 0, i32 2
  %46 = ptrtoint ptr %me_goal to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %me_goal, align 8
  %s_fs_info.i218 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i218 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i218, align 16
  %s_clustersize_bits.i219 = getelementptr inbounds %struct.ocfs2_super, ptr %49, i32 0, i32 36
  %50 = ptrtoint ptr %s_clustersize_bits.i219 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_clustersize_bits.i219, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 2
  %52 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i220 = zext i8 %53 to i32
  %sub.i221 = sub i32 %51, %conv.i220
  %sh_prom.i222 = zext i32 %sub.i221 to i64
  %shr.i223 = lshr i64 %47, %sh_prom.i222
  %conv1.i = trunc i64 %shr.i223 to i32
  %54 = ptrtoint ptr %new_phys_cpos to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv1.i, ptr %new_phys_cpos, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else26, %if.then17.if.end36_crit_edge
  %defrag_thresh.0 = phi i32 [ %conv21, %if.then17.if.end36_crit_edge ], [ 0, %if.else26 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %conv2.i)
  %tobool37.not287.not = icmp ugt i32 %conv11, %conv2.i
  br i1 %tobool37.not287.not, label %while.body.lr.ph, label %if.end36.done_crit_edge

if.end36.done_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

while.body.lr.ph:                                 ; preds = %if.end36
  %partial1.i = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 3
  %meta_ac.i = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 10
  %data_ac.i = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 11
  %clusters_moved = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %next.while.body_crit_edge, %while.body.lr.ph
  %len_to_move.1301 = phi i32 [ %41, %while.body.lr.ph ], [ %sub127, %next.while.body_crit_edge ]
  %cpos.0289 = phi i32 [ %conv2.i, %while.body.lr.ph ], [ %add126, %next.while.body_crit_edge ]
  %len_defraged.0288 = phi i32 [ 0, %while.body.lr.ph ], [ %len_defraged.3, %next.while.body_crit_edge ]
  %call38 = call i32 @ocfs2_get_clusters(ptr noundef %5, i32 noundef %cpos.0289, ptr noundef nonnull %phys_cpos, ptr noundef nonnull %alloc_size, ptr noundef nonnull %flags) #10
  %55 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call38, label %do.body55 [
    i32 0, label %if.end65
    i32 -512, label %while.body.out_crit_edge
    i32 -4, label %while.body.out_crit_edge338
    i32 524289, label %while.body.out_crit_edge339
    i32 -28, label %while.body.out_crit_edge340
    i32 -122, label %while.body.out_crit_edge341
  ]

while.body.out_crit_edge341:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge340:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge339:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge338:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body55:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m56) #10
  %56 = ptrtoint ptr %_m56 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1152921504606846976, ptr %_m56, align 8
  %conv60 = sext i32 %call38 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m56, ptr noundef nonnull @__func__.__ocfs2_move_extents_range, i32 noundef 831, ptr noundef nonnull @.str, i64 noundef %conv60) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m56) #10
  br label %out

if.end65:                                         ; preds = %while.body
  %57 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %alloc_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %len_to_move.1301)
  %cmp66 = icmp ugt i32 %58, %len_to_move.1301
  br i1 %cmp66, label %if.then68, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %len_to_move.1301, ptr %alloc_size, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65.if.end69_crit_edge
  %60 = ptrtoint ptr %phys_cpos to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phys_cpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool70.not = icmp eq i32 %61, 0
  br i1 %tobool70.not, label %if.then71, label %if.end75

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = select i1 %tobool16.not, i32 %len_defraged.0288, i32 0
  br label %next

if.end75:                                         ; preds = %if.end69
  %62 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %alloc_size, align 4
  br i1 %tobool16.not, label %if.else90, label %if.then77

if.then77:                                        ; preds = %if.end75
  %add.i224 = add i32 %63, %len_defraged.0288
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i224, i32 %defrag_thresh.0)
  %cmp.i = icmp ult i32 %add.i224, %defrag_thresh.0
  br i1 %cmp.i, label %if.then77.if.end86_crit_edge, label %if.else.i

if.then77.if.end86_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.else.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len_defraged.0288)
  %cmp2.i = icmp eq i32 %len_defraged.0288, 0
  br i1 %cmp2.i, label %if.else.i.next_crit_edge, label %if.else4.i

if.else.i.next_crit_edge:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i225 = sub i32 %defrag_thresh.0, %len_defraged.0288
  %64 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.i225, ptr %alloc_size, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else4.i, %if.then77.if.end86_crit_edge
  %len_defraged.1 = phi i32 [ 0, %if.else4.i ], [ %add.i224, %if.then77.if.end86_crit_edge ]
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %credits.i) #10
  %67 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %credits.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra_blocks.i) #10
  %68 = ptrtoint ptr %extra_blocks.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %extra_blocks.i, align 4
  %69 = ptrtoint ptr %partial1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %partial1.i, align 4
  %71 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %context, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i226 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 33
  %75 = ptrtoint ptr %s_fs_info.i226 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_fs_info.i226, align 16
  %osb_tl_inode.i = getelementptr inbounds %struct.ocfs2_super, ptr %76, i32 0, i32 85
  %77 = ptrtoint ptr %osb_tl_inode.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %osb_tl_inode.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_tree.i) #10
  %79 = ptrtoint ptr %ref_tree.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %ref_tree.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_phys_cpos.i) #10
  %80 = ptrtoint ptr %new_phys_cpos.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %new_phys_cpos.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_len.i) #10
  %81 = ptrtoint ptr %new_len.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %new_len.i, align 4, !annotation !102
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %76, i32 0, i32 36
  %82 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 2
  %84 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i.i = zext i8 %85 to i32
  %sub.i.i = sub i32 %83, %conv.i.i
  %conv1.i.i = zext i32 %61 to i64
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %conv1.i.i, %sh_prom.i.i
  %and.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end86.if.end90.i_crit_edge, label %land.lhs.true.i

if.end86.if.end90.i_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

land.lhs.true.i:                                  ; preds = %if.end86
  %86 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %alloc_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool4.not.i = icmp eq i32 %87, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end90.i_crit_edge, label %do.body.i

land.lhs.true.i.if.end90.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %ip_dyn_features.i.i = getelementptr i8, ptr %72, i32 -172
  %88 = ptrtoint ptr %ip_dyn_features.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ip_dyn_features.i.i, align 4
  %90 = and i16 %89, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.i.not.i = icmp eq i16 %90, 0
  br i1 %tobool.i.not.i, label %do.body10.i, label %do.body16.i, !prof !96

do.body10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/move_extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

do.body16.i:                                      ; preds = %do.body.i
  %91 = ptrtoint ptr %refcount_loc to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %refcount_loc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %tobool17.not.i = icmp eq i64 %92, 0
  br i1 %tobool17.not.i, label %do.body27.i, label %do.end35.i, !prof !96

do.body27.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/move_extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 220, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

do.end35.i:                                       ; preds = %do.body16.i
  %call37.i = call i32 @ocfs2_lock_refcount_tree(ptr noundef %76, i64 noundef %92, i32 noundef 1, ptr noundef nonnull %ref_tree.i, ptr noundef null) #10
  %93 = zext i32 %call37.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call37.i, label %do.body49.i [
    i32 0, label %if.end57.i
    i32 -512, label %do.end35.i.ocfs2_defrag_extent.exit_crit_edge
    i32 -4, label %do.end35.i.ocfs2_defrag_extent.exit_crit_edge342
    i32 524289, label %do.end35.i.ocfs2_defrag_extent.exit_crit_edge343
    i32 -28, label %do.end35.i.ocfs2_defrag_extent.exit_crit_edge344
    i32 -122, label %do.end35.i.ocfs2_defrag_extent.exit_crit_edge345
  ]

do.end35.i.ocfs2_defrag_extent.exit_crit_edge345: ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_defrag_extent.exit

do.end35.i.ocfs2_defrag_extent.exit_crit_edge344: ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_defrag_extent.exit

do.end35.i.ocfs2_defrag_extent.exit_crit_edge343: ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_defrag_extent.exit

do.end35.i.ocfs2_defrag_extent.exit_crit_edge342: ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_defrag_extent.exit

do.end35.i.ocfs2_defrag_extent.exit_crit_edge:    ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_defrag_extent.exit

do.body49.i:                                      ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %94 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i227 = sext i32 %call37.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 225, ptr noundef nonnull @.str, i64 noundef %conv.i227) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %ocfs2_defrag_extent.exit

if.end57.i:                                       ; preds = %do.end35.i
  %95 = ptrtoint ptr %refcount_loc to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %refcount_loc, align 8
  %97 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %alloc_size, align 4
  %call59.i = call i32 @ocfs2_prepare_refcount_change_for_del(ptr noundef %72, i64 noundef %96, i64 noundef %shl.i.i, i32 noundef %98, ptr noundef nonnull %credits.i, ptr noundef nonnull %extra_blocks.i) #10
  %99 = zext i32 %call59.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call59.i, label %do.body78.i [
    i32 0, label %if.end57.i.if.end90.i_crit_edge
    i32 -512, label %if.end57.i.out.i_crit_edge
    i32 -4, label %if.end57.i.out.i_crit_edge346
    i32 524289, label %if.end57.i.out.i_crit_edge347
    i32 -28, label %if.end57.i.out.i_crit_edge348
    i32 -122, label %if.end57.i.out.i_crit_edge349
  ]

if.end57.i.out.i_crit_edge349:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end57.i.out.i_crit_edge348:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end57.i.out.i_crit_edge347:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end57.i.out.i_crit_edge346:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end57.i.out.i_crit_edge:                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end57.i.if.end90.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

do.body78.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m79.i) #10
  %100 = ptrtoint ptr %_m79.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 1152921504606846976, ptr %_m79.i, align 8
  %conv83.i = sext i32 %call59.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m79.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 236, ptr noundef nonnull @.str, i64 noundef %conv83.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m79.i) #10
  br label %out.i

if.end90.i:                                       ; preds = %if.end57.i.if.end90.i_crit_edge, %land.lhs.true.i.if.end90.i_crit_edge, %if.end86.if.end90.i_crit_edge
  %101 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %alloc_size, align 4
  %103 = ptrtoint ptr %extra_blocks.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %extra_blocks.i, align 4
  %call91.i = call fastcc i32 @ocfs2_lock_meta_allocator_move_extents(ptr noundef %72, ptr noundef %et, i32 noundef %102, ptr noundef %meta_ac.i, i32 noundef %104, ptr noundef nonnull %credits.i) #10
  %105 = zext i32 %call91.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call91.i, label %do.body110.i [
    i32 0, label %if.end121.i
    i32 -512, label %if.end90.i.out.i_crit_edge
    i32 -4, label %if.end90.i.out.i_crit_edge350
    i32 524289, label %if.end90.i.out.i_crit_edge351
    i32 -28, label %if.end90.i.out.i_crit_edge352
    i32 -122, label %if.end90.i.out.i_crit_edge353
  ]

if.end90.i.out.i_crit_edge353:                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end90.i.out.i_crit_edge352:                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end90.i.out.i_crit_edge351:                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end90.i.out.i_crit_edge350:                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end90.i.out.i_crit_edge:                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.body110.i:                                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m111.i) #10
  %106 = ptrtoint ptr %_m111.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 1152921504606846976, ptr %_m111.i, align 8
  %conv115.i = sext i32 %call91.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m111.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 246, ptr noundef nonnull @.str, i64 noundef %conv115.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m111.i) #10
  br label %out.i

if.end121.i:                                      ; preds = %if.end90.i
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %78, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #10
  %call122.i = call i32 @ocfs2_truncate_log_needs_flush(ptr noundef %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %if.end121.i.if.end157.i_crit_edge, label %if.then124.i

if.end121.i.if.end157.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157.i

if.then124.i:                                     ; preds = %if.end121.i
  %call125.i = call i32 @__ocfs2_flush_truncate_log(ptr noundef %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %cmp126.i = icmp slt i32 %call125.i, 0
  br i1 %cmp126.i, label %if.then128.i, label %if.then124.i.if.end157.i_crit_edge

if.then124.i.if.end157.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157.i

if.then128.i:                                     ; preds = %if.then124.i
  %107 = zext i32 %call125.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call125.i, label %do.body145.i [
    i32 -512, label %if.then128.i.out_unlock_mutex.i_crit_edge
    i32 -4, label %if.then128.i.out_unlock_mutex.i_crit_edge354
    i32 -28, label %if.then128.i.out_unlock_mutex.i_crit_edge355
    i32 -122, label %if.then128.i.out_unlock_mutex.i_crit_edge356
  ]

if.then128.i.out_unlock_mutex.i_crit_edge356:     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.then128.i.out_unlock_mutex.i_crit_edge355:     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.then128.i.out_unlock_mutex.i_crit_edge354:     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.then128.i.out_unlock_mutex.i_crit_edge:        ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

do.body145.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m146.i) #10
  %108 = ptrtoint ptr %_m146.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 1152921504606846976, ptr %_m146.i, align 8
  %conv150.i = sext i32 %call125.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m146.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 262, ptr noundef nonnull @.str, i64 noundef %conv150.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m146.i) #10
  br label %out_unlock_mutex.i

if.end157.i:                                      ; preds = %if.then124.i.if.end157.i_crit_edge, %if.end121.i.if.end157.i_crit_edge
  %109 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %alloc_size, align 4
  %call158.i = call i32 @ocfs2_reserve_clusters(ptr noundef %76, i32 noundef %110, ptr noundef %data_ac.i) #10
  %111 = zext i32 %call158.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call158.i, label %do.body177.i [
    i32 0, label %if.end188.i
    i32 -512, label %if.end157.i.out_unlock_mutex.i_crit_edge
    i32 -4, label %if.end157.i.out_unlock_mutex.i_crit_edge357
    i32 524289, label %if.end157.i.out_unlock_mutex.i_crit_edge358
    i32 -28, label %if.end157.i.out_unlock_mutex.i_crit_edge359
    i32 -122, label %if.end157.i.out_unlock_mutex.i_crit_edge360
  ]

if.end157.i.out_unlock_mutex.i_crit_edge360:      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.end157.i.out_unlock_mutex.i_crit_edge359:      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.end157.i.out_unlock_mutex.i_crit_edge358:      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.end157.i.out_unlock_mutex.i_crit_edge357:      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.end157.i.out_unlock_mutex.i_crit_edge:         ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

do.body177.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m178.i) #10
  %112 = ptrtoint ptr %_m178.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 1152921504606846976, ptr %_m178.i, align 8
  %conv182.i = sext i32 %call158.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m178.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 278, ptr noundef nonnull @.str, i64 noundef %conv182.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m178.i) #10
  br label %out_unlock_mutex.i

if.end188.i:                                      ; preds = %if.end157.i
  %113 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %credits.i, align 4
  %call189.i = call ptr @ocfs2_start_trans(ptr noundef %76, i32 noundef %114) #10
  %cmp.i.i = icmp ugt ptr %call189.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then191.i, label %if.end220.i

if.then191.i:                                     ; preds = %if.end188.i
  %115 = ptrtoint ptr %call189.i to i32
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %115, label %do.body209.i [
    i32 -512, label %if.then191.i.out_unlock_mutex.i_crit_edge
    i32 -4, label %if.then191.i.out_unlock_mutex.i_crit_edge361
    i32 524289, label %if.then191.i.out_unlock_mutex.i_crit_edge362
    i32 -28, label %if.then191.i.out_unlock_mutex.i_crit_edge363
    i32 -122, label %if.then191.i.out_unlock_mutex.i_crit_edge364
  ]

if.then191.i.out_unlock_mutex.i_crit_edge364:     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.then191.i.out_unlock_mutex.i_crit_edge363:     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.then191.i.out_unlock_mutex.i_crit_edge362:     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.then191.i.out_unlock_mutex.i_crit_edge361:     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

if.then191.i.out_unlock_mutex.i_crit_edge:        ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_mutex.i

do.body209.i:                                     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m210.i) #10
  %117 = ptrtoint ptr %_m210.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 1152921504606846976, ptr %_m210.i, align 8
  %conv214.i = sext i32 %115 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m210.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 285, ptr noundef nonnull @.str, i64 noundef %conv214.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m210.i) #10
  br label %out_unlock_mutex.i

if.end220.i:                                      ; preds = %if.end188.i
  %118 = ptrtoint ptr %data_ac.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data_ac.i, align 8
  %120 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %alloc_size, align 4
  %call222.i = call i32 @__ocfs2_claim_clusters(ptr noundef %call189.i, ptr noundef %119, i32 noundef 1, i32 noundef %121, ptr noundef nonnull %new_phys_cpos.i, ptr noundef nonnull %new_len.i) #10
  %122 = zext i32 %call222.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call222.i, label %do.body241.i [
    i32 0, label %if.end252.i
    i32 -512, label %if.end220.i.if.end362.i_crit_edge
    i32 -4, label %if.end220.i.if.end362.i_crit_edge365
    i32 524289, label %if.end220.i.if.end362.i_crit_edge366
    i32 -28, label %if.end220.i.if.end362.i_crit_edge367
    i32 -122, label %if.end220.i.if.end362.i_crit_edge368
  ]

if.end220.i.if.end362.i_crit_edge368:             ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end220.i.if.end362.i_crit_edge367:             ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end220.i.if.end362.i_crit_edge366:             ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end220.i.if.end362.i_crit_edge365:             ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end220.i.if.end362.i_crit_edge:                ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

do.body241.i:                                     ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m242.i) #10
  %123 = ptrtoint ptr %_m242.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 1152921504606846976, ptr %_m242.i, align 8
  %conv246.i = sext i32 %call222.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m242.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 292, ptr noundef nonnull @.str, i64 noundef %conv246.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m242.i) #10
  br label %if.end362.i

if.end252.i:                                      ; preds = %if.end220.i
  %124 = ptrtoint ptr %new_len.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %new_len.i, align 4
  %126 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %alloc_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp253.not.i = icmp ne i32 %125, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool264.not.i = icmp eq i32 %70, 0
  %or.cond.i = select i1 %cmp253.not.i, i1 %tobool264.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true348.i, label %if.end274.i

if.end274.i:                                      ; preds = %if.end252.i
  %128 = ptrtoint ptr %new_phys_cpos.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %new_phys_cpos.i, align 4
  %call277.i = call fastcc i32 @__ocfs2_move_extent(ptr noundef %call189.i, ptr noundef %context, i32 noundef %cpos.0289, i32 noundef %125, i32 noundef %61, i32 noundef %129, i32 noundef %66) #10
  %130 = zext i32 %call277.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call277.i, label %do.body296.i [
    i32 0, label %if.end274.i.if.end307.i_crit_edge
    i32 -512, label %if.end274.i.if.end307.i_crit_edge369
    i32 -4, label %if.end274.i.if.end307.i_crit_edge370
    i32 524289, label %if.end274.i.if.end307.i_crit_edge371
    i32 -28, label %if.end274.i.if.end307.i_crit_edge372
    i32 -122, label %if.end274.i.if.end307.i_crit_edge373
  ]

if.end274.i.if.end307.i_crit_edge373:             ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307.i

if.end274.i.if.end307.i_crit_edge372:             ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307.i

if.end274.i.if.end307.i_crit_edge371:             ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307.i

if.end274.i.if.end307.i_crit_edge370:             ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307.i

if.end274.i.if.end307.i_crit_edge369:             ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307.i

if.end274.i.if.end307.i_crit_edge:                ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307.i

do.body296.i:                                     ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m297.i) #10
  %131 = ptrtoint ptr %_m297.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 1152921504606846976, ptr %_m297.i, align 8
  %conv301.i = sext i32 %call277.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m297.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 318, ptr noundef nonnull @.str, i64 noundef %conv301.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m297.i) #10
  br label %if.end307.i

if.end307.i:                                      ; preds = %do.body296.i, %if.end274.i.if.end307.i_crit_edge, %if.end274.i.if.end307.i_crit_edge369, %if.end274.i.if.end307.i_crit_edge370, %if.end274.i.if.end307.i_crit_edge371, %if.end274.i.if.end307.i_crit_edge372, %if.end274.i.if.end307.i_crit_edge373
  br i1 %tobool264.not.i, label %if.end307.i.if.end313.i_crit_edge, label %land.lhs.true309.i

if.end307.i.if.end313.i_crit_edge:                ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end313.i

land.lhs.true309.i:                               ; preds = %if.end307.i
  %132 = ptrtoint ptr %new_len.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %new_len.i, align 4
  %134 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %alloc_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp310.not.i = icmp eq i32 %133, %135
  br i1 %cmp310.not.i, label %land.lhs.true309.i.if.end313.i_crit_edge, label %if.then312.i

land.lhs.true309.i.if.end313.i_crit_edge:         ; preds = %land.lhs.true309.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end313.i

if.then312.i:                                     ; preds = %land.lhs.true309.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %133, ptr %alloc_size, align 4
  br label %if.end313.i

if.end313.i:                                      ; preds = %if.then312.i, %land.lhs.true309.i.if.end313.i_crit_edge, %if.end307.i.if.end313.i_crit_edge
  %137 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_sb.i, align 4
  %139 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %context, align 8
  %141 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %alloc_size, align 4
  %call316.i = call i32 @ocfs2_cow_sync_writeback(ptr noundef %138, ptr noundef %140, i32 noundef %cpos.0289, i32 noundef %142) #10
  %143 = zext i32 %call316.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call316.i, label %do.body335.i [
    i32 0, label %if.end313.i.if.end362.i_crit_edge
    i32 -512, label %if.end313.i.if.end362.i_crit_edge374
    i32 -4, label %if.end313.i.if.end362.i_crit_edge375
    i32 524289, label %if.end313.i.if.end362.i_crit_edge376
    i32 -28, label %if.end313.i.if.end362.i_crit_edge377
    i32 -122, label %if.end313.i.if.end362.i_crit_edge378
  ]

if.end313.i.if.end362.i_crit_edge378:             ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end313.i.if.end362.i_crit_edge377:             ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end313.i.if.end362.i_crit_edge376:             ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end313.i.if.end362.i_crit_edge375:             ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end313.i.if.end362.i_crit_edge374:             ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.end313.i.if.end362.i_crit_edge:                ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

do.body335.i:                                     ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m336.i) #10
  %144 = ptrtoint ptr %_m336.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 1152921504606846976, ptr %_m336.i, align 8
  %conv340.i = sext i32 %call316.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m336.i, ptr noundef nonnull @__func__.ocfs2_defrag_extent, i32 noundef 329, ptr noundef nonnull @.str, i64 noundef %conv340.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m336.i) #10
  br label %if.end362.i

land.lhs.true348.i:                               ; preds = %if.end252.i
  %145 = ptrtoint ptr %range2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %range2, align 8
  %me_flags.i = getelementptr inbounds %struct.ocfs2_move_extents, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %me_flags.i, align 8
  %and266.i = and i64 %148, -5
  store i64 %and266.i, ptr %me_flags.i, align 8
  %149 = ptrtoint ptr %data_ac.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data_ac.i, align 8
  %tobool350.not.i = icmp eq ptr %150, null
  br i1 %tobool350.not.i, label %land.lhs.true348.i.if.end362.i_crit_edge, label %if.then351.i

land.lhs.true348.i.if.end362.i_crit_edge:         ; preds = %land.lhs.true348.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362.i

if.then351.i:                                     ; preds = %land.lhs.true348.i
  %ac_which.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %ac_which.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ac_which.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp355.i = icmp eq i32 %152, 1
  br i1 %cmp355.i, label %if.then357.i, label %if.else.i228

if.then357.i:                                     ; preds = %if.then351.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %new_phys_cpos.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %new_phys_cpos.i, align 4
  %call358.i = call i32 @ocfs2_free_local_alloc_bits(ptr noundef %76, ptr noundef %call189.i, ptr noundef nonnull %150, i32 noundef %154, i32 noundef %125) #10
  br label %if.end362.i

if.else.i228:                                     ; preds = %if.then351.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %150, align 8
  %ac_bh.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %150, i32 0, i32 1
  %157 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ac_bh.i, align 4
  %sb.i = getelementptr inbounds %struct.ocfs2_super, ptr %76, i32 0, i32 1
  %159 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sb.i, align 4
  %161 = ptrtoint ptr %new_phys_cpos.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %new_phys_cpos.i, align 4
  %s_fs_info.i525.i = getelementptr inbounds %struct.super_block, ptr %160, i32 0, i32 33
  %163 = ptrtoint ptr %s_fs_info.i525.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %s_fs_info.i525.i, align 16
  %s_clustersize_bits.i526.i = getelementptr inbounds %struct.ocfs2_super, ptr %164, i32 0, i32 36
  %165 = ptrtoint ptr %s_clustersize_bits.i526.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %s_clustersize_bits.i526.i, align 8
  %s_blocksize_bits.i527.i = getelementptr inbounds %struct.super_block, ptr %160, i32 0, i32 2
  %167 = ptrtoint ptr %s_blocksize_bits.i527.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %s_blocksize_bits.i527.i, align 4
  %conv.i528.i = zext i8 %168 to i32
  %sub.i529.i = sub i32 %166, %conv.i528.i
  %conv1.i530.i = zext i32 %162 to i64
  %sh_prom.i531.i = zext i32 %sub.i529.i to i64
  %shl.i532.i = shl i64 %conv1.i530.i, %sh_prom.i531.i
  %call360.i = call i32 @ocfs2_free_clusters(ptr noundef %call189.i, ptr noundef %156, ptr noundef %158, i64 noundef %shl.i532.i, i32 noundef %125) #10
  br label %if.end362.i

if.end362.i:                                      ; preds = %if.else.i228, %if.then357.i, %land.lhs.true348.i.if.end362.i_crit_edge, %do.body335.i, %if.end313.i.if.end362.i_crit_edge, %if.end313.i.if.end362.i_crit_edge374, %if.end313.i.if.end362.i_crit_edge375, %if.end313.i.if.end362.i_crit_edge376, %if.end313.i.if.end362.i_crit_edge377, %if.end313.i.if.end362.i_crit_edge378, %do.body241.i, %if.end220.i.if.end362.i_crit_edge, %if.end220.i.if.end362.i_crit_edge365, %if.end220.i.if.end362.i_crit_edge366, %if.end220.i.if.end362.i_crit_edge367, %if.end220.i.if.end362.i_crit_edge368
  %ret.0536.i = phi i32 [ -28, %if.then357.i ], [ -28, %if.else.i228 ], [ -28, %land.lhs.true348.i.if.end362.i_crit_edge ], [ %call222.i, %do.body241.i ], [ %call222.i, %if.end220.i.if.end362.i_crit_edge ], [ %call222.i, %if.end220.i.if.end362.i_crit_edge365 ], [ %call222.i, %if.end220.i.if.end362.i_crit_edge366 ], [ %call222.i, %if.end220.i.if.end362.i_crit_edge367 ], [ %call222.i, %if.end220.i.if.end362.i_crit_edge368 ], [ %call316.i, %if.end313.i.if.end362.i_crit_edge ], [ %call316.i, %do.body335.i ], [ %call316.i, %if.end313.i.if.end362.i_crit_edge374 ], [ %call316.i, %if.end313.i.if.end362.i_crit_edge375 ], [ %call316.i, %if.end313.i.if.end362.i_crit_edge376 ], [ %call316.i, %if.end313.i.if.end362.i_crit_edge377 ], [ %call316.i, %if.end313.i.if.end362.i_crit_edge378 ]
  %call363.i = call i32 @ocfs2_commit_trans(ptr noundef %76, ptr noundef %call189.i) #10
  br label %out_unlock_mutex.i

out_unlock_mutex.i:                               ; preds = %if.end362.i, %do.body209.i, %if.then191.i.out_unlock_mutex.i_crit_edge, %if.then191.i.out_unlock_mutex.i_crit_edge361, %if.then191.i.out_unlock_mutex.i_crit_edge362, %if.then191.i.out_unlock_mutex.i_crit_edge363, %if.then191.i.out_unlock_mutex.i_crit_edge364, %do.body177.i, %if.end157.i.out_unlock_mutex.i_crit_edge, %if.end157.i.out_unlock_mutex.i_crit_edge357, %if.end157.i.out_unlock_mutex.i_crit_edge358, %if.end157.i.out_unlock_mutex.i_crit_edge359, %if.end157.i.out_unlock_mutex.i_crit_edge360, %do.body145.i, %if.then128.i.out_unlock_mutex.i_crit_edge, %if.then128.i.out_unlock_mutex.i_crit_edge354, %if.then128.i.out_unlock_mutex.i_crit_edge355, %if.then128.i.out_unlock_mutex.i_crit_edge356
  %ret.1.i = phi i32 [ %ret.0536.i, %if.end362.i ], [ %call125.i, %if.then128.i.out_unlock_mutex.i_crit_edge ], [ %call125.i, %if.then128.i.out_unlock_mutex.i_crit_edge354 ], [ %call125.i, %if.then128.i.out_unlock_mutex.i_crit_edge355 ], [ %call125.i, %if.then128.i.out_unlock_mutex.i_crit_edge356 ], [ %call125.i, %do.body145.i ], [ %call158.i, %if.end157.i.out_unlock_mutex.i_crit_edge ], [ %call158.i, %if.end157.i.out_unlock_mutex.i_crit_edge357 ], [ %call158.i, %if.end157.i.out_unlock_mutex.i_crit_edge358 ], [ %call158.i, %if.end157.i.out_unlock_mutex.i_crit_edge359 ], [ %call158.i, %if.end157.i.out_unlock_mutex.i_crit_edge360 ], [ %call158.i, %do.body177.i ], [ %115, %if.then191.i.out_unlock_mutex.i_crit_edge ], [ %115, %if.then191.i.out_unlock_mutex.i_crit_edge361 ], [ %115, %if.then191.i.out_unlock_mutex.i_crit_edge362 ], [ %115, %if.then191.i.out_unlock_mutex.i_crit_edge363 ], [ %115, %if.then191.i.out_unlock_mutex.i_crit_edge364 ], [ %115, %do.body209.i ]
  call void @up_write(ptr noundef %i_rwsem.i.i) #10
  %169 = ptrtoint ptr %data_ac.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data_ac.i, align 8
  %tobool365.not.i = icmp eq ptr %170, null
  br i1 %tobool365.not.i, label %out_unlock_mutex.i.if.end369.i_crit_edge, label %if.then366.i

out_unlock_mutex.i.if.end369.i_crit_edge:         ; preds = %out_unlock_mutex.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end369.i

if.then366.i:                                     ; preds = %out_unlock_mutex.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %170) #10
  %171 = ptrtoint ptr %data_ac.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %data_ac.i, align 8
  br label %if.end369.i

if.end369.i:                                      ; preds = %if.then366.i, %out_unlock_mutex.i.if.end369.i_crit_edge
  %172 = ptrtoint ptr %meta_ac.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %meta_ac.i, align 4
  %tobool371.not.i = icmp eq ptr %173, null
  br i1 %tobool371.not.i, label %if.end369.i.out.i_crit_edge, label %if.then372.i

if.end369.i.out.i_crit_edge:                      ; preds = %if.end369.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then372.i:                                     ; preds = %if.end369.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %173) #10
  %174 = ptrtoint ptr %meta_ac.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %meta_ac.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.then372.i, %if.end369.i.out.i_crit_edge, %do.body110.i, %if.end90.i.out.i_crit_edge, %if.end90.i.out.i_crit_edge350, %if.end90.i.out.i_crit_edge351, %if.end90.i.out.i_crit_edge352, %if.end90.i.out.i_crit_edge353, %do.body78.i, %if.end57.i.out.i_crit_edge, %if.end57.i.out.i_crit_edge346, %if.end57.i.out.i_crit_edge347, %if.end57.i.out.i_crit_edge348, %if.end57.i.out.i_crit_edge349
  %ret.2.i = phi i32 [ %ret.1.i, %if.then372.i ], [ %ret.1.i, %if.end369.i.out.i_crit_edge ], [ %call59.i, %if.end57.i.out.i_crit_edge ], [ %call59.i, %if.end57.i.out.i_crit_edge346 ], [ %call59.i, %if.end57.i.out.i_crit_edge347 ], [ %call59.i, %if.end57.i.out.i_crit_edge348 ], [ %call59.i, %if.end57.i.out.i_crit_edge349 ], [ %call59.i, %do.body78.i ], [ %call91.i, %if.end90.i.out.i_crit_edge ], [ %call91.i, %if.end90.i.out.i_crit_edge350 ], [ %call91.i, %if.end90.i.out.i_crit_edge351 ], [ %call91.i, %if.end90.i.out.i_crit_edge352 ], [ %call91.i, %if.end90.i.out.i_crit_edge353 ], [ %call91.i, %do.body110.i ]
  %175 = ptrtoint ptr %ref_tree.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ref_tree.i, align 4
  %tobool376.not.i = icmp eq ptr %176, null
  br i1 %tobool376.not.i, label %out.i.ocfs2_defrag_extent.exit_crit_edge, label %if.then377.i

out.i.ocfs2_defrag_extent.exit_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_defrag_extent.exit

if.then377.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_unlock_refcount_tree(ptr noundef %76, ptr noundef nonnull %176, i32 noundef 1) #10
  br label %ocfs2_defrag_extent.exit

ocfs2_defrag_extent.exit:                         ; preds = %if.then377.i, %out.i.ocfs2_defrag_extent.exit_crit_edge, %do.body49.i, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge342, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge343, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge344, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge345
  %retval.0.i = phi i32 [ %call37.i, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge ], [ %call37.i, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge342 ], [ %call37.i, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge343 ], [ %call37.i, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge344 ], [ %call37.i, %do.end35.i.ocfs2_defrag_extent.exit_crit_edge345 ], [ %call37.i, %do.body49.i ], [ %ret.2.i, %if.then377.i ], [ %ret.2.i, %out.i.ocfs2_defrag_extent.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_len.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_phys_cpos.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_tree.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra_blocks.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %credits.i) #10
  br label %if.end93

if.else90:                                        ; preds = %if.end75
  %177 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %credits.i229) #10
  %179 = ptrtoint ptr %credits.i229 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %credits.i229, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra_blocks.i230) #10
  %180 = ptrtoint ptr %extra_blocks.i230 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %extra_blocks.i230, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goal_bit.i) #10
  %181 = ptrtoint ptr %goal_bit.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %goal_bit.i, align 4
  %182 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %context, align 8
  %i_sb.i233 = getelementptr inbounds %struct.inode, ptr %183, i32 0, i32 8
  %184 = ptrtoint ptr %i_sb.i233 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %i_sb.i233, align 4
  %s_fs_info.i234 = getelementptr inbounds %struct.super_block, ptr %185, i32 0, i32 33
  %186 = ptrtoint ptr %s_fs_info.i234 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %s_fs_info.i234, align 16
  %osb_tl_inode.i235 = getelementptr inbounds %struct.ocfs2_super, ptr %187, i32 0, i32 85
  %188 = ptrtoint ptr %osb_tl_inode.i235 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %osb_tl_inode.i235, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gb_bh.i) #10
  %190 = ptrtoint ptr %gb_bh.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %gb_bh.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gd_bh.i) #10
  %191 = ptrtoint ptr %gd_bh.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %gd_bh.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_tree.i231) #10
  %192 = ptrtoint ptr %ref_tree.i231 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %ref_tree.i231, align 4
  %193 = ptrtoint ptr %range2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %range2, align 8
  %me_threshold.i = getelementptr inbounds %struct.ocfs2_move_extents, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %me_threshold.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %me_threshold.i, align 8
  %s_clustersize_bits.i.i237 = getelementptr inbounds %struct.ocfs2_super, ptr %187, i32 0, i32 36
  %197 = ptrtoint ptr %s_clustersize_bits.i.i237 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %s_clustersize_bits.i.i237, align 8
  %s_blocksize_bits.i.i238 = getelementptr inbounds %struct.super_block, ptr %185, i32 0, i32 2
  %199 = ptrtoint ptr %s_blocksize_bits.i.i238 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %s_blocksize_bits.i.i238, align 4
  %conv.i.i239 = zext i8 %200 to i32
  %sub.i.i240 = sub i32 %198, %conv.i.i239
  %sh_prom.i.i241 = zext i32 %sub.i.i240 to i64
  %shr.i.i = lshr i64 %196, %sh_prom.i.i241
  %conv1.i.i242 = trunc i64 %shr.i.i to i32
  %conv1.i528.i = zext i32 %61 to i64
  %shl.i.i243 = shl i64 %conv1.i528.i, %sh_prom.i.i241
  %and.i244 = and i32 %178, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %tobool.not.i245 = icmp eq i32 %and.i244, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool5.not.i = icmp eq i32 %63, 0
  %or.cond.i246 = or i1 %tobool5.not.i, %tobool.not.i245
  br i1 %or.cond.i246, label %if.else90.if.end91.i_crit_edge, label %do.body.i249

if.else90.if.end91.i_crit_edge:                   ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i

do.body.i249:                                     ; preds = %if.else90
  %ip_dyn_features.i.i247 = getelementptr i8, ptr %183, i32 -172
  %201 = ptrtoint ptr %ip_dyn_features.i.i247 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %ip_dyn_features.i.i247, align 4
  %203 = and i16 %202, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool.i.not.i248 = icmp eq i16 %203, 0
  br i1 %tobool.i.not.i248, label %do.body11.i, label %do.body17.i, !prof !96

do.body11.i:                                      ; preds = %do.body.i249
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/move_extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #10, !srcloc !105
  unreachable

do.body17.i:                                      ; preds = %do.body.i249
  %204 = ptrtoint ptr %refcount_loc to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %refcount_loc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %205)
  %tobool18.not.i = icmp eq i64 %205, 0
  br i1 %tobool18.not.i, label %do.body28.i, label %do.end36.i, !prof !96

do.body28.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/move_extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 593, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

do.end36.i:                                       ; preds = %do.body17.i
  %call38.i = call i32 @ocfs2_lock_refcount_tree(ptr noundef %187, i64 noundef %205, i32 noundef 1, ptr noundef nonnull %ref_tree.i231, ptr noundef null) #10
  %206 = zext i32 %call38.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call38.i, label %do.body50.i [
    i32 0, label %if.end58.i
    i32 -512, label %do.end36.i.ocfs2_move_extent.exit_crit_edge
    i32 -4, label %do.end36.i.ocfs2_move_extent.exit_crit_edge379
    i32 524289, label %do.end36.i.ocfs2_move_extent.exit_crit_edge380
    i32 -28, label %do.end36.i.ocfs2_move_extent.exit_crit_edge381
    i32 -122, label %do.end36.i.ocfs2_move_extent.exit_crit_edge382
  ]

do.end36.i.ocfs2_move_extent.exit_crit_edge382:   ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_move_extent.exit

do.end36.i.ocfs2_move_extent.exit_crit_edge381:   ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_move_extent.exit

do.end36.i.ocfs2_move_extent.exit_crit_edge380:   ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_move_extent.exit

do.end36.i.ocfs2_move_extent.exit_crit_edge379:   ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_move_extent.exit

do.end36.i.ocfs2_move_extent.exit_crit_edge:      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_move_extent.exit

do.body50.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i232) #10
  %207 = ptrtoint ptr %_m.i232 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 1152921504606846976, ptr %_m.i232, align 8
  %conv.i251 = sext i32 %call38.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i232, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 598, ptr noundef nonnull @.str, i64 noundef %conv.i251) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i232) #10
  br label %ocfs2_move_extent.exit

if.end58.i:                                       ; preds = %do.end36.i
  %208 = ptrtoint ptr %refcount_loc to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %refcount_loc, align 8
  %call60.i = call i32 @ocfs2_prepare_refcount_change_for_del(ptr noundef %183, i64 noundef %209, i64 noundef %shl.i.i243, i32 noundef %63, ptr noundef nonnull %credits.i229, ptr noundef nonnull %extra_blocks.i230) #10
  %210 = zext i32 %call60.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call60.i, label %do.body79.i [
    i32 0, label %if.end58.i.if.end91.i_crit_edge
    i32 -512, label %if.end58.i.out.i259_crit_edge
    i32 -4, label %if.end58.i.out.i259_crit_edge383
    i32 524289, label %if.end58.i.out.i259_crit_edge384
    i32 -28, label %if.end58.i.out.i259_crit_edge385
    i32 -122, label %if.end58.i.out.i259_crit_edge386
  ]

if.end58.i.out.i259_crit_edge386:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end58.i.out.i259_crit_edge385:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end58.i.out.i259_crit_edge384:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end58.i.out.i259_crit_edge383:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end58.i.out.i259_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end58.i.if.end91.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i

do.body79.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80.i) #10
  %211 = ptrtoint ptr %_m80.i to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 1152921504606846976, ptr %_m80.i, align 8
  %conv84.i = sext i32 %call60.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 609, ptr noundef nonnull @.str, i64 noundef %conv84.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80.i) #10
  br label %out.i259

if.end91.i:                                       ; preds = %if.end58.i.if.end91.i_crit_edge, %if.else90.if.end91.i_crit_edge
  %212 = ptrtoint ptr %extra_blocks.i230 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %extra_blocks.i230, align 4
  %call92.i = call fastcc i32 @ocfs2_lock_meta_allocator_move_extents(ptr noundef %183, ptr noundef %et, i32 noundef %63, ptr noundef %meta_ac.i, i32 noundef %213, ptr noundef nonnull %credits.i229) #10
  %214 = zext i32 %call92.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call92.i, label %do.body111.i [
    i32 0, label %if.end122.i
    i32 -512, label %if.end91.i.out.i259_crit_edge
    i32 -4, label %if.end91.i.out.i259_crit_edge387
    i32 524289, label %if.end91.i.out.i259_crit_edge388
    i32 -28, label %if.end91.i.out.i259_crit_edge389
    i32 -122, label %if.end91.i.out.i259_crit_edge390
  ]

if.end91.i.out.i259_crit_edge390:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end91.i.out.i259_crit_edge389:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end91.i.out.i259_crit_edge388:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end91.i.out.i259_crit_edge387:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

if.end91.i.out.i259_crit_edge:                    ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i259

do.body111.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m112.i) #10
  %215 = ptrtoint ptr %_m112.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 1152921504606846976, ptr %_m112.i, align 8
  %conv116.i = sext i32 %call92.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m112.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 619, ptr noundef nonnull @.str, i64 noundef %conv116.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m112.i) #10
  br label %out.i259

if.end122.i:                                      ; preds = %if.end91.i
  %216 = ptrtoint ptr %credits.i229 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %credits.i229, align 4
  %add.i254 = add i32 %217, 2
  store i32 %add.i254, ptr %credits.i229, align 4
  %call123.i = call ptr @ocfs2_get_system_file_inode(ptr noundef %187, i32 noundef 4, i32 noundef 65535) #10
  %tobool124.not.i = icmp eq ptr %call123.i, null
  br i1 %tobool124.not.i, label %do.body126.i, label %if.end134.i

do.body126.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m127.i) #10
  %218 = ptrtoint ptr %_m127.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 1152921504606846976, ptr %_m127.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m127.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 636, ptr noundef nonnull @.str.28) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m127.i) #10
  br label %out.i259

if.end134.i:                                      ; preds = %if.end122.i
  %i_rwsem.i.i255 = getelementptr inbounds %struct.inode, ptr %call123.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i255) #10
  %call135.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call123.i, ptr noundef nonnull %gb_bh.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  %219 = zext i32 %call135.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call135.i, label %do.body154.i [
    i32 0, label %if.end165.i
    i32 -512, label %if.end134.i.out_unlock_gb_mutex.i_crit_edge
    i32 -4, label %if.end134.i.out_unlock_gb_mutex.i_crit_edge391
    i32 524289, label %if.end134.i.out_unlock_gb_mutex.i_crit_edge392
    i32 -28, label %if.end134.i.out_unlock_gb_mutex.i_crit_edge393
    i32 -122, label %if.end134.i.out_unlock_gb_mutex.i_crit_edge394
  ]

if.end134.i.out_unlock_gb_mutex.i_crit_edge394:   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_gb_mutex.i

if.end134.i.out_unlock_gb_mutex.i_crit_edge393:   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_gb_mutex.i

if.end134.i.out_unlock_gb_mutex.i_crit_edge392:   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_gb_mutex.i

if.end134.i.out_unlock_gb_mutex.i_crit_edge391:   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_gb_mutex.i

if.end134.i.out_unlock_gb_mutex.i_crit_edge:      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_gb_mutex.i

do.body154.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m155.i) #10
  %220 = ptrtoint ptr %_m155.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 1152921504606846976, ptr %_m155.i, align 8
  %conv159.i = sext i32 %call135.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m155.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 645, ptr noundef nonnull @.str, i64 noundef %conv159.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m155.i) #10
  br label %out_unlock_gb_mutex.i

if.end165.i:                                      ; preds = %if.end134.i
  %i_rwsem.i530.i = getelementptr inbounds %struct.inode, ptr %189, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i530.i) #10
  %221 = ptrtoint ptr %credits.i229 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %credits.i229, align 4
  %call166.i = call ptr @ocfs2_start_trans(ptr noundef %187, i32 noundef %222) #10
  %cmp.i.i256 = icmp ugt ptr %call166.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i256, label %if.then168.i, label %if.end197.i

if.then168.i:                                     ; preds = %if.end165.i
  %223 = ptrtoint ptr %call166.i to i32
  %224 = zext i32 %223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %223, label %do.body186.i [
    i32 -512, label %if.then168.i.out_unlock_tl_inode.i_crit_edge
    i32 -4, label %if.then168.i.out_unlock_tl_inode.i_crit_edge395
    i32 524289, label %if.then168.i.out_unlock_tl_inode.i_crit_edge396
    i32 -28, label %if.then168.i.out_unlock_tl_inode.i_crit_edge397
    i32 -122, label %if.then168.i.out_unlock_tl_inode.i_crit_edge398
  ]

if.then168.i.out_unlock_tl_inode.i_crit_edge398:  ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_tl_inode.i

if.then168.i.out_unlock_tl_inode.i_crit_edge397:  ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_tl_inode.i

if.then168.i.out_unlock_tl_inode.i_crit_edge396:  ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_tl_inode.i

if.then168.i.out_unlock_tl_inode.i_crit_edge395:  ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_tl_inode.i

if.then168.i.out_unlock_tl_inode.i_crit_edge:     ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_tl_inode.i

do.body186.i:                                     ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m187.i) #10
  %225 = ptrtoint ptr %_m187.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 1152921504606846976, ptr %_m187.i, align 8
  %conv191.i = sext i32 %223 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m187.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 654, ptr noundef nonnull @.str, i64 noundef %conv191.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m187.i) #10
  br label %out_unlock_tl_inode.i

if.end197.i:                                      ; preds = %if.end165.i
  %226 = ptrtoint ptr %i_sb.i233 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %i_sb.i233, align 4
  %228 = ptrtoint ptr %new_phys_cpos to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %new_phys_cpos, align 4
  %s_fs_info.i531.i = getelementptr inbounds %struct.super_block, ptr %227, i32 0, i32 33
  %230 = ptrtoint ptr %s_fs_info.i531.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %s_fs_info.i531.i, align 16
  %s_clustersize_bits.i532.i = getelementptr inbounds %struct.ocfs2_super, ptr %231, i32 0, i32 36
  %232 = ptrtoint ptr %s_clustersize_bits.i532.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %s_clustersize_bits.i532.i, align 8
  %s_blocksize_bits.i533.i = getelementptr inbounds %struct.super_block, ptr %227, i32 0, i32 2
  %234 = ptrtoint ptr %s_blocksize_bits.i533.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %s_blocksize_bits.i533.i, align 4
  %conv.i534.i = zext i8 %235 to i32
  %sub.i535.i = sub i32 %233, %conv.i534.i
  %conv1.i536.i = zext i32 %229 to i64
  %sh_prom.i537.i = zext i32 %sub.i535.i to i64
  %shl.i538.i = shl i64 %conv1.i536.i, %sh_prom.i537.i
  %call200.i = call fastcc i32 @ocfs2_find_victim_alloc_group(ptr noundef %183, i64 noundef %shl.i538.i, ptr noundef nonnull %goal_bit.i, ptr noundef nonnull %gd_bh.i) #10
  %236 = zext i32 %call200.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call200.i, label %do.body219.i [
    i32 0, label %if.end230.i
    i32 -512, label %if.end197.i.out_commit.i_crit_edge
    i32 -4, label %if.end197.i.out_commit.i_crit_edge399
    i32 524289, label %if.end197.i.out_commit.i_crit_edge400
    i32 -28, label %if.end197.i.out_commit.i_crit_edge401
    i32 -122, label %if.end197.i.out_commit.i_crit_edge402
  ]

if.end197.i.out_commit.i_crit_edge402:            ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end197.i.out_commit.i_crit_edge401:            ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end197.i.out_commit.i_crit_edge400:            ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end197.i.out_commit.i_crit_edge399:            ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end197.i.out_commit.i_crit_edge:               ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

do.body219.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m220.i) #10
  %237 = ptrtoint ptr %_m220.i to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 1152921504606846976, ptr %_m220.i, align 8
  %conv224.i = sext i32 %call200.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m220.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 664, ptr noundef nonnull @.str, i64 noundef %conv224.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m220.i) #10
  br label %out_commit.i

if.end230.i:                                      ; preds = %if.end197.i
  %238 = ptrtoint ptr %gd_bh.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %gd_bh.i, align 4
  call fastcc void @ocfs2_probe_alloc_group(ptr noundef %183, ptr noundef %239, ptr noundef nonnull %goal_bit.i, i32 noundef %63, i32 noundef %conv1.i.i242, ptr noundef nonnull %new_phys_cpos) #10
  %240 = ptrtoint ptr %new_phys_cpos to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %new_phys_cpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool231.not.i = icmp eq i32 %241, 0
  br i1 %tobool231.not.i, label %if.end230.i.out_commit.i_crit_edge, label %if.end233.i

if.end230.i.out_commit.i_crit_edge:               ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end233.i:                                      ; preds = %if.end230.i
  %call234.i = call fastcc i32 @__ocfs2_move_extent(ptr noundef %call166.i, ptr noundef %context, i32 noundef %cpos.0289, i32 noundef %63, i32 noundef %61, i32 noundef %241, i32 noundef %178) #10
  %242 = zext i32 %call234.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call234.i, label %do.body253.i [
    i32 0, label %if.end264.i
    i32 -512, label %if.end233.i.out_commit.i_crit_edge
    i32 -4, label %if.end233.i.out_commit.i_crit_edge403
    i32 524289, label %if.end233.i.out_commit.i_crit_edge404
    i32 -28, label %if.end233.i.out_commit.i_crit_edge405
    i32 -122, label %if.end233.i.out_commit.i_crit_edge406
  ]

if.end233.i.out_commit.i_crit_edge406:            ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end233.i.out_commit.i_crit_edge405:            ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end233.i.out_commit.i_crit_edge404:            ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end233.i.out_commit.i_crit_edge403:            ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end233.i.out_commit.i_crit_edge:               ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

do.body253.i:                                     ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m254.i) #10
  %243 = ptrtoint ptr %_m254.i to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 1152921504606846976, ptr %_m254.i, align 8
  %conv258.i = sext i32 %call234.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m254.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 684, ptr noundef nonnull @.str, i64 noundef %conv258.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m254.i) #10
  br label %out_commit.i

if.end264.i:                                      ; preds = %if.end233.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %239, i32 0, i32 5
  %244 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %b_data.i, align 4
  %246 = ptrtoint ptr %gb_bh.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %gb_bh.i, align 4
  %bg_chain.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %245, i32 0, i32 4
  %248 = ptrtoint ptr %bg_chain.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %bg_chain.i, align 2
  %250 = call i16 @llvm.bswap.i16(i16 %249) #10
  %call265.i = call i32 @ocfs2_alloc_dinode_update_counts(ptr noundef nonnull %call123.i, ptr noundef %call166.i, ptr noundef %247, i32 noundef %63, i16 noundef zeroext %250) #10
  %251 = zext i32 %call265.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call265.i, label %do.body284.i [
    i32 0, label %if.end295.i
    i32 -512, label %if.end264.i.out_commit.i_crit_edge
    i32 -4, label %if.end264.i.out_commit.i_crit_edge407
    i32 524289, label %if.end264.i.out_commit.i_crit_edge408
    i32 -28, label %if.end264.i.out_commit.i_crit_edge409
    i32 -122, label %if.end264.i.out_commit.i_crit_edge410
  ]

if.end264.i.out_commit.i_crit_edge410:            ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end264.i.out_commit.i_crit_edge409:            ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end264.i.out_commit.i_crit_edge408:            ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end264.i.out_commit.i_crit_edge407:            ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end264.i.out_commit.i_crit_edge:               ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

do.body284.i:                                     ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m285.i) #10
  %252 = ptrtoint ptr %_m285.i to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 1152921504606846976, ptr %_m285.i, align 8
  %conv289.i = sext i32 %call265.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m285.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 692, ptr noundef nonnull @.str, i64 noundef %conv289.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m285.i) #10
  br label %out_commit.i

if.end295.i:                                      ; preds = %if.end264.i
  %253 = ptrtoint ptr %goal_bit.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %goal_bit.i, align 4
  %call296.i = call i32 @ocfs2_block_group_set_bits(ptr noundef %call166.i, ptr noundef nonnull %call123.i, ptr noundef %245, ptr noundef %239, i32 noundef %254, i32 noundef %63) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296.i)
  %tobool297.not.i = icmp eq i32 %call296.i, 0
  br i1 %tobool297.not.i, label %if.end295.i.if.end327.i_crit_edge, label %if.then298.i

if.end295.i.if.end327.i_crit_edge:                ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end327.i

if.then298.i:                                     ; preds = %if.end295.i
  %255 = ptrtoint ptr %gb_bh.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %gb_bh.i, align 4
  %257 = ptrtoint ptr %bg_chain.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %bg_chain.i, align 2
  %259 = call i16 @llvm.bswap.i16(i16 %258) #10
  call void @ocfs2_rollback_alloc_dinode_counts(ptr noundef nonnull %call123.i, ptr noundef %256, i32 noundef %63, i16 noundef zeroext %259) #10
  %260 = zext i32 %call296.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call296.i, label %do.body316.i [
    i32 -512, label %if.then298.i.if.end327.i_crit_edge
    i32 -4, label %if.then298.i.if.end327.i_crit_edge411
    i32 524289, label %if.then298.i.if.end327.i_crit_edge412
    i32 -28, label %if.then298.i.if.end327.i_crit_edge413
    i32 -122, label %if.then298.i.if.end327.i_crit_edge414
  ]

if.then298.i.if.end327.i_crit_edge414:            ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end327.i

if.then298.i.if.end327.i_crit_edge413:            ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end327.i

if.then298.i.if.end327.i_crit_edge412:            ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end327.i

if.then298.i.if.end327.i_crit_edge411:            ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end327.i

if.then298.i.if.end327.i_crit_edge:               ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end327.i

do.body316.i:                                     ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m317.i) #10
  %261 = ptrtoint ptr %_m317.i to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 1152921504606846976, ptr %_m317.i, align 8
  %conv321.i = sext i32 %call296.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m317.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 701, ptr noundef nonnull @.str, i64 noundef %conv321.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m317.i) #10
  br label %if.end327.i

if.end327.i:                                      ; preds = %do.body316.i, %if.then298.i.if.end327.i_crit_edge, %if.then298.i.if.end327.i_crit_edge411, %if.then298.i.if.end327.i_crit_edge412, %if.then298.i.if.end327.i_crit_edge413, %if.then298.i.if.end327.i_crit_edge414, %if.end295.i.if.end327.i_crit_edge
  %262 = ptrtoint ptr %i_sb.i233 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %i_sb.i233, align 4
  %264 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %context, align 8
  %call330.i = call i32 @ocfs2_cow_sync_writeback(ptr noundef %263, ptr noundef %265, i32 noundef %cpos.0289, i32 noundef %63) #10
  %266 = zext i32 %call330.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call330.i, label %do.body349.i [
    i32 0, label %if.end327.i.out_commit.i_crit_edge
    i32 -512, label %if.end327.i.out_commit.i_crit_edge415
    i32 -4, label %if.end327.i.out_commit.i_crit_edge416
    i32 524289, label %if.end327.i.out_commit.i_crit_edge417
    i32 -28, label %if.end327.i.out_commit.i_crit_edge418
    i32 -122, label %if.end327.i.out_commit.i_crit_edge419
  ]

if.end327.i.out_commit.i_crit_edge419:            ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end327.i.out_commit.i_crit_edge418:            ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end327.i.out_commit.i_crit_edge417:            ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end327.i.out_commit.i_crit_edge416:            ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end327.i.out_commit.i_crit_edge415:            ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end327.i.out_commit.i_crit_edge:               ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

do.body349.i:                                     ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m350.i) #10
  %267 = ptrtoint ptr %_m350.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 1152921504606846976, ptr %_m350.i, align 8
  %conv354.i = sext i32 %call330.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m350.i, ptr noundef nonnull @__func__.ocfs2_move_extent, i32 noundef 710, ptr noundef nonnull @.str, i64 noundef %conv354.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m350.i) #10
  br label %out_commit.i

out_commit.i:                                     ; preds = %do.body349.i, %if.end327.i.out_commit.i_crit_edge, %if.end327.i.out_commit.i_crit_edge415, %if.end327.i.out_commit.i_crit_edge416, %if.end327.i.out_commit.i_crit_edge417, %if.end327.i.out_commit.i_crit_edge418, %if.end327.i.out_commit.i_crit_edge419, %do.body284.i, %if.end264.i.out_commit.i_crit_edge, %if.end264.i.out_commit.i_crit_edge407, %if.end264.i.out_commit.i_crit_edge408, %if.end264.i.out_commit.i_crit_edge409, %if.end264.i.out_commit.i_crit_edge410, %do.body253.i, %if.end233.i.out_commit.i_crit_edge, %if.end233.i.out_commit.i_crit_edge403, %if.end233.i.out_commit.i_crit_edge404, %if.end233.i.out_commit.i_crit_edge405, %if.end233.i.out_commit.i_crit_edge406, %if.end230.i.out_commit.i_crit_edge, %do.body219.i, %if.end197.i.out_commit.i_crit_edge, %if.end197.i.out_commit.i_crit_edge399, %if.end197.i.out_commit.i_crit_edge400, %if.end197.i.out_commit.i_crit_edge401, %if.end197.i.out_commit.i_crit_edge402
  %ret.0.i = phi i32 [ %call330.i, %if.end327.i.out_commit.i_crit_edge ], [ %call200.i, %if.end197.i.out_commit.i_crit_edge ], [ %call200.i, %if.end197.i.out_commit.i_crit_edge399 ], [ %call200.i, %if.end197.i.out_commit.i_crit_edge400 ], [ %call200.i, %if.end197.i.out_commit.i_crit_edge401 ], [ %call200.i, %if.end197.i.out_commit.i_crit_edge402 ], [ %call200.i, %do.body219.i ], [ -28, %if.end230.i.out_commit.i_crit_edge ], [ %call234.i, %if.end233.i.out_commit.i_crit_edge ], [ %call234.i, %if.end233.i.out_commit.i_crit_edge403 ], [ %call234.i, %if.end233.i.out_commit.i_crit_edge404 ], [ %call234.i, %if.end233.i.out_commit.i_crit_edge405 ], [ %call234.i, %if.end233.i.out_commit.i_crit_edge406 ], [ %call234.i, %do.body253.i ], [ %call265.i, %if.end264.i.out_commit.i_crit_edge ], [ %call265.i, %if.end264.i.out_commit.i_crit_edge407 ], [ %call265.i, %if.end264.i.out_commit.i_crit_edge408 ], [ %call265.i, %if.end264.i.out_commit.i_crit_edge409 ], [ %call265.i, %if.end264.i.out_commit.i_crit_edge410 ], [ %call265.i, %do.body284.i ], [ %call330.i, %do.body349.i ], [ %call330.i, %if.end327.i.out_commit.i_crit_edge415 ], [ %call330.i, %if.end327.i.out_commit.i_crit_edge416 ], [ %call330.i, %if.end327.i.out_commit.i_crit_edge417 ], [ %call330.i, %if.end327.i.out_commit.i_crit_edge418 ], [ %call330.i, %if.end327.i.out_commit.i_crit_edge419 ]
  %call361.i = call i32 @ocfs2_commit_trans(ptr noundef %187, ptr noundef %call166.i) #10
  %268 = ptrtoint ptr %gd_bh.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %gd_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %269, null
  br i1 %tobool.not.i.i, label %out_commit.i.out_unlock_tl_inode.i_crit_edge, label %if.then.i.i

out_commit.i.out_unlock_tl_inode.i_crit_edge:     ; preds = %out_commit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_tl_inode.i

if.then.i.i:                                      ; preds = %out_commit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %269) #10
  br label %out_unlock_tl_inode.i

out_unlock_tl_inode.i:                            ; preds = %if.then.i.i, %out_commit.i.out_unlock_tl_inode.i_crit_edge, %do.body186.i, %if.then168.i.out_unlock_tl_inode.i_crit_edge, %if.then168.i.out_unlock_tl_inode.i_crit_edge395, %if.then168.i.out_unlock_tl_inode.i_crit_edge396, %if.then168.i.out_unlock_tl_inode.i_crit_edge397, %if.then168.i.out_unlock_tl_inode.i_crit_edge398
  %ret.1.i257 = phi i32 [ %223, %if.then168.i.out_unlock_tl_inode.i_crit_edge ], [ %223, %if.then168.i.out_unlock_tl_inode.i_crit_edge395 ], [ %223, %if.then168.i.out_unlock_tl_inode.i_crit_edge396 ], [ %223, %if.then168.i.out_unlock_tl_inode.i_crit_edge397 ], [ %223, %if.then168.i.out_unlock_tl_inode.i_crit_edge398 ], [ %223, %do.body186.i ], [ %ret.0.i, %out_commit.i.out_unlock_tl_inode.i_crit_edge ], [ %ret.0.i, %if.then.i.i ]
  call void @up_write(ptr noundef %i_rwsem.i530.i) #10
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call123.i, i32 noundef 1) #10
  br label %out_unlock_gb_mutex.i

out_unlock_gb_mutex.i:                            ; preds = %out_unlock_tl_inode.i, %do.body154.i, %if.end134.i.out_unlock_gb_mutex.i_crit_edge, %if.end134.i.out_unlock_gb_mutex.i_crit_edge391, %if.end134.i.out_unlock_gb_mutex.i_crit_edge392, %if.end134.i.out_unlock_gb_mutex.i_crit_edge393, %if.end134.i.out_unlock_gb_mutex.i_crit_edge394
  %ret.2.i258 = phi i32 [ %ret.1.i257, %out_unlock_tl_inode.i ], [ %call135.i, %if.end134.i.out_unlock_gb_mutex.i_crit_edge ], [ %call135.i, %if.end134.i.out_unlock_gb_mutex.i_crit_edge391 ], [ %call135.i, %if.end134.i.out_unlock_gb_mutex.i_crit_edge392 ], [ %call135.i, %if.end134.i.out_unlock_gb_mutex.i_crit_edge393 ], [ %call135.i, %if.end134.i.out_unlock_gb_mutex.i_crit_edge394 ], [ %call135.i, %do.body154.i ]
  call void @up_write(ptr noundef %i_rwsem.i.i255) #10
  %270 = ptrtoint ptr %gb_bh.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %gb_bh.i, align 4
  %tobool.not.i541.i = icmp eq ptr %271, null
  br i1 %tobool.not.i541.i, label %out_unlock_gb_mutex.i.brelse.exit543.i_crit_edge, label %if.then.i542.i

out_unlock_gb_mutex.i.brelse.exit543.i_crit_edge: ; preds = %out_unlock_gb_mutex.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit543.i

if.then.i542.i:                                   ; preds = %out_unlock_gb_mutex.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %271) #10
  br label %brelse.exit543.i

brelse.exit543.i:                                 ; preds = %if.then.i542.i, %out_unlock_gb_mutex.i.brelse.exit543.i_crit_edge
  call void @iput(ptr noundef nonnull %call123.i) #10
  br label %out.i259

out.i259:                                         ; preds = %brelse.exit543.i, %do.body126.i, %do.body111.i, %if.end91.i.out.i259_crit_edge, %if.end91.i.out.i259_crit_edge387, %if.end91.i.out.i259_crit_edge388, %if.end91.i.out.i259_crit_edge389, %if.end91.i.out.i259_crit_edge390, %do.body79.i, %if.end58.i.out.i259_crit_edge, %if.end58.i.out.i259_crit_edge383, %if.end58.i.out.i259_crit_edge384, %if.end58.i.out.i259_crit_edge385, %if.end58.i.out.i259_crit_edge386
  %ret.3.i = phi i32 [ %ret.2.i258, %brelse.exit543.i ], [ -5, %do.body126.i ], [ %call60.i, %if.end58.i.out.i259_crit_edge ], [ %call60.i, %if.end58.i.out.i259_crit_edge383 ], [ %call60.i, %if.end58.i.out.i259_crit_edge384 ], [ %call60.i, %if.end58.i.out.i259_crit_edge385 ], [ %call60.i, %if.end58.i.out.i259_crit_edge386 ], [ %call60.i, %do.body79.i ], [ %call92.i, %if.end91.i.out.i259_crit_edge ], [ %call92.i, %if.end91.i.out.i259_crit_edge387 ], [ %call92.i, %if.end91.i.out.i259_crit_edge388 ], [ %call92.i, %if.end91.i.out.i259_crit_edge389 ], [ %call92.i, %if.end91.i.out.i259_crit_edge390 ], [ %call92.i, %do.body111.i ]
  %272 = ptrtoint ptr %meta_ac.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %meta_ac.i, align 4
  %tobool363.not.i = icmp eq ptr %273, null
  br i1 %tobool363.not.i, label %out.i259.if.end367.i_crit_edge, label %if.then364.i

out.i259.if.end367.i_crit_edge:                   ; preds = %out.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end367.i

if.then364.i:                                     ; preds = %out.i259
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %273) #10
  %274 = ptrtoint ptr %meta_ac.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %meta_ac.i, align 4
  br label %if.end367.i

if.end367.i:                                      ; preds = %if.then364.i, %out.i259.if.end367.i_crit_edge
  %275 = ptrtoint ptr %ref_tree.i231 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ref_tree.i231, align 4
  %tobool368.not.i = icmp eq ptr %276, null
  br i1 %tobool368.not.i, label %if.end367.i.ocfs2_move_extent.exit_crit_edge, label %if.then369.i

if.end367.i.ocfs2_move_extent.exit_crit_edge:     ; preds = %if.end367.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_move_extent.exit

if.then369.i:                                     ; preds = %if.end367.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_unlock_refcount_tree(ptr noundef %187, ptr noundef nonnull %276, i32 noundef 1) #10
  br label %ocfs2_move_extent.exit

ocfs2_move_extent.exit:                           ; preds = %if.then369.i, %if.end367.i.ocfs2_move_extent.exit_crit_edge, %do.body50.i, %do.end36.i.ocfs2_move_extent.exit_crit_edge, %do.end36.i.ocfs2_move_extent.exit_crit_edge379, %do.end36.i.ocfs2_move_extent.exit_crit_edge380, %do.end36.i.ocfs2_move_extent.exit_crit_edge381, %do.end36.i.ocfs2_move_extent.exit_crit_edge382
  %retval.0.i260 = phi i32 [ %call38.i, %do.end36.i.ocfs2_move_extent.exit_crit_edge ], [ %call38.i, %do.end36.i.ocfs2_move_extent.exit_crit_edge379 ], [ %call38.i, %do.end36.i.ocfs2_move_extent.exit_crit_edge380 ], [ %call38.i, %do.end36.i.ocfs2_move_extent.exit_crit_edge381 ], [ %call38.i, %do.end36.i.ocfs2_move_extent.exit_crit_edge382 ], [ %call38.i, %do.body50.i ], [ %ret.3.i, %if.then369.i ], [ %ret.3.i, %if.end367.i.ocfs2_move_extent.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_tree.i231) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gd_bh.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gb_bh.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goal_bit.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra_blocks.i230) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %credits.i229) #10
  %277 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %alloc_size, align 4
  %279 = ptrtoint ptr %new_phys_cpos to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %new_phys_cpos, align 4
  %add92 = add i32 %280, %278
  store i32 %add92, ptr %new_phys_cpos, align 4
  br label %if.end93

if.end93:                                         ; preds = %ocfs2_move_extent.exit, %ocfs2_defrag_extent.exit
  %len_defraged.2 = phi i32 [ %len_defraged.0288, %ocfs2_move_extent.exit ], [ %len_defraged.1, %ocfs2_defrag_extent.exit ]
  %ret.1 = phi i32 [ %retval.0.i260, %ocfs2_move_extent.exit ], [ %retval.0.i, %ocfs2_defrag_extent.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp94 = icmp slt i32 %ret.1, 0
  br i1 %cmp94, label %if.then96, label %if.end124

if.then96:                                        ; preds = %if.end93
  %281 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %ret.1, label %do.body113 [
    i32 -512, label %if.then96.out_crit_edge
    i32 -4, label %if.then96.out_crit_edge420
    i32 -28, label %if.then96.out_crit_edge421
    i32 -122, label %if.then96.out_crit_edge422
  ]

if.then96.out_crit_edge422:                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then96.out_crit_edge421:                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then96.out_crit_edge420:                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then96.out_crit_edge:                          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body113:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m114) #10
  %282 = ptrtoint ptr %_m114 to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 1152921504606846976, ptr %_m114, align 8
  %conv118 = sext i32 %ret.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m114, ptr noundef nonnull @__func__.__ocfs2_move_extents_range, i32 noundef 877, ptr noundef nonnull @.str, i64 noundef %conv118) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m114) #10
  br label %out

if.end124:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %283 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %alloc_size, align 4
  %285 = ptrtoint ptr %clusters_moved to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %clusters_moved, align 8
  %add125 = add i32 %286, %284
  store i32 %add125, ptr %clusters_moved, align 8
  br label %next

next:                                             ; preds = %if.end124, %if.else.i.next_crit_edge, %if.then71
  %len_defraged.3 = phi i32 [ %len_defraged.2, %if.end124 ], [ 0, %if.else.i.next_crit_edge ], [ %spec.select, %if.then71 ]
  %ret.2 = phi i32 [ %ret.1, %if.end124 ], [ 0, %if.else.i.next_crit_edge ], [ 0, %if.then71 ]
  %287 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %alloc_size, align 4
  %add126 = add i32 %288, %cpos.0289
  %sub127 = sub i32 %len_to_move.1301, %288
  %tobool37.not = icmp eq i32 %sub127, 0
  br i1 %tobool37.not, label %next.done_crit_edge, label %next.while.body_crit_edge

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

next.done_crit_edge:                              ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

done:                                             ; preds = %next.done_crit_edge, %if.end36.done_crit_edge, %if.then17.done_crit_edge
  %ret.3 = phi i32 [ 0, %if.then17.done_crit_edge ], [ 0, %if.end36.done_crit_edge ], [ %ret.2, %next.done_crit_edge ]
  %me_flags = getelementptr inbounds %struct.ocfs2_move_extents, ptr %9, i32 0, i32 4
  %289 = ptrtoint ptr %me_flags to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %me_flags, align 8
  %or = or i64 %290, 4
  store i64 %or, ptr %me_flags, align 8
  br label %out

out:                                              ; preds = %done, %do.body113, %if.then96.out_crit_edge, %if.then96.out_crit_edge420, %if.then96.out_crit_edge421, %if.then96.out_crit_edge422, %do.body55, %while.body.out_crit_edge, %while.body.out_crit_edge338, %while.body.out_crit_edge339, %while.body.out_crit_edge340, %while.body.out_crit_edge341
  %ret.4 = phi i32 [ %ret.3, %done ], [ %call38, %do.body55 ], [ %ret.1, %if.then96.out_crit_edge ], [ %ret.1, %if.then96.out_crit_edge420 ], [ %ret.1, %if.then96.out_crit_edge421 ], [ %ret.1, %if.then96.out_crit_edge422 ], [ %ret.1, %do.body113 ], [ %call38, %while.body.out_crit_edge ], [ %call38, %while.body.out_crit_edge338 ], [ %call38, %while.body.out_crit_edge339 ], [ %call38, %while.body.out_crit_edge340 ], [ %call38, %while.body.out_crit_edge341 ]
  %291 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %sb, align 4
  %clusters_moved129 = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 6
  %293 = ptrtoint ptr %clusters_moved129 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %clusters_moved129, align 8
  %conv.i261 = zext i32 %294 to i64
  %s_fs_info.i262 = getelementptr inbounds %struct.super_block, ptr %292, i32 0, i32 33
  %295 = ptrtoint ptr %s_fs_info.i262 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %s_fs_info.i262, align 16
  %s_clustersize_bits.i263 = getelementptr inbounds %struct.ocfs2_super, ptr %296, i32 0, i32 36
  %297 = ptrtoint ptr %s_clustersize_bits.i263 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %s_clustersize_bits.i263, align 8
  %sh_prom.i264 = zext i32 %298 to i64
  %shl.i = shl i64 %conv.i261, %sh_prom.i264
  %me_moved_len = getelementptr inbounds %struct.ocfs2_move_extents, ptr %9, i32 0, i32 5
  %299 = ptrtoint ptr %me_moved_len to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 %shl.i, ptr %me_moved_len, align 8
  %300 = load ptr, ptr %sb, align 4
  %new_phys_cpos132 = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 5
  %301 = ptrtoint ptr %new_phys_cpos132 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %new_phys_cpos132, align 4
  %conv.i265 = zext i32 %302 to i64
  %s_fs_info.i266 = getelementptr inbounds %struct.super_block, ptr %300, i32 0, i32 33
  %303 = ptrtoint ptr %s_fs_info.i266 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %s_fs_info.i266, align 16
  %s_clustersize_bits.i267 = getelementptr inbounds %struct.ocfs2_super, ptr %304, i32 0, i32 36
  %305 = ptrtoint ptr %s_clustersize_bits.i267 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %s_clustersize_bits.i267, align 8
  %sh_prom.i268 = zext i32 %306 to i64
  %shl.i269 = shl i64 %conv.i265, %sh_prom.i268
  %me_new_offset = getelementptr inbounds %struct.ocfs2_move_extents, ptr %9, i32 0, i32 6
  %307 = ptrtoint ptr %me_new_offset to i32
  call void @__asan_store8_noabort(i32 %307)
  store i64 %shl.i269, ptr %me_new_offset, align 8
  call void @ocfs2_schedule_truncate_log_flush(ptr noundef %13, i32 noundef 1) #10
  %call135 = call i32 @ocfs2_run_deallocs(ptr noundef %13, ptr noundef %dealloc) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_phys_cpos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc_size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_cpos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_rw_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_init_dinode_extent_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_get_clusters(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_schedule_truncate_log_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_run_deallocs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lock_refcount_tree(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_prepare_refcount_change_for_del(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_lock_meta_allocator_move_extents(ptr nocapture noundef readonly %inode, ptr noundef %et, i32 noundef %clusters_to_move, ptr noundef %meta_ac, i32 noundef %extra_blocks, ptr nocapture noundef %credits) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m43 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %clusters_to_move, 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @ocfs2_num_free_extents(ptr noundef %et) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call, label %do.body [
    i32 -512, label %if.then.if.then66_crit_edge
    i32 -4, label %if.then.if.then66_crit_edge8
    i32 -28, label %if.then.if.then66_crit_edge9
    i32 -122, label %if.then.if.then66_crit_edge10
  ]

if.then.if.then66_crit_edge10:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.then.if.then66_crit_edge9:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.then.if.then66_crit_edge8:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.then.if.then66_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_lock_meta_allocator_move_extents, i32 noundef 168, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.then66

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end12.if.then19_crit_edge, label %lor.lhs.false

if.end12.if.then19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end12
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat.i, align 8
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add)
  %cmp17 = icmp ult i32 %call, %add
  %or.cond = select i1 %tobool15.not, i1 %cmp17, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end12.if.then19_crit_edge
  %et_root_el = getelementptr inbounds %struct.ocfs2_extent_tree, ptr %et, i32 0, i32 2
  %9 = ptrtoint ptr %et_root_el to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %et_root_el, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 8
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  %conv.i = zext i16 %13 to i32
  %add.i = add i32 %extra_blocks, 2
  %add21 = add i32 %add.i, %conv.i
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %lor.lhs.false.if.end22_crit_edge
  %extra_blocks.addr.0 = phi i32 [ %add21, %if.then19 ], [ %extra_blocks, %lor.lhs.false.if.end22_crit_edge ]
  %call23 = tail call i32 @ocfs2_reserve_new_metadata_blocks(ptr noundef %3, i32 noundef %extra_blocks.addr.0, ptr noundef %meta_ac) #10
  %14 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call23, label %do.body42 [
    i32 0, label %out.thread5
    i32 524289, label %if.end22.if.then66_crit_edge
    i32 -512, label %if.end22.if.then66_crit_edge11
    i32 -122, label %if.end22.if.then66_crit_edge12
    i32 -28, label %if.end22.if.then66_crit_edge13
    i32 -4, label %if.end22.if.then66_crit_edge14
  ]

if.end22.if.then66_crit_edge14:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end22.if.then66_crit_edge13:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end22.if.then66_crit_edge12:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end22.if.then66_crit_edge11:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end22.if.then66_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

do.body42:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #10
  %15 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m43, align 8
  %conv47 = sext i32 %call23 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.ocfs2_lock_meta_allocator_move_extents, i32 noundef 178, ptr noundef nonnull @.str, i64 noundef %conv47) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #10
  br label %if.then66

out.thread5:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sb, align 4
  %et_root_el54 = getelementptr inbounds %struct.ocfs2_extent_tree, ptr %et, i32 0, i32 2
  %18 = ptrtoint ptr %et_root_el54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %et_root_el54, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %conv.i.i = zext i16 %22 to i32
  %add.i.i = shl nuw nsw i32 %conv.i.i, 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 3
  %and3.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %add6.i.i = add nuw nsw i32 %spec.select.i.i, 3
  %credits.1.i.i = select i1 %tobool4.not.i.i, i32 %spec.select.i.i, i32 %add6.i.i
  %add1.i = add nuw nsw i32 %conv.i.i, 10
  %add3.i = add nuw nsw i32 %add1.i, %add.i.i
  %27 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %credits, align 4
  %add5.i = add i32 %add3.i, %28
  %add56 = add i32 %add5.i, %credits.1.i.i
  store i32 %add56, ptr %credits, align 4
  br label %if.end70

if.then66:                                        ; preds = %do.body42, %if.end22.if.then66_crit_edge, %if.end22.if.then66_crit_edge11, %if.end22.if.then66_crit_edge12, %if.end22.if.then66_crit_edge13, %if.end22.if.then66_crit_edge14, %do.body, %if.then.if.then66_crit_edge, %if.then.if.then66_crit_edge8, %if.then.if.then66_crit_edge9, %if.then.if.then66_crit_edge10
  %ret.03 = phi i32 [ %call23, %do.body42 ], [ %call, %if.then.if.then66_crit_edge ], [ %call, %if.then.if.then66_crit_edge8 ], [ %call, %if.then.if.then66_crit_edge9 ], [ %call, %if.then.if.then66_crit_edge10 ], [ %call, %do.body ], [ %call23, %if.end22.if.then66_crit_edge ], [ %call23, %if.end22.if.then66_crit_edge11 ], [ %call23, %if.end22.if.then66_crit_edge12 ], [ %call23, %if.end22.if.then66_crit_edge13 ], [ %call23, %if.end22.if.then66_crit_edge14 ]
  %29 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %meta_ac, align 4
  %tobool67.not = icmp eq ptr %30, null
  br i1 %tobool67.not, label %if.then66.if.end70_crit_edge, label %if.then68

if.then66.if.end70_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then68:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %30) #10
  %31 = ptrtoint ptr %meta_ac to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %meta_ac, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.then66.if.end70_crit_edge, %out.thread5
  %ret.04 = phi i32 [ %ret.03, %if.then66.if.end70_crit_edge ], [ %ret.03, %if.then68 ], [ 0, %out.thread5 ]
  ret i32 %ret.04
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_truncate_log_needs_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_flush_truncate_log(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_reserve_clusters(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_claim_clusters(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_move_extent(ptr noundef %handle, ptr noundef %context, i32 noundef %cpos, i32 noundef %len, i32 noundef %p_cpos, i32 noundef %new_p_cpos, i32 noundef %ext_flags) unnamed_addr #0 align 64 {
entry:
  %replace_rec = alloca %struct.ocfs2_extent_rec, align 8
  %_m = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %_m73 = alloca i64, align 8
  %_m134 = alloca i64, align 8
  %_m166 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %replace_rec) #10
  %6 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %replace_rec, i32 0, i32 1
  %et = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 9
  %et_ci = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 9, i32 3
  %7 = call ptr @memset(ptr %replace_rec, i32 255, i32 16)
  %8 = ptrtoint ptr %et_ci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %et_ci, align 4
  %call = tail call i64 @ocfs2_metadata_cache_owner(ptr noundef %9) #10
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %17 to i32
  %sub.i = sub i32 %15, %conv.i
  %conv1.i = zext i32 %p_cpos to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv1.i, %sh_prom.i
  %call4 = tail call i32 @ocfs2_duplicate_clusters_by_page(ptr noundef %handle, ptr noundef %1, i32 noundef %cpos, i32 noundef %p_cpos, i32 noundef %new_p_cpos, i32 noundef %len) #10
  %18 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call4, label %do.body [
    i32 0, label %if.end16
    i32 -512, label %entry.out_crit_edge
    i32 -4, label %entry.out_crit_edge293
    i32 524289, label %entry.out_crit_edge294
    i32 -28, label %entry.out_crit_edge295
    i32 -122, label %entry.out_crit_edge296
  ]

entry.out_crit_edge296:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

entry.out_crit_edge295:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

entry.out_crit_edge294:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

entry.out_crit_edge293:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %19 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_move_extent, i32 noundef 66, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end16:                                         ; preds = %entry
  %20 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %replace_rec, i32 0, i32 2
  %21 = ptrtoint ptr %replace_rec to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %replace_rec, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %cpos)
  %23 = ptrtoint ptr %replace_rec to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %replace_rec, align 8
  %conv17 = trunc i32 %len to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %6, align 4
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i277 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i277 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i277, align 16
  %s_clustersize_bits.i278 = getelementptr inbounds %struct.ocfs2_super, ptr %29, i32 0, i32 36
  %30 = ptrtoint ptr %s_clustersize_bits.i278 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_clustersize_bits.i278, align 8
  %s_blocksize_bits.i279 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %s_blocksize_bits.i279 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %s_blocksize_bits.i279, align 4
  %conv.i280 = zext i8 %33 to i32
  %sub.i281 = sub i32 %31, %conv.i280
  %conv1.i282 = zext i32 %new_p_cpos to i64
  %sh_prom.i283 = zext i32 %sub.i281 to i64
  %shl.i284 = shl i64 %conv1.i282, %sh_prom.i283
  %34 = tail call i64 @llvm.bswap.i64(i64 %shl.i284)
  %35 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %20, align 8
  %call21 = tail call ptr @ocfs2_new_path_from_et(ptr noundef %et) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.body40, label %if.end51

do.body40:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #10
  %36 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m41, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.__ocfs2_move_extent, i32 noundef 79, ptr noundef nonnull @.str, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #10
  br label %out

if.end51:                                         ; preds = %if.end16
  %ip_metadata_cache.i = getelementptr i8, ptr %1, i32 -56
  %call53 = tail call i32 @ocfs2_find_path(ptr noundef %ip_metadata_cache.i, ptr noundef nonnull %call21, i32 noundef %cpos) #10
  %37 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call53, label %do.body72 [
    i32 0, label %if.end83
    i32 -512, label %if.end51.out_crit_edge
    i32 -4, label %if.end51.out_crit_edge297
    i32 524289, label %if.end51.out_crit_edge298
    i32 -28, label %if.end51.out_crit_edge299
    i32 -122, label %if.end51.out_crit_edge300
  ]

if.end51.out_crit_edge300:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end51.out_crit_edge299:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end51.out_crit_edge298:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end51.out_crit_edge297:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body72:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m73) #10
  %38 = ptrtoint ptr %_m73 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1152921504606846976, ptr %_m73, align 8
  %conv77 = sext i32 %call53 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m73, ptr noundef nonnull @__func__.__ocfs2_move_extent, i32 noundef 85, ptr noundef nonnull @.str, i64 noundef %conv77) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m73) #10
  br label %out

if.end83:                                         ; preds = %if.end51
  %39 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call21, align 4
  %el84 = getelementptr %struct.ocfs2_path, ptr %call21, i32 0, i32 2, i32 %40, i32 1
  %41 = ptrtoint ptr %el84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %el84, align 4
  %call85 = tail call i32 @ocfs2_search_extent_list(ptr noundef %42, i32 noundef %cpos) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call85)
  %cmp86 = icmp eq i32 %call85, -1
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %call90 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %44, ptr noundef nonnull @__PRETTY_FUNCTION__.__ocfs2_move_extent, ptr noundef nonnull @.str.27, i64 noundef %call, i32 noundef %cpos) #10
  br label %out

if.end91:                                         ; preds = %if.end83
  %45 = getelementptr %struct.ocfs2_extent_list, ptr %42, i32 0, i32 5, i32 %call85, i32 1
  %e_flags = getelementptr inbounds %struct.anon.85, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %e_flags, align 1
  %conv94 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv94, i32 %ext_flags)
  %cmp95.not = icmp eq i32 %conv94, %ext_flags
  br i1 %cmp95.not, label %do.end108, label %do.body100, !prof !90

do.body100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/move_extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.end108:                                        ; preds = %if.end91
  %48 = trunc i32 %ext_flags to i8
  %conv110 = and i8 %48, -3
  %e_flags111 = getelementptr inbounds %struct.anon.85, ptr %6, i32 0, i32 2
  %49 = ptrtoint ptr %e_flags111 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv110, ptr %e_flags111, align 1
  %et_root_bh = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %et_root_bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %et_root_bh, align 4
  %call114 = tail call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %51, i32 noundef 1) #10
  %52 = zext i32 %call114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call114, label %do.body133 [
    i32 0, label %if.end144
    i32 -512, label %do.end108.out_crit_edge
    i32 -4, label %do.end108.out_crit_edge301
    i32 524289, label %do.end108.out_crit_edge302
    i32 -28, label %do.end108.out_crit_edge303
    i32 -122, label %do.end108.out_crit_edge304
  ]

do.end108.out_crit_edge304:                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end108.out_crit_edge303:                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end108.out_crit_edge302:                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end108.out_crit_edge301:                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end108.out_crit_edge:                          ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body133:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m134) #10
  %53 = ptrtoint ptr %_m134 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1152921504606846976, ptr %_m134, align 8
  %conv138 = sext i32 %call114 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m134, ptr noundef nonnull @__func__.__ocfs2_move_extent, i32 noundef 112, ptr noundef nonnull @.str, i64 noundef %conv138) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m134) #10
  br label %out

if.end144:                                        ; preds = %do.end108
  %meta_ac = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 10
  %54 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %meta_ac, align 4
  %dealloc = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 12
  %call146 = call i32 @ocfs2_split_extent(ptr noundef %handle, ptr noundef %et, ptr noundef nonnull %call21, i32 noundef %call85, ptr noundef nonnull %replace_rec, ptr noundef %55, ptr noundef %dealloc) #10
  %56 = zext i32 %call146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call146, label %do.body165 [
    i32 0, label %if.end176
    i32 -512, label %if.end144.out_crit_edge
    i32 -4, label %if.end144.out_crit_edge305
    i32 524289, label %if.end144.out_crit_edge306
    i32 -28, label %if.end144.out_crit_edge307
    i32 -122, label %if.end144.out_crit_edge308
  ]

if.end144.out_crit_edge308:                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end144.out_crit_edge307:                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end144.out_crit_edge306:                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end144.out_crit_edge305:                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body165:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m166) #10
  %57 = ptrtoint ptr %_m166 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m166, align 8
  %conv170 = sext i32 %call146 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m166, ptr noundef nonnull @__func__.__ocfs2_move_extent, i32 noundef 120, ptr noundef nonnull @.str, i64 noundef %conv170) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m166) #10
  br label %out

if.end176:                                        ; preds = %if.end144
  %58 = ptrtoint ptr %et_root_bh to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %et_root_bh, align 4
  call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %59) #10
  %new_phys_cpos = getelementptr inbounds %struct.ocfs2_move_extents_context, ptr %context, i32 0, i32 5
  %60 = ptrtoint ptr %new_phys_cpos to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %new_p_cpos, ptr %new_phys_cpos, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %tobool179.not = icmp eq i64 %shl.i, 0
  br i1 %tobool179.not, label %if.end176.if.end190_crit_edge, label %if.then180

if.end176.if.end190_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then180:                                       ; preds = %if.end176
  %and181 = and i32 %ext_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.else, label %if.then183

if.then183:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 1
  %61 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sb, align 4
  %s_fs_info.i286 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i286 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i286, align 16
  %s_clustersize_bits.i287 = getelementptr inbounds %struct.ocfs2_super, ptr %64, i32 0, i32 36
  %65 = ptrtoint ptr %s_clustersize_bits.i287 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_clustersize_bits.i287, align 8
  %s_blocksize_bits.i288 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 2
  %67 = ptrtoint ptr %s_blocksize_bits.i288 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %s_blocksize_bits.i288, align 4
  %conv.i289 = zext i8 %68 to i32
  %sub.i290 = sub i32 %66, %conv.i289
  %sh_prom.i291 = zext i32 %sub.i290 to i64
  %shr.i = lshr i64 %shl.i, %sh_prom.i291
  %conv1.i292 = trunc i64 %shr.i to i32
  %69 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %meta_ac, align 4
  %call187 = call i32 @ocfs2_decrease_refcount(ptr noundef %1, ptr noundef %handle, i32 noundef %conv1.i292, i32 noundef %len, ptr noundef %70, ptr noundef %dealloc, i32 noundef 1) #10
  br label %if.end190

if.else:                                          ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  %call188 = call i32 @ocfs2_truncate_log_append(ptr noundef %5, ptr noundef %handle, i64 noundef %shl.i, i32 noundef %len) #10
  br label %if.end190

if.end190:                                        ; preds = %if.else, %if.then183, %if.end176.if.end190_crit_edge
  %ret.0 = phi i32 [ %call187, %if.then183 ], [ %call188, %if.else ], [ 0, %if.end176.if.end190_crit_edge ]
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %71 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %72 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end190.out_crit_edge

if.end190.out_crit_edge:                          ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false.i.i:                                ; preds = %if.end190
  %73 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i = icmp eq ptr %74, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %and.i.i.i = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.out_crit_edge

is_handle_aborted.exit.i.out_crit_edge:           ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %1, i32 884
  %81 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %i_sync_tid.i, align 4
  br label %out

out:                                              ; preds = %if.then.i, %is_handle_aborted.exit.i.out_crit_edge, %lor.lhs.false.i.i.out_crit_edge, %if.end190.out_crit_edge, %do.body165, %if.end144.out_crit_edge, %if.end144.out_crit_edge305, %if.end144.out_crit_edge306, %if.end144.out_crit_edge307, %if.end144.out_crit_edge308, %do.body133, %do.end108.out_crit_edge, %do.end108.out_crit_edge301, %do.end108.out_crit_edge302, %do.end108.out_crit_edge303, %do.end108.out_crit_edge304, %if.then88, %do.body72, %if.end51.out_crit_edge, %if.end51.out_crit_edge297, %if.end51.out_crit_edge298, %if.end51.out_crit_edge299, %if.end51.out_crit_edge300, %do.body40, %do.body, %entry.out_crit_edge, %entry.out_crit_edge293, %entry.out_crit_edge294, %entry.out_crit_edge295, %entry.out_crit_edge296
  %path.0 = phi ptr [ %call21, %if.then88 ], [ null, %do.body40 ], [ null, %entry.out_crit_edge ], [ null, %entry.out_crit_edge293 ], [ null, %entry.out_crit_edge294 ], [ null, %entry.out_crit_edge295 ], [ null, %entry.out_crit_edge296 ], [ null, %do.body ], [ %call21, %if.end51.out_crit_edge ], [ %call21, %if.end51.out_crit_edge297 ], [ %call21, %if.end51.out_crit_edge298 ], [ %call21, %if.end51.out_crit_edge299 ], [ %call21, %if.end51.out_crit_edge300 ], [ %call21, %do.body72 ], [ %call21, %do.end108.out_crit_edge ], [ %call21, %do.end108.out_crit_edge301 ], [ %call21, %do.end108.out_crit_edge302 ], [ %call21, %do.end108.out_crit_edge303 ], [ %call21, %do.end108.out_crit_edge304 ], [ %call21, %do.body133 ], [ %call21, %if.end144.out_crit_edge ], [ %call21, %if.end144.out_crit_edge305 ], [ %call21, %if.end144.out_crit_edge306 ], [ %call21, %if.end144.out_crit_edge307 ], [ %call21, %if.end144.out_crit_edge308 ], [ %call21, %do.body165 ], [ %call21, %if.end190.out_crit_edge ], [ %call21, %lor.lhs.false.i.i.out_crit_edge ], [ %call21, %is_handle_aborted.exit.i.out_crit_edge ], [ %call21, %if.then.i ]
  %ret.1 = phi i32 [ %call90, %if.then88 ], [ -12, %do.body40 ], [ %call4, %entry.out_crit_edge ], [ %call4, %entry.out_crit_edge293 ], [ %call4, %entry.out_crit_edge294 ], [ %call4, %entry.out_crit_edge295 ], [ %call4, %entry.out_crit_edge296 ], [ %call4, %do.body ], [ %call53, %if.end51.out_crit_edge ], [ %call53, %if.end51.out_crit_edge297 ], [ %call53, %if.end51.out_crit_edge298 ], [ %call53, %if.end51.out_crit_edge299 ], [ %call53, %if.end51.out_crit_edge300 ], [ %call53, %do.body72 ], [ %call114, %do.end108.out_crit_edge ], [ %call114, %do.end108.out_crit_edge301 ], [ %call114, %do.end108.out_crit_edge302 ], [ %call114, %do.end108.out_crit_edge303 ], [ %call114, %do.end108.out_crit_edge304 ], [ %call114, %do.body133 ], [ %call146, %if.end144.out_crit_edge ], [ %call146, %if.end144.out_crit_edge305 ], [ %call146, %if.end144.out_crit_edge306 ], [ %call146, %if.end144.out_crit_edge307 ], [ %call146, %if.end144.out_crit_edge308 ], [ %call146, %do.body165 ], [ %ret.0, %if.end190.out_crit_edge ], [ %ret.0, %lor.lhs.false.i.i.out_crit_edge ], [ %ret.0, %is_handle_aborted.exit.i.out_crit_edge ], [ %ret.0, %if.then.i ]
  call void @ocfs2_free_path(ptr noundef %path.0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %replace_rec) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_cow_sync_writeback(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_free_local_alloc_bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_free_clusters(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_free_alloc_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_unlock_refcount_tree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_num_free_extents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ocfs2_metadata_cache_owner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_duplicate_clusters_by_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_new_path_from_et(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_find_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_search_extent_list(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_split_extent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_decrease_refcount(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_truncate_log_append(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_probe_alloc_group(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %bh, ptr nocapture noundef %goal_bit, i32 noundef %move_len, i32 noundef %max_hop, ptr nocapture noundef writeonly %phys_cpos) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %goal_bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %goal_bit, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bg_blkno, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %10, i32 0, i32 36
  %11 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %14 to i32
  %sub.i = sub i32 %12, %conv.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %8, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bg_bits, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp33 = icmp slt i32 %1, %conv
  br i1 %cmp33, label %for.body.lr.ph, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body.lr.ph:                                   ; preds = %entry
  %18 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %3, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %last_free_bits.036 = phi i32 [ 0, %for.body.lr.ph ], [ %last_free_bits.1, %for.inc.for.body_crit_edge ]
  %i.034 = phi i32 [ %1, %for.body.lr.ph ], [ %inc14, %for.inc.for.body_crit_edge ]
  %div3.i.i = lshr i32 %i.034, 5
  %arrayidx.i.i = getelementptr i32, ptr %18, i32 %div3.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %i.034, 31
  %and.i.i = xor i32 %xor.i, 24
  %21 = shl nuw i32 1, %and.i.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %sub = sub i32 %i.034, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %max_hop)
  %cmp3 = icmp ugt i32 %sub, %max_hop
  br i1 %cmp3, label %if.then.if.end17.sink.split_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.if.end17.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split

if.else:                                          ; preds = %for.body
  %inc = add i32 %last_free_bits.036, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %move_len)
  %cmp10 = icmp eq i32 %inc, %move_len
  br i1 %cmp10, label %if.then12, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %goal_bit to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.034, ptr %goal_bit, align 4
  %add = add i32 %i.034, %conv1.i
  br label %if.end17.sink.split

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %last_free_bits.1 = phi i32 [ %inc, %if.else.for.inc_crit_edge ], [ 0, %if.then.for.inc_crit_edge ]
  %inc14 = add i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc14, %conv
  br i1 %exitcond.not, label %for.inc.if.end17_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17.sink.split:                              ; preds = %if.then12, %if.then.if.end17.sink.split_crit_edge
  %add.sink = phi i32 [ %add, %if.then12 ], [ 0, %if.then.if.end17.sink.split_crit_edge ]
  %24 = ptrtoint ptr %phys_cpos to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.sink, ptr %phys_cpos, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %for.inc.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_alloc_dinode_update_counts(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_block_group_set_bits(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_rollback_alloc_dinode_counts(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__func__.ocfs2_ioctl_move_extents, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/move_extents.c", i32 1011, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!5 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/move_extents.c", i32 523, i32 2}
!12 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.ocfs2_find_victim_alloc_group, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/move_extents.c", i32 398, i32 3}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/move_extents.c", i32 452, i32 5}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 1578, i32 30}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 353, i32 32}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 354, i32 41}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 357, i32 32}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 358, i32 32}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 359, i32 36}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 360, i32 33}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 361, i32 34}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 364, i32 33}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 365, i32 35}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 366, i32 34}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 367, i32 31}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 368, i32 34}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 369, i32 35}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 370, i32 39}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 371, i32 39}
!49 = distinct !{null, !50, !"ocfs2_system_inodes", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 350, i32 39}
!51 = !{ptr @__func__.ocfs2_move_extents, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/move_extents.c", i32 921, i32 3}
!53 = !{ptr @__func__.__ocfs2_move_extents_range, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/move_extents.c", i32 819, i32 2}
!55 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/move_extents.c", i32 862, i32 4}
!58 = !{ptr @__func__.ocfs2_defrag_extent, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/move_extents.c", i32 225, i32 4}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/move_extents.c", i32 303, i32 3}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/move_extents.c", i32 312, i32 2}
!64 = !{ptr @__func__.ocfs2_lock_meta_allocator_move_extents, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/move_extents.c", i32 168, i32 3}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/move_extents.c", i32 185, i32 2}
!68 = !{ptr @__func__.__ocfs2_move_extent, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/move_extents.c", i32 66, i32 3}
!70 = !{ptr @__PRETTY_FUNCTION__.__ocfs2_move_extent, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/move_extents.c", i32 93, i32 9}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__func__.ocfs2_move_extent, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ocfs2/move_extents.c", i32 598, i32 4}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/move_extents.c", i32 636, i32 3}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/move_extents.c", i32 568, i32 2}
!79 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 4684038}
!92 = !{i64 4684235}
!93 = !{i64 2152169468}
!94 = !{i64 1080684, i64 1080745}
!95 = !{i64 1083416}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 1083701}
!98 = !{i64 2152518835}
!99 = !{i64 2152518677}
!100 = !{i64 2152519005}
!101 = !{i64 2150104819}
!102 = !{!"auto-init"}
!103 = !{i64 2155412348, i64 2155412836, i64 2155412385, i64 2155412441, i64 2155412475, i64 2155412499, i64 2155412540, i64 2155412561, i64 2155412589, i64 2155412623}
!104 = !{i64 2155413960, i64 2155414448, i64 2155413997, i64 2155414053, i64 2155414087, i64 2155414111, i64 2155414152, i64 2155414173, i64 2155414201, i64 2155414235}
!105 = !{i64 2155424980, i64 2155425468, i64 2155425017, i64 2155425073, i64 2155425107, i64 2155425131, i64 2155425172, i64 2155425193, i64 2155425221, i64 2155425255}
!106 = !{i64 2155426592, i64 2155427080, i64 2155426629, i64 2155426685, i64 2155426719, i64 2155426743, i64 2155426784, i64 2155426805, i64 2155426833, i64 2155426867}
!107 = !{i64 2155408164, i64 2155408652, i64 2155408201, i64 2155408257, i64 2155408291, i64 2155408315, i64 2155408356, i64 2155408377, i64 2155408405, i64 2155408439}
