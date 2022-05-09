; ModuleID = '/llk/IR_all_yes/fs/ocfs2/suballoc.c_pt.bc'
source_filename = "../fs/ocfs2/suballoc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ocfs2_alloc_context = type { ptr, ptr, i32, i32, i32, i32, i16, i32, ptr, i64, i64, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_group_desc = type { [8 x i8], i16, i16, i16, i16, i32, i32, i64, i64, i64, %struct.ocfs2_block_check, i64, %union.anon.86 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { [256 x i8], %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i16, i16, i16, i16, i64, [0 x %struct.ocfs2_extent_rec] }
%struct.ocfs2_extent_rec = type { i32, %union.anon.84, i64 }
%union.anon.84 = type { i32 }
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
%struct.ocfs2_dlm_lksb = type { %union.anon.91, ptr }
%union.anon.91 = type { %struct.fsdlm_lksb_plus_lvb }
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
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.77, %union.anon.81 }
%union.anon.77 = type { i64 }
%union.anon.81 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.82, [16 x i8] }
%union.anon.82 = type { i32 }
%struct.ocfs2_suballoc_result = type { i64, i64, i64, i32, i32 }
%struct.anon.79 = type { i32, i32 }
%struct.ocfs2_chain_list = type { i16, i16, i16, i16, i64, [0 x %struct.ocfs2_chain_rec] }
%struct.ocfs2_chain_rec = type { i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.jbd2_journal_handle = type { %union.anon.92, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.92 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocfs2_extent_tree = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }

@__func__.ocfs2_check_group_descriptor = private unnamed_addr constant [29 x i8] c"ocfs2_check_group_descriptor\00", align 1
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Checksum failed for group descriptor %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.ocfs2_reserve_new_metadata_blocks = private unnamed_addr constant [34 x i8] c"ocfs2_reserve_new_metadata_blocks\00", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_reserve_new_inode = private unnamed_addr constant [24 x i8] c"ocfs2_reserve_new_inode\00", align 1
@__func__.ocfs2_reserve_cluster_bitmap_bits = private unnamed_addr constant [34 x i8] c"ocfs2_reserve_cluster_bitmap_bits\00", align 1
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GROUP01\00", [24 x i8] zeroinitializer }, align 32
@__func__.ocfs2_block_group_set_bits = private unnamed_addr constant [27 x i8] c"ocfs2_block_group_set_bits\00", align 1
@__PRETTY_FUNCTION__.ocfs2_block_group_set_bits = private unnamed_addr constant [136 x i8] c"int ocfs2_block_group_set_bits(handle_t *, struct inode *, struct ocfs2_group_desc *, struct buffer_head *, unsigned int, unsigned int)\00", align 1
@.str.3 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Group descriptor # %llu has bit count %u but claims %u are freed. num_bits %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.ocfs2_alloc_dinode_update_counts = private unnamed_addr constant [33 x i8] c"ocfs2_alloc_dinode_update_counts\00", align 1
@__func__.ocfs2_claim_metadata = private unnamed_addr constant [21 x i8] c"ocfs2_claim_metadata\00", align 1
@__func__.ocfs2_find_new_inode_loc = private unnamed_addr constant [25 x i8] c"ocfs2_find_new_inode_loc\00", align 1
@__func__.ocfs2_claim_new_inode_at_loc = private unnamed_addr constant [29 x i8] c"ocfs2_claim_new_inode_at_loc\00", align 1
@__func__.ocfs2_claim_new_inode = private unnamed_addr constant [22 x i8] c"ocfs2_claim_new_inode\00", align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ocfs2/suballoc.c\00", [44 x i8] zeroinitializer }, align 32
@__func__.__ocfs2_claim_clusters = private unnamed_addr constant [23 x i8] c"__ocfs2_claim_clusters\00", align 1
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"minimum allocation requested %u exceeds group bitmap size %u!\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.ocfs2_lock_allocators = private unnamed_addr constant [22 x i8] c"ocfs2_lock_allocators\00", align 1
@__func__.ocfs2_test_inode_bit = private unnamed_addr constant [21 x i8] c"ocfs2_test_inode_bit\00", align 1
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"get alloc slot and bit failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to get alloc inode in slot %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lock on alloc inode on slot %u failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test suballoc bit failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.ocfs2_validate_gd_self = private unnamed_addr constant [23 x i8] c"ocfs2_validate_gd_self\00", align 1
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Group descriptor #%llu has bad signature %.*s\0A\00", [49 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_validate_gd_self = private unnamed_addr constant [76 x i8] c"int ocfs2_validate_gd_self(struct super_block *, struct buffer_head *, int)\00", align 1
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Group descriptor #%llu has an invalid bg_blkno of %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Group descriptor #%llu has an invalid fs_generation of #%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Group descriptor #%llu has bit count %u but claims that %u are free\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Group descriptor #%llu has bit count %u but max bitmap bits of %u\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ocfs2_validate_gd_parent = private unnamed_addr constant [25 x i8] c"ocfs2_validate_gd_parent\00", align 1
@.str.15 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Group descriptor #%llu has bad parent pointer (%llu, expected %llu)\0A\00", [59 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_validate_gd_parent = private unnamed_addr constant [101 x i8] c"int ocfs2_validate_gd_parent(struct super_block *, struct ocfs2_dinode *, struct buffer_head *, int)\00", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Group descriptor #%llu has bit count of %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Group descriptor #%llu has bad chain %u\0A\00", [55 x i8] zeroinitializer }, align 32
@ocfs2_read_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ocfs2: bh == NULL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocfs2_read_block\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/ocfs2/buffer_head_io.h\00", [38 x i8] zeroinitializer }, align 32
@ocfs2_read_block._entry_ptr = internal global ptr @ocfs2_read_block._entry, section ".printk_index", align 4
@__tracepoint_ocfs2_validate_group_descriptor = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_validate_group_descriptor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.ocfs2_reserve_suballoc_bits = private unnamed_addr constant [28 x i8] c"ocfs2_reserve_suballoc_bits\00", align 1
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INODE01\00", [24 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_reserve_suballoc_bits = private unnamed_addr constant [106 x i8] c"int ocfs2_reserve_suballoc_bits(struct ocfs2_super *, struct ocfs2_alloc_context *, int, u32, u64 *, int)\00", align 1
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid chain allocator %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_reserve_suballoc_bits_nospc = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_reserve_suballoc_bits_nospc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_reserve_suballoc_bits_no_new_group = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_reserve_suballoc_bits_no_new_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_block_group_alloc = private unnamed_addr constant [24 x i8] c"ocfs2_block_group_alloc\00", align 1
@__tracepoint_ocfs2_block_group_alloc = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_block_group_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_block_group_alloc_contig = private unnamed_addr constant [31 x i8] c"ocfs2_block_group_alloc_contig\00", align 1
@__tracepoint_ocfs2_block_group_alloc_contig = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_block_group_alloc_contig.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__PRETTY_FUNCTION__.ocfs2_block_group_fill = private unnamed_addr constant [128 x i8] c"int ocfs2_block_group_fill(handle_t *, struct inode *, struct buffer_head *, u64, unsigned int, u16, struct ocfs2_chain_list *)\00", align 1
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"group block (%llu) != b_blocknr (%llu)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.ocfs2_block_group_fill = private unnamed_addr constant [23 x i8] c"ocfs2_block_group_fill\00", align 1
@__func__.ocfs2_block_group_alloc_discontig = private unnamed_addr constant [34 x i8] c"ocfs2_block_group_alloc_discontig\00", align 1
@__tracepoint_ocfs2_block_group_alloc_discontig = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_block_group_alloc_discontig.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_block_group_grow_discontig = private unnamed_addr constant [33 x i8] c"ocfs2_block_group_grow_discontig\00", align 1
@__func__.ocfs2_bg_alloc_cleanup = private unnamed_addr constant [23 x i8] c"ocfs2_bg_alloc_cleanup\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_reserve_new_inode_new_group = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_reserve_new_inode_new_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_reserve_clusters_with_limit = private unnamed_addr constant [34 x i8] c"ocfs2_reserve_clusters_with_limit\00", align 1
@__tracepoint_ocfs2_block_group_set_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_block_group_set_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_cluster_group_search_wrong_max_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_cluster_group_search_wrong_max_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_cluster_group_search_max_block = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_cluster_group_search_max_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_block_group_search_max_block = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_block_group_search_max_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__PRETTY_FUNCTION__.ocfs2_claim_suballoc_bits = private unnamed_addr constant [114 x i8] c"int ocfs2_claim_suballoc_bits(struct ocfs2_alloc_context *, handle_t *, u32, u32, struct ocfs2_suballoc_result *)\00", align 1
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Chain allocator dinode %llu has %u used bits but only %u total\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ocfs2_claim_suballoc_bits = private unnamed_addr constant [26 x i8] c"ocfs2_claim_suballoc_bits\00", align 1
@__func__.ocfs2_search_one_group = private unnamed_addr constant [23 x i8] c"ocfs2_search_one_group\00", align 1
@__func__.ocfs2_search_chain = private unnamed_addr constant [19 x i8] c"ocfs2_search_chain\00", align 1
@__tracepoint_ocfs2_search_chain_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_search_chain_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_search_chain_succ = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_search_chain_succ.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_relink_block_group = private unnamed_addr constant [25 x i8] c"ocfs2_relink_block_group\00", align 1
@__tracepoint_ocfs2_relink_block_group = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_relink_block_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_search_chain_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_search_chain_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_claim_suballoc_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_claim_suballoc_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_claim_new_inode_at_loc = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_claim_new_inode_at_loc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__._ocfs2_free_suballoc_bits = private unnamed_addr constant [26 x i8] c"_ocfs2_free_suballoc_bits\00", align 1
@__tracepoint_ocfs2_free_suballoc_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_free_suballoc_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_block_group_clear_bits = private unnamed_addr constant [29 x i8] c"ocfs2_block_group_clear_bits\00", align 1
@__PRETTY_FUNCTION__.ocfs2_block_group_clear_bits = private unnamed_addr constant [179 x i8] c"int ocfs2_block_group_clear_bits(handle_t *, struct inode *, struct ocfs2_group_desc *, struct buffer_head *, unsigned int, unsigned int, void (*)(unsigned int, unsigned long *))\00", align 1
@__tracepoint_ocfs2_block_group_clear_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_block_group_clear_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__._ocfs2_free_clusters = private unnamed_addr constant [21 x i8] c"_ocfs2_free_clusters\00", align 1
@__tracepoint_ocfs2_free_clusters = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_free_clusters.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_test_inode_bit = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_test_inode_bit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_get_suballoc_slot_bit = private unnamed_addr constant [28 x i8] c"ocfs2_get_suballoc_slot_bit\00", align 1
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"read block %llu failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid inode %llu requested\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"inode %llu has invalid suballoc slot %u\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_get_suballoc_slot_bit = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_get_suballoc_slot_bit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_test_suballoc_bit = private unnamed_addr constant [24 x i8] c"ocfs2_test_suballoc_bit\00", align 1
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suballoc bit %u out of range of %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"read group %llu failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_test_suballoc_bit = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_test_suballoc_bit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967174, i64 4294967292]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967174, i64 4294967292]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967174, i64 4294967292]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967174, i64 4294967292]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967174, i64 4294967292]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.82 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.93 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.95 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.102 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 255, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 965, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1348, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1367, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2314, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2328, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2823, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2837, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2847, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2855, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 164, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 170, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 176, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 182, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 189, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 207, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 215, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 225, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [29 x i8] c"../fs/ocfs2/buffer_head_io.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 47, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 780, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 108, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 800, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 803, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 354, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 271, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1901, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2708, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2715, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2723, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2769, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [23 x i8] c"../fs/ocfs2/suballoc.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 2781, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @ocfs2_read_block._entry, ptr @ocfs2_read_block._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_read_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_free_ac_resource(ptr nocapture noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %2 = ptrtoint ptr %ac_which to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ac_which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ocfs2_inode_unlock(ptr noundef nonnull %1, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #13
  tail call void @iput(ptr noundef nonnull %1) #13
  %4 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ac, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %ac_bh = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %5 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac_bh, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end3.brelse.exit_crit_edge, label %if.then.i

if.end3.brelse.exit_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %6) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end3.brelse.exit_crit_edge
  %7 = ptrtoint ptr %ac_bh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ac_bh, align 4
  %ac_resv = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 13
  %8 = ptrtoint ptr %ac_resv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ac_resv, align 8
  %ac_find_loc_priv = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 12
  %9 = ptrtoint ptr %ac_find_loc_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac_find_loc_priv, align 4
  tail call void @kfree(ptr noundef %10) #13
  %11 = ptrtoint ptr %ac_find_loc_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ac_find_loc_priv, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_free_alloc_context(ptr noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %ac_which.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %2 = ptrtoint ptr %ac_which.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ac_which.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ocfs2_inode_unlock(ptr noundef nonnull %1, i32 noundef 1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #13
  tail call void @iput(ptr noundef nonnull %1) #13
  %4 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ac, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %entry.if.end3.i_crit_edge
  %ac_bh.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %5 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge, label %if.then.i.i

if.end3.i.ocfs2_free_ac_resource.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_free_ac_resource.exit

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %6) #13
  br label %ocfs2_free_ac_resource.exit

ocfs2_free_ac_resource.exit:                      ; preds = %if.then.i.i, %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge
  %7 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ac_bh.i, align 4
  %ac_resv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 13
  %8 = ptrtoint ptr %ac_resv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ac_resv.i, align 8
  %ac_find_loc_priv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 12
  %9 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac_find_loc_priv.i, align 4
  tail call void @kfree(ptr noundef %10) #13
  %11 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ac_find_loc_priv.i, align 4
  tail call void @kfree(ptr noundef %ac) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_check_group_descriptor(ptr noundef %sb, ptr nocapture noundef readonly %di, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !211

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 246, 0\0A.popsection", ""() #13, !srcloc !212
  unreachable

do.end9:                                          ; preds = %entry
  %bg_check = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 10
  %call11 = tail call i32 @ocfs2_validate_meta_ecc(ptr noundef %sb, ptr noundef %1, ptr noundef %bg_check) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end21, label %if.end21.thread

if.end21.thread:                                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %5 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_check_group_descriptor, i32 noundef 257, ptr noundef nonnull @.str, i64 noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %if.end25

if.end21:                                         ; preds = %do.end9
  %call20 = tail call fastcc i32 @ocfs2_validate_gd_self(ptr noundef %sb, ptr noundef %bh, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %sb, ptr noundef %di, ptr noundef %bh, i32 noundef 1)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge, %if.end21.thread
  %rc.1 = phi i32 [ %call20, %if.end21.if.end25_crit_edge ], [ %call24, %if.then23 ], [ %call11, %if.end21.thread ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_validate_meta_ecc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_validate_gd_self(ptr noundef %sb, ptr nocapture noundef readonly %bh, i32 noundef %resize) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m22 = alloca i64, align 8
  %_m45 = alloca i64, align 8
  %_m70 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool1.not = icmp eq i32 %resize, 0
  br i1 %tobool1.not, label %if.else, label %do.body3

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %3 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_validate_gd_self, i32 noundef 166, ptr noundef nonnull @.str.10, i64 noundef %4, i32 noundef 7, ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %if.end15

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr8 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %5 = ptrtoint ptr %b_blocknr8 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %b_blocknr8, align 8
  %call11 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_self, ptr noundef nonnull @.str.10, i64 noundef %6, i32 noundef 7, ptr noundef %1) #13
  br label %cleanup

if.end15:                                         ; preds = %do.body3, %entry.if.end15_crit_edge
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bg_blkno, align 8
  %9 = call i64 @llvm.bswap.i64(i64 %8)
  %b_blocknr16 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %10 = ptrtoint ptr %b_blocknr16 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %b_blocknr16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.not = icmp eq i64 %9, %11
  br i1 %cmp.not, label %if.end15.if.end38_crit_edge, label %do.body18

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

do.body18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool19.not = icmp eq i32 %resize, 0
  br i1 %tobool19.not, label %if.else31, label %do.body21

do.body21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m22) #13
  %12 = ptrtoint ptr %_m22 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m22, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m22, ptr noundef nonnull @__func__.ocfs2_validate_gd_self, i32 noundef 172, ptr noundef nonnull @.str.11, i64 noundef %11, i64 noundef %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m22) #13
  br label %if.end38

if.else31:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_self, ptr noundef nonnull @.str.11, i64 noundef %11, i64 noundef %9) #13
  br label %cleanup

if.end38:                                         ; preds = %do.body21, %if.end15.if.end38_crit_edge
  %bg_generation = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %bg_generation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bg_generation, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info, align 16
  %fs_generation = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %fs_generation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp39.not = icmp eq i32 %15, %19
  br i1 %cmp39.not, label %if.end38.if.end61_crit_edge, label %do.body41

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

do.body41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool42.not = icmp eq i32 %resize, 0
  br i1 %tobool42.not, label %if.else54, label %do.body44

do.body44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m45) #13
  %20 = ptrtoint ptr %_m45 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606846976, ptr %_m45, align 8
  %21 = ptrtoint ptr %b_blocknr16 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %b_blocknr16, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m45, ptr noundef nonnull @__func__.ocfs2_validate_gd_self, i32 noundef 178, ptr noundef nonnull @.str.12, i64 noundef %22, i32 noundef %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m45) #13
  br label %if.end61

if.else54:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %b_blocknr16 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %b_blocknr16, align 8
  %call57 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_self, ptr noundef nonnull @.str.12, i64 noundef %24, i32 noundef %15) #13
  br label %cleanup

if.end61:                                         ; preds = %do.body44, %if.end38.if.end61_crit_edge
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bg_free_bits_count, align 4
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv = zext i16 %27 to i32
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bg_bits, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv62 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %30)
  %cmp63 = icmp ugt i16 %27, %30
  br i1 %cmp63, label %do.body66, label %if.end61.if.end92_crit_edge

if.end61.if.end92_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

do.body66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool67.not = icmp eq i32 %resize, 0
  br i1 %tobool67.not, label %if.else82, label %do.body69

do.body69:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70) #13
  %31 = ptrtoint ptr %_m70 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m70, align 8
  %32 = ptrtoint ptr %b_blocknr16 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %b_blocknr16, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70, ptr noundef nonnull @__func__.ocfs2_validate_gd_self, i32 noundef 185, ptr noundef nonnull @.str.13, i64 noundef %33, i32 noundef %conv62, i32 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70) #13
  br label %if.end92

if.else82:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %b_blocknr16 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %b_blocknr16, align 8
  %call88 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_self, ptr noundef nonnull @.str.13, i64 noundef %35, i32 noundef %conv62, i32 noundef %conv) #13
  br label %cleanup

if.end92:                                         ; preds = %do.body69, %if.end61.if.end92_crit_edge
  %36 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bg_bits, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %conv94 = zext i16 %38 to i32
  %bg_size = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %bg_size to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bg_size, align 8
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv95 = zext i16 %41 to i32
  %mul = shl nuw nsw i32 %conv95, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv94)
  %cmp96 = icmp ult i32 %mul, %conv94
  br i1 %cmp96, label %do.body99, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body99:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool100.not = icmp eq i32 %resize, 0
  br i1 %tobool100.not, label %if.else116, label %do.body102

do.body102:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #13
  %42 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606846976, ptr %_m103, align 8
  %43 = ptrtoint ptr %b_blocknr16 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %b_blocknr16, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.ocfs2_validate_gd_self, i32 noundef 192, ptr noundef nonnull @.str.14, i64 noundef %44, i32 noundef %conv94, i32 noundef %mul) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #13
  br label %cleanup

if.else116:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %b_blocknr16 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %b_blocknr16, align 8
  %call123 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_self, ptr noundef nonnull @.str.14, i64 noundef %46, i32 noundef %conv94, i32 noundef %mul) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else116, %do.body102, %if.end92.cleanup_crit_edge, %if.else82, %if.else54, %if.else31, %if.else
  %retval.0 = phi i32 [ %call123, %if.else116 ], [ %call88, %if.else82 ], [ %call57, %if.else54 ], [ %call34, %if.else31 ], [ %call11, %if.else ], [ 0, %do.body102 ], [ 0, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %sb, ptr nocapture noundef readonly %di, ptr nocapture noundef readonly %bh, i32 noundef %resize) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m24 = alloca i64, align 8
  %_m61 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 17
  %2 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_blkno, align 8
  %bg_parent_dinode = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %bg_parent_dinode to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bg_parent_dinode, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.not = icmp eq i64 %3, %5
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool.not = icmp eq i32 %resize, 0
  br i1 %tobool.not, label %if.else, label %do.body2

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %7 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %b_blocknr, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %5)
  %10 = tail call i64 @llvm.bswap.i64(i64 %3)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_validate_gd_parent, i32 noundef 210, ptr noundef nonnull @.str.15, i64 noundef %8, i64 noundef %9, i64 noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %if.end13

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr7 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %11 = ptrtoint ptr %b_blocknr7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %b_blocknr7, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %5)
  %14 = tail call i64 @llvm.bswap.i64(i64 %3)
  %call = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_parent, ptr noundef nonnull @.str.15, i64 noundef %12, i64 noundef %13, i64 noundef %14) #13
  br label %cleanup

if.end13:                                         ; preds = %do.body2, %entry.if.end13_crit_edge
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 35
  %15 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id2, align 8
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  %cl_bpc = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 35, i32 0, i32 1
  %18 = ptrtoint ptr %cl_bpc to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cl_bpc, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv15 = zext i16 %20 to i32
  %mul = mul nuw i32 %conv15, %conv
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bg_bits, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv16 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv16)
  %cmp17 = icmp ult i32 %mul, %conv16
  br i1 %cmp17, label %do.body20, label %if.end13.if.end42_crit_edge

if.end13.if.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

do.body20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool21.not = icmp eq i32 %resize, 0
  br i1 %tobool21.not, label %if.else34, label %do.body23

do.body23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m24) #13
  %24 = ptrtoint ptr %_m24 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606846976, ptr %_m24, align 8
  %b_blocknr28 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %25 = ptrtoint ptr %b_blocknr28 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %b_blocknr28, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m24, ptr noundef nonnull @__func__.ocfs2_validate_gd_parent, i32 noundef 217, ptr noundef nonnull @.str.16, i64 noundef %26, i32 noundef %conv16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m24) #13
  br label %if.end42

if.else34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr35 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr35 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %b_blocknr35, align 8
  %call38 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_parent, ptr noundef nonnull @.str.16, i64 noundef %28, i32 noundef %conv16) #13
  br label %cleanup

if.end42:                                         ; preds = %do.body23, %if.end13.if.end42_crit_edge
  %bg_chain = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %bg_chain to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bg_chain, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %cl_next_free_rec = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 35, i32 0, i32 3
  %32 = ptrtoint ptr %cl_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cl_next_free_rec, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %34)
  %cmp46 = icmp ugt i16 %31, %34
  br i1 %cmp46, label %do.body57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %33)
  %cmp53 = icmp eq i16 %30, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool55.not = icmp eq i32 %resize, 0
  %or.cond = and i1 %tobool55.not, %cmp53
  br i1 %or.cond, label %lor.lhs.false.if.else71_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.else71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else71

do.body57:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resize)
  %tobool58.not = icmp eq i32 %resize, 0
  br i1 %tobool58.not, label %do.body57.if.else71_crit_edge, label %do.body60

do.body57.if.else71_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else71

do.body60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61) #13
  %35 = ptrtoint ptr %_m61 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m61, align 8
  %b_blocknr65 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %36 = ptrtoint ptr %b_blocknr65 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %b_blocknr65, align 8
  %conv67 = zext i16 %31 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61, ptr noundef nonnull @__func__.ocfs2_validate_gd_parent, i32 noundef 227, ptr noundef nonnull @.str.17, i64 noundef %37, i32 noundef %conv67) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61) #13
  br label %cleanup

if.else71:                                        ; preds = %do.body57.if.else71_crit_edge, %lor.lhs.false.if.else71_crit_edge
  %b_blocknr72 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %38 = ptrtoint ptr %b_blocknr72 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %b_blocknr72, align 8
  %conv74 = zext i16 %31 to i32
  %call75 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %sb, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_validate_gd_parent, ptr noundef nonnull @.str.17, i64 noundef %39, i32 noundef %conv74) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else71, %do.body60, %lor.lhs.false.cleanup_crit_edge, %if.else34, %if.else
  %retval.0 = phi i32 [ %call75, %if.else71 ], [ %call38, %if.else34 ], [ %call, %if.else ], [ 0, %do.body60 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_group_descriptor(ptr noundef %inode, ptr nocapture noundef readonly %di, i64 noundef %gd_blkno, ptr nocapture noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #13
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %tmp, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call1.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i, i64 noundef %gd_blkno, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_group_descriptor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmp, align 4
  %call2 = call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %4, ptr noundef %di, ptr noundef %6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then4.out_crit_edge, label %if.then.i

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %8) #13
  br label %out

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bh, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tmp, align 4
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %bh, align 4
  br label %out

out:                                              ; preds = %if.then7, %if.end5.out_crit_edge, %if.then.i, %if.then4.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call1.i, %entry.out_crit_edge ], [ 0, %if.end5.out_crit_edge ], [ 0, %if.then7 ], [ %call2, %if.then4.out_crit_edge ], [ %call2, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #13
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_validate_group_descriptor(ptr noundef %sb, ptr noundef %bh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_validate_group_descriptor(i64 noundef %3)
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !211

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 275, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end9:                                          ; preds = %entry
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %bg_check = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 10
  %call11 = tail call i32 @ocfs2_validate_meta_ecc(ptr noundef %sb, ptr noundef %7, ptr noundef %bg_check) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call fastcc i32 @ocfs2_validate_gd_self(ptr noundef %sb, ptr noundef %bh, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ %call11, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_init_steal_slots(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #13
  %s_inode_steal_slot.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 24
  %0 = ptrtoint ptr %s_inode_steal_slot.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %s_inode_steal_slot.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #13
  %s_num_inodes_stolen.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_num_inodes_stolen.i, i32 noundef 4) #13
  %1 = ptrtoint ptr %s_num_inodes_stolen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %s_num_inodes_stolen.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #13
  %s_meta_steal_slot.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 25
  %2 = ptrtoint ptr %s_meta_steal_slot.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %s_meta_steal_slot.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #13
  %s_num_meta_stolen.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 27
  %call.i.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_num_meta_stolen.i, i32 noundef 4) #13
  %3 = ptrtoint ptr %s_num_meta_stolen.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %s_num_meta_stolen.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_reserve_new_metadata_blocks(ptr noundef %osb, i32 noundef %blocks, ptr nocapture noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m54 = alloca i64, align 8
  %_m91 = alloca i64, align 8
  %_m128 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #13
  %s_meta_steal_slot.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 25
  %0 = ptrtoint ptr %s_meta_steal_slot.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %slot.0.in.i.i = load i16, ptr %s_meta_steal_slot.i.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 72) #17
  %2 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %ac, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_reserve_new_metadata_blocks, i32 noundef 965, ptr noundef nonnull @.str.1, i64 noundef -12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %land.lhs.true105

if.end13:                                         ; preds = %entry
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %blocks, ptr %ac_bits_wanted, align 4
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %ac_which to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %ac_which, align 4
  %ac_group_search = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %ac_group_search to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ocfs2_block_group_search, ptr %ac_group_search, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %slot.0.in.i.i)
  %cmp14.not = icmp eq i16 %slot.0.in.i.i, -1
  br i1 %cmp14.not, label %if.end13.if.end21_crit_edge, label %land.lhs.true16

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true16:                                  ; preds = %if.end13
  %s_num_meta_stolen = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_num_meta_stolen, i32 noundef 4) #13
  %7 = ptrtoint ptr %s_num_meta_stolen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %s_num_meta_stolen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %8)
  %cmp18 = icmp slt i32 %8, 1024
  br i1 %cmp18, label %land.lhs.true16.extent_steal_crit_edge, label %land.lhs.true16.if.end21_crit_edge

land.lhs.true16.if.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true16.extent_steal_crit_edge:           ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %extent_steal

if.end21:                                         ; preds = %land.lhs.true16.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %s_num_meta_stolen22 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 27
  %call.i.i192 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_num_meta_stolen22, i32 noundef 4) #13
  %9 = ptrtoint ptr %s_num_meta_stolen22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %s_num_meta_stolen22, align 4
  %10 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac, align 4
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %12 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slot_num, align 8
  %call23 = tail call fastcc i32 @ocfs2_reserve_suballoc_bits(ptr noundef %osb, ptr noundef %11, i32 noundef 8, i32 noundef %13, ptr noundef null, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, -1
  br i1 %cmp24, label %if.then26, label %land.lhs.true33

if.then26:                                        ; preds = %if.end21
  br i1 %cmp14.not, label %if.then26.if.end138_crit_edge, label %if.then29

if.then26.if.end138_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #13
  %14 = ptrtoint ptr %s_meta_steal_slot.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %s_meta_steal_slot.i.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_num_meta_stolen22, i32 noundef 4) #13
  %15 = ptrtoint ptr %s_num_meta_stolen22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %s_num_meta_stolen22, align 4
  br label %if.end138

land.lhs.true33:                                  ; preds = %if.end21
  %16 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call23, label %do.body53 [
    i32 -28, label %if.end65
    i32 -512, label %land.lhs.true33.land.lhs.true105_crit_edge
    i32 -4, label %land.lhs.true33.land.lhs.true105_crit_edge200
    i32 -122, label %land.lhs.true33.land.lhs.true105_crit_edge201
  ]

land.lhs.true33.land.lhs.true105_crit_edge201:    ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true105

land.lhs.true33.land.lhs.true105_crit_edge200:    ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true105

land.lhs.true33.land.lhs.true105_crit_edge:       ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true105

do.body53:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m54) #13
  %17 = ptrtoint ptr %_m54 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m54, align 8
  %conv58 = sext i32 %call23 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m54, ptr noundef nonnull @__func__.ocfs2_reserve_new_metadata_blocks, i32 noundef 990, ptr noundef nonnull @.str.1, i64 noundef %conv58) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m54) #13
  br label %land.lhs.true105

if.end65:                                         ; preds = %land.lhs.true33
  %18 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ac, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end65.if.end3.i_crit_edge, label %if.then.i

if.end65.if.end3.i_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end65
  %ac_which.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %ac_which.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ac_which.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 1
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ocfs2_inode_unlock(ptr noundef nonnull %21, i32 noundef 1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #13
  tail call void @iput(ptr noundef nonnull %21) #13
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %19, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %if.end65.if.end3.i_crit_edge
  %ac_bh.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ac_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge, label %if.then.i.i

if.end3.i.ocfs2_free_ac_resource.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_free_ac_resource.exit

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %26) #13
  br label %ocfs2_free_ac_resource.exit

ocfs2_free_ac_resource.exit:                      ; preds = %if.then.i.i, %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge
  %27 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ac_bh.i, align 4
  %ac_resv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %19, i32 0, i32 13
  %28 = ptrtoint ptr %ac_resv.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ac_resv.i, align 8
  %ac_find_loc_priv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %19, i32 0, i32 12
  %29 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ac_find_loc_priv.i, align 4
  tail call void @kfree(ptr noundef %30) #13
  %31 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ac_find_loc_priv.i, align 4
  br label %extent_steal

extent_steal:                                     ; preds = %ocfs2_free_ac_resource.exit, %land.lhs.true16.extent_steal_crit_edge
  %32 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ac, align 4
  %call.i = tail call fastcc i32 @ocfs2_steal_resource(ptr noundef %osb, ptr noundef %33, i32 noundef 8) #13
  %s_num_meta_stolen67 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 27
  %call.i.i193 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_num_meta_stolen67, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %s_num_meta_stolen67, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_num_meta_stolen67, ptr %s_num_meta_stolen67, i32 1, ptr elementtype(i32) %s_num_meta_stolen67) #13, !srcloc !214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp68 = icmp slt i32 %call.i, 0
  br i1 %cmp68, label %if.then70, label %extent_steal.if.end138_crit_edge

extent_steal.if.end138_crit_edge:                 ; preds = %extent_steal
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.then70:                                        ; preds = %extent_steal
  %35 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call.i, label %do.body90 [
    i32 -28, label %if.then70.land.lhs.true105_crit_edge
    i32 -512, label %if.then70.land.lhs.true105_crit_edge202
    i32 -4, label %if.then70.land.lhs.true105_crit_edge203
    i32 -122, label %if.then70.land.lhs.true105_crit_edge204
  ]

if.then70.land.lhs.true105_crit_edge204:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true105

if.then70.land.lhs.true105_crit_edge203:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true105

if.then70.land.lhs.true105_crit_edge202:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true105

if.then70.land.lhs.true105_crit_edge:             ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true105

do.body90:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m91) #13
  %36 = ptrtoint ptr %_m91 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m91, align 8
  %conv95 = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m91, ptr noundef nonnull @__func__.ocfs2_reserve_new_metadata_blocks, i32 noundef 1001, ptr noundef nonnull @.str.1, i64 noundef %conv95) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m91) #13
  br label %land.lhs.true105

land.lhs.true105:                                 ; preds = %do.body90, %if.then70.land.lhs.true105_crit_edge, %if.then70.land.lhs.true105_crit_edge202, %if.then70.land.lhs.true105_crit_edge203, %if.then70.land.lhs.true105_crit_edge204, %do.body53, %land.lhs.true33.land.lhs.true105_crit_edge, %land.lhs.true33.land.lhs.true105_crit_edge200, %land.lhs.true33.land.lhs.true105_crit_edge201, %do.body
  %status.0.ph = phi i32 [ %call23, %do.body53 ], [ %call23, %land.lhs.true33.land.lhs.true105_crit_edge ], [ %call23, %land.lhs.true33.land.lhs.true105_crit_edge200 ], [ %call23, %land.lhs.true33.land.lhs.true105_crit_edge201 ], [ -12, %do.body ], [ %call.i, %if.then70.land.lhs.true105_crit_edge ], [ %call.i, %if.then70.land.lhs.true105_crit_edge202 ], [ %call.i, %if.then70.land.lhs.true105_crit_edge203 ], [ %call.i, %if.then70.land.lhs.true105_crit_edge204 ], [ %call.i, %do.body90 ]
  %37 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac, align 4
  %tobool106.not = icmp eq ptr %38, null
  br i1 %tobool106.not, label %land.lhs.true105.if.end108_crit_edge, label %if.then107

land.lhs.true105.if.end108_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then107:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #15
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %38)
  %39 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ac, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %land.lhs.true105.if.end108_crit_edge
  %40 = zext i32 %status.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %status.0.ph, label %do.body127 [
    i32 -122, label %if.end108.if.end138_crit_edge
    i32 -512, label %if.end108.if.end138_crit_edge205
    i32 -4, label %if.end108.if.end138_crit_edge206
    i32 -28, label %if.end108.if.end138_crit_edge207
  ]

if.end108.if.end138_crit_edge207:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.end108.if.end138_crit_edge206:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.end108.if.end138_crit_edge205:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.end108.if.end138_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

do.body127:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m128) #13
  %41 = ptrtoint ptr %_m128 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606846976, ptr %_m128, align 8
  %conv132 = sext i32 %status.0.ph to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m128, ptr noundef nonnull @__func__.ocfs2_reserve_new_metadata_blocks, i32 noundef 1013, ptr noundef nonnull @.str.1, i64 noundef %conv132) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m128) #13
  br label %if.end138

if.end138:                                        ; preds = %do.body127, %if.end108.if.end138_crit_edge, %if.end108.if.end138_crit_edge205, %if.end108.if.end138_crit_edge206, %if.end108.if.end138_crit_edge207, %extent_steal.if.end138_crit_edge, %if.then29, %if.then26.if.end138_crit_edge
  %status.0196199 = phi i32 [ %status.0.ph, %do.body127 ], [ %status.0.ph, %if.end108.if.end138_crit_edge ], [ %status.0.ph, %if.end108.if.end138_crit_edge205 ], [ %status.0.ph, %if.end108.if.end138_crit_edge206 ], [ %status.0.ph, %if.end108.if.end138_crit_edge207 ], [ 0, %if.then29 ], [ 0, %if.then26.if.end138_crit_edge ], [ 0, %extent_steal.if.end138_crit_edge ]
  ret i32 %status.0196199
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_block_group_search(ptr nocapture noundef readonly %inode, ptr noundef %group_bh, i32 noundef %bits_wanted, i32 noundef %min_bits, i64 noundef %max_block, ptr nocapture noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %group_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %min_bits)
  %cmp.not = icmp eq i32 %min_bits, 1
  br i1 %cmp.not, label %do.body8, label %do.body2, !prof !215

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1555, 0\0A.popsection", ""() #13, !srcloc !216
  unreachable

do.body8:                                         ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %bitmap_blkno.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bitmap_blkno.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -1608
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.i.not = icmp eq i64 %7, %9
  br i1 %cmp.i.not, label %do.body17, label %do.end25, !prof !211

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1556, 0\0A.popsection", ""() #13, !srcloc !217
  unreachable

do.end25:                                         ; preds = %do.body8
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bg_free_bits_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool26.not = icmp eq i16 %11, 0
  br i1 %tobool26.not, label %do.end25.if.end40_crit_edge, label %if.then27

do.end25.if.end40_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then27:                                        ; preds = %do.end25
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bg_bits, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %call28 = tail call fastcc i32 @ocfs2_block_group_find_clear_bits(ptr noundef %group_bh, i32 noundef %bits_wanted, i32 noundef %conv, ptr noundef %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.then27.if.end40_crit_edge

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_block)
  %tobool30.not = icmp eq i64 %max_block, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end40_crit_edge, label %if.then31

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bg_blkno, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %18 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sr_bit_offset, align 8
  %conv32 = zext i32 %19 to i64
  %add = add i64 %17, %conv32
  %sr_bits = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %20 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sr_bits, align 4
  %conv33 = zext i32 %21 to i64
  %add34 = add i64 %add, %conv33
  tail call fastcc void @trace_ocfs2_block_group_search_max_block(i64 noundef %add34, i64 noundef %max_block)
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %max_block)
  %cmp35 = icmp ugt i64 %add34, %max_block
  %spec.select = select i1 %cmp35, i32 -28, i32 0
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %land.lhs.true.if.end40_crit_edge, %if.then27.if.end40_crit_edge, %do.end25.if.end40_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then27.if.end40_crit_edge ], [ 0, %land.lhs.true.if.end40_crit_edge ], [ -28, %do.end25.if.end40_crit_edge ], [ %spec.select, %if.then31 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_reserve_suballoc_bits(ptr noundef %osb, ptr nocapture noundef %ac, i32 noundef %type, i32 noundef %slot, ptr noundef %last_alloc_group, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %_m.i244.i.i = alloca i64, align 8
  %p_cpos.i.i.i = alloca i32, align 4
  %clusters.i.i.i = alloca i32, align 4
  %_m.i.i.i = alloca i64, align 8
  %_m57.i.i.i = alloca i64, align 8
  %bit_off.i333.i = alloca i32, align 4
  %num_bits.i334.i = alloca i32, align 4
  %_m.i335.i = alloca i64, align 8
  %_m50.i.i = alloca i64, align 8
  %_m85.i.i = alloca i64, align 8
  %_m119.i.i = alloca i64, align 8
  %_m150.i.i = alloca i64, align 8
  %bit_off.i.i = alloca i32, align 4
  %num_bits.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %_m48.i.i = alloca i64, align 8
  %_m82.i.i = alloca i64, align 8
  %ac.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m63.i = alloca i64, align 8
  %_m110.i = alloca i64, align 8
  %_m145.i = alloca i64, align 8
  %_m219.i = alloca i64, align 8
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m34 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  %_m159 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 3
  %0 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac_bits_wanted, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #13
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bh, align 4
  %call = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef %type, i32 noundef %slot) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_reserve_suballoc_bits, i32 noundef 778, ptr noundef nonnull @.str.1, i64 noundef -22) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %cleanup

if.end12:                                         ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %call13 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call, ptr noundef nonnull %bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end44

if.then16:                                        ; preds = %if.end12
  call void @up_write(ptr noundef %i_rwsem.i) #13
  call void @iput(ptr noundef nonnull %call) #13
  %4 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call13, label %do.body33 [
    i32 -512, label %if.then16.cleanup_crit_edge
    i32 -4, label %if.then16.cleanup_crit_edge272
    i32 -28, label %if.then16.cleanup_crit_edge273
    i32 -122, label %if.then16.cleanup_crit_edge274
  ]

if.then16.cleanup_crit_edge274:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16.cleanup_crit_edge273:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16.cleanup_crit_edge272:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body33:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #13
  %5 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m34, align 8
  %conv38 = sext i32 %call13 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.ocfs2_reserve_suballoc_bits, i32 noundef 789, ptr noundef nonnull @.str.1, i64 noundef %conv38) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #13
  br label %cleanup

if.end44:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ac, align 8
  %ac_alloc_slot = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %7 = ptrtoint ptr %ac_alloc_slot to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %slot, ptr %ac_alloc_slot, align 8
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %call46 = call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(8) @.str.24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.end61, label %do.body53, !prof !215

do.body53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 800, 0\0A.popsection", ""() #13, !srcloc !218
  unreachable

do.end61:                                         ; preds = %if.end44
  %i_flags = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %and62 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end66

if.then64:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_blkno, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %call65 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %15, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_reserve_suballoc_bits, ptr noundef nonnull @.str.25, i64 noundef %18) #13
  br label %bailthread-pre-split

if.end66:                                         ; preds = %do.end61
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 34
  %i_total = getelementptr inbounds %struct.anon.79, ptr %id1, i32 0, i32 1
  %19 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_total, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id1, align 8
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %sub = sub i32 %21, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp68 = icmp ugt i32 %1, %sub
  br i1 %cmp68, label %if.then70, label %if.end66.if.end139_crit_edge

if.end66.if.end139_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then70:                                        ; preds = %if.end66
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %bitmap_blkno.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bitmap_blkno.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 -1608
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %32)
  %cmp.i.not = icmp eq i64 %30, %32
  br i1 %cmp.i.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_ocfs2_reserve_suballoc_bits_nospc(i32 noundef %1, i32 noundef %sub)
  br label %bailthread-pre-split

if.end74:                                         ; preds = %if.then70
  %and75 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then77, label %do.end8.i

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_ocfs2_reserve_suballoc_bits_no_new_group(i32 noundef %slot, i32 noundef %1, i32 noundef %sub)
  br label %bailthread-pre-split

do.end8.i:                                        ; preds = %if.end74
  %ac_max_block = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 10
  %33 = ptrtoint ptr %ac_max_block to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ac_max_block, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac.i) #13
  %35 = ptrtoint ptr %ac.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ac.i, align 4
  %id2.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 35
  %36 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %id2.i, align 8
  %38 = call i16 @llvm.bswap.i16(i16 %37) #13
  %conv.i = zext i16 %38 to i32
  %call9.i = call fastcc i32 @ocfs2_reserve_clusters_with_limit(ptr noundef %osb, i32 noundef %conv.i, i64 noundef %34, i32 noundef %flags, ptr noundef nonnull %ac.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.then11.i, label %if.end38.i

if.then11.i:                                      ; preds = %do.end8.i
  %39 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call9.i, label %do.body29.i [
    i32 -28, label %if.then11.i.if.end196.i_crit_edge
    i32 -512, label %if.then11.i.if.end196.i_crit_edge275
    i32 -4, label %if.then11.i.if.end196.i_crit_edge276
    i32 -122, label %if.then11.i.if.end196.i_crit_edge277
  ]

if.then11.i.if.end196.i_crit_edge277:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then11.i.if.end196.i_crit_edge276:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then11.i.if.end196.i_crit_edge275:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then11.i.if.end196.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

do.body29.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #13
  %40 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv32.i = sext i32 %call9.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc, i32 noundef 675, ptr noundef nonnull @.str.1, i64 noundef %conv32.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #13
  br label %if.end196.i

if.end38.i:                                       ; preds = %do.end8.i
  %call42.i = call ptr @ocfs2_start_trans(ptr noundef %osb, i32 noundef 7) #13
  %cmp.i330.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i330.i, label %if.then44.i, label %if.end73.i

if.then44.i:                                      ; preds = %if.end38.i
  %41 = ptrtoint ptr %call42.i to i32
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %41, label %do.body62.i [
    i32 -512, label %if.then44.i.if.end196.i_crit_edge
    i32 -4, label %if.then44.i.if.end196.i_crit_edge278
    i32 524289, label %if.then44.i.if.end196.i_crit_edge279
    i32 -28, label %if.then44.i.if.end196.i_crit_edge280
    i32 -122, label %if.then44.i.if.end196.i_crit_edge281
  ]

if.then44.i.if.end196.i_crit_edge281:             ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then44.i.if.end196.i_crit_edge280:             ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then44.i.if.end196.i_crit_edge279:             ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then44.i.if.end196.i_crit_edge278:             ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then44.i.if.end196.i_crit_edge:                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

do.body62.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m63.i) #13
  %43 = ptrtoint ptr %_m63.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606846976, ptr %_m63.i, align 8
  %conv67.i = sext i32 %41 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m63.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc, i32 noundef 685, ptr noundef nonnull @.str.1, i64 noundef %conv67.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m63.i) #13
  br label %if.end196.i

if.end73.i:                                       ; preds = %if.end38.i
  %tobool74.not.i = icmp eq ptr %last_alloc_group, null
  br i1 %tobool74.not.i, label %if.end73.i.if.end79.i_crit_edge, label %land.lhs.true75.i

if.end73.i.if.end79.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79.i

land.lhs.true75.i:                                ; preds = %if.end73.i
  %44 = ptrtoint ptr %last_alloc_group to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %last_alloc_group, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %cmp76.not.i = icmp eq i64 %45, 0
  br i1 %cmp76.not.i, label %land.lhs.true75.i.if.end79.i_crit_edge, label %if.then78.i

land.lhs.true75.i.if.end79.i_crit_edge:           ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79.i

if.then78.i:                                      ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_ocfs2_block_group_alloc(i64 noundef %45) #13
  %46 = ptrtoint ptr %last_alloc_group to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %last_alloc_group, align 8
  %48 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ac.i, align 4
  %ac_last_group.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %ac_last_group.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %47, ptr %ac_last_group.i, align 8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then78.i, %land.lhs.true75.i.if.end79.i_crit_edge, %if.end73.i.if.end79.i_crit_edge
  %51 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ac.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit_off.i.i) #13
  %53 = ptrtoint ptr %bit_off.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %bit_off.i.i, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_bits.i.i) #13
  %54 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %num_bits.i.i, align 4, !annotation !219
  %cl_count.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 35, i32 0, i32 2
  %55 = ptrtoint ptr %cl_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cl_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp15.not.i.i.i = icmp eq i16 %56, 0
  br i1 %cmp15.not.i.i.i, label %if.end79.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge, label %while.body.preheader.i.i.i

if.end79.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_find_smallest_chain.exit.i.i

while.body.preheader.i.i.i:                       ; preds = %if.end79.i
  %57 = call i16 @llvm.bswap.i16(i16 %56) #13
  %umax.i.i.i = call i16 @llvm.umax.i16(i16 %57, i16 1) #13
  %wide.trip.count.i.i.i = zext i16 %umax.i.i.i to i32
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.preheader.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %while.body.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %best.017.i.i.i = phi i16 [ 0, %while.body.preheader.i.i.i ], [ %spec.select.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %idxprom.i.i.i = zext i16 %best.017.i.i.i to i32
  %c_total.i.i.i = getelementptr %struct.ocfs2_chain_list, ptr %id2.i, i32 0, i32 5, i32 %idxprom.i.i.i, i32 1
  %58 = ptrtoint ptr %c_total.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %c_total.i.i.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #13
  %c_total6.i.i.i = getelementptr %struct.ocfs2_chain_list, ptr %id2.i, i32 0, i32 5, i32 %indvars.iv.i.i.i, i32 1
  %61 = ptrtoint ptr %c_total6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %c_total6.i.i.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %63)
  %cmp7.i.i.i = icmp ugt i32 %60, %63
  %64 = trunc i32 %indvars.iv.i.i.i to i16
  %spec.select.i.i.i = select i1 %cmp7.i.i.i, i16 %64, i16 %best.017.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %while.body.i.i.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

while.body.i.i.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_find_smallest_chain.exit.i.i

ocfs2_find_smallest_chain.exit.i.i:               ; preds = %while.body.i.i.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge, %if.end79.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge
  %best.0.lcssa.i.i.i = phi i16 [ 0, %if.end79.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %while.body.i.i.i.ocfs2_find_smallest_chain.exit.i.i_crit_edge ]
  %65 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %id2.i, align 8
  %67 = call i16 @llvm.bswap.i16(i16 %66) #13
  %conv1.i.i = zext i16 %67 to i32
  %ac_bits_wanted.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %52, i32 0, i32 3
  %68 = ptrtoint ptr %ac_bits_wanted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ac_bits_wanted.i.i.i, align 4
  %ac_bits_given.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %52, i32 0, i32 4
  %70 = ptrtoint ptr %ac_bits_given.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ac_bits_given.i.i.i, align 8
  %sub.i.i.i = sub i32 %69, %71
  %call.i.i.i236 = call i32 @__ocfs2_claim_clusters(ptr noundef %call42.i, ptr noundef %52, i32 noundef %conv1.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull %bit_off.i.i, ptr noundef nonnull %num_bits.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i236)
  %cmp.i331.i = icmp slt i32 %call.i.i.i236, 0
  br i1 %cmp.i331.i, label %if.then.i.i, label %if.end25.i.i

if.then.i.i:                                      ; preds = %ocfs2_find_smallest_chain.exit.i.i
  %72 = zext i32 %call.i.i.i236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call.i.i.i236, label %do.body.i.i [
    i32 -28, label %if.then.i.i.cond.true.i.i_crit_edge
    i32 -512, label %if.then.i.i.cond.true.i.i_crit_edge282
    i32 -4, label %if.then.i.i.cond.true.i.i_crit_edge283
    i32 -122, label %if.then.i.i.cond.true.i.i_crit_edge284
  ]

if.then.i.i.cond.true.i.i_crit_edge284:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

if.then.i.i.cond.true.i.i_crit_edge283:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

if.then.i.i.cond.true.i.i_crit_edge282:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

if.then.i.i.cond.true.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

do.body.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #13
  %73 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  %conv22.i.i = sext i32 %call.i.i.i236 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_contig, i32 noundef 433, ptr noundef nonnull @.str.1, i64 noundef %conv22.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #13
  br label %cond.true.i.i

if.end25.i.i:                                     ; preds = %ocfs2_find_smallest_chain.exit.i.i
  %conv.i332.i = zext i16 %best.0.lcssa.i.i.i to i32
  %sb.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %74 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sb.i.i, align 4
  %76 = ptrtoint ptr %bit_off.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bit_off.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_clustersize_bits.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %79, i32 0, i32 36
  %80 = ptrtoint ptr %s_clustersize_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_clustersize_bits.i.i.i, align 8
  %s_blocksize_bits.i.i.i = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 2
  %82 = ptrtoint ptr %s_blocksize_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %s_blocksize_bits.i.i.i, align 4
  %conv.i.i.i = zext i8 %83 to i32
  %sub.i132.i.i = sub i32 %81, %conv.i.i.i
  %conv1.i.i.i = zext i32 %77 to i64
  %sh_prom.i.i.i = zext i32 %sub.i132.i.i to i64
  %shl.i.i.i = shl i64 %conv1.i.i.i, %sh_prom.i.i.i
  call fastcc void @trace_ocfs2_block_group_alloc_contig(i64 noundef %shl.i.i.i, i32 noundef %conv.i332.i) #13
  %84 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sb.i.i, align 4
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 26
  %86 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i133.i.i = call ptr @__getblk_gfp(ptr noundef %87, i64 noundef %shl.i.i.i, i32 noundef %89, i32 noundef 8) #13
  %tobool29.not.i.i = icmp eq ptr %call.i133.i.i, null
  br i1 %tobool29.not.i.i, label %do.body47.i.i, label %if.end58.i.i

do.body47.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m48.i.i) #13
  %90 = ptrtoint ptr %_m48.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 1152921504606846976, ptr %_m48.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m48.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_contig, i32 noundef 445, ptr noundef nonnull @.str.1, i64 noundef -12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m48.i.i) #13
  br label %cond.true.i.i

if.end58.i.i:                                     ; preds = %if.end25.i.i
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %call, i32 -56
  call void @ocfs2_set_new_buffer_uptodate(ptr noundef %ip_metadata_cache.i.i.i, ptr noundef nonnull %call.i133.i.i) #13
  %91 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_bits.i.i, align 4
  %call61.i.i = call fastcc i32 @ocfs2_block_group_fill(ptr noundef %call42.i, ptr noundef %call, ptr noundef nonnull %call.i133.i.i, i64 noundef %shl.i.i.i, i32 noundef %92, i16 noundef zeroext %best.0.lcssa.i.i.i, ptr noundef %id2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %cmp62.i.i = icmp slt i32 %call61.i.i, 0
  br i1 %cmp62.i.i, label %brelse.exit.i.i, label %bail.i.i

brelse.exit.i.i:                                  ; preds = %if.end58.i.i
  call void @__brelse(ptr noundef nonnull %call.i133.i.i) #13
  %93 = zext i32 %call61.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call61.i.i, label %do.body81.i.i [
    i32 -512, label %brelse.exit.i.i.cond.true.i.i_crit_edge
    i32 -4, label %brelse.exit.i.i.cond.true.i.i_crit_edge285
    i32 -28, label %brelse.exit.i.i.cond.true.i.i_crit_edge286
    i32 -122, label %brelse.exit.i.i.cond.true.i.i_crit_edge287
  ]

brelse.exit.i.i.cond.true.i.i_crit_edge287:       ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

brelse.exit.i.i.cond.true.i.i_crit_edge286:       ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

brelse.exit.i.i.cond.true.i.i_crit_edge285:       ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

brelse.exit.i.i.cond.true.i.i_crit_edge:          ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

do.body81.i.i:                                    ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m82.i.i) #13
  %94 = ptrtoint ptr %_m82.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 1152921504606846976, ptr %_m82.i.i, align 8
  %conv86.i.i = sext i32 %call61.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m82.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_contig, i32 noundef 454, ptr noundef nonnull @.str.1, i64 noundef %conv86.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m82.i.i) #13
  br label %cond.true.i.i

bail.i.i:                                         ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %tobool93.not.i.i = icmp eq i32 %call61.i.i, 0
  br i1 %tobool93.not.i.i, label %bail.i.i.ocfs2_block_group_alloc_contig.exit.i_crit_edge, label %bail.i.i.cond.true.i.i_crit_edge

bail.i.i.cond.true.i.i_crit_edge:                 ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

bail.i.i.ocfs2_block_group_alloc_contig.exit.i_crit_edge: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc_contig.exit.i

cond.true.i.i:                                    ; preds = %bail.i.i.cond.true.i.i_crit_edge, %do.body81.i.i, %brelse.exit.i.i.cond.true.i.i_crit_edge, %brelse.exit.i.i.cond.true.i.i_crit_edge285, %brelse.exit.i.i.cond.true.i.i_crit_edge286, %brelse.exit.i.i.cond.true.i.i_crit_edge287, %do.body47.i.i, %do.body.i.i, %if.then.i.i.cond.true.i.i_crit_edge, %if.then.i.i.cond.true.i.i_crit_edge282, %if.then.i.i.cond.true.i.i_crit_edge283, %if.then.i.i.cond.true.i.i_crit_edge284
  %status.0137.i.i = phi i32 [ %call61.i.i, %bail.i.i.cond.true.i.i_crit_edge ], [ %call61.i.i, %do.body81.i.i ], [ %call61.i.i, %brelse.exit.i.i.cond.true.i.i_crit_edge ], [ %call61.i.i, %brelse.exit.i.i.cond.true.i.i_crit_edge285 ], [ %call61.i.i, %brelse.exit.i.i.cond.true.i.i_crit_edge286 ], [ %call61.i.i, %brelse.exit.i.i.cond.true.i.i_crit_edge287 ], [ -12, %do.body47.i.i ], [ %call.i.i.i236, %if.then.i.i.cond.true.i.i_crit_edge ], [ %call.i.i.i236, %do.body.i.i ], [ %call.i.i.i236, %if.then.i.i.cond.true.i.i_crit_edge282 ], [ %call.i.i.i236, %if.then.i.i.cond.true.i.i_crit_edge283 ], [ %call.i.i.i236, %if.then.i.i.cond.true.i.i_crit_edge284 ]
  %95 = inttoptr i32 %status.0137.i.i to ptr
  br label %ocfs2_block_group_alloc_contig.exit.i

ocfs2_block_group_alloc_contig.exit.i:            ; preds = %cond.true.i.i, %bail.i.i.ocfs2_block_group_alloc_contig.exit.i_crit_edge
  %cond.i.i = phi ptr [ %95, %cond.true.i.i ], [ %call.i133.i.i, %bail.i.i.ocfs2_block_group_alloc_contig.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_bits.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit_off.i.i) #13
  %cmp82.i = icmp eq ptr %cond.i.i, inttoptr (i32 -28 to ptr)
  br i1 %cmp82.i, label %if.then84.i, label %ocfs2_block_group_alloc_contig.exit.i.if.end86.i_crit_edge

ocfs2_block_group_alloc_contig.exit.i.if.end86.i_crit_edge: ; preds = %ocfs2_block_group_alloc_contig.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86.i

if.then84.i:                                      ; preds = %ocfs2_block_group_alloc_contig.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit_off.i333.i) #13
  %96 = ptrtoint ptr %bit_off.i333.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %bit_off.i333.i, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_bits.i334.i) #13
  %97 = ptrtoint ptr %num_bits.i334.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %num_bits.i334.i, align 4, !annotation !219
  %98 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %id2.i, align 8
  %100 = call i16 @llvm.bswap.i16(i16 %99) #13
  %101 = lshr i16 %100, 1
  %102 = zext i16 %101 to i32
  %103 = ptrtoint ptr %cl_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %cl_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp15.not.i.i337.i = icmp eq i16 %104, 0
  br i1 %cmp15.not.i.i337.i, label %if.then84.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge, label %while.body.preheader.i.i340.i

if.then84.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge: ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_find_smallest_chain.exit.i355.i

while.body.preheader.i.i340.i:                    ; preds = %if.then84.i
  %105 = call i16 @llvm.bswap.i16(i16 %104) #13
  %umax.i.i338.i = call i16 @llvm.umax.i16(i16 %105, i16 1) #13
  %wide.trip.count.i.i339.i = zext i16 %umax.i.i338.i to i32
  br label %while.body.i.i350.i

while.body.i.i350.i:                              ; preds = %while.body.i.i350.i.while.body.i.i350.i_crit_edge, %while.body.preheader.i.i340.i
  %indvars.iv.i.i341.i = phi i32 [ 0, %while.body.preheader.i.i340.i ], [ %indvars.iv.next.i.i348.i, %while.body.i.i350.i.while.body.i.i350.i_crit_edge ]
  %best.017.i.i342.i = phi i16 [ 0, %while.body.preheader.i.i340.i ], [ %spec.select.i.i347.i, %while.body.i.i350.i.while.body.i.i350.i_crit_edge ]
  %idxprom.i.i343.i = zext i16 %best.017.i.i342.i to i32
  %c_total.i.i344.i = getelementptr %struct.ocfs2_chain_list, ptr %id2.i, i32 0, i32 5, i32 %idxprom.i.i343.i, i32 1
  %106 = ptrtoint ptr %c_total.i.i344.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %c_total.i.i344.i, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #13
  %c_total6.i.i345.i = getelementptr %struct.ocfs2_chain_list, ptr %id2.i, i32 0, i32 5, i32 %indvars.iv.i.i341.i, i32 1
  %109 = ptrtoint ptr %c_total6.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %c_total6.i.i345.i, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %111)
  %cmp7.i.i346.i = icmp ugt i32 %108, %111
  %112 = trunc i32 %indvars.iv.i.i341.i to i16
  %spec.select.i.i347.i = select i1 %cmp7.i.i346.i, i16 %112, i16 %best.017.i.i342.i
  %indvars.iv.next.i.i348.i = add nuw nsw i32 %indvars.iv.i.i341.i, 1
  %exitcond.not.i.i349.i = icmp eq i32 %indvars.iv.next.i.i348.i, %wide.trip.count.i.i339.i
  br i1 %exitcond.not.i.i349.i, label %while.body.i.i350.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge, label %while.body.i.i350.i.while.body.i.i350.i_crit_edge

while.body.i.i350.i.while.body.i.i350.i_crit_edge: ; preds = %while.body.i.i350.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i350.i

while.body.i.i350.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge: ; preds = %while.body.i.i350.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_find_smallest_chain.exit.i355.i

ocfs2_find_smallest_chain.exit.i355.i:            ; preds = %while.body.i.i350.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge, %if.then84.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge
  %best.0.lcssa.i.i351.i = phi i16 [ 0, %if.then84.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge ], [ %spec.select.i.i347.i, %while.body.i.i350.i.ocfs2_find_smallest_chain.exit.i355.i_crit_edge ]
  %conv1.i352.i = zext i16 %best.0.lcssa.i.i351.i to i32
  %113 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i354.i = getelementptr inbounds %struct.super_block, ptr %114, i32 0, i32 33
  %115 = ptrtoint ptr %s_fs_info.i354.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i354.i, align 16
  %s_feature_incompat.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %116, i32 0, i32 19
  %117 = ptrtoint ptr %s_feature_incompat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_feature_incompat.i.i.i, align 8
  %119 = and i32 %118, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i.i, label %ocfs2_find_smallest_chain.exit.i355.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge, label %if.end.i.i

ocfs2_find_smallest_chain.exit.i355.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge: ; preds = %ocfs2_find_smallest_chain.exit.i355.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

if.end.i.i:                                       ; preds = %ocfs2_find_smallest_chain.exit.i355.i
  %sb.i356.i = getelementptr inbounds %struct.ocfs2_super, ptr %116, i32 0, i32 1
  %120 = ptrtoint ptr %sb.i356.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sb.i356.i, align 4
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %sub.i.i.i.i = add i32 %123, 1048240
  %div1.i.i.i.i = lshr i32 %sub.i.i.i.i, 4
  %conv.i.i357.i = and i32 %div1.i.i.i.i, 65535
  %call4.i.i = call i32 @ocfs2_extend_trans(ptr noundef %call42.i, i32 noundef %conv.i.i357.i) #13
  %124 = zext i32 %call4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call4.i.i, label %do.body.i359.i [
    i32 0, label %if.end25.i360.i
    i32 -512, label %if.end.i.i.bail.i373.i_crit_edge
    i32 -4, label %if.end.i.i.bail.i373.i_crit_edge288
    i32 524289, label %if.end.i.i.bail.i373.i_crit_edge289
    i32 -28, label %if.end.i.i.bail.i373.i_crit_edge290
    i32 -122, label %if.end.i.i.bail.i373.i_crit_edge291
  ]

if.end.i.i.bail.i373.i_crit_edge291:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

if.end.i.i.bail.i373.i_crit_edge290:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

if.end.i.i.bail.i373.i_crit_edge289:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

if.end.i.i.bail.i373.i_crit_edge288:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

if.end.i.i.bail.i373.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

do.body.i359.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i335.i) #13
  %125 = ptrtoint ptr %_m.i335.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 1152921504606846976, ptr %_m.i335.i, align 8
  %conv22.i358.i = sext i32 %call4.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i335.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_discontig, i32 noundef 595, ptr noundef nonnull @.str.1, i64 noundef %conv22.i358.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i335.i) #13
  br label %bail.i373.i

if.end25.i360.i:                                  ; preds = %if.end.i.i
  %ac_disable_chain_relink.i.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %52, i32 0, i32 7
  %126 = ptrtoint ptr %ac_disable_chain_relink.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %ac_disable_chain_relink.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %100)
  %tobool.not1.i.i.i = icmp ult i16 %100, 2
  br i1 %tobool.not1.i.i.i, label %if.end25.i360.i.if.end61.i.i_crit_edge, label %if.end25.i360.i.while.body.i236.i.i_crit_edge

if.end25.i360.i.while.body.i236.i.i_crit_edge:    ; preds = %if.end25.i360.i
  br label %while.body.i236.i.i

if.end25.i360.i.if.end61.i.i_crit_edge:           ; preds = %if.end25.i360.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i236.i.i
  %shr.i.i.i = lshr i32 %min_bits.addr.02.i.i.i, 1
  %tobool.not.i.i.i = icmp ult i32 %min_bits.addr.02.i.i.i, 2
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge, label %while.cond.i.i.i.while.body.i236.i.i_crit_edge

while.cond.i.i.i.while.body.i236.i.i_crit_edge:   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i236.i.i

while.cond.i.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

while.body.i236.i.i:                              ; preds = %while.cond.i.i.i.while.body.i236.i.i_crit_edge, %if.end25.i360.i.while.body.i236.i.i_crit_edge
  %min_bits.addr.02.i.i.i = phi i32 [ %shr.i.i.i, %while.cond.i.i.i.while.body.i236.i.i_crit_edge ], [ %102, %if.end25.i360.i.while.body.i236.i.i_crit_edge ]
  %127 = ptrtoint ptr %ac_bits_wanted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ac_bits_wanted.i.i.i, align 4
  %129 = ptrtoint ptr %ac_bits_given.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ac_bits_given.i.i.i, align 8
  %sub.i.i235.i.i = sub i32 %128, %130
  %call.i.i.i.i = call i32 @__ocfs2_claim_clusters(ptr noundef %call42.i, ptr noundef %52, i32 noundef %min_bits.addr.02.i.i.i, i32 noundef %sub.i.i235.i.i, ptr noundef nonnull %bit_off.i333.i, ptr noundef nonnull %num_bits.i334.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, -28
  br i1 %cmp.not.i.i.i, label %while.cond.i.i.i, label %ocfs2_block_group_claim_bits.exit.i.i

ocfs2_block_group_claim_bits.exit.i.i:            ; preds = %while.body.i236.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp27.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp27.i.i, label %if.then29.i.i, label %ocfs2_block_group_claim_bits.exit.i.i.if.end61.i.i_crit_edge

ocfs2_block_group_claim_bits.exit.i.i.if.end61.i.i_crit_edge: ; preds = %ocfs2_block_group_claim_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i.i

if.then29.i.i:                                    ; preds = %ocfs2_block_group_claim_bits.exit.i.i
  %131 = zext i32 %call.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call.i.i.i.i, label %do.body49.i.i [
    i32 -28, label %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge
    i32 -512, label %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge292
    i32 -4, label %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge293
    i32 -122, label %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge294
  ]

if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge294: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge293: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge292: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

do.body49.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50.i.i) #13
  %132 = ptrtoint ptr %_m50.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 1152921504606846976, ptr %_m50.i.i, align 8
  %conv54.i.i = sext i32 %call.i.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_discontig, i32 noundef 612, ptr noundef nonnull @.str.1, i64 noundef %conv54.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50.i.i) #13
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

if.end61.i.i:                                     ; preds = %ocfs2_block_group_claim_bits.exit.i.i.if.end61.i.i_crit_edge, %if.end25.i360.i.if.end61.i.i_crit_edge
  %133 = ptrtoint ptr %num_bits.i334.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_bits.i334.i, align 4
  %135 = ptrtoint ptr %sb.i356.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sb.i356.i, align 4
  %137 = ptrtoint ptr %bit_off.i333.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bit_off.i333.i, align 4
  %s_fs_info.i.i362.i = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 33
  %139 = ptrtoint ptr %s_fs_info.i.i362.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_fs_info.i.i362.i, align 16
  %s_clustersize_bits.i.i363.i = getelementptr inbounds %struct.ocfs2_super, ptr %140, i32 0, i32 36
  %141 = ptrtoint ptr %s_clustersize_bits.i.i363.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_clustersize_bits.i.i363.i, align 8
  %s_blocksize_bits.i.i364.i = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 2
  %143 = ptrtoint ptr %s_blocksize_bits.i.i364.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %s_blocksize_bits.i.i364.i, align 4
  %conv.i237.i.i = zext i8 %144 to i32
  %sub.i.i365.i = sub i32 %142, %conv.i237.i.i
  %conv1.i.i366.i = zext i32 %138 to i64
  %sh_prom.i.i367.i = zext i32 %sub.i.i365.i to i64
  %shl.i.i368.i = shl i64 %conv1.i.i366.i, %sh_prom.i.i367.i
  call fastcc void @trace_ocfs2_block_group_alloc_discontig(i64 noundef %shl.i.i368.i, i32 noundef %conv1.i352.i) #13
  %145 = ptrtoint ptr %sb.i356.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sb.i356.i, align 4
  %s_bdev.i.i369.i = getelementptr inbounds %struct.super_block, ptr %146, i32 0, i32 26
  %147 = ptrtoint ptr %s_bdev.i.i369.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_bdev.i.i369.i, align 4
  %s_blocksize.i.i370.i = getelementptr inbounds %struct.super_block, ptr %146, i32 0, i32 3
  %149 = ptrtoint ptr %s_blocksize.i.i370.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %s_blocksize.i.i370.i, align 16
  %call.i.i371.i = call ptr @__getblk_gfp(ptr noundef %148, i64 noundef %shl.i.i368.i, i32 noundef %150, i32 noundef 8) #13
  %tobool66.not.i.i = icmp eq ptr %call.i.i371.i, null
  br i1 %tobool66.not.i.i, label %do.body84.i.i, label %if.end95.i.i

do.body84.i.i:                                    ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85.i.i) #13
  %151 = ptrtoint ptr %_m85.i.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 1152921504606846976, ptr %_m85.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_discontig, i32 noundef 625, ptr noundef nonnull @.str.1, i64 noundef -12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85.i.i) #13
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

if.end95.i.i:                                     ; preds = %if.end61.i.i
  %ip_metadata_cache.i.i372.i = getelementptr i8, ptr %call, i32 -56
  call void @ocfs2_set_new_buffer_uptodate(ptr noundef %ip_metadata_cache.i.i372.i, ptr noundef nonnull %call.i.i371.i) #13
  %152 = ptrtoint ptr %num_bits.i334.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_bits.i334.i, align 4
  %call98.i.i = call fastcc i32 @ocfs2_block_group_fill(ptr noundef %call42.i, ptr noundef %call, ptr noundef nonnull %call.i.i371.i, i64 noundef %shl.i.i368.i, i32 noundef %153, i16 noundef zeroext %best.0.lcssa.i.i351.i, ptr noundef %id2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i.i)
  %cmp99.i.i = icmp slt i32 %call98.i.i, 0
  br i1 %cmp99.i.i, label %if.then101.i.i, label %if.end129.i.i

if.then101.i.i:                                   ; preds = %if.end95.i.i
  %154 = zext i32 %call98.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call98.i.i, label %do.body118.i.i [
    i32 -512, label %if.then101.i.i.if.end.i.i.i_crit_edge
    i32 -4, label %if.then101.i.i.if.end.i.i.i_crit_edge295
    i32 -28, label %if.then101.i.i.if.end.i.i.i_crit_edge296
    i32 -122, label %if.then101.i.i.if.end.i.i.i_crit_edge297
  ]

if.then101.i.i.if.end.i.i.i_crit_edge297:         ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then101.i.i.if.end.i.i.i_crit_edge296:         ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then101.i.i.if.end.i.i.i_crit_edge295:         ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then101.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

do.body118.i.i:                                   ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m119.i.i) #13
  %155 = ptrtoint ptr %_m119.i.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 1152921504606846976, ptr %_m119.i.i, align 8
  %conv123.i.i = sext i32 %call98.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m119.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_discontig, i32 noundef 633, ptr noundef nonnull @.str.1, i64 noundef %conv123.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m119.i.i) #13
  br label %if.end.i.i.i

if.end129.i.i:                                    ; preds = %if.end95.i.i
  %156 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i238.i.i = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 33
  %158 = ptrtoint ptr %s_fs_info.i238.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %s_fs_info.i238.i.i, align 16
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i371.i, i32 0, i32 5
  %160 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %b_data.i.i.i, align 4
  %162 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %id2.i, align 8
  %164 = call i16 @llvm.bswap.i16(i16 %163) #13
  %conv.i239.i.i = zext i16 %164 to i32
  %bg_bits.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %161, i32 0, i32 2
  %165 = ptrtoint ptr %bg_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %bg_bits.i.i.i, align 2
  %167 = call i16 @llvm.bswap.i16(i16 %166) #13
  %cl_bpc.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 35, i32 0, i32 1
  %168 = ptrtoint ptr %cl_bpc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %cl_bpc.i.i.i, align 2
  %170 = call i16 @llvm.bswap.i16(i16 %169) #13
  %171 = udiv i16 %167, %170
  %div.i.i.i = zext i16 %171 to i32
  %sub.i240.i.i = sub nsw i32 %conv.i239.i.i, %div.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_cpos.i.i.i) #13
  %172 = ptrtoint ptr %p_cpos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 -1, ptr %p_cpos.i.i.i, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clusters.i.i.i) #13
  %173 = ptrtoint ptr %clusters.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -1, ptr %clusters.i.i.i, align 4, !annotation !219
  %call3.i.i.i = call i32 @ocfs2_journal_access_gd(ptr noundef %call42.i, ptr noundef %ip_metadata_cache.i.i372.i, ptr noundef nonnull %call.i.i371.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %while.cond.preheader.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i240.i.i)
  %cmp23.not134.i.i.i = icmp eq i32 %sub.i240.i.i, 0
  br i1 %cmp23.not134.i.i.i, label %while.cond.preheader.i.i.i.if.end81.i.i.i_crit_edge, label %land.rhs.lr.ph.i.i.i

while.cond.preheader.i.i.i.if.end81.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %while.cond.preheader.i.i.i
  %l_next_free_rec.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %161, i32 0, i32 12, i32 0, i32 1, i32 2
  %l_count.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %161, i32 0, i32 12, i32 0, i32 1, i32 1
  %sb.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %159, i32 0, i32 1
  %s_feature_incompat.i.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %159, i32 0, i32 19
  %l_recs.i.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %161, i32 1
  %bg_free_bits_count.i.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %161, i32 0, i32 3
  br label %land.rhs.i.i.i

if.then.i.i.i:                                    ; preds = %if.end129.i.i
  %174 = zext i32 %call3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call3.i.i.i, label %do.body.i.i.i [
    i32 -512, label %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge
    i32 -4, label %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge298
    i32 -28, label %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge299
    i32 -122, label %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge300
  ]

if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge300: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_grow_discontig.exit.i.i

if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge299: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_grow_discontig.exit.i.i

if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge298: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_grow_discontig.exit.i.i

if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_grow_discontig.exit.i.i

do.body.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #13
  %175 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 1152921504606846976, ptr %_m.i.i.i, align 8
  %conv20.i.i.i = sext i32 %call3.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_grow_discontig, i32 noundef 503, ptr noundef nonnull @.str.1, i64 noundef %conv20.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #13
  br label %ocfs2_block_group_grow_discontig.exit.i.i

land.rhs.i.i.i:                                   ; preds = %ocfs2_bg_discontig_add_extent.exit.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %min_bits.addr.0136.i.i.i = phi i32 [ %134, %land.rhs.lr.ph.i.i.i ], [ %241, %ocfs2_bg_discontig_add_extent.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %needed.0135.i.i.i = phi i32 [ %sub.i240.i.i, %land.rhs.lr.ph.i.i.i ], [ %sub77.i.i.i, %ocfs2_bg_discontig_add_extent.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %176 = ptrtoint ptr %l_next_free_rec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %l_next_free_rec.i.i.i, align 4
  %178 = call i16 @llvm.bswap.i16(i16 %177) #13
  %179 = ptrtoint ptr %l_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %l_count.i.i.i, align 2
  %181 = call i16 @llvm.bswap.i16(i16 %180) #13
  call void @__sanitizer_cov_trace_cmp2(i16 %178, i16 %181)
  %cmp27.i.i.i = icmp ult i16 %178, %181
  br i1 %cmp27.i.i.i, label %while.body.i241.i.i, label %land.rhs.i.i.i.bail.thread271.i.i_crit_edge

land.rhs.i.i.i.bail.thread271.i.i_crit_edge:      ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.thread271.i.i

while.body.i241.i.i:                              ; preds = %land.rhs.i.i.i
  %182 = call i32 @llvm.umin.i32(i32 %min_bits.addr.0136.i.i.i, i32 %needed.0135.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not1.i.i.i.i = icmp eq i32 %182, 0
  br i1 %tobool.not1.i.i.i.i, label %while.body.i241.i.i.if.end68.i.i.i_crit_edge, label %while.body.i241.i.i.while.body.i.i.i.i_crit_edge

while.body.i241.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.body.i241.i.i
  br label %while.body.i.i.i.i

while.body.i241.i.i.if.end68.i.i.i_crit_edge:     ; preds = %while.body.i241.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.body.i.i.i.i
  %shr.i.i.i.i = lshr i32 %min_bits.addr.02.i.i.i.i, 1
  %tobool.not.i.i.i.i = icmp ult i32 %min_bits.addr.02.i.i.i.i, 2
  br i1 %tobool.not.i.i.i.i, label %while.cond.i.i.i.i.bail.thread271.i.i_crit_edge, label %while.cond.i.i.i.i.while.body.i.i.i.i_crit_edge

while.cond.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i.i

while.cond.i.i.i.i.bail.thread271.i.i_crit_edge:  ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.thread271.i.i

while.body.i.i.i.i:                               ; preds = %while.cond.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.body.i241.i.i.while.body.i.i.i.i_crit_edge
  %min_bits.addr.02.i.i.i.i = phi i32 [ %shr.i.i.i.i, %while.cond.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %182, %while.body.i241.i.i.while.body.i.i.i.i_crit_edge ]
  %183 = ptrtoint ptr %ac_bits_wanted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ac_bits_wanted.i.i.i, align 4
  %185 = ptrtoint ptr %ac_bits_given.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ac_bits_given.i.i.i, align 8
  %sub.i.i.i.i.i = sub i32 %184, %186
  %call.i.i.i.i.i = call i32 @__ocfs2_claim_clusters(ptr noundef %call42.i, ptr noundef %52, i32 noundef %min_bits.addr.02.i.i.i.i, i32 noundef %sub.i.i.i.i.i, ptr noundef nonnull %p_cpos.i.i.i, ptr noundef nonnull %clusters.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, -28
  br i1 %cmp.not.i.i.i.i, label %while.cond.i.i.i.i, label %ocfs2_block_group_claim_bits.exit.i.i.i

ocfs2_block_group_claim_bits.exit.i.i.i:          ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp34.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp34.i.i.i, label %if.then36.i.i.i, label %ocfs2_block_group_claim_bits.exit.i.i.i.if.end68.i.i.i_crit_edge

ocfs2_block_group_claim_bits.exit.i.i.i.if.end68.i.i.i_crit_edge: ; preds = %ocfs2_block_group_claim_bits.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68.i.i.i

if.then36.i.i.i:                                  ; preds = %ocfs2_block_group_claim_bits.exit.i.i.i
  %187 = zext i32 %call.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i.i.i.i.i, label %do.body56.i.i.i [
    i32 -28, label %if.then36.i.i.i.bail.thread271.i.i_crit_edge
    i32 -512, label %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge
    i32 -4, label %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge301
    i32 -122, label %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge302
  ]

if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge302: ; preds = %if.then36.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_grow_discontig.exit.i.i

if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge301: ; preds = %if.then36.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_grow_discontig.exit.i.i

if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge: ; preds = %if.then36.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_grow_discontig.exit.i.i

if.then36.i.i.i.bail.thread271.i.i_crit_edge:     ; preds = %if.then36.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.thread271.i.i

do.body56.i.i.i:                                  ; preds = %if.then36.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57.i.i.i) #13
  %188 = ptrtoint ptr %_m57.i.i.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 1152921504606846976, ptr %_m57.i.i.i, align 8
  %conv61.i.i.i = sext i32 %call.i.i.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57.i.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_grow_discontig, i32 noundef 516, ptr noundef nonnull @.str.1, i64 noundef %conv61.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57.i.i.i) #13
  br label %ocfs2_block_group_grow_discontig.exit.i.i

if.end68.i.i.i:                                   ; preds = %ocfs2_block_group_claim_bits.exit.i.i.i.if.end68.i.i.i_crit_edge, %while.body.i241.i.i.if.end68.i.i.i_crit_edge
  %status.1.i126.i.i.i = phi i32 [ %call.i.i.i.i.i, %ocfs2_block_group_claim_bits.exit.i.i.i.if.end68.i.i.i_crit_edge ], [ 0, %while.body.i241.i.i.if.end68.i.i.i_crit_edge ]
  %189 = ptrtoint ptr %sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %sb.i.i.i, align 4
  %191 = ptrtoint ptr %p_cpos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %p_cpos.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %190, i32 0, i32 33
  %193 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_clustersize_bits.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %194, i32 0, i32 36
  %195 = ptrtoint ptr %s_clustersize_bits.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_clustersize_bits.i.i.i.i, align 8
  %s_blocksize_bits.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %190, i32 0, i32 2
  %197 = ptrtoint ptr %s_blocksize_bits.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %s_blocksize_bits.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %198 to i32
  %sub.i.i242.i.i = sub i32 %196, %conv.i.i.i.i
  %conv1.i.i.i.i = zext i32 %192 to i64
  %sh_prom.i.i.i.i = zext i32 %sub.i.i242.i.i to i64
  %shl.i.i.i.i = shl i64 %conv1.i.i.i.i, %sh_prom.i.i.i.i
  %199 = ptrtoint ptr %clusters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %clusters.i.i.i, align 4
  %201 = ptrtoint ptr %s_feature_incompat.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %s_feature_incompat.i.i.i.i.i, align 8
  %203 = and i32 %202, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i118.i.i.i = icmp eq i32 %203, 0
  br i1 %tobool.not.i118.i.i.i, label %do.body4.i.i.i.i, label %do.end9.i.i.i.i, !prof !211

do.body4.i.i.i.i:                                 ; preds = %if.end68.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #13, !srcloc !220
  unreachable

do.end9.i.i.i.i:                                  ; preds = %if.end68.i.i.i
  %204 = ptrtoint ptr %l_next_free_rec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %l_next_free_rec.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %tobool10.not.i.i.i.i = icmp eq i16 %205, 0
  br i1 %tobool10.not.i.i.i.i, label %if.then11.i.i.i.i, label %do.end9.i.i.i.i.ocfs2_bg_discontig_add_extent.exit.i.i.i_crit_edge

do.end9.i.i.i.i.ocfs2_bg_discontig_add_extent.exit.i.i.i_crit_edge: ; preds = %do.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_discontig_add_extent.exit.i.i.i

if.then11.i.i.i.i:                                ; preds = %do.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %s_blocksize.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %190, i32 0, i32 3
  %206 = ptrtoint ptr %s_blocksize.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %s_blocksize.i.i.i.i.i, align 16
  %sub.i.i119.i.i.i = add i32 %207, 1048240
  %div1.i.i.i.i.i = lshr i32 %sub.i.i119.i.i.i, 4
  %conv.i.i.i.i.i = trunc i32 %div1.i.i.i.i.i to i16
  %208 = call i16 @llvm.bswap.i16(i16 %conv.i.i.i.i.i) #13
  %209 = ptrtoint ptr %l_count.i.i.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %l_count.i.i.i, align 2
  br label %ocfs2_bg_discontig_add_extent.exit.i.i.i

ocfs2_bg_discontig_add_extent.exit.i.i.i:         ; preds = %if.then11.i.i.i.i, %do.end9.i.i.i.i.ocfs2_bg_discontig_add_extent.exit.i.i.i_crit_edge
  %210 = call i16 @llvm.bswap.i16(i16 %205) #13
  %idxprom.i.i.i.i = zext i16 %210 to i32
  %arrayidx.i.i.i.i = getelementptr [0 x %struct.ocfs2_extent_rec], ptr %l_recs.i.i.i.i, i32 0, i32 %idxprom.i.i.i.i
  %211 = call i64 @llvm.bswap.i64(i64 %shl.i.i.i.i) #13
  %e_blkno.i.i.i.i = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  %212 = ptrtoint ptr %e_blkno.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %211, ptr %e_blkno.i.i.i.i, align 8
  %213 = ptrtoint ptr %bg_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %bg_bits.i.i.i, align 2
  %215 = call i16 @llvm.bswap.i16(i16 %214) #13
  %216 = ptrtoint ptr %cl_bpc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %cl_bpc.i.i.i, align 2
  %218 = call i16 @llvm.bswap.i16(i16 %217) #13
  %219 = udiv i16 %215, %218
  %div.i.i.i.i = zext i16 %219 to i32
  %220 = call i32 @llvm.bswap.i32(i32 %div.i.i.i.i) #13
  %221 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %arrayidx.i.i.i.i, align 8
  %conv16.i.i.i.i = trunc i32 %200 to i16
  %222 = call i16 @llvm.bswap.i16(i16 %conv16.i.i.i.i) #13
  %223 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx.i.i.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %222, ptr %223, align 4
  %225 = ptrtoint ptr %cl_bpc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %cl_bpc.i.i.i, align 2
  %227 = call i16 @llvm.bswap.i16(i16 %226) #13
  %conv20.i.i.i.i = mul i16 %227, %conv16.i.i.i.i
  %add.i.i.i.i.i = add i16 %conv20.i.i.i.i, %215
  %228 = call i16 @llvm.bswap.i16(i16 %add.i.i.i.i.i) #13
  %229 = ptrtoint ptr %bg_bits.i.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %228, ptr %bg_bits.i.i.i, align 2
  %230 = ptrtoint ptr %cl_bpc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %cl_bpc.i.i.i, align 2
  %232 = call i16 @llvm.bswap.i16(i16 %231) #13
  %conv24.i.i.i.i = mul i16 %232, %conv16.i.i.i.i
  %233 = ptrtoint ptr %bg_free_bits_count.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %bg_free_bits_count.i.i.i.i, align 2
  %235 = call i16 @llvm.bswap.i16(i16 %234) #13
  %add.i40.i.i.i.i = add i16 %235, %conv24.i.i.i.i
  %236 = call i16 @llvm.bswap.i16(i16 %add.i40.i.i.i.i) #13
  %237 = ptrtoint ptr %bg_free_bits_count.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %236, ptr %bg_free_bits_count.i.i.i.i, align 2
  %add.i41.i.i.i.i = add i16 %210, 1
  %238 = call i16 @llvm.bswap.i16(i16 %add.i41.i.i.i.i) #13
  %239 = ptrtoint ptr %l_next_free_rec.i.i.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %238, ptr %l_next_free_rec.i.i.i, align 2
  %240 = ptrtoint ptr %clusters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %clusters.i.i.i, align 4
  %242 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %id2.i, align 8
  %244 = call i16 @llvm.bswap.i16(i16 %243) #13
  %conv71.i.i.i = zext i16 %244 to i32
  %245 = ptrtoint ptr %cl_bpc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %cl_bpc.i.i.i, align 2
  %247 = call i16 @llvm.bswap.i16(i16 %246) #13
  %248 = udiv i16 %add.i.i.i.i.i, %247
  %div76.i.i.i = zext i16 %248 to i32
  %sub77.i.i.i = sub nsw i32 %conv71.i.i.i, %div76.i.i.i
  %cmp23.not.i.i.i = icmp eq i32 %sub77.i.i.i, 0
  br i1 %cmp23.not.i.i.i, label %ocfs2_bg_discontig_add_extent.exit.i.i.i.if.end81.i.i.i_crit_edge, label %ocfs2_bg_discontig_add_extent.exit.i.i.i.land.rhs.i.i.i_crit_edge

ocfs2_bg_discontig_add_extent.exit.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %ocfs2_bg_discontig_add_extent.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i.i

ocfs2_bg_discontig_add_extent.exit.i.i.i.if.end81.i.i.i_crit_edge: ; preds = %ocfs2_bg_discontig_add_extent.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i.i.i

if.end81.i.i.i:                                   ; preds = %ocfs2_bg_discontig_add_extent.exit.i.i.i.if.end81.i.i.i_crit_edge, %while.cond.preheader.i.i.i.if.end81.i.i.i_crit_edge
  %status.0.lcssa.i.i.i = phi i32 [ %call3.i.i.i, %while.cond.preheader.i.i.i.if.end81.i.i.i_crit_edge ], [ %status.1.i126.i.i.i, %ocfs2_bg_discontig_add_extent.exit.i.i.i.if.end81.i.i.i_crit_edge ]
  call void @ocfs2_journal_dirty(ptr noundef %call42.i, ptr noundef nonnull %call.i.i371.i) #13
  br label %ocfs2_block_group_grow_discontig.exit.i.i

bail.thread271.i.i:                               ; preds = %if.then36.i.i.i.bail.thread271.i.i_crit_edge, %while.cond.i.i.i.i.bail.thread271.i.i_crit_edge, %land.rhs.i.i.i.bail.thread271.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clusters.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_cpos.i.i.i) #13
  br label %if.then162.i.i

ocfs2_block_group_grow_discontig.exit.i.i:        ; preds = %if.end81.i.i.i, %do.body56.i.i.i, %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge, %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge301, %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge302, %do.body.i.i.i, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge298, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge299, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge300
  %status.1.i243.i.i = phi i32 [ %status.0.lcssa.i.i.i, %if.end81.i.i.i ], [ %call3.i.i.i, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge ], [ %call3.i.i.i, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge298 ], [ %call3.i.i.i, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge299 ], [ %call3.i.i.i, %if.then.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge300 ], [ %call3.i.i.i, %do.body.i.i.i ], [ %call.i.i.i.i.i, %do.body56.i.i.i ], [ %call.i.i.i.i.i, %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge ], [ %call.i.i.i.i.i, %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge301 ], [ %call.i.i.i.i.i, %if.then36.i.i.i.ocfs2_block_group_grow_discontig.exit.i.i_crit_edge302 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clusters.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_cpos.i.i.i) #13
  %249 = zext i32 %status.1.i243.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %status.1.i243.i.i, label %do.body149.i.i [
    i32 0, label %ocfs2_block_group_grow_discontig.exit.i.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge
    i32 -512, label %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge
    i32 -4, label %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge303
    i32 524289, label %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge304
    i32 -28, label %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge305
    i32 -122, label %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge306
  ]

ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge306: ; preds = %ocfs2_block_group_grow_discontig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge305: ; preds = %ocfs2_block_group_grow_discontig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge304: ; preds = %ocfs2_block_group_grow_discontig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge303: ; preds = %ocfs2_block_group_grow_discontig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge: ; preds = %ocfs2_block_group_grow_discontig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i373.i

ocfs2_block_group_grow_discontig.exit.i.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge: ; preds = %ocfs2_block_group_grow_discontig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc_discontig.exit.i

do.body149.i.i:                                   ; preds = %ocfs2_block_group_grow_discontig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m150.i.i) #13
  %250 = ptrtoint ptr %_m150.i.i to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 1152921504606846976, ptr %_m150.i.i, align 8
  %conv154.i.i = sext i32 %status.1.i243.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m150.i.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc_discontig, i32 noundef 640, ptr noundef nonnull @.str.1, i64 noundef %conv154.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m150.i.i) #13
  br label %bail.i373.i

bail.i373.i:                                      ; preds = %do.body149.i.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge303, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge304, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge305, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge306, %do.body.i359.i, %if.end.i.i.bail.i373.i_crit_edge, %if.end.i.i.bail.i373.i_crit_edge288, %if.end.i.i.bail.i373.i_crit_edge289, %if.end.i.i.bail.i373.i_crit_edge290, %if.end.i.i.bail.i373.i_crit_edge291
  %bg_bh.0.i.i = phi ptr [ null, %if.end.i.i.bail.i373.i_crit_edge ], [ null, %if.end.i.i.bail.i373.i_crit_edge288 ], [ null, %if.end.i.i.bail.i373.i_crit_edge289 ], [ null, %if.end.i.i.bail.i373.i_crit_edge290 ], [ null, %if.end.i.i.bail.i373.i_crit_edge291 ], [ null, %do.body.i359.i ], [ %call.i.i371.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge ], [ %call.i.i371.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge303 ], [ %call.i.i371.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge304 ], [ %call.i.i371.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge305 ], [ %call.i.i371.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge306 ], [ %call.i.i371.i, %do.body149.i.i ]
  %status.0.i.i = phi i32 [ %call4.i.i, %if.end.i.i.bail.i373.i_crit_edge ], [ %call4.i.i, %if.end.i.i.bail.i373.i_crit_edge288 ], [ %call4.i.i, %if.end.i.i.bail.i373.i_crit_edge289 ], [ %call4.i.i, %if.end.i.i.bail.i373.i_crit_edge290 ], [ %call4.i.i, %if.end.i.i.bail.i373.i_crit_edge291 ], [ %call4.i.i, %do.body.i359.i ], [ %status.1.i243.i.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge ], [ %status.1.i243.i.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge303 ], [ %status.1.i243.i.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge304 ], [ %status.1.i243.i.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge305 ], [ %status.1.i243.i.i, %ocfs2_block_group_grow_discontig.exit.i.i.bail.i373.i_crit_edge306 ], [ %status.1.i243.i.i, %do.body149.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool161.not.i.i = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool161.not.i.i, label %bail.i373.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge, label %bail.i373.i.if.then162.i.i_crit_edge

bail.i373.i.if.then162.i.i_crit_edge:             ; preds = %bail.i373.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then162.i.i

bail.i373.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge: ; preds = %bail.i373.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc_discontig.exit.i

if.then162.i.i:                                   ; preds = %bail.i373.i.if.then162.i.i_crit_edge, %bail.thread271.i.i
  %status.0266.i.i = phi i32 [ %status.0.i.i, %bail.i373.i.if.then162.i.i_crit_edge ], [ -28, %bail.thread271.i.i ]
  %bg_bh.0265.i.i = phi ptr [ %bg_bh.0.i.i, %bail.i373.i.if.then162.i.i_crit_edge ], [ %call.i.i371.i, %bail.thread271.i.i ]
  %tobool.not.i245.i.i = icmp eq ptr %bg_bh.0265.i.i, null
  br i1 %tobool.not.i245.i.i, label %if.then162.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge, label %if.then162.i.i.if.end.i.i.i_crit_edge

if.then162.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.then162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then162.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge: ; preds = %if.then162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then162.i.i.if.end.i.i.i_crit_edge, %do.body118.i.i, %if.then101.i.i.if.end.i.i.i_crit_edge, %if.then101.i.i.if.end.i.i.i_crit_edge295, %if.then101.i.i.if.end.i.i.i_crit_edge296, %if.then101.i.i.if.end.i.i.i_crit_edge297
  %bg_bh.0265285.i.i = phi ptr [ %bg_bh.0265.i.i, %if.then162.i.i.if.end.i.i.i_crit_edge ], [ %call.i.i371.i, %do.body118.i.i ], [ %call.i.i371.i, %if.then101.i.i.if.end.i.i.i_crit_edge ], [ %call.i.i371.i, %if.then101.i.i.if.end.i.i.i_crit_edge295 ], [ %call.i.i371.i, %if.then101.i.i.if.end.i.i.i_crit_edge296 ], [ %call.i.i371.i, %if.then101.i.i.if.end.i.i.i_crit_edge297 ]
  %status.0266284.i.i = phi i32 [ %status.0266.i.i, %if.then162.i.i.if.end.i.i.i_crit_edge ], [ %call98.i.i, %do.body118.i.i ], [ %call98.i.i, %if.then101.i.i.if.end.i.i.i_crit_edge ], [ %call98.i.i, %if.then101.i.i.if.end.i.i.i_crit_edge295 ], [ %call98.i.i, %if.then101.i.i.if.end.i.i.i_crit_edge296 ], [ %call98.i.i, %if.then101.i.i.if.end.i.i.i_crit_edge297 ]
  %b_data.i246.i.i = getelementptr inbounds %struct.buffer_head, ptr %bg_bh.0265285.i.i, i32 0, i32 5
  %251 = ptrtoint ptr %b_data.i246.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %b_data.i246.i.i, align 4
  %l_next_free_rec.i247.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %252, i32 0, i32 12, i32 0, i32 1, i32 2
  %253 = ptrtoint ptr %l_next_free_rec.i247.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %l_next_free_rec.i247.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %254)
  %cmp46.not.i.i.i = icmp eq i16 %254, 0
  br i1 %cmp46.not.i.i.i, label %if.end.i.i.i.brelse.exit.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.i.brelse.exit.i.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %l_recs.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %252, i32 1
  %ac_bh.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %52, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.047.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [0 x %struct.ocfs2_extent_rec], ptr %l_recs.i.i.i, i32 0, i32 %i.047.i.i.i
  %255 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %52, align 8
  %257 = ptrtoint ptr %ac_bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ac_bh.i.i.i, align 4
  %e_blkno.i.i.i = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx.i.i.i, i32 0, i32 2
  %259 = ptrtoint ptr %e_blkno.i.i.i to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %e_blkno.i.i.i, align 8
  %261 = call i64 @llvm.bswap.i64(i64 %260) #13
  %262 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx.i.i.i, i32 0, i32 1
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %262, align 4
  %265 = call i16 @llvm.bswap.i16(i16 %264) #13
  %conv2.i.i.i = zext i16 %265 to i32
  %call.i.i248.i.i = call fastcc i32 @_ocfs2_free_clusters(ptr noundef %call42.i, ptr noundef %256, ptr noundef %258, i64 noundef %261, i32 noundef %conv2.i.i.i, ptr noundef nonnull @_ocfs2_set_bit) #13
  %266 = zext i32 %call.i.i248.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i.i248.i.i, label %do.body.i249.i.i [
    i32 0, label %for.body.i.i.i.for.inc.i.i.i_crit_edge
    i32 -512, label %for.body.i.i.i.for.inc.i.i.i_crit_edge307
    i32 -4, label %for.body.i.i.i.for.inc.i.i.i_crit_edge308
    i32 524289, label %for.body.i.i.i.for.inc.i.i.i_crit_edge309
    i32 -28, label %for.body.i.i.i.for.inc.i.i.i_crit_edge310
    i32 -122, label %for.body.i.i.i.for.inc.i.i.i_crit_edge311
  ]

for.body.i.i.i.for.inc.i.i.i_crit_edge311:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge310:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge309:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge308:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge307:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

do.body.i249.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i244.i.i) #13
  %267 = ptrtoint ptr %_m.i244.i.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 1152921504606846976, ptr %_m.i244.i.i, align 8
  %conv21.i.i.i = sext i32 %call.i.i248.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i244.i.i, ptr noundef nonnull @__func__.ocfs2_bg_alloc_cleanup, i32 noundef 565, ptr noundef nonnull @.str.1, i64 noundef %conv21.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i244.i.i) #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.body.i249.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge307, %for.body.i.i.i.for.inc.i.i.i_crit_edge308, %for.body.i.i.i.for.inc.i.i.i_crit_edge309, %for.body.i.i.i.for.inc.i.i.i_crit_edge310, %for.body.i.i.i.for.inc.i.i.i_crit_edge311
  %inc.i.i.i = add nuw nsw i32 %i.047.i.i.i, 1
  %268 = ptrtoint ptr %l_next_free_rec.i247.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %l_next_free_rec.i247.i.i, align 4
  %270 = call i16 @llvm.bswap.i16(i16 %269) #13
  %conv.i250.i.i = zext i16 %270 to i32
  %cmp.i251.i.i = icmp ult i32 %inc.i.i.i, %conv.i250.i.i
  br i1 %cmp.i251.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.brelse.exit.i.i.i_crit_edge

for.inc.i.i.i.brelse.exit.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

brelse.exit.i.i.i:                                ; preds = %for.inc.i.i.i.brelse.exit.i.i.i_crit_edge, %if.end.i.i.i.brelse.exit.i.i.i_crit_edge
  %ip_metadata_cache.i.i252.i.i = getelementptr i8, ptr %call, i32 -56
  call void @ocfs2_remove_from_cache(ptr noundef %ip_metadata_cache.i.i252.i.i, ptr noundef nonnull %bg_bh.0265285.i.i) #13
  call void @__brelse(ptr noundef nonnull %bg_bh.0265285.i.i) #13
  br label %ocfs2_bg_alloc_cleanup.exit.i.i

ocfs2_bg_alloc_cleanup.exit.i.i:                  ; preds = %brelse.exit.i.i.i, %if.then162.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge, %do.body84.i.i, %do.body49.i.i, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge292, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge293, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge294, %while.cond.i.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge, %ocfs2_find_smallest_chain.exit.i355.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge
  %status.0266278.i.i = phi i32 [ %status.0266.i.i, %if.then162.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge ], [ %status.0266284.i.i, %brelse.exit.i.i.i ], [ %call.i.i.i.i, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge ], [ -12, %do.body84.i.i ], [ -28, %ocfs2_find_smallest_chain.exit.i355.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge ], [ %call.i.i.i.i, %do.body49.i.i ], [ %call.i.i.i.i, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge292 ], [ %call.i.i.i.i, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge293 ], [ %call.i.i.i.i, %if.then29.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge294 ], [ -28, %while.cond.i.i.i.ocfs2_bg_alloc_cleanup.exit.i.i_crit_edge ]
  %271 = inttoptr i32 %status.0266278.i.i to ptr
  br label %ocfs2_block_group_alloc_discontig.exit.i

ocfs2_block_group_alloc_discontig.exit.i:         ; preds = %ocfs2_bg_alloc_cleanup.exit.i.i, %bail.i373.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge, %ocfs2_block_group_grow_discontig.exit.i.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge
  %cond.i374.i = phi ptr [ %271, %ocfs2_bg_alloc_cleanup.exit.i.i ], [ %bg_bh.0.i.i, %bail.i373.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge ], [ %call.i.i371.i, %ocfs2_block_group_grow_discontig.exit.i.i.ocfs2_block_group_alloc_discontig.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_bits.i334.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit_off.i333.i) #13
  br label %if.end86.i

if.end86.i:                                       ; preds = %ocfs2_block_group_alloc_discontig.exit.i, %ocfs2_block_group_alloc_contig.exit.i.if.end86.i_crit_edge
  %bg_bh.0.i = phi ptr [ %cond.i374.i, %ocfs2_block_group_alloc_discontig.exit.i ], [ %cond.i.i, %ocfs2_block_group_alloc_contig.exit.i.if.end86.i_crit_edge ]
  %cmp.i375.i = icmp ugt ptr %bg_bh.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i375.i, label %if.then88.i, label %if.end121.i

if.then88.i:                                      ; preds = %if.end86.i
  %272 = ptrtoint ptr %bg_bh.0.i to i32
  %273 = zext i32 %272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %273, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %272, label %do.body109.i [
    i32 -28, label %if.then88.i.bail.i_crit_edge
    i32 -512, label %if.then88.i.bail.i_crit_edge312
    i32 -4, label %if.then88.i.bail.i_crit_edge313
    i32 524289, label %if.then88.i.bail.i_crit_edge314
    i32 -122, label %if.then88.i.bail.i_crit_edge315
  ]

if.then88.i.bail.i_crit_edge315:                  ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then88.i.bail.i_crit_edge314:                  ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then88.i.bail.i_crit_edge313:                  ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then88.i.bail.i_crit_edge312:                  ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then88.i.bail.i_crit_edge:                     ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

do.body109.i:                                     ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110.i) #13
  %274 = ptrtoint ptr %_m110.i to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 1152921504606846976, ptr %_m110.i, align 8
  %conv114.i = sext i32 %272 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc, i32 noundef 705, ptr noundef nonnull @.str.1, i64 noundef %conv114.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110.i) #13
  br label %bail.i

if.end121.i:                                      ; preds = %if.end86.i
  %b_data122.i = getelementptr inbounds %struct.buffer_head, ptr %bg_bh.0.i, i32 0, i32 5
  %275 = ptrtoint ptr %b_data122.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %b_data122.i, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %call, i32 -56
  %call124.i = call i32 @ocfs2_journal_access_di(ptr noundef %call42.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %9, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %cmp125.i = icmp slt i32 %call124.i, 0
  br i1 %cmp125.i, label %if.then127.i, label %if.end155.i

if.then127.i:                                     ; preds = %if.end121.i
  %277 = zext i32 %call124.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %277, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call124.i, label %do.body144.i [
    i32 -512, label %if.then127.i.bail.i_crit_edge
    i32 -4, label %if.then127.i.bail.i_crit_edge316
    i32 -28, label %if.then127.i.bail.i_crit_edge317
    i32 -122, label %if.then127.i.bail.i_crit_edge318
  ]

if.then127.i.bail.i_crit_edge318:                 ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then127.i.bail.i_crit_edge317:                 ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then127.i.bail.i_crit_edge316:                 ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then127.i.bail.i_crit_edge:                    ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

do.body144.i:                                     ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m145.i) #13
  %278 = ptrtoint ptr %_m145.i to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 1152921504606846976, ptr %_m145.i, align 8
  %conv149.i = sext i32 %call124.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m145.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc, i32 noundef 713, ptr noundef nonnull @.str.1, i64 noundef %conv149.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m145.i) #13
  br label %bail.i

if.end155.i:                                      ; preds = %if.end121.i
  %bg_chain.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %276, i32 0, i32 4
  %279 = ptrtoint ptr %bg_chain.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %bg_chain.i, align 2
  %281 = call i16 @llvm.bswap.i16(i16 %280) #13
  %cl_recs.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 35, i32 0, i32 7
  %idxprom.i = zext i16 %281 to i32
  %arrayidx.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i, i32 0, i32 %idxprom.i
  %bg_free_bits_count.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %276, i32 0, i32 3
  %282 = ptrtoint ptr %bg_free_bits_count.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %bg_free_bits_count.i, align 4
  %284 = call i16 @llvm.bswap.i16(i16 %283) #13
  %conv156.i = zext i16 %284 to i32
  %285 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx.i, align 4
  %287 = call i32 @llvm.bswap.i32(i32 %286) #13
  %add.i.i = add i32 %287, %conv156.i
  %288 = call i32 @llvm.bswap.i32(i32 %add.i.i) #13
  %289 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %arrayidx.i, align 4
  %c_total.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i, i32 0, i32 %idxprom.i, i32 1
  %bg_bits.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %276, i32 0, i32 2
  %290 = ptrtoint ptr %bg_bits.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %bg_bits.i, align 2
  %292 = call i16 @llvm.bswap.i16(i16 %291) #13
  %conv160.i = zext i16 %292 to i32
  %293 = ptrtoint ptr %c_total.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %c_total.i, align 4
  %295 = call i32 @llvm.bswap.i32(i32 %294) #13
  %add.i376.i = add i32 %295, %conv160.i
  %296 = call i32 @llvm.bswap.i32(i32 %add.i376.i) #13
  %297 = ptrtoint ptr %c_total.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %c_total.i, align 4
  %bg_blkno.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %276, i32 0, i32 9
  %298 = ptrtoint ptr %bg_blkno.i to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %bg_blkno.i, align 8
  %c_blkno.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i, i32 0, i32 %idxprom.i, i32 2
  %300 = ptrtoint ptr %c_blkno.i to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %299, ptr %c_blkno.i, align 8
  %cl_next_free_rec.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 35, i32 0, i32 3
  %301 = ptrtoint ptr %cl_next_free_rec.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %cl_next_free_rec.i, align 2
  %303 = call i16 @llvm.bswap.i16(i16 %302) #13
  %304 = ptrtoint ptr %cl_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %cl_count.i.i.i, align 4
  %306 = call i16 @llvm.bswap.i16(i16 %305) #13
  call void @__sanitizer_cov_trace_cmp2(i16 %303, i16 %306)
  %cmp166.i = icmp ult i16 %303, %306
  br i1 %cmp166.i, label %if.then168.i, label %if.end155.i.if.end170.i_crit_edge

if.end155.i.if.end170.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170.i

if.then168.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i377.i = add nuw i16 %303, 1
  %307 = call i16 @llvm.bswap.i16(i16 %add.i377.i) #13
  %308 = ptrtoint ptr %cl_next_free_rec.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %307, ptr %cl_next_free_rec.i, align 2
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then168.i, %if.end155.i.if.end170.i_crit_edge
  %309 = ptrtoint ptr %bg_bits.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %bg_bits.i, align 2
  %311 = call i16 @llvm.bswap.i16(i16 %310) #13
  %conv172.i = zext i16 %311 to i32
  %312 = ptrtoint ptr %bg_free_bits_count.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %bg_free_bits_count.i, align 4
  %314 = call i16 @llvm.bswap.i16(i16 %313) #13
  %conv174.i = zext i16 %314 to i32
  %sub.i = sub nsw i32 %conv172.i, %conv174.i
  %315 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %id1, align 4
  %317 = call i32 @llvm.bswap.i32(i32 %316) #13
  %add.i378.i = add i32 %sub.i, %317
  %318 = call i32 @llvm.bswap.i32(i32 %add.i378.i) #13
  %319 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %id1, align 4
  %320 = ptrtoint ptr %bg_bits.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %bg_bits.i, align 2
  %322 = call i16 @llvm.bswap.i16(i16 %321) #13
  %conv177.i = zext i16 %322 to i32
  %323 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %i_total, align 4
  %325 = call i32 @llvm.bswap.i32(i32 %324) #13
  %add.i379.i = add i32 %325, %conv177.i
  %326 = call i32 @llvm.bswap.i32(i32 %add.i379.i) #13
  %327 = ptrtoint ptr %i_total to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %i_total, align 4
  %i_clusters.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 6
  %328 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %id2.i, align 8
  %330 = call i16 @llvm.bswap.i16(i16 %329) #13
  %conv179.i = zext i16 %330 to i32
  %331 = ptrtoint ptr %i_clusters.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %i_clusters.i, align 4
  %333 = call i32 @llvm.bswap.i32(i32 %332) #13
  %add.i380.i = add i32 %333, %conv179.i
  %334 = call i32 @llvm.bswap.i32(i32 %add.i380.i) #13
  %335 = ptrtoint ptr %i_clusters.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %i_clusters.i, align 4
  call void @ocfs2_journal_dirty(ptr noundef %call42.i, ptr noundef %9) #13
  %ip_lock.i = getelementptr i8, ptr %call, i32 -232
  call void @_raw_spin_lock(ptr noundef %ip_lock.i) #13
  %336 = ptrtoint ptr %i_clusters.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %i_clusters.i, align 4
  %338 = call i32 @llvm.bswap.i32(i32 %337) #13
  %ip_clusters.i = getelementptr i8, ptr %call, i32 -176
  %339 = ptrtoint ptr %ip_clusters.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %ip_clusters.i, align 8
  %340 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %i_sb.i, align 4
  %342 = ptrtoint ptr %i_clusters.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %i_clusters.i, align 4
  %344 = call i32 @llvm.bswap.i32(i32 %343) #13
  %conv.i382.i = zext i32 %344 to i64
  %s_fs_info.i383.i = getelementptr inbounds %struct.super_block, ptr %341, i32 0, i32 33
  %345 = ptrtoint ptr %s_fs_info.i383.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %s_fs_info.i383.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %346, i32 0, i32 36
  %347 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %sh_prom.i.i = zext i32 %348 to i64
  %shl.i.i = shl i64 %conv.i382.i, %sh_prom.i.i
  %349 = call i64 @llvm.bswap.i64(i64 %shl.i.i) #13
  %i_size.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 9
  %350 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %350)
  store i64 %349, ptr %i_size.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ip_lock.i) #13
  %351 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %351)
  %352 = load i64, ptr %i_size.i, align 8
  %353 = call i64 @llvm.bswap.i64(i64 %352) #13
  %354 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i.i = and i32 %354, -16384
  %355 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %357, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %358 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool.not.i.i385.i = icmp eq i32 %358, 0
  br i1 %tobool.not.i.i385.i, label %if.end170.i.i_size_write.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end170.i.i_size_write.exit.i_crit_edge:        ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end170.i
  %359 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i.i.i = and i32 %359, -16384
  %360 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %362, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !222
  %363 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %363, -16384
  %364 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %364, i32 0, i32 3
  %365 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i386.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %366
  %367 = ptrtoint ptr %arrayidx.i.i386.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx.i.i386.i, align 4
  %add.i28.i.i = add i32 %368, ptrtoint (ptr @lockdep_recursion to i32)
  %369 = inttoptr i32 %add.i28.i.i to ptr
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load volatile i32, ptr %369, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !223
  %372 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i7.i.i.i = and i32 %372, -16384
  %373 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i387.i = add i32 %375, -1
  store volatile i32 %sub.i.i.i387.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool20.not.i.i.i = icmp eq i32 %371, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i389.i, label %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge

land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.rhs.i.i389.i:                                ; preds = %land.lhs.true.i.i.i
  %376 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i29.i.i = and i32 %376, -16384
  %377 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %377, i32 0, i32 1
  %378 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %cmp.i.i388.i = icmp eq i32 %379, 0
  br i1 %cmp.i.i388.i, label %land.rhs22.i.i.i, label %land.rhs.i.i389.i.i_size_write.exit.i_crit_edge

land.rhs.i.i389.i.i_size_write.exit.i_crit_edge:  ; preds = %land.rhs.i.i389.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i389.i
  %380 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i9.i.i.i = and i32 %380, -16384
  %381 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %381, i32 0, i32 1
  %382 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %383, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !224
  %384 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %385
  %386 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %387, ptrtoint (ptr @hardirqs_enabled to i32)
  %388 = inttoptr i32 %add47.i.i.i to ptr
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load volatile i32, ptr %388, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !225
  %391 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i12.i.i.i = and i32 %391, -16384
  %392 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %392, i32 0, i32 1
  %393 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %394, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %390)
  %tobool54.not.i.i.i = icmp eq i32 %390, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, label %if.then.i.i390.i, !prof !215

land.rhs58.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

if.then.i.i390.i:                                 ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %i_size_write.exit.i

i_size_write.exit.i:                              ; preds = %if.then.i.i390.i, %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs.i.i389.i.i_size_write.exit.i_crit_edge, %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge, %if.end170.i.i_size_write.exit.i_crit_edge
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 23
  %395 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %396, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !226
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 23, i32 1
  %397 = call ptr @llvm.returnaddress(i32 0) #13
  %398 = ptrtoint ptr %397 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %398) #13
  %i_size8.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %399 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 %353, ptr %i_size8.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %398) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !227
  %400 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %401, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !228
  %402 = call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i26.i.i = and i32 %402, -16384
  %403 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i391.i = add i32 %405, -1
  store volatile i32 %sub.i.i391.i, ptr %preempt_count.i.i27.i.i, align 4
  %406 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i393.i = getelementptr inbounds %struct.super_block, ptr %407, i32 0, i32 33
  %408 = ptrtoint ptr %s_fs_info.i393.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %s_fs_info.i393.i, align 16
  %s_clustersize_bits.i394.i = getelementptr inbounds %struct.ocfs2_super, ptr %409, i32 0, i32 36
  %410 = ptrtoint ptr %s_clustersize_bits.i394.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %s_clustersize_bits.i394.i, align 8
  %sub.i.i = add i32 %411, -9
  %412 = ptrtoint ptr %ip_clusters.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ip_clusters.i, align 8
  %conv.i395.i = zext i32 %413 to i64
  %sh_prom.i396.i = zext i32 %sub.i.i to i64
  %shl.i397.i = shl i64 %conv.i395.i, %sh_prom.i396.i
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %414 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %414)
  store i64 %shl.i397.i, ptr %i_blocks.i, align 8
  %h_aborted.i.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call42.i, i32 0, i32 7
  %415 = ptrtoint ptr %h_aborted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %bf.load.i.i.i = load i32, ptr %h_aborted.i.i.i, align 4
  %416 = and i32 %bf.load.i.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %416)
  %tobool.not.i.i398.i = icmp eq i32 %416, 0
  br i1 %tobool.not.i.i398.i, label %lor.lhs.false.i.i.i, label %i_size_write.exit.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge

i_size_write.exit.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %i_size_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_update_inode_fsync_trans.exit.i

lor.lhs.false.i.i.i:                              ; preds = %i_size_write.exit.i
  %417 = ptrtoint ptr %call42.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %call42.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %418, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, label %is_handle_aborted.exit.i.i

lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_update_inode_fsync_trans.exit.i

is_handle_aborted.exit.i.i:                       ; preds = %lor.lhs.false.i.i.i
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %418, align 8
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %420, align 8
  %and.i.i.i399.i = and i32 %422, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i399.i)
  %tobool.not.i400.i = icmp eq i32 %and.i.i.i399.i, 0
  br i1 %tobool.not.i400.i, label %if.then.i401.i, label %is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge

is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_update_inode_fsync_trans.exit.i

if.then.i401.i:                                   ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %t_tid.i.i = getelementptr inbounds %struct.transaction_s, ptr %418, i32 0, i32 1
  %423 = ptrtoint ptr %t_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %t_tid.i.i, align 4
  %i_sync_tid.i.i = getelementptr i8, ptr %call, i32 884
  %425 = ptrtoint ptr %i_sync_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %424, ptr %i_sync_tid.i.i, align 4
  br label %ocfs2_update_inode_fsync_trans.exit.i

ocfs2_update_inode_fsync_trans.exit.i:            ; preds = %if.then.i401.i, %is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, %lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, %i_size_write.exit.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge
  br i1 %tobool74.not.i, label %ocfs2_update_inode_fsync_trans.exit.i.bail.i_crit_edge, label %if.then190.i

ocfs2_update_inode_fsync_trans.exit.i.bail.i_crit_edge: ; preds = %ocfs2_update_inode_fsync_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i

if.then190.i:                                     ; preds = %ocfs2_update_inode_fsync_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %426 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %ac.i, align 4
  %ac_last_group191.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %427, i32 0, i32 9
  %428 = ptrtoint ptr %ac_last_group191.i to i32
  call void @__asan_load8_noabort(i32 %428)
  %429 = load i64, ptr %ac_last_group191.i, align 8
  %430 = ptrtoint ptr %last_alloc_group to i32
  call void @__asan_store8_noabort(i32 %430)
  store i64 %429, ptr %last_alloc_group, align 8
  br label %bail.i

bail.i:                                           ; preds = %if.then190.i, %ocfs2_update_inode_fsync_trans.exit.i.bail.i_crit_edge, %do.body144.i, %if.then127.i.bail.i_crit_edge, %if.then127.i.bail.i_crit_edge316, %if.then127.i.bail.i_crit_edge317, %if.then127.i.bail.i_crit_edge318, %do.body109.i, %if.then88.i.bail.i_crit_edge, %if.then88.i.bail.i_crit_edge312, %if.then88.i.bail.i_crit_edge313, %if.then88.i.bail.i_crit_edge314, %if.then88.i.bail.i_crit_edge315
  %bg_bh.1.i = phi ptr [ null, %if.then88.i.bail.i_crit_edge ], [ %bg_bh.0.i, %if.then190.i ], [ %bg_bh.0.i, %ocfs2_update_inode_fsync_trans.exit.i.bail.i_crit_edge ], [ %bg_bh.0.i, %if.then127.i.bail.i_crit_edge ], [ %bg_bh.0.i, %if.then127.i.bail.i_crit_edge316 ], [ %bg_bh.0.i, %if.then127.i.bail.i_crit_edge317 ], [ %bg_bh.0.i, %if.then127.i.bail.i_crit_edge318 ], [ %bg_bh.0.i, %do.body144.i ], [ null, %do.body109.i ], [ null, %if.then88.i.bail.i_crit_edge312 ], [ null, %if.then88.i.bail.i_crit_edge313 ], [ null, %if.then88.i.bail.i_crit_edge314 ], [ null, %if.then88.i.bail.i_crit_edge315 ]
  %status.0.i = phi i32 [ %272, %if.then88.i.bail.i_crit_edge ], [ 0, %if.then190.i ], [ 0, %ocfs2_update_inode_fsync_trans.exit.i.bail.i_crit_edge ], [ %call124.i, %if.then127.i.bail.i_crit_edge ], [ %call124.i, %if.then127.i.bail.i_crit_edge316 ], [ %call124.i, %if.then127.i.bail.i_crit_edge317 ], [ %call124.i, %if.then127.i.bail.i_crit_edge318 ], [ %call124.i, %do.body144.i ], [ %272, %do.body109.i ], [ %272, %if.then88.i.bail.i_crit_edge312 ], [ %272, %if.then88.i.bail.i_crit_edge313 ], [ %272, %if.then88.i.bail.i_crit_edge314 ], [ %272, %if.then88.i.bail.i_crit_edge315 ]
  %tobool193.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool193.not.i, label %bail.i.if.end196.i_crit_edge, label %if.then194.i

bail.i.if.end196.i_crit_edge:                     ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196.i

if.then194.i:                                     ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #15
  %call195.i = call i32 @ocfs2_commit_trans(ptr noundef %osb, ptr noundef nonnull %call42.i) #13
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then194.i, %bail.i.if.end196.i_crit_edge, %do.body62.i, %if.then44.i.if.end196.i_crit_edge, %if.then44.i.if.end196.i_crit_edge278, %if.then44.i.if.end196.i_crit_edge279, %if.then44.i.if.end196.i_crit_edge280, %if.then44.i.if.end196.i_crit_edge281, %do.body29.i, %if.then11.i.if.end196.i_crit_edge, %if.then11.i.if.end196.i_crit_edge275, %if.then11.i.if.end196.i_crit_edge276, %if.then11.i.if.end196.i_crit_edge277
  %status.0410.i = phi i32 [ %status.0.i, %if.then194.i ], [ %status.0.i, %bail.i.if.end196.i_crit_edge ], [ %41, %do.body62.i ], [ %41, %if.then44.i.if.end196.i_crit_edge ], [ %41, %if.then44.i.if.end196.i_crit_edge278 ], [ %41, %if.then44.i.if.end196.i_crit_edge279 ], [ %41, %if.then44.i.if.end196.i_crit_edge280 ], [ %41, %if.then44.i.if.end196.i_crit_edge281 ], [ %call9.i, %if.then11.i.if.end196.i_crit_edge ], [ %call9.i, %do.body29.i ], [ %call9.i, %if.then11.i.if.end196.i_crit_edge275 ], [ %call9.i, %if.then11.i.if.end196.i_crit_edge276 ], [ %call9.i, %if.then11.i.if.end196.i_crit_edge277 ]
  %bg_bh.1409.i = phi ptr [ %bg_bh.1.i, %if.then194.i ], [ %bg_bh.1.i, %bail.i.if.end196.i_crit_edge ], [ null, %do.body62.i ], [ null, %if.then44.i.if.end196.i_crit_edge ], [ null, %if.then44.i.if.end196.i_crit_edge278 ], [ null, %if.then44.i.if.end196.i_crit_edge279 ], [ null, %if.then44.i.if.end196.i_crit_edge280 ], [ null, %if.then44.i.if.end196.i_crit_edge281 ], [ null, %if.then11.i.if.end196.i_crit_edge ], [ null, %do.body29.i ], [ null, %if.then11.i.if.end196.i_crit_edge275 ], [ null, %if.then11.i.if.end196.i_crit_edge276 ], [ null, %if.then11.i.if.end196.i_crit_edge277 ]
  %431 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %ac.i, align 4
  %tobool197.not.i = icmp eq ptr %432, null
  br i1 %tobool197.not.i, label %if.end196.i.if.end199.i_crit_edge, label %if.then198.i

if.end196.i.if.end199.i_crit_edge:                ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199.i

if.then198.i:                                     ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %432) #13
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.then198.i, %if.end196.i.if.end199.i_crit_edge
  %tobool.not.i402.i = icmp eq ptr %bg_bh.1409.i, null
  br i1 %tobool.not.i402.i, label %if.end199.i.brelse.exit.i_crit_edge, label %if.then.i403.i

if.end199.i.brelse.exit.i_crit_edge:              ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i

if.then.i403.i:                                   ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %bg_bh.1409.i) #13
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i403.i, %if.end199.i.brelse.exit.i_crit_edge
  %433 = zext i32 %status.0410.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %433, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %status.0410.i, label %do.body218.i [
    i32 0, label %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge
    i32 -512, label %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge319
    i32 -4, label %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge320
    i32 524289, label %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge321
    i32 -28, label %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge322
    i32 -122, label %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge323
  ]

brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge323: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc.exit

brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge322: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc.exit

brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge321: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc.exit

brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge320: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc.exit

brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge319: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc.exit

brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_block_group_alloc.exit

do.body218.i:                                     ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m219.i) #13
  %434 = ptrtoint ptr %_m219.i to i32
  call void @__asan_store8_noabort(i32 %434)
  store i64 1152921504606846976, ptr %_m219.i, align 8
  %conv223.i = sext i32 %status.0410.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m219.i, ptr noundef nonnull @__func__.ocfs2_block_group_alloc, i32 noundef 758, ptr noundef nonnull @.str.1, i64 noundef %conv223.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m219.i) #13
  br label %ocfs2_block_group_alloc.exit

ocfs2_block_group_alloc.exit:                     ; preds = %do.body218.i, %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge, %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge319, %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge320, %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge321, %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge322, %brelse.exit.i.ocfs2_block_group_alloc.exit_crit_edge323
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0410.i)
  %cmp80 = icmp slt i32 %status.0410.i, 0
  br i1 %cmp80, label %if.then82, label %if.end114

if.then82:                                        ; preds = %ocfs2_block_group_alloc.exit
  %435 = zext i32 %status.0410.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %435, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %status.0410.i, label %do.body102 [
    i32 -28, label %if.then82.bailthread-pre-split_crit_edge
    i32 -512, label %if.then82.bailthread-pre-split_crit_edge324
    i32 -4, label %if.then82.bailthread-pre-split_crit_edge325
    i32 -122, label %if.then82.bailthread-pre-split_crit_edge326
  ]

if.then82.bailthread-pre-split_crit_edge326:      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %bailthread-pre-split

if.then82.bailthread-pre-split_crit_edge325:      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %bailthread-pre-split

if.then82.bailthread-pre-split_crit_edge324:      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %bailthread-pre-split

if.then82.bailthread-pre-split_crit_edge:         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %bailthread-pre-split

do.body102:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #13
  %436 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %436)
  store i64 1152921504606846976, ptr %_m103, align 8
  %conv107 = sext i32 %status.0410.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.ocfs2_reserve_suballoc_bits, i32 noundef 833, ptr noundef nonnull @.str.1, i64 noundef %conv107) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #13
  br label %bailthread-pre-split

if.end114:                                        ; preds = %ocfs2_block_group_alloc.exit
  %bg_extends = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 60, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bg_extends, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %bg_extends, i32 1, i32 3, i32 1) #13
  %437 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bg_extends, ptr %bg_extends, i32 1, ptr elementtype(i32) %bg_extends) #13, !srcloc !214
  %438 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %i_total, align 4
  %440 = call i32 @llvm.bswap.i32(i32 %439)
  %441 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %id1, align 8
  %443 = call i32 @llvm.bswap.i32(i32 %442)
  %sub120 = sub i32 %440, %443
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub120)
  %cmp121 = icmp ugt i32 %1, %sub120
  br i1 %cmp121, label %do.body130, label %if.end114.if.end139_crit_edge, !prof !211

if.end114.if.end139_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

do.body130:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 841, 0\0A.popsection", ""() #13, !srcloc !229
  unreachable

if.end139:                                        ; preds = %if.end114.if.end139_crit_edge, %if.end66.if.end139_crit_edge
  %status.0 = phi i32 [ %status.0410.i, %if.end114.if.end139_crit_edge ], [ %call13, %if.end66.if.end139_crit_edge ]
  %444 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %bh, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %445, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %446 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !214
  %447 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %bh, align 4
  %ac_bh = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %449 = ptrtoint ptr %ac_bh to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %448, ptr %ac_bh, align 4
  br label %bail

bailthread-pre-split:                             ; preds = %do.body102, %if.then82.bailthread-pre-split_crit_edge, %if.then82.bailthread-pre-split_crit_edge324, %if.then82.bailthread-pre-split_crit_edge325, %if.then82.bailthread-pre-split_crit_edge326, %if.then77, %if.then73, %if.then64
  %status.1.ph = phi i32 [ %call65, %if.then64 ], [ -28, %if.then77 ], [ %status.0410.i, %if.then82.bailthread-pre-split_crit_edge ], [ -28, %if.then73 ], [ %status.0410.i, %if.then82.bailthread-pre-split_crit_edge324 ], [ %status.0410.i, %if.then82.bailthread-pre-split_crit_edge325 ], [ %status.0410.i, %if.then82.bailthread-pre-split_crit_edge326 ], [ %status.0410.i, %do.body102 ]
  %450 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %450)
  %.pr = load ptr, ptr %bh, align 4
  br label %bail

bail:                                             ; preds = %bailthread-pre-split, %if.end139
  %451 = phi ptr [ %.pr, %bailthread-pre-split ], [ %448, %if.end139 ]
  %status.1 = phi i32 [ %status.1.ph, %bailthread-pre-split ], [ %status.0, %if.end139 ]
  %tobool.not.i = icmp eq ptr %451, null
  br i1 %tobool.not.i, label %bail.brelse.exit_crit_edge, label %if.then.i

bail.brelse.exit_crit_edge:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %451) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %bail.brelse.exit_crit_edge
  %452 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %452, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %status.1, label %do.body158 [
    i32 0, label %brelse.exit.cleanup_crit_edge
    i32 -512, label %brelse.exit.cleanup_crit_edge327
    i32 -4, label %brelse.exit.cleanup_crit_edge328
    i32 524289, label %brelse.exit.cleanup_crit_edge329
    i32 -28, label %brelse.exit.cleanup_crit_edge330
    i32 -122, label %brelse.exit.cleanup_crit_edge331
  ]

brelse.exit.cleanup_crit_edge331:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

brelse.exit.cleanup_crit_edge330:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

brelse.exit.cleanup_crit_edge329:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

brelse.exit.cleanup_crit_edge328:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

brelse.exit.cleanup_crit_edge327:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body158:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m159) #13
  %453 = ptrtoint ptr %_m159 to i32
  call void @__asan_store8_noabort(i32 %453)
  store i64 1152921504606846976, ptr %_m159, align 8
  %conv163 = sext i32 %status.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m159, ptr noundef nonnull @__func__.ocfs2_reserve_suballoc_bits, i32 noundef 850, ptr noundef nonnull @.str.1, i64 noundef %conv163) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m159) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body158, %brelse.exit.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge327, %brelse.exit.cleanup_crit_edge328, %brelse.exit.cleanup_crit_edge329, %brelse.exit.cleanup_crit_edge330, %brelse.exit.cleanup_crit_edge331, %do.body33, %if.then16.cleanup_crit_edge, %if.then16.cleanup_crit_edge272, %if.then16.cleanup_crit_edge273, %if.then16.cleanup_crit_edge274, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ %call13, %if.then16.cleanup_crit_edge ], [ %call13, %if.then16.cleanup_crit_edge272 ], [ %call13, %if.then16.cleanup_crit_edge273 ], [ %call13, %if.then16.cleanup_crit_edge274 ], [ %call13, %do.body33 ], [ %status.1, %do.body158 ], [ %status.1, %brelse.exit.cleanup_crit_edge ], [ %status.1, %brelse.exit.cleanup_crit_edge327 ], [ %status.1, %brelse.exit.cleanup_crit_edge328 ], [ %status.1, %brelse.exit.cleanup_crit_edge329 ], [ %status.1, %brelse.exit.cleanup_crit_edge330 ], [ %status.1, %brelse.exit.cleanup_crit_edge331 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_reserve_new_metadata(ptr noundef %osb, ptr nocapture noundef readonly %root_el, ptr nocapture noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root_el to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %root_el, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #13
  %conv.i = zext i16 %2 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %call1 = tail call i32 @ocfs2_reserve_new_metadata_blocks(ptr noundef %osb, i32 noundef %add.i, ptr noundef %ac)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_reserve_new_inode(ptr noundef %osb, ptr nocapture noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  %alloc_group = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m60 = alloca i64, align 8
  %_m97 = alloca i64, align 8
  %_m134 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #13
  %s_inode_steal_slot.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 24
  %0 = ptrtoint ptr %s_inode_steal_slot.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %slot.0.in.i.i = load i16, ptr %s_inode_steal_slot.i.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alloc_group) #13
  %1 = ptrtoint ptr %alloc_group to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %alloc_group, align 8, !annotation !219
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #17
  %3 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %ac, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_reserve_new_inode, i32 noundef 1036, ptr noundef nonnull @.str.1, i64 noundef -12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %land.lhs.true111

if.end13:                                         ; preds = %entry
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %ac_bits_wanted, align 4
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %ac_which to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %ac_which, align 4
  %ac_group_search = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %ac_group_search to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ocfs2_block_group_search, ptr %ac_group_search, align 8
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %8 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt, align 8
  %and14 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %ac_max_block = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %ac_max_block to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4294967295, ptr %ac_max_block, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %slot.0.in.i.i)
  %cmp18.not = icmp eq i16 %slot.0.in.i.i, -1
  br i1 %cmp18.not, label %if.end17.if.end25_crit_edge, label %land.lhs.true20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true20:                                  ; preds = %if.end17
  %s_num_inodes_stolen = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_num_inodes_stolen, i32 noundef 4) #13
  %11 = ptrtoint ptr %s_num_inodes_stolen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_num_inodes_stolen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %12)
  %cmp22 = icmp slt i32 %12, 1024
  br i1 %cmp22, label %land.lhs.true20.inode_steal_crit_edge, label %land.lhs.true20.if.end25_crit_edge

land.lhs.true20.if.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true20.inode_steal_crit_edge:            ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %inode_steal

if.end25:                                         ; preds = %land.lhs.true20.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %s_num_inodes_stolen26 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 26
  %call.i.i204 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_num_inodes_stolen26, i32 noundef 4) #13
  %13 = ptrtoint ptr %s_num_inodes_stolen26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %s_num_inodes_stolen26, align 4
  %osb_inode_alloc_group = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 97
  %14 = ptrtoint ptr %osb_inode_alloc_group to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %osb_inode_alloc_group, align 8
  %16 = ptrtoint ptr %alloc_group to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %alloc_group, align 8
  %17 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ac, align 4
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %19 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slot_num, align 8
  %call27 = call fastcc i32 @ocfs2_reserve_suballoc_bits(ptr noundef %osb, ptr noundef %18, i32 noundef 9, i32 noundef %20, ptr noundef nonnull %alloc_group, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp28 = icmp sgt i32 %call27, -1
  br i1 %cmp28, label %if.then30, label %land.lhs.true39

if.then30:                                        ; preds = %if.end25
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #13
  %21 = ptrtoint ptr %alloc_group to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %alloc_group, align 8
  %23 = ptrtoint ptr %osb_inode_alloc_group to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %osb_inode_alloc_group, align 8
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #13
  %24 = ptrtoint ptr %alloc_group to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %alloc_group, align 8
  call fastcc void @trace_ocfs2_reserve_new_inode_new_group(i64 noundef %25)
  br i1 %cmp18.not, label %if.then30.if.end144_crit_edge, label %if.then35

if.then30.if.end144_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #13
  %26 = ptrtoint ptr %s_inode_steal_slot.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %s_inode_steal_slot.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_num_inodes_stolen26, i32 noundef 4) #13
  %27 = ptrtoint ptr %s_num_inodes_stolen26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %s_num_inodes_stolen26, align 4
  br label %if.end144

land.lhs.true39:                                  ; preds = %if.end25
  %28 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call27, label %do.body59 [
    i32 -28, label %if.end71
    i32 -512, label %land.lhs.true39.land.lhs.true111_crit_edge
    i32 -4, label %land.lhs.true39.land.lhs.true111_crit_edge212
    i32 -122, label %land.lhs.true39.land.lhs.true111_crit_edge213
  ]

land.lhs.true39.land.lhs.true111_crit_edge213:    ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true111

land.lhs.true39.land.lhs.true111_crit_edge212:    ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true111

land.lhs.true39.land.lhs.true111_crit_edge:       ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true111

do.body59:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60) #13
  %29 = ptrtoint ptr %_m60 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1152921504606846976, ptr %_m60, align 8
  %conv64 = sext i32 %call27 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60, ptr noundef nonnull @__func__.ocfs2_reserve_new_inode, i32 noundef 1091, ptr noundef nonnull @.str.1, i64 noundef %conv64) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60) #13
  br label %land.lhs.true111

if.end71:                                         ; preds = %land.lhs.true39
  %30 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ac, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end71.if.end3.i_crit_edge, label %if.then.i

if.end71.if.end3.i_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end71
  %ac_which.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %ac_which.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ac_which.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 1
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ocfs2_inode_unlock(ptr noundef nonnull %33, i32 noundef 1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i) #13
  call void @iput(ptr noundef nonnull %33) #13
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %31, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %if.end71.if.end3.i_crit_edge
  %ac_bh.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge, label %if.then.i.i

if.end3.i.ocfs2_free_ac_resource.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_free_ac_resource.exit

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %38) #13
  br label %ocfs2_free_ac_resource.exit

ocfs2_free_ac_resource.exit:                      ; preds = %if.then.i.i, %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge
  %39 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ac_bh.i, align 4
  %ac_resv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %31, i32 0, i32 13
  %40 = ptrtoint ptr %ac_resv.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %ac_resv.i, align 8
  %ac_find_loc_priv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %31, i32 0, i32 12
  %41 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ac_find_loc_priv.i, align 4
  call void @kfree(ptr noundef %42) #13
  %43 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ac_find_loc_priv.i, align 4
  br label %inode_steal

inode_steal:                                      ; preds = %ocfs2_free_ac_resource.exit, %land.lhs.true20.inode_steal_crit_edge
  %44 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ac, align 4
  %call.i = call fastcc i32 @ocfs2_steal_resource(ptr noundef %osb, ptr noundef %45, i32 noundef 9) #13
  %s_num_inodes_stolen73 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 26
  %call.i.i205 = call zeroext i1 @__kasan_check_write(ptr noundef %s_num_inodes_stolen73, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %s_num_inodes_stolen73, i32 1, i32 3, i32 1) #13
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_num_inodes_stolen73, ptr %s_num_inodes_stolen73, i32 1, ptr elementtype(i32) %s_num_inodes_stolen73) #13, !srcloc !214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp74 = icmp slt i32 %call.i, 0
  br i1 %cmp74, label %if.then76, label %inode_steal.if.end144_crit_edge

inode_steal.if.end144_crit_edge:                  ; preds = %inode_steal
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.then76:                                        ; preds = %inode_steal
  %47 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call.i, label %do.body96 [
    i32 -28, label %if.then76.land.lhs.true111_crit_edge
    i32 -512, label %if.then76.land.lhs.true111_crit_edge214
    i32 -4, label %if.then76.land.lhs.true111_crit_edge215
    i32 -122, label %if.then76.land.lhs.true111_crit_edge216
  ]

if.then76.land.lhs.true111_crit_edge216:          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true111

if.then76.land.lhs.true111_crit_edge215:          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true111

if.then76.land.lhs.true111_crit_edge214:          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true111

if.then76.land.lhs.true111_crit_edge:             ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true111

do.body96:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m97) #13
  %48 = ptrtoint ptr %_m97 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606846976, ptr %_m97, align 8
  %conv101 = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m97, ptr noundef nonnull @__func__.ocfs2_reserve_new_inode, i32 noundef 1102, ptr noundef nonnull @.str.1, i64 noundef %conv101) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m97) #13
  br label %land.lhs.true111

land.lhs.true111:                                 ; preds = %do.body96, %if.then76.land.lhs.true111_crit_edge, %if.then76.land.lhs.true111_crit_edge214, %if.then76.land.lhs.true111_crit_edge215, %if.then76.land.lhs.true111_crit_edge216, %do.body59, %land.lhs.true39.land.lhs.true111_crit_edge, %land.lhs.true39.land.lhs.true111_crit_edge212, %land.lhs.true39.land.lhs.true111_crit_edge213, %do.body
  %status.0.ph = phi i32 [ %call27, %do.body59 ], [ %call27, %land.lhs.true39.land.lhs.true111_crit_edge ], [ %call27, %land.lhs.true39.land.lhs.true111_crit_edge212 ], [ %call27, %land.lhs.true39.land.lhs.true111_crit_edge213 ], [ -12, %do.body ], [ %call.i, %if.then76.land.lhs.true111_crit_edge ], [ %call.i, %if.then76.land.lhs.true111_crit_edge214 ], [ %call.i, %if.then76.land.lhs.true111_crit_edge215 ], [ %call.i, %if.then76.land.lhs.true111_crit_edge216 ], [ %call.i, %do.body96 ]
  %49 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ac, align 4
  %tobool112.not = icmp eq ptr %50, null
  br i1 %tobool112.not, label %land.lhs.true111.if.end114_crit_edge, label %if.then113

land.lhs.true111.if.end114_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then113:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #15
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %50)
  %51 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ac, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %land.lhs.true111.if.end114_crit_edge
  %52 = zext i32 %status.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %status.0.ph, label %do.body133 [
    i32 -122, label %if.end114.if.end144_crit_edge
    i32 -512, label %if.end114.if.end144_crit_edge217
    i32 -4, label %if.end114.if.end144_crit_edge218
    i32 -28, label %if.end114.if.end144_crit_edge219
  ]

if.end114.if.end144_crit_edge219:                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.end114.if.end144_crit_edge218:                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.end114.if.end144_crit_edge217:                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.end114.if.end144_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

do.body133:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m134) #13
  %53 = ptrtoint ptr %_m134 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1152921504606846976, ptr %_m134, align 8
  %conv138 = sext i32 %status.0.ph to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m134, ptr noundef nonnull @__func__.ocfs2_reserve_new_inode, i32 noundef 1114, ptr noundef nonnull @.str.1, i64 noundef %conv138) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m134) #13
  br label %if.end144

if.end144:                                        ; preds = %do.body133, %if.end114.if.end144_crit_edge, %if.end114.if.end144_crit_edge217, %if.end114.if.end144_crit_edge218, %if.end114.if.end144_crit_edge219, %inode_steal.if.end144_crit_edge, %if.then35, %if.then30.if.end144_crit_edge
  %status.0208211 = phi i32 [ %status.0.ph, %do.body133 ], [ %status.0.ph, %if.end114.if.end144_crit_edge ], [ %status.0.ph, %if.end114.if.end144_crit_edge217 ], [ %status.0.ph, %if.end114.if.end144_crit_edge218 ], [ %status.0.ph, %if.end114.if.end144_crit_edge219 ], [ 0, %if.then35 ], [ 0, %if.then30.if.end144_crit_edge ], [ 0, %inode_steal.if.end144_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alloc_group) #13
  ret i32 %status.0208211
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_reserve_new_inode_new_group(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_new_inode_new_group, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_reserve_new_inode_new_group, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !231
  %call42 = tail call i32 @__traceiter_ocfs2_reserve_new_inode_new_group(ptr noundef null, i64 noundef %num) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !232
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_new_inode_new_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_new_inode_new_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_reserve_new_inode_new_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_reserve_new_inode_new_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 792, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
define dso_local i32 @ocfs2_reserve_cluster_bitmap_bits(ptr noundef %osb, ptr nocapture noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %0 = ptrtoint ptr %ac_which to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %ac_which, align 4
  %ac_group_search = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 8
  %1 = ptrtoint ptr %ac_group_search to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ocfs2_cluster_group_search, ptr %ac_group_search, align 8
  %call = tail call fastcc i32 @ocfs2_reserve_suballoc_bits(ptr noundef %osb, ptr noundef %ac, i32 noundef 4, i32 noundef 65535, ptr noundef null, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp1.not = icmp eq i32 %call, -28
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %entry
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call, label %do.body [
    i32 -512, label %if.then.if.end14_crit_edge
    i32 -4, label %if.then.if.end14_crit_edge26
    i32 -122, label %if.then.if.end14_crit_edge27
  ]

if.then.if.end14_crit_edge27:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then.if.end14_crit_edge26:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_reserve_cluster_bitmap_bits, i32 noundef 1133, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %if.end14

if.end14:                                         ; preds = %do.body, %if.then.if.end14_crit_edge, %if.then.if.end14_crit_edge26, %if.then.if.end14_crit_edge27, %entry.if.end14_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_cluster_group_search(ptr nocapture noundef readonly %inode, ptr noundef %group_bh, i32 noundef %bits_wanted, i32 noundef %min_bits, i64 noundef %max_block, ptr nocapture noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %group_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %bitmap_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %bitmap_blkno.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bitmap_blkno.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -1608
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.i.not = icmp eq i64 %7, %9
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !215

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1487, 0\0A.popsection", ""() #13, !srcloc !235
  unreachable

do.end9:                                          ; preds = %entry
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bg_free_bits_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool10.not = icmp eq i16 %11, 0
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.then11

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %do.end9
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bg_bits, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bg_blkno, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 36
  %18 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i83 = zext i8 %21 to i32
  %sub.i = sub i32 %19, %conv.i83
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %17, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %add = add i32 %conv1.i, %conv
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %22 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip_clusters, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp = icmp ugt i32 %add, %23
  br i1 %cmp, label %if.then16, label %if.then11.if.end24_crit_edge

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %23, %conv1.i
  tail call fastcc void @trace_ocfs2_cluster_group_search_wrong_max_bits(i64 noundef %17, i32 noundef %conv, i32 noundef %23, i32 noundef %sub)
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.then11.if.end24_crit_edge
  %max_bits.0 = phi i32 [ %sub, %if.then16 ], [ %conv, %if.then11.if.end24_crit_edge ]
  %call25 = tail call fastcc i32 @ocfs2_block_group_find_clear_bits(ptr noundef %group_bh, i32 noundef %bits_wanted, i32 noundef %max_bits.0, ptr noundef %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_block)
  %tobool29.not = icmp eq i64 %max_block, 0
  br i1 %tobool29.not, label %if.end28.if.end39_crit_edge, label %if.then30

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then30:                                        ; preds = %if.end28
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %26 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sr_bit_offset, align 8
  %add32 = add i32 %27, %conv1.i
  %sr_bits = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %28 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sr_bits, align 4
  %add33 = add i32 %add32, %29
  %s_fs_info.i86 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i86, align 16
  %s_clustersize_bits.i87 = getelementptr inbounds %struct.ocfs2_super, ptr %31, i32 0, i32 36
  %32 = ptrtoint ptr %s_clustersize_bits.i87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_clustersize_bits.i87, align 8
  %s_blocksize_bits.i88 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 2
  %34 = ptrtoint ptr %s_blocksize_bits.i88 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %s_blocksize_bits.i88, align 4
  %conv.i89 = zext i8 %35 to i32
  %sub.i90 = sub i32 %33, %conv.i89
  %conv1.i91 = zext i32 %add33 to i64
  %sh_prom.i92 = zext i32 %sub.i90 to i64
  %shl.i = shl i64 %conv1.i91, %sh_prom.i92
  tail call fastcc void @trace_ocfs2_cluster_group_search_max_block(i64 noundef %shl.i, i64 noundef %max_block)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %max_block)
  %cmp35 = icmp ugt i64 %shl.i, %max_block
  br i1 %cmp35, label %if.then30.cleanup_crit_edge, label %if.then30.if.end39_crit_edge

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.then30.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %sr_bits40 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %36 = ptrtoint ptr %sr_bits40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sr_bits40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %min_bits)
  %cmp41.not = icmp ult i32 %37, %min_bits
  br i1 %cmp41.not, label %if.else, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool45.not = icmp eq i32 %37, 0
  br i1 %tobool45.not, label %if.else.cleanup_crit_edge, label %if.then46

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ocfs2_local_alloc_seen_free_bits(ptr noundef %5, i32 noundef %37) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.else.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24.cleanup_crit_edge ], [ -28, %if.then30.cleanup_crit_edge ], [ -28, %if.then46 ], [ -28, %if.else.cleanup_crit_edge ], [ -28, %do.end9.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_reserve_clusters(ptr noundef %osb, i32 noundef %bits_wanted, ptr nocapture noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ocfs2_reserve_clusters_with_limit(ptr noundef %osb, i32 noundef %bits_wanted, i64 noundef 0, i32 noundef 1, ptr noundef %ac)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_reserve_clusters_with_limit(ptr noundef %osb, i32 noundef %bits_wanted, i64 noundef %max_block, i32 noundef %flags, ptr nocapture noundef %ac) unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m44 = alloca i64, align 8
  %_m93 = alloca i64, align 8
  %_m127 = alloca i64, align 8
  %_m165 = alloca i64, align 8
  %_m203 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #17
  %1 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ac, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_reserve_clusters_with_limit, i32 noundef 1152, ptr noundef nonnull @.str.1, i64 noundef -12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %land.lhs.true180

if.end12:                                         ; preds = %entry
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bits_wanted, ptr %ac_bits_wanted, align 4
  %ac_max_block = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %ac_max_block to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %max_block, ptr %ac_max_block, align 8
  %and13 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %if.end12.retry_crit_edge

if.end12.retry_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

land.lhs.true15:                                  ; preds = %if.end12
  %conv16 = zext i32 %bits_wanted to i64
  %call17 = tail call i32 @ocfs2_alloc_should_use_local(ptr noundef %osb, i64 noundef %conv16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true15.retry_crit_edge, label %if.then19

land.lhs.true15.retry_crit_edge:                  ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

if.then19:                                        ; preds = %land.lhs.true15
  %5 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac, align 4
  %call20 = tail call i32 @ocfs2_reserve_local_alloc_bits(ptr noundef %osb, i32 noundef %bits_wanted, ptr noundef %6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true23, label %if.then19.if.end213_crit_edge

if.then19.if.end213_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

land.lhs.true23:                                  ; preds = %if.then19
  %7 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call20, label %do.body43 [
    i32 -28, label %land.lhs.true23.retry_crit_edge
    i32 -512, label %land.lhs.true23.land.lhs.true180_crit_edge
    i32 -4, label %land.lhs.true23.land.lhs.true180_crit_edge321
    i32 -122, label %land.lhs.true23.land.lhs.true180_crit_edge322
  ]

land.lhs.true23.land.lhs.true180_crit_edge322:    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true180

land.lhs.true23.land.lhs.true180_crit_edge321:    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true180

land.lhs.true23.land.lhs.true180_crit_edge:       ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true180

land.lhs.true23.retry_crit_edge:                  ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

do.body43:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44) #13
  %8 = ptrtoint ptr %_m44 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m44, align 8
  %conv48 = sext i32 %call20 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44, ptr noundef nonnull @__func__.ocfs2_reserve_clusters_with_limit, i32 noundef 1166, ptr noundef nonnull @.str.1, i64 noundef %conv48) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44) #13
  br label %land.lhs.true180

retry:                                            ; preds = %land.lhs.true23.retry_crit_edge, %land.lhs.true15.retry_crit_edge, %if.end12.retry_crit_edge
  %9 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac, align 4
  %ac_which.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %ac_which.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %ac_which.i, align 4
  %ac_group_search.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %ac_group_search.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ocfs2_cluster_group_search, ptr %ac_group_search.i, align 8
  %call.i = call fastcc i32 @ocfs2_reserve_suballoc_bits(ptr noundef %osb, ptr noundef %10, i32 noundef 4, i32 noundef 65535, ptr noundef null, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -28
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %retry.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge, label %if.then.i

retry.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge: ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_reserve_cluster_bitmap_bits.exit

if.then.i:                                        ; preds = %retry
  %13 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call.i, label %do.body.i [
    i32 -512, label %if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge
    i32 -4, label %if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge323
    i32 -122, label %if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge324
  ]

if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge324: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_reserve_cluster_bitmap_bits.exit

if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge323: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_reserve_cluster_bitmap_bits.exit

if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_reserve_cluster_bitmap_bits.exit

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #13
  %14 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_reserve_cluster_bitmap_bits, i32 noundef 1133, ptr noundef nonnull @.str.1, i64 noundef %conv.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #13
  br label %ocfs2_reserve_cluster_bitmap_bits.exit

ocfs2_reserve_cluster_bitmap_bits.exit:           ; preds = %do.body.i, %if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge, %if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge323, %if.then.i.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge324, %retry.ocfs2_reserve_cluster_bitmap_bits.exit_crit_edge
  br i1 %cmp1.not.i, label %if.then64, label %ocfs2_reserve_cluster_bitmap_bits.exit.if.end141_crit_edge

ocfs2_reserve_cluster_bitmap_bits.exit.if.end141_crit_edge: ; preds = %ocfs2_reserve_cluster_bitmap_bits.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then64:                                        ; preds = %ocfs2_reserve_cluster_bitmap_bits.exit
  %15 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  call void @ocfs2_inode_unlock(ptr noundef %18, i32 noundef 1) #13
  %19 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i) #13
  %call66 = call i32 @ocfs2_try_to_free_truncate_log(ptr noundef %osb, i32 noundef %bits_wanted) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp67 = icmp eq i32 %call66, 1
  br i1 %cmp67, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then64
  %23 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ac, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  call void @iput(ptr noundef %26) #13
  %27 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ac, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 8
  %30 = load ptr, ptr %ac, align 4
  %ac_which.i.1 = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %ac_which.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %ac_which.i.1, align 4
  %ac_group_search.i.1 = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %30, i32 0, i32 8
  %32 = ptrtoint ptr %ac_group_search.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ocfs2_cluster_group_search, ptr %ac_group_search.i.1, align 8
  %call.i.1 = call fastcc i32 @ocfs2_reserve_suballoc_bits(ptr noundef %osb, ptr noundef %30, i32 noundef 4, i32 noundef 65535, ptr noundef null, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1)
  %cmp.i.1 = icmp sgt i32 %call.i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i.1)
  %cmp1.not.i.1 = icmp eq i32 %call.i.1, -28
  %or.cond.i.1 = or i1 %cmp.i.1, %cmp1.not.i.1
  br i1 %or.cond.i.1, label %if.then69.if.end141_crit_edge, label %if.then.i.1

if.then69.if.end141_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then.i.1:                                      ; preds = %if.then69
  %33 = zext i32 %call.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call.i.1, label %do.body.i.1 [
    i32 -512, label %if.then.i.1.if.end141_crit_edge
    i32 -4, label %if.then.i.1.if.end141_crit_edge325
    i32 -122, label %if.then.i.1.if.end141_crit_edge326
  ]

if.then.i.1.if.end141_crit_edge326:               ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then.i.1.if.end141_crit_edge325:               ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then.i.1.if.end141_crit_edge:                  ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

do.body.i.1:                                      ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #13
  %34 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i.1 = sext i32 %call.i.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_reserve_cluster_bitmap_bits, i32 noundef 1133, ptr noundef nonnull @.str.1, i64 noundef %conv.i.1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #13
  br label %if.end141

if.end72:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp73 = icmp slt i32 %call66, 0
  br i1 %cmp73, label %if.then75, label %if.end72.if.end103_crit_edge

if.end72.if.end103_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then75:                                        ; preds = %if.end72
  %35 = zext i32 %call66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call66, label %do.body92 [
    i32 -512, label %if.then75.if.end103_crit_edge
    i32 -4, label %if.then75.if.end103_crit_edge327
    i32 -28, label %if.then75.if.end103_crit_edge328
    i32 -122, label %if.then75.if.end103_crit_edge329
  ]

if.then75.if.end103_crit_edge329:                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then75.if.end103_crit_edge328:                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then75.if.end103_crit_edge327:                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then75.if.end103_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

do.body92:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m93) #13
  %36 = ptrtoint ptr %_m93 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m93, align 8
  %conv97 = sext i32 %call66 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m93, ptr noundef nonnull @__func__.ocfs2_reserve_clusters_with_limit, i32 noundef 1188, ptr noundef nonnull @.str.1, i64 noundef %conv97) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m93) #13
  br label %if.end103

if.end103:                                        ; preds = %do.body92, %if.then75.if.end103_crit_edge, %if.then75.if.end103_crit_edge327, %if.then75.if.end103_crit_edge328, %if.then75.if.end103_crit_edge329, %if.end72.if.end103_crit_edge
  %37 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %i_rwsem.i289 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i289) #13
  %41 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ac, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %call106 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %44, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end103.if.end141_crit_edge

if.end103.if.end141_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then109:                                       ; preds = %if.end103
  %45 = zext i32 %call106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call106, label %do.body126 [
    i32 -512, label %if.then109.if.end135_crit_edge
    i32 -4, label %if.then109.if.end135_crit_edge330
    i32 -28, label %if.then109.if.end135_crit_edge331
    i32 -122, label %if.then109.if.end135_crit_edge332
  ]

if.then109.if.end135_crit_edge332:                ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then109.if.end135_crit_edge331:                ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then109.if.end135_crit_edge330:                ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then109.if.end135_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

do.body126:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m127) #13
  %46 = ptrtoint ptr %_m127 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606846976, ptr %_m127, align 8
  %conv131 = sext i32 %call106 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m127, ptr noundef nonnull @__func__.ocfs2_reserve_clusters_with_limit, i32 noundef 1193, ptr noundef nonnull @.str.1, i64 noundef %conv131) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m127) #13
  br label %if.end135

if.end135:                                        ; preds = %do.body126, %if.then109.if.end135_crit_edge, %if.then109.if.end135_crit_edge330, %if.then109.if.end135_crit_edge331, %if.then109.if.end135_crit_edge332
  %47 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ac, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %i_rwsem.i290 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i290) #13
  %51 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ac, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  call void @iput(ptr noundef %54) #13
  %55 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ac, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %56, align 8
  br label %land.lhs.true180

if.end141:                                        ; preds = %if.end103.if.end141_crit_edge, %do.body.i.1, %if.then.i.1.if.end141_crit_edge, %if.then.i.1.if.end141_crit_edge325, %if.then.i.1.if.end141_crit_edge326, %if.then69.if.end141_crit_edge, %ocfs2_reserve_cluster_bitmap_bits.exit.if.end141_crit_edge
  %call.i320 = phi i32 [ %call.i, %if.end103.if.end141_crit_edge ], [ %call.i, %ocfs2_reserve_cluster_bitmap_bits.exit.if.end141_crit_edge ], [ %call.i.1, %do.body.i.1 ], [ %call.i.1, %if.then.i.1.if.end141_crit_edge ], [ %call.i.1, %if.then.i.1.if.end141_crit_edge325 ], [ %call.i.1, %if.then.i.1.if.end141_crit_edge326 ], [ %call.i.1, %if.then69.if.end141_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %cmp142 = icmp slt i32 %call.i320, 0
  br i1 %cmp142, label %if.then144, label %if.end141.if.end213_crit_edge

if.end141.if.end213_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

if.then144:                                       ; preds = %if.end141
  %58 = zext i32 %call.i320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call.i320, label %do.body164 [
    i32 -28, label %if.then144.land.lhs.true180_crit_edge
    i32 -512, label %if.then144.land.lhs.true180_crit_edge333
    i32 -4, label %if.then144.land.lhs.true180_crit_edge334
    i32 -122, label %if.then144.land.lhs.true180_crit_edge335
  ]

if.then144.land.lhs.true180_crit_edge335:         ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true180

if.then144.land.lhs.true180_crit_edge334:         ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true180

if.then144.land.lhs.true180_crit_edge333:         ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true180

if.then144.land.lhs.true180_crit_edge:            ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true180

do.body164:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m165) #13
  %59 = ptrtoint ptr %_m165 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 1152921504606846976, ptr %_m165, align 8
  %conv169 = sext i32 %call.i320 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m165, ptr noundef nonnull @__func__.ocfs2_reserve_clusters_with_limit, i32 noundef 1202, ptr noundef nonnull @.str.1, i64 noundef %conv169) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m165) #13
  br label %land.lhs.true180

land.lhs.true180:                                 ; preds = %do.body164, %if.then144.land.lhs.true180_crit_edge, %if.then144.land.lhs.true180_crit_edge333, %if.then144.land.lhs.true180_crit_edge334, %if.then144.land.lhs.true180_crit_edge335, %if.end135, %do.body43, %land.lhs.true23.land.lhs.true180_crit_edge, %land.lhs.true23.land.lhs.true180_crit_edge321, %land.lhs.true23.land.lhs.true180_crit_edge322, %do.body
  %status.1.ph = phi i32 [ %call20, %do.body43 ], [ %call20, %land.lhs.true23.land.lhs.true180_crit_edge ], [ %call20, %land.lhs.true23.land.lhs.true180_crit_edge321 ], [ %call20, %land.lhs.true23.land.lhs.true180_crit_edge322 ], [ -12, %do.body ], [ -28, %if.end135 ], [ %call.i320, %if.then144.land.lhs.true180_crit_edge ], [ %call.i320, %if.then144.land.lhs.true180_crit_edge333 ], [ %call.i320, %if.then144.land.lhs.true180_crit_edge334 ], [ %call.i320, %if.then144.land.lhs.true180_crit_edge335 ], [ %call.i320, %do.body164 ]
  %60 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ac, align 4
  %tobool181.not = icmp eq ptr %61, null
  br i1 %tobool181.not, label %land.lhs.true180.if.end183_crit_edge, label %if.then182

land.lhs.true180.if.end183_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end183

if.then182:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #15
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %61)
  %62 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %ac, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %land.lhs.true180.if.end183_crit_edge
  %63 = zext i32 %status.1.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %status.1.ph, label %do.body202 [
    i32 -122, label %if.end183.if.end213_crit_edge
    i32 -512, label %if.end183.if.end213_crit_edge336
    i32 -4, label %if.end183.if.end213_crit_edge337
    i32 -28, label %if.end183.if.end213_crit_edge338
  ]

if.end183.if.end213_crit_edge338:                 ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

if.end183.if.end213_crit_edge337:                 ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

if.end183.if.end213_crit_edge336:                 ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

if.end183.if.end213_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

do.body202:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m203) #13
  %64 = ptrtoint ptr %_m203 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 1152921504606846976, ptr %_m203, align 8
  %conv207 = sext i32 %status.1.ph to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m203, ptr noundef nonnull @__func__.ocfs2_reserve_clusters_with_limit, i32 noundef 1215, ptr noundef nonnull @.str.1, i64 noundef %conv207) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m203) #13
  br label %if.end213

if.end213:                                        ; preds = %do.body202, %if.end183.if.end213_crit_edge, %if.end183.if.end213_crit_edge336, %if.end183.if.end213_crit_edge337, %if.end183.if.end213_crit_edge338, %if.end141.if.end213_crit_edge, %if.then19.if.end213_crit_edge
  %status.1295298 = phi i32 [ %status.1.ph, %do.body202 ], [ %status.1.ph, %if.end183.if.end213_crit_edge ], [ %status.1.ph, %if.end183.if.end213_crit_edge336 ], [ %status.1.ph, %if.end183.if.end213_crit_edge337 ], [ %status.1.ph, %if.end183.if.end213_crit_edge338 ], [ 0, %if.end141.if.end213_crit_edge ], [ 0, %if.then19.if.end213_crit_edge ]
  ret i32 %status.1295298
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_block_group_set_bits(ptr noundef %handle, ptr noundef %alloc_inode, ptr nocapture noundef %bg, ptr noundef %group_bh, i32 noundef %bit_off, i32 noundef %num_bits) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg, i32 0, i32 12
  %call = tail call i32 @strcmp(ptr noundef %bg, ptr noundef nonnull dereferenceable(8) @.str.2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body12, label %do.body6, !prof !215

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1348, 0\0A.popsection", ""() #13, !srcloc !236
  unreachable

do.body12:                                        ; preds = %entry
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg, i32 0, i32 3
  %1 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bg_free_bits_count, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %num_bits)
  %cmp = icmp ult i32 %conv, %num_bits
  br i1 %cmp, label %do.body21, label %do.end29, !prof !211

do.body21:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1349, 0\0A.popsection", ""() #13, !srcloc !237
  unreachable

do.end29:                                         ; preds = %do.body12
  tail call fastcc void @trace_ocfs2_block_group_set_bits(i32 noundef %bit_off, i32 noundef %num_bits)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %alloc_inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %bitmap_blkno.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bitmap_blkno.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %alloc_inode, i32 -1608
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.i.not = icmp eq i64 %9, %11
  %spec.select = select i1 %cmp.i.not, i32 2, i32 1
  %ip_metadata_cache.i = getelementptr i8, ptr %alloc_inode, i32 -56
  %call35 = tail call i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %group_bh, i32 noundef %spec.select) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end61

if.then38:                                        ; preds = %do.end29
  %12 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call35, label %do.body53 [
    i32 -512, label %if.then38.cleanup_crit_edge
    i32 -4, label %if.then38.cleanup_crit_edge107
    i32 -28, label %if.then38.cleanup_crit_edge108
    i32 -122, label %if.then38.cleanup_crit_edge109
  ]

if.then38.cleanup_crit_edge109:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38.cleanup_crit_edge108:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38.cleanup_crit_edge107:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body53:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv56 = sext i32 %call35 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_block_group_set_bits, i32 noundef 1361, ptr noundef nonnull @.str.1, i64 noundef %conv56) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %cleanup

if.end61:                                         ; preds = %do.end29
  %14 = trunc i32 %num_bits to i16
  %15 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bg_free_bits_count, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #13
  %add.i = sub i16 %17, %14
  %18 = tail call i16 @llvm.bswap.i16(i16 %add.i) #13
  %19 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %bg_free_bits_count, align 2
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg, i32 0, i32 2
  %20 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bg_bits, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %22)
  %cmp67 = icmp ugt i16 %add.i, %22
  br i1 %cmp67, label %if.then69, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bits)
  %tobool76.not104 = icmp eq i32 %num_bits, 0
  br i1 %tobool76.not104, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then69:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %conv66 = zext i16 %22 to i32
  %conv65 = zext i16 %add.i to i32
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg, i32 0, i32 9
  %25 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bg_blkno, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  %call74 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %24, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_block_group_set_bits, ptr noundef nonnull @.str.3, i64 noundef %27, i32 noundef %conv66, i32 noundef %conv65, i32 noundef %num_bits) #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %num_bits.addr.0106 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %num_bits, %while.cond.preheader.while.body_crit_edge ]
  %bit_off.addr.0105 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %bit_off, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %num_bits.addr.0106, -1
  %inc = add i32 %bit_off.addr.0105, 1
  %xor.i.i = and i32 %bit_off.addr.0105, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %bit_off.addr.0105, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %0, i32 %div2.i.i.i
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %29, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %tobool76.not = icmp eq i32 %dec, 0
  br i1 %tobool76.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %group_bh) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then69, %do.body53, %if.then38.cleanup_crit_edge, %if.then38.cleanup_crit_edge107, %if.then38.cleanup_crit_edge108, %if.then38.cleanup_crit_edge109
  %retval.0 = phi i32 [ %call74, %if.then69 ], [ %call35, %do.body53 ], [ %call35, %if.then38.cleanup_crit_edge ], [ %call35, %if.then38.cleanup_crit_edge107 ], [ %call35, %if.then38.cleanup_crit_edge108 ], [ %call35, %if.then38.cleanup_crit_edge109 ], [ %call35, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_block_group_set_bits(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_set_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_block_group_set_bits, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !238
  %call42 = tail call i32 @__traceiter_ocfs2_block_group_set_bits(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !239
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_set_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_set_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_block_group_set_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_block_group_set_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 794, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @ocfs2_journal_access_gd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @_ocfs2_set_bit(i32 noundef %bit, ptr nocapture noundef %bitmap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %xor.i = and i32 %bit, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %bit, 5
  %add.ptr.i.i = getelementptr i32, ptr %bitmap, i32 %div2.i.i
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %1, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_alloc_dinode_update_counts(ptr noundef %inode, ptr noundef %handle, ptr noundef %di_bh, i32 noundef %num_bits, i16 noundef zeroext %chain) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call1 = tail call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %di_bh, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call1, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge30
    i32 -28, label %if.then.out_crit_edge31
    i32 -122, label %if.then.out_crit_edge32
  ]

if.then.out_crit_edge32:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.out_crit_edge31:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.out_crit_edge30:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_alloc_dinode_update_counts, i32 noundef 1591, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %out

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add i32 %6, %num_bits
  %7 = tail call i32 @llvm.bswap.i32(i32 %add)
  %8 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %id1, align 8
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 35, i32 0, i32 7
  %idxprom = zext i16 %chain to i32
  %arrayidx = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  %add.i = sub i32 %11, %num_bits
  %12 = tail call i32 @llvm.bswap.i32(i32 %add.i) #13
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %di_bh) #13
  br label %out

out:                                              ; preds = %if.end13, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge30, %if.then.out_crit_edge31, %if.then.out_crit_edge32
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ocfs2_rollback_alloc_dinode_counts(ptr nocapture readnone %inode, ptr nocapture noundef readonly %di_bh, i32 noundef %num_bits, i16 noundef zeroext %chain) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %sub = sub i32 %4, %num_bits
  %5 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %6 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id1, align 8
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 35, i32 0, i32 7
  %idxprom = zext i16 %chain to i32
  %arrayidx = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  %add.i = add i32 %9, %num_bits
  %10 = tail call i32 @llvm.bswap.i32(i32 %add.i) #13
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_claim_metadata(ptr noundef %handle, ptr noundef %ac, i32 noundef %bits_wanted, ptr nocapture noundef writeonly %suballoc_loc, ptr nocapture noundef writeonly %suballoc_bit_start, ptr nocapture noundef writeonly %num_bits, ptr nocapture noundef writeonly %blkno_start) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.ocfs2_suballoc_result, align 8
  %_m = alloca i64, align 8
  %_m87 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #13
  %0 = call ptr @memset(ptr %res, i32 0, i32 32)
  %tobool.not = icmp eq ptr %ac, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !211

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1998, 0\0A.popsection", ""() #13, !srcloc !240
  unreachable

do.body10:                                        ; preds = %entry
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 3
  %1 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ac_bits_wanted, align 4
  %ac_bits_given = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 4
  %3 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ac_bits_given, align 8
  %add = add i32 %4, %bits_wanted
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add)
  %cmp = icmp ult i32 %2, %add
  br i1 %cmp, label %do.body18, label %do.body27, !prof !211

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1999, 0\0A.popsection", ""() #13, !srcloc !241
  unreachable

do.body27:                                        ; preds = %do.body10
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %5 = ptrtoint ptr %ac_which to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ac_which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp28.not = icmp eq i32 %6, 4
  br i1 %cmp28.not, label %do.end44, label %do.body36, !prof !215

do.body36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2000, 0\0A.popsection", ""() #13, !srcloc !242
  unreachable

do.end44:                                         ; preds = %do.body27
  %call = call fastcc i32 @ocfs2_claim_suballoc_bits(ptr noundef nonnull %ac, ptr noundef %handle, i32 noundef %bits_wanted, i32 noundef 1, ptr noundef nonnull %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp45 = icmp slt i32 %call, 0
  br i1 %cmp45, label %if.then46, label %bail.thread

if.then46:                                        ; preds = %do.end44
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call, label %do.body56 [
    i32 -122, label %if.then46.if.end97_crit_edge
    i32 -512, label %if.then46.if.end97_crit_edge123
    i32 -4, label %if.then46.if.end97_crit_edge124
    i32 -28, label %if.then46.if.end97_crit_edge125
  ]

if.then46.if.end97_crit_edge125:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then46.if.end97_crit_edge124:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then46.if.end97_crit_edge123:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then46.if.end97_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

do.body56:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_claim_metadata, i32 noundef 2008, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m87) #13
  %9 = ptrtoint ptr %_m87 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m87, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m87, ptr noundef nonnull @__func__.ocfs2_claim_metadata, i32 noundef 2021, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m87) #13
  br label %if.end97

bail.thread:                                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info, align 16
  %bg_allocs = getelementptr inbounds %struct.ocfs2_super, ptr %15, i32 0, i32 60, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bg_allocs, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %bg_allocs, i32 1, i32 3, i32 1) #13
  %16 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bg_allocs, ptr %bg_allocs, i32 1, ptr elementtype(i32) %bg_allocs) #13, !srcloc !214
  %17 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %res, align 8
  %19 = ptrtoint ptr %suballoc_loc to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %suballoc_loc, align 8
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %20 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sr_bit_offset, align 8
  %conv64 = trunc i32 %21 to i16
  %22 = ptrtoint ptr %suballoc_bit_start to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv64, ptr %suballoc_bit_start, align 2
  %sr_blkno = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 2
  %23 = ptrtoint ptr %sr_blkno to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sr_blkno, align 8
  %25 = ptrtoint ptr %blkno_start to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %blkno_start, align 8
  %sr_bits = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %26 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sr_bits, align 4
  %28 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ac_bits_given, align 8
  %add66 = add i32 %29, %27
  store i32 %add66, ptr %ac_bits_given, align 8
  %30 = ptrtoint ptr %num_bits to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %num_bits, align 4
  br label %if.end97

if.end97:                                         ; preds = %bail.thread, %do.body56, %if.then46.if.end97_crit_edge, %if.then46.if.end97_crit_edge123, %if.then46.if.end97_crit_edge124, %if.then46.if.end97_crit_edge125
  %status.0122 = phi i32 [ 0, %bail.thread ], [ %call, %do.body56 ], [ %call, %if.then46.if.end97_crit_edge ], [ %call, %if.then46.if.end97_crit_edge123 ], [ %call, %if.then46.if.end97_crit_edge124 ], [ %call, %if.then46.if.end97_crit_edge125 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #13
  ret i32 %status.0122
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_claim_suballoc_bits(ptr nocapture noundef %ac, ptr noundef %handle, i32 noundef %bits_wanted, i32 noundef %min_bits, ptr noundef %res) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m38.i = alloca i64, align 8
  %_m78.i = alloca i64, align 8
  %_m114.i = alloca i64, align 8
  %bits_left = alloca i16, align 2
  %_m = alloca i64, align 8
  %_m144 = alloca i64, align 8
  %_m198 = alloca i64, align 8
  %_m240 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bits_left) #13
  %0 = ptrtoint ptr %bits_left to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %bits_left, align 2
  %ac_last_group = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 9
  %1 = ptrtoint ptr %ac_last_group to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ac_last_group, align 8
  %ac_bits_given = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 4
  %3 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ac_bits_given, align 8
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 3
  %5 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ac_bits_wanted, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not = icmp ugt i32 %6, %4
  br i1 %cmp.not, label %do.body8, label %do.body2, !prof !215

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1889, 0\0A.popsection", ""() #13, !srcloc !243
  unreachable

do.body8:                                         ; preds = %entry
  %sub = sub i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bits_wanted)
  %cmp11 = icmp ult i32 %sub, %bits_wanted
  br i1 %cmp11, label %do.body19, label %do.body28, !prof !211

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1890, 0\0A.popsection", ""() #13, !srcloc !244
  unreachable

do.body28:                                        ; preds = %do.body8
  %ac_bh = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %7 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ac_bh, align 4
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %do.body39, label %do.end47, !prof !211

do.body39:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1891, 0\0A.popsection", ""() #13, !srcloc !245
  unreachable

do.end47:                                         ; preds = %do.body28
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %call = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(8) @.str.24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool50.not = icmp eq i32 %call, 0
  br i1 %tobool50.not, label %do.end70, label %do.body62, !prof !215

do.body62:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1897, 0\0A.popsection", ""() #13, !srcloc !246
  unreachable

do.end70:                                         ; preds = %do.end47
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 34
  %11 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id1, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %i_total = getelementptr inbounds %struct.anon.79, ptr %id1, i32 0, i32 1
  %14 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_total, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp72.not = icmp ult i32 %13, %16
  br i1 %cmp72.not, label %if.end79, label %if.then73

if.then73:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ac, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 17
  %21 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_blkno, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %call78 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %20, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_claim_suballoc_bits, ptr noundef nonnull @.str.28, i64 noundef %23, i32 noundef %13, i32 noundef %16) #13
  br label %bail

if.end79:                                         ; preds = %do.end70
  %24 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %2, ptr %res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool81.not = icmp eq i64 %2, 0
  br i1 %tobool81.not, label %if.end79.if.end108_crit_edge, label %if.then82

if.end79.if.end108_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then82:                                        ; preds = %if.end79
  %25 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ac_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data.i, align 4
  %29 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ac, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #13
  %31 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tmp.i.i, align 4
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %30, i32 -56
  %call1.i.i.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i.i, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %tmp.i.i, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_group_descriptor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then82.ocfs2_read_group_descriptor.exit.i_crit_edge

if.then82.ocfs2_read_group_descriptor.exit.i_crit_edge: ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit.i

if.end.i.i:                                       ; preds = %if.then82
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %34 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tmp.i.i, align 4
  %call2.i.i = call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %33, ptr noundef %28, ptr noundef %35, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  %36 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tmp.i.i, align 4
  br i1 %tobool3.not.i.i, label %ocfs2_read_group_descriptor.exit.thread.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge, label %if.then.i.i.i

if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit.i

if.then.i.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %37) #13
  br label %ocfs2_read_group_descriptor.exit.i

ocfs2_read_group_descriptor.exit.thread.i:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #13
  br label %if.end12.i

ocfs2_read_group_descriptor.exit.i:               ; preds = %if.then.i.i.i, %if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge, %if.then82.ocfs2_read_group_descriptor.exit.i_crit_edge
  %rc.0.i.i = phi i32 [ %call1.i.i.i, %if.then82.ocfs2_read_group_descriptor.exit.i_crit_edge ], [ %call2.i.i, %if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge ], [ %call2.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i)
  %cmp.i = icmp slt i32 %rc.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %ocfs2_read_group_descriptor.exit.i.if.end12.i_crit_edge

ocfs2_read_group_descriptor.exit.i.if.end12.i_crit_edge: ; preds = %ocfs2_read_group_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then.i:                                        ; preds = %ocfs2_read_group_descriptor.exit.i
  %38 = zext i32 %rc.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %rc.0.i.i, label %do.body.i [
    i32 -512, label %if.then.i.if.end86_crit_edge
    i32 -4, label %if.then.i.if.end86_crit_edge388
    i32 -28, label %if.then.i.if.end86_crit_edge389
    i32 -122, label %if.then.i.if.end86_crit_edge390
  ]

if.then.i.if.end86_crit_edge390:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then.i.if.end86_crit_edge389:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then.i.if.end86_crit_edge388:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then.i.if.end86_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #13
  %39 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %rc.0.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_search_one_group, i32 noundef 1684, ptr noundef nonnull @.str.1, i64 noundef %conv.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #13
  br label %if.end86

if.end12.i:                                       ; preds = %ocfs2_read_group_descriptor.exit.i.if.end12.i_crit_edge, %ocfs2_read_group_descriptor.exit.thread.i
  %group_bh.0197.i = phi ptr [ %37, %ocfs2_read_group_descriptor.exit.thread.i ], [ null, %ocfs2_read_group_descriptor.exit.i.if.end12.i_crit_edge ]
  %b_data13.i = getelementptr inbounds %struct.buffer_head, ptr %group_bh.0197.i, i32 0, i32 5
  %40 = ptrtoint ptr %b_data13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data13.i, align 4
  %ac_group_search.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 8
  %42 = ptrtoint ptr %ac_group_search.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ac_group_search.i, align 8
  %ac_max_block.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 10
  %44 = ptrtoint ptr %ac_max_block.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ac_max_block.i, align 8
  %call14.i = call i32 %43(ptr noundef %30, ptr noundef %group_bh.0197.i, i32 noundef %bits_wanted, i32 noundef %min_bits, i64 noundef %45, ptr noundef %res) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.end49.i

if.then17.i:                                      ; preds = %if.end12.i
  %46 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call14.i, label %do.body37.i [
    i32 -28, label %if.then17.i.out.i_crit_edge
    i32 -512, label %if.then17.i.out.i_crit_edge391
    i32 -4, label %if.then17.i.out.i_crit_edge392
    i32 -122, label %if.then17.i.out.i_crit_edge393
  ]

if.then17.i.out.i_crit_edge393:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then17.i.out.i_crit_edge392:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then17.i.out.i_crit_edge391:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then17.i.out.i_crit_edge:                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

do.body37.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38.i) #13
  %47 = ptrtoint ptr %_m38.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m38.i, align 8
  %conv42.i = sext i32 %call14.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38.i, ptr noundef nonnull @__func__.ocfs2_search_one_group, i32 noundef 1693, ptr noundef nonnull @.str.1, i64 noundef %conv42.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38.i) #13
  br label %out.i

if.end49.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool50.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.end49.i.if.end52.i_crit_edge

if.end49.i.if.end52.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @ocfs2_bg_discontig_fix_result(ptr noundef %ac, ptr noundef %41, ptr noundef %res) #13
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %if.end49.i.if.end52.i_crit_edge
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %group_bh.0197.i, i32 0, i32 3
  %48 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %b_blocknr.i, align 8
  %sr_bg_stable_blkno.i = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 1
  %50 = ptrtoint ptr %sr_bg_stable_blkno.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %sr_bg_stable_blkno.i, align 8
  %ac_find_loc_only.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 11
  %51 = ptrtoint ptr %ac_find_loc_only.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ac_find_loc_only.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool53.not.i = icmp eq i32 %52, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end52.i.out_loc_only.i_crit_edge

if.end52.i.out_loc_only.i_crit_edge:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_loc_only.i

if.end55.i:                                       ; preds = %if.end52.i
  %53 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ac_bh, align 4
  %sr_bits.i = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %55 = ptrtoint ptr %sr_bits.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sr_bits.i, align 4
  %bg_chain.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %41, i32 0, i32 4
  %57 = ptrtoint ptr %bg_chain.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bg_chain.i, align 2
  %59 = call i16 @llvm.bswap.i16(i16 %58) #13
  %call57.i = call i32 @ocfs2_alloc_dinode_update_counts(ptr noundef %30, ptr noundef %handle, ptr noundef %54, i32 noundef %56, i16 noundef zeroext %59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.end88.i

if.then60.i:                                      ; preds = %if.end55.i
  %60 = zext i32 %call57.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call57.i, label %do.body77.i [
    i32 -512, label %if.then60.i.out.i_crit_edge
    i32 -4, label %if.then60.i.out.i_crit_edge394
    i32 -28, label %if.then60.i.out.i_crit_edge395
    i32 -122, label %if.then60.i.out.i_crit_edge396
  ]

if.then60.i.out.i_crit_edge396:                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then60.i.out.i_crit_edge395:                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then60.i.out.i_crit_edge394:                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then60.i.out.i_crit_edge:                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

do.body77.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m78.i) #13
  %61 = ptrtoint ptr %_m78.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 1152921504606846976, ptr %_m78.i, align 8
  %conv82.i = sext i32 %call57.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m78.i, ptr noundef nonnull @__func__.ocfs2_search_one_group, i32 noundef 1713, ptr noundef nonnull @.str.1, i64 noundef %conv82.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m78.i) #13
  br label %out.i

if.end88.i:                                       ; preds = %if.end55.i
  %sr_bit_offset.i = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %62 = ptrtoint ptr %sr_bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sr_bit_offset.i, align 8
  %64 = ptrtoint ptr %sr_bits.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sr_bits.i, align 4
  %call90.i = call i32 @ocfs2_block_group_set_bits(ptr noundef %handle, ptr noundef %30, ptr noundef %41, ptr noundef %group_bh.0197.i, i32 noundef %63, i32 noundef %65) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp slt i32 %call90.i, 0
  br i1 %cmp91.i, label %if.then93.i, label %if.end88.i.out_loc_only.i_crit_edge

if.end88.i.out_loc_only.i_crit_edge:              ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_loc_only.i

if.then93.i:                                      ; preds = %if.end88.i
  %66 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ac_bh, align 4
  %68 = ptrtoint ptr %sr_bits.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sr_bits.i, align 4
  %70 = ptrtoint ptr %bg_chain.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %bg_chain.i, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71) #13
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %73 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data.i.i, align 4
  %id1.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %74, i32 0, i32 34
  %75 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id1.i.i, align 8
  %77 = call i32 @llvm.bswap.i32(i32 %76) #13
  %sub.i.i = sub i32 %77, %69
  %78 = call i32 @llvm.bswap.i32(i32 %sub.i.i) #13
  %79 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %id1.i.i, align 8
  %cl_recs.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %74, i32 0, i32 35, i32 0, i32 7
  %idxprom.i.i = zext i16 %72 to i32
  %arrayidx.i.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i.i, i32 0, i32 %idxprom.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #13
  %add.i.i.i = add i32 %82, %69
  %83 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #13
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx.i.i, align 4
  %85 = zext i32 %call90.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call90.i, label %do.body113.i [
    i32 -512, label %if.then93.i.out_loc_only.i_crit_edge
    i32 -4, label %if.then93.i.out_loc_only.i_crit_edge397
    i32 -28, label %if.then93.i.out_loc_only.i_crit_edge398
    i32 -122, label %if.then93.i.out_loc_only.i_crit_edge399
  ]

if.then93.i.out_loc_only.i_crit_edge399:          ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_loc_only.i

if.then93.i.out_loc_only.i_crit_edge398:          ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_loc_only.i

if.then93.i.out_loc_only.i_crit_edge397:          ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_loc_only.i

if.then93.i.out_loc_only.i_crit_edge:             ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_loc_only.i

do.body113.i:                                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m114.i) #13
  %86 = ptrtoint ptr %_m114.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 1152921504606846976, ptr %_m114.i, align 8
  %conv118.i = sext i32 %call90.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m114.i, ptr noundef nonnull @__func__.ocfs2_search_one_group, i32 noundef 1723, ptr noundef nonnull @.str.1, i64 noundef %conv118.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m114.i) #13
  br label %out_loc_only.i

out_loc_only.i:                                   ; preds = %do.body113.i, %if.then93.i.out_loc_only.i_crit_edge, %if.then93.i.out_loc_only.i_crit_edge397, %if.then93.i.out_loc_only.i_crit_edge398, %if.then93.i.out_loc_only.i_crit_edge399, %if.end88.i.out_loc_only.i_crit_edge, %if.end52.i.out_loc_only.i_crit_edge
  %ret.0.i = phi i32 [ %call14.i, %if.end52.i.out_loc_only.i_crit_edge ], [ %call90.i, %if.end88.i.out_loc_only.i_crit_edge ], [ %call90.i, %if.then93.i.out_loc_only.i_crit_edge ], [ %call90.i, %if.then93.i.out_loc_only.i_crit_edge397 ], [ %call90.i, %if.then93.i.out_loc_only.i_crit_edge398 ], [ %call90.i, %if.then93.i.out_loc_only.i_crit_edge399 ], [ %call90.i, %do.body113.i ]
  %bg_free_bits_count.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %41, i32 0, i32 3
  %87 = ptrtoint ptr %bg_free_bits_count.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %bg_free_bits_count.i, align 4
  %89 = call i16 @llvm.bswap.i16(i16 %88) #13
  %90 = ptrtoint ptr %bits_left to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %bits_left, align 2
  br label %out.i

out.i:                                            ; preds = %out_loc_only.i, %do.body77.i, %if.then60.i.out.i_crit_edge, %if.then60.i.out.i_crit_edge394, %if.then60.i.out.i_crit_edge395, %if.then60.i.out.i_crit_edge396, %do.body37.i, %if.then17.i.out.i_crit_edge, %if.then17.i.out.i_crit_edge391, %if.then17.i.out.i_crit_edge392, %if.then17.i.out.i_crit_edge393
  %ret.1.i = phi i32 [ %call14.i, %if.then17.i.out.i_crit_edge ], [ %ret.0.i, %out_loc_only.i ], [ %call57.i, %if.then60.i.out.i_crit_edge ], [ %call57.i, %if.then60.i.out.i_crit_edge394 ], [ %call57.i, %if.then60.i.out.i_crit_edge395 ], [ %call57.i, %if.then60.i.out.i_crit_edge396 ], [ %call57.i, %do.body77.i ], [ %call14.i, %do.body37.i ], [ %call14.i, %if.then17.i.out.i_crit_edge391 ], [ %call14.i, %if.then17.i.out.i_crit_edge392 ], [ %call14.i, %if.then17.i.out.i_crit_edge393 ]
  %tobool.not.i187.i = icmp eq ptr %group_bh.0197.i, null
  br i1 %tobool.not.i187.i, label %out.i.ocfs2_search_one_group.exit_crit_edge, label %if.then.i.i

out.i.ocfs2_search_one_group.exit_crit_edge:      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_search_one_group.exit

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %group_bh.0197.i) #13
  br label %ocfs2_search_one_group.exit

ocfs2_search_one_group.exit:                      ; preds = %if.then.i.i, %out.i.ocfs2_search_one_group.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool84.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool84.not, label %ocfs2_search_one_group.exit.if.then211_crit_edge, label %ocfs2_search_one_group.exit.if.end86_crit_edge

ocfs2_search_one_group.exit.if.end86_crit_edge:   ; preds = %ocfs2_search_one_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

ocfs2_search_one_group.exit.if.then211_crit_edge: ; preds = %ocfs2_search_one_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then211

if.end86:                                         ; preds = %ocfs2_search_one_group.exit.if.end86_crit_edge, %do.body.i, %if.then.i.if.end86_crit_edge, %if.then.i.if.end86_crit_edge388, %if.then.i.if.end86_crit_edge389, %if.then.i.if.end86_crit_edge390
  %retval.0.i360 = phi i32 [ %ret.1.i, %ocfs2_search_one_group.exit.if.end86_crit_edge ], [ %rc.0.i.i, %if.then.i.if.end86_crit_edge ], [ %rc.0.i.i, %if.then.i.if.end86_crit_edge388 ], [ %rc.0.i.i, %if.then.i.if.end86_crit_edge389 ], [ %rc.0.i.i, %if.then.i.if.end86_crit_edge390 ], [ %rc.0.i.i, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i360)
  %cmp87 = icmp sgt i32 %retval.0.i360, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %retval.0.i360)
  %cmp88.not = icmp eq i32 %retval.0.i360, -28
  %or.cond = or i1 %cmp87, %cmp88.not
  br i1 %or.cond, label %if.end86.if.end108_crit_edge, label %if.then89

if.end86.if.end108_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then89:                                        ; preds = %if.end86
  %91 = zext i32 %retval.0.i360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %retval.0.i360, label %do.body100 [
    i32 -512, label %if.then89.bail_crit_edge
    i32 -4, label %if.then89.bail_crit_edge400
    i32 -122, label %if.then89.bail_crit_edge401
  ]

if.then89.bail_crit_edge401:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then89.bail_crit_edge400:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then89.bail_crit_edge:                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body100:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %92 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %retval.0.i360 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_claim_suballoc_bits, i32 noundef 1920, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %bail

if.end108:                                        ; preds = %if.end86.if.end108_crit_edge, %if.end79.if.end108_crit_edge
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 35
  %cl_next_free_rec.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 35, i32 0, i32 3
  %93 = ptrtoint ptr %cl_next_free_rec.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %cl_next_free_rec.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool.not.i = icmp eq i16 %94, 0
  br i1 %tobool.not.i, label %do.body4.i, label %while.body.preheader.i, !prof !211

while.body.preheader.i:                           ; preds = %if.end108
  %95 = call i16 @llvm.bswap.i16(i16 %94) #13
  %umax.i = call i16 @llvm.umax.i16(i16 %95, i16 1) #13
  %wide.trip.count.i = zext i16 %umax.i to i32
  br label %while.body.i

do.body4.i:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1387, 0\0A.popsection", ""() #13, !srcloc !247
  unreachable

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %while.body.preheader.i ], [ %indvars.iv.next.i, %while.body.i.while.body.i_crit_edge ]
  %best.054.i = phi i16 [ 0, %while.body.preheader.i ], [ %spec.select.i, %while.body.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocfs2_chain_list, ptr %id2, i32 0, i32 5, i32 %indvars.iv.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i, align 8
  %98 = call i32 @llvm.bswap.i32(i32 %97) #13
  %idxprom14.i = zext i16 %best.054.i to i32
  %arrayidx15.i = getelementptr %struct.ocfs2_chain_list, ptr %id2, i32 0, i32 5, i32 %idxprom14.i
  %99 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx15.i, align 8
  %101 = call i32 @llvm.bswap.i32(i32 %100) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %101)
  %cmp17.i = icmp ugt i32 %98, %101
  %102 = trunc i32 %indvars.iv.i to i16
  %spec.select.i = select i1 %cmp17.i, i16 %102, i16 %best.054.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %do.body21.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.body21.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select.i, i16 %95)
  %cmp25.not.i = icmp ult i16 %spec.select.i, %95
  br i1 %cmp25.not.i, label %ocfs2_find_victim_chain.exit, label %do.body34.i, !prof !215

do.body34.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1397, 0\0A.popsection", ""() #13, !srcloc !248
  unreachable

ocfs2_find_victim_chain.exit:                     ; preds = %do.body21.i
  %ac_chain = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 6
  %103 = ptrtoint ptr %ac_chain to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %spec.select.i, ptr %ac_chain, align 8
  %call110 = call fastcc i32 @ocfs2_search_chain(ptr noundef %ac, ptr noundef %handle, i32 noundef %bits_wanted, i32 noundef %min_bits, ptr noundef %res, ptr noundef nonnull %bits_left)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then112, label %if.end120

if.then112:                                       ; preds = %ocfs2_find_victim_chain.exit
  %104 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ac, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 33
  %108 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %bitmap_blkno.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %bitmap_blkno.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %105, i32 -1608
  %112 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %113)
  %cmp.i341.not = icmp eq i64 %111, %113
  br i1 %cmp.i341.not, label %if.then116, label %if.else

if.then116:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %res, align 8
  br label %if.then211

if.else:                                          ; preds = %if.then112
  %sr_blkno.i = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 2
  %116 = ptrtoint ptr %sr_blkno.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %sr_blkno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %117)
  %cmp.i343 = icmp eq i64 %117, 0
  br i1 %cmp.i343, label %if.else.if.then211_crit_edge, label %if.end.i

if.else.if.then211_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then211

if.end.i:                                         ; preds = %if.else
  %118 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %119)
  %tobool.not.i344 = icmp eq i64 %119, 0
  br i1 %tobool.not.i344, label %if.end3.i, label %if.end.i.if.then211_crit_edge

if.end.i.if.then211_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then211

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sr_bit_offset.i345 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %120 = ptrtoint ptr %sr_bit_offset.i345 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sr_bit_offset.i345, align 8
  %conv.i.i = zext i32 %121 to i64
  %sub.i.i346 = sub i64 %117, %conv.i.i
  br label %if.then211

if.end120:                                        ; preds = %ocfs2_find_victim_chain.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call110)
  %cmp121 = icmp sgt i32 %call110, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call110)
  %cmp124.not = icmp eq i32 %call110, -28
  %or.cond340 = or i1 %cmp121, %cmp124.not
  br i1 %or.cond340, label %if.end154, label %if.then126

if.then126:                                       ; preds = %if.end120
  %122 = zext i32 %call110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call110, label %do.body143 [
    i32 -512, label %if.then126.bail_crit_edge
    i32 -4, label %if.then126.bail_crit_edge402
    i32 -122, label %if.then126.bail_crit_edge403
  ]

if.then126.bail_crit_edge403:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then126.bail_crit_edge402:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then126.bail_crit_edge:                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body143:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m144) #13
  %123 = ptrtoint ptr %_m144 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 1152921504606846976, ptr %_m144, align 8
  %conv148 = sext i32 %call110 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m144, ptr noundef nonnull @__func__.ocfs2_claim_suballoc_bits, i32 noundef 1940, ptr noundef nonnull @.str.1, i64 noundef %conv148) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m144) #13
  br label %bail

if.end154:                                        ; preds = %if.end120
  %conv155 = zext i16 %spec.select.i to i32
  call fastcc void @trace_ocfs2_claim_suballoc_bits(i32 noundef %conv155)
  %ac_disable_chain_relink = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 7
  %124 = ptrtoint ptr %ac_disable_chain_relink to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %ac_disable_chain_relink, align 4
  %125 = ptrtoint ptr %cl_next_free_rec.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %cl_next_free_rec.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %cmp158373.not = icmp eq i16 %126, 0
  br i1 %cmp158373.not, label %if.end154.set_hint_crit_edge, label %for.body.lr.ph

if.end154.set_hint_crit_edge:                     ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_hint

for.body.lr.ph:                                   ; preds = %if.end154
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 35, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %status.0376 = phi i32 [ %call110, %for.body.lr.ph ], [ %status.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %conv155)
  %cmp162 = icmp eq i32 %indvars.iv, %conv155
  br i1 %cmp162, label %for.body.for.inc_crit_edge, label %if.end165

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end165:                                        ; preds = %for.body
  %arrayidx = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %indvars.iv
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool166.not = icmp eq i32 %128, 0
  br i1 %tobool166.not, label %if.end165.for.inc_crit_edge, label %if.end168

if.end165.for.inc_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end168:                                        ; preds = %if.end165
  %129 = trunc i32 %indvars.iv to i16
  %130 = ptrtoint ptr %ac_chain to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %ac_chain, align 8
  %call170 = call fastcc i32 @ocfs2_search_chain(ptr noundef %ac, ptr noundef %handle, i32 noundef %bits_wanted, i32 noundef %min_bits, ptr noundef %res, ptr noundef nonnull %bits_left)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then172, label %if.end174

if.then172:                                       ; preds = %if.end168
  %sr_blkno.i348 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 2
  %131 = ptrtoint ptr %sr_blkno.i348 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %sr_blkno.i348, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %132)
  %cmp.i349 = icmp eq i64 %132, 0
  br i1 %cmp.i349, label %if.then172.if.then211_crit_edge, label %if.end.i351

if.then172.if.then211_crit_edge:                  ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then211

if.end.i351:                                      ; preds = %if.then172
  %133 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %tobool.not.i350 = icmp eq i64 %134, 0
  br i1 %tobool.not.i350, label %if.end3.i355, label %if.end.i351.if.then211_crit_edge

if.end.i351.if.then211_crit_edge:                 ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then211

if.end3.i355:                                     ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #15
  %sr_bit_offset.i352 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %135 = ptrtoint ptr %sr_bit_offset.i352 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sr_bit_offset.i352, align 8
  %conv.i.i353 = zext i32 %136 to i64
  %sub.i.i354 = sub i64 %132, %conv.i.i353
  br label %if.then211

if.end174:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp175 = icmp slt i32 %call170, 0
  br i1 %cmp175, label %land.lhs.true177, label %if.end174.for.inc_crit_edge

if.end174.for.inc_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true177:                                 ; preds = %if.end174
  %137 = zext i32 %call170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call170, label %do.body197 [
    i32 -28, label %land.lhs.true177.for.inc_crit_edge
    i32 -512, label %land.lhs.true177.bail_crit_edge
    i32 -4, label %land.lhs.true177.bail_crit_edge404
    i32 -122, label %land.lhs.true177.bail_crit_edge405
  ]

land.lhs.true177.bail_crit_edge405:               ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

land.lhs.true177.bail_crit_edge404:               ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

land.lhs.true177.bail_crit_edge:                  ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

land.lhs.true177.for.inc_crit_edge:               ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body197:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m198) #13
  %138 = ptrtoint ptr %_m198 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 1152921504606846976, ptr %_m198, align 8
  %conv202 = sext i32 %call170 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m198, ptr noundef nonnull @__func__.ocfs2_claim_suballoc_bits, i32 noundef 1965, ptr noundef nonnull @.str.1, i64 noundef %conv202) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m198) #13
  br label %bail

for.inc:                                          ; preds = %land.lhs.true177.for.inc_crit_edge, %if.end174.for.inc_crit_edge, %if.end165.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %status.1 = phi i32 [ %status.0376, %for.body.for.inc_crit_edge ], [ %call170, %land.lhs.true177.for.inc_crit_edge ], [ %call170, %if.end174.for.inc_crit_edge ], [ %status.0376, %if.end165.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %139 = ptrtoint ptr %cl_next_free_rec.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %cl_next_free_rec.i, align 2
  %141 = call i16 @llvm.bswap.i16(i16 %140)
  %142 = zext i16 %141 to i32
  %cmp158 = icmp ult i32 %indvars.iv.next, %142
  br i1 %cmp158, label %for.inc.for.body_crit_edge, label %for.inc.set_hint_crit_edge

for.inc.set_hint_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_hint

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

set_hint:                                         ; preds = %for.inc.set_hint_crit_edge, %if.end154.set_hint_crit_edge
  %status.0.lcssa = phi i32 [ %call110, %if.end154.set_hint_crit_edge ], [ %status.1, %for.inc.set_hint_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %status.0.lcssa)
  %cmp209.not = icmp eq i32 %status.0.lcssa, -28
  br i1 %cmp209.not, label %set_hint.if.end250_crit_edge, label %set_hint.if.then211_crit_edge

set_hint.if.then211_crit_edge:                    ; preds = %set_hint
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then211

set_hint.if.end250_crit_edge:                     ; preds = %set_hint
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

if.then211:                                       ; preds = %set_hint.if.then211_crit_edge, %if.end3.i355, %if.end.i351.if.then211_crit_edge, %if.then172.if.then211_crit_edge, %if.end3.i, %if.end.i.if.then211_crit_edge, %if.else.if.then211_crit_edge, %if.then116, %ocfs2_search_one_group.exit.if.then211_crit_edge
  %status.2365 = phi i32 [ %status.0.lcssa, %set_hint.if.then211_crit_edge ], [ 0, %if.then116 ], [ 0, %ocfs2_search_one_group.exit.if.then211_crit_edge ], [ 0, %if.else.if.then211_crit_edge ], [ 0, %if.end.i.if.then211_crit_edge ], [ 0, %if.end3.i ], [ 0, %if.then172.if.then211_crit_edge ], [ 0, %if.end.i351.if.then211_crit_edge ], [ 0, %if.end3.i355 ]
  %hint.0364 = phi i64 [ %2, %set_hint.if.then211_crit_edge ], [ %115, %if.then116 ], [ %2, %ocfs2_search_one_group.exit.if.then211_crit_edge ], [ 0, %if.else.if.then211_crit_edge ], [ %119, %if.end.i.if.then211_crit_edge ], [ %sub.i.i346, %if.end3.i ], [ 0, %if.then172.if.then211_crit_edge ], [ %134, %if.end.i351.if.then211_crit_edge ], [ %sub.i.i354, %if.end3.i355 ]
  %143 = ptrtoint ptr %bits_left to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %bits_left, align 2
  %conv212 = zext i16 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv212, i32 %min_bits)
  %cmp213 = icmp ult i32 %conv212, %min_bits
  br i1 %cmp213, label %if.then215, label %if.else217

if.then215:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %ac_last_group to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 0, ptr %ac_last_group, align 8
  br label %bail

if.else217:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #15
  %146 = ptrtoint ptr %ac_last_group to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %hint.0364, ptr %ac_last_group, align 8
  br label %bail

bail:                                             ; preds = %if.else217, %if.then215, %do.body197, %land.lhs.true177.bail_crit_edge, %land.lhs.true177.bail_crit_edge404, %land.lhs.true177.bail_crit_edge405, %do.body143, %if.then126.bail_crit_edge, %if.then126.bail_crit_edge402, %if.then126.bail_crit_edge403, %do.body100, %if.then89.bail_crit_edge, %if.then89.bail_crit_edge400, %if.then89.bail_crit_edge401, %if.then73
  %status.3 = phi i32 [ %call78, %if.then73 ], [ %status.2365, %if.then215 ], [ %status.2365, %if.else217 ], [ %retval.0.i360, %if.then89.bail_crit_edge ], [ %retval.0.i360, %if.then89.bail_crit_edge400 ], [ %retval.0.i360, %if.then89.bail_crit_edge401 ], [ %retval.0.i360, %do.body100 ], [ %call110, %if.then126.bail_crit_edge ], [ %call110, %if.then126.bail_crit_edge402 ], [ %call110, %if.then126.bail_crit_edge403 ], [ %call110, %do.body143 ], [ %call170, %do.body197 ], [ %call170, %land.lhs.true177.bail_crit_edge ], [ %call170, %land.lhs.true177.bail_crit_edge404 ], [ %call170, %land.lhs.true177.bail_crit_edge405 ]
  %147 = zext i32 %status.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %status.3, label %do.body239 [
    i32 0, label %bail.if.end250_crit_edge
    i32 -512, label %bail.if.end250_crit_edge406
    i32 -4, label %bail.if.end250_crit_edge407
    i32 524289, label %bail.if.end250_crit_edge408
    i32 -28, label %bail.if.end250_crit_edge409
    i32 -122, label %bail.if.end250_crit_edge410
  ]

bail.if.end250_crit_edge410:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

bail.if.end250_crit_edge409:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

bail.if.end250_crit_edge408:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

bail.if.end250_crit_edge407:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

bail.if.end250_crit_edge406:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

bail.if.end250_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

do.body239:                                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m240) #13
  %148 = ptrtoint ptr %_m240 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 1152921504606846976, ptr %_m240, align 8
  %conv244 = sext i32 %status.3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m240, ptr noundef nonnull @__func__.ocfs2_claim_suballoc_bits, i32 noundef 1983, ptr noundef nonnull @.str.1, i64 noundef %conv244) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m240) #13
  br label %if.end250

if.end250:                                        ; preds = %do.body239, %bail.if.end250_crit_edge, %bail.if.end250_crit_edge406, %bail.if.end250_crit_edge407, %bail.if.end250_crit_edge408, %bail.if.end250_crit_edge409, %bail.if.end250_crit_edge410, %set_hint.if.end250_crit_edge
  %status.3367 = phi i32 [ %status.3, %do.body239 ], [ %status.3, %bail.if.end250_crit_edge ], [ %status.3, %bail.if.end250_crit_edge406 ], [ %status.3, %bail.if.end250_crit_edge407 ], [ %status.3, %bail.if.end250_crit_edge408 ], [ %status.3, %bail.if.end250_crit_edge409 ], [ %status.3, %bail.if.end250_crit_edge410 ], [ -28, %set_hint.if.end250_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bits_left) #13
  ret i32 %status.3367
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_find_new_inode_loc(ptr nocapture noundef %dir, ptr nocapture noundef readonly %parent_fe_bh, ptr noundef %ac, ptr nocapture noundef writeonly %fe_blkno) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m103 = alloca i64, align 8
  %_m135 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ac, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !211

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2069, 0\0A.popsection", ""() #13, !srcloc !249
  unreachable

do.body10:                                        ; preds = %entry
  %ac_bits_given = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 4
  %0 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac_bits_given, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body27, label %do.body18, !prof !215

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2070, 0\0A.popsection", ""() #13, !srcloc !250
  unreachable

do.body27:                                        ; preds = %do.body10
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 3
  %2 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ac_bits_wanted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp28.not = icmp eq i32 %3, 1
  br i1 %cmp28.not, label %do.body45, label %do.body36, !prof !215

do.body36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2071, 0\0A.popsection", ""() #13, !srcloc !251
  unreachable

do.body45:                                        ; preds = %do.body27
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %4 = ptrtoint ptr %ac_which to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ac_which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp46.not = icmp eq i32 %5, 3
  br i1 %cmp46.not, label %do.end62, label %do.body54, !prof !215

do.body54:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2072, 0\0A.popsection", ""() #13, !srcloc !252
  unreachable

do.end62:                                         ; preds = %do.body45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3392, i32 noundef 32) #17
  %cmp63 = icmp eq ptr %call7.i.i, null
  br i1 %cmp63, label %if.end151.thread, label %if.end81

if.end151.thread:                                 ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_find_new_inode_loc, i32 noundef 2077, ptr noundef nonnull @.str.1, i64 noundef -12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %if.then153

if.end81:                                         ; preds = %do.end62
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %parent_fe_bh, i32 0, i32 5
  %8 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data.i, align 4
  %ip_last_used_group.i = getelementptr i8, ptr %dir, i32 832
  %10 = ptrtoint ptr %ip_last_used_group.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ip_last_used_group.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %if.end81.if.else.i_crit_edge, label %land.lhs.true.i

if.end81.if.else.i_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end81
  %ip_last_used_slot.i = getelementptr i8, ptr %dir, i32 828
  %12 = ptrtoint ptr %ip_last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ip_last_used_slot.i, align 4
  %ac_alloc_slot.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %14 = ptrtoint ptr %ac_alloc_slot.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ac_alloc_slot.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp eq i32 %13, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.end17.sink.split.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i.if.end17.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end81.if.else.i_crit_edge
  %i_suballoc_slot.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %i_suballoc_slot.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %i_suballoc_slot.i, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #13
  %conv.i = zext i16 %18 to i32
  %ac_alloc_slot4.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %19 = ptrtoint ptr %ac_alloc_slot4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ac_alloc_slot4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i)
  %cmp5.i = icmp eq i32 %20, %conv.i
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i.ocfs2_init_inode_ac_group.exit_crit_edge

if.else.i.ocfs2_init_inode_ac_group.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_init_inode_ac_group.exit

if.then7.i:                                       ; preds = %if.else.i
  %i_suballoc_loc.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %9, i32 0, i32 30
  %21 = ptrtoint ptr %i_suballoc_loc.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_suballoc_loc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool8.not.i = icmp eq i64 %22, 0
  br i1 %tobool8.not.i, label %if.else12.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #13
  br label %if.end17.sink.split.i

if.else12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_blkno.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %9, i32 0, i32 17
  %24 = ptrtoint ptr %i_blkno.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_blkno.i, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #13
  %i_suballoc_bit.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %9, i32 0, i32 3
  %27 = ptrtoint ptr %i_suballoc_bit.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_suballoc_bit.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #13
  %conv.i.i = zext i16 %29 to i64
  %sub.i.i = sub i64 %26, %conv.i.i
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.else12.i, %if.then9.i, %land.lhs.true.i.if.end17.sink.split.i_crit_edge
  %sub.i.sink.i = phi i64 [ %sub.i.i, %if.else12.i ], [ %23, %if.then9.i ], [ %11, %land.lhs.true.i.if.end17.sink.split.i_crit_edge ]
  %ac_last_group15.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 9
  %30 = ptrtoint ptr %ac_last_group15.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sub.i.sink.i, ptr %ac_last_group15.i, align 8
  br label %ocfs2_init_inode_ac_group.exit

ocfs2_init_inode_ac_group.exit:                   ; preds = %if.end17.sink.split.i, %if.else.i.ocfs2_init_inode_ac_group.exit_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info, align 16
  %call82 = tail call ptr @ocfs2_start_trans(ptr noundef %34, i32 noundef 3) #13
  %cmp.i197 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then84, label %if.end113

if.then84:                                        ; preds = %ocfs2_init_inode_ac_group.exit
  %35 = ptrtoint ptr %call82 to i32
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %35, label %do.body102 [
    i32 -512, label %if.then84.if.end151_crit_edge
    i32 -4, label %if.then84.if.end151_crit_edge207
    i32 524289, label %if.then84.if.end151_crit_edge208
    i32 -28, label %if.then84.if.end151_crit_edge209
    i32 -122, label %if.then84.if.end151_crit_edge210
  ]

if.then84.if.end151_crit_edge210:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then84.if.end151_crit_edge209:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then84.if.end151_crit_edge208:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then84.if.end151_crit_edge207:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then84.if.end151_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

do.body102:                                       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #13
  %37 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m103, align 8
  %conv107 = sext i32 %35 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.ocfs2_find_new_inode_loc, i32 noundef 2091, ptr noundef nonnull @.str.1, i64 noundef %conv107) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #13
  br label %if.end151

if.end113:                                        ; preds = %ocfs2_init_inode_ac_group.exit
  %ac_find_loc_only = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 11
  %38 = ptrtoint ptr %ac_find_loc_only to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ac_find_loc_only, align 8
  %call114 = tail call fastcc i32 @ocfs2_claim_suballoc_bits(ptr noundef nonnull %ac, ptr noundef %call82, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then117, label %if.end145

if.then117:                                       ; preds = %if.end113
  %39 = zext i32 %call114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call114, label %do.body134 [
    i32 -512, label %if.then117.out_crit_edge
    i32 -4, label %if.then117.out_crit_edge211
    i32 -28, label %if.then117.out_crit_edge212
    i32 -122, label %if.then117.out_crit_edge213
  ]

if.then117.out_crit_edge213:                      ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then117.out_crit_edge212:                      ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then117.out_crit_edge211:                      ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then117.out_crit_edge:                         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body134:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m135) #13
  %40 = ptrtoint ptr %_m135 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606846976, ptr %_m135, align 8
  %conv139 = sext i32 %call114 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m135, ptr noundef nonnull @__func__.ocfs2_find_new_inode_loc, i32 noundef 2104, ptr noundef nonnull @.str.1, i64 noundef %conv139) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m135) #13
  br label %out

if.end145:                                        ; preds = %if.end113
  %ac_find_loc_priv = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 12
  %41 = ptrtoint ptr %ac_find_loc_priv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %ac_find_loc_priv, align 4
  %sr_blkno = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %sr_blkno to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %sr_blkno, align 8
  %44 = ptrtoint ptr %fe_blkno to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %fe_blkno, align 8
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call82, i32 0, i32 7
  %45 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %46 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end145.out_crit_edge

if.end145.out_crit_edge:                          ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false.i.i:                                ; preds = %if.end145
  %47 = ptrtoint ptr %call82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call82, align 4
  %tobool1.not.i.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %and.i.i.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i198 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i198, label %if.then.i, label %is_handle_aborted.exit.i.out_crit_edge

is_handle_aborted.exit.i.out_crit_edge:           ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %dir, i32 884
  %55 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %i_sync_tid.i, align 4
  br label %out

out:                                              ; preds = %if.then.i, %is_handle_aborted.exit.i.out_crit_edge, %lor.lhs.false.i.i.out_crit_edge, %if.end145.out_crit_edge, %do.body134, %if.then117.out_crit_edge, %if.then117.out_crit_edge211, %if.then117.out_crit_edge212, %if.then117.out_crit_edge213
  %tobool146.not = icmp eq ptr %call82, null
  br i1 %tobool146.not, label %out.if.end151_crit_edge, label %if.then147

out.if.end151_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then147:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb, align 4
  %s_fs_info149 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info149 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info149, align 16
  %call150 = call i32 @ocfs2_commit_trans(ptr noundef %59, ptr noundef nonnull %call82) #13
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %out.if.end151_crit_edge, %do.body102, %if.then84.if.end151_crit_edge, %if.then84.if.end151_crit_edge207, %if.then84.if.end151_crit_edge208, %if.then84.if.end151_crit_edge209, %if.then84.if.end151_crit_edge210
  %ret.0202 = phi i32 [ %call114, %if.then147 ], [ %call114, %out.if.end151_crit_edge ], [ %35, %do.body102 ], [ %35, %if.then84.if.end151_crit_edge ], [ %35, %if.then84.if.end151_crit_edge207 ], [ %35, %if.then84.if.end151_crit_edge208 ], [ %35, %if.then84.if.end151_crit_edge209 ], [ %35, %if.then84.if.end151_crit_edge210 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0202)
  %tobool152.not = icmp eq i32 %ret.0202, 0
  br i1 %tobool152.not, label %if.end151.if.end154_crit_edge, label %if.end151.if.then153_crit_edge

if.end151.if.then153_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then153

if.end151.if.end154_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.then153:                                       ; preds = %if.end151.if.then153_crit_edge, %if.end151.thread
  %ret.0202205 = phi i32 [ -12, %if.end151.thread ], [ %ret.0202, %if.end151.if.then153_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #13
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %if.end151.if.end154_crit_edge
  %ret.0202206 = phi i32 [ %ret.0202205, %if.then153 ], [ 0, %if.end151.if.end154_crit_edge ]
  ret i32 %ret.0202206
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_claim_new_inode_at_loc(ptr noundef %handle, ptr nocapture noundef writeonly %dir, ptr nocapture noundef %ac, ptr nocapture noundef writeonly %suballoc_loc, ptr nocapture noundef writeonly %suballoc_bit, i64 noundef %di_blkno) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m50 = alloca i64, align 8
  %_m87 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_find_loc_priv = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 12
  %0 = ptrtoint ptr %ac_find_loc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac_find_loc_priv, align 4
  %ac_bh = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %sr_blkno = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sr_blkno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sr_blkno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %di_blkno)
  %cmp.not = icmp eq i64 %3, %di_blkno
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !215

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2141, 0\0A.popsection", ""() #13, !srcloc !253
  unreachable

do.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %8 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ac, align 8
  %sr_bg_stable_blkno = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sr_bg_stable_blkno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sr_bg_stable_blkno, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tmp.i, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %9, i32 -56
  %call1.i.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %11, i32 noundef 1, ptr noundef nonnull %tmp.i, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_group_descriptor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end7.ocfs2_read_group_descriptor.exit_crit_edge

do.end7.ocfs2_read_group_descriptor.exit_crit_edge: ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit

if.end.i:                                         ; preds = %do.end7
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tmp.i, align 4
  %call2.i = call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %14, ptr noundef %7, ptr noundef %16, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tmp.i, align 4
  br i1 %tobool3.not.i, label %ocfs2_read_group_descriptor.exit.thread, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge, label %if.then.i.i

if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %18) #13
  br label %ocfs2_read_group_descriptor.exit

ocfs2_read_group_descriptor.exit.thread:          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  %b_data27 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data27, align 4
  %bg_chain = getelementptr inbounds %struct.ocfs2_group_desc, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %bg_chain to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bg_chain, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ac, align 8
  %26 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ac_bh, align 4
  %sr_bits = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sr_bits, align 4
  %call30 = call i32 @ocfs2_alloc_dinode_update_counts(ptr noundef %25, ptr noundef %handle, ptr noundef %27, i32 noundef %29, i16 noundef zeroext %23)
  %30 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call30, label %do.body49 [
    i32 0, label %if.end60
    i32 -512, label %ocfs2_read_group_descriptor.exit.thread.out_crit_edge
    i32 -4, label %ocfs2_read_group_descriptor.exit.thread.out_crit_edge183
    i32 524289, label %ocfs2_read_group_descriptor.exit.thread.out_crit_edge184
    i32 -28, label %ocfs2_read_group_descriptor.exit.thread.out_crit_edge185
    i32 -122, label %ocfs2_read_group_descriptor.exit.thread.out_crit_edge186
  ]

ocfs2_read_group_descriptor.exit.thread.out_crit_edge186: ; preds = %ocfs2_read_group_descriptor.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

ocfs2_read_group_descriptor.exit.thread.out_crit_edge185: ; preds = %ocfs2_read_group_descriptor.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

ocfs2_read_group_descriptor.exit.thread.out_crit_edge184: ; preds = %ocfs2_read_group_descriptor.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

ocfs2_read_group_descriptor.exit.thread.out_crit_edge183: ; preds = %ocfs2_read_group_descriptor.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

ocfs2_read_group_descriptor.exit.thread.out_crit_edge: ; preds = %ocfs2_read_group_descriptor.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

ocfs2_read_group_descriptor.exit:                 ; preds = %if.then.i.i, %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge, %do.end7.ocfs2_read_group_descriptor.exit_crit_edge
  %rc.0.i = phi i32 [ %call1.i.i, %do.end7.ocfs2_read_group_descriptor.exit_crit_edge ], [ %call2.i, %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge ], [ %call2.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  %31 = zext i32 %rc.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %rc.0.i, label %do.body19 [
    i32 -122, label %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge
    i32 -512, label %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge187
    i32 -4, label %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge188
    i32 524289, label %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge189
    i32 -28, label %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge190
  ]

ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge190: ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge189: ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge188: ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge187: ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge: ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

do.body19:                                        ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %32 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %rc.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_claim_new_inode_at_loc, i32 noundef 2146, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %brelse.exit

do.body49:                                        ; preds = %ocfs2_read_group_descriptor.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50) #13
  %33 = ptrtoint ptr %_m50 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m50, align 8
  %conv54 = sext i32 %call30 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50, ptr noundef nonnull @__func__.ocfs2_claim_new_inode_at_loc, i32 noundef 2157, ptr noundef nonnull @.str.1, i64 noundef %conv54) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50) #13
  br label %out

if.end60:                                         ; preds = %ocfs2_read_group_descriptor.exit.thread
  %34 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ac, align 8
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sr_bit_offset, align 8
  %38 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sr_bits, align 4
  %call63 = call i32 @ocfs2_block_group_set_bits(ptr noundef %handle, ptr noundef %35, ptr noundef %20, ptr noundef %18, i32 noundef %37, i32 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end97

if.then66:                                        ; preds = %if.end60
  %40 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ac_bh, align 4
  %42 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sr_bits, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data.i, align 4
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %45, i32 0, i32 34
  %46 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id1.i, align 8
  %48 = call i32 @llvm.bswap.i32(i32 %47) #13
  %sub.i = sub i32 %48, %43
  %49 = call i32 @llvm.bswap.i32(i32 %sub.i) #13
  %50 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %id1.i, align 8
  %cl_recs.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %45, i32 0, i32 35, i32 0, i32 7
  %idxprom.i = zext i16 %23 to i32
  %arrayidx.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i, i32 0, i32 %idxprom.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #13
  %add.i.i = add i32 %53, %43
  %54 = call i32 @llvm.bswap.i32(i32 %add.i.i) #13
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx.i, align 4
  %56 = zext i32 %call63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call63, label %do.body86 [
    i32 -512, label %if.then66.out_crit_edge
    i32 -4, label %if.then66.out_crit_edge191
    i32 -28, label %if.then66.out_crit_edge192
    i32 -122, label %if.then66.out_crit_edge193
  ]

if.then66.out_crit_edge193:                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then66.out_crit_edge192:                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then66.out_crit_edge191:                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then66.out_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body86:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m87) #13
  %57 = ptrtoint ptr %_m87 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m87, align 8
  %conv91 = sext i32 %call63 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m87, ptr noundef nonnull @__func__.ocfs2_claim_new_inode_at_loc, i32 noundef 2170, ptr noundef nonnull @.str.1, i64 noundef %conv91) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m87) #13
  br label %out

if.end97:                                         ; preds = %if.end60
  %58 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sr_bits, align 4
  call fastcc void @trace_ocfs2_claim_new_inode_at_loc(i64 noundef %di_blkno, i32 noundef %59)
  %60 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ac, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info, align 16
  %bg_allocs = getelementptr inbounds %struct.ocfs2_super, ptr %65, i32 0, i32 60, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bg_allocs, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %bg_allocs, i32 1, i32 3, i32 1) #13
  %66 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bg_allocs, ptr %bg_allocs, i32 1, ptr elementtype(i32) %bg_allocs) #13, !srcloc !214
  %67 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sr_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp102.not = icmp eq i32 %68, 1
  br i1 %cmp102.not, label %do.end119, label %do.body111, !prof !215

do.body111:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2179, 0\0A.popsection", ""() #13, !srcloc !254
  unreachable

do.end119:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %1, align 8
  %71 = ptrtoint ptr %suballoc_loc to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %suballoc_loc, align 8
  %72 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sr_bit_offset, align 8
  %conv121 = trunc i32 %73 to i16
  %74 = ptrtoint ptr %suballoc_bit to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv121, ptr %suballoc_bit, align 2
  %ac_bits_given = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 4
  %75 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ac_bits_given, align 8
  %inc = add i32 %76, 1
  store i32 %inc, ptr %ac_bits_given, align 8
  %ac_last_group.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 9
  %77 = ptrtoint ptr %ac_last_group.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ac_last_group.i, align 8
  %ip_last_used_group.i = getelementptr i8, ptr %dir, i32 832
  %79 = ptrtoint ptr %ip_last_used_group.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %ip_last_used_group.i, align 8
  %ac_alloc_slot.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %80 = ptrtoint ptr %ac_alloc_slot.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ac_alloc_slot.i, align 8
  %ip_last_used_slot.i = getelementptr i8, ptr %dir, i32 828
  %82 = ptrtoint ptr %ip_last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %ip_last_used_slot.i, align 4
  br label %out

out:                                              ; preds = %do.end119, %do.body86, %if.then66.out_crit_edge, %if.then66.out_crit_edge191, %if.then66.out_crit_edge192, %if.then66.out_crit_edge193, %do.body49, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge183, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge184, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge185, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge186
  %ret.0 = phi i32 [ %call63, %do.end119 ], [ %call30, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge ], [ %call30, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge183 ], [ %call30, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge184 ], [ %call30, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge185 ], [ %call30, %ocfs2_read_group_descriptor.exit.thread.out_crit_edge186 ], [ %call30, %do.body49 ], [ %call63, %if.then66.out_crit_edge ], [ %call63, %if.then66.out_crit_edge191 ], [ %call63, %if.then66.out_crit_edge192 ], [ %call63, %if.then66.out_crit_edge193 ], [ %call63, %do.body86 ]
  %tobool.not.i169 = icmp eq ptr %18, null
  br i1 %tobool.not.i169, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %18) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge, %do.body19, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge187, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge188, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge189, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge190
  %ret.0182 = phi i32 [ %ret.0, %out.brelse.exit_crit_edge ], [ %ret.0, %if.then.i ], [ %rc.0.i, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge ], [ %rc.0.i, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge187 ], [ %rc.0.i, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge188 ], [ %rc.0.i, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge189 ], [ %rc.0.i, %ocfs2_read_group_descriptor.exit.brelse.exit_crit_edge190 ], [ %rc.0.i, %do.body19 ]
  ret i32 %ret.0182
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_claim_new_inode_at_loc(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_claim_new_inode_at_loc, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_claim_new_inode_at_loc, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !255
  %call42 = tail call i32 @__traceiter_ocfs2_claim_new_inode_at_loc(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_claim_new_inode_at_loc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_claim_new_inode_at_loc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_claim_new_inode_at_loc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_claim_new_inode_at_loc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 832, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
define dso_local i32 @ocfs2_claim_new_inode(ptr noundef %handle, ptr nocapture noundef %dir, ptr nocapture noundef readonly %parent_fe_bh, ptr noundef %ac, ptr nocapture noundef writeonly %suballoc_loc, ptr nocapture noundef writeonly %suballoc_bit, ptr nocapture noundef writeonly %fe_blkno) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.ocfs2_suballoc_result, align 8
  %_m = alloca i64, align 8
  %_m122 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #13
  %0 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %tobool.not = icmp eq ptr %ac, null
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !211

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2203, 0\0A.popsection", ""() #13, !srcloc !257
  unreachable

do.body10:                                        ; preds = %entry
  %ac_bits_given = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 4
  %4 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ac_bits_given, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body27, label %do.body18, !prof !215

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2204, 0\0A.popsection", ""() #13, !srcloc !258
  unreachable

do.body27:                                        ; preds = %do.body10
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 3
  %6 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ac_bits_wanted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp28.not = icmp eq i32 %7, 1
  br i1 %cmp28.not, label %do.body45, label %do.body36, !prof !215

do.body36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2205, 0\0A.popsection", ""() #13, !srcloc !259
  unreachable

do.body45:                                        ; preds = %do.body27
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %8 = ptrtoint ptr %ac_which to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ac_which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp46.not = icmp eq i32 %9, 3
  br i1 %cmp46.not, label %do.end62, label %do.body54, !prof !215

do.body54:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2206, 0\0A.popsection", ""() #13, !srcloc !260
  unreachable

do.end62:                                         ; preds = %do.body45
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %parent_fe_bh, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %ip_last_used_group.i = getelementptr i8, ptr %dir, i32 832
  %12 = ptrtoint ptr %ip_last_used_group.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ip_last_used_group.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i, label %do.end62.if.else.i_crit_edge, label %land.lhs.true.i

do.end62.if.else.i_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end62
  %ip_last_used_slot.i = getelementptr i8, ptr %dir, i32 828
  %14 = ptrtoint ptr %ip_last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ip_last_used_slot.i, align 4
  %ac_alloc_slot.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %16 = ptrtoint ptr %ac_alloc_slot.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac_alloc_slot.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i = icmp eq i32 %15, %17
  br i1 %cmp.i, label %land.lhs.true.i.if.end17.sink.split.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i.if.end17.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end62.if.else.i_crit_edge
  %i_suballoc_slot.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %i_suballoc_slot.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %i_suballoc_slot.i, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #13
  %conv.i = zext i16 %20 to i32
  %ac_alloc_slot4.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %21 = ptrtoint ptr %ac_alloc_slot4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ac_alloc_slot4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp5.i = icmp eq i32 %22, %conv.i
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i.ocfs2_init_inode_ac_group.exit_crit_edge

if.else.i.ocfs2_init_inode_ac_group.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_init_inode_ac_group.exit

if.then7.i:                                       ; preds = %if.else.i
  %i_suballoc_loc.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 30
  %23 = ptrtoint ptr %i_suballoc_loc.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_suballoc_loc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool8.not.i = icmp eq i64 %24, 0
  br i1 %tobool8.not.i, label %if.else12.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #13
  br label %if.end17.sink.split.i

if.else12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_blkno.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 17
  %26 = ptrtoint ptr %i_blkno.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_blkno.i, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #13
  %i_suballoc_bit.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %11, i32 0, i32 3
  %29 = ptrtoint ptr %i_suballoc_bit.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_suballoc_bit.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #13
  %conv.i.i = zext i16 %31 to i64
  %sub.i.i = sub i64 %28, %conv.i.i
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.else12.i, %if.then9.i, %land.lhs.true.i.if.end17.sink.split.i_crit_edge
  %sub.i.sink.i = phi i64 [ %sub.i.i, %if.else12.i ], [ %25, %if.then9.i ], [ %13, %land.lhs.true.i.if.end17.sink.split.i_crit_edge ]
  %ac_last_group15.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 9
  %32 = ptrtoint ptr %ac_last_group15.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sub.i.sink.i, ptr %ac_last_group15.i, align 8
  br label %ocfs2_init_inode_ac_group.exit

ocfs2_init_inode_ac_group.exit:                   ; preds = %if.end17.sink.split.i, %if.else.i.ocfs2_init_inode_ac_group.exit_crit_edge
  %call = call fastcc i32 @ocfs2_claim_suballoc_bits(ptr noundef nonnull %ac, ptr noundef %handle, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp63 = icmp slt i32 %call, 0
  br i1 %cmp63, label %if.then64, label %if.end81

if.then64:                                        ; preds = %ocfs2_init_inode_ac_group.exit
  %33 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call, label %do.body74 [
    i32 -122, label %if.then64.if.end132_crit_edge
    i32 -512, label %if.then64.if.end132_crit_edge163
    i32 -4, label %if.then64.if.end132_crit_edge164
    i32 -28, label %if.then64.if.end132_crit_edge165
  ]

if.then64.if.end132_crit_edge165:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then64.if.end132_crit_edge164:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then64.if.end132_crit_edge163:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then64.if.end132_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

do.body74:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %34 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_claim_new_inode, i32 noundef 2216, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m122) #13
  %35 = ptrtoint ptr %_m122 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m122, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m122, ptr noundef nonnull @__func__.ocfs2_claim_new_inode, i32 noundef 2231, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m122) #13
  br label %if.end132

if.end81:                                         ; preds = %ocfs2_init_inode_ac_group.exit
  %36 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ac, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info, align 16
  %bg_allocs = getelementptr inbounds %struct.ocfs2_super, ptr %41, i32 0, i32 60, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bg_allocs, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %bg_allocs, i32 1, i32 3, i32 1) #13
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bg_allocs, ptr %bg_allocs, i32 1, ptr elementtype(i32) %bg_allocs) #13, !srcloc !214
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp83.not = icmp eq i32 %44, 1
  br i1 %cmp83.not, label %bail.thread, label %do.body92, !prof !215

do.body92:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2221, 0\0A.popsection", ""() #13, !srcloc !261
  unreachable

bail.thread:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %res, align 8
  %47 = ptrtoint ptr %suballoc_loc to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %suballoc_loc, align 8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 8
  %conv101 = trunc i32 %49 to i16
  %50 = ptrtoint ptr %suballoc_bit to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv101, ptr %suballoc_bit, align 2
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %0, align 8
  %53 = ptrtoint ptr %fe_blkno to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %fe_blkno, align 8
  %54 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ac_bits_given, align 8
  %inc = add i32 %55, 1
  store i32 %inc, ptr %ac_bits_given, align 8
  %ac_last_group.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 9
  %56 = ptrtoint ptr %ac_last_group.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %ac_last_group.i, align 8
  %58 = ptrtoint ptr %ip_last_used_group.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %ip_last_used_group.i, align 8
  %ac_alloc_slot.i159 = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %59 = ptrtoint ptr %ac_alloc_slot.i159 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ac_alloc_slot.i159, align 8
  %ip_last_used_slot.i160 = getelementptr i8, ptr %dir, i32 828
  %61 = ptrtoint ptr %ip_last_used_slot.i160 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ip_last_used_slot.i160, align 4
  br label %if.end132

if.end132:                                        ; preds = %bail.thread, %do.body74, %if.then64.if.end132_crit_edge, %if.then64.if.end132_crit_edge163, %if.then64.if.end132_crit_edge164, %if.then64.if.end132_crit_edge165
  %status.0162 = phi i32 [ 0, %bail.thread ], [ %call, %do.body74 ], [ %call, %if.then64.if.end132_crit_edge ], [ %call, %if.then64.if.end132_crit_edge163 ], [ %call, %if.then64.if.end132_crit_edge164 ], [ %call, %if.then64.if.end132_crit_edge165 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #13
  ret i32 %status.0162
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ocfs2_which_cluster_group(ptr nocapture noundef readonly %inode, i32 noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %bitmap_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %bitmap_blkno.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bitmap_blkno.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -1608
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.i.not = icmp eq i64 %5, %7
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !215

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2259, 0\0A.popsection", ""() #13, !srcloc !262
  unreachable

do.end9:                                          ; preds = %entry
  %bitmap_cpg = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %bitmap_cpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bitmap_cpg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cluster)
  %tobool10.not = icmp ugt i32 %9, %cluster
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %first_cluster_group_blkno = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %first_cluster_group_blkno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %first_cluster_group_blkno, align 8
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %12 = urem i32 %cluster, %9
  %mul = sub i32 %cluster, %12
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 36
  %13 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i23 = zext i8 %16 to i32
  %sub.i = sub i32 %14, %conv.i23
  %conv1.i = zext i32 %mul to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv1.i, %sh_prom.i
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11
  %retval.0 = phi i64 [ %shl.i, %if.end12 ], [ %11, %if.then11 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ocfs2_claim_clusters(ptr noundef %handle, ptr noundef %ac, i32 noundef %min_clusters, i32 noundef %max_clusters, ptr noundef %cluster_start, ptr noundef %num_clusters) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.ocfs2_suballoc_result, align 8
  %_m = alloca i64, align 8
  %_m127 = alloca i64, align 8
  %_m159 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #13
  %0 = call ptr @memset(ptr %res, i32 0, i32 32)
  %1 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ac, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %ac_bits_given = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 4
  %7 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ac_bits_given, align 8
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 3
  %9 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ac_bits_wanted, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  br i1 %cmp.not, label %do.body8, label %do.body2, !prof !215

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2308, 0\0A.popsection", ""() #13, !srcloc !263
  unreachable

do.body8:                                         ; preds = %entry
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %11 = ptrtoint ptr %ac_which to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ac_which, align 4
  %13 = add i32 %12, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %14 = icmp ult i32 %13, -2
  br i1 %14, label %do.body19, label %do.end27, !prof !211

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2311, 0\0A.popsection", ""() #13, !srcloc !264
  unreachable

do.end27:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9.not = icmp eq i32 %12, 1
  br i1 %cmp9.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %min_clusters)
  %cmp31 = icmp ugt i32 %min_clusters, 1
  br i1 %cmp31, label %do.end47, label %if.then30.if.end53_crit_edge, !prof !211

if.then30.if.end53_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.end47:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2314, i32 noundef 9, ptr noundef null) #13
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.then30.if.end53_crit_edge
  %call = tail call i32 @ocfs2_claim_local_alloc_bits(ptr noundef %6, ptr noundef %handle, ptr noundef %ac, i32 noundef %max_clusters, ptr noundef %cluster_start, ptr noundef %num_clusters) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool60.not = icmp eq i32 %call, 0
  br i1 %tobool60.not, label %if.then61, label %if.end53.if.end105_crit_edge

if.end53.if.end105_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %local_data = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 60, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_data, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %local_data, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_data, ptr %local_data, i32 1, ptr elementtype(i32) %local_data) #13, !srcloc !214
  br label %if.end138

if.else:                                          ; preds = %do.end27
  %bitmap_cpg = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 12
  %16 = ptrtoint ptr %bitmap_cpg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitmap_cpg, align 8
  %sub = add i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %min_clusters)
  %cmp63 = icmp ult i32 %sub, %min_clusters
  br i1 %cmp63, label %do.body65, label %if.end72

do.body65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %18 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_claim_clusters, i32 noundef 2330, ptr noundef nonnull @.str.5, i32 noundef %min_clusters, i32 noundef %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %if.end169

if.end72:                                         ; preds = %if.else
  %19 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %max_clusters)
  %call80 = call fastcc i32 @ocfs2_claim_suballoc_bits(ptr noundef %ac, ptr noundef %handle, i32 noundef %19, i32 noundef %min_clusters, ptr noundef nonnull %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body83, label %if.end72.if.end105_crit_edge

if.end72.if.end105_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

do.body83:                                        ; preds = %if.end72
  %sr_blkno = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 2
  %20 = ptrtoint ptr %sr_blkno to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sr_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool84.not = icmp eq i64 %21, 0
  br i1 %tobool84.not, label %do.end100, label %do.body92, !prof !215

do.body92:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2344, 0\0A.popsection", ""() #13, !srcloc !265
  unreachable

do.end100:                                        ; preds = %do.body83
  %22 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ac, align 8
  %24 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %res, align 8
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %26 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sr_bit_offset, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap_blkno.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %bitmap_blkno.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bitmap_blkno.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 -1608
  %34 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp.i.not.i = icmp eq i64 %33, %35
  br i1 %cmp.i.not.i, label %do.end9.i, label %do.body4.i, !prof !215

do.body4.i:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2244, 0\0A.popsection", ""() #13, !srcloc !266
  unreachable

do.end9.i:                                        ; preds = %do.end100
  %first_cluster_group_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %31, i32 0, i32 16
  %36 = ptrtoint ptr %first_cluster_group_blkno.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %first_cluster_group_blkno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %25)
  %cmp.not.i = icmp eq i64 %37, %25
  br i1 %cmp.not.i, label %do.end9.i.ocfs2_desc_bitmap_to_cluster_off.exit_crit_edge, label %if.then10.i

do.end9.i.ocfs2_desc_bitmap_to_cluster_off.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_desc_bitmap_to_cluster_off.exit

if.then10.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %31, i32 0, i32 36
  %38 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 2
  %40 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i19.i = zext i8 %41 to i32
  %sub.i.i = sub i32 %39, %conv.i19.i
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shr.i.i = lshr i64 %25, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i.i to i32
  br label %ocfs2_desc_bitmap_to_cluster_off.exit

ocfs2_desc_bitmap_to_cluster_off.exit:            ; preds = %if.then10.i, %do.end9.i.ocfs2_desc_bitmap_to_cluster_off.exit_crit_edge
  %cluster.0.i = phi i32 [ %conv1.i.i, %if.then10.i ], [ 0, %do.end9.i.ocfs2_desc_bitmap_to_cluster_off.exit_crit_edge ]
  %conv.i = and i32 %27, 65535
  %add.i = add i32 %cluster.0.i, %conv.i
  %42 = ptrtoint ptr %cluster_start to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i, ptr %cluster_start, align 4
  %bitmap_data = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 60, i32 2
  %call.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef %bitmap_data, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %bitmap_data, i32 1, i32 3, i32 1) #13
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bitmap_data, ptr %bitmap_data, i32 1, ptr elementtype(i32) %bitmap_data) #13, !srcloc !214
  %sr_bits = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %44 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sr_bits, align 4
  %46 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %num_clusters, align 4
  br label %if.end138

if.end105:                                        ; preds = %if.end72.if.end105_crit_edge, %if.end53.if.end105_crit_edge
  %status.0 = phi i32 [ %call, %if.end53.if.end105_crit_edge ], [ %call80, %if.end72.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp106 = icmp slt i32 %status.0, 0
  br i1 %cmp106, label %if.then108, label %if.end105.if.end138_crit_edge

if.end105.if.end138_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.then108:                                       ; preds = %if.end105
  %47 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %status.0, label %do.body126 [
    i32 -28, label %if.then108.if.end169_crit_edge
    i32 -512, label %if.then108.bail_crit_edge
    i32 -4, label %if.then108.bail_crit_edge221
    i32 -122, label %if.then108.bail_crit_edge222
  ]

if.then108.bail_crit_edge222:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then108.bail_crit_edge221:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then108.bail_crit_edge:                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then108.if.end169_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

do.body126:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m127) #13
  %48 = ptrtoint ptr %_m127 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606846976, ptr %_m127, align 8
  %conv131 = sext i32 %status.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m127, ptr noundef nonnull @__func__.__ocfs2_claim_clusters, i32 noundef 2355, ptr noundef nonnull @.str.1, i64 noundef %conv131) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m127) #13
  br label %bail

if.end138:                                        ; preds = %if.end105.if.end138_crit_edge, %ocfs2_desc_bitmap_to_cluster_off.exit, %if.then61
  %status.0218 = phi i32 [ %status.0, %if.end105.if.end138_crit_edge ], [ 0, %if.then61 ], [ 0, %ocfs2_desc_bitmap_to_cluster_off.exit ]
  %49 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clusters, align 4
  %51 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ac_bits_given, align 8
  %add = add i32 %52, %50
  store i32 %add, ptr %ac_bits_given, align 8
  br label %bail

bail:                                             ; preds = %if.end138, %do.body126, %if.then108.bail_crit_edge, %if.then108.bail_crit_edge221, %if.then108.bail_crit_edge222
  %status.1 = phi i32 [ %status.0218, %if.end138 ], [ %status.0, %if.then108.bail_crit_edge ], [ %status.0, %if.then108.bail_crit_edge221 ], [ %status.0, %if.then108.bail_crit_edge222 ], [ %status.0, %do.body126 ]
  %53 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %status.1, label %do.body158 [
    i32 0, label %bail.if.end169_crit_edge
    i32 -512, label %bail.if.end169_crit_edge223
    i32 -4, label %bail.if.end169_crit_edge224
    i32 524289, label %bail.if.end169_crit_edge225
    i32 -28, label %bail.if.end169_crit_edge226
    i32 -122, label %bail.if.end169_crit_edge227
  ]

bail.if.end169_crit_edge227:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

bail.if.end169_crit_edge226:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

bail.if.end169_crit_edge225:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

bail.if.end169_crit_edge224:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

bail.if.end169_crit_edge223:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

bail.if.end169_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

do.body158:                                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m159) #13
  %54 = ptrtoint ptr %_m159 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 1152921504606846976, ptr %_m159, align 8
  %conv163 = sext i32 %status.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m159, ptr noundef nonnull @__func__.__ocfs2_claim_clusters, i32 noundef 2363, ptr noundef nonnull @.str.1, i64 noundef %conv163) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m159) #13
  br label %if.end169

if.end169:                                        ; preds = %do.body158, %bail.if.end169_crit_edge, %bail.if.end169_crit_edge223, %bail.if.end169_crit_edge224, %bail.if.end169_crit_edge225, %bail.if.end169_crit_edge226, %bail.if.end169_crit_edge227, %if.then108.if.end169_crit_edge, %do.body65
  %status.1220 = phi i32 [ %status.1, %do.body158 ], [ %status.1, %bail.if.end169_crit_edge ], [ %status.1, %bail.if.end169_crit_edge223 ], [ %status.1, %bail.if.end169_crit_edge224 ], [ %status.1, %bail.if.end169_crit_edge225 ], [ %status.1, %bail.if.end169_crit_edge226 ], [ %status.1, %bail.if.end169_crit_edge227 ], [ %status.0, %if.then108.if.end169_crit_edge ], [ -28, %do.body65 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #13
  ret i32 %status.1220
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_claim_local_alloc_bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_claim_clusters(ptr noundef %handle, ptr noundef %ac, i32 noundef %min_clusters, ptr noundef %cluster_start, ptr noundef %num_clusters) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_bits_wanted = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 3
  %0 = ptrtoint ptr %ac_bits_wanted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac_bits_wanted, align 4
  %ac_bits_given = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 4
  %2 = ptrtoint ptr %ac_bits_given to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ac_bits_given, align 8
  %sub = sub i32 %1, %3
  %call = tail call i32 @__ocfs2_claim_clusters(ptr noundef %handle, ptr noundef %ac, i32 noundef %min_clusters, i32 noundef %sub, ptr noundef %cluster_start, ptr noundef %num_clusters)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_free_suballoc_bits(ptr noundef %handle, ptr noundef %alloc_inode, ptr noundef %alloc_bh, i32 noundef %start_bit, i64 noundef %bg_blkno, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_ocfs2_free_suballoc_bits(ptr noundef %handle, ptr noundef %alloc_inode, ptr noundef %alloc_bh, i32 noundef %start_bit, i64 noundef %bg_blkno, i32 noundef %count, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ocfs2_free_suballoc_bits(ptr noundef %handle, ptr noundef %alloc_inode, ptr noundef %alloc_bh, i32 noundef %start_bit, i64 noundef %bg_blkno, i32 noundef %count, ptr noundef readonly %undo_fn) unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %tmp.i = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m93 = alloca i64, align 8
  %_m126 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %alloc_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body11, label %do.body5, !prof !215

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2468, 0\0A.popsection", ""() #13, !srcloc !267
  unreachable

do.body11:                                        ; preds = %entry
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 35
  %add = add i32 %count, %start_bit
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id2, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #13
  %conv.i = zext i16 %4 to i32
  %cl_bpc.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 35, i32 0, i32 1
  %5 = ptrtoint ptr %cl_bpc.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cl_bpc.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #13
  %conv1.i = zext i16 %7 to i32
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul.i)
  %cmp = icmp ugt i32 %add, %mul.i
  br i1 %cmp, label %do.body20, label %do.end28, !prof !211

do.body20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2469, 0\0A.popsection", ""() #13, !srcloc !268
  unreachable

do.end28:                                         ; preds = %do.body11
  %add.ptr.i = getelementptr i8, ptr %alloc_inode, i32 -1608
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i, align 8
  tail call fastcc void @trace_ocfs2_free_suballoc_bits(i64 noundef %9, i64 noundef %bg_blkno, i32 noundef %start_bit, i32 noundef %count)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tmp.i, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %alloc_inode, i32 -56
  %call1.i.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %bg_blkno, i32 noundef 1, ptr noundef nonnull %tmp.i, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_group_descriptor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end28.ocfs2_read_group_descriptor.exit_crit_edge

do.end28.ocfs2_read_group_descriptor.exit_crit_edge: ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit

if.end.i:                                         ; preds = %do.end28
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %alloc_inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmp.i, align 4
  %call2.i = call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %12, ptr noundef %1, ptr noundef %14, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tmp.i, align 4
  br i1 %tobool3.not.i, label %ocfs2_read_group_descriptor.exit.thread, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge, label %if.then.i.i

if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %16) #13
  br label %ocfs2_read_group_descriptor.exit

ocfs2_read_group_descriptor.exit.thread:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  br label %if.end49

ocfs2_read_group_descriptor.exit:                 ; preds = %if.then.i.i, %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge, %do.end28.ocfs2_read_group_descriptor.exit_crit_edge
  %rc.0.i = phi i32 [ %call1.i.i, %do.end28.ocfs2_read_group_descriptor.exit_crit_edge ], [ %call2.i, %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge ], [ %call2.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp31 = icmp slt i32 %rc.0.i, 0
  br i1 %cmp31, label %if.then32, label %ocfs2_read_group_descriptor.exit.if.end49_crit_edge

ocfs2_read_group_descriptor.exit.if.end49_crit_edge: ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then32:                                        ; preds = %ocfs2_read_group_descriptor.exit
  %17 = zext i32 %rc.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %rc.0.i, label %do.body42 [
    i32 -512, label %if.then32.brelse.exit_crit_edge
    i32 -4, label %if.then32.brelse.exit_crit_edge215
    i32 -28, label %if.then32.brelse.exit_crit_edge216
    i32 -122, label %if.then32.brelse.exit_crit_edge217
  ]

if.then32.brelse.exit_crit_edge217:               ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then32.brelse.exit_crit_edge216:               ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then32.brelse.exit_crit_edge215:               ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then32.brelse.exit_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

do.body42:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %18 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %rc.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__._ocfs2_free_suballoc_bits, i32 noundef 2479, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %brelse.exit

if.end49:                                         ; preds = %ocfs2_read_group_descriptor.exit.if.end49_crit_edge, %ocfs2_read_group_descriptor.exit.thread
  %group_bh.0207 = phi ptr [ %16, %ocfs2_read_group_descriptor.exit.thread ], [ null, %ocfs2_read_group_descriptor.exit.if.end49_crit_edge ]
  %b_data50 = getelementptr inbounds %struct.buffer_head, ptr %group_bh.0207, i32 0, i32 5
  %19 = ptrtoint ptr %b_data50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data50, align 4
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bg_bits, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv53 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv53)
  %cmp54 = icmp ugt i32 %add, %conv53
  br i1 %cmp54, label %do.body63, label %do.end71, !prof !211

do.body63:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2484, 0\0A.popsection", ""() #13, !srcloc !269
  unreachable

do.end71:                                         ; preds = %if.end49
  %call.i = call i32 @strcmp(ptr noundef %20, ptr noundef nonnull dereferenceable(8) @.str.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i192 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i192, label %do.end10.i, label %do.body5.i, !prof !215

do.body5.i:                                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2395, 0\0A.popsection", ""() #13, !srcloc !270
  unreachable

do.end10.i:                                       ; preds = %do.end71
  call fastcc void @trace_ocfs2_block_group_clear_bits(i32 noundef %start_bit, i32 noundef %count) #13
  %tobool12.not.i = icmp eq ptr %undo_fn, null
  br i1 %tobool12.not.i, label %do.end32.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end10.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %alloc_inode, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %bitmap_blkno.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %bitmap_blkno.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bitmap_blkno.i.i, align 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp.i.not.i = icmp eq i64 %29, %31
  br i1 %cmp.i.not.i, label %do.end32.thread.i, label %do.body24.i, !prof !215

do.body24.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2399, 0\0A.popsection", ""() #13, !srcloc !271
  unreachable

do.end32.i:                                       ; preds = %do.end10.i
  %call35.i = call i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ip_metadata_cache.i.i, ptr noundef %group_bh.0207, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp.i = icmp slt i32 %call35.i, 0
  br i1 %cmp.i, label %do.end32.i.if.then36.i_crit_edge, label %if.end54.i

do.end32.i.if.then36.i_crit_edge:                 ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36.i

do.end32.thread.i:                                ; preds = %land.rhs.i
  %call35152.i = call i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ip_metadata_cache.i.i, ptr noundef %group_bh.0207, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35152.i)
  %cmp153.i = icmp slt i32 %call35152.i, 0
  br i1 %cmp153.i, label %do.end32.thread.i.if.then36.i_crit_edge, label %if.then57.i

do.end32.thread.i.if.then36.i_crit_edge:          ; preds = %do.end32.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36.i

if.then36.i:                                      ; preds = %do.end32.thread.i.if.then36.i_crit_edge, %do.end32.i.if.then36.i_crit_edge
  %call35154.i = phi i32 [ %call35152.i, %do.end32.thread.i.if.then36.i_crit_edge ], [ %call35.i, %do.end32.i.if.then36.i_crit_edge ]
  %32 = zext i32 %call35154.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call35154.i, label %do.body46.i [
    i32 -512, label %if.then36.i.if.then75_crit_edge
    i32 -4, label %if.then36.i.if.then75_crit_edge218
    i32 -28, label %if.then36.i.if.then75_crit_edge219
    i32 -122, label %if.then36.i.if.then75_crit_edge220
  ]

if.then36.i.if.then75_crit_edge220:               ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

if.then36.i.if.then75_crit_edge219:               ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

if.then36.i.if.then75_crit_edge218:               ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

if.then36.i.if.then75_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

do.body46.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #13
  %33 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i194 = sext i32 %call35154.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_block_group_clear_bits, i32 noundef 2406, ptr noundef nonnull @.str.1, i64 noundef %conv.i194) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #13
  br label %if.then75

if.end54.i:                                       ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_private.i.i = getelementptr inbounds %struct.buffer_head, ptr %group_bh.0207, i32 0, i32 8
  %34 = ptrtoint ptr %b_private.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_private.i.i, align 8
  br label %if.end78.i

if.then57.i:                                      ; preds = %do.end32.thread.i
  %b_private.i157.i = getelementptr inbounds %struct.buffer_head, ptr %group_bh.0207, i32 0, i32 8
  %36 = ptrtoint ptr %b_private.i157.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_private.i157.i, align 8
  %b_state_lock.i = getelementptr inbounds %struct.journal_head, ptr %37, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %b_state_lock.i) #13
  %b_committed_data.i = getelementptr inbounds %struct.journal_head, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %b_committed_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_committed_data.i, align 4
  %tobool59.not.i = icmp eq ptr %39, null
  br i1 %tobool59.not.i, label %do.body69.i, label %if.then57.i.if.end78.i_crit_edge, !prof !211

if.then57.i.if.end78.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78.i

do.body69.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2414, 0\0A.popsection", ""() #13, !srcloc !272
  unreachable

if.end78.i:                                       ; preds = %if.then57.i.if.end78.i_crit_edge, %if.end54.i
  %40 = phi ptr [ %37, %if.then57.i.if.end78.i_crit_edge ], [ %35, %if.end54.i ]
  %call35155159.i = phi i32 [ %call35152.i, %if.then57.i.if.end78.i_crit_edge ], [ %call35.i, %if.end54.i ]
  %undo_bg.0.i = phi ptr [ %39, %if.then57.i.if.end78.i_crit_edge ], [ null, %if.end54.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool79.not148.i = icmp eq i32 %count, 0
  br i1 %tobool79.not148.i, label %if.end78.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end78.i.while.end.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end78.i
  %41 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %20, i32 0, i32 12
  %42 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %undo_bg.0.i, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %if.end85.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec149.in.i = phi i32 [ %count, %while.body.lr.ph.i ], [ %dec149.i, %if.end85.i.while.body.i_crit_edge ]
  %dec149.i = add i32 %dec149.in.i, -1
  %add.i = add i32 %dec149.i, %start_bit
  %xor.i.i.i = and i32 %add.i, 31
  %rem.i.i.i.i = xor i32 %xor.i.i.i, 24
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %add.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %41, i32 %div2.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %43 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %44, %neg.i.i.i.i
  store i32 %and.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  br i1 %tobool12.not.i, label %while.body.i.if.end85.i_crit_edge, label %if.then82.i

while.body.i.if.end85.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85.i

if.then82.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void %undo_fn(i32 noundef %add.i, ptr noundef %42) #13, !callees !273
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then82.i, %while.body.i.if.end85.i_crit_edge
  %tobool79.not.i = icmp eq i32 %dec149.i, 0
  br i1 %tobool79.not.i, label %if.end85.i.while.end.i_crit_edge, label %if.end85.i.while.body.i_crit_edge

if.end85.i.while.body.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end85.i.while.end.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %if.end85.i.while.end.i_crit_edge, %if.end78.i.while.end.i_crit_edge
  %bg_free_bits_count.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %20, i32 0, i32 3
  %conv86.i = trunc i32 %count to i16
  %45 = ptrtoint ptr %bg_free_bits_count.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %bg_free_bits_count.i, align 2
  %47 = call i16 @llvm.bswap.i16(i16 %46) #13
  %add.i.i = add i16 %47, %conv86.i
  %48 = call i16 @llvm.bswap.i16(i16 %add.i.i) #13
  %49 = ptrtoint ptr %bg_free_bits_count.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %bg_free_bits_count.i, align 2
  %50 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bg_bits, align 2
  %52 = call i16 @llvm.bswap.i16(i16 %51) #13
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %52)
  %cmp90.i = icmp ugt i16 %add.i.i, %52
  br i1 %cmp90.i, label %if.then92.i, label %if.end102.i

if.then92.i:                                      ; preds = %while.end.i
  br i1 %tobool12.not.i, label %if.then92.i.if.end96.i_crit_edge, label %if.then94.i

if.then92.i.if.end96.i_crit_edge:                 ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96.i

if.then94.i:                                      ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_state_lock95.i = getelementptr inbounds %struct.journal_head, ptr %40, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %b_state_lock95.i) #13
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then94.i, %if.then92.i.if.end96.i_crit_edge
  %i_sb.i195 = getelementptr inbounds %struct.inode, ptr %alloc_inode, i32 0, i32 8
  %53 = ptrtoint ptr %i_sb.i195 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb.i195, align 4
  %bg_blkno.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %20, i32 0, i32 9
  %55 = ptrtoint ptr %bg_blkno.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %bg_blkno.i, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56) #13
  %58 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %bg_bits, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59) #13
  %conv98.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %bg_free_bits_count.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bg_free_bits_count.i, align 4
  %63 = call i16 @llvm.bswap.i16(i16 %62) #13
  %conv100.i = zext i16 %63 to i32
  %call101.i = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %54, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_block_group_clear_bits, ptr noundef nonnull @.str.3, i64 noundef %57, i32 noundef %conv98.i, i32 noundef %conv100.i, i32 noundef %count) #13
  br label %ocfs2_block_group_clear_bits.exit

if.end102.i:                                      ; preds = %while.end.i
  br i1 %tobool12.not.i, label %if.end102.i.if.end106.i_crit_edge, label %if.then104.i

if.end102.i.if.end106.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106.i

if.then104.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_state_lock105.i = getelementptr inbounds %struct.journal_head, ptr %40, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %b_state_lock105.i) #13
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i, %if.end102.i.if.end106.i_crit_edge
  call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %group_bh.0207) #13
  br label %ocfs2_block_group_clear_bits.exit

ocfs2_block_group_clear_bits.exit:                ; preds = %if.end106.i, %if.end96.i
  %retval.0.i = phi i32 [ %call101.i, %if.end96.i ], [ %call35155159.i, %if.end106.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp73 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp73, label %ocfs2_block_group_clear_bits.exit.if.then75_crit_edge, label %if.end103

ocfs2_block_group_clear_bits.exit.if.then75_crit_edge: ; preds = %ocfs2_block_group_clear_bits.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

if.then75:                                        ; preds = %ocfs2_block_group_clear_bits.exit.if.then75_crit_edge, %do.body46.i, %if.then36.i.if.then75_crit_edge, %if.then36.i.if.then75_crit_edge218, %if.then36.i.if.then75_crit_edge219, %if.then36.i.if.then75_crit_edge220
  %retval.0.i210 = phi i32 [ %retval.0.i, %ocfs2_block_group_clear_bits.exit.if.then75_crit_edge ], [ %call35154.i, %do.body46.i ], [ %call35154.i, %if.then36.i.if.then75_crit_edge ], [ %call35154.i, %if.then36.i.if.then75_crit_edge218 ], [ %call35154.i, %if.then36.i.if.then75_crit_edge219 ], [ %call35154.i, %if.then36.i.if.then75_crit_edge220 ]
  %64 = zext i32 %retval.0.i210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %retval.0.i210, label %do.body92 [
    i32 -512, label %if.then75.bail_crit_edge
    i32 -4, label %if.then75.bail_crit_edge221
    i32 -28, label %if.then75.bail_crit_edge222
    i32 -122, label %if.then75.bail_crit_edge223
  ]

if.then75.bail_crit_edge223:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then75.bail_crit_edge222:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then75.bail_crit_edge221:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then75.bail_crit_edge:                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body92:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m93) #13
  %65 = ptrtoint ptr %_m93 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 1152921504606846976, ptr %_m93, align 8
  %conv97 = sext i32 %retval.0.i210 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m93, ptr noundef nonnull @__func__._ocfs2_free_suballoc_bits, i32 noundef 2490, ptr noundef nonnull @.str.1, i64 noundef %conv97) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m93) #13
  br label %bail

if.end103:                                        ; preds = %ocfs2_block_group_clear_bits.exit
  %call105 = call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i.i, ptr noundef %alloc_bh, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.end137

if.then108:                                       ; preds = %if.end103
  %66 = zext i32 %call105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call105, label %do.body125 [
    i32 -512, label %if.then108.if.end134_crit_edge
    i32 -4, label %if.then108.if.end134_crit_edge224
    i32 -28, label %if.then108.if.end134_crit_edge225
    i32 -122, label %if.then108.if.end134_crit_edge226
  ]

if.then108.if.end134_crit_edge226:                ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then108.if.end134_crit_edge225:                ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then108.if.end134_crit_edge224:                ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then108.if.end134_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

do.body125:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m126) #13
  %67 = ptrtoint ptr %_m126 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 1152921504606846976, ptr %_m126, align 8
  %conv130 = sext i32 %call105 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m126, ptr noundef nonnull @__func__._ocfs2_free_suballoc_bits, i32 noundef 2497, ptr noundef nonnull @.str.1, i64 noundef %conv130) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m126) #13
  br label %if.end134

if.end134:                                        ; preds = %do.body125, %if.then108.if.end134_crit_edge, %if.then108.if.end134_crit_edge224, %if.then108.if.end134_crit_edge225, %if.then108.if.end134_crit_edge226
  %call136 = call i32 @ocfs2_block_group_set_bits(ptr noundef %handle, ptr noundef %alloc_inode, ptr noundef %20, ptr noundef %group_bh.0207, i32 noundef %start_bit, i32 noundef %count)
  br label %bail

if.end137:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 35, i32 0, i32 7
  %bg_chain = getelementptr inbounds %struct.ocfs2_group_desc, ptr %20, i32 0, i32 4
  %68 = ptrtoint ptr %bg_chain to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bg_chain, align 2
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %idxprom = zext i16 %70 to i32
  %arrayidx = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #13
  %add.i196 = add i32 %73, %count
  %74 = call i32 @llvm.bswap.i32(i32 %add.i196) #13
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx, align 4
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 34
  %76 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id1, align 8
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %sub = sub i32 %78, %count
  %79 = call i32 @llvm.bswap.i32(i32 %sub)
  %80 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %id1, align 8
  call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %alloc_bh) #13
  br label %bail

bail:                                             ; preds = %if.end137, %if.end134, %do.body92, %if.then75.bail_crit_edge, %if.then75.bail_crit_edge221, %if.then75.bail_crit_edge222, %if.then75.bail_crit_edge223
  %status.0 = phi i32 [ %call105, %if.end134 ], [ %call105, %if.end137 ], [ %retval.0.i210, %if.then75.bail_crit_edge ], [ %retval.0.i210, %if.then75.bail_crit_edge221 ], [ %retval.0.i210, %if.then75.bail_crit_edge222 ], [ %retval.0.i210, %if.then75.bail_crit_edge223 ], [ %retval.0.i210, %do.body92 ]
  %tobool.not.i197 = icmp eq ptr %group_bh.0207, null
  br i1 %tobool.not.i197, label %bail.brelse.exit_crit_edge, label %if.then.i

bail.brelse.exit_crit_edge:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %group_bh.0207) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %bail.brelse.exit_crit_edge, %do.body42, %if.then32.brelse.exit_crit_edge, %if.then32.brelse.exit_crit_edge215, %if.then32.brelse.exit_crit_edge216, %if.then32.brelse.exit_crit_edge217
  %status.0214 = phi i32 [ %status.0, %bail.brelse.exit_crit_edge ], [ %status.0, %if.then.i ], [ %rc.0.i, %if.then32.brelse.exit_crit_edge ], [ %rc.0.i, %if.then32.brelse.exit_crit_edge215 ], [ %rc.0.i, %if.then32.brelse.exit_crit_edge216 ], [ %rc.0.i, %if.then32.brelse.exit_crit_edge217 ], [ %rc.0.i, %do.body42 ]
  ret i32 %status.0214
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_free_dinode(ptr noundef %handle, ptr noundef %inode_alloc_inode, ptr noundef %inode_alloc_bh, ptr nocapture noundef readonly %di) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 17
  %0 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blkno, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %i_suballoc_bit = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 3
  %3 = ptrtoint ptr %i_suballoc_bit to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_suballoc_bit, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %conv.i = zext i16 %5 to i64
  %sub.i = sub i64 %2, %conv.i
  %i_suballoc_loc = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 30
  %6 = ptrtoint ptr %i_suballoc_loc to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_suballoc_loc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %bg_blkno.0 = select i1 %tobool.not, i64 %sub.i, i64 %8
  %call.i = tail call fastcc i32 @_ocfs2_free_suballoc_bits(ptr noundef %handle, ptr noundef %inode_alloc_inode, ptr noundef %inode_alloc_bh, i32 noundef %conv, i64 noundef %bg_blkno.0, i32 noundef 1, ptr noundef null) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_free_clusters(ptr noundef %handle, ptr noundef %bitmap_inode, ptr noundef %bitmap_bh, i64 noundef %start_blk, i32 noundef %num_clusters) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_ocfs2_free_clusters(ptr noundef %handle, ptr noundef %bitmap_inode, ptr noundef %bitmap_bh, i64 noundef %start_blk, i32 noundef %num_clusters, ptr noundef nonnull @_ocfs2_set_bit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ocfs2_free_clusters(ptr noundef %handle, ptr noundef %bitmap_inode, ptr noundef %bitmap_bh, i64 noundef %start_blk, i32 noundef %num_clusters, ptr noundef %undo_fn) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %bitmap_inode, i32 0, i32 8
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
  %shr.i = lshr i64 %start_blk, %sh_prom.i
  %conv1.i61 = and i64 %shr.i, 4294967295
  %shl.i = shl i64 %conv1.i61, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %start_blk)
  %cmp.not = icmp eq i64 %shl.i, %start_blk
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !215

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2559, 0\0A.popsection", ""() #13, !srcloc !274
  unreachable

do.end9:                                          ; preds = %entry
  %sb.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %11, i32 0, i32 36
  %12 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i.i = zext i8 %15 to i32
  %sub.i.i = sub i32 %13, %conv.i.i
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shr.i.i = lshr i64 %start_blk, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %bitmap_blkno.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %bitmap_blkno.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bitmap_blkno.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %bitmap_inode, i32 -1608
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp.i.i = icmp eq i64 %17, %19
  br i1 %cmp.i.i, label %do.end9.i.i, label %do.body5.i, !prof !215

do.body5.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2278, 0\0A.popsection", ""() #13, !srcloc !275
  unreachable

do.end9.i.i:                                      ; preds = %do.end9
  %bitmap_cpg.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %bitmap_cpg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitmap_cpg.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv1.i.i)
  %tobool10.not.i.i = icmp ugt i32 %21, %conv1.i.i
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end12.i.i

if.then11.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %first_cluster_group_blkno.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 16
  %22 = ptrtoint ptr %first_cluster_group_blkno.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %first_cluster_group_blkno.i.i, align 8
  br label %ocfs2_which_cluster_group.exit.i

if.end12.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = urem i32 %conv1.i.i, %21
  %mul.i.i = sub i32 %conv1.i.i, %24
  %conv1.i.i.i = zext i32 %mul.i.i to i64
  %shl.i.i.i = shl i64 %conv1.i.i.i, %sh_prom.i
  br label %ocfs2_which_cluster_group.exit.i

ocfs2_which_cluster_group.exit.i:                 ; preds = %if.end12.i.i, %if.then11.i.i
  %retval.0.i.i = phi i64 [ %shl.i.i.i, %if.end12.i.i ], [ %23, %if.then11.i.i ]
  %first_cluster_group_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 16
  %25 = ptrtoint ptr %first_cluster_group_blkno.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %first_cluster_group_blkno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %26)
  %cmp.i = icmp eq i64 %retval.0.i.i, %26
  %sub.i64 = sub i64 %start_blk, %retval.0.i.i
  %shr.i36.i = lshr i64 %sub.i64, %sh_prom.i.i
  %conv1.i37.i = trunc i64 %shr.i36.i to i32
  %storemerge.in.i = select i1 %cmp.i, i32 %conv1.i.i, i32 %conv1.i37.i
  %conv = and i32 %storemerge.in.i, 65535
  tail call fastcc void @trace_ocfs2_free_clusters(i64 noundef %retval.0.i.i, i64 noundef %start_blk, i32 noundef %conv, i32 noundef %num_clusters)
  %call11 = tail call fastcc i32 @_ocfs2_free_suballoc_bits(ptr noundef %handle, ptr noundef %bitmap_inode, ptr noundef %bitmap_bh, i32 noundef %conv, i64 noundef %retval.0.i.i, i32 noundef %num_clusters, ptr noundef %undo_fn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end37

if.then14:                                        ; preds = %ocfs2_which_cluster_group.exit.i
  %27 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call11, label %do.body29 [
    i32 -512, label %if.then14.out_crit_edge
    i32 -4, label %if.then14.out_crit_edge67
    i32 -28, label %if.then14.out_crit_edge68
    i32 -122, label %if.then14.out_crit_edge69
  ]

if.then14.out_crit_edge69:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then14.out_crit_edge68:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then14.out_crit_edge67:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body29:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %28 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv32 = sext i32 %call11 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__._ocfs2_free_clusters, i32 noundef 2573, ptr noundef nonnull @.str.1, i64 noundef %conv32) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %out

if.end37:                                         ; preds = %ocfs2_which_cluster_group.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info, align 16
  tail call void @ocfs2_local_alloc_seen_free_bits(ptr noundef %32, i32 noundef %num_clusters) #13
  br label %out

out:                                              ; preds = %if.end37, %do.body29, %if.then14.out_crit_edge, %if.then14.out_crit_edge67, %if.then14.out_crit_edge68, %if.then14.out_crit_edge69
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_release_clusters(ptr noundef %handle, ptr noundef %bitmap_inode, ptr noundef %bitmap_bh, i64 noundef %start_blk, i32 noundef %num_clusters) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_ocfs2_free_clusters(ptr noundef %handle, ptr noundef %bitmap_inode, ptr noundef %bitmap_bh, i64 noundef %start_blk, i32 noundef %num_clusters, ptr noundef nonnull @_ocfs2_clear_bit)
  ret i32 %call
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @_ocfs2_clear_bit(i32 noundef %bit, ptr nocapture noundef %bitmap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %xor.i = and i32 %bit, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %bit, 5
  %add.ptr.i.i = getelementptr i32, ptr %bitmap, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %1, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_lock_allocators(ptr nocapture noundef readonly %inode, ptr noundef %et, i32 noundef %clusters_to_add, i32 noundef %extents_to_split, ptr noundef %data_ac, ptr nocapture noundef %meta_ac) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m62 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %extents_to_split, 1
  %add = add i32 %mul, %clusters_to_add
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = ptrtoint ptr %meta_ac to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %meta_ac, align 4
  %tobool.not = icmp eq ptr %data_ac, null
  br i1 %tobool.not, label %do.body, label %do.body.thread

do.body.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %data_ac to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data_ac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clusters_to_add)
  %cmp.not167 = icmp eq i32 %clusters_to_add, 0
  br label %do.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clusters_to_add)
  %cmp.not = icmp eq i32 %clusters_to_add, 0
  %not.cmp.not = xor i1 %cmp.not, true
  %spec.select = and i1 %tobool.not, %not.cmp.not
  br i1 %spec.select, label %do.body5, label %do.body.do.end11_crit_edge, !prof !211

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2634, 0\0A.popsection", ""() #13, !srcloc !276
  unreachable

do.end11:                                         ; preds = %do.body.do.end11_crit_edge, %do.body.thread
  %cmp.not170 = phi i1 [ %cmp.not167, %do.body.thread ], [ %cmp.not, %do.body.do.end11_crit_edge ]
  %call = tail call i32 @ocfs2_num_free_extents(ptr noundef %et) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.then13, label %if.end30

if.then13:                                        ; preds = %do.end11
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call, label %do.body23 [
    i32 -512, label %if.then13.if.then116_crit_edge
    i32 -4, label %if.then13.if.then116_crit_edge171
    i32 -28, label %if.then13.if.then116_crit_edge172
    i32 -122, label %if.then13.if.then116_crit_edge173
  ]

if.then13.if.then116_crit_edge173:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then13.if.then116_crit_edge172:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then13.if.then116_crit_edge171:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then13.if.then116_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

do.body23:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_lock_allocators, i32 noundef 2639, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %if.then116

if.end30:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.end30.if.then37_crit_edge, label %lor.lhs.false

if.end30.if.then37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end30
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_feature_incompat.i, align 8
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool33.not = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add)
  %cmp35 = icmp ult i32 %call, %add
  %or.cond = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false.if.end74_crit_edge

lor.lhs.false.if.end74_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end30.if.then37_crit_edge
  %et_root_el = getelementptr inbounds %struct.ocfs2_extent_tree, ptr %et, i32 0, i32 2
  %11 = ptrtoint ptr %et_root_el to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %et_root_el, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 8
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #13
  %conv.i.i = zext i16 %15 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call1.i = tail call i32 @ocfs2_reserve_new_metadata_blocks(ptr noundef %3, i32 noundef %add.i.i, ptr noundef %meta_ac) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp39 = icmp slt i32 %call1.i, 0
  br i1 %cmp39, label %if.then41, label %if.then37.if.end74_crit_edge

if.then37.if.end74_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then41:                                        ; preds = %if.then37
  %16 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call1.i, label %do.body61 [
    i32 -28, label %if.then41.if.then116_crit_edge
    i32 -512, label %if.then41.if.then116_crit_edge174
    i32 -4, label %if.then41.if.then116_crit_edge175
    i32 -122, label %if.then41.if.then116_crit_edge176
  ]

if.then41.if.then116_crit_edge176:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then41.if.then116_crit_edge175:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then41.if.then116_crit_edge174:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then41.if.then116_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

do.body61:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62) #13
  %17 = ptrtoint ptr %_m62 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m62, align 8
  %conv66 = sext i32 %call1.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62, ptr noundef nonnull @__func__.ocfs2_lock_allocators, i32 noundef 2661, ptr noundef nonnull @.str.1, i64 noundef %conv66) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62) #13
  br label %if.then116

if.end74:                                         ; preds = %if.then37.if.end74_crit_edge, %lor.lhs.false.if.end74_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.then37.if.end74_crit_edge ], [ 0, %lor.lhs.false.if.end74_crit_edge ]
  br i1 %cmp.not170, label %if.end74.out_crit_edge, label %if.end78

if.end74.out_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end78:                                         ; preds = %if.end74
  %call.i = tail call fastcc i32 @ocfs2_reserve_clusters_with_limit(ptr noundef %3, i32 noundef %clusters_to_add, i64 noundef 0, i32 noundef 1, ptr noundef %data_ac) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp80 = icmp slt i32 %call.i, 0
  br i1 %cmp80, label %if.then82, label %if.end78.out_crit_edge

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then82:                                        ; preds = %if.end78
  %18 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call.i, label %do.body102 [
    i32 -28, label %if.then82.if.then116_crit_edge
    i32 -512, label %if.then82.if.then116_crit_edge177
    i32 -4, label %if.then82.if.then116_crit_edge178
    i32 -122, label %if.then82.if.then116_crit_edge179
  ]

if.then82.if.then116_crit_edge179:                ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then82.if.then116_crit_edge178:                ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then82.if.then116_crit_edge177:                ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

if.then82.if.then116_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

do.body102:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #13
  %19 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m103, align 8
  %conv107 = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.ocfs2_lock_allocators, i32 noundef 2672, ptr noundef nonnull @.str.1, i64 noundef %conv107) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #13
  br label %if.then116

out:                                              ; preds = %if.end78.out_crit_edge, %if.end74.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end74.out_crit_edge ], [ %call.i, %if.end78.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool115.not = icmp eq i32 %ret.1, 0
  br i1 %tobool115.not, label %out.if.end120_crit_edge, label %out.if.then116_crit_edge

out.if.then116_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

out.if.end120_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then116:                                       ; preds = %out.if.then116_crit_edge, %do.body102, %if.then82.if.then116_crit_edge, %if.then82.if.then116_crit_edge177, %if.then82.if.then116_crit_edge178, %if.then82.if.then116_crit_edge179, %do.body61, %if.then41.if.then116_crit_edge, %if.then41.if.then116_crit_edge174, %if.then41.if.then116_crit_edge175, %if.then41.if.then116_crit_edge176, %do.body23, %if.then13.if.then116_crit_edge, %if.then13.if.then116_crit_edge171, %if.then13.if.then116_crit_edge172, %if.then13.if.then116_crit_edge173
  %ret.1165 = phi i32 [ %ret.1, %out.if.then116_crit_edge ], [ %call, %do.body23 ], [ %call, %if.then13.if.then116_crit_edge ], [ %call, %if.then13.if.then116_crit_edge171 ], [ %call, %if.then13.if.then116_crit_edge172 ], [ %call, %if.then13.if.then116_crit_edge173 ], [ %call.i, %if.then82.if.then116_crit_edge ], [ %call1.i, %if.then41.if.then116_crit_edge ], [ %call1.i, %if.then41.if.then116_crit_edge174 ], [ %call1.i, %if.then41.if.then116_crit_edge175 ], [ %call1.i, %if.then41.if.then116_crit_edge176 ], [ %call1.i, %do.body61 ], [ %call.i, %if.then82.if.then116_crit_edge177 ], [ %call.i, %if.then82.if.then116_crit_edge178 ], [ %call.i, %if.then82.if.then116_crit_edge179 ], [ %call.i, %do.body102 ]
  %20 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %meta_ac, align 4
  %tobool117.not = icmp eq ptr %21, null
  br i1 %tobool117.not, label %if.then116.if.end120_crit_edge, label %if.then118

if.then116.if.end120_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then118:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %21)
  %22 = ptrtoint ptr %meta_ac to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %meta_ac, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.then116.if.end120_crit_edge, %out.if.end120_crit_edge
  %ret.1166 = phi i32 [ %ret.1165, %if.then116.if.end120_crit_edge ], [ %ret.1165, %if.then118 ], [ 0, %out.if.end120_crit_edge ]
  ret i32 %ret.1166
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_num_free_extents(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_test_inode_bit(ptr noundef %osb, i64 noundef %blkno, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca ptr, align 4
  %_m.i105 = alloca i64, align 8
  %_m16.i = alloca i64, align 8
  %_m44.i = alloca i64, align 8
  %inode_bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m7.i = alloca i64, align 8
  %_m23.i = alloca i64, align 8
  %_m61.i = alloca i64, align 8
  %alloc_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m14 = alloca i64, align 8
  %_m28 = alloca i64, align 8
  %_m42 = alloca i64, align 8
  %_m67 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloc_bh) #13
  %0 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %alloc_bh, align 4
  tail call fastcc void @trace_ocfs2_test_inode_bit(i64 noundef %blkno)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode_bh.i) #13
  %1 = ptrtoint ptr %inode_bh.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %inode_bh.i, align 4
  tail call fastcc void @trace_ocfs2_get_suballoc_slot_bit(i64 noundef %blkno) #13
  %call.i = call i32 @ocfs2_read_blocks_sync(ptr noundef %osb, i64 noundef %blkno, i32 noundef 1, ptr noundef nonnull %inode_bh.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #13
  %2 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_get_suballoc_slot_bit, i32 noundef 2709, ptr noundef nonnull @.str.29, i64 noundef %blkno, i32 noundef %call.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #13
  br label %bail.i

if.end2.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %inode_bh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inode_bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data.i, align 4
  %call3.i = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(8) @.str.24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end14.i, label %do.body6.i

do.body6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m7.i) #13
  %7 = ptrtoint ptr %_m7.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m7.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m7.i, ptr noundef nonnull @__func__.ocfs2_get_suballoc_slot_bit, i32 noundef 2716, ptr noundef nonnull @.str.30, i64 noundef %blkno) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m7.i) #13
  br label %bail.i

if.end14.i:                                       ; preds = %if.end2.i
  %i_suballoc_slot.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %i_suballoc_slot.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_suballoc_slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp15.not.i = icmp eq i16 %9, -1
  %.pre = call i16 @llvm.bswap.i16(i16 %9) #13
  br i1 %cmp15.not.i, label %if.end14.i.if.end32.i_crit_edge, label %land.lhs.true.i

if.end14.i.if.end32.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %conv.i = zext i16 %.pre to i32
  %max_slots.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %10 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_slots.i, align 8
  %sub.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp19.i = icmp ult i32 %sub.i, %conv.i
  br i1 %cmp19.i, label %do.body22.i, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

do.body22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m23.i) #13
  %12 = ptrtoint ptr %_m23.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m23.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m23.i, ptr noundef nonnull @__func__.ocfs2_get_suballoc_slot_bit, i32 noundef 2725, ptr noundef nonnull @.str.31, i64 noundef %blkno, i32 noundef %conv.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m23.i) #13
  br label %bail.i

if.end32.i:                                       ; preds = %land.lhs.true.i.if.end32.i_crit_edge, %if.end14.i.if.end32.i_crit_edge
  %i_suballoc_bit.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %i_suballoc_bit.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i_suballoc_bit.i, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #13
  %i_suballoc_loc.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %6, i32 0, i32 30
  %16 = ptrtoint ptr %i_suballoc_loc.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_suballoc_loc.i, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17) #13
  br label %bail.i

bail.i:                                           ; preds = %if.end32.i, %do.body22.i, %do.body6.i, %do.body.i
  %group_blkno.0 = phi i64 [ 0, %do.body.i ], [ %18, %if.end32.i ], [ 0, %do.body22.i ], [ 0, %do.body6.i ]
  %suballoc_bit.0 = phi i16 [ 0, %do.body.i ], [ %15, %if.end32.i ], [ 0, %do.body22.i ], [ 0, %do.body6.i ]
  %suballoc_slot.0 = phi i16 [ 0, %do.body.i ], [ %.pre, %if.end32.i ], [ 0, %do.body22.i ], [ 0, %do.body6.i ]
  %status.0.i = phi i32 [ %call.i, %do.body.i ], [ %call.i, %if.end32.i ], [ -22, %do.body22.i ], [ -22, %do.body6.i ]
  %19 = ptrtoint ptr %inode_bh.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inode_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %bail.i.brelse.exit.i_crit_edge, label %if.then.i.i

bail.i.brelse.exit.i_crit_edge:                   ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %20) #13
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %bail.i.brelse.exit.i_crit_edge
  %21 = zext i32 %status.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %status.0.i, label %do.body60.i [
    i32 0, label %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge
    i32 -512, label %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge118
    i32 -4, label %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge119
    i32 524289, label %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge120
    i32 -28, label %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge121
    i32 -122, label %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge122
  ]

brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge122: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_get_suballoc_slot_bit.exit

brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge121: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_get_suballoc_slot_bit.exit

brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge120: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_get_suballoc_slot_bit.exit

brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge119: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_get_suballoc_slot_bit.exit

brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge118: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_get_suballoc_slot_bit.exit

brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_get_suballoc_slot_bit.exit

do.body60.i:                                      ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61.i) #13
  %22 = ptrtoint ptr %_m61.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m61.i, align 8
  %conv65.i = sext i32 %status.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61.i, ptr noundef nonnull @__func__.ocfs2_get_suballoc_slot_bit, i32 noundef 2741, ptr noundef nonnull @.str.1, i64 noundef %conv65.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61.i) #13
  br label %ocfs2_get_suballoc_slot_bit.exit

ocfs2_get_suballoc_slot_bit.exit:                 ; preds = %do.body60.i, %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge, %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge118, %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge119, %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge120, %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge121, %brelse.exit.i.ocfs2_get_suballoc_slot_bit.exit_crit_edge122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode_bh.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp = icmp slt i32 %status.0.i, 0
  br i1 %cmp, label %do.body, label %if.end2

do.body:                                          ; preds = %ocfs2_get_suballoc_slot_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %23 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_test_inode_bit, i32 noundef 2823, ptr noundef nonnull @.str.6, i32 noundef %status.0.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %bail

if.end2:                                          ; preds = %ocfs2_get_suballoc_slot_bit.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %suballoc_slot.0)
  %cmp3 = icmp eq i16 %suballoc_slot.0, -1
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 1, i32 noundef 65535) #13
  br label %if.end10

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %suballoc_slot.0 to i32
  %call9 = call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 9, i32 noundef %conv) #13
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %inode_alloc_inode.0 = phi ptr [ %call7, %if.then5 ], [ %call9, %if.else ]
  %tobool11.not = icmp eq ptr %inode_alloc_inode.0, null
  br i1 %tobool11.not, label %bail.thread, label %if.end22

bail.thread:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m14) #13
  %24 = ptrtoint ptr %_m14 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606846976, ptr %_m14, align 8
  %conv18 = zext i16 %suballoc_slot.0 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m14, ptr noundef nonnull @__func__.ocfs2_test_inode_bit, i32 noundef 2838, ptr noundef nonnull @.str.7, i32 noundef %conv18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m14) #13
  br label %do.body66

if.end22:                                         ; preds = %if.end10
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode_alloc_inode.0, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #13
  %call23 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %inode_alloc_inode.0, ptr noundef nonnull %alloc_bh, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end36

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  call void @up_write(ptr noundef %i_rwsem.i) #13
  call void @iput(ptr noundef nonnull %inode_alloc_inode.0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m28) #13
  %25 = ptrtoint ptr %_m28 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m28, align 8
  %conv32 = zext i16 %suballoc_slot.0 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m28, ptr noundef nonnull @__func__.ocfs2_test_inode_bit, i32 noundef 2848, ptr noundef nonnull @.str.8, i32 noundef %conv32, i32 noundef %call23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m28) #13
  br label %bail

if.end36:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alloc_bh, align 4
  %conv.i106 = zext i16 %suballoc_bit.0 to i32
  call fastcc void @trace_ocfs2_test_suballoc_bit(i64 noundef %blkno, i32 noundef %conv.i106) #13
  %b_data.i107 = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data.i107 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data.i107, align 4
  %id2.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %29, i32 0, i32 35
  %30 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %id2.i, align 8
  %32 = call i16 @llvm.bswap.i16(i16 %31) #13
  %conv.i.i = zext i16 %32 to i32
  %cl_bpc.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %29, i32 0, i32 35, i32 0, i32 1
  %33 = ptrtoint ptr %cl_bpc.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cl_bpc.i.i, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #13
  %conv1.i.i = zext i16 %35 to i32
  %mul.i.i = mul nuw i32 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv.i106)
  %cmp.not.i = icmp ugt i32 %mul.i.i, %conv.i106
  br i1 %cmp.not.i, label %if.end7.i, label %brelse.exit.thread.i

brelse.exit.thread.i:                             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i105) #13
  %36 = ptrtoint ptr %_m.i105 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m.i105, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i105, ptr noundef nonnull @__func__.ocfs2_test_suballoc_bit, i32 noundef 2771, ptr noundef nonnull @.str.32, i32 noundef %conv.i106, i32 noundef %mul.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i105) #13
  br label %do.body43.i

if.end7.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %group_blkno.0)
  %tobool8.not.i = icmp eq i64 %group_blkno.0, 0
  %conv.i5.i = zext i16 %suballoc_bit.0 to i64
  %sub.i.i = sub i64 %blkno, %conv.i5.i
  %cond.i = select i1 %tobool8.not.i, i64 %sub.i.i, i64 %group_blkno.0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #13
  %37 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %tmp.i.i, align 4
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %inode_alloc_inode.0, i32 -56
  %call1.i.i.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i.i, i64 noundef %cond.i, i32 noundef 1, ptr noundef nonnull %tmp.i.i, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_group_descriptor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i108 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i108, label %if.end.i.i, label %if.end7.i.ocfs2_read_group_descriptor.exit.i_crit_edge

if.end7.i.ocfs2_read_group_descriptor.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit.i

if.end.i.i:                                       ; preds = %if.end7.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode_alloc_inode.0, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i.i, align 4
  %40 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmp.i.i, align 4
  %call2.i.i = call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %39, ptr noundef %29, ptr noundef %41, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  %42 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tmp.i.i, align 4
  br i1 %tobool3.not.i.i, label %ocfs2_read_group_descriptor.exit.thread.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge, label %if.then.i.i.i

if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit.i

if.then.i.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %43) #13
  br label %ocfs2_read_group_descriptor.exit.i

ocfs2_read_group_descriptor.exit.thread.i:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #13
  br label %bail.i109

ocfs2_read_group_descriptor.exit.i:               ; preds = %if.then.i.i.i, %if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge, %if.end7.i.ocfs2_read_group_descriptor.exit.i_crit_edge
  %rc.0.i.i = phi i32 [ %call1.i.i.i, %if.end7.i.ocfs2_read_group_descriptor.exit.i_crit_edge ], [ %call2.i.i, %if.then4.i.i.ocfs2_read_group_descriptor.exit.i_crit_edge ], [ %call2.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i)
  %cmp12.i = icmp slt i32 %rc.0.i.i, 0
  br i1 %cmp12.i, label %do.body15.i, label %ocfs2_read_group_descriptor.exit.i.bail.i109_crit_edge

ocfs2_read_group_descriptor.exit.i.bail.i109_crit_edge: ; preds = %ocfs2_read_group_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail.i109

do.body15.i:                                      ; preds = %ocfs2_read_group_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m16.i) #13
  %44 = ptrtoint ptr %_m16.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 1152921504606846976, ptr %_m16.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m16.i, ptr noundef nonnull @__func__.ocfs2_test_suballoc_bit, i32 noundef 2782, ptr noundef nonnull @.str.33, i64 noundef %cond.i, i32 noundef %rc.0.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m16.i) #13
  br label %brelse.exit.i111

bail.i109:                                        ; preds = %ocfs2_read_group_descriptor.exit.i.bail.i109_crit_edge, %ocfs2_read_group_descriptor.exit.thread.i
  %rc.0.i15.i = phi i32 [ 0, %ocfs2_read_group_descriptor.exit.thread.i ], [ %rc.0.i.i, %ocfs2_read_group_descriptor.exit.i.bail.i109_crit_edge ]
  %group_bh.014.i = phi ptr [ %43, %ocfs2_read_group_descriptor.exit.thread.i ], [ null, %ocfs2_read_group_descriptor.exit.i.bail.i109_crit_edge ]
  %b_data24.i = getelementptr inbounds %struct.buffer_head, ptr %group_bh.014.i, i32 0, i32 5
  %45 = ptrtoint ptr %b_data24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data24.i, align 4
  %47 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %46, i32 0, i32 12
  %div3.i.i.i = lshr i32 %conv.i106, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %47, i32 %div3.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %conv.i106, 31
  %and.i.i.i = xor i32 %xor.i.i, 24
  %shr.i.i.i = lshr i32 %49, %and.i.i.i
  %and1.i.i.i = and i32 %shr.i.i.i, 1
  %50 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and1.i.i.i, ptr %res, align 4
  %tobool.not.i6.i = icmp eq ptr %group_bh.014.i, null
  br i1 %tobool.not.i6.i, label %bail.i109.brelse.exit.i111_crit_edge, label %if.then.i.i110

bail.i109.brelse.exit.i111_crit_edge:             ; preds = %bail.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i111

if.then.i.i110:                                   ; preds = %bail.i109
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %group_bh.014.i) #13
  br label %brelse.exit.i111

brelse.exit.i111:                                 ; preds = %if.then.i.i110, %bail.i109.brelse.exit.i111_crit_edge, %do.body15.i
  %status.019.i = phi i32 [ %rc.0.i15.i, %bail.i109.brelse.exit.i111_crit_edge ], [ %rc.0.i15.i, %if.then.i.i110 ], [ %rc.0.i.i, %do.body15.i ]
  %51 = zext i32 %status.019.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %status.019.i, label %brelse.exit.i111.do.body43.i_crit_edge [
    i32 0, label %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge
    i32 -512, label %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge123
    i32 -4, label %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge124
    i32 524289, label %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge125
    i32 -28, label %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge126
    i32 -122, label %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge127
  ]

brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge127: ; preds = %brelse.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_suballoc_bit.exit

brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge126: ; preds = %brelse.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_suballoc_bit.exit

brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge125: ; preds = %brelse.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_suballoc_bit.exit

brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge124: ; preds = %brelse.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_suballoc_bit.exit

brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge123: ; preds = %brelse.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_suballoc_bit.exit

brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge: ; preds = %brelse.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_suballoc_bit.exit

brelse.exit.i111.do.body43.i_crit_edge:           ; preds = %brelse.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43.i

do.body43.i:                                      ; preds = %brelse.exit.i111.do.body43.i_crit_edge, %brelse.exit.thread.i
  %status.01922.i = phi i32 [ -22, %brelse.exit.thread.i ], [ %status.019.i, %brelse.exit.i111.do.body43.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44.i) #13
  %52 = ptrtoint ptr %_m44.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1152921504606846976, ptr %_m44.i, align 8
  %conv48.i = sext i32 %status.01922.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44.i, ptr noundef nonnull @__func__.ocfs2_test_suballoc_bit, i32 noundef 2793, ptr noundef nonnull @.str.1, i64 noundef %conv48.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44.i) #13
  br label %ocfs2_test_suballoc_bit.exit

ocfs2_test_suballoc_bit.exit:                     ; preds = %do.body43.i, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge123, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge124, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge125, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge126, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge127
  %status.01921.i = phi i32 [ %status.01922.i, %do.body43.i ], [ %status.019.i, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge ], [ %status.019.i, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge123 ], [ %status.019.i, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge124 ], [ %status.019.i, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge125 ], [ %status.019.i, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge126 ], [ %status.019.i, %brelse.exit.i111.ocfs2_test_suballoc_bit.exit_crit_edge127 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.01921.i)
  %cmp38 = icmp slt i32 %status.01921.i, 0
  br i1 %cmp38, label %do.body41, label %ocfs2_test_suballoc_bit.exit.if.end49_crit_edge

ocfs2_test_suballoc_bit.exit.if.end49_crit_edge:  ; preds = %ocfs2_test_suballoc_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

do.body41:                                        ; preds = %ocfs2_test_suballoc_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42) #13
  %53 = ptrtoint ptr %_m42 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1152921504606846976, ptr %_m42, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42, ptr noundef nonnull @__func__.ocfs2_test_inode_bit, i32 noundef 2855, ptr noundef nonnull @.str.9, i32 noundef %status.01921.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42) #13
  br label %if.end49

if.end49:                                         ; preds = %do.body41, %ocfs2_test_suballoc_bit.exit.if.end49_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef nonnull %inode_alloc_inode.0, i32 noundef 0) #13
  call void @up_write(ptr noundef %i_rwsem.i) #13
  call void @iput(ptr noundef nonnull %inode_alloc_inode.0) #13
  %54 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %alloc_bh, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end49.bail_crit_edge, label %if.then.i

if.end49.bail_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %55) #13
  br label %bail

bail:                                             ; preds = %if.then.i, %if.end49.bail_crit_edge, %if.then26, %do.body
  %status.0 = phi i32 [ %status.0.i, %do.body ], [ %call23, %if.then26 ], [ %status.01921.i, %if.end49.bail_crit_edge ], [ %status.01921.i, %if.then.i ]
  %56 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %status.0, label %bail.do.body66_crit_edge [
    i32 0, label %bail.if.end76_crit_edge
    i32 -512, label %bail.if.end76_crit_edge128
    i32 -4, label %bail.if.end76_crit_edge129
    i32 524289, label %bail.if.end76_crit_edge130
    i32 -28, label %bail.if.end76_crit_edge131
    i32 -122, label %bail.if.end76_crit_edge132
  ]

bail.if.end76_crit_edge132:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

bail.if.end76_crit_edge131:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

bail.if.end76_crit_edge130:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

bail.if.end76_crit_edge129:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

bail.if.end76_crit_edge128:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

bail.if.end76_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

bail.do.body66_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body66

do.body66:                                        ; preds = %bail.do.body66_crit_edge, %bail.thread
  %status.0117 = phi i32 [ -22, %bail.thread ], [ %status.0, %bail.do.body66_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67) #13
  %57 = ptrtoint ptr %_m67 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m67, align 8
  %conv71 = sext i32 %status.0117 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67, ptr noundef nonnull @__func__.ocfs2_test_inode_bit, i32 noundef 2864, ptr noundef nonnull @.str.1, i64 noundef %conv71) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67) #13
  br label %if.end76

if.end76:                                         ; preds = %do.body66, %bail.if.end76_crit_edge, %bail.if.end76_crit_edge128, %bail.if.end76_crit_edge129, %bail.if.end76_crit_edge130, %bail.if.end76_crit_edge131, %bail.if.end76_crit_edge132
  %status.0116 = phi i32 [ %status.0117, %do.body66 ], [ %status.0, %bail.if.end76_crit_edge ], [ %status.0, %bail.if.end76_crit_edge128 ], [ %status.0, %bail.if.end76_crit_edge129 ], [ %status.0, %bail.if.end76_crit_edge130 ], [ %status.0, %bail.if.end76_crit_edge131 ], [ %status.0, %bail.if.end76_crit_edge132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc_bh) #13
  ret i32 %status.0116
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_test_inode_bit(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_test_inode_bit, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_test_inode_bit, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !277
  %call42 = tail call i32 @__traceiter_ocfs2_test_inode_bit(ptr noundef null, i64 noundef %num) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !278
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_test_inode_bit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_test_inode_bit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_test_inode_bit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_test_inode_bit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 880, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_validate_group_descriptor(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_group_descriptor, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_validate_group_descriptor, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !279
  %call42 = tail call i32 @__traceiter_ocfs2_validate_group_descriptor(ptr noundef null, i64 noundef %num) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !280
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_group_descriptor, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_validate_group_descriptor, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_validate_group_descriptor.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_validate_group_descriptor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 780, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_validate_group_descriptor(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_reserve_suballoc_bits_nospc(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_suballoc_bits_nospc, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_reserve_suballoc_bits_nospc, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !281
  %call42 = tail call i32 @__traceiter_ocfs2_reserve_suballoc_bits_nospc(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !282
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_suballoc_bits_nospc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_suballoc_bits_nospc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_reserve_suballoc_bits_nospc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_reserve_suballoc_bits_nospc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 788, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
define internal fastcc void @trace_ocfs2_reserve_suballoc_bits_no_new_group(i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_suballoc_bits_no_new_group, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_reserve_suballoc_bits_no_new_group, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !283
  %call42 = tail call i32 @__traceiter_ocfs2_reserve_suballoc_bits_no_new_group(ptr noundef null, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !284
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_suballoc_bits_no_new_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_suballoc_bits_no_new_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_reserve_suballoc_bits_no_new_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_reserve_suballoc_bits_no_new_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 790, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_reserve_suballoc_bits_nospc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_reserve_suballoc_bits_no_new_group(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_block_group_alloc(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_block_group_alloc, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !285
  %call42 = tail call i32 @__traceiter_ocfs2_block_group_alloc(ptr noundef null, i64 noundef %num) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !286
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_block_group_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_block_group_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 786, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_block_group_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_block_group_alloc_contig(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc_contig, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_block_group_alloc_contig, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !287
  %call42 = tail call i32 @__traceiter_ocfs2_block_group_alloc_contig(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !288
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc_contig, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc_contig, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_block_group_alloc_contig.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_block_group_alloc_contig.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 782, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local void @ocfs2_set_new_buffer_uptodate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_block_group_fill(ptr noundef %handle, ptr noundef %alloc_inode, ptr noundef %bg_bh, i64 noundef %group_blkno, i32 noundef %group_clusters, i16 noundef zeroext %my_chain, ptr nocapture noundef readonly %cl) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m55 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %alloc_inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bg_bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bg_bh, i32 0, i32 3
  %6 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %group_blkno)
  %cmp.not = icmp eq i64 %7, %group_blkno
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %1, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_block_group_fill, ptr noundef nonnull @.str.26, i64 noundef %group_blkno, i64 noundef %7) #13
  br label %bail

if.end:                                           ; preds = %entry
  %ip_metadata_cache.i = getelementptr i8, ptr %alloc_inode, i32 -56
  %call5 = tail call i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %bg_bh, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end
  %8 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call5, label %do.body [
    i32 -512, label %if.then7.bail_crit_edge
    i32 -4, label %if.then7.bail_crit_edge115
    i32 -28, label %if.then7.bail_crit_edge116
    i32 -122, label %if.then7.bail_crit_edge117
  ]

if.then7.bail_crit_edge117:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then7.bail_crit_edge116:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then7.bail_crit_edge115:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then7.bail_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call5 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_block_group_fill, i32 noundef 366, ptr noundef nonnull @.str.1, i64 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %bail

if.end20:                                         ; preds = %if.end
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %12 = call ptr @memset(ptr %5, i32 0, i32 %11)
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 5139257352619307264, ptr %5, align 1
  %fs_generation = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %fs_generation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs_generation, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %bg_generation = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %bg_generation to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bg_generation, align 8
  %s_feature_incompat = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %18 = ptrtoint ptr %s_feature_incompat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_feature_incompat, align 8
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  %and.i = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %22 = trunc i32 %21 to i16
  %23 = add i16 %22, -64
  %conv23 = select i1 %tobool1.not.i, i16 %23, i16 256
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %bg_size = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %bg_size to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %bg_size, align 8
  %26 = tail call i16 @llvm.bswap.i16(i16 %my_chain)
  %bg_chain = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %bg_chain to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %bg_chain, align 2
  %idxprom = zext i16 %my_chain to i32
  %c_blkno = getelementptr %struct.ocfs2_chain_list, ptr %cl, i32 0, i32 5, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %c_blkno to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %c_blkno, align 8
  %bg_next_group = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 7
  %30 = ptrtoint ptr %bg_next_group to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %bg_next_group, align 8
  %add.ptr.i = getelementptr i8, ptr %alloc_inode, i32 -1608
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr.i, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  %bg_parent_dinode = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 8
  %34 = ptrtoint ptr %bg_parent_dinode to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %bg_parent_dinode, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %group_blkno)
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 9
  %36 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %bg_blkno, align 8
  %37 = ptrtoint ptr %cl to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cl, align 8
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv25 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %group_clusters)
  %cmp26 = icmp eq i32 %conv25, %group_clusters
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %cl_bpc.i = getelementptr inbounds %struct.ocfs2_chain_list, ptr %cl, i32 0, i32 1
  %40 = ptrtoint ptr %cl_bpc.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cl_bpc.i, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #13
  %mul.i = mul i16 %42, %39
  %43 = tail call i16 @llvm.bswap.i16(i16 %mul.i)
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 2
  %44 = ptrtoint ptr %bg_bits to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %bg_bits, align 2
  br label %if.end31

if.else:                                          ; preds = %if.end20
  %45 = ptrtoint ptr %s_feature_incompat to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_feature_incompat, align 8
  %47 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !211

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #13, !srcloc !220
  unreachable

do.end9.i:                                        ; preds = %if.else
  %l_next_free_rec.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 12, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %l_next_free_rec.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %l_next_free_rec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool10.not.i = icmp eq i16 %49, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %do.end9.i.ocfs2_bg_discontig_add_extent.exit_crit_edge

do.end9.i.ocfs2_bg_discontig_add_extent.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_bg_discontig_add_extent.exit

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %sb.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sb.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %53, 1048240
  %div1.i.i = lshr i32 %sub.i.i, 4
  %conv.i.i = trunc i32 %div1.i.i to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #13
  %l_count.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 12, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %l_count.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %l_count.i, align 2
  br label %ocfs2_bg_discontig_add_extent.exit

ocfs2_bg_discontig_add_extent.exit:               ; preds = %if.then11.i, %do.end9.i.ocfs2_bg_discontig_add_extent.exit_crit_edge
  %l_recs.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %49) #13
  %idxprom.i = zext i16 %56 to i32
  %arrayidx.i = getelementptr [0 x %struct.ocfs2_extent_rec], ptr %l_recs.i, i32 0, i32 %idxprom.i
  %e_blkno.i = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx.i, i32 0, i32 2
  %57 = ptrtoint ptr %e_blkno.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %35, ptr %e_blkno.i, align 8
  %bg_bits.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 2
  %58 = ptrtoint ptr %bg_bits.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %bg_bits.i, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #13
  %cl_bpc.i114 = getelementptr inbounds %struct.ocfs2_chain_list, ptr %cl, i32 0, i32 1
  %61 = ptrtoint ptr %cl_bpc.i114 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %cl_bpc.i114, align 2
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #13
  %64 = udiv i16 %60, %63
  %div.i = zext i16 %64 to i32
  %65 = tail call i32 @llvm.bswap.i32(i32 %div.i) #13
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx.i, align 8
  %conv16.i = trunc i32 %group_clusters to i16
  %67 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #13
  %68 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx.i, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %67, ptr %68, align 4
  %70 = ptrtoint ptr %cl_bpc.i114 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cl_bpc.i114, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #13
  %conv20.i = mul i16 %72, %conv16.i
  %add.i.i = add i16 %conv20.i, %60
  %73 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #13
  %74 = ptrtoint ptr %bg_bits.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %bg_bits.i, align 2
  %add.i41.i = add i16 %56, 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %add.i41.i) #13
  %76 = ptrtoint ptr %l_next_free_rec.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %l_next_free_rec.i, align 2
  br label %if.end31

if.end31:                                         ; preds = %ocfs2_bg_discontig_add_extent.exit, %if.then28
  %77 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 12
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %or.i.i.i = or i32 %79, 16777216
  store i32 %or.i.i.i, ptr %77, align 4
  %bg_bits33 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 2
  %80 = ptrtoint ptr %bg_bits33 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %bg_bits33, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %sub = add i16 %82, -1
  %83 = tail call i16 @llvm.bswap.i16(i16 %sub)
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %5, i32 0, i32 3
  %84 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %bg_free_bits_count, align 4
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %bg_bh) #13
  br label %bail

bail:                                             ; preds = %if.end31, %do.body, %if.then7.bail_crit_edge, %if.then7.bail_crit_edge115, %if.then7.bail_crit_edge116, %if.then7.bail_crit_edge117, %if.then
  %status.0 = phi i32 [ %call, %if.then ], [ %call5, %if.end31 ], [ %call5, %if.then7.bail_crit_edge ], [ %call5, %if.then7.bail_crit_edge115 ], [ %call5, %if.then7.bail_crit_edge116 ], [ %call5, %if.then7.bail_crit_edge117 ], [ %call5, %do.body ]
  %85 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %status.0, label %do.body54 [
    i32 0, label %bail.if.end65_crit_edge
    i32 -512, label %bail.if.end65_crit_edge118
    i32 -4, label %bail.if.end65_crit_edge119
    i32 524289, label %bail.if.end65_crit_edge120
    i32 -28, label %bail.if.end65_crit_edge121
    i32 -122, label %bail.if.end65_crit_edge122
  ]

bail.if.end65_crit_edge122:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

bail.if.end65_crit_edge121:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

bail.if.end65_crit_edge120:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

bail.if.end65_crit_edge119:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

bail.if.end65_crit_edge118:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

bail.if.end65_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

do.body54:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #13
  %86 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 1152921504606846976, ptr %_m55, align 8
  %conv59 = sext i32 %status.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.ocfs2_block_group_fill, i32 noundef 398, ptr noundef nonnull @.str.1, i64 noundef %conv59) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #13
  br label %if.end65

if.end65:                                         ; preds = %do.body54, %bail.if.end65_crit_edge, %bail.if.end65_crit_edge118, %bail.if.end65_crit_edge119, %bail.if.end65_crit_edge120, %bail.if.end65_crit_edge121, %bail.if.end65_crit_edge122
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_block_group_alloc_contig(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extend_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_block_group_alloc_discontig(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc_discontig, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_block_group_alloc_discontig, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !289
  %call42 = tail call i32 @__traceiter_ocfs2_block_group_alloc_discontig(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !290
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc_discontig, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_alloc_discontig, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_block_group_alloc_discontig.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_block_group_alloc_discontig.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 784, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_block_group_alloc_discontig(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_remove_from_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_steal_resource(ptr noundef %osb, ptr nocapture noundef %ac, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %cmp.i = icmp eq i32 %type, 9
  %s_inode_steal_slot.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 24
  %s_meta_steal_slot.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 25
  %slot.0.in.in.i = select i1 %cmp.i, ptr %s_inode_steal_slot.i, ptr %s_meta_steal_slot.i
  %0 = ptrtoint ptr %slot.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %slot.0.in.i = load i16, ptr %slot.0.in.in.i, align 2
  %slot.0.i = zext i16 %slot.0.in.i to i32
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %slot.0.in.i)
  %cmp = icmp eq i16 %slot.0.in.i, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %1 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %slot_num, align 8
  %add = add i32 %2, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %slot.0 = phi i32 [ %add, %if.then ], [ %slot.0.i, %entry.if.end_crit_edge ]
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %3 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_slots, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp137.not = icmp eq i32 %4, 0
  br i1 %cmp137.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %slot_num6 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %ac_which.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %ac_bh.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %ac_resv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 13
  %ac_find_loc_priv.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i32 [ %4, %for.body.lr.ph ], [ %23, %for.inc.for.body_crit_edge ]
  %slot.140 = phi i32 [ %slot.0, %for.body.lr.ph ], [ %inc14, %for.inc.for.body_crit_edge ]
  %status.039 = phi i32 [ -28, %for.body.lr.ph ], [ %status.1, %for.inc.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.140, i32 %5)
  %cmp3 = icmp eq i32 %slot.140, %5
  %spec.store.select = select i1 %cmp3, i32 0, i32 %slot.140
  %6 = ptrtoint ptr %slot_num6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_num6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %7)
  %cmp7 = icmp eq i32 %spec.store.select, %7
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %call10 = tail call fastcc i32 @ocfs2_reserve_suballoc_bits(ptr noundef %osb, ptr noundef %ac, i32 noundef %type, i32 noundef %spec.store.select, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, -1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #13
  %conv.i = trunc i32 %spec.store.select to i16
  br i1 %cmp.i, label %if.then.i, label %if.then3.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %s_inode_steal_slot.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %s_inode_steal_slot.i, align 4
  br label %__ocfs2_set_steal_slot.exit

if.then3.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %s_meta_steal_slot.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %s_meta_steal_slot.i, align 2
  br label %__ocfs2_set_steal_slot.exit

__ocfs2_set_steal_slot.exit:                      ; preds = %if.then3.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #13
  br label %for.end

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end13.if.end3.i_crit_edge, label %if.then.i35

if.end13.if.end3.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i35:                                      ; preds = %if.end13
  %12 = ptrtoint ptr %ac_which.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ac_which.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %if.then.i35.if.end.i_crit_edge, label %if.then1.i

if.then.i35.if.end.i_crit_edge:                   ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ocfs2_inode_unlock(ptr noundef nonnull %11, i32 noundef 1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i35.if.end.i_crit_edge
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #13
  tail call void @iput(ptr noundef nonnull %11) #13
  %14 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ac, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %if.end13.if.end3.i_crit_edge
  %15 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge, label %if.then.i.i

if.end3.i.ocfs2_free_ac_resource.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_free_ac_resource.exit

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %16) #13
  br label %ocfs2_free_ac_resource.exit

ocfs2_free_ac_resource.exit:                      ; preds = %if.then.i.i, %if.end3.i.ocfs2_free_ac_resource.exit_crit_edge
  %17 = ptrtoint ptr %ac_bh.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ac_bh.i, align 4
  %18 = ptrtoint ptr %ac_resv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ac_resv.i, align 8
  %19 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac_find_loc_priv.i, align 4
  tail call void @kfree(ptr noundef %20) #13
  %21 = ptrtoint ptr %ac_find_loc_priv.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ac_find_loc_priv.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %ocfs2_free_ac_resource.exit, %for.body.for.inc_crit_edge
  %status.1 = phi i32 [ %status.039, %for.body.for.inc_crit_edge ], [ %call10, %ocfs2_free_ac_resource.exit ]
  %inc = add nuw i32 %i.038, 1
  %inc14 = add i32 %spec.store.select, 1
  %22 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_slots, align 8
  %cmp1 = icmp ult i32 %inc, %23
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__ocfs2_set_steal_slot.exit, %if.end.for.end_crit_edge
  %status.2 = phi i32 [ %call10, %__ocfs2_set_steal_slot.exit ], [ -28, %if.end.for.end_crit_edge ], [ %status.1, %for.inc.for.end_crit_edge ]
  ret i32 %status.2
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_reserve_new_inode_new_group(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_alloc_should_use_local(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_reserve_local_alloc_bits(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_try_to_free_truncate_log(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_block_group_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_cluster_group_search_wrong_max_bits(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cluster_group_search_wrong_max_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_cluster_group_search_wrong_max_bits, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !291
  %call42 = tail call i32 @__traceiter_ocfs2_cluster_group_search_wrong_max_bits(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !292
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cluster_group_search_wrong_max_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cluster_group_search_wrong_max_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_cluster_group_search_wrong_max_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_cluster_group_search_wrong_max_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 818, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
define internal fastcc i32 @ocfs2_block_group_find_clear_bits(ptr noundef %bg_bh, i32 noundef %bits_wanted, i32 noundef %total_bits, ptr nocapture noundef writeonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bg_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !215

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1288, 0\0A.popsection", ""() #13, !srcloc !293
  unreachable

do.end10:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 12
  br label %while.cond

while.cond:                                       ; preds = %.while.cond_crit_edge, %do.end10
  %best_offset.0 = phi i16 [ 0, %do.end10 ], [ %best_offset.1, %.while.cond_crit_edge ]
  %best_size.0 = phi i16 [ 0, %do.end10 ], [ %best_size.1, %.while.cond_crit_edge ]
  %start.0 = phi i32 [ 0, %do.end10 ], [ %start.1, %.while.cond_crit_edge ]
  %found.0 = phi i32 [ 0, %do.end10 ], [ %19, %.while.cond_crit_edge ]
  %call.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %2, i32 noundef %total_bits, i32 noundef %start.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %total_bits)
  %cmp13 = icmp eq i32 %call.i, %total_bits
  %or.cond = or i1 %cmp.not, %cmp13
  br i1 %or.cond, label %while.cond.while.end_crit_edge, label %if.end15

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end15:                                         ; preds = %while.cond
  %3 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_data, align 4
  %5 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %4, i32 0, i32 12
  %div3.i.i.i = lshr i32 %call.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %5, i32 %div3.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %call.i, 31
  %and.i.i.i = xor i32 %xor.i.i, 24
  %8 = shl nuw i32 1, %and.i.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.ocfs2_test_bg_bit_allocatable.exit.thread_crit_edge

if.end15.ocfs2_test_bg_bit_allocatable.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_bg_bit_allocatable.exit.thread

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %bg_bh) #13
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %ocfs2_test_bg_bit_allocatable.exit.thread7, label %if.end4.i

ocfs2_test_bg_bit_allocatable.exit.thread7:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %start.0)
  %cmp1910 = icmp eq i32 %call.i, %start.0
  %inc11 = add i32 %found.0, 1
  %spec.select112 = select i1 %cmp1910, i32 %inc11, i32 1
  br label %18

if.end4.i:                                        ; preds = %if.end.i
  %b_state_lock.i = getelementptr inbounds %struct.journal_head, ptr %call1.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock.i) #13
  %b_committed_data.i = getelementptr inbounds %struct.journal_head, ptr %call1.i, i32 0, i32 6
  %10 = ptrtoint ptr %b_committed_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_committed_data.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.end4.i.ocfs2_test_bg_bit_allocatable.exit_crit_edge, label %if.then6.i

if.end4.i.ocfs2_test_bg_bit_allocatable.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_bg_bit_allocatable.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %11, i32 0, i32 12
  %arrayidx.i.i23.i = getelementptr i32, ptr %12, i32 %div3.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i23.i, align 4
  %15 = xor i32 %14, -1
  %16 = lshr i32 %15, %and.i.i.i
  %17 = and i32 %16, 1
  br label %ocfs2_test_bg_bit_allocatable.exit

ocfs2_test_bg_bit_allocatable.exit:               ; preds = %if.then6.i, %if.end4.i.ocfs2_test_bg_bit_allocatable.exit_crit_edge
  %ret.0.i = phi i32 [ %17, %if.then6.i ], [ 1, %if.end4.i.ocfs2_test_bg_bit_allocatable.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock.i) #13
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool17.not = icmp eq i32 %ret.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %start.0)
  %cmp19 = icmp eq i32 %call.i, %start.0
  %inc = add i32 %found.0, 1
  %spec.select1 = select i1 %cmp19, i32 %inc, i32 1
  br i1 %tobool17.not, label %ocfs2_test_bg_bit_allocatable.exit.ocfs2_test_bg_bit_allocatable.exit.thread_crit_edge, label %ocfs2_test_bg_bit_allocatable.exit._crit_edge

ocfs2_test_bg_bit_allocatable.exit._crit_edge:    ; preds = %ocfs2_test_bg_bit_allocatable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %18

ocfs2_test_bg_bit_allocatable.exit.ocfs2_test_bg_bit_allocatable.exit.thread_crit_edge: ; preds = %ocfs2_test_bg_bit_allocatable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_test_bg_bit_allocatable.exit.thread

ocfs2_test_bg_bit_allocatable.exit.thread:        ; preds = %ocfs2_test_bg_bit_allocatable.exit.ocfs2_test_bg_bit_allocatable.exit.thread_crit_edge, %if.end15.ocfs2_test_bg_bit_allocatable.exit.thread_crit_edge
  br label %18

18:                                               ; preds = %ocfs2_test_bg_bit_allocatable.exit.thread, %ocfs2_test_bg_bit_allocatable.exit._crit_edge, %ocfs2_test_bg_bit_allocatable.exit.thread7
  %19 = phi i32 [ 0, %ocfs2_test_bg_bit_allocatable.exit.thread ], [ %spec.select1, %ocfs2_test_bg_bit_allocatable.exit._crit_edge ], [ %spec.select112, %ocfs2_test_bg_bit_allocatable.exit.thread7 ]
  %start.1 = add nuw i32 %call.i, 1
  %conv = zext i16 %best_size.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp26 = icmp sgt i32 %19, %conv
  %conv29 = trunc i32 %19 to i16
  %sub = sub i32 %start.1, %19
  %conv30 = trunc i32 %sub to i16
  %best_offset.1 = select i1 %cmp26, i16 %conv30, i16 %best_offset.0
  %best_size.1 = select i1 %cmp26, i16 %conv29, i16 %best_size.0
  %cmp32 = icmp eq i32 %19, %bits_wanted
  br i1 %cmp32, label %.while.end_crit_edge, label %.while.cond_crit_edge

.while.cond_crit_edge:                            ; preds = %18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

.while.end_crit_edge:                             ; preds = %18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %.while.end_crit_edge, %while.cond.while.end_crit_edge
  %best_offset.2 = phi i16 [ %best_offset.1, %.while.end_crit_edge ], [ %best_offset.0, %while.cond.while.end_crit_edge ]
  %best_size.2 = phi i16 [ %best_size.1, %.while.end_crit_edge ], [ %best_size.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %best_size.2)
  %tobool36.not = icmp eq i16 %best_size.2, 0
  br i1 %tobool36.not, label %while.end.if.end41_crit_edge, label %if.then37

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv38 = zext i16 %best_offset.2 to i32
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %20 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv38, ptr %sr_bit_offset, align 8
  %conv39 = zext i16 %best_size.2 to i32
  %sr_bits = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %21 = ptrtoint ptr %sr_bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv39, ptr %sr_bits, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %while.end.if.end41_crit_edge
  %status.0 = phi i32 [ 0, %if.then37 ], [ -28, %while.end.if.end41_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_cluster_group_search_max_block(i64 noundef %val1, i64 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cluster_group_search_max_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_cluster_group_search_max_block, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !294
  %call42 = tail call i32 @__traceiter_ocfs2_cluster_group_search_max_block(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !295
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cluster_group_search_max_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cluster_group_search_max_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_cluster_group_search_max_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_cluster_group_search_max_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 820, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local void @ocfs2_local_alloc_seen_free_bits(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_cluster_group_search_wrong_max_bits(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_grab_journal_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_put_journal_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_cluster_group_search_max_block(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_block_group_search_max_block(i64 noundef %val1, i64 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_search_max_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_block_group_search_max_block, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !296
  %call42 = tail call i32 @__traceiter_ocfs2_block_group_search_max_block(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !297
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_search_max_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_search_max_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_block_group_search_max_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_block_group_search_max_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 822, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_block_group_search_max_block(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_search_chain(ptr nocapture noundef readonly %ac, ptr noundef %handle, i32 noundef %bits_wanted, i32 noundef %min_bits, ptr noundef %res, ptr nocapture noundef writeonly %bits_left) unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %tmp.i369 = alloca ptr, align 4
  %tmp.i = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m50 = alloca i64, align 8
  %_m85 = alloca i64, align 8
  %_m147 = alloca i64, align 8
  %_m184 = alloca i64, align 8
  %_m219 = alloca i64, align 8
  %_m250 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 8
  %ac_bh = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %2 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %ac_chain = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 6
  %6 = ptrtoint ptr %ac_chain to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ac_chain, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1608
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i, align 8
  %conv = zext i16 %7 to i32
  tail call fastcc void @trace_ocfs2_search_chain_begin(i64 noundef %9, i32 noundef %bits_wanted, i32 noundef %conv)
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 35, i32 0, i32 7
  %c_blkno = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %conv, i32 2
  %10 = ptrtoint ptr %c_blkno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %c_blkno, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tmp.i, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %1, i32 -56
  %call1.i.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %12, i32 noundef 1, ptr noundef nonnull %tmp.i, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_group_descriptor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ocfs2_read_group_descriptor.exit_crit_edge

entry.ocfs2_read_group_descriptor.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit

if.end.i:                                         ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmp.i, align 4
  %call2.i = call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %15, ptr noundef %5, ptr noundef %17, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tmp.i, align 4
  br i1 %tobool3.not.i, label %ocfs2_read_group_descriptor.exit.thread, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge, label %if.then.i.i

if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %19) #13
  br label %ocfs2_read_group_descriptor.exit

ocfs2_read_group_descriptor.exit.thread:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  br label %while.cond.preheader

ocfs2_read_group_descriptor.exit:                 ; preds = %if.then.i.i, %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge, %entry.ocfs2_read_group_descriptor.exit_crit_edge
  %rc.0.i = phi i32 [ %call2.i, %if.then4.i.ocfs2_read_group_descriptor.exit_crit_edge ], [ %call2.i, %if.then.i.i ], [ %call1.i.i, %entry.ocfs2_read_group_descriptor.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp = icmp slt i32 %rc.0.i, 0
  br i1 %cmp, label %if.then, label %ocfs2_read_group_descriptor.exit.while.cond.preheader_crit_edge

ocfs2_read_group_descriptor.exit.while.cond.preheader_crit_edge: ; preds = %ocfs2_read_group_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %ocfs2_read_group_descriptor.exit.while.cond.preheader_crit_edge, %ocfs2_read_group_descriptor.exit.thread
  %group_bh.0442 = phi ptr [ %19, %ocfs2_read_group_descriptor.exit.thread ], [ null, %ocfs2_read_group_descriptor.exit.while.cond.preheader_crit_edge ]
  %ac_group_search = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 8
  %ac_max_block = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 10
  %i_sb.i373 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %while.cond

if.then:                                          ; preds = %ocfs2_read_group_descriptor.exit
  %20 = zext i32 %rc.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %rc.0.i, label %do.body [
    i32 -512, label %if.then.brelse.exit398_crit_edge
    i32 -4, label %if.then.brelse.exit398_crit_edge500
    i32 -28, label %if.then.brelse.exit398_crit_edge501
    i32 -122, label %if.then.brelse.exit398_crit_edge502
  ]

if.then.brelse.exit398_crit_edge502:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit398

if.then.brelse.exit398_crit_edge501:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit398

if.then.brelse.exit398_crit_edge500:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit398

if.then.brelse.exit398_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit398

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #13
  %21 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv18 = sext i32 %rc.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_search_chain, i32 noundef 1761, ptr noundef nonnull @.str.1, i64 noundef %conv18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #13
  br label %brelse.exit398

while.cond:                                       ; preds = %ocfs2_read_group_descriptor.exit384.while.cond_crit_edge, %while.cond.preheader
  %group_bh.1 = phi ptr [ %group_bh.2, %ocfs2_read_group_descriptor.exit384.while.cond_crit_edge ], [ %group_bh.0442, %while.cond.preheader ]
  %prev_group_bh.0 = phi ptr [ %group_bh.1, %ocfs2_read_group_descriptor.exit384.while.cond_crit_edge ], [ null, %while.cond.preheader ]
  %bg.0.in = getelementptr inbounds %struct.buffer_head, ptr %group_bh.1, i32 0, i32 5
  %22 = ptrtoint ptr %bg.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %bg.0 = load ptr, ptr %bg.0.in, align 4
  %23 = ptrtoint ptr %ac_group_search to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ac_group_search, align 8
  %25 = ptrtoint ptr %ac_max_block to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ac_max_block, align 8
  %call22 = call i32 %24(ptr noundef %1, ptr noundef %group_bh.1, i32 noundef %bits_wanted, i32 noundef %min_bits, i64 noundef %26, ptr noundef %res) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call22)
  %cmp23 = icmp eq i32 %call22, -28
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %bg_next_group = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg.0, i32 0, i32 7
  %27 = ptrtoint ptr %bg_next_group to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bg_next_group, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool25.not = icmp eq i64 %28, 0
  br i1 %tobool25.not, label %while.body.bail_crit_edge, label %if.end27

while.body.bail_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.end27:                                         ; preds = %while.body
  %tobool.not.i367 = icmp eq ptr %prev_group_bh.0, null
  br i1 %tobool.not.i367, label %if.end27.brelse.exit_crit_edge, label %if.then.i

if.end27.brelse.exit_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %prev_group_bh.0) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end27.brelse.exit_crit_edge
  %29 = ptrtoint ptr %bg_next_group to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bg_next_group, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i369) #13
  %32 = ptrtoint ptr %tmp.i369 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %tmp.i369, align 4
  %call1.i.i371 = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %31, i32 noundef 1, ptr noundef nonnull %tmp.i369, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_group_descriptor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i371)
  %tobool.not.i372 = icmp eq i32 %call1.i.i371, 0
  br i1 %tobool.not.i372, label %if.end.i376, label %brelse.exit.ocfs2_read_group_descriptor.exit384_crit_edge

brelse.exit.ocfs2_read_group_descriptor.exit384_crit_edge: ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit384

if.end.i376:                                      ; preds = %brelse.exit
  %33 = ptrtoint ptr %i_sb.i373 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i373, align 4
  %35 = ptrtoint ptr %tmp.i369 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tmp.i369, align 4
  %call2.i374 = call fastcc i32 @ocfs2_validate_gd_parent(ptr noundef %34, ptr noundef %5, ptr noundef %36, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i374)
  %tobool3.not.i375 = icmp eq i32 %call2.i374, 0
  %37 = ptrtoint ptr %tmp.i369 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tmp.i369, align 4
  br i1 %tobool3.not.i375, label %if.end.i376.ocfs2_read_group_descriptor.exit384_crit_edge, label %if.then4.i378

if.end.i376.ocfs2_read_group_descriptor.exit384_crit_edge: ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit384

if.then4.i378:                                    ; preds = %if.end.i376
  %tobool.not.i.i377 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i377, label %if.then4.i378.ocfs2_read_group_descriptor.exit384_crit_edge, label %if.then.i.i379

if.then4.i378.ocfs2_read_group_descriptor.exit384_crit_edge: ; preds = %if.then4.i378
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_read_group_descriptor.exit384

if.then.i.i379:                                   ; preds = %if.then4.i378
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %38) #13
  br label %ocfs2_read_group_descriptor.exit384

ocfs2_read_group_descriptor.exit384:              ; preds = %if.then.i.i379, %if.then4.i378.ocfs2_read_group_descriptor.exit384_crit_edge, %if.end.i376.ocfs2_read_group_descriptor.exit384_crit_edge, %brelse.exit.ocfs2_read_group_descriptor.exit384_crit_edge
  %group_bh.2 = phi ptr [ null, %if.then4.i378.ocfs2_read_group_descriptor.exit384_crit_edge ], [ null, %if.then.i.i379 ], [ null, %brelse.exit.ocfs2_read_group_descriptor.exit384_crit_edge ], [ %38, %if.end.i376.ocfs2_read_group_descriptor.exit384_crit_edge ]
  %rc.0.i383 = phi i32 [ %call2.i374, %if.then4.i378.ocfs2_read_group_descriptor.exit384_crit_edge ], [ %call2.i374, %if.then.i.i379 ], [ %call1.i.i371, %brelse.exit.ocfs2_read_group_descriptor.exit384_crit_edge ], [ 0, %if.end.i376.ocfs2_read_group_descriptor.exit384_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i369) #13
  %cmp30 = icmp slt i32 %rc.0.i383, 0
  br i1 %cmp30, label %if.then32, label %ocfs2_read_group_descriptor.exit384.while.cond_crit_edge

ocfs2_read_group_descriptor.exit384.while.cond_crit_edge: ; preds = %ocfs2_read_group_descriptor.exit384
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.then32:                                        ; preds = %ocfs2_read_group_descriptor.exit384
  %39 = zext i32 %rc.0.i383 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %rc.0.i383, label %do.body49 [
    i32 -512, label %if.then32.bail_crit_edge
    i32 -4, label %if.then32.bail_crit_edge503
    i32 -28, label %if.then32.bail_crit_edge504
    i32 -122, label %if.then32.bail_crit_edge505
  ]

if.then32.bail_crit_edge505:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then32.bail_crit_edge504:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then32.bail_crit_edge503:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then32.bail_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body49:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50) #13
  %40 = ptrtoint ptr %_m50 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606846976, ptr %_m50, align 8
  %conv54 = sext i32 %rc.0.i383 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50, ptr noundef nonnull @__func__.ocfs2_search_chain, i32 noundef 1785, ptr noundef nonnull @.str.1, i64 noundef %conv54) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50) #13
  br label %bail

while.end:                                        ; preds = %while.cond
  %bg.0.in.le = getelementptr inbounds %struct.buffer_head, ptr %group_bh.1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp62 = icmp slt i32 %call22, 0
  br i1 %cmp62, label %if.then64, label %if.end96

if.then64:                                        ; preds = %while.end
  %41 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call22, label %do.body84 [
    i32 -28, label %if.then64.bail_crit_edge
    i32 -512, label %if.then64.bail_crit_edge506
    i32 -4, label %if.then64.bail_crit_edge507
    i32 -122, label %if.then64.bail_crit_edge508
  ]

if.then64.bail_crit_edge508:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then64.bail_crit_edge507:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then64.bail_crit_edge506:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then64.bail_crit_edge:                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body84:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85) #13
  %42 = ptrtoint ptr %_m85 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606846976, ptr %_m85, align 8
  %conv89 = sext i32 %call22 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85, ptr noundef nonnull @__func__.ocfs2_search_chain, i32 noundef 1792, ptr noundef nonnull @.str.1, i64 noundef %conv89) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85) #13
  br label %bail

if.end96:                                         ; preds = %while.end
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg.0, i32 0, i32 9
  %43 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bg_blkno, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %sr_bits = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %46 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sr_bits, align 4
  call fastcc void @trace_ocfs2_search_chain_succ(i64 noundef %45, i32 noundef %47)
  %48 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bg_blkno, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49)
  %51 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %res, align 8
  %52 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sr_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp100 = icmp eq i32 %53, 0
  br i1 %cmp100, label %do.body105, label %do.end113, !prof !211

do.body105:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1801, 0\0A.popsection", ""() #13, !srcloc !298
  unreachable

do.end113:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool114.not = icmp eq i32 %call22, 0
  br i1 %tobool114.not, label %if.then115, label %do.end113.if.end116_crit_edge

do.end113.if.end116_crit_edge:                    ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then115:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @ocfs2_bg_discontig_fix_result(ptr noundef %ac, ptr noundef %bg.0, ptr noundef %res)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %do.end113.if.end116_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %group_bh.1, i32 0, i32 3
  %54 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %b_blocknr, align 8
  %sr_bg_stable_blkno = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 1
  %56 = ptrtoint ptr %sr_bg_stable_blkno to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %sr_bg_stable_blkno, align 8
  %ac_disable_chain_relink = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 7
  %57 = ptrtoint ptr %ac_disable_chain_relink to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ac_disable_chain_relink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool117.not = icmp ne i32 %58, 0
  %tobool119.not = icmp eq ptr %prev_group_bh.0, null
  %or.cond = or i1 %tobool119.not, %tobool117.not
  br i1 %or.cond, label %if.end116.if.end158_crit_edge, label %land.lhs.true120

if.end116.if.end158_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

land.lhs.true120:                                 ; preds = %if.end116
  %59 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sr_bits, align 4
  %bg_free_bits_count.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg.0, i32 0, i32 3
  %61 = ptrtoint ptr %bg_free_bits_count.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bg_free_bits_count.i, align 4
  %63 = call i16 @llvm.bswap.i16(i16 %62) #13
  %conv.i = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv.i)
  %cmp.i.not = icmp ult i32 %60, %conv.i
  br i1 %cmp.i.not, label %if.then124, label %land.lhs.true120.if.end158_crit_edge

land.lhs.true120.if.end158_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.then124:                                       ; preds = %land.lhs.true120
  %64 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ac_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data.i, align 4
  %68 = ptrtoint ptr %bg.0.in.le to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bg.0.in.le, align 4
  %b_data2.i = getelementptr inbounds %struct.buffer_head, ptr %prev_group_bh.0, i32 0, i32 5
  %70 = ptrtoint ptr %b_data2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data2.i, align 4
  %call.i = call i32 @strcmp(ptr noundef %69, ptr noundef nonnull dereferenceable(8) @.str.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i385 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i385, label %do.body13.i, label %do.body7.i, !prof !215

do.body7.i:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1418, 0\0A.popsection", ""() #13, !srcloc !299
  unreachable

do.body13.i:                                      ; preds = %if.then124
  %call16.i = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(8) @.str.2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.end37.i, label %do.body29.i, !prof !215

do.body29.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/suballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1419, 0\0A.popsection", ""() #13, !srcloc !300
  unreachable

do.end37.i:                                       ; preds = %do.body13.i
  %i_blkno.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %67, i32 0, i32 17
  %72 = ptrtoint ptr %i_blkno.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %i_blkno.i, align 8
  %74 = call i64 @llvm.bswap.i64(i64 %73) #13
  %bg_blkno.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %69, i32 0, i32 9
  %75 = ptrtoint ptr %bg_blkno.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %bg_blkno.i, align 8
  %77 = call i64 @llvm.bswap.i64(i64 %76) #13
  %bg_blkno38.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %71, i32 0, i32 9
  %78 = ptrtoint ptr %bg_blkno38.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %bg_blkno38.i, align 8
  %80 = call i64 @llvm.bswap.i64(i64 %79) #13
  call fastcc void @trace_ocfs2_relink_block_group(i64 noundef %74, i32 noundef %conv, i64 noundef %77, i64 noundef %80) #13
  %bg_next_group.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %69, i32 0, i32 7
  %81 = ptrtoint ptr %bg_next_group.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %bg_next_group.i, align 8
  %bg_next_group39.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %71, i32 0, i32 7
  %83 = ptrtoint ptr %bg_next_group39.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %bg_next_group39.i, align 8
  %call41.i = call i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ip_metadata_cache.i.i, ptr noundef nonnull %prev_group_bh.0, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp.i388 = icmp slt i32 %call41.i, 0
  br i1 %cmp.i388, label %do.end37.i.if.then68.i_crit_edge, label %if.end44.i

do.end37.i.if.then68.i_crit_edge:                 ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68.i

if.end44.i:                                       ; preds = %do.end37.i
  %85 = ptrtoint ptr %bg_next_group.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %bg_next_group.i, align 8
  %87 = ptrtoint ptr %bg_next_group39.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %bg_next_group39.i, align 8
  call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef nonnull %prev_group_bh.0) #13
  %call48.i = call i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ip_metadata_cache.i.i, ptr noundef %group_bh.1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.end44.i.out_rollback_prev_bg.i_crit_edge, label %if.end52.i

if.end44.i.out_rollback_prev_bg.i_crit_edge:      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rollback_prev_bg.i

if.end52.i:                                       ; preds = %if.end44.i
  %cl_recs.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %67, i32 0, i32 35, i32 0, i32 7
  %c_blkno.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i, i32 0, i32 %conv, i32 2
  %88 = ptrtoint ptr %c_blkno.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %c_blkno.i, align 8
  %90 = ptrtoint ptr %bg_next_group.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %bg_next_group.i, align 8
  call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %group_bh.1) #13
  %call55.i = call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i.i, ptr noundef %65, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %out_rollback_bg.i, label %ocfs2_relink_block_group.exit

if.then68.i:                                      ; preds = %out_rollback_prev_bg.i, %do.end37.i.if.then68.i_crit_edge
  %status.0.ph.i = phi i32 [ %status.1.i, %out_rollback_prev_bg.i ], [ %call41.i, %do.end37.i.if.then68.i_crit_edge ]
  %91 = zext i32 %status.0.ph.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %status.0.ph.i, label %do.body83.i [
    i32 -512, label %if.then68.i.bail_crit_edge
    i32 -4, label %if.then68.i.bail_crit_edge509
    i32 -28, label %if.then68.i.bail_crit_edge510
    i32 -122, label %if.then68.i.bail_crit_edge511
  ]

if.then68.i.bail_crit_edge511:                    ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then68.i.bail_crit_edge510:                    ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then68.i.bail_crit_edge509:                    ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then68.i.bail_crit_edge:                       ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body83.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #13
  %92 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv86.i = sext i32 %status.0.ph.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_relink_block_group, i32 noundef 1456, ptr noundef nonnull @.str.1, i64 noundef %conv86.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m147) #13
  %93 = ptrtoint ptr %_m147 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 1152921504606846976, ptr %_m147, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m147, ptr noundef nonnull @__func__.ocfs2_search_chain, i32 noundef 1831, ptr noundef nonnull @.str.1, i64 noundef %conv86.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m147) #13
  br label %bail

out_rollback_bg.i:                                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %bg_next_group.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %82, ptr %bg_next_group.i, align 8
  br label %out_rollback_prev_bg.i

out_rollback_prev_bg.i:                           ; preds = %out_rollback_bg.i, %if.end44.i.out_rollback_prev_bg.i_crit_edge
  %status.1.i = phi i32 [ %call48.i, %if.end44.i.out_rollback_prev_bg.i_crit_edge ], [ %call55.i, %out_rollback_bg.i ]
  %95 = ptrtoint ptr %bg_next_group39.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %84, ptr %bg_next_group39.i, align 8
  br label %if.then68.i

ocfs2_relink_block_group.exit:                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %bg_blkno.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %bg_blkno.i, align 8
  %98 = ptrtoint ptr %c_blkno.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %c_blkno.i, align 8
  call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %65) #13
  br label %if.end158

if.end158:                                        ; preds = %ocfs2_relink_block_group.exit, %land.lhs.true120.if.end158_crit_edge, %if.end116.if.end158_crit_edge
  %status.0 = phi i32 [ %call22, %if.end116.if.end158_crit_edge ], [ %call55.i, %ocfs2_relink_block_group.exit ], [ %call22, %land.lhs.true120.if.end158_crit_edge ]
  %ac_find_loc_only = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 11
  %99 = ptrtoint ptr %ac_find_loc_only to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ac_find_loc_only, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool159.not = icmp eq i32 %100, 0
  br i1 %tobool159.not, label %if.end161, label %if.end158.out_loc_only_crit_edge

if.end158.out_loc_only_crit_edge:                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_loc_only

if.end161:                                        ; preds = %if.end158
  %101 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ac_bh, align 4
  %103 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sr_bits, align 4
  %call164 = call i32 @ocfs2_alloc_dinode_update_counts(ptr noundef %1, ptr noundef %handle, ptr noundef %102, i32 noundef %104, i16 noundef zeroext %7)
  %105 = zext i32 %call164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call164, label %do.body183 [
    i32 0, label %if.end194
    i32 -512, label %if.end161.bail_crit_edge
    i32 -4, label %if.end161.bail_crit_edge512
    i32 524289, label %if.end161.bail_crit_edge513
    i32 -28, label %if.end161.bail_crit_edge514
    i32 -122, label %if.end161.bail_crit_edge515
  ]

if.end161.bail_crit_edge515:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.end161.bail_crit_edge514:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.end161.bail_crit_edge513:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.end161.bail_crit_edge512:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.end161.bail_crit_edge:                         ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body183:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m184) #13
  %106 = ptrtoint ptr %_m184 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 1152921504606846976, ptr %_m184, align 8
  %conv188 = sext i32 %call164 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m184, ptr noundef nonnull @__func__.ocfs2_search_chain, i32 noundef 1843, ptr noundef nonnull @.str.1, i64 noundef %conv188) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m184) #13
  br label %bail

if.end194:                                        ; preds = %if.end161
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %107 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sr_bit_offset, align 8
  %109 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sr_bits, align 4
  %call196 = call i32 @ocfs2_block_group_set_bits(ptr noundef %handle, ptr noundef %1, ptr noundef %bg.0, ptr noundef %group_bh.1, i32 noundef %108, i32 noundef %110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %if.then199, label %if.end229

if.then199:                                       ; preds = %if.end194
  %111 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ac_bh, align 4
  %113 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sr_bits, align 4
  %b_data.i389 = getelementptr inbounds %struct.buffer_head, ptr %112, i32 0, i32 5
  %115 = ptrtoint ptr %b_data.i389 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %b_data.i389, align 4
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %116, i32 0, i32 34
  %117 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id1.i, align 8
  %119 = call i32 @llvm.bswap.i32(i32 %118) #13
  %sub.i = sub i32 %119, %114
  %120 = call i32 @llvm.bswap.i32(i32 %sub.i) #13
  %121 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %id1.i, align 8
  %cl_recs.i390 = getelementptr inbounds %struct.ocfs2_dinode, ptr %116, i32 0, i32 35, i32 0, i32 7
  %arrayidx.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i390, i32 0, i32 %conv
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i, align 4
  %124 = call i32 @llvm.bswap.i32(i32 %123) #13
  %add.i.i = add i32 %124, %114
  %125 = call i32 @llvm.bswap.i32(i32 %add.i.i) #13
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %arrayidx.i, align 4
  %127 = zext i32 %call196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call196, label %do.body218 [
    i32 -512, label %if.then199.bail_crit_edge
    i32 -4, label %if.then199.bail_crit_edge516
    i32 -28, label %if.then199.bail_crit_edge517
    i32 -122, label %if.then199.bail_crit_edge518
  ]

if.then199.bail_crit_edge518:                     ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then199.bail_crit_edge517:                     ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then199.bail_crit_edge516:                     ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

if.then199.bail_crit_edge:                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail

do.body218:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m219) #13
  %128 = ptrtoint ptr %_m219 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 1152921504606846976, ptr %_m219, align 8
  %conv223 = sext i32 %call196 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m219, ptr noundef nonnull @__func__.ocfs2_search_chain, i32 noundef 1856, ptr noundef nonnull @.str.1, i64 noundef %conv223) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m219) #13
  br label %bail

if.end229:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #15
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 17
  %129 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %i_blkno, align 8
  %131 = call i64 @llvm.bswap.i64(i64 %130)
  %132 = ptrtoint ptr %sr_bits to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sr_bits, align 4
  call fastcc void @trace_ocfs2_search_chain_end(i64 noundef %131, i32 noundef %133)
  br label %out_loc_only

out_loc_only:                                     ; preds = %if.end229, %if.end158.out_loc_only_crit_edge
  %status.1 = phi i32 [ %status.0, %if.end158.out_loc_only_crit_edge ], [ %call196, %if.end229 ]
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg.0, i32 0, i32 3
  %134 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %bg_free_bits_count, align 4
  %136 = call i16 @llvm.bswap.i16(i16 %135)
  %137 = ptrtoint ptr %bits_left to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %bits_left, align 2
  br label %bail

bail:                                             ; preds = %out_loc_only, %do.body218, %if.then199.bail_crit_edge, %if.then199.bail_crit_edge516, %if.then199.bail_crit_edge517, %if.then199.bail_crit_edge518, %do.body183, %if.end161.bail_crit_edge, %if.end161.bail_crit_edge512, %if.end161.bail_crit_edge513, %if.end161.bail_crit_edge514, %if.end161.bail_crit_edge515, %do.body83.i, %if.then68.i.bail_crit_edge, %if.then68.i.bail_crit_edge509, %if.then68.i.bail_crit_edge510, %if.then68.i.bail_crit_edge511, %do.body84, %if.then64.bail_crit_edge, %if.then64.bail_crit_edge506, %if.then64.bail_crit_edge507, %if.then64.bail_crit_edge508, %do.body49, %if.then32.bail_crit_edge, %if.then32.bail_crit_edge503, %if.then32.bail_crit_edge504, %if.then32.bail_crit_edge505, %while.body.bail_crit_edge
  %group_bh.3 = phi ptr [ %group_bh.1, %if.then64.bail_crit_edge ], [ %group_bh.1, %do.body183 ], [ %group_bh.1, %if.end161.bail_crit_edge ], [ %group_bh.1, %if.end161.bail_crit_edge512 ], [ %group_bh.1, %if.end161.bail_crit_edge513 ], [ %group_bh.1, %if.end161.bail_crit_edge514 ], [ %group_bh.1, %if.end161.bail_crit_edge515 ], [ %group_bh.1, %do.body218 ], [ %group_bh.1, %if.then199.bail_crit_edge ], [ %group_bh.1, %if.then199.bail_crit_edge516 ], [ %group_bh.1, %if.then199.bail_crit_edge517 ], [ %group_bh.1, %if.then199.bail_crit_edge518 ], [ %group_bh.1, %out_loc_only ], [ %group_bh.1, %do.body83.i ], [ %group_bh.2, %do.body49 ], [ %group_bh.2, %if.then32.bail_crit_edge ], [ %group_bh.2, %if.then32.bail_crit_edge503 ], [ %group_bh.2, %if.then32.bail_crit_edge504 ], [ %group_bh.2, %if.then32.bail_crit_edge505 ], [ %group_bh.1, %if.then68.i.bail_crit_edge ], [ %group_bh.1, %if.then68.i.bail_crit_edge509 ], [ %group_bh.1, %if.then68.i.bail_crit_edge510 ], [ %group_bh.1, %if.then68.i.bail_crit_edge511 ], [ %group_bh.1, %if.then64.bail_crit_edge506 ], [ %group_bh.1, %if.then64.bail_crit_edge507 ], [ %group_bh.1, %if.then64.bail_crit_edge508 ], [ %group_bh.1, %do.body84 ], [ %group_bh.1, %while.body.bail_crit_edge ]
  %prev_group_bh.1 = phi ptr [ %prev_group_bh.0, %if.then64.bail_crit_edge ], [ %prev_group_bh.0, %do.body183 ], [ %prev_group_bh.0, %if.end161.bail_crit_edge ], [ %prev_group_bh.0, %if.end161.bail_crit_edge512 ], [ %prev_group_bh.0, %if.end161.bail_crit_edge513 ], [ %prev_group_bh.0, %if.end161.bail_crit_edge514 ], [ %prev_group_bh.0, %if.end161.bail_crit_edge515 ], [ %prev_group_bh.0, %do.body218 ], [ %prev_group_bh.0, %if.then199.bail_crit_edge ], [ %prev_group_bh.0, %if.then199.bail_crit_edge516 ], [ %prev_group_bh.0, %if.then199.bail_crit_edge517 ], [ %prev_group_bh.0, %if.then199.bail_crit_edge518 ], [ %prev_group_bh.0, %out_loc_only ], [ %prev_group_bh.0, %do.body83.i ], [ %group_bh.1, %do.body49 ], [ %group_bh.1, %if.then32.bail_crit_edge ], [ %group_bh.1, %if.then32.bail_crit_edge503 ], [ %group_bh.1, %if.then32.bail_crit_edge504 ], [ %group_bh.1, %if.then32.bail_crit_edge505 ], [ %prev_group_bh.0, %if.then68.i.bail_crit_edge ], [ %prev_group_bh.0, %if.then68.i.bail_crit_edge509 ], [ %prev_group_bh.0, %if.then68.i.bail_crit_edge510 ], [ %prev_group_bh.0, %if.then68.i.bail_crit_edge511 ], [ %prev_group_bh.0, %if.then64.bail_crit_edge506 ], [ %prev_group_bh.0, %if.then64.bail_crit_edge507 ], [ %prev_group_bh.0, %if.then64.bail_crit_edge508 ], [ %prev_group_bh.0, %do.body84 ], [ %prev_group_bh.0, %while.body.bail_crit_edge ]
  %status.2 = phi i32 [ %call22, %if.then64.bail_crit_edge ], [ %call164, %do.body183 ], [ %call164, %if.end161.bail_crit_edge ], [ %call164, %if.end161.bail_crit_edge512 ], [ %call164, %if.end161.bail_crit_edge513 ], [ %call164, %if.end161.bail_crit_edge514 ], [ %call164, %if.end161.bail_crit_edge515 ], [ %call196, %do.body218 ], [ %call196, %if.then199.bail_crit_edge ], [ %call196, %if.then199.bail_crit_edge516 ], [ %call196, %if.then199.bail_crit_edge517 ], [ %call196, %if.then199.bail_crit_edge518 ], [ %status.1, %out_loc_only ], [ %status.0.ph.i, %do.body83.i ], [ %rc.0.i383, %do.body49 ], [ %rc.0.i383, %if.then32.bail_crit_edge ], [ %rc.0.i383, %if.then32.bail_crit_edge503 ], [ %rc.0.i383, %if.then32.bail_crit_edge504 ], [ %rc.0.i383, %if.then32.bail_crit_edge505 ], [ %status.0.ph.i, %if.then68.i.bail_crit_edge ], [ %status.0.ph.i, %if.then68.i.bail_crit_edge509 ], [ %status.0.ph.i, %if.then68.i.bail_crit_edge510 ], [ %status.0.ph.i, %if.then68.i.bail_crit_edge511 ], [ %call22, %if.then64.bail_crit_edge506 ], [ %call22, %if.then64.bail_crit_edge507 ], [ %call22, %if.then64.bail_crit_edge508 ], [ %call22, %do.body84 ], [ -28, %while.body.bail_crit_edge ]
  %tobool.not.i391 = icmp eq ptr %group_bh.3, null
  br i1 %tobool.not.i391, label %bail.brelse.exit394_crit_edge, label %if.then.i392

bail.brelse.exit394_crit_edge:                    ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit394

if.then.i392:                                     ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %group_bh.3) #13
  br label %brelse.exit394

brelse.exit394:                                   ; preds = %if.then.i392, %bail.brelse.exit394_crit_edge
  %tobool.not.i395 = icmp eq ptr %prev_group_bh.1, null
  br i1 %tobool.not.i395, label %brelse.exit394.brelse.exit398_crit_edge, label %if.then.i396

brelse.exit394.brelse.exit398_crit_edge:          ; preds = %brelse.exit394
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit398

if.then.i396:                                     ; preds = %brelse.exit394
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %prev_group_bh.1) #13
  br label %brelse.exit398

brelse.exit398:                                   ; preds = %if.then.i396, %brelse.exit394.brelse.exit398_crit_edge, %do.body, %if.then.brelse.exit398_crit_edge, %if.then.brelse.exit398_crit_edge500, %if.then.brelse.exit398_crit_edge501, %if.then.brelse.exit398_crit_edge502
  %status.2448452 = phi i32 [ %status.2, %brelse.exit394.brelse.exit398_crit_edge ], [ %status.2, %if.then.i396 ], [ %rc.0.i, %if.then.brelse.exit398_crit_edge ], [ %rc.0.i, %if.then.brelse.exit398_crit_edge500 ], [ %rc.0.i, %if.then.brelse.exit398_crit_edge501 ], [ %rc.0.i, %if.then.brelse.exit398_crit_edge502 ], [ %rc.0.i, %do.body ]
  %138 = zext i32 %status.2448452 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %status.2448452, label %do.body249 [
    i32 0, label %brelse.exit398.if.end260_crit_edge
    i32 -512, label %brelse.exit398.if.end260_crit_edge519
    i32 -4, label %brelse.exit398.if.end260_crit_edge520
    i32 524289, label %brelse.exit398.if.end260_crit_edge521
    i32 -28, label %brelse.exit398.if.end260_crit_edge522
    i32 -122, label %brelse.exit398.if.end260_crit_edge523
  ]

brelse.exit398.if.end260_crit_edge523:            ; preds = %brelse.exit398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260

brelse.exit398.if.end260_crit_edge522:            ; preds = %brelse.exit398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260

brelse.exit398.if.end260_crit_edge521:            ; preds = %brelse.exit398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260

brelse.exit398.if.end260_crit_edge520:            ; preds = %brelse.exit398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260

brelse.exit398.if.end260_crit_edge519:            ; preds = %brelse.exit398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260

brelse.exit398.if.end260_crit_edge:               ; preds = %brelse.exit398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260

do.body249:                                       ; preds = %brelse.exit398
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m250) #13
  %139 = ptrtoint ptr %_m250 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 1152921504606846976, ptr %_m250, align 8
  %conv254 = sext i32 %status.2448452 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m250, ptr noundef nonnull @__func__.ocfs2_search_chain, i32 noundef 1871, ptr noundef nonnull @.str.1, i64 noundef %conv254) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m250) #13
  br label %if.end260

if.end260:                                        ; preds = %do.body249, %brelse.exit398.if.end260_crit_edge, %brelse.exit398.if.end260_crit_edge519, %brelse.exit398.if.end260_crit_edge520, %brelse.exit398.if.end260_crit_edge521, %brelse.exit398.if.end260_crit_edge522, %brelse.exit398.if.end260_crit_edge523
  ret i32 %status.2448452
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_claim_suballoc_bits(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_claim_suballoc_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_claim_suballoc_bits, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !301
  %call42 = tail call i32 @__traceiter_ocfs2_claim_suballoc_bits(ptr noundef null, i32 noundef %num) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !302
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_claim_suballoc_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_claim_suballoc_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_claim_suballoc_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_claim_suballoc_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 830, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_bg_discontig_fix_result(ptr nocapture noundef readonly %ac, ptr nocapture noundef readonly %bg, ptr nocapture noundef %res) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %res, align 8
  %ac_bh = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %2 = ptrtoint ptr %ac_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %6 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap_blkno.i = getelementptr inbounds %struct.ocfs2_super, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %bitmap_blkno.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bitmap_blkno.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -1608
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp.i.not = icmp eq i64 %13, %15
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sr_blkno = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 2
  %16 = ptrtoint ptr %sr_blkno to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %sr_blkno, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sr_bit_offset = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 3
  %17 = ptrtoint ptr %sr_bit_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sr_bit_offset, align 8
  %conv = zext i32 %18 to i64
  %add = add i64 %1, %conv
  %sr_blkno2 = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 2
  %19 = ptrtoint ptr %sr_blkno2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add, ptr %sr_blkno2, align 8
  %20 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %res, align 8
  %21 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ac, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_feature_incompat.i, align 8
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.not = icmp eq i32 %29, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %l_next_free_rec = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg, i32 0, i32 12, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %l_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %l_next_free_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool7.not = icmp eq i16 %31, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %l_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %l_next_free_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp41.not = icmp eq i16 %33, 0
  br i1 %cmp41.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %l_recs = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg, i32 1
  %cl_bpc.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 35, i32 0, i32 1
  %35 = ptrtoint ptr %cl_bpc.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cl_bpc.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #13
  %conv.i37 = zext i16 %37 to i32
  %38 = call i16 @llvm.umax.i16(i16 %34, i16 1)
  %umax = zext i16 %38 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.ocfs2_extent_rec], ptr %l_recs, i32 0, i32 %i.042
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  %mul.i = mul i32 %41, %conv.i37
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %mul.i)
  %cmp.i38 = icmp ult i32 %18, %mul.i
  br i1 %cmp.i38, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %42 = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #13
  %conv1.i = zext i16 %45 to i32
  %mul2.i = mul nuw i32 %conv1.i, %conv.i37
  %add.i = add i32 %mul2.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %18)
  %cmp5.not.i = icmp ugt i32 %add.i, %18
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end8.i:                                        ; preds = %if.end.i
  %e_blkno.i = getelementptr inbounds %struct.ocfs2_extent_rec, ptr %arrayidx, i32 0, i32 2
  %46 = ptrtoint ptr %e_blkno.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %e_blkno.i, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %47) #13
  %sub.i = sub i32 %18, %mul.i
  %conv10.i = zext i32 %sub.i to i64
  %add11.i = add i64 %48, %conv10.i
  %49 = ptrtoint ptr %sr_blkno2 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add11.i, ptr %sr_blkno2, align 8
  %sr_bits.i = getelementptr inbounds %struct.ocfs2_suballoc_result, ptr %res, i32 0, i32 4
  %50 = ptrtoint ptr %sr_bits.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sr_bits.i, align 4
  %add13.i = add i32 %51, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %add.i)
  %cmp15.i = icmp ugt i32 %add13.i, %add.i
  br i1 %cmp15.i, label %if.then17.i, label %if.end8.i.if.then17_crit_edge

if.end8.i.if.then17_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then17.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub20.i = sub i32 %add.i, %18
  %52 = ptrtoint ptr %sr_bits.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub20.i, ptr %sr_bits.i, align 4
  br label %if.then17

if.then17:                                        ; preds = %if.then17.i, %if.end8.i.if.then17_crit_edge
  %53 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %1, ptr %res, align 8
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then17, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_search_chain_begin(i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_search_chain_begin, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !303
  %call42 = tail call i32 @__traceiter_ocfs2_search_chain_begin(ptr noundef null, i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !304
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_search_chain_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_search_chain_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 824, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
define internal fastcc void @trace_ocfs2_search_chain_succ(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_succ, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_search_chain_succ, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !305
  %call42 = tail call i32 @__traceiter_ocfs2_search_chain_succ(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !306
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_succ, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_succ, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_search_chain_succ.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_search_chain_succ.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 826, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
define internal fastcc void @trace_ocfs2_search_chain_end(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_search_chain_end, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !307
  %call42 = tail call i32 @__traceiter_ocfs2_search_chain_end(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !308
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_search_chain_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_search_chain_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_search_chain_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 828, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_search_chain_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_search_chain_succ(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_relink_block_group(i64 noundef %i_blkno, i32 noundef %chain, i64 noundef %bg_blkno, i64 noundef %prev_blkno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_relink_block_group, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_relink_block_group, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !309
  %call42 = tail call i32 @__traceiter_ocfs2_relink_block_group(ptr noundef null, i64 noundef %i_blkno, i32 noundef %chain, i64 noundef %bg_blkno, i64 noundef %prev_blkno) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !310
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_relink_block_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_relink_block_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_relink_block_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_relink_block_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 816, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_relink_block_group(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_search_chain_end(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_claim_suballoc_bits(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_claim_new_inode_at_loc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_free_suballoc_bits(i64 noundef %inode, i64 noundef %group, i32 noundef %start_bit, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_free_suballoc_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_free_suballoc_bits, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !311
  %call42 = tail call i32 @__traceiter_ocfs2_free_suballoc_bits(ptr noundef null, i64 noundef %inode, i64 noundef %group, i32 noundef %start_bit, i32 noundef %count) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !312
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_free_suballoc_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_free_suballoc_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_free_suballoc_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_free_suballoc_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 854, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_free_suballoc_bits(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_block_group_clear_bits(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_clear_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_block_group_clear_bits, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !313
  %call42 = tail call i32 @__traceiter_ocfs2_block_group_clear_bits(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !314
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_clear_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_block_group_clear_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_block_group_clear_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_block_group_clear_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 834, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_block_group_clear_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_free_clusters(i64 noundef %bg_blkno, i64 noundef %start_blk, i32 noundef %start_bit, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_free_clusters, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_free_clusters, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !315
  %call42 = tail call i32 @__traceiter_ocfs2_free_clusters(ptr noundef null, i64 noundef %bg_blkno, i64 noundef %start_blk, i32 noundef %start_bit, i32 noundef %count) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !316
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_free_clusters, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_free_clusters, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_free_clusters.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_free_clusters.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 874, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_free_clusters(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_test_inode_bit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_get_suballoc_slot_bit(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_suballoc_slot_bit, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_get_suballoc_slot_bit, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !317
  %call42 = tail call i32 @__traceiter_ocfs2_get_suballoc_slot_bit(ptr noundef null, i64 noundef %num) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !318
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_suballoc_slot_bit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_suballoc_slot_bit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_get_suballoc_slot_bit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_get_suballoc_slot_bit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 876, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @ocfs2_read_blocks_sync(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_get_suballoc_slot_bit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_test_suballoc_bit(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_test_suballoc_bit, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_test_suballoc_bit, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !215

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !319
  %call42 = tail call i32 @__traceiter_ocfs2_test_suballoc_bit(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !320
  %13 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !215

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !201) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_test_suballoc_bit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_test_suballoc_bit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_test_suballoc_bit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ocfs2_test_suballoc_bit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 878, ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !201) #13
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
declare dso_local i32 @__traceiter_ocfs2_test_suballoc_bit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !37, !39, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !81, !83, !84, !86, !87, !89, !90, !92, !94, !95, !97, !99, !100, !102, !103, !105, !107, !109, !110, !112, !114, !116, !117, !119, !120, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !141, !143, !145, !146, !148, !149, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !167, !168, !170, !172, !174, !175, !177, !179, !180, !182, !183, !185, !186, !188, !190, !192, !193, !195, !196, !198, !200}
!llvm.named.register.sp = !{!201}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @__func__.ocfs2_check_group_descriptor, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/suballoc.c", i32 255, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_reserve_new_metadata_blocks, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/suballoc.c", i32 965, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.ocfs2_reserve_new_inode, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/suballoc.c", i32 1036, i32 3}
!8 = !{ptr @__func__.ocfs2_reserve_cluster_bitmap_bits, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/suballoc.c", i32 1133, i32 3}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/suballoc.c", i32 1348, i32 2}
!12 = !{ptr @__func__.ocfs2_block_group_set_bits, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/suballoc.c", i32 1361, i32 3}
!14 = !{ptr @__PRETTY_FUNCTION__.ocfs2_block_group_set_bits, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/suballoc.c", i32 1367, i32 10}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.ocfs2_alloc_dinode_update_counts, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/suballoc.c", i32 1591, i32 3}
!19 = !{ptr @__func__.ocfs2_claim_metadata, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/suballoc.c", i32 2008, i32 3}
!21 = !{ptr @__func__.ocfs2_find_new_inode_loc, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/suballoc.c", i32 2077, i32 3}
!23 = !{ptr @__func__.ocfs2_claim_new_inode_at_loc, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/suballoc.c", i32 2146, i32 3}
!25 = !{ptr @__func__.ocfs2_claim_new_inode, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/suballoc.c", i32 2216, i32 3}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/suballoc.c", i32 2314, i32 3}
!29 = !{ptr @__func__.__ocfs2_claim_clusters, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/suballoc.c", i32 2328, i32 4}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__func__.ocfs2_lock_allocators, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ocfs2/suballoc.c", i32 2639, i32 3}
!34 = !{ptr @__func__.ocfs2_test_inode_bit, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/suballoc.c", i32 2823, i32 3}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/suballoc.c", i32 2837, i32 3}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/suballoc.c", i32 2847, i32 3}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/suballoc.c", i32 2855, i32 3}
!43 = !{ptr @__func__.ocfs2_validate_gd_self, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/suballoc.c", i32 164, i32 3}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__PRETTY_FUNCTION__.ocfs2_validate_gd_self, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/suballoc.c", i32 170, i32 3}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/suballoc.c", i32 176, i32 3}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/suballoc.c", i32 182, i32 3}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/suballoc.c", i32 189, i32 3}
!55 = !{ptr @__func__.ocfs2_validate_gd_parent, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/suballoc.c", i32 207, i32 3}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__PRETTY_FUNCTION__.ocfs2_validate_gd_parent, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/suballoc.c", i32 215, i32 3}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/suballoc.c", i32 225, i32 3}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/buffer_head_io.h", i32 47, i32 3}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ocfs2_read_block._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @ocfs2_read_block._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 780, i32 1}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__func__.ocfs2_reserve_suballoc_bits, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/suballoc.c", i32 778, i32 3}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/suballoc.c", i32 800, i32 2}
!81 = !{ptr @__PRETTY_FUNCTION__.ocfs2_reserve_suballoc_bits, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ocfs2/suballoc.c", i32 803, i32 12}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 788, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 790, i32 1}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = !{ptr @__func__.ocfs2_block_group_alloc, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/suballoc.c", i32 675, i32 4}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 786, i32 1}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = !{ptr @__func__.ocfs2_block_group_alloc_contig, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ocfs2/suballoc.c", i32 433, i32 4}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 782, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = !{ptr @__PRETTY_FUNCTION__.ocfs2_block_group_fill, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ocfs2/suballoc.c", i32 354, i32 12}
!102 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @__func__.ocfs2_block_group_fill, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ocfs2/suballoc.c", i32 366, i32 3}
!105 = !{ptr @__func__.ocfs2_block_group_alloc_discontig, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ocfs2/suballoc.c", i32 595, i32 3}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 784, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = !{ptr @__func__.ocfs2_block_group_grow_discontig, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ocfs2/suballoc.c", i32 503, i32 3}
!112 = !{ptr @__func__.ocfs2_bg_alloc_cleanup, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ocfs2/suballoc.c", i32 565, i32 4}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!116 = !{ptr @.str.27, !115, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 792, i32 1}
!119 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!120 = !{ptr @__func__.ocfs2_reserve_clusters_with_limit, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ocfs2/suballoc.c", i32 1152, i32 3}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 794, i32 1}
!124 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 818, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 820, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 822, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = !{ptr @__PRETTY_FUNCTION__.ocfs2_claim_suballoc_bits, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ocfs2/suballoc.c", i32 1901, i32 12}
!136 = !{ptr @.str.28, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @__func__.ocfs2_claim_suballoc_bits, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ocfs2/suballoc.c", i32 1920, i32 4}
!139 = !{ptr @__func__.ocfs2_search_one_group, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ocfs2/suballoc.c", i32 1684, i32 3}
!141 = !{ptr @__func__.ocfs2_search_chain, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ocfs2/suballoc.c", i32 1761, i32 3}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 824, i32 1}
!145 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 826, i32 1}
!148 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!149 = !{ptr @__func__.ocfs2_relink_block_group, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ocfs2/suballoc.c", i32 1456, i32 3}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 796, i32 1}
!153 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!154 = distinct !{null, !155, !"__already_done", i1 false, i1 false}
!155 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 828, i32 1}
!156 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 830, i32 1}
!159 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 832, i32 1}
!162 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!163 = !{ptr @__func__._ocfs2_free_suballoc_bits, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ocfs2/suballoc.c", i32 2479, i32 3}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 836, i32 1}
!167 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!168 = !{ptr @__func__.ocfs2_block_group_clear_bits, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ocfs2/suballoc.c", i32 2406, i32 3}
!170 = !{ptr @__PRETTY_FUNCTION__.ocfs2_block_group_clear_bits, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ocfs2/suballoc.c", i32 2429, i32 10}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 834, i32 1}
!174 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!175 = !{ptr @__func__._ocfs2_free_clusters, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ocfs2/suballoc.c", i32 2573, i32 3}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 856, i32 1}
!179 = distinct !{null, !178, !"__warned", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 880, i32 1}
!182 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!183 = !{ptr @__func__.ocfs2_get_suballoc_slot_bit, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/ocfs2/suballoc.c", i32 2708, i32 3}
!185 = !{ptr @.str.29, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.30, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ocfs2/suballoc.c", i32 2715, i32 3}
!188 = !{ptr @.str.31, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ocfs2/suballoc.c", i32 2723, i32 3}
!190 = distinct !{null, !191, !"__already_done", i1 false, i1 false}
!191 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 876, i32 1}
!192 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!193 = !{ptr @__func__.ocfs2_test_suballoc_bit, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ocfs2/suballoc.c", i32 2769, i32 3}
!195 = !{ptr @.str.32, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.33, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ocfs2/suballoc.c", i32 2781, i32 3}
!198 = distinct !{null, !199, !"__already_done", i1 false, i1 false}
!199 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 878, i32 1}
!200 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!201 = !{!"sp"}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{i64 2161248772, i64 2161249256, i64 2161248809, i64 2161248865, i64 2161248899, i64 2161248923, i64 2161248964, i64 2161248985, i64 2161249013, i64 2161249047}
!213 = !{i64 2161250684, i64 2161251168, i64 2161250721, i64 2161250777, i64 2161250811, i64 2161250835, i64 2161250876, i64 2161250897, i64 2161250925, i64 2161250959}
!214 = !{i64 2148726854, i64 2148726880, i64 2148726909, i64 2148726943, i64 2148726974, i64 2148726997}
!215 = !{!"branch_weights", i32 2000, i32 1}
!216 = !{i64 2161311893, i64 2161312378, i64 2161311930, i64 2161311986, i64 2161312020, i64 2161312044, i64 2161312085, i64 2161312106, i64 2161312134, i64 2161312168}
!217 = !{i64 2161313512, i64 2161313997, i64 2161313549, i64 2161313605, i64 2161313639, i64 2161313663, i64 2161313704, i64 2161313725, i64 2161313753, i64 2161313787}
!218 = !{i64 2161274549, i64 2161275033, i64 2161274586, i64 2161274642, i64 2161274676, i64 2161274700, i64 2161274741, i64 2161274762, i64 2161274790, i64 2161274824}
!219 = !{!"auto-init"}
!220 = !{i64 2161252306, i64 2161252790, i64 2161252343, i64 2161252399, i64 2161252433, i64 2161252457, i64 2161252498, i64 2161252519, i64 2161252547, i64 2161252581}
!221 = !{i64 2152571616}
!222 = !{i64 2150047921}
!223 = !{i64 2150052855}
!224 = !{i64 2150074573}
!225 = !{i64 2150079467}
!226 = !{i64 2150155994}
!227 = !{i64 2150156319}
!228 = !{i64 2152583478}
!229 = !{i64 2161278121, i64 2161278605, i64 2161278158, i64 2161278214, i64 2161278248, i64 2161278272, i64 2161278313, i64 2161278334, i64 2161278362, i64 2161278396}
!230 = !{i64 2148551452, i64 2148551457, i64 2148551470, i64 2148551514, i64 2148551548, i64 2148551569}
!231 = !{i64 2156007542}
!232 = !{i64 2156007777}
!233 = !{i64 2149547859}
!234 = !{i64 2149548895}
!235 = !{i64 2161309742, i64 2161310227, i64 2161309779, i64 2161309835, i64 2161309869, i64 2161309893, i64 2161309934, i64 2161309955, i64 2161309983, i64 2161310017}
!236 = !{i64 2161291020, i64 2161291505, i64 2161291057, i64 2161291113, i64 2161291147, i64 2161291171, i64 2161291212, i64 2161291233, i64 2161291261, i64 2161291295}
!237 = !{i64 2161292934, i64 2161293419, i64 2161292971, i64 2161293027, i64 2161293061, i64 2161293085, i64 2161293126, i64 2161293147, i64 2161293175, i64 2161293209}
!238 = !{i64 2156025349}
!239 = !{i64 2156025584}
!240 = !{i64 2161336104, i64 2161336589, i64 2161336141, i64 2161336197, i64 2161336231, i64 2161336255, i64 2161336296, i64 2161336317, i64 2161336345, i64 2161336379}
!241 = !{i64 2161337771, i64 2161338256, i64 2161337808, i64 2161337864, i64 2161337898, i64 2161337922, i64 2161337963, i64 2161337984, i64 2161338012, i64 2161338046}
!242 = !{i64 2161339366, i64 2161339851, i64 2161339403, i64 2161339459, i64 2161339493, i64 2161339517, i64 2161339558, i64 2161339579, i64 2161339607, i64 2161339641}
!243 = !{i64 2161326221, i64 2161326706, i64 2161326258, i64 2161326314, i64 2161326348, i64 2161326372, i64 2161326413, i64 2161326434, i64 2161326462, i64 2161326496}
!244 = !{i64 2161327888, i64 2161328373, i64 2161327925, i64 2161327981, i64 2161328015, i64 2161328039, i64 2161328080, i64 2161328101, i64 2161328129, i64 2161328163}
!245 = !{i64 2161329467, i64 2161329952, i64 2161329504, i64 2161329560, i64 2161329594, i64 2161329618, i64 2161329659, i64 2161329680, i64 2161329708, i64 2161329742}
!246 = !{i64 2161331180, i64 2161331665, i64 2161331217, i64 2161331273, i64 2161331307, i64 2161331331, i64 2161331372, i64 2161331393, i64 2161331421, i64 2161331455}
!247 = !{i64 2161300401, i64 2161300886, i64 2161300438, i64 2161300494, i64 2161300528, i64 2161300552, i64 2161300593, i64 2161300614, i64 2161300642, i64 2161300676}
!248 = !{i64 2161302788, i64 2161303273, i64 2161302825, i64 2161302881, i64 2161302915, i64 2161302939, i64 2161302980, i64 2161303001, i64 2161303029, i64 2161303063}
!249 = !{i64 2161342831, i64 2161343316, i64 2161342868, i64 2161342924, i64 2161342958, i64 2161342982, i64 2161343023, i64 2161343044, i64 2161343072, i64 2161343106}
!250 = !{i64 2161344434, i64 2161344919, i64 2161344471, i64 2161344527, i64 2161344561, i64 2161344585, i64 2161344626, i64 2161344647, i64 2161344675, i64 2161344709}
!251 = !{i64 2161346039, i64 2161346524, i64 2161346076, i64 2161346132, i64 2161346166, i64 2161346190, i64 2161346231, i64 2161346252, i64 2161346280, i64 2161346314}
!252 = !{i64 2161351695, i64 2161352180, i64 2161351732, i64 2161351788, i64 2161351822, i64 2161351846, i64 2161351887, i64 2161351908, i64 2161351936, i64 2161351970}
!253 = !{i64 2161355165, i64 2161355650, i64 2161355202, i64 2161355258, i64 2161355292, i64 2161355316, i64 2161355357, i64 2161355378, i64 2161355406, i64 2161355440}
!254 = !{i64 2161358539, i64 2161359024, i64 2161358576, i64 2161358632, i64 2161358666, i64 2161358690, i64 2161358731, i64 2161358752, i64 2161358780, i64 2161358814}
!255 = !{i64 2156200778}
!256 = !{i64 2156201017}
!257 = !{i64 2161360104, i64 2161360589, i64 2161360141, i64 2161360197, i64 2161360231, i64 2161360255, i64 2161360296, i64 2161360317, i64 2161360345, i64 2161360379}
!258 = !{i64 2161361707, i64 2161362192, i64 2161361744, i64 2161361800, i64 2161361834, i64 2161361858, i64 2161361899, i64 2161361920, i64 2161361948, i64 2161361982}
!259 = !{i64 2161363312, i64 2161363797, i64 2161363349, i64 2161363405, i64 2161363439, i64 2161363463, i64 2161363504, i64 2161363525, i64 2161363553, i64 2161363587}
!260 = !{i64 2161364907, i64 2161365392, i64 2161364944, i64 2161365000, i64 2161365034, i64 2161365058, i64 2161365099, i64 2161365120, i64 2161365148, i64 2161365182}
!261 = !{i64 2161367087, i64 2161367572, i64 2161367124, i64 2161367180, i64 2161367214, i64 2161367238, i64 2161367279, i64 2161367300, i64 2161367328, i64 2161367362}
!262 = !{i64 2161371132, i64 2161371617, i64 2161371169, i64 2161371225, i64 2161371259, i64 2161371283, i64 2161371324, i64 2161371345, i64 2161371373, i64 2161371407}
!263 = !{i64 2161374670, i64 2161375155, i64 2161374707, i64 2161374763, i64 2161374797, i64 2161374821, i64 2161374862, i64 2161374883, i64 2161374911, i64 2161374945}
!264 = !{i64 2161376309, i64 2161376794, i64 2161376346, i64 2161376402, i64 2161376436, i64 2161376460, i64 2161376501, i64 2161376522, i64 2161376550, i64 2161376584}
!265 = !{i64 2161378741, i64 2161379226, i64 2161378778, i64 2161378834, i64 2161378868, i64 2161378892, i64 2161378933, i64 2161378954, i64 2161378982, i64 2161379016}
!266 = !{i64 2161369459, i64 2161369944, i64 2161369496, i64 2161369552, i64 2161369586, i64 2161369610, i64 2161369651, i64 2161369672, i64 2161369700, i64 2161369734}
!267 = !{i64 2161388163, i64 2161388648, i64 2161388200, i64 2161388256, i64 2161388290, i64 2161388314, i64 2161388355, i64 2161388376, i64 2161388404, i64 2161388438}
!268 = !{i64 2161393875, i64 2161394360, i64 2161393912, i64 2161393968, i64 2161394002, i64 2161394026, i64 2161394067, i64 2161394088, i64 2161394116, i64 2161394150}
!269 = !{i64 2161396309, i64 2161396794, i64 2161396346, i64 2161396402, i64 2161396436, i64 2161396460, i64 2161396501, i64 2161396522, i64 2161396550, i64 2161396584}
!270 = !{i64 2161381537, i64 2161382022, i64 2161381574, i64 2161381630, i64 2161381664, i64 2161381688, i64 2161381729, i64 2161381750, i64 2161381778, i64 2161381812}
!271 = !{i64 2161383192, i64 2161383677, i64 2161383229, i64 2161383285, i64 2161383319, i64 2161383343, i64 2161383384, i64 2161383405, i64 2161383433, i64 2161383467}
!272 = !{i64 2161385301, i64 2161385786, i64 2161385338, i64 2161385394, i64 2161385428, i64 2161385452, i64 2161385493, i64 2161385514, i64 2161385542, i64 2161385576}
!273 = !{ptr @_ocfs2_clear_bit, ptr @_ocfs2_set_bit}
!274 = !{i64 2161400068, i64 2161400553, i64 2161400105, i64 2161400161, i64 2161400195, i64 2161400219, i64 2161400260, i64 2161400281, i64 2161400309, i64 2161400343}
!275 = !{i64 2161372974, i64 2161373459, i64 2161373011, i64 2161373067, i64 2161373101, i64 2161373125, i64 2161373166, i64 2161373187, i64 2161373215, i64 2161373249}
!276 = !{i64 2161402396, i64 2161402881, i64 2161402433, i64 2161402489, i64 2161402523, i64 2161402547, i64 2161402588, i64 2161402609, i64 2161402637, i64 2161402671}
!277 = !{i64 2156315062}
!278 = !{i64 2156315271}
!279 = !{i64 2155890909}
!280 = !{i64 2155891140}
!281 = !{i64 2155966057}
!282 = !{i64 2155966306}
!283 = !{i64 2155985069}
!284 = !{i64 2155985356}
!285 = !{i64 2155948517}
!286 = !{i64 2155948732}
!287 = !{i64 2155908853}
!288 = !{i64 2155909096}
!289 = !{i64 2155926956}
!290 = !{i64 2155927205}
!291 = !{i64 2156067343}
!292 = !{i64 2156067642}
!293 = !{i64 2161289250, i64 2161289735, i64 2161289287, i64 2161289343, i64 2161289377, i64 2161289401, i64 2161289442, i64 2161289463, i64 2161289491, i64 2161289525}
!294 = !{i64 2156086478}
!295 = !{i64 2156086733}
!296 = !{i64 2156105045}
!297 = !{i64 2156105296}
!298 = !{i64 2161322164, i64 2161322649, i64 2161322201, i64 2161322257, i64 2161322291, i64 2161322315, i64 2161322356, i64 2161322377, i64 2161322405, i64 2161322439}
!299 = !{i64 2161304509, i64 2161304994, i64 2161304546, i64 2161304602, i64 2161304636, i64 2161304660, i64 2161304701, i64 2161304722, i64 2161304750, i64 2161304784}
!300 = !{i64 2161306245, i64 2161306730, i64 2161306282, i64 2161306338, i64 2161306372, i64 2161306396, i64 2161306437, i64 2161306458, i64 2161306486, i64 2161306520}
!301 = !{i64 2156183248}
!302 = !{i64 2156183467}
!303 = !{i64 2156127511}
!304 = !{i64 2156127754}
!305 = !{i64 2156144996}
!306 = !{i64 2156145225}
!307 = !{i64 2156162292}
!308 = !{i64 2156162519}
!309 = !{i64 2156043943}
!310 = !{i64 2156044226}
!311 = !{i64 2156240988}
!312 = !{i64 2156241259}
!313 = !{i64 2156218489}
!314 = !{i64 2156218728}
!315 = !{i64 2156259463}
!316 = !{i64 2156259738}
!317 = !{i64 2156276703}
!318 = !{i64 2156276926}
!319 = !{i64 2156294158}
!320 = !{i64 2156294387}
