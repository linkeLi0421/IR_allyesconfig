; ModuleID = '/llk/IR_all_yes/fs/ocfs2/extent_map.c_pt.bc'
source_filename = "../fs/ocfs2/extent_map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.ocfs2_extent_rec = type { i32, %union.anon.81, i64 }
%union.anon.81 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.77, ptr }
%union.anon.77 = type { %struct.fsdlm_lksb_plus_lvb }
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
%struct.anon.82 = type { i16, i8, i8 }
%struct.ocfs2_extent_map_item = type { i32, i32, i32, i32, %struct.list_head }
%struct.ocfs2_extent_list = type { i16, i16, i16, i16, i64, [0 x %struct.ocfs2_extent_rec] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_extent_block = type { [8 x i8], %struct.ocfs2_block_check, i16, i16, i32, i64, i64, i64, %struct.ocfs2_extent_list }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.83, %union.anon.87 }
%union.anon.83 = type { i64 }
%union.anon.87 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.88, [16 x i8] }
%union.anon.88 = type { i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__func__.ocfs2_figure_hole_clusters = private unnamed_addr constant [27 x i8] c"ocfs2_figure_hole_clusters\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_xattr_get_clusters = private unnamed_addr constant [25 x i8] c"ocfs2_xattr_get_clusters\00", align 1
@__PRETTY_FUNCTION__.ocfs2_xattr_get_clusters = private unnamed_addr constant [108 x i8] c"int ocfs2_xattr_get_clusters(struct inode *, u32, u32 *, u32 *, struct ocfs2_extent_list *, unsigned int *)\00", align 1
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Inode %lu has non zero tree depth in xattr leaf block %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Inode %lu has bad extent record (%u, %u, 0) in xattr\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ocfs2_get_clusters = private unnamed_addr constant [19 x i8] c"ocfs2_get_clusters\00", align 1
@__func__.ocfs2_extent_map_get_blocks = private unnamed_addr constant [28 x i8] c"ocfs2_extent_map_get_blocks\00", align 1
@__func__.ocfs2_fiemap = private unnamed_addr constant [13 x i8] c"ocfs2_fiemap\00", align 1
@__func__.ocfs2_overwrite_io = private unnamed_addr constant [19 x i8] c"ocfs2_overwrite_io\00", align 1
@__func__.ocfs2_seek_data_hole_offset = private unnamed_addr constant [28 x i8] c"ocfs2_seek_data_hole_offset\00", align 1
@__func__.ocfs2_read_virt_blocks = private unnamed_addr constant [23 x i8] c"ocfs2_read_virt_blocks\00", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Inode #%llu contains a hole at offset %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.ocfs2_get_clusters_nocache = private unnamed_addr constant [27 x i8] c"ocfs2_get_clusters_nocache\00", align 1
@__PRETTY_FUNCTION__.ocfs2_get_clusters_nocache = private unnamed_addr constant [133 x i8] c"int ocfs2_get_clusters_nocache(struct inode *, struct buffer_head *, u32, unsigned int *, struct ocfs2_extent_rec *, unsigned int *)\00", align 1
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Inode %lu has non zero tree depth in leaf block %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Inode %lu has bad extent record (%u, %u, 0)\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.ocfs2_last_eb_is_empty = private unnamed_addr constant [23 x i8] c"ocfs2_last_eb_is_empty\00", align 1
@__PRETTY_FUNCTION__.ocfs2_last_eb_is_empty = private unnamed_addr constant [66 x i8] c"int ocfs2_last_eb_is_empty(struct inode *, struct ocfs2_dinode *)\00", align 1
@__tracepoint_ocfs2_read_virt_blocks = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_read_virt_blocks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 256]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 369, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 553, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 572, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 987, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 429, i32 4 }
@___asan_gen_.41 = private constant [25 x i8] c"../fs/ocfs2/extent_map.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 464, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1598, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 108, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_extent_map_init(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_extent_map = getelementptr i8, ptr %inode, i32 -16
  %0 = ptrtoint ptr %ip_extent_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ip_extent_map, align 8
  %em_list = getelementptr i8, ptr %inode, i32 -12
  %1 = ptrtoint ptr %em_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %em_list, ptr %em_list, align 4
  %prev.i = getelementptr i8, ptr %inode, i32 -8
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %em_list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_extent_map_trunc(ptr noundef %inode, i32 noundef %cpos) local_unnamed_addr #2 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_extent_map = getelementptr i8, ptr %inode, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  call void @_raw_spin_lock(ptr noundef %ip_lock) #9
  %em_list = getelementptr i8, ptr %inode, i32 -12
  %3 = ptrtoint ptr %em_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %em_list, align 4
  %cmp.not88 = icmp eq ptr %4, %em_list
  br i1 %cmp.not88, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in89 = phi ptr [ %.pn91, %for.inc.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn91 = load ptr, ptr %.pn.in89, align 4
  %emi.0 = getelementptr i8, ptr %.pn.in89, i32 -16
  %6 = ptrtoint ptr %emi.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %emi.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cpos)
  %cmp8.not = icmp ult i32 %7, %cpos
  br i1 %cmp8.not, label %if.end21, label %if.then

if.then:                                          ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in89) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in89, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in89, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tmp_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in89, ptr noundef nonnull %tmp_list, ptr noundef %15) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.pn.in89, ptr %prev1.i.i2.i, align 4
  %17 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %.pn.in89, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in89, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tmp_list, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %.pn.in89, ptr %tmp_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %20 = ptrtoint ptr %ip_extent_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip_extent_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %do.body14, label %do.end19, !prof !53

do.body14:                                        ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end19:                                         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %21, -1
  %22 = ptrtoint ptr %ip_extent_map to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec, ptr %ip_extent_map, align 4
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %ei_clusters = getelementptr i8, ptr %.pn.in89, i32 -8
  %23 = ptrtoint ptr %ei_clusters to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ei_clusters, align 4
  %add = add i32 %24, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cpos)
  %cmp23 = icmp ugt i32 %add, %cpos
  br i1 %cmp23, label %if.then24, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %cpos, %7
  %25 = ptrtoint ptr %ei_clusters to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %ei_clusters, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end21.for.inc_crit_edge, %do.end19
  %cmp.not = icmp eq ptr %.pn91, %em_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ip_lock) #9
  %26 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tmp_list, align 4
  %cmp45.not92 = icmp eq ptr %27, %tmp_list
  br i1 %cmp45.not92, label %for.end.for.end56_crit_edge, label %for.end.for.body48_crit_edge

for.end.for.body48_crit_edge:                     ; preds = %for.end
  br label %for.body48

for.end.for.end56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56

for.body48:                                       ; preds = %list_del.exit.for.body48_crit_edge, %for.end.for.body48_crit_edge
  %.pn79.in93 = phi ptr [ %.pn79, %list_del.exit.for.body48_crit_edge ], [ %27, %for.end.for.body48_crit_edge ]
  %emi.1 = getelementptr i8, ptr %.pn79.in93, i32 -16
  %28 = ptrtoint ptr %.pn79.in93 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn79 = load ptr, ptr %.pn79.in93, align 4
  %call.i.i82 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn79.in93) #9
  br i1 %call.i.i82, label %if.end.i.i85, label %for.body48.list_del.exit_crit_edge

for.body48.list_del.exit_crit_edge:               ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i85:                                     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i83 = getelementptr inbounds %struct.list_head, ptr %.pn79.in93, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i83, align 4
  %31 = ptrtoint ptr %.pn79.in93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn79.in93, align 4
  %prev1.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i84, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i85, %for.body48.list_del.exit_crit_edge
  %35 = ptrtoint ptr %.pn79.in93 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn79.in93, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn79.in93, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %emi.1) #9
  %cmp45.not = icmp eq ptr %.pn79, %tmp_list
  br i1 %cmp45.not, label %list_del.exit.for.end56_crit_edge, label %list_del.exit.for.body48_crit_edge

list_del.exit.for.body48_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48

list_del.exit.for.end56_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56

for.end56:                                        ; preds = %list_del.exit.for.end56_crit_edge, %for.end.for.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_extent_map_insert_rec(ptr noundef %inode, ptr nocapture noundef readonly %rec) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_extent_map = getelementptr i8, ptr %inode, i32 -16
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %e_blkno = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 2
  %5 = ptrtoint ptr %e_blkno to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %e_blkno, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 36
  %10 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %13 to i32
  %sub.i = sub i32 %11, %conv.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %7, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %14 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  %e_flags = getelementptr inbounds %struct.anon.82, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %e_flags, align 1
  %conv2 = zext i8 %19 to i32
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  %em_list = getelementptr i8, ptr %inode, i32 -12
  %add14.i = add i32 %conv1.i, %conv
  %add20.i = add i32 %2, %conv
  br label %search

search:                                           ; preds = %if.then19.search_crit_edge, %entry
  %new_emi.0 = phi ptr [ null, %entry ], [ %call7.i, %if.then19.search_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #9
  br label %for.cond

for.cond:                                         ; preds = %ocfs2_ei_is_contained.exit81.i.for.cond_crit_edge, %search
  %.pn.in = phi ptr [ %em_list, %search ], [ %.pn, %ocfs2_ei_is_contained.exit81.i.for.cond_crit_edge ]
  %20 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %em_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %emi.0 = getelementptr i8, ptr %.pn, i32 -16
  %ei_phys1.i = getelementptr i8, ptr %.pn, i32 -12
  %21 = ptrtoint ptr %ei_phys1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ei_phys1.i, align 4
  %ei_clusters.i = getelementptr i8, ptr %.pn, i32 -8
  %23 = ptrtoint ptr %ei_clusters.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ei_clusters.i, align 4
  %add.i = add i32 %24, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv1.i)
  %cmp.i = icmp eq i32 %add.i, %conv1.i
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.if.else.i_crit_edge

for.body.if.else.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body
  %25 = ptrtoint ptr %emi.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %emi.0, align 4
  %add4.i = add i32 %26, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add4.i)
  %cmp5.i = icmp eq i32 %2, %add4.i
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %ei_flags7.i = getelementptr i8, ptr %.pn, i32 -4
  %27 = ptrtoint ptr %ei_flags7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ei_flags7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv2)
  %cmp8.i = icmp eq i32 %28, %conv2
  br i1 %cmp8.i, label %if.then.i, label %land.lhs.true6.i.if.else.i_crit_edge

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  %ei_clusters.i.le197 = getelementptr i8, ptr %.pn, i32 -8
  %add11.i = add i32 %24, %conv
  %29 = ptrtoint ptr %ei_clusters.i.le197 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add11.i, ptr %ei_clusters.i.le197, align 4
  br label %if.then

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %for.body.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %22)
  %cmp16.i = icmp eq i32 %add14.i, %22
  br i1 %cmp16.i, label %land.lhs.true17.i, label %if.else.i.if.end35.i_crit_edge

if.else.i.if.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

land.lhs.true17.i:                                ; preds = %if.else.i
  %30 = ptrtoint ptr %emi.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %emi.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %31)
  %cmp22.i = icmp eq i32 %add20.i, %31
  br i1 %cmp22.i, label %land.lhs.true23.i, label %land.lhs.true17.i.if.end35.i_crit_edge

land.lhs.true17.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

land.lhs.true23.i:                                ; preds = %land.lhs.true17.i
  %ei_flags25.i = getelementptr i8, ptr %.pn, i32 -4
  %32 = ptrtoint ptr %ei_flags25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ei_flags25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv2)
  %cmp26.i = icmp eq i32 %33, %conv2
  br i1 %cmp26.i, label %if.then27.i, label %land.lhs.true23.i.if.end35.i_crit_edge

land.lhs.true23.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then27.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  %ei_phys1.i.le200 = getelementptr i8, ptr %.pn, i32 -12
  %ei_clusters.i.le195 = getelementptr i8, ptr %.pn, i32 -8
  %34 = ptrtoint ptr %ei_phys1.i.le200 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv1.i, ptr %ei_phys1.i.le200, align 4
  %35 = ptrtoint ptr %emi.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %2, ptr %emi.0, align 4
  %add34.i = add i32 %24, %conv
  %36 = ptrtoint ptr %ei_clusters.i.le195 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add34.i, ptr %ei_clusters.i.le195, align 4
  br label %if.then

if.end35.i:                                       ; preds = %land.lhs.true23.i.if.end35.i_crit_edge, %land.lhs.true17.i.if.end35.i_crit_edge, %if.else.i.if.end35.i_crit_edge
  %37 = ptrtoint ptr %emi.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %emi.0, align 4
  %add.i.i = add i32 %38, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %38)
  %cmp.not.i.i = icmp uge i32 %2, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add.i.i)
  %cmp4.i.i = icmp ult i32 %2, %add.i.i
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end35.i.if.then38.i_crit_edge, label %ocfs2_ei_is_contained.exit.i

if.end35.i.if.then38.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

ocfs2_ei_is_contained.exit.i:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %38)
  %cmp9.i.i = icmp ule i32 %add20.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %add.i.i)
  %cmp11.not.i.i = icmp ugt i32 %add20.i, %add.i.i
  %or.cond23.i.i = select i1 %cmp9.i.i, i1 true, i1 %cmp11.not.i.i
  br i1 %or.cond23.i.i, label %lor.lhs.false.i, label %ocfs2_ei_is_contained.exit.i.if.then38.i_crit_edge

ocfs2_ei_is_contained.exit.i.if.then38.i_crit_edge: ; preds = %ocfs2_ei_is_contained.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

lor.lhs.false.i:                                  ; preds = %ocfs2_ei_is_contained.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %2)
  %cmp.not.i70.i = icmp uge i32 %38, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add20.i)
  %cmp4.i71.i = icmp ult i32 %38, %add20.i
  %or.cond.i72.i = select i1 %cmp.not.i70.i, i1 %cmp4.i71.i, i1 false
  br i1 %or.cond.i72.i, label %lor.lhs.false.i.if.then38.i_crit_edge, label %ocfs2_ei_is_contained.exit81.i

lor.lhs.false.i.if.then38.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

ocfs2_ei_is_contained.exit81.i:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add20.i)
  %cmp11.not.i76.i = icmp ugt i32 %add.i.i, %add20.i
  %not.cmp4.i.i = xor i1 %cmp4.i.i, true
  %or.cond23.i77.i = select i1 %not.cmp4.i.i, i1 true, i1 %cmp11.not.i76.i
  br i1 %or.cond23.i77.i, label %ocfs2_ei_is_contained.exit81.i.for.cond_crit_edge, label %ocfs2_ei_is_contained.exit81.i.if.then38.i_crit_edge

ocfs2_ei_is_contained.exit81.i.if.then38.i_crit_edge: ; preds = %ocfs2_ei_is_contained.exit81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

ocfs2_ei_is_contained.exit81.i.for.cond_crit_edge: ; preds = %ocfs2_ei_is_contained.exit81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then38.i:                                      ; preds = %ocfs2_ei_is_contained.exit81.i.if.then38.i_crit_edge, %lor.lhs.false.i.if.then38.i_crit_edge, %ocfs2_ei_is_contained.exit.i.if.then38.i_crit_edge, %if.end35.i.if.then38.i_crit_edge
  %ei_phys1.i.le = getelementptr i8, ptr %.pn, i32 -12
  %ei_clusters.i.le = getelementptr i8, ptr %.pn, i32 -8
  %39 = ptrtoint ptr %emi.0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %2, ptr %emi.0, align 4
  %40 = ptrtoint ptr %ei_phys1.i.le to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv1.i, ptr %ei_phys1.i.le, align 4
  %41 = ptrtoint ptr %ei_clusters.i.le to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv, ptr %ei_clusters.i.le, align 4
  %ei_flags4.i.i = getelementptr i8, ptr %.pn, i32 -4
  %42 = ptrtoint ptr %ei_flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv2, ptr %ei_flags4.i.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then38.i, %if.then27.i, %if.then.i
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %49 = ptrtoint ptr %em_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %em_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %em_list, ptr noundef %50) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.out.sink.split_crit_edge

__list_del_entry.exit.i.out.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.pn, ptr %prev1.i.i2.i, align 4
  %52 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %.pn, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %em_list, ptr %prev3.i.i.i, align 4
  %54 = ptrtoint ptr %em_list to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %.pn, ptr %em_list, align 4
  br label %out.sink.split

for.end:                                          ; preds = %for.cond
  %55 = ptrtoint ptr %ip_extent_map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ip_extent_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp14 = icmp ult i32 %56, 3
  br i1 %cmp14, label %if.then16, label %do.body

if.then16:                                        ; preds = %for.end
  %cmp17 = icmp eq ptr %new_emi.0, null
  br i1 %cmp17, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.then16
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3136, i32 noundef 24) #12
  %cmp22 = icmp eq ptr %call7.i, null
  br i1 %cmp22, label %if.then19.out_crit_edge, label %if.then19.search_crit_edge

if.then19.search_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %search

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26:                                         ; preds = %if.then16
  %58 = ptrtoint ptr %new_emi.0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %2, ptr %new_emi.0, align 8
  %ei_phys2.i = getelementptr inbounds %struct.ocfs2_extent_map_item, ptr %new_emi.0, i32 0, i32 1
  %59 = ptrtoint ptr %ei_phys2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv1.i, ptr %ei_phys2.i, align 4
  %ei_clusters3.i = getelementptr inbounds %struct.ocfs2_extent_map_item, ptr %new_emi.0, i32 0, i32 2
  %60 = ptrtoint ptr %ei_clusters3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv, ptr %ei_clusters3.i, align 8
  %ei_flags4.i = getelementptr inbounds %struct.ocfs2_extent_map_item, ptr %new_emi.0, i32 0, i32 3
  %61 = ptrtoint ptr %ei_flags4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv2, ptr %ei_flags4.i, align 4
  %ei_list27 = getelementptr inbounds %struct.ocfs2_extent_map_item, ptr %new_emi.0, i32 0, i32 4
  %62 = ptrtoint ptr %em_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %em_list, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef %ei_list27, ptr noundef %em_list, ptr noundef %63) #9
  br i1 %call.i.i84, label %if.end.i.i85, label %if.end26.list_add.exit_crit_edge

if.end26.list_add.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i85:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ei_list27, ptr %prev1.i.i, align 4
  %65 = ptrtoint ptr %ei_list27 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %ei_list27, align 8
  %prev3.i.i = getelementptr inbounds %struct.ocfs2_extent_map_item, ptr %new_emi.0, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %em_list, ptr %prev3.i.i, align 4
  %67 = ptrtoint ptr %em_list to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %ei_list27, ptr %em_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i85, %if.end26.list_add.exit_crit_edge
  %68 = ptrtoint ptr %ip_extent_map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ip_extent_map, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %ip_extent_map, align 4
  br label %out.sink.split

do.body:                                          ; preds = %for.end
  %70 = ptrtoint ptr %em_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %em_list, align 4
  %cmp.i86.not = icmp eq ptr %71, %em_list
  br i1 %cmp.i86.not, label %do.body40, label %do.end46, !prof !53

do.body40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.end46:                                         ; preds = %do.body
  %prev = getelementptr i8, ptr %inode, i32 -8
  %72 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev, align 4
  %add.ptr50 = getelementptr i8, ptr %73, i32 -16
  %call.i.i88 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %73) #9
  br i1 %call.i.i88, label %if.end.i.i91, label %do.end46.__list_del_entry.exit.i93_crit_edge

do.end46.__list_del_entry.exit.i93_crit_edge:     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i93

if.end.i.i91:                                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i89 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i89 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i89, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  %prev1.i.i.i90 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i90, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %__list_del_entry.exit.i93

__list_del_entry.exit.i93:                        ; preds = %if.end.i.i91, %do.end46.__list_del_entry.exit.i93_crit_edge
  %80 = ptrtoint ptr %em_list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %em_list, align 4
  %call.i.i.i92 = tail call zeroext i1 @__list_add_valid(ptr noundef %73, ptr noundef %em_list, ptr noundef %81) #9
  br i1 %call.i.i.i92, label %if.end.i.i.i96, label %__list_del_entry.exit.i93.list_move.exit97_crit_edge

__list_del_entry.exit.i93.list_move.exit97_crit_edge: ; preds = %__list_del_entry.exit.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit97

if.end.i.i.i96:                                   ; preds = %__list_del_entry.exit.i93
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i94 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i2.i94 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %73, ptr %prev1.i.i2.i94, align 4
  %83 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %81, ptr %73, align 4
  %prev3.i.i.i95 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %em_list, ptr %prev3.i.i.i95, align 4
  %85 = ptrtoint ptr %em_list to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %73, ptr %em_list, align 4
  br label %list_move.exit97

list_move.exit97:                                 ; preds = %if.end.i.i.i96, %__list_del_entry.exit.i93.list_move.exit97_crit_edge
  %86 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %2, ptr %add.ptr50, align 4
  %ei_phys2.i99 = getelementptr i8, ptr %73, i32 -12
  %87 = ptrtoint ptr %ei_phys2.i99 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv1.i, ptr %ei_phys2.i99, align 4
  %ei_clusters3.i101 = getelementptr i8, ptr %73, i32 -8
  %88 = ptrtoint ptr %ei_clusters3.i101 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv, ptr %ei_clusters3.i101, align 4
  %ei_flags4.i103 = getelementptr i8, ptr %73, i32 -4
  %89 = ptrtoint ptr %ei_flags4.i103 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv2, ptr %ei_flags4.i103, align 4
  br label %out.sink.split

out.sink.split:                                   ; preds = %list_move.exit97, %list_add.exit, %if.end.i.i.i, %__list_del_entry.exit.i.out.sink.split_crit_edge
  %new_emi.2.ph = phi ptr [ %new_emi.0, %__list_del_entry.exit.i.out.sink.split_crit_edge ], [ %new_emi.0, %if.end.i.i.i ], [ null, %list_add.exit ], [ %new_emi.0, %list_move.exit97 ]
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #9
  br label %out

out:                                              ; preds = %out.sink.split, %if.then19.out_crit_edge
  %new_emi.2 = phi ptr [ %new_emi.2.ph, %out.sink.split ], [ null, %if.then19.out_crit_edge ]
  tail call void @kfree(ptr noundef %new_emi.2) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_figure_hole_clusters(ptr noundef %ci, ptr nocapture noundef readonly %el, ptr noundef readonly %eb_bh, i32 noundef %v_cluster, ptr nocapture noundef writeonly %num_clusters) local_unnamed_addr #2 align 64 {
entry:
  %next_eb_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_eb_bh) #9
  %0 = ptrtoint ptr %next_eb_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %next_eb_bh, align 4
  %l_next_free_rec.i = getelementptr inbounds %struct.ocfs2_extent_list, ptr %el, i32 0, i32 2
  %1 = ptrtoint ptr %l_next_free_rec.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %l_next_free_rec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp8.not.i = icmp eq i16 %2, 0
  br i1 %cmp8.not.i, label %entry.ocfs2_search_for_hole_index.exit_crit_edge, label %for.body.preheader.i

entry.ocfs2_search_for_hole_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = tail call i16 @llvm.bswap.i16(i16 %2)
  br label %ocfs2_search_for_hole_index.exit

for.body.preheader.i:                             ; preds = %entry
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #9
  %4 = tail call i16 @llvm.umax.i16(i16 %3, i16 1) #9
  %umax.i = zext i16 %4 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.ocfs2_extent_list, ptr %el, i32 0, i32 5, i32 %i.09.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %v_cluster)
  %cmp2.i = icmp ugt i32 %7, %v_cluster
  br i1 %cmp2.i, label %for.body.i.ocfs2_search_for_hole_index.exit_crit_edge, label %for.inc.i

for.body.i.ocfs2_search_for_hole_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_search_for_hole_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.ocfs2_search_for_hole_index.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ocfs2_search_for_hole_index.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_search_for_hole_index.exit

ocfs2_search_for_hole_index.exit:                 ; preds = %for.inc.i.ocfs2_search_for_hole_index.exit_crit_edge, %for.body.i.ocfs2_search_for_hole_index.exit_crit_edge, %entry.ocfs2_search_for_hole_index.exit_crit_edge
  %.pre-phi = phi i16 [ %.pre, %entry.ocfs2_search_for_hole_index.exit_crit_edge ], [ %3, %for.inc.i.ocfs2_search_for_hole_index.exit_crit_edge ], [ %3, %for.body.i.ocfs2_search_for_hole_index.exit_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %entry.ocfs2_search_for_hole_index.exit_crit_edge ], [ %i.09.i, %for.body.i.ocfs2_search_for_hole_index.exit_crit_edge ], [ %umax.i, %for.inc.i.ocfs2_search_for_hole_index.exit_crit_edge ]
  %conv = zext i16 %.pre-phi to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv)
  %cmp = icmp ne i32 %i.0.lcssa.i, %conv
  %tobool.not = icmp eq ptr %eb_bh, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %ocfs2_search_for_hole_index.exit.no_more_extents_crit_edge, label %if.then

ocfs2_search_for_hole_index.exit.no_more_extents_crit_edge: ; preds = %ocfs2_search_for_hole_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_extents

if.then:                                          ; preds = %ocfs2_search_for_hole_index.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %eb_bh, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %h_next_leaf_blk = getelementptr inbounds %struct.ocfs2_extent_block, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %h_next_leaf_blk to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %h_next_leaf_blk, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp2 = icmp eq i64 %11, 0
  br i1 %cmp2, label %if.then.no_more_extents_crit_edge, label %if.end

if.then.no_more_extents_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_extents

if.end:                                           ; preds = %if.then
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %call6 = call i32 @ocfs2_read_extent_block(ptr noundef %ci, i64 noundef %12, ptr noundef nonnull %next_eb_bh) #9
  %13 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %do.body [
    i32 0, label %if.end29
    i32 -512, label %if.end.out_crit_edge
    i32 -4, label %if.end.out_crit_edge73
    i32 524289, label %if.end.out_crit_edge74
    i32 -28, label %if.end.out_crit_edge75
    i32 -122, label %if.end.out_crit_edge76
  ]

if.end.out_crit_edge76:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.out_crit_edge75:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.out_crit_edge74:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.out_crit_edge73:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %14 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv26 = sext i32 %call6 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_figure_hole_clusters, i32 noundef 369, ptr noundef nonnull @.str, i64 noundef %conv26) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end29:                                         ; preds = %if.end
  %15 = ptrtoint ptr %next_eb_bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next_eb_bh, align 4
  %b_data30 = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data30, align 4
  %h_list = getelementptr inbounds %struct.ocfs2_extent_block, ptr %18, i32 0, i32 8
  %l_next_free_rec.i60 = getelementptr inbounds %struct.ocfs2_extent_block, ptr %18, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %l_next_free_rec.i60 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %l_next_free_rec.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp8.not.i61 = icmp eq i16 %20, 0
  br i1 %cmp8.not.i61, label %if.end29.no_more_extents_crit_edge, label %for.body.preheader.i63

if.end29.no_more_extents_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_extents

for.body.preheader.i63:                           ; preds = %if.end29
  %21 = call i16 @llvm.bswap.i16(i16 %20) #9
  %22 = call i16 @llvm.umax.i16(i16 %21, i16 1) #9
  %umax.i62 = zext i16 %22 to i32
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i70.for.body.i67_crit_edge, %for.body.preheader.i63
  %i.09.i64 = phi i32 [ %inc.i68, %for.inc.i70.for.body.i67_crit_edge ], [ 0, %for.body.preheader.i63 ]
  %arrayidx.i65 = getelementptr %struct.ocfs2_extent_block, ptr %18, i32 0, i32 8, i32 5, i32 %i.09.i64
  %23 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i65, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %v_cluster)
  %cmp2.i66 = icmp ugt i32 %25, %v_cluster
  br i1 %cmp2.i66, label %for.body.i67.no_more_extents_crit_edge, label %for.inc.i70

for.body.i67.no_more_extents_crit_edge:           ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_extents

for.inc.i70:                                      ; preds = %for.body.i67
  %inc.i68 = add nuw nsw i32 %i.09.i64, 1
  %exitcond.not.i69 = icmp eq i32 %inc.i68, %umax.i62
  br i1 %exitcond.not.i69, label %for.inc.i70.no_more_extents_crit_edge, label %for.inc.i70.for.body.i67_crit_edge

for.inc.i70.for.body.i67_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i67

for.inc.i70.no_more_extents_crit_edge:            ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_more_extents

no_more_extents:                                  ; preds = %for.inc.i70.no_more_extents_crit_edge, %for.body.i67.no_more_extents_crit_edge, %if.end29.no_more_extents_crit_edge, %if.then.no_more_extents_crit_edge, %ocfs2_search_for_hole_index.exit.no_more_extents_crit_edge
  %i.0 = phi i32 [ %i.0.lcssa.i, %if.then.no_more_extents_crit_edge ], [ %i.0.lcssa.i, %ocfs2_search_for_hole_index.exit.no_more_extents_crit_edge ], [ 0, %if.end29.no_more_extents_crit_edge ], [ %umax.i62, %for.inc.i70.no_more_extents_crit_edge ], [ %i.09.i64, %for.body.i67.no_more_extents_crit_edge ]
  %el.addr.0 = phi ptr [ %el, %if.then.no_more_extents_crit_edge ], [ %el, %ocfs2_search_for_hole_index.exit.no_more_extents_crit_edge ], [ %h_list, %if.end29.no_more_extents_crit_edge ], [ %h_list, %for.body.i67.no_more_extents_crit_edge ], [ %h_list, %for.inc.i70.no_more_extents_crit_edge ]
  %l_next_free_rec33 = getelementptr inbounds %struct.ocfs2_extent_list, ptr %el.addr.0, i32 0, i32 2
  %26 = ptrtoint ptr %l_next_free_rec33 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %l_next_free_rec33, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %conv34 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv34)
  %cmp35 = icmp eq i32 %i.0, %conv34
  br i1 %cmp35, label %no_more_extents.if.end39_crit_edge, label %if.else

no_more_extents.if.end39_crit_edge:               ; preds = %no_more_extents
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.else:                                          ; preds = %no_more_extents
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.ocfs2_extent_list, ptr %el.addr.0, i32 0, i32 5, i32 %i.0
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %no_more_extents.if.end39_crit_edge
  %.pn = phi i32 [ %31, %if.else ], [ -1, %no_more_extents.if.end39_crit_edge ]
  %storemerge = sub i32 %.pn, %v_cluster
  %32 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %num_clusters, align 4
  br label %out

out:                                              ; preds = %if.end39, %do.body, %if.end.out_crit_edge, %if.end.out_crit_edge73, %if.end.out_crit_edge74, %if.end.out_crit_edge75, %if.end.out_crit_edge76
  %ret.0 = phi i32 [ 0, %if.end39 ], [ %call6, %if.end.out_crit_edge ], [ %call6, %if.end.out_crit_edge73 ], [ %call6, %if.end.out_crit_edge74 ], [ %call6, %if.end.out_crit_edge75 ], [ %call6, %if.end.out_crit_edge76 ], [ %call6, %do.body ]
  %33 = ptrtoint ptr %next_eb_bh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_eb_bh, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %34) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_eb_bh) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_extent_block(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_xattr_get_clusters(ptr noundef %inode, i32 noundef %v_cluster, ptr nocapture noundef writeonly %p_cluster, ptr noundef writeonly %num_clusters, ptr noundef %el, ptr noundef writeonly %extent_flags) local_unnamed_addr #2 align 64 {
entry:
  %eb_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m43 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eb_bh) #9
  %0 = ptrtoint ptr %eb_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %eb_bh, align 4
  %1 = ptrtoint ptr %el to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %el, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call1 = call i32 @ocfs2_find_leaf(ptr noundef %ip_metadata_cache.i, ptr noundef %el, i32 noundef %v_cluster, ptr noundef nonnull %eb_bh) #9
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call1, label %do.body [
    i32 0, label %if.end15
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge142
    i32 524289, label %if.then.out_crit_edge143
    i32 -28, label %if.then.out_crit_edge144
    i32 -122, label %if.then.out_crit_edge145
  ]

if.then.out_crit_edge145:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge144:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge143:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge142:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_xattr_get_clusters, i32 noundef 545, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end15:                                         ; preds = %if.then
  %5 = ptrtoint ptr %eb_bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eb_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data, align 4
  %h_list = getelementptr inbounds %struct.ocfs2_extent_block, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %h_list to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %h_list, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool17.not = icmp eq i16 %10, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %b_blocknr, align 8
  %call19 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %12, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_xattr_get_clusters, ptr noundef nonnull @.str.1, i32 noundef %14, i64 noundef %16) #9
  br label %out

if.end21:                                         ; preds = %if.end15.if.end21_crit_edge, %entry.if.end21_crit_edge
  %el.addr.0 = phi ptr [ %h_list, %if.end15.if.end21_crit_edge ], [ %el, %entry.if.end21_crit_edge ]
  %call22 = call i32 @ocfs2_search_extent_list(ptr noundef %el.addr.0, i32 noundef %v_cluster) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %do.body42, label %if.else

do.body42:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #9
  %17 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m43, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.ocfs2_xattr_get_clusters, i32 noundef 565, ptr noundef nonnull @.str, i64 noundef -30) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #9
  br label %out

if.else:                                          ; preds = %if.end21
  %arrayidx = getelementptr %struct.ocfs2_extent_list, ptr %el.addr.0, i32 0, i32 5, i32 %call22
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 8
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %v_cluster)
  %cmp54 = icmp ugt i32 %20, %v_cluster
  br i1 %cmp54, label %do.body59, label %do.end67, !prof !53

do.body59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end67:                                         ; preds = %if.else
  %e_blkno = getelementptr %struct.ocfs2_extent_list, ptr %el.addr.0, i32 0, i32 5, i32 %call22, i32 2
  %21 = ptrtoint ptr %e_blkno to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %e_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool68.not = icmp eq i64 %22, 0
  br i1 %tobool68.not, label %if.then69, label %if.end75

if.then69:                                        ; preds = %do.end67
  %i_sb70 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb70, align 4
  %i_ino71 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino71, align 8
  %27 = ptrtoint ptr %el.addr.0 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %el.addr.0, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  %29 = getelementptr %struct.ocfs2_extent_list, ptr %el.addr.0, i32 0, i32 5, i32 %call22, i32 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #9
  br label %ocfs2_rec_clusters.exit

if.else.i:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %29, align 4
  %35 = call i16 @llvm.bswap.i16(i16 %34) #9
  %conv.i = zext i16 %35 to i32
  br label %ocfs2_rec_clusters.exit

ocfs2_rec_clusters.exit:                          ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %32, %if.then.i ], [ %conv.i, %if.else.i ]
  %call74 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %24, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_xattr_get_clusters, ptr noundef nonnull @.str.2, i32 noundef %26, i32 noundef %20, i32 noundef %retval.0.i) #9
  br label %out

if.end75:                                         ; preds = %do.end67
  %sub = sub i32 %v_cluster, %20
  %i_sb77 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb77, align 4
  %38 = call i64 @llvm.bswap.i64(i64 %22)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %40, i32 0, i32 36
  %41 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 2
  %43 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i133 = zext i8 %44 to i32
  %sub.i = sub i32 %42, %conv.i133
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %38, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %add = add i32 %sub, %conv1.i
  %45 = ptrtoint ptr %p_cluster to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %p_cluster, align 4
  %tobool80.not = icmp eq ptr %num_clusters, null
  br i1 %tobool80.not, label %if.end75.if.end84_crit_edge, label %if.then81

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then81:                                        ; preds = %if.end75
  %46 = ptrtoint ptr %el.addr.0 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %el.addr.0, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i134 = icmp eq i16 %47, 0
  %48 = getelementptr %struct.ocfs2_extent_list, ptr %el.addr.0, i32 0, i32 5, i32 %call22, i32 1
  br i1 %tobool.not.i134, label %if.else.i137, label %if.then.i135

if.then.i135:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #9
  br label %ocfs2_rec_clusters.exit139

if.else.i137:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %48, align 4
  %54 = call i16 @llvm.bswap.i16(i16 %53) #9
  %conv.i136 = zext i16 %54 to i32
  br label %ocfs2_rec_clusters.exit139

ocfs2_rec_clusters.exit139:                       ; preds = %if.else.i137, %if.then.i135
  %retval.0.i138 = phi i32 [ %51, %if.then.i135 ], [ %conv.i136, %if.else.i137 ]
  %sub83 = sub i32 %retval.0.i138, %sub
  %55 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub83, ptr %num_clusters, align 4
  br label %if.end84

if.end84:                                         ; preds = %ocfs2_rec_clusters.exit139, %if.end75.if.end84_crit_edge
  %tobool85.not = icmp eq ptr %extent_flags, null
  br i1 %tobool85.not, label %if.end84.out_crit_edge, label %if.then86

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %56 = getelementptr %struct.ocfs2_extent_list, ptr %el.addr.0, i32 0, i32 5, i32 %call22, i32 1
  %e_flags = getelementptr inbounds %struct.anon.82, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %e_flags, align 1
  %conv87 = zext i8 %58 to i32
  %59 = ptrtoint ptr %extent_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv87, ptr %extent_flags, align 4
  br label %out

out:                                              ; preds = %if.then86, %if.end84.out_crit_edge, %ocfs2_rec_clusters.exit, %do.body42, %if.then18, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge142, %if.then.out_crit_edge143, %if.then.out_crit_edge144, %if.then.out_crit_edge145
  %ret.1 = phi i32 [ -30, %if.then18 ], [ -30, %do.body42 ], [ 0, %if.then86 ], [ 0, %if.end84.out_crit_edge ], [ -30, %ocfs2_rec_clusters.exit ], [ %call1, %if.then.out_crit_edge ], [ %call1, %if.then.out_crit_edge142 ], [ %call1, %if.then.out_crit_edge143 ], [ %call1, %if.then.out_crit_edge144 ], [ %call1, %if.then.out_crit_edge145 ], [ %call1, %do.body ]
  %60 = ptrtoint ptr %eb_bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %eb_bh, align 4
  %tobool.not.i140 = icmp eq ptr %61, null
  br i1 %tobool.not.i140, label %out.brelse.exit_crit_edge, label %if.then.i141

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i141:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %61) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i141, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eb_bh) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_find_leaf(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_search_extent_list(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %v_cluster, ptr nocapture noundef writeonly %p_cluster, ptr noundef writeonly %num_clusters, ptr noundef writeonly %extent_flags) local_unnamed_addr #2 align 64 {
entry:
  %hole_len = alloca i32, align 4
  %di_bh = alloca ptr, align 4
  %rec = alloca %struct.ocfs2_extent_rec, align 8
  %_m = alloca i64, align 8
  %_m45 = alloca i64, align 8
  %_m76 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hole_len) #9
  %0 = ptrtoint ptr %hole_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hole_len, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #9
  %1 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %di_bh, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #9
  %2 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 2
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %4 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %5 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ip_dyn_features, align 4
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end19, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_get_clusters, i32 noundef 606, ptr noundef nonnull @.str, i64 noundef -34) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end19:                                         ; preds = %entry
  %ip_lock.i = getelementptr i8, ptr %inode, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock.i) #9
  %em_list.i.i = getelementptr i8, ptr %inode, i32 -12
  %9 = ptrtoint ptr %em_list.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn25.i.i = load ptr, ptr %em_list.i.i, align 4
  %cmp.not27.i.i = icmp eq ptr %.pn25.i.i, %em_list.i.i
  br i1 %cmp.not27.i.i, label %if.end19.if.end24_crit_edge, label %if.end19.for.body.i.i_crit_edge

if.end19.for.body.i.i_crit_edge:                  ; preds = %if.end19
  br label %for.body.i.i

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end19.for.body.i.i_crit_edge
  %.pn28.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn25.i.i, %if.end19.for.body.i.i_crit_edge ]
  %emi.029.i.i = getelementptr i8, ptr %.pn28.i.i, i32 -16
  %10 = ptrtoint ptr %emi.029.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %emi.029.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %v_cluster)
  %cmp3.not.i.i = icmp ugt i32 %11, %v_cluster
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ei_clusters.i.i = getelementptr i8, ptr %.pn28.i.i, i32 -8
  %12 = ptrtoint ptr %ei_clusters.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ei_clusters.i.i, align 4
  %add.i.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %v_cluster)
  %cmp4.i.i = icmp ugt i32 %add.i.i, %v_cluster
  br i1 %cmp4.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %emi.029.i.i.le = getelementptr i8, ptr %.pn28.i.i, i32 -16
  %ei_clusters.i.i.le = getelementptr i8, ptr %.pn28.i.i, i32 -8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn28.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn28.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %.pn28.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn28.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %20 = ptrtoint ptr %em_list.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %em_list.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn28.i.i, ptr noundef %em_list.i.i, ptr noundef %21) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.__ocfs2_extent_map_lookup.exit.i_crit_edge

__list_del_entry.exit.i.i.i.__ocfs2_extent_map_lookup.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_extent_map_lookup.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn28.i.i, ptr %prev1.i.i2.i.i.i, align 4
  %23 = ptrtoint ptr %.pn28.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %.pn28.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn28.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %em_list.i.i, ptr %prev3.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %em_list.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %.pn28.i.i, ptr %em_list.i.i, align 4
  br label %__ocfs2_extent_map_lookup.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %26 = ptrtoint ptr %.pn28.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i.i = load ptr, ptr %.pn28.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %em_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end24_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end24_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

__ocfs2_extent_map_lookup.exit.i:                 ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.__ocfs2_extent_map_lookup.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %emi.029.i.i.le, null
  br i1 %tobool.not.i, label %__ocfs2_extent_map_lookup.exit.i.if.end24_crit_edge, label %if.then.i

__ocfs2_extent_map_lookup.exit.i.if.end24_crit_edge: ; preds = %__ocfs2_extent_map_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then.i:                                        ; preds = %__ocfs2_extent_map_lookup.exit.i
  %27 = ptrtoint ptr %emi.029.i.i.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %emi.029.i.i.le, align 4
  %sub.i = sub i32 %v_cluster, %28
  %ei_phys.i = getelementptr i8, ptr %.pn28.i.i, i32 -12
  %29 = ptrtoint ptr %ei_phys.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ei_phys.i, align 4
  %add.i = add i32 %30, %sub.i
  %31 = ptrtoint ptr %p_cluster to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %p_cluster, align 4
  %tobool1.not.i = icmp eq ptr %num_clusters, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %ei_clusters.i.i.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ei_clusters.i.i.le, align 4
  %sub3.i = sub i32 %33, %sub.i
  %34 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub3.i, ptr %num_clusters, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %tobool4.not.i = icmp eq ptr %extent_flags, null
  br i1 %tobool4.not.i, label %if.end.i.ocfs2_extent_map_lookup.exit_crit_edge, label %if.then5.i

if.end.i.ocfs2_extent_map_lookup.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_extent_map_lookup.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ei_flags.i = getelementptr i8, ptr %.pn28.i.i, i32 -4
  %35 = ptrtoint ptr %ei_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ei_flags.i, align 4
  %37 = ptrtoint ptr %extent_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %extent_flags, align 4
  br label %ocfs2_extent_map_lookup.exit

ocfs2_extent_map_lookup.exit:                     ; preds = %if.then5.i, %if.end.i.ocfs2_extent_map_lookup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock.i) #9
  br label %out

if.end24:                                         ; preds = %__ocfs2_extent_map_lookup.exit.i.if.end24_crit_edge, %for.inc.i.i.if.end24_crit_edge, %if.end19.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock.i) #9
  %call25 = call i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr noundef nonnull %di_bh) #9
  %38 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call25, label %do.body44 [
    i32 0, label %if.end55
    i32 -512, label %if.end24.out_crit_edge
    i32 -4, label %if.end24.out_crit_edge161
    i32 524289, label %if.end24.out_crit_edge162
    i32 -28, label %if.end24.out_crit_edge163
    i32 -122, label %if.end24.out_crit_edge164
  ]

if.end24.out_crit_edge164:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24.out_crit_edge163:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24.out_crit_edge162:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24.out_crit_edge161:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body44:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m45) #9
  %39 = ptrtoint ptr %_m45 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m45, align 8
  %conv49 = sext i32 %call25 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m45, ptr noundef nonnull @__func__.ocfs2_get_clusters, i32 noundef 617, ptr noundef nonnull @.str, i64 noundef %conv49) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m45) #9
  br label %out

if.end55:                                         ; preds = %if.end24
  %40 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %di_bh, align 4
  %call56 = call fastcc i32 @ocfs2_get_clusters_nocache(ptr noundef %inode, ptr noundef %41, i32 noundef %v_cluster, ptr noundef nonnull %hole_len, ptr noundef nonnull %rec, ptr noundef null)
  %42 = zext i32 %call56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call56, label %do.body75 [
    i32 0, label %if.end86
    i32 -512, label %if.end55.out_crit_edge
    i32 -4, label %if.end55.out_crit_edge165
    i32 524289, label %if.end55.out_crit_edge166
    i32 -28, label %if.end55.out_crit_edge167
    i32 -122, label %if.end55.out_crit_edge168
  ]

if.end55.out_crit_edge168:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end55.out_crit_edge167:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end55.out_crit_edge166:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end55.out_crit_edge165:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body75:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m76) #9
  %43 = ptrtoint ptr %_m76 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606846976, ptr %_m76, align 8
  %conv80 = sext i32 %call56 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m76, ptr noundef nonnull @__func__.ocfs2_get_clusters, i32 noundef 624, ptr noundef nonnull @.str, i64 noundef %conv80) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m76) #9
  br label %out

if.end86:                                         ; preds = %if.end55
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %cmp87 = icmp eq i64 %45, 0
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end86
  %46 = ptrtoint ptr %p_cluster to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %p_cluster, align 4
  %tobool90.not = icmp eq ptr %num_clusters, null
  br i1 %tobool90.not, label %if.then89.if.end94_crit_edge, label %if.then91

if.then89.if.end94_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then91:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %hole_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hole_len, align 4
  %49 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %num_clusters, align 4
  br label %if.end94

if.else:                                          ; preds = %if.end86
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  %52 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rec, align 8
  %54 = call i32 @llvm.bswap.i32(i32 %53) #9
  %sub.i136 = sub i32 %v_cluster, %54
  %55 = call i64 @llvm.bswap.i64(i64 %45) #9
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %57, i32 0, i32 36
  %58 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 2
  %60 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i.i = zext i8 %61 to i32
  %sub.i.i = sub i32 %59, %conv.i.i
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shr.i.i = lshr i64 %55, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %add.i137 = add i32 %sub.i136, %conv1.i.i
  %62 = ptrtoint ptr %p_cluster to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i137, ptr %p_cluster, align 4
  %tobool.not.i138 = icmp eq ptr %num_clusters, null
  br i1 %tobool.not.i138, label %if.else.ocfs2_relative_extent_offsets.exit_crit_edge, label %if.then.i139

if.else.ocfs2_relative_extent_offsets.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_relative_extent_offsets.exit

if.then.i139:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %2, align 4
  %65 = call i16 @llvm.bswap.i16(i16 %64) #9
  %conv.i = zext i16 %65 to i32
  %sub1.i = sub i32 %conv.i, %sub.i136
  %66 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub1.i, ptr %num_clusters, align 4
  br label %ocfs2_relative_extent_offsets.exit

ocfs2_relative_extent_offsets.exit:               ; preds = %if.then.i139, %if.else.ocfs2_relative_extent_offsets.exit_crit_edge
  %e_flags = getelementptr inbounds %struct.anon.82, ptr %2, i32 0, i32 2
  %67 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %e_flags, align 1
  %conv93 = zext i8 %68 to i32
  call void @ocfs2_extent_map_insert_rec(ptr noundef %inode, ptr noundef nonnull %rec)
  br label %if.end94

if.end94:                                         ; preds = %ocfs2_relative_extent_offsets.exit, %if.then91, %if.then89.if.end94_crit_edge
  %flags.0 = phi i32 [ 0, %if.then91 ], [ 0, %if.then89.if.end94_crit_edge ], [ %conv93, %ocfs2_relative_extent_offsets.exit ]
  %tobool95.not = icmp eq ptr %extent_flags, null
  br i1 %tobool95.not, label %if.end94.out_crit_edge, label %if.then96

if.end94.out_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %extent_flags to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %flags.0, ptr %extent_flags, align 4
  br label %out

out:                                              ; preds = %if.then96, %if.end94.out_crit_edge, %do.body75, %if.end55.out_crit_edge, %if.end55.out_crit_edge165, %if.end55.out_crit_edge166, %if.end55.out_crit_edge167, %if.end55.out_crit_edge168, %do.body44, %if.end24.out_crit_edge, %if.end24.out_crit_edge161, %if.end24.out_crit_edge162, %if.end24.out_crit_edge163, %if.end24.out_crit_edge164, %ocfs2_extent_map_lookup.exit, %do.body
  %ret.0 = phi i32 [ -34, %do.body ], [ 0, %ocfs2_extent_map_lookup.exit ], [ 0, %if.then96 ], [ 0, %if.end94.out_crit_edge ], [ %call25, %if.end24.out_crit_edge ], [ %call25, %if.end24.out_crit_edge161 ], [ %call25, %if.end24.out_crit_edge162 ], [ %call25, %if.end24.out_crit_edge163 ], [ %call25, %if.end24.out_crit_edge164 ], [ %call25, %do.body44 ], [ %call56, %if.end55.out_crit_edge ], [ %call56, %if.end55.out_crit_edge165 ], [ %call56, %if.end55.out_crit_edge166 ], [ %call56, %if.end55.out_crit_edge167 ], [ %call56, %if.end55.out_crit_edge168 ], [ %call56, %do.body75 ]
  %70 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %di_bh, align 4
  %tobool.not.i141 = icmp eq ptr %71, null
  br i1 %tobool.not.i141, label %out.brelse.exit_crit_edge, label %if.then.i142

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i142:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %71) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i142, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hole_len) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_inode_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_get_clusters_nocache(ptr noundef %inode, ptr nocapture noundef readonly %di_bh, i32 noundef %v_cluster, ptr noundef writeonly %hole_len, ptr nocapture noundef writeonly %ret_rec, ptr noundef writeonly %is_last) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  %eb_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m60 = alloca i64, align 8
  %_m134 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eb_bh) #9
  %1 = ptrtoint ptr %eb_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %eb_bh, align 4
  %2 = call ptr @memset(ptr %ret_rec, i32 0, i32 16)
  %tobool.not = icmp eq ptr %is_last, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %is_last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id2, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not = icmp eq i16 %7, 0
  br i1 %cmp.not, label %if.end.if.end32_crit_edge, label %if.then2

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then2:                                         ; preds = %if.end
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call3 = call i32 @ocfs2_find_leaf(ptr noundef %ip_metadata_cache.i, ptr noundef %id2, i32 noundef %v_cluster, ptr noundef nonnull %eb_bh) #9
  %8 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call3, label %do.body [
    i32 0, label %if.end25
    i32 -512, label %if.then2.out_crit_edge
    i32 -4, label %if.then2.out_crit_edge218
    i32 524289, label %if.then2.out_crit_edge219
    i32 -28, label %if.then2.out_crit_edge220
    i32 -122, label %if.then2.out_crit_edge221
  ]

if.then2.out_crit_edge221:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then2.out_crit_edge220:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then2.out_crit_edge219:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then2.out_crit_edge218:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv22 = sext i32 %call3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_get_clusters_nocache, i32 noundef 421, ptr noundef nonnull @.str, i64 noundef %conv22) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end25:                                         ; preds = %if.then2
  %10 = ptrtoint ptr %eb_bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eb_bh, align 4
  %b_data26 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data26, align 4
  %h_list = getelementptr inbounds %struct.ocfs2_extent_block, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %h_list to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %h_list, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool28.not = icmp eq i16 %15, 0
  br i1 %tobool28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %b_blocknr, align 8
  %call30 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %17, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_get_clusters_nocache, ptr noundef nonnull @.str.4, i32 noundef %19, i64 noundef %21) #9
  br label %out

if.end32:                                         ; preds = %if.end25.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %eb.0 = phi ptr [ %13, %if.end25.if.end32_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end.if.end32_crit_edge ]
  %el.0 = phi ptr [ %h_list, %if.end25.if.end32_crit_edge ], [ %id2, %if.end.if.end32_crit_edge ]
  %call33 = call i32 @ocfs2_search_extent_list(ptr noundef %el.0, i32 noundef %v_cluster) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then36, label %if.end72

if.then36:                                        ; preds = %if.end32
  %tobool37.not = icmp eq ptr %hole_len, null
  br i1 %tobool37.not, label %if.then36.out_crit_edge, label %if.then38

if.then36.out_crit_edge:                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then38:                                        ; preds = %if.then36
  %ip_metadata_cache.i215 = getelementptr i8, ptr %inode, i32 -56
  %22 = ptrtoint ptr %eb_bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eb_bh, align 4
  %call40 = call i32 @ocfs2_figure_hole_clusters(ptr noundef %ip_metadata_cache.i215, ptr noundef %el.0, ptr noundef %23, i32 noundef %v_cluster, ptr noundef nonnull %len)
  %24 = zext i32 %call40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call40, label %do.body59 [
    i32 0, label %if.end70
    i32 -512, label %if.then38.out_crit_edge
    i32 -4, label %if.then38.out_crit_edge222
    i32 524289, label %if.then38.out_crit_edge223
    i32 -28, label %if.then38.out_crit_edge224
    i32 -122, label %if.then38.out_crit_edge225
  ]

if.then38.out_crit_edge225:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then38.out_crit_edge224:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then38.out_crit_edge223:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then38.out_crit_edge222:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body59:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60) #9
  %25 = ptrtoint ptr %_m60 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m60, align 8
  %conv64 = sext i32 %call40 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60, ptr noundef nonnull @__func__.ocfs2_get_clusters_nocache, i32 noundef 450, ptr noundef nonnull @.str, i64 noundef %conv64) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60) #9
  br label %out

if.end70:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = ptrtoint ptr %hole_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hole_len, align 4
  br label %out

if.end72:                                         ; preds = %if.end32
  %arrayidx = getelementptr %struct.ocfs2_extent_list, ptr %el.0, i32 0, i32 5, i32 %call33
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %v_cluster)
  %cmp74 = icmp ugt i32 %31, %v_cluster
  br i1 %cmp74, label %do.body79, label %do.end87, !prof !53

do.body79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.end87:                                         ; preds = %if.end72
  %e_blkno = getelementptr %struct.ocfs2_extent_list, ptr %el.0, i32 0, i32 5, i32 %call33, i32 2
  %32 = ptrtoint ptr %e_blkno to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %e_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool88.not = icmp eq i64 %33, 0
  br i1 %tobool88.not, label %if.then89, label %if.end95

if.then89:                                        ; preds = %do.end87
  %i_sb90 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb90, align 4
  %i_ino91 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %36 = ptrtoint ptr %i_ino91 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino91, align 8
  %38 = ptrtoint ptr %el.0 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %el.0, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i = icmp eq i16 %39, 0
  %40 = getelementptr %struct.ocfs2_extent_list, ptr %el.0, i32 0, i32 5, i32 %call33, i32 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #9
  br label %ocfs2_rec_clusters.exit

if.else.i:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %40, align 4
  %46 = call i16 @llvm.bswap.i16(i16 %45) #9
  %conv.i = zext i16 %46 to i32
  br label %ocfs2_rec_clusters.exit

ocfs2_rec_clusters.exit:                          ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %43, %if.then.i ], [ %conv.i, %if.else.i ]
  %call94 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %35, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_get_clusters_nocache, ptr noundef nonnull @.str.5, i32 noundef %37, i32 noundef %31, i32 noundef %retval.0.i) #9
  br label %out

if.end95:                                         ; preds = %do.end87
  %47 = call ptr @memcpy(ptr %ret_rec, ptr %arrayidx, i32 16)
  br i1 %tobool.not, label %if.end95.out_crit_edge, label %if.then97

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then97:                                        ; preds = %if.end95
  %l_next_free_rec = getelementptr inbounds %struct.ocfs2_extent_list, ptr %el.0, i32 0, i32 2
  %48 = ptrtoint ptr %l_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %l_next_free_rec, align 4
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %conv98 = zext i16 %50 to i32
  %sub = add nsw i32 %conv98, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %sub)
  %cmp99 = icmp eq i32 %call33, %sub
  br i1 %cmp99, label %if.then101, label %if.then97.out_crit_edge

if.then97.out_crit_edge:                          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then101:                                       ; preds = %if.then97
  br i1 %cmp.not, label %if.then104, label %if.else

if.then104:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %is_last, align 4
  br label %out

if.else:                                          ; preds = %if.then101
  %h_blkno = getelementptr inbounds %struct.ocfs2_extent_block, ptr %eb.0, i32 0, i32 5
  %52 = ptrtoint ptr %h_blkno to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %h_blkno, align 8
  %i_last_eb_blk = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 18
  %54 = ptrtoint ptr %i_last_eb_blk to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_last_eb_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %55)
  %cmp105 = icmp eq i64 %53, %55
  br i1 %cmp105, label %if.then107, label %if.else108

if.then107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %is_last, align 4
  br label %out

if.else108:                                       ; preds = %if.else
  %h_next_leaf_blk = getelementptr inbounds %struct.ocfs2_extent_block, ptr %eb.0, i32 0, i32 7
  %57 = ptrtoint ptr %h_next_leaf_blk to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %h_next_leaf_blk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %55)
  %cmp110 = icmp eq i64 %58, %55
  br i1 %cmp110, label %if.then112, label %if.else108.out_crit_edge

if.else108.out_crit_edge:                         ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then112:                                       ; preds = %if.else108
  %call113 = call fastcc i32 @ocfs2_last_eb_is_empty(ptr noundef %inode, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.end144

if.then116:                                       ; preds = %if.then112
  %59 = zext i32 %call113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call113, label %do.body133 [
    i32 -512, label %if.then116.out_crit_edge
    i32 -4, label %if.then116.out_crit_edge226
    i32 -28, label %if.then116.out_crit_edge227
    i32 -122, label %if.then116.out_crit_edge228
  ]

if.then116.out_crit_edge228:                      ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then116.out_crit_edge227:                      ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then116.out_crit_edge226:                      ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then116.out_crit_edge:                         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body133:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m134) #9
  %60 = ptrtoint ptr %_m134 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 1152921504606846976, ptr %_m134, align 8
  %conv138 = sext i32 %call113 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m134, ptr noundef nonnull @__func__.ocfs2_get_clusters_nocache, i32 noundef 499, ptr noundef nonnull @.str, i64 noundef %conv138) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m134) #9
  br label %out

if.end144:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call113)
  %cmp145 = icmp eq i32 %call113, 1
  br i1 %cmp145, label %if.then147, label %if.end144.out_crit_edge

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %is_last, align 4
  br label %out

out:                                              ; preds = %if.then147, %if.end144.out_crit_edge, %do.body133, %if.then116.out_crit_edge, %if.then116.out_crit_edge226, %if.then116.out_crit_edge227, %if.then116.out_crit_edge228, %if.else108.out_crit_edge, %if.then107, %if.then104, %if.then97.out_crit_edge, %if.end95.out_crit_edge, %ocfs2_rec_clusters.exit, %if.end70, %do.body59, %if.then38.out_crit_edge, %if.then38.out_crit_edge222, %if.then38.out_crit_edge223, %if.then38.out_crit_edge224, %if.then38.out_crit_edge225, %if.then36.out_crit_edge, %if.then29, %do.body, %if.then2.out_crit_edge, %if.then2.out_crit_edge218, %if.then2.out_crit_edge219, %if.then2.out_crit_edge220, %if.then2.out_crit_edge221
  %ret.0 = phi i32 [ -30, %if.then29 ], [ -30, %ocfs2_rec_clusters.exit ], [ %call3, %if.then2.out_crit_edge ], [ %call3, %if.then2.out_crit_edge218 ], [ %call3, %if.then2.out_crit_edge219 ], [ %call3, %if.then2.out_crit_edge220 ], [ %call3, %if.then2.out_crit_edge221 ], [ %call3, %do.body ], [ %call40, %if.then38.out_crit_edge ], [ %call40, %if.then38.out_crit_edge222 ], [ %call40, %if.then38.out_crit_edge223 ], [ %call40, %if.then38.out_crit_edge224 ], [ %call40, %if.then38.out_crit_edge225 ], [ %call40, %do.body59 ], [ %call113, %if.then116.out_crit_edge ], [ %call113, %if.then116.out_crit_edge226 ], [ %call113, %if.then116.out_crit_edge227 ], [ %call113, %if.then116.out_crit_edge228 ], [ %call113, %do.body133 ], [ 0, %if.end95.out_crit_edge ], [ 0, %if.then104 ], [ 0, %if.else108.out_crit_edge ], [ 0, %if.then147 ], [ 0, %if.end144.out_crit_edge ], [ 0, %if.then107 ], [ 0, %if.then97.out_crit_edge ], [ 0, %if.then36.out_crit_edge ], [ 0, %if.end70 ]
  %62 = ptrtoint ptr %eb_bh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %eb_bh, align 4
  %tobool.not.i216 = icmp eq ptr %63, null
  br i1 %tobool.not.i216, label %out.brelse.exit_crit_edge, label %if.then.i217

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i217:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %63) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i217, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eb_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_extent_map_get_blocks(ptr noundef %inode, i64 noundef %v_blkno, ptr nocapture noundef writeonly %p_blkno, ptr noundef writeonly %ret_count, ptr noundef %extent_flags) local_unnamed_addr #2 align 64 {
entry:
  %num_clusters = alloca i32, align 4
  %p_cluster = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %7 to i32
  %sub.i = sub i32 %5, %conv.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %conv = trunc i64 %shl.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_clusters) #9
  %8 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %num_clusters, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_cluster) #9
  %9 = ptrtoint ptr %p_cluster to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %p_cluster, align 4, !annotation !57
  %shr.i = lshr i64 %v_blkno, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %call3 = call i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %conv1.i, ptr noundef nonnull %p_cluster, ptr noundef nonnull %num_clusters, ptr noundef %extent_flags)
  %10 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call3, label %do.body [
    i32 0, label %if.end21
    i32 -512, label %entry.out_crit_edge
    i32 -4, label %entry.out_crit_edge78
    i32 524289, label %entry.out_crit_edge79
    i32 -28, label %entry.out_crit_edge80
    i32 -122, label %entry.out_crit_edge81
  ]

entry.out_crit_edge81:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge80:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge79:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge78:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv19 = sext i32 %call3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_extent_map_get_blocks, i32 noundef 671, ptr noundef nonnull @.str, i64 noundef %conv19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end21:                                         ; preds = %entry
  %12 = ptrtoint ptr %p_cluster to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %if.then23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i62 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i62, align 16
  %s_clustersize_bits.i63 = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 36
  %18 = ptrtoint ptr %s_clustersize_bits.i63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_clustersize_bits.i63, align 8
  %s_blocksize_bits.i64 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %s_blocksize_bits.i64 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits.i64, align 4
  %conv.i65 = zext i8 %21 to i32
  %sub.i66 = sub i32 %19, %conv.i65
  %conv1.i67 = zext i32 %13 to i64
  %sh_prom.i68 = zext i32 %sub.i66 to i64
  %shl.i69 = shl i64 %conv1.i67, %sh_prom.i68
  %sub = add i32 %conv, -1
  %conv26 = sext i32 %sub to i64
  %and27 = and i64 %conv26, %v_blkno
  %add = add i64 %shl.i69, %and27
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end21.if.end28_crit_edge
  %boff.0 = phi i64 [ %add, %if.then23 ], [ 0, %if.end21.if.end28_crit_edge ]
  %22 = ptrtoint ptr %p_blkno to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %boff.0, ptr %p_blkno, align 8
  %tobool29.not = icmp eq ptr %ret_count, null
  br i1 %tobool29.not, label %if.end28.out_crit_edge, label %if.then30

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %25 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_clusters, align 4
  %s_fs_info.i70 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i70, align 16
  %s_clustersize_bits.i71 = getelementptr inbounds %struct.ocfs2_super, ptr %28, i32 0, i32 36
  %29 = ptrtoint ptr %s_clustersize_bits.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_clustersize_bits.i71, align 8
  %s_blocksize_bits.i72 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %s_blocksize_bits.i72 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %s_blocksize_bits.i72, align 4
  %conv.i73 = zext i8 %32 to i32
  %sub.i74 = sub i32 %30, %conv.i73
  %conv1.i75 = zext i32 %26 to i64
  %sh_prom.i76 = zext i32 %sub.i74 to i64
  %shl.i77 = shl i64 %conv1.i75, %sh_prom.i76
  %sub33 = add i32 %conv, -1
  %conv34 = sext i32 %sub33 to i64
  %and35 = and i64 %conv34, %v_blkno
  %sub36 = sub i64 %shl.i77, %and35
  %33 = ptrtoint ptr %ret_count to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %sub36, ptr %ret_count, align 8
  br label %out

out:                                              ; preds = %if.then30, %if.end28.out_crit_edge, %do.body, %entry.out_crit_edge, %entry.out_crit_edge78, %entry.out_crit_edge79, %entry.out_crit_edge80, %entry.out_crit_edge81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_cluster) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clusters) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %map_start, i64 noundef %map_len) local_unnamed_addr #2 align 64 {
entry:
  %map_len.addr = alloca i64, align 8
  %is_last = alloca i32, align 4
  %hole_size = alloca i32, align 4
  %di_bh = alloca ptr, align 4
  %rec = alloca %struct.ocfs2_extent_rec, align 8
  %_m = alloca i64, align 8
  %_m53 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map_len.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %map_len, ptr %map_len.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_last) #9
  %1 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %is_last, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hole_size) #9
  %2 = ptrtoint ptr %hole_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hole_size, align 4, !annotation !57
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #9
  %7 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %di_bh, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #9
  %8 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 2
  %10 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %call = call i32 @fiemap_prep(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %map_start, ptr noundef nonnull %map_len.addr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup110_crit_edge

entry.cleanup110_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end:                                           ; preds = %entry
  %call1 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef nonnull %di_bh, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %11 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call1, label %do.body [
    i32 0, label %if.end16
    i32 -512, label %if.end.cleanup110_crit_edge
    i32 -4, label %if.end.cleanup110_crit_edge193
    i32 524289, label %if.end.cleanup110_crit_edge194
    i32 -28, label %if.end.cleanup110_crit_edge195
    i32 -122, label %if.end.cleanup110_crit_edge196
  ]

if.end.cleanup110_crit_edge196:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end.cleanup110_crit_edge195:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end.cleanup110_crit_edge194:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end.cleanup110_crit_edge193:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end.cleanup110_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_fiemap, i32 noundef 751, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup110

if.end16:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_alloc_sem = getelementptr i8, ptr %inode, i32 -424
  call void @down_read(ptr noundef %ip_alloc_sem) #9
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %13 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ip_dyn_features, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool21.not = icmp eq i16 %15, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end16.if.then24_crit_edge

if.end16.if.then24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end16
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inode, align 8
  %18 = and i16 %17, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %18)
  %cmp.i = icmp eq i16 %18, -24576
  br i1 %cmp.i, label %ocfs2_inode_is_fast_symlink.exit, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

ocfs2_inode_is_fast_symlink.exit:                 ; preds = %lor.lhs.false
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %19 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp2.i.not = icmp eq i64 %20, 0
  br i1 %cmp2.i.not, label %ocfs2_inode_is_fast_symlink.exit.if.then24_crit_edge, label %ocfs2_inode_is_fast_symlink.exit.if.end26_crit_edge

ocfs2_inode_is_fast_symlink.exit.if.end26_crit_edge: ; preds = %ocfs2_inode_is_fast_symlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

ocfs2_inode_is_fast_symlink.exit.if.then24_crit_edge: ; preds = %ocfs2_inode_is_fast_symlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %ocfs2_inode_is_fast_symlink.exit.if.then24_crit_edge, %if.end16.if.then24_crit_edge
  %21 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %di_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data.i, align 4
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %inode, align 8
  %27 = and i16 %26, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %27)
  %cmp.i.i = icmp eq i16 %27, -24576
  br i1 %cmp.i.i, label %ocfs2_inode_is_fast_symlink.exit.i, label %if.then24.if.else.i_crit_edge

if.then24.if.else.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

ocfs2_inode_is_fast_symlink.exit.i:               ; preds = %if.then24
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %28 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp2.i.not.i = icmp eq i64 %29, 0
  br i1 %cmp2.i.not.i, label %if.then.i, label %ocfs2_inode_is_fast_symlink.exit.i.if.else.i_crit_edge

ocfs2_inode_is_fast_symlink.exit.i.if.else.i_crit_edge: ; preds = %ocfs2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %ocfs2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %33, -192
  br label %if.end.i

if.else.i:                                        ; preds = %ocfs2_inode_is_fast_symlink.exit.i.if.else.i_crit_edge, %if.then24.if.else.i_crit_edge
  %id2.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %24, i32 0, i32 35
  %34 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %id2.i, align 8
  %36 = call i16 @llvm.bswap.i16(i16 %35) #9
  %conv.i = zext i16 %36 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %id_count.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %conv4.i = zext i32 %id_count.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv4.i, i64 %map_start)
  %cmp.i165 = icmp ugt i64 %conv4.i, %map_start
  br i1 %cmp.i165, label %if.then6.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then6.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr.i, align 8
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %42 to i64
  %shl.i = shl i64 %38, %sh_prom.i
  br i1 %cmp.i.i, label %ocfs2_inode_is_fast_symlink.exit40.i, label %if.then6.i.ocfs2_inode_is_fast_symlink.exit40.thread.i_crit_edge

if.then6.i.ocfs2_inode_is_fast_symlink.exit40.thread.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_inode_is_fast_symlink.exit40.thread.i

ocfs2_inode_is_fast_symlink.exit40.i:             ; preds = %if.then6.i
  %i_blocks.i36.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %43 = ptrtoint ptr %i_blocks.i36.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_blocks.i36.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %cmp2.i37.not.i = icmp eq i64 %44, 0
  %add.i = add i64 %shl.i, 192
  br i1 %cmp2.i37.not.i, label %ocfs2_inode_is_fast_symlink.exit40.i._crit_edge, label %ocfs2_inode_is_fast_symlink.exit40.i.ocfs2_inode_is_fast_symlink.exit40.thread.i_crit_edge

ocfs2_inode_is_fast_symlink.exit40.i.ocfs2_inode_is_fast_symlink.exit40.thread.i_crit_edge: ; preds = %ocfs2_inode_is_fast_symlink.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_inode_is_fast_symlink.exit40.thread.i

ocfs2_inode_is_fast_symlink.exit40.i._crit_edge:  ; preds = %ocfs2_inode_is_fast_symlink.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %45

ocfs2_inode_is_fast_symlink.exit40.thread.i:      ; preds = %ocfs2_inode_is_fast_symlink.exit40.i.ocfs2_inode_is_fast_symlink.exit40.thread.i_crit_edge, %if.then6.i.ocfs2_inode_is_fast_symlink.exit40.thread.i_crit_edge
  %add1345.i = add i64 %shl.i, 200
  br label %45

45:                                               ; preds = %ocfs2_inode_is_fast_symlink.exit40.thread.i, %ocfs2_inode_is_fast_symlink.exit40.i._crit_edge
  %46 = phi i64 [ %add1345.i, %ocfs2_inode_is_fast_symlink.exit40.thread.i ], [ %add.i, %ocfs2_inode_is_fast_symlink.exit40.i._crit_edge ]
  %call16.i = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef 0, i64 noundef %46, i64 noundef %conv4.i, i32 noundef 513) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %.out_unlock_crit_edge, label %.if.end21.i_crit_edge

.if.end21.i_crit_edge:                            ; preds = %45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

.out_unlock_crit_edge:                            ; preds = %45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end21.i:                                       ; preds = %.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  br label %out_unlock

if.end26:                                         ; preds = %ocfs2_inode_is_fast_symlink.exit.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 36
  %47 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %48 to i64
  %shr = lshr i64 %map_start, %sh_prom
  %conv27 = trunc i64 %shr to i32
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %51 = ptrtoint ptr %map_len.addr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %map_len.addr, align 8
  %add = add i64 %52, %map_start
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %54, i32 0, i32 36
  %55 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %54, i32 0, i32 35
  %57 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %58, -1
  %conv.i166 = sext i32 %sub.i to i64
  %add.i167 = add i64 %add, %conv.i166
  %sh_prom.i168 = zext i32 %56 to i64
  %shr.i = lshr i64 %add.i167, %sh_prom.i168
  %conv2.i = trunc i64 %shr.i to i32
  %59 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv27, i32 %conv2.i)
  %cmp30181 = icmp ult i32 %conv27, %conv2.i
  br i1 %cmp30181, label %land.rhs.lr.ph, label %if.end26.while.end_crit_edge

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end26
  %e_flags = getelementptr inbounds %struct.anon.82, ptr %8, i32 0, i32 2
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 1
  br label %while.body

land.rhsthread-pre-split:                         ; preds = %cleanup
  %60 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load i32, ptr %is_last, align 4
  %tobool32.not = icmp eq i32 %.pr, 0
  br i1 %tobool32.not, label %land.rhsthread-pre-split.while.body_crit_edge, label %land.rhsthread-pre-split.while.end_crit_edge

land.rhsthread-pre-split.while.end_crit_edge:     ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhsthread-pre-split.while.body_crit_edge:    ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %land.rhsthread-pre-split.while.body_crit_edge, %land.rhs.lr.ph
  %cpos.0182188 = phi i32 [ %conv27, %land.rhs.lr.ph ], [ %cpos.1, %land.rhsthread-pre-split.while.body_crit_edge ]
  %61 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %di_bh, align 4
  %call33 = call fastcc i32 @ocfs2_get_clusters_nocache(ptr noundef %inode, ptr noundef %62, i32 noundef %cpos.0182188, ptr noundef nonnull %hole_size, ptr noundef nonnull %rec, ptr noundef nonnull %is_last)
  %63 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call33, label %do.body52 [
    i32 0, label %if.end63
    i32 -512, label %while.body.out_unlock_crit_edge
    i32 -4, label %while.body.out_unlock_crit_edge197
    i32 524289, label %while.body.out_unlock_crit_edge198
    i32 -28, label %while.body.out_unlock_crit_edge199
    i32 -122, label %while.body.out_unlock_crit_edge200
  ]

while.body.out_unlock_crit_edge200:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge199:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge198:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge197:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.body52:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #9
  %64 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 1152921504606846976, ptr %_m53, align 8
  %conv57 = sext i32 %call33 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.ocfs2_fiemap, i32 noundef 776, ptr noundef nonnull @.str, i64 noundef %conv57) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #9
  br label %out_unlock

if.end63:                                         ; preds = %while.body
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp64 = icmp eq i64 %66, 0
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %hole_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hole_size, align 4
  %add67 = add i32 %68, %cpos.0182188
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  %69 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %e_flags, align 1
  %71 = and i8 %70, 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 11
  %74 = and i8 %70, 2
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 12
  %77 = or i32 %76, %73
  %78 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool81.not = icmp ne i32 %79, 0
  %or83 = zext i1 %tobool81.not to i32
  %fe_flags.2 = or i32 %77, %or83
  %80 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %8, align 4
  %82 = call i16 @llvm.bswap.i16(i16 %81)
  %conv85 = zext i16 %82 to i64
  %83 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom87 = zext i32 %84 to i64
  %shl = shl i64 %conv85, %sh_prom87
  %85 = call i64 @llvm.bswap.i64(i64 %66)
  %86 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom90 = zext i8 %89 to i64
  %shl91 = shl i64 %85, %sh_prom90
  %90 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rec, align 8
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %conv92 = zext i32 %92 to i64
  %shl95 = shl i64 %conv92, %sh_prom87
  %call96 = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef %shl95, i64 noundef %shl91, i64 noundef %shl, i32 noundef %fe_flags.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end68.while.end_crit_edge

if.end68.while.end_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end99:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %conv102 = zext i16 %82 to i32
  %add103 = add i32 %92, %conv102
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then66
  %cpos.1 = phi i32 [ %add67, %if.then66 ], [ %add103, %if.end99 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cpos.1, i32 %conv2.i)
  %cmp30 = icmp ult i32 %cpos.1, %conv2.i
  br i1 %cmp30, label %land.rhsthread-pre-split, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end68.while.end_crit_edge, %land.rhsthread-pre-split.while.end_crit_edge, %if.end26.while.end_crit_edge
  %ret.2 = phi i32 [ 0, %if.end26.while.end_crit_edge ], [ %call96, %if.end68.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ], [ 0, %land.rhsthread-pre-split.while.end_crit_edge ]
  %93 = call i32 @llvm.smin.i32(i32 %ret.2, i32 0)
  br label %out_unlock

out_unlock:                                       ; preds = %while.end, %do.body52, %while.body.out_unlock_crit_edge, %while.body.out_unlock_crit_edge197, %while.body.out_unlock_crit_edge198, %while.body.out_unlock_crit_edge199, %while.body.out_unlock_crit_edge200, %if.end21.i, %.out_unlock_crit_edge
  %ret.3 = phi i32 [ %93, %while.end ], [ 0, %if.end21.i ], [ %call16.i, %.out_unlock_crit_edge ], [ %call33, %do.body52 ], [ %call33, %while.body.out_unlock_crit_edge ], [ %call33, %while.body.out_unlock_crit_edge197 ], [ %call33, %while.body.out_unlock_crit_edge198 ], [ %call33, %while.body.out_unlock_crit_edge199 ], [ %call33, %while.body.out_unlock_crit_edge200 ]
  %94 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %95, null
  br i1 %tobool.not.i, label %out_unlock.brelse.exit_crit_edge, label %if.then.i169

out_unlock.brelse.exit_crit_edge:                 ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i169:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %95) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i169, %out_unlock.brelse.exit_crit_edge
  call void @up_read(ptr noundef %ip_alloc_sem) #9
  call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef 0) #9
  br label %cleanup110

cleanup110:                                       ; preds = %brelse.exit, %do.body, %if.end.cleanup110_crit_edge, %if.end.cleanup110_crit_edge193, %if.end.cleanup110_crit_edge194, %if.end.cleanup110_crit_edge195, %if.end.cleanup110_crit_edge196, %entry.cleanup110_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup110_crit_edge ], [ %ret.3, %brelse.exit ], [ %call1, %if.end.cleanup110_crit_edge ], [ %call1, %if.end.cleanup110_crit_edge193 ], [ %call1, %if.end.cleanup110_crit_edge194 ], [ %call1, %if.end.cleanup110_crit_edge195 ], [ %call1, %if.end.cleanup110_crit_edge196 ], [ %call1, %do.body ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hole_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_last) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_prep(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_fill_next_extent(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_overwrite_io(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %map_start, i64 noundef %map_len) local_unnamed_addr #2 align 64 {
entry:
  %is_last = alloca i32, align 4
  %rec = alloca %struct.ocfs2_extent_rec, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_last) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #9
  %4 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 2
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %6 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %7 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ip_dyn_features, align 4
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i64 %map_len, %map_start
  %call1 = tail call i32 @ocfs2_size_fits_inline_data(ptr noundef %di_bh, i64 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool2.not, i32 -11, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 36
  %10 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %11 to i64
  %shr = lshr i64 %map_start, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %add6 = add i64 %map_len, %map_start
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 35
  %12 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %13, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %add6, %conv.i
  %shr.i = lshr i64 %add.i, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  %14 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv2.i)
  %cmp73 = icmp ult i32 %conv4, %conv2.i
  br i1 %cmp73, label %land.rhs.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %e_flags = getelementptr inbounds %struct.anon.82, ptr %4, i32 0, i32 2
  br label %while.body

land.rhsthread-pre-split:                         ; preds = %if.end42
  %15 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %is_last, align 4
  %tobool9.not = icmp eq i32 %.pr, 0
  br i1 %tobool9.not, label %land.rhsthread-pre-split.while.body_crit_edge, label %land.rhsthread-pre-split.cleanup_crit_edge

land.rhsthread-pre-split.cleanup_crit_edge:       ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhsthread-pre-split.while.body_crit_edge:    ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %land.rhsthread-pre-split.while.body_crit_edge, %land.rhs.lr.ph
  %cpos.07487 = phi i32 [ %conv4, %land.rhs.lr.ph ], [ %add44, %land.rhsthread-pre-split.while.body_crit_edge ]
  %call10 = call fastcc i32 @ocfs2_get_clusters_nocache(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %cpos.07487, ptr noundef null, ptr noundef nonnull %rec, ptr noundef nonnull %is_last)
  %16 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call10, label %do.body [
    i32 0, label %if.end33
    i32 -512, label %while.body.cleanup_crit_edge
    i32 -4, label %while.body.cleanup_crit_edge90
    i32 524289, label %while.body.cleanup_crit_edge91
    i32 -28, label %while.body.cleanup_crit_edge92
    i32 -122, label %while.body.cleanup_crit_edge93
  ]

while.body.cleanup_crit_edge93:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge92:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge91:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge90:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %17 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv30 = sext i32 %call10 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_overwrite_io, i32 noundef 842, ptr noundef nonnull @.str, i64 noundef %conv30) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup

if.end33:                                         ; preds = %while.body
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp34 = icmp eq i64 %19, 0
  br i1 %cmp34, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %e_flags, align 1
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool40.not = icmp eq i8 %22, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %23 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rec, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %4, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %conv43 = zext i16 %28 to i32
  %add44 = add i32 %25, %conv43
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %conv2.i)
  %cmp = icmp ult i32 %add44, %conv2.i
  br i1 %cmp, label %land.rhsthread-pre-split, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.body, %while.body.cleanup_crit_edge, %while.body.cleanup_crit_edge90, %while.body.cleanup_crit_edge91, %while.body.cleanup_crit_edge92, %while.body.cleanup_crit_edge93, %land.rhsthread-pre-split.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %call10, %do.body ], [ 0, %if.end.cleanup_crit_edge ], [ %call10, %while.body.cleanup_crit_edge ], [ %call10, %while.body.cleanup_crit_edge90 ], [ %call10, %while.body.cleanup_crit_edge91 ], [ %call10, %while.body.cleanup_crit_edge92 ], [ %call10, %while.body.cleanup_crit_edge93 ], [ 0, %if.end42.cleanup_crit_edge ], [ -11, %if.end37.cleanup_crit_edge ], [ -11, %if.end33.cleanup_crit_edge ], [ -11, %land.rhsthread-pre-split.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_last) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_size_fits_inline_data(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_seek_data_hole_offset(ptr nocapture noundef readonly %file, ptr nocapture noundef %offset, i32 noundef %whence) local_unnamed_addr #2 align 64 {
entry:
  %is_last = alloca i32, align 4
  %hole_size = alloca i32, align 4
  %di_bh = alloca ptr, align 4
  %rec = alloca %struct.ocfs2_extent_rec, align 8
  %_m = alloca i64, align 8
  %_m85 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_last) #9
  %4 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is_last, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 36
  %9 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_clustersize_bits, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hole_size) #9
  %11 = ptrtoint ptr %hole_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %hole_size, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #9
  %12 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %di_bh, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #9
  %13 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %rec, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %whence)
  %cmp.not.not247 = icmp eq i32 %whence, 3
  %15 = add i32 %whence, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %15)
  %16 = icmp ult i32 %15, -2
  %17 = call ptr @memset(ptr %rec, i32 255, i32 16)
  br i1 %16, label %do.body5, label %do.end10, !prof !53

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 873, 0\0A.popsection", ""() #9, !srcloc !59
  unreachable

do.end10:                                         ; preds = %entry
  %call = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %3, ptr noundef nonnull %di_bh, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %18 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call, label %do.body27 [
    i32 0, label %if.end35
    i32 -512, label %do.end10.out_crit_edge
    i32 -4, label %do.end10.out_crit_edge272
    i32 524289, label %do.end10.out_crit_edge273
    i32 -28, label %do.end10.out_crit_edge274
    i32 -122, label %do.end10.out_crit_edge275
  ]

do.end10.out_crit_edge275:                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end10.out_crit_edge274:                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end10.out_crit_edge273:                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end10.out_crit_edge272:                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end10.out_crit_edge:                           ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body27:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %19 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv30 = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_seek_data_hole_offset, i32 noundef 877, ptr noundef nonnull @.str, i64 noundef %conv30) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end35:                                         ; preds = %do.end10
  %ip_alloc_sem = getelementptr i8, ptr %3, i32 -424
  call void @down_read(ptr noundef %ip_alloc_sem) #9
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offset, align 8
  %call37 = call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %call37)
  %cmp38.not = icmp slt i64 %21, %call37
  br i1 %cmp38.not, label %if.end41, label %if.end35.out_unlock_crit_edge

if.end35.out_unlock_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end41:                                         ; preds = %if.end35
  %ip_dyn_features = getelementptr i8, ptr %3, i32 -172
  %22 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ip_dyn_features, align 4
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool45.not = icmp eq i16 %24, 0
  br i1 %tobool45.not, label %if.end52, label %if.then46

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %whence)
  %cmp47 = icmp eq i32 %whence, 4
  br i1 %cmp47, label %if.then49, label %if.then46.out_unlock_crit_edge

if.then46.out_unlock_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call fastcc i64 @i_size_read(ptr noundef %3)
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call50, ptr %offset, align 8
  br label %out_unlock

if.end52:                                         ; preds = %if.end41
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %offset, align 8
  %conv53 = and i32 %10, 65535
  %sh_prom = zext i32 %conv53 to i64
  %shr = ashr i64 %27, %sh_prom
  %conv54 = trunc i64 %shr to i32
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %call56 = call fastcc i64 @i_size_read(ptr noundef %3)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %31, i32 0, i32 36
  %32 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %31, i32 0, i32 35
  %34 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %35, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %call56, %conv.i
  %sh_prom.i = zext i32 %33 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv54, i32 %conv2.i)
  %cmp58225 = icmp ult i32 %conv54, %conv2.i
  br i1 %cmp58225, label %land.rhs60.lr.ph, label %if.end52.while.end_crit_edge

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs60.lr.ph:                                 ; preds = %if.end52
  %e_flags = getelementptr inbounds %struct.anon.82, ptr %13, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %whence)
  %cmp110 = icmp eq i32 %whence, 4
  %36 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool61.not253 = icmp eq i32 %.pr, 0
  br i1 %tobool61.not253, label %land.rhs60.lr.ph.while.body_crit_edge, label %land.rhs60.lr.ph.while.end_crit_edge

land.rhs60.lr.ph.while.end_crit_edge:             ; preds = %land.rhs60.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs60.lr.ph.while.body_crit_edge:            ; preds = %land.rhs60.lr.ph
  br label %while.body

while.body:                                       ; preds = %if.end121.while.body_crit_edge, %land.rhs60.lr.ph.while.body_crit_edge
  %cpos.0226254 = phi i32 [ %spec.select212, %if.end121.while.body_crit_edge ], [ %conv54, %land.rhs60.lr.ph.while.body_crit_edge ]
  %37 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %di_bh, align 4
  %call65 = call fastcc i32 @ocfs2_get_clusters_nocache(ptr noundef %3, ptr noundef %38, i32 noundef %cpos.0226254, ptr noundef nonnull %hole_size, ptr noundef nonnull %rec, ptr noundef nonnull %is_last)
  %39 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call65, label %do.body84 [
    i32 0, label %if.end95
    i32 -512, label %while.body.out_unlock_crit_edge
    i32 -4, label %while.body.out_unlock_crit_edge276
    i32 524289, label %while.body.out_unlock_crit_edge277
    i32 -28, label %while.body.out_unlock_crit_edge278
    i32 -122, label %while.body.out_unlock_crit_edge279
  ]

while.body.out_unlock_crit_edge279:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge278:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge277:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge276:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body.out_unlock_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.body84:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85) #9
  %40 = ptrtoint ptr %_m85 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606846976, ptr %_m85, align 8
  %conv89 = sext i32 %call65 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85, ptr noundef nonnull @__func__.ocfs2_seek_data_hole_offset, i32 noundef 902, ptr noundef nonnull @.str, i64 noundef %conv89) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85) #9
  br label %out_unlock

if.end95:                                         ; preds = %while.body
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp99 = icmp eq i64 %42, 0
  br i1 %cmp99, label %if.end107.thread, label %if.end107

if.end107.thread:                                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %hole_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hole_size, align 4
  br label %54

if.end107:                                        ; preds = %if.end95
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %13, align 4
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %conv102 = zext i16 %47 to i32
  %48 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rec, align 8
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %sub.neg = sub i32 %50, %cpos.0226254
  %sub103 = add i32 %sub.neg, %conv102
  %51 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %e_flags, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool108.not.not = icmp eq i8 %53, 0
  br i1 %tobool108.not.not, label %55, label %if.end107._crit_edge

if.end107._crit_edge:                             ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %54

54:                                               ; preds = %if.end107._crit_edge, %if.end107.thread
  %clen.1240 = phi i32 [ %44, %if.end107.thread ], [ %sub103, %if.end107._crit_edge ]
  br i1 %cmp110, label %.if.then116_crit_edge, label %.if.end121_crit_edge

.if.end121_crit_edge:                             ; preds = %54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

.if.then116_crit_edge:                            ; preds = %54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

55:                                               ; preds = %if.end107
  br i1 %cmp.not.not247, label %.if.then116_crit_edge280, label %.if.end121_crit_edge281

.if.end121_crit_edge281:                          ; preds = %55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

.if.then116_crit_edge280:                         ; preds = %55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

if.then116:                                       ; preds = %.if.then116_crit_edge280, %.if.then116_crit_edge
  %conv96.le = zext i32 %cpos.0226254 to i64
  %shl.le = shl i64 %conv96.le, %sh_prom
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.le, i64 %57)
  %cmp117 = icmp ugt i64 %shl.le, %57
  br i1 %cmp117, label %if.then119, label %if.then116.out_unlock_crit_edge

if.then116.out_unlock_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then119:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %shl.le, ptr %offset, align 8
  br label %out_unlock

if.end121:                                        ; preds = %.if.end121_crit_edge281, %.if.end121_crit_edge
  %clen.1239241 = phi i32 [ %clen.1240, %.if.end121_crit_edge ], [ %sub103, %.if.end121_crit_edge281 ]
  %59 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool122.not = icmp eq i32 %60, 0
  %add = select i1 %tobool122.not, i32 %clen.1239241, i32 0
  %spec.select212 = add i32 %add, %cpos.0226254
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select212, i32 %conv2.i)
  %cmp58 = icmp ult i32 %spec.select212, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool61.not = icmp eq i32 %60, 0
  %or.cond = select i1 %cmp58, i1 %tobool61.not, i1 false
  br i1 %or.cond, label %if.end121.while.body_crit_edge, label %if.end121.while.end_crit_edge

if.end121.while.end_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end121.while.body_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end121.while.end_crit_edge, %land.rhs60.lr.ph.while.end_crit_edge, %if.end52.while.end_crit_edge
  %cpos.0.lcssa = phi i32 [ %conv54, %if.end52.while.end_crit_edge ], [ %conv54, %land.rhs60.lr.ph.while.end_crit_edge ], [ %spec.select212, %if.end121.while.end_crit_edge ]
  %clen.0.lcssa = phi i32 [ 0, %if.end52.while.end_crit_edge ], [ 0, %land.rhs60.lr.ph.while.end_crit_edge ], [ %clen.1239241, %if.end121.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %whence)
  %cmp125 = icmp eq i32 %whence, 4
  br i1 %cmp125, label %if.then127, label %while.end.out_unlock_crit_edge

while.end.out_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then127:                                       ; preds = %while.end
  %conv128 = zext i32 %cpos.0.lcssa to i64
  %conv132 = zext i32 %clen.0.lcssa to i64
  %61 = add nuw nsw i64 %conv132, %conv128
  %add136 = shl i64 %61, %sh_prom
  %call137 = call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %add136, i64 %call137)
  %cmp138 = icmp ugt i64 %add136, %call137
  br i1 %cmp138, label %if.then140, label %if.then127.if.end143_crit_edge

if.then127.if.end143_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then140:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  %call141 = call fastcc i64 @i_size_read(ptr noundef %3)
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.then127.if.end143_crit_edge
  %add144.pre-phi = phi i64 [ %call141, %if.then140 ], [ %add136, %if.then127.if.end143_crit_edge ]
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add144.pre-phi, i64 %63)
  %cmp145 = icmp ugt i64 %add144.pre-phi, %63
  br i1 %cmp145, label %if.then147, label %if.end143.out_unlock_crit_edge

if.end143.out_unlock_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add144.pre-phi, ptr %offset, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then147, %if.end143.out_unlock_crit_edge, %while.end.out_unlock_crit_edge, %if.then119, %if.then116.out_unlock_crit_edge, %do.body84, %while.body.out_unlock_crit_edge, %while.body.out_unlock_crit_edge276, %while.body.out_unlock_crit_edge277, %while.body.out_unlock_crit_edge278, %while.body.out_unlock_crit_edge279, %if.then49, %if.then46.out_unlock_crit_edge, %if.end35.out_unlock_crit_edge
  %ret.1 = phi i32 [ 0, %if.then49 ], [ 0, %if.then46.out_unlock_crit_edge ], [ 0, %if.then119 ], [ 0, %if.then116.out_unlock_crit_edge ], [ 0, %if.then147 ], [ 0, %if.end143.out_unlock_crit_edge ], [ -6, %if.end35.out_unlock_crit_edge ], [ %call65, %do.body84 ], [ -6, %while.end.out_unlock_crit_edge ], [ %call65, %while.body.out_unlock_crit_edge ], [ %call65, %while.body.out_unlock_crit_edge276 ], [ %call65, %while.body.out_unlock_crit_edge277 ], [ %call65, %while.body.out_unlock_crit_edge278 ], [ %call65, %while.body.out_unlock_crit_edge279 ]
  %65 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %out_unlock.brelse.exit_crit_edge, label %if.then.i

out_unlock.brelse.exit_crit_edge:                 ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %66) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out_unlock.brelse.exit_crit_edge
  call void @up_read(ptr noundef %ip_alloc_sem) #9
  call void @ocfs2_inode_unlock(ptr noundef %3, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %brelse.exit, %do.body27, %do.end10.out_crit_edge, %do.end10.out_crit_edge272, %do.end10.out_crit_edge273, %do.end10.out_crit_edge274, %do.end10.out_crit_edge275
  %ret.2 = phi i32 [ %ret.1, %brelse.exit ], [ %call, %do.end10.out_crit_edge ], [ %call, %do.end10.out_crit_edge272 ], [ %call, %do.end10.out_crit_edge273 ], [ %call, %do.end10.out_crit_edge274 ], [ %call, %do.end10.out_crit_edge275 ], [ %call, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hole_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_last) #9
  ret i32 %ret.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !60
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !61
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !53

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !62
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !64
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_virt_blocks(ptr noundef %inode, i64 noundef %v_block, i32 noundef %nr, ptr noundef %bhs, i32 noundef %flags, ptr noundef %validate) local_unnamed_addr #2 align 64 {
entry:
  %p_block = alloca i64, align 8
  %p_count = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m51 = alloca i64, align 8
  %_m124 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_block) #9
  %0 = ptrtoint ptr %p_block to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %p_block, align 8, !annotation !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_count) #9
  %1 = ptrtoint ptr %p_count to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %p_count, align 8, !annotation !57
  tail call fastcc void @trace_ocfs2_read_virt_blocks(ptr noundef %inode, i64 noundef %v_block, i32 noundef %nr, ptr noundef %bhs, i32 noundef %flags, ptr noundef %validate)
  %conv = sext i32 %nr to i64
  %add = add i64 %v_block, -1
  %sub = add i64 %add, %conv
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %5 to i64
  %shl = shl i64 %sub, %sh_prom
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call)
  %cmp.not = icmp ult i64 %shl, %call
  br i1 %cmp.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp14201 = icmp sgt i32 %nr, 0
  br i1 %cmp14201, label %while.body.lr.ph, label %while.cond.preheader.out_crit_edge

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ip_alloc_sem = getelementptr i8, ptr %inode, i32 -424
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  br label %while.body

do.body:                                          ; preds = %entry
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body7, label %do.body.out_crit_edge, !prof !53

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 971, 0\0A.popsection", ""() #9, !srcloc !67
  unreachable

while.body:                                       ; preds = %if.end134.while.body_crit_edge, %while.body.lr.ph
  %done.0202 = phi i32 [ 0, %while.body.lr.ph ], [ %add135, %if.end134.while.body_crit_edge ]
  call void @down_read(ptr noundef %ip_alloc_sem) #9
  %conv17 = sext i32 %done.0202 to i64
  %add18 = add i64 %conv17, %v_block
  %call19 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %inode, i64 noundef %add18, ptr noundef nonnull %p_block, ptr noundef nonnull %p_count, ptr noundef null)
  call void @up_read(ptr noundef %ip_alloc_sem) #9
  %6 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call19, label %do.body38 [
    i32 0, label %if.end47
    i32 -512, label %while.body.out_crit_edge
    i32 -4, label %while.body.out_crit_edge262
    i32 524289, label %while.body.out_crit_edge263
    i32 -28, label %while.body.out_crit_edge264
    i32 -122, label %while.body.out_crit_edge265
  ]

while.body.out_crit_edge265:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.out_crit_edge264:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.out_crit_edge263:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.out_crit_edge262:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body38:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv42 = sext i32 %call19 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_read_virt_blocks, i32 noundef 981, ptr noundef nonnull @.str, i64 noundef %conv42) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end47:                                         ; preds = %while.body
  %8 = ptrtoint ptr %p_block to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %p_block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool48.not = icmp eq i64 %9, 0
  br i1 %tobool48.not, label %if.then49, label %if.end66

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.le = getelementptr i8, ptr %inode, i32 -1608
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m51) #9
  %10 = ptrtoint ptr %_m51 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m51, align 8
  %11 = ptrtoint ptr %add.ptr.i.le to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i.le, align 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits59 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_blocksize_bits59 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits59, align 4
  %sh_prom61 = zext i8 %16 to i64
  %shl62 = shl i64 %add18, %sh_prom61
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m51, ptr noundef nonnull @__func__.ocfs2_read_virt_blocks, i32 noundef 991, ptr noundef nonnull @.str.3, i64 noundef %12, i64 noundef %shl62) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m51) #9
  br label %out

if.end66:                                         ; preds = %if.end47
  %sub67 = sub i32 %nr, %done.0202
  %17 = ptrtoint ptr %p_count to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %p_count, align 8
  %conv68 = sext i32 %sub67 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv68)
  %cmp69 = icmp ult i64 %18, %conv68
  %conv72 = trunc i64 %18 to i32
  %spec.select = select i1 %cmp69, i32 %conv72, i32 %sub67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp74198 = icmp sgt i32 %spec.select, 0
  br i1 %cmp74198, label %if.end66.for.body_crit_edge, label %if.end66.for.end_crit_edge

if.end66.for.end_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end66.for.body_crit_edge
  %i.0199 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end66.for.body_crit_edge ]
  %add76 = add i32 %i.0199, %done.0202
  %arrayidx = getelementptr ptr, ptr %bhs, i32 %add76
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool77.not = icmp eq ptr %20, null
  br i1 %tobool77.not, label %for.body.for.inc_crit_edge, label %do.body80

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body80:                                        ; preds = %for.body
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %b_blocknr, align 8
  %conv83 = zext i32 %i.0199 to i64
  %add84 = add i64 %9, %conv83
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %add84)
  %cmp85.not = icmp eq i64 %22, %add84
  br i1 %cmp85.not, label %do.body80.for.inc_crit_edge, label %do.body94, !prof !68

do.body80.for.inc_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1007, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

for.inc:                                          ; preds = %do.body80.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end66.for.end_crit_edge
  %add.ptr = getelementptr ptr, ptr %bhs, i32 %done.0202
  %call104 = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i, i64 noundef %9, i32 noundef %spec.select, ptr noundef %add.ptr, i32 noundef %flags, ptr noundef %validate) #9
  %23 = zext i32 %call104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call104, label %do.body123 [
    i32 0, label %if.end134
    i32 -512, label %for.end.out_crit_edge
    i32 -4, label %for.end.out_crit_edge266
    i32 524289, label %for.end.out_crit_edge267
    i32 -28, label %for.end.out_crit_edge268
    i32 -122, label %for.end.out_crit_edge269
  ]

for.end.out_crit_edge269:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end.out_crit_edge268:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end.out_crit_edge267:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end.out_crit_edge266:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body123:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m124) #9
  %24 = ptrtoint ptr %_m124 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606846976, ptr %_m124, align 8
  %conv128 = sext i32 %call104 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m124, ptr noundef nonnull @__func__.ocfs2_read_virt_blocks, i32 noundef 1013, ptr noundef nonnull @.str, i64 noundef %conv128) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m124) #9
  br label %out

if.end134:                                        ; preds = %for.end
  %add135 = add i32 %spec.select, %done.0202
  %cmp14 = icmp slt i32 %add135, %nr
  br i1 %cmp14, label %if.end134.while.body_crit_edge, label %if.end134.out_crit_edge

if.end134.out_crit_edge:                          ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end134.while.body_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out:                                              ; preds = %if.end134.out_crit_edge, %do.body123, %for.end.out_crit_edge, %for.end.out_crit_edge266, %for.end.out_crit_edge267, %for.end.out_crit_edge268, %for.end.out_crit_edge269, %if.then49, %do.body38, %while.body.out_crit_edge, %while.body.out_crit_edge262, %while.body.out_crit_edge263, %while.body.out_crit_edge264, %while.body.out_crit_edge265, %do.body.out_crit_edge, %while.cond.preheader.out_crit_edge
  %rc.1 = phi i32 [ 0, %do.body.out_crit_edge ], [ -5, %if.then49 ], [ %call19, %do.body38 ], [ %call104, %do.body123 ], [ 0, %while.cond.preheader.out_crit_edge ], [ 0, %if.end134.out_crit_edge ], [ %call19, %while.body.out_crit_edge ], [ %call19, %while.body.out_crit_edge262 ], [ %call19, %while.body.out_crit_edge263 ], [ %call19, %while.body.out_crit_edge264 ], [ %call19, %while.body.out_crit_edge265 ], [ %call104, %for.end.out_crit_edge ], [ %call104, %for.end.out_crit_edge266 ], [ %call104, %for.end.out_crit_edge267 ], [ %call104, %for.end.out_crit_edge268 ], [ %call104, %for.end.out_crit_edge269 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_count) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_block) #9
  ret i32 %rc.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_read_virt_blocks(ptr noundef %inode, i64 noundef %vblock, i32 noundef %nr, ptr noundef %bhs, i32 noundef %flags, ptr noundef %validate) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_virt_blocks, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_virt_blocks, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  %call42 = tail call i32 @__traceiter_ocfs2_read_virt_blocks(ptr noundef null, ptr noundef %inode, i64 noundef %vblock, i32 noundef %nr, ptr noundef %bhs, i32 noundef %flags, ptr noundef %validate) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !43) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !68

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_virt_blocks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_virt_blocks, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_read_virt_blocks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_read_virt_blocks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1620, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !43) #9
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
declare dso_local i32 @ocfs2_read_blocks(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_last_eb_is_empty(ptr noundef %inode, ptr nocapture noundef readonly %di) unnamed_addr #2 align 64 {
entry:
  %eb_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_last_eb_blk = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 18
  %0 = ptrtoint ptr %i_last_eb_blk to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_last_eb_blk, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eb_bh) #9
  %3 = ptrtoint ptr %eb_bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %eb_bh, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call1 = call i32 @ocfs2_read_extent_block(ptr noundef %ip_metadata_cache.i, i64 noundef %2, ptr noundef nonnull %eb_bh) #9
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call1, label %do.body [
    i32 0, label %if.end13
    i32 -512, label %entry.out_crit_edge
    i32 -4, label %entry.out_crit_edge42
    i32 524289, label %entry.out_crit_edge43
    i32 -28, label %entry.out_crit_edge44
    i32 -122, label %entry.out_crit_edge45
  ]

entry.out_crit_edge45:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge44:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge43:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge42:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_last_eb_is_empty, i32 noundef 285, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end13:                                         ; preds = %entry
  %6 = ptrtoint ptr %eb_bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eb_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %h_list = getelementptr inbounds %struct.ocfs2_extent_block, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %h_list to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %h_list, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr, align 8
  %call16 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %13, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_last_eb_is_empty, ptr noundef nonnull @.str.4, i32 noundef %15, i64 noundef %17) #9
  br label %out

if.end17:                                         ; preds = %if.end13
  %l_next_free_rec = getelementptr inbounds %struct.ocfs2_extent_block, ptr %9, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %l_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %l_next_free_rec, align 4
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %19, label %if.end17.out_crit_edge [
    i16 0, label %if.end17.if.then26_crit_edge
    i16 256, label %land.lhs.true23
  ]

if.end17.if.then26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true23:                                  ; preds = %if.end17
  %21 = getelementptr inbounds %struct.ocfs2_extent_block, ptr %9, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i.not = icmp eq i16 %23, 0
  br i1 %tobool.not.i.not, label %land.lhs.true23.if.then26_crit_edge, label %land.lhs.true23.out_crit_edge

land.lhs.true23.out_crit_edge:                    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true23.if.then26_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %land.lhs.true23.if.then26_crit_edge, %if.end17.if.then26_crit_edge
  br label %out

out:                                              ; preds = %if.then26, %land.lhs.true23.out_crit_edge, %if.end17.out_crit_edge, %if.then15, %do.body, %entry.out_crit_edge, %entry.out_crit_edge42, %entry.out_crit_edge43, %entry.out_crit_edge44, %entry.out_crit_edge45
  %ret.0 = phi i32 [ -30, %if.then15 ], [ 1, %if.then26 ], [ 0, %land.lhs.true23.out_crit_edge ], [ %call1, %entry.out_crit_edge ], [ %call1, %entry.out_crit_edge42 ], [ %call1, %entry.out_crit_edge43 ], [ %call1, %entry.out_crit_edge44 ], [ %call1, %entry.out_crit_edge45 ], [ %call1, %do.body ], [ 0, %if.end17.out_crit_edge ]
  %24 = ptrtoint ptr %eb_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eb_bh, align 4
  %tobool.not.i41 = icmp eq ptr %25, null
  br i1 %tobool.not.i41, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %25) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eb_bh) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_virt_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__func__.ocfs2_figure_hole_clusters, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/extent_map.c", i32 369, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_xattr_get_clusters, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/extent_map.c", i32 545, i32 4}
!5 = !{ptr @__PRETTY_FUNCTION__.ocfs2_xattr_get_clusters, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/extent_map.c", i32 553, i32 4}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/extent_map.c", i32 572, i32 4}
!10 = !{ptr @__func__.ocfs2_get_clusters, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/extent_map.c", i32 606, i32 3}
!12 = !{ptr @__func__.ocfs2_extent_map_get_blocks, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/extent_map.c", i32 671, i32 3}
!14 = !{ptr @__func__.ocfs2_fiemap, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/extent_map.c", i32 751, i32 3}
!16 = !{ptr @__func__.ocfs2_overwrite_io, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/extent_map.c", i32 842, i32 4}
!18 = !{ptr @__func__.ocfs2_seek_data_hole_offset, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ocfs2/extent_map.c", i32 877, i32 3}
!20 = !{ptr @__func__.ocfs2_read_virt_blocks, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/extent_map.c", i32 981, i32 4}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/extent_map.c", i32 987, i32 4}
!24 = !{ptr @__func__.ocfs2_get_clusters_nocache, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/extent_map.c", i32 421, i32 4}
!26 = !{ptr @__PRETTY_FUNCTION__.ocfs2_get_clusters_nocache, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/extent_map.c", i32 429, i32 4}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/extent_map.c", i32 464, i32 3}
!31 = !{ptr @__func__.ocfs2_last_eb_is_empty, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/extent_map.c", i32 285, i32 3}
!33 = !{ptr @__PRETTY_FUNCTION__.ocfs2_last_eb_is_empty, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/extent_map.c", i32 293, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1598, i32 1}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2161155914, i64 2161156400, i64 2161155951, i64 2161156007, i64 2161156041, i64 2161156065, i64 2161156106, i64 2161156127, i64 2161156155, i64 2161156189}
!55 = !{i64 2161166295, i64 2161166781, i64 2161166332, i64 2161166388, i64 2161166422, i64 2161166446, i64 2161166487, i64 2161166508, i64 2161166536, i64 2161166570}
!56 = !{i64 2161178318, i64 2161178804, i64 2161178355, i64 2161178411, i64 2161178445, i64 2161178469, i64 2161178510, i64 2161178531, i64 2161178559, i64 2161178593}
!57 = !{!"auto-init"}
!58 = !{i64 2161173719, i64 2161174205, i64 2161173756, i64 2161173812, i64 2161173846, i64 2161173870, i64 2161173911, i64 2161173932, i64 2161173960, i64 2161173994}
!59 = !{i64 2161186092, i64 2161190639, i64 2161186129, i64 2161186185, i64 2161186219, i64 2161186243, i64 2161186284, i64 2161186305, i64 2161186333, i64 2161186367}
!60 = !{i64 1078962, i64 1079023}
!61 = !{i64 1081694}
!62 = !{i64 1081979}
!63 = !{i64 2152517113}
!64 = !{i64 2152516955}
!65 = !{i64 2152517283}
!66 = !{i64 2150103097}
!67 = !{i64 2161193185, i64 2161193671, i64 2161193222, i64 2161193278, i64 2161193312, i64 2161193336, i64 2161193377, i64 2161193398, i64 2161193426, i64 2161193460}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2161195785, i64 2161196272, i64 2161195822, i64 2161195878, i64 2161195912, i64 2161195936, i64 2161195977, i64 2161195998, i64 2161196026, i64 2161196060}
!70 = !{i64 2148498880, i64 2148498885, i64 2148498898, i64 2148498942, i64 2148498976, i64 2148498997}
!71 = !{i64 2157839232}
!72 = !{i64 2157839517}
!73 = !{i64 2149495287}
!74 = !{i64 2149496323}
