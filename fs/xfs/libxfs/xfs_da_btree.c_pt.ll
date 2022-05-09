; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_da_btree.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_da_btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_da_state = type { ptr, ptr, %struct.xfs_da_state_path, %struct.xfs_da_state_path, i8, i8, i8, %struct.xfs_da_state_blk }
%struct.xfs_da_state_path = type { i32, [5 x %struct.xfs_da_state_blk] }
%struct.xfs_da_state_blk = type { ptr, i32, i64, i32, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_da3_icnode_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_da3_node_hdr = type { %struct.xfs_da3_blkinfo, i16, i16, i32 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_da3_intnode = type { %struct.xfs_da3_node_hdr, [0 x %struct.xfs_da_node_entry] }
%struct.xfs_da_node_entry = type { i32, i32 }
%struct.xfs_da_node_hdr = type { %struct.xfs_da_blkinfo, i16, i16 }
%struct.xfs_da_intnode = type { %struct.xfs_da_node_hdr, [0 x %struct.xfs_da_node_entry] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }

@xfs_da_state_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"to->magic == XFS_DA3_NODE_MAGIC\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/xfs/libxfs/xfs_da_btree.c\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"to->magic == XFS_DA_NODE_MAGIC\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"from->magic == XFS_DA3_NODE_MAGIC\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"from->magic == XFS_DA_NODE_MAGIC\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_da3_node\00", [19 x i8] zeroinitializer }, align 32
@xfs_da3_node_buf_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str.5, { [2 x i16], [4 x i8] } { [2 x i16] [i16 -322, i16 16062], [4 x i8] undef }, ptr @xfs_da3_node_read_verify, ptr @xfs_da3_node_write_verify, ptr @xfs_da3_node_verify_struct }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"level <= XFS_DA_NODE_MAXDEPTH\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(max >= 0) && (max < XFS_DA_NODE_MAXDEPTH)\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"state->path.blk[max].magic == XFS_ATTR_LEAF_MAGIC || state->path.blk[max].magic == XFS_DIR2_LEAFN_MAGIC\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"state->extravalid == 0 || state->path.blk[max].magic == XFS_DIR2_LEAFN_MAGIC\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"state->path.active == 0\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"state->path.blk[0].magic == XFS_DA_NODE_MAGIC\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"drop_blk->magic == XFS_ATTR_LEAF_MAGIC || drop_blk->magic == XFS_DIR2_LEAFN_MAGIC\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(probe >= 0) && (probe < max)\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(span <= 4) || (be32_to_cpu(btree[probe].hashval) == hashval)\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"blkno == args->geo->leafblk\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"expected_level != 0\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"args != NULL\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"old_blk->magic == XFS_DA_NODE_MAGIC || old_blk->magic == XFS_DIR2_LEAFN_MAGIC || old_blk->magic == XFS_ATTR_LEAF_MAGIC\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bp != NULL\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tmp_info->magic == old_info->magic\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"be32_to_cpu(tmp_info->forw) == old_blk->blkno\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"be32_to_cpu(tmp_info->back) == old_blk->blkno\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"path != NULL\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(path->active > 0) && (path->active < XFS_DA_NODE_MAXDEPTH)\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"args->op_flags & XFS_DA_OP_OKNOENT\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [303 x i8], [81 x i8] } { [303 x i8] c"info->magic == cpu_to_be16(XFS_DA_NODE_MAGIC) || info->magic == cpu_to_be16(XFS_DA3_NODE_MAGIC) || info->magic == cpu_to_be16(XFS_DIR2_LEAFN_MAGIC) || info->magic == cpu_to_be16(XFS_DIR3_LEAFN_MAGIC) || info->magic == cpu_to_be16(XFS_ATTR_LEAF_MAGIC) || info->magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC)\00", [81 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"level == path->active-1\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmap <= 1\00", [22 x i8] zeroinitializer }, align 32
@xfs_attr3_leaf_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_dir3_leafn_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@__func__.xfs_da3_node_set_type = private unnamed_addr constant [22 x i8] c"xfs_da3_node_set_type\00", align 1
@__tracepoint_xfs_da_node_create = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_da_node_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_split = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_split_before = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_split_before.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_split_after = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_split_after.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"leafhdr.magic == XFS_DIR2_LEAFN_MAGIC || leafhdr.magic == XFS_DIR3_LEAFN_MAGIC\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"blk1->blkno >= args->geo->leafblk && blk1->blkno < args->geo->freeblk\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"blk2->blkno >= args->geo->leafblk && blk2->blkno < args->geo->freeblk\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_root_split = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_root_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_node_split = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_node_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_node_rebalance = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_node_rebalance.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"oldblk->index >= 0 && oldblk->index <= nodehdr.count\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"newblk->blkno != 0\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"newblk->blkno >= state->args->geo->leafblk && newblk->blkno < state->args->geo->freeblk\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_node_add = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_node_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_join = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_join.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"root_blk->magic == XFS_DA_NODE_MAGIC\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"oldroothdr.forw == 0\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"oldroothdr.back == 0\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"child != 0\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_root_join = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_root_join.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [180 x i8], [44 x i8] } { [180 x i8] c"magic == cpu_to_be16(XFS_DIR2_LEAFN_MAGIC) || magic == cpu_to_be16(XFS_DIR3_LEAFN_MAGIC) || magic == cpu_to_be16(XFS_ATTR_LEAF_MAGIC) || magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC)\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"magic == cpu_to_be16(XFS_DA_NODE_MAGIC) || magic == cpu_to_be16(XFS_DA3_NODE_MAGIC)\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!blkinfo->forw\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!blkinfo->back\00", [17 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_node_toosmall = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_node_toosmall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_fixhashpath = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_fixhashpath.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drop_blk->index < nodehdr.count\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drop_blk->index >= 0\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_node_remove = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_node_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_node_unbalance = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_node_unbalance.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_link_before = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_link_before.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_link_after = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_link_after.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"save_blk->magic == XFS_DA_NODE_MAGIC || save_blk->magic == XFS_DIR2_LEAFN_MAGIC || save_blk->magic == XFS_ATTR_LEAF_MAGIC\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"save_blk->magic == drop_blk->magic\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"(be32_to_cpu(save_info->forw) == drop_blk->blkno) || (be32_to_cpu(save_info->back) == drop_blk->blkno)\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"(be32_to_cpu(drop_info->forw) == save_blk->blkno) || (be32_to_cpu(drop_info->back) == save_blk->blkno)\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tmp_info->magic == save_info->magic\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"be32_to_cpu(tmp_info->forw) == drop_blk->blkno\00", [49 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"be32_to_cpu(tmp_info->back) == drop_blk->blkno\00", [49 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_unlink_back = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_unlink_back.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_unlink_forward = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_unlink_forward.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_path_shift = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_path_shift.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_grow_inode = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_grow_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_da_shrink_inode = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_shrink_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"w == XFS_DATA_FORK\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lastoff == 0\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"be32_to_cpu(sib_info->forw) != last_blkno || sib_info->magic != dead_info->magic\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"be32_to_cpu(sib_info->back) != last_blkno || sib_info->magic != dead_info->magic\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"level >= 0 && level != par_hdr.level + 1\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"entno == par_hdr.count\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"par_blkno == 0\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"par_hdr.level != level\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_da_swap_lastblock = external dso_local global %struct.tracepoint, align 4
@trace_xfs_da_swap_lastblock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!(flags & XFS_DABUF_MAP_HOLE_OK)\00", [63 x i8] zeroinitializer }, align 32
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: bno %u inode %llu\00", [42 x i8] zeroinitializer }, align 32
@__func__.xfs_dabuf_map = private unnamed_addr constant [14 x i8] c"xfs_dabuf_map\00", align 1
@.str.66 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"[%02d] br_startoff %lld br_startblock %lld br_blockcount %lld br_state %d\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 15342, i64 15871, i64 16062, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.67 = internal global [8 x i64] [i64 6, i64 16, i64 15342, i64 15871, i64 16062, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 16, i64 15342, i64 15871, i64 16062, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 54015, i64 64494]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 16062, i64 65214]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 15871, i64 54015]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 15871, i64 16062]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 15871, i64 54015]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 54015, i64 64494]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 16, i64 15342, i64 15871, i64 54015, i64 64494]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 16062, i64 65214]
@__sancov_gen_cov_switch_values.82 = internal global [8 x i64] [i64 6, i64 16, i64 15342, i64 15871, i64 16062, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 54015, i64 64494]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967294]
@__sancov_gen_cov_switch_values.85 = internal global [8 x i64] [i64 6, i64 16, i64 15342, i64 15871, i64 16062, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.86 = internal global [8 x i64] [i64 6, i64 16, i64 15342, i64 15871, i64 16062, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 15871, i64 54015]
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"xfs_da_state_cache\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 75, i32 20 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 141, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 149, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 162, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 169, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 332, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"xfs_da3_node_buf_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 331, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 436, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 492, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 493, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 573, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 579, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1071, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1072, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1676, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1677, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1705, i32 7 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1709, i32 6 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1727, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1807, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1810, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1842, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1844, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1845, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1866, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1989, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1990, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2009, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2038, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2067, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2166, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2082, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 108, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 690, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 745, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 747, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1018, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1019, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1021, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1182, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1187, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1188, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1201, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1148, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1153, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1156, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1157, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1449, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1450, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1901, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1904, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1905, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1907, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1924, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1925, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1942, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2287, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2293, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2340, i32 7 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2360, i32 7 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2383, i32 7 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2395, i32 7 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2420, i32 7 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2429, i32 7 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2557, i32 6 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2560, i32 18 }
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private constant [32 x i8] c"../fs/xfs/libxfs/xfs_da_btree.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 2565, i32 1 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @xfs_da_state_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xfs_da3_node_buf_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_da_state_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_da3_node_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 303, i32 384, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @xfs_da_state_alloc(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_da_state_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36160) #12
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %args, ptr %call.i, align 8
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %mp = getelementptr inbounds %struct.xfs_da_state, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %mp, align 4
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_da_state_free(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_da_state_kill_altpath(ptr noundef %state)
  %0 = call ptr @memset(ptr %state, i32 0, i32 384)
  %1 = load ptr, ptr @xfs_da_state_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %1, ptr noundef %state) #12
  ret void
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_da_state_kill_altpath(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %altpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %altpath, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 3, i32 1, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = ptrtoint ptr %altpath to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %altpath, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_da3_node_hdr_from_disk(ptr nocapture noundef readonly %mp, ptr nocapture noundef %to, ptr noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %from, align 8
  %4 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %to, align 4
  %back = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %back, align 4
  %back6 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 1
  %7 = ptrtoint ptr %back6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %back6, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 2
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %magic, align 8
  %magic10 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 2
  %10 = ptrtoint ptr %magic10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %magic10, align 4
  %__count = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %from, i32 0, i32 1
  %11 = ptrtoint ptr %__count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %__count, align 8
  %count = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 3
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %count, align 2
  %__level = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %from, i32 0, i32 2
  %14 = ptrtoint ptr %__level to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %__level, align 2
  %level = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 4
  %16 = ptrtoint ptr %level to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %level, align 4
  %__btree = getelementptr inbounds %struct.xfs_da3_intnode, ptr %from, i32 0, i32 1
  %btree = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 5
  %17 = ptrtoint ptr %btree to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %__btree, ptr %btree, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %9)
  %cmp = icmp eq i16 %9, 16062
  br i1 %cmp, label %if.then.if.end_crit_edge, label %cond.false, !prof !216

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %from, align 4
  %20 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %to, align 4
  %back22 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 1
  %21 = ptrtoint ptr %back22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %back22, align 4
  %back23 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 1
  %23 = ptrtoint ptr %back23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %back23, align 4
  %magic26 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 2
  %24 = ptrtoint ptr %magic26 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %magic26, align 4
  %magic27 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 2
  %26 = ptrtoint ptr %magic27 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %magic27, align 4
  %__count29 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %from, i32 0, i32 1
  %27 = ptrtoint ptr %__count29 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %__count29, align 4
  %count30 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 3
  %29 = ptrtoint ptr %count30 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %count30, align 2
  %__level32 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %from, i32 0, i32 2
  %30 = ptrtoint ptr %__level32 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %__level32, align 2
  %level33 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 4
  %32 = ptrtoint ptr %level33 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %level33, align 4
  %__btree34 = getelementptr inbounds %struct.xfs_da_intnode, ptr %from, i32 0, i32 1
  %btree36 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %to, i32 0, i32 5
  %33 = ptrtoint ptr %btree36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %__btree34, ptr %btree36, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %25)
  %cmp39 = icmp eq i16 %25, -322
  br i1 %cmp39, label %if.else.if.end_crit_edge, label %cond.false48, !prof !216

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.false48:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %if.end

if.end:                                           ; preds = %cond.false48, %if.else.if.end_crit_edge, %cond.false, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_da3_node_hdr_to_disk(ptr nocapture noundef readonly %mp, ptr nocapture noundef writeonly %to, ptr nocapture noundef readonly %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %magic16 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %from, i32 0, i32 2
  %2 = ptrtoint ptr %magic16 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic16, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %3)
  %cmp = icmp eq i16 %3, 16062
  br i1 %cmp, label %if.then.cond.end_crit_edge, label %cond.false, !prof !216

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %4 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %from, align 4
  %6 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %to, align 8
  %back = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %from, i32 0, i32 1
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %back, align 4
  %back8 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 1
  %9 = ptrtoint ptr %back8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %back8, align 4
  %10 = ptrtoint ptr %magic16 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %magic16, align 4
  %magic13 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 2
  %12 = ptrtoint ptr %magic13 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %magic13, align 8
  %count = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %from, i32 0, i32 3
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %count, align 2
  %__count = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %to, i32 0, i32 1
  %15 = ptrtoint ptr %__count to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %__count, align 8
  %level = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %from, i32 0, i32 4
  %16 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %level, align 4
  %__level = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %to, i32 0, i32 2
  %18 = ptrtoint ptr %__level to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %__level, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %3)
  %cmp18 = icmp eq i16 %3, -322
  br i1 %cmp18, label %if.else.cond.end28_crit_edge, label %cond.false27, !prof !216

if.else.cond.end28_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28

cond.false27:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %if.else.cond.end28_crit_edge
  %19 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %from, align 4
  %21 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %to, align 4
  %back33 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %from, i32 0, i32 1
  %22 = ptrtoint ptr %back33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %back33, align 4
  %back36 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 1
  %24 = ptrtoint ptr %back36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %back36, align 4
  %25 = ptrtoint ptr %magic16 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %magic16, align 4
  %magic40 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 2
  %27 = ptrtoint ptr %magic40 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %magic40, align 4
  %count41 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %from, i32 0, i32 3
  %28 = ptrtoint ptr %count41 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count41, align 2
  %__count43 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %to, i32 0, i32 1
  %30 = ptrtoint ptr %__count43 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %__count43, align 4
  %level44 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %from, i32 0, i32 4
  %31 = ptrtoint ptr %level44 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %level44, align 4
  %__level46 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %to, i32 0, i32 2
  %33 = ptrtoint ptr %__level46 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %__level46, align 2
  br label %if.end

if.end:                                           ; preds = %cond.end28, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_da3_blkinfo_verify(ptr noundef %bp, ptr nocapture noundef readonly %hdr3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %hdr3, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic, align 4
  %call = tail call zeroext i1 @xfs_verify_magic16(ptr noundef %bp, i16 noundef zeroext %3) #12
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !217
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %uuid = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %hdr3, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end8, label %__here6

__here6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !218
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %blkno = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %hdr3, i32 0, i32 2
  %6 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %blkno, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %8 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_maps.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp.not = icmp eq i64 %7, %11
  br i1 %cmp.not, label %if.end13, label %__here11

__here11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %lsn = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %hdr3, i32 0, i32 3
  %12 = ptrtoint ptr %lsn to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lsn, align 8
  %call14 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %1, i64 noundef %13) #12
  br i1 %call14, label %if.end13.cleanup_crit_edge, label %__here16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__here16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %__here16, %if.end13.cleanup_crit_edge, %__here11, %__here6, %if.end.cleanup_crit_edge, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_da3_blkinfo_verify, %__here11), %__here11 ], [ blockaddress(@xfs_da3_blkinfo_verify, %__here16), %__here16 ], [ blockaddress(@xfs_da3_blkinfo_verify, %__here6), %__here6 ], [ blockaddress(@xfs_da3_blkinfo_verify, %__here), %__here ], [ null, %if.end13.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_da3_node_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %__here12 [
    i16 16062, label %sw.bb
    i16 -322, label %entry.sw.bb1_crit_edge
    i16 -1042, label %entry.sw.bb6_crit_edge
    i16 15342, label %entry.sw.bb6_crit_edge27
    i16 -11521, label %entry.sw.bb8_crit_edge
    i16 15871, label %entry.sw.bb8_crit_edge28
  ]

entry.sw.bb8_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb6_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %5 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %6, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #12
  %7 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %1, i32 noundef 12) #12
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #12
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 16
  %sub.i.i.i = add i32 %shl.i, -16
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 12
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %10 = xor i32 %call3.i.i.i, -1
  %11 = call i32 @llvm.bswap.i32(i32 %10) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i.i.not = icmp eq i32 %9, %11
  br i1 %cmp.i.i.not, label %sw.bb.sw.bb1_crit_edge, label %__here

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

__here:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !221
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_da3_node_read_verify, %__here)) #12
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %call2 = call fastcc ptr @xfs_da3_node_verify(ptr noundef %bp)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %sw.bb1.cleanup_crit_edge, label %if.then4

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call2) #12
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge27
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %12 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xfs_attr3_leaf_buf_ops, ptr %b_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_attr3_leaf_buf_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_attr3_leaf_buf_ops, i32 0, i32 2), align 4
  tail call void %13(ptr noundef %bp) #12
  br label %cleanup

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge28
  %b_ops9 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %14 = ptrtoint ptr %b_ops9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xfs_dir3_leafn_buf_ops, ptr %b_ops9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leafn_buf_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leafn_buf_ops, i32 0, i32 2), align 4
  tail call void %15(ptr noundef %bp) #12
  br label %cleanup

__here12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !222
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef blockaddress(@xfs_da3_node_read_verify, %__here12)) #12
  br label %cleanup

cleanup:                                          ; preds = %__here12, %sw.bb8, %sw.bb6, %if.then4, %sw.bb1.cleanup_crit_edge, %__here
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_da3_node_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_log_item, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %call = tail call fastcc ptr @xfs_da3_node_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_lsn, align 8
  %lsn = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %lsn, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %14, 9
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 12
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %12, i32 noundef %shl.i) #12
  %16 = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_da3_node_verify_struct(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %3, label %__here [
    i16 16062, label %entry.sw.bb_crit_edge
    i16 -322, label %entry.sw.bb_crit_edge16
    i16 -1042, label %entry.sw.bb1_crit_edge
    i16 15342, label %entry.sw.bb1_crit_edge17
    i16 -11521, label %entry.sw.bb4_crit_edge
    i16 15871, label %entry.sw.bb4_crit_edge18
  ]

entry.sw.bb4_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %call = tail call fastcc ptr @xfs_da3_node_verify(ptr noundef %bp)
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge17
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %5 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xfs_attr3_leaf_buf_ops, ptr %b_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_attr3_leaf_buf_ops, i32 0, i32 4) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_attr3_leaf_buf_ops, i32 0, i32 4), align 4
  %call3 = tail call ptr %6(ptr noundef %bp) #12
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge18
  %b_ops5 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %7 = ptrtoint ptr %b_ops5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xfs_dir3_leafn_buf_ops, ptr %b_ops5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leafn_buf_ops, i32 0, i32 4) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leafn_buf_ops, i32 0, i32 4), align 4
  %call8 = tail call ptr %8(ptr noundef %bp) #12
  br label %cleanup

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !223
  br label %cleanup

cleanup:                                          ; preds = %__here, %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ blockaddress(@xfs_da3_node_verify_struct, %__here), %__here ], [ %call8, %sw.bb4 ], [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_node_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, ptr nocapture noundef %bpp, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, i32 noundef 0, ptr noundef %bpp, i32 noundef %whichfork, ptr noundef nonnull @xfs_da3_node_buf_ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpp, align 4
  %tobool1.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %tp, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %tp, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, ptr nocapture noundef writeonly %bpp, i32 noundef %whichfork, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %map = alloca %struct.xfs_buf_map, align 8
  %mapp = alloca ptr, align 4
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #12
  %3 = call ptr @memset(ptr %map, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapp) #12
  %4 = ptrtoint ptr %mapp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map, ptr %mapp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #12
  %5 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nmap, align 4
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bpp, align 4
  %call = call fastcc i32 @xfs_dabuf_map(ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, i32 noundef %whichfork, ptr noundef nonnull %mapp, ptr noundef nonnull %nmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_free_crit_edge

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %lor.lhs.false.out_free_crit_edge, label %if.end

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end:                                           ; preds = %lor.lhs.false
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_ddev_targp, align 8
  %11 = ptrtoint ptr %mapp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapp, align 4
  %call2 = call i32 @xfs_trans_read_buf_map(ptr noundef %1, ptr noundef %tp, ptr noundef %10, ptr noundef %12, i32 noundef %8, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 1
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %. = select i1 %cmp, i32 1, i32 2
  call void @xfs_buf_set_ref(ptr noundef %14, i32 noundef %.) #12
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bp, align 4
  %17 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %bpp, align 4
  br label %out_free

out_free:                                         ; preds = %if.end5, %if.end.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %entry.out_free_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_free_crit_edge ], [ %call2, %if.end.out_free_crit_edge ], [ 0, %if.end5 ], [ 0, %lor.lhs.false.out_free_crit_edge ]
  %18 = ptrtoint ptr %mapp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mapp, align 4
  %cmp8.not = icmp eq ptr %19, %map
  br i1 %cmp8.not, label %out_free.if.end10_crit_edge, label %if.then9

out_free.if.end10_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef %19) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %out_free.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapp) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_node_set_type(ptr noundef %tp, ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %3, label %sw.default [
    i16 -322, label %entry.sw.bb_crit_edge
    i16 16062, label %entry.sw.bb_crit_edge12
    i16 -1042, label %entry.sw.bb1_crit_edge
    i16 15342, label %entry.sw.bb1_crit_edge13
    i16 -11521, label %entry.sw.bb2_crit_edge
    i16 15871, label %entry.sw.bb2_crit_edge14
  ]

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %bp, i32 noundef 15) #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge13
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %bp, i32 noundef 16) #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge14
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %bp, i32 noundef 14) #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %5 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_mountp, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_da3_node_set_type, i32 noundef 1, ptr noundef %6, ptr noundef %1, i32 noundef 12, ptr noundef nonnull @.str.1, i32 noundef 362, ptr noundef %7) #12
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %bp) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -117, %sw.default ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_node_read_mapped(ptr noundef %tp, ptr nocapture noundef readonly %dp, i64 noundef %mappedbno, ptr noundef %bpp, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_ddev_targp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp.i = icmp eq i32 %whichfork, 0
  %m_dir_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %m_attr_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %.pn.in.i = select i1 %cmp.i, ptr %m_dir_geo.i, ptr %m_attr_geo.i
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %retval.0.in.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %.pn.i, i32 0, i32 1
  %5 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_blkbb_log, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 %retval.0.i, %conv
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #12
  %8 = getelementptr inbounds i8, ptr %map.i, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %8, align 8
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %mappedbno, ptr %map.i, align 8
  store i32 %shl, ptr %8, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %1, ptr noundef %tp, ptr noundef %3, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef %bpp, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bpp, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 1
  %. = select i1 %cmp, i32 1, i32 2
  call void @xfs_buf_set_ref(ptr noundef nonnull %12, i32 noundef %.) #12
  %tobool6.not = icmp eq ptr %tp, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bpp, align 4
  %call9 = call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %tp, ptr noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_set_ref(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_node_create(ptr noundef %args, i32 noundef %blkno, i32 noundef %level, ptr nocapture noundef writeonly %bpp, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  %bp.i = alloca ptr, align 4
  %map.i = alloca %struct.xfs_buf_map, align 8
  %mapp.i = alloca ptr, align 4
  %nmap.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %4 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_da_node_create(ptr noundef %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %level)
  %cmp = icmp slt i32 %level, 6
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !216

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 436) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i) #12
  %8 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp.i, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #12
  %9 = call ptr @memset(ptr %map.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapp.i) #12
  %10 = ptrtoint ptr %mapp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %map.i, ptr %mapp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap.i) #12
  %11 = ptrtoint ptr %nmap.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nmap.i, align 4
  %call.i = call fastcc i32 @xfs_dabuf_map(ptr noundef %5, i32 noundef %blkno, i32 noundef 0, i32 noundef %whichfork, ptr noundef nonnull %mapp.i, ptr noundef nonnull %nmap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %cond.end.out_free.i_crit_edge

cond.end.out_free.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i

lor.lhs.false.i:                                  ; preds = %cond.end
  %12 = ptrtoint ptr %nmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %lor.lhs.false.i.out_free.i_crit_edge, label %if.end.i

lor.lhs.false.i.out_free.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %m_ddev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 13
  %14 = ptrtoint ptr %m_ddev_targp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m_ddev_targp.i, align 8
  %16 = ptrtoint ptr %mapp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapp.i, align 4
  %call1.i = call i32 @xfs_trans_get_buf_map(ptr noundef %1, ptr noundef %15, ptr noundef %17, i32 noundef %13, i32 noundef 0, ptr noundef nonnull %bp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.out_free.i_crit_edge

if.end.i.out_free.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp.i, align 4
  br label %out_free.i

out_free.i:                                       ; preds = %if.end4.i, %if.end.i.out_free.i_crit_edge, %lor.lhs.false.i.out_free.i_crit_edge, %cond.end.out_free.i_crit_edge
  %bp.0 = phi ptr [ null, %lor.lhs.false.i.out_free.i_crit_edge ], [ %19, %if.end4.i ], [ null, %if.end.i.out_free.i_crit_edge ], [ null, %cond.end.out_free.i_crit_edge ]
  %error.0.i = phi i32 [ 0, %lor.lhs.false.i.out_free.i_crit_edge ], [ 0, %if.end4.i ], [ %call1.i, %if.end.i.out_free.i_crit_edge ], [ %call.i, %cond.end.out_free.i_crit_edge ]
  %20 = ptrtoint ptr %mapp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapp.i, align 4
  %cmp5.not.i = icmp eq ptr %21, %map.i
  br i1 %cmp5.not.i, label %out_free.i.xfs_da_get_buf.exit_crit_edge, label %if.then6.i

out_free.i.xfs_da_get_buf.exit_crit_edge:         ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da_get_buf.exit

if.then6.i:                                       ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef %21) #12
  br label %xfs_da_get_buf.exit

xfs_da_get_buf.exit:                              ; preds = %if.then6.i, %out_free.i.xfs_da_get_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapp.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool3.not = icmp eq i32 %error.0.i, 0
  br i1 %tobool3.not, label %if.end, label %xfs_da_get_buf.exit.cleanup_crit_edge

xfs_da_get_buf.exit.cleanup_crit_edge:            ; preds = %xfs_da_get_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %xfs_da_get_buf.exit
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp.0, i32 0, i32 35
  %22 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xfs_da3_node_buf_ops, ptr %b_ops, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %1, ptr noundef %bp.0, i32 noundef 15) #12
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp.0, i32 0, i32 16
  %23 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_addr, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end13.thread, label %if.end13

if.end13:                                         ; preds = %if.end
  %27 = call ptr @memset(ptr %24, i32 0, i32 64)
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp.0, i32 0, i32 24
  %28 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_maps.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %blkno8 = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %24, i32 0, i32 2
  %32 = ptrtoint ptr %blkno8 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %blkno8, align 8
  %33 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dp1, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ino, align 8
  %owner = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %24, i32 0, i32 5
  %37 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %owner, align 8
  %uuid = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %24, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 54
  %38 = call ptr @memcpy(ptr %uuid, ptr %sb_meta_uuid, i32 16)
  %conv = trunc i32 %level to i16
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %40, i32 0, i32 61
  %41 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.false27.i, label %if.end13.cond.end.i_crit_edge

if.end13.cond.end.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

if.end13.thread:                                  ; preds = %if.end
  %conv62 = trunc i32 %level to i16
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 8
  %m_features.i.i63 = getelementptr inbounds %struct.xfs_mount, ptr %44, i32 0, i32 61
  %45 = ptrtoint ptr %m_features.i.i63 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %m_features.i.i63, align 8
  %and.i.i64 = and i64 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i64)
  %tobool.i.not.i65 = icmp eq i64 %and.i.i64, 0
  br i1 %tobool.i.not.i65, label %if.end13.thread.cond.end28.i_crit_edge, label %cond.false.i

if.end13.thread.cond.end28.i_crit_edge:           ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28.i

cond.false.i:                                     ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end13.cond.end.i_crit_edge
  %ichdr.sroa.7.06776 = phi i16 [ -322, %cond.false.i ], [ 16062, %if.end13.cond.end.i_crit_edge ]
  %conv6974 = phi i16 [ %conv62, %cond.false.i ], [ %conv, %if.end13.cond.end.i_crit_edge ]
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %24, align 8
  %back8.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %24, i32 0, i32 1
  %48 = ptrtoint ptr %back8.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %back8.i, align 4
  %magic13.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %24, i32 0, i32 2
  %49 = ptrtoint ptr %magic13.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %ichdr.sroa.7.06776, ptr %magic13.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %24, i32 0, i32 1
  %50 = ptrtoint ptr %__count.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %24, i32 0, i32 2
  %51 = ptrtoint ptr %__level.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv6974, ptr %__level.i, align 2
  br label %xfs_da3_node_hdr_to_disk.exit

cond.false27.i:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false27.i, %if.end13.thread.cond.end28.i_crit_edge
  %ichdr.sroa.7.06681 = phi i16 [ 16062, %cond.false27.i ], [ -322, %if.end13.thread.cond.end28.i_crit_edge ]
  %conv6880 = phi i16 [ %conv, %cond.false27.i ], [ %conv62, %if.end13.thread.cond.end28.i_crit_edge ]
  %52 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %24, align 4
  %back36.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %24, i32 0, i32 1
  %53 = ptrtoint ptr %back36.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %back36.i, align 4
  %magic40.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %24, i32 0, i32 2
  %54 = ptrtoint ptr %magic40.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %ichdr.sroa.7.06681, ptr %magic40.i, align 4
  %__count43.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %24, i32 0, i32 1
  %55 = ptrtoint ptr %__count43.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %__count43.i, align 4
  %__level46.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %24, i32 0, i32 2
  %56 = ptrtoint ptr %__level46.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv6880, ptr %__level46.i, align 2
  br label %xfs_da3_node_hdr_to_disk.exit

xfs_da3_node_hdr_to_disk.exit:                    ; preds = %cond.end28.i, %cond.end.i
  %57 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %args, align 8
  %node_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %node_hdr_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %node_hdr_size, align 4
  %sub = add i32 %60, -1
  call void @xfs_trans_log_buf(ptr noundef %1, ptr noundef %bp.0, i32 noundef 0, i32 noundef %sub) #12
  %61 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %bp.0, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_da3_node_hdr_to_disk.exit, %xfs_da_get_buf.exit.cleanup_crit_edge
  ret i32 %error.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_node_create(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_create, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_node_create, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !226
  %call42 = tail call i32 @__traceiter_xfs_da_node_create(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !227
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_node_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_node_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2082, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
define dso_local i32 @xfs_da_get_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, ptr nocapture noundef writeonly %bpp, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %map = alloca %struct.xfs_buf_map, align 8
  %mapp = alloca ptr, align 4
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #12
  %3 = call ptr @memset(ptr %map, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapp) #12
  %4 = ptrtoint ptr %mapp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map, ptr %mapp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #12
  %5 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nmap, align 4
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bpp, align 4
  %call = call fastcc i32 @xfs_dabuf_map(ptr noundef %dp, i32 noundef %bno, i32 noundef 0, i32 noundef %whichfork, ptr noundef nonnull %mapp, ptr noundef nonnull %nmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_free_crit_edge

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %lor.lhs.false.out_free_crit_edge, label %if.end

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end:                                           ; preds = %lor.lhs.false
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_ddev_targp, align 8
  %11 = ptrtoint ptr %mapp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapp, align 4
  %call1 = call i32 @xfs_trans_get_buf_map(ptr noundef %tp, ptr noundef %10, ptr noundef %12, i32 noundef %8, i32 noundef 0, ptr noundef nonnull %bp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %15 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %bpp, align 4
  br label %out_free

out_free:                                         ; preds = %if.end4, %if.end.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %entry.out_free_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_free_crit_edge ], [ 0, %lor.lhs.false.out_free_crit_edge ], [ %call1, %if.end.out_free_crit_edge ], [ 0, %if.end4 ]
  %16 = ptrtoint ptr %mapp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapp, align 4
  %cmp5.not = icmp eq ptr %17, %map
  br i1 %cmp5.not, label %out_free.if.end7_crit_edge, label %if.then6

out_free.if.end7_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef %17) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %out_free.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapp) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_split(ptr noundef %state) #0 align 64 {
entry:
  %action = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %action) #12
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %action, align 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_da_split(ptr noundef %2)
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %path, align 8
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %5 = icmp ult i32 %sub, 5
  br i1 %5, label %entry.cond.end_crit_edge, label %cond.false, !prof !216

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 492) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %blk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub
  %magic = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %7, label %cond.false17 [
    i32 64494, label %cond.end.cond.end18_crit_edge
    i32 54015, label %cond.end.cond.end18_crit_edge296
  ]

cond.end.cond.end18_crit_edge296:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

cond.end.cond.end18_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 494) #12
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.end.cond.end18_crit_edge, %cond.end.cond.end18_crit_edge296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp22285 = icmp slt i32 %sub, 0
  %tobool24.not286 = icmp eq ptr %arrayidx, null
  %or.cond287 = or i1 %cmp22285, %tobool24.not286
  br i1 %or.cond287, label %cond.end18.for.end_crit_edge, label %for.body.lr.ph

cond.end18.for.end_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end18
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 5
  %inleaf = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 4
  %extraafter = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 6
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.0289 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec67, %sw.epilog.for.body_crit_edge ]
  %addblk.0288 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %addblk.1, %sw.epilog.for.body_crit_edge ]
  %arrayidx28 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %i.0289
  %arrayidx30 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 3, i32 1, i32 %i.0289
  %magic31 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %i.0289, i32 5
  %9 = ptrtoint ptr %magic31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %magic31, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %10, label %for.body.sw.epilog_crit_edge [
    i32 64494, label %sw.bb
    i32 54015, label %sw.bb49
    i32 65214, label %sw.bb54
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %call = tail call i32 @xfs_attr3_leaf_split(ptr noundef %state, ptr noundef %arrayidx28, ptr noundef %arrayidx30) #12
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.sw.epilog_crit_edge
    i32 -28, label %if.end36
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %sw.bb
  %13 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %extravalid, align 1
  %14 = ptrtoint ptr %inleaf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %inleaf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool37.not = icmp eq i8 %15, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %extraafter to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %extraafter, align 2
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_attr_leaf_split_before(ptr noundef %18)
  br label %if.end45

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %extraafter to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %extraafter, align 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_attr_leaf_split_after(ptr noundef %21)
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then38
  %arrayidx30.sink = phi ptr [ %arrayidx30, %if.else ], [ %arrayidx28, %if.then38 ]
  %call44 = tail call i32 @xfs_attr3_leaf_split(ptr noundef %state, ptr noundef %arrayidx30.sink, ptr noundef %extrablk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool46.not = icmp eq i32 %call44, 0
  br i1 %tobool46.not, label %if.end45.sw.epilog_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb49:                                          ; preds = %for.body
  %call50 = tail call i32 @xfs_dir2_leafn_split(ptr noundef %state, ptr noundef %arrayidx28, ptr noundef %arrayidx30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %sw.bb49.sw.epilog_crit_edge, label %sw.bb49.cleanup_crit_edge

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb54:                                          ; preds = %for.body
  %sub55 = sub nuw nsw i32 %sub, %i.0289
  %call56 = call fastcc i32 @xfs_da3_node_split(ptr noundef %state, ptr noundef %arrayidx28, ptr noundef %arrayidx30, ptr noundef nonnull %addblk.0288, i32 noundef %sub55, ptr noundef nonnull %action)
  %22 = ptrtoint ptr %addblk.0288 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %addblk.0288, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %sw.bb54.cleanup_crit_edge

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool60.not = icmp eq i32 %24, 0
  %.arrayidx30 = select i1 %tobool60.not, ptr null, ptr %arrayidx30
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end59, %sw.bb49.sw.epilog_crit_edge, %if.end45.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %addblk.1 = phi ptr [ %addblk.0288, %for.body.sw.epilog_crit_edge ], [ %arrayidx30, %if.end45.sw.epilog_crit_edge ], [ %arrayidx30, %sw.bb49.sw.epilog_crit_edge ], [ %.arrayidx30, %if.end59 ], [ %arrayidx30, %sw.bb.sw.epilog_crit_edge ]
  tail call void @xfs_da3_fixhashpath(ptr noundef %state, ptr noundef %path)
  %25 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %path, align 8
  %dec = add i32 %26, -1
  store i32 %dec, ptr %path, align 8
  %dec67 = add nsw i32 %i.0289, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0289)
  %cmp22 = icmp slt i32 %i.0289, 1
  %tobool24.not = icmp eq ptr %addblk.1, null
  %or.cond = select i1 %cmp22, i1 true, i1 %tobool24.not
  br i1 %or.cond, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %cond.end18.for.end_crit_edge
  %addblk.0.lcssa = phi ptr [ %arrayidx, %cond.end18.for.end_crit_edge ], [ %addblk.1, %sw.epilog.for.end_crit_edge ]
  %tobool24.not.lcssa = phi i1 [ %tobool24.not286, %cond.end18.for.end_crit_edge ], [ %tobool24.not, %sw.epilog.for.end_crit_edge ]
  br i1 %tobool24.not.lcssa, label %for.end.cleanup_crit_edge, label %if.end70

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end70:                                         ; preds = %for.end
  %extravalid71 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 5
  %27 = ptrtoint ptr %extravalid71 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %extravalid71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp72 = icmp eq i8 %28, 0
  br i1 %cmp72, label %if.end70.cond.end90_crit_edge, label %lor.rhs74

if.end70.cond.end90_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end90

lor.rhs74:                                        ; preds = %if.end70
  %29 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54015, i32 %30)
  %cmp79 = icmp eq i32 %30, 54015
  br i1 %cmp79, label %lor.rhs74.cond.end90_crit_edge, label %cond.false89, !prof !216

lor.rhs74.cond.end90_crit_edge:                   ; preds = %lor.rhs74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end90

cond.false89:                                     ; preds = %lor.rhs74
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 574) #12
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %lor.rhs74.cond.end90_crit_edge, %if.end70.cond.end90_crit_edge
  %31 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp93 = icmp eq i32 %32, 0
  br i1 %cmp93, label %cond.end90.cond.end103_crit_edge, label %cond.false102, !prof !216

cond.end90.cond.end103_crit_edge:                 ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end103

cond.false102:                                    ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 579) #12
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false102, %cond.end90.cond.end103_crit_edge
  %call107 = tail call fastcc i32 @xfs_da3_root_split(ptr noundef %state, ptr noundef %blk, ptr noundef nonnull %addblk.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %cond.end103.out_crit_edge

cond.end103.out_crit_edge:                        ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end110:                                        ; preds = %cond.end103
  %33 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_addr, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool112.not = icmp eq i32 %38, 0
  br i1 %tobool112.not, label %if.end110.if.end137_crit_edge, label %if.then113

if.end110.if.end137_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then113:                                       ; preds = %if.end110
  %blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %addblk.0.lcssa, i32 0, i32 1
  %39 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp117.not = icmp eq i32 %38, %40
  br i1 %cmp117.not, label %if.end121, label %__here

__here:                                           ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !230
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %34, ptr noundef blockaddress(@xfs_da3_split, %__here)) #12
  br label %out

if.end121:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %addblk.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addblk.0.lcssa, align 8
  %b_addr123 = getelementptr inbounds %struct.xfs_buf, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %b_addr123 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_addr123, align 4
  %blkno124 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %blkno124 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %blkno124, align 4
  %back = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %back, align 4
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trans, align 4
  %52 = load ptr, ptr %addblk.0.lcssa, align 8
  tail call void @xfs_trans_log_buf(ptr noundef %51, ptr noundef %52, i32 noundef 0, i32 noundef 11) #12
  br label %if.end137

if.end137:                                        ; preds = %if.end121, %if.end110.if.end137_crit_edge
  %53 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %blk, align 8
  %b_addr139 = getelementptr inbounds %struct.xfs_buf, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %b_addr139 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_addr139, align 4
  %back142 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %back142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %back142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool143.not = icmp eq i32 %58, 0
  br i1 %tobool143.not, label %if.end137.out_crit_edge, label %if.then144

if.end137.out_crit_edge:                          ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then144:                                       ; preds = %if.end137
  %blkno148 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %addblk.0.lcssa, i32 0, i32 1
  %59 = ptrtoint ptr %blkno148 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blkno148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp149.not = icmp eq i32 %58, %60
  br i1 %cmp149.not, label %if.end155, label %__here153

__here153:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !231
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %54, ptr noundef blockaddress(@xfs_da3_split, %__here153)) #12
  br label %out

if.end155:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %addblk.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addblk.0.lcssa, align 8
  %b_addr157 = getelementptr inbounds %struct.xfs_buf, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %b_addr157 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_addr157, align 4
  %blkno158 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %blkno158 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blkno158, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %64, align 4
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %state, align 8
  %trans163 = getelementptr inbounds %struct.xfs_da_args, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %trans163 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trans163, align 4
  %72 = load ptr, ptr %addblk.0.lcssa, align 8
  tail call void @xfs_trans_log_buf(ptr noundef %71, ptr noundef %72, i32 noundef 0, i32 noundef 11) #12
  br label %out

out:                                              ; preds = %if.end155, %__here153, %if.end137.out_crit_edge, %__here, %cond.end103.out_crit_edge
  %error.1 = phi i32 [ %call107, %cond.end103.out_crit_edge ], [ -117, %__here ], [ -117, %__here153 ], [ 0, %if.end155 ], [ 0, %if.end137.out_crit_edge ]
  %73 = ptrtoint ptr %addblk.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %addblk.0.lcssa, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ 0, %for.end.cleanup_crit_edge ], [ %call56, %sw.bb54.cleanup_crit_edge ], [ %call50, %sw.bb49.cleanup_crit_edge ], [ %call44, %if.end45.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_split(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_split, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_split, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !232
  %call42 = tail call i32 @__traceiter_xfs_da_split(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !233
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_split, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_split, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_split.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_split.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2073, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @xfs_attr3_leaf_split(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_split_before(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split_before, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_split_before, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_split_before(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split_before, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split_before, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_split_before.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_attr_leaf_split_before.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2047, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
define internal fastcc void @trace_xfs_attr_leaf_split_after(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split_after, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_split_after, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !236
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_split_after(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !237
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split_after, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split_after, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_split_after.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_attr_leaf_split_after.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2048, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @xfs_dir2_leafn_split(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_node_split(ptr nocapture noundef %state, ptr nocapture noundef %oldblk, ptr nocapture noundef %newblk, ptr nocapture noundef readonly %addblk, i32 noundef %treelevel, ptr nocapture noundef writeonly %result) unnamed_addr #5 align 64 {
entry:
  %bno.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_da_node_split(ptr noundef %1)
  %4 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oldblk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %__count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %13)
  %cmp.i = icmp eq i16 %13, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %16 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %__count29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %17)
  %cmp39.i = icmp eq i16 %17, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.15.0 = phi i16 [ %19, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %19, %cond.false48.i ], [ %15, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %15, %cond.false.i ]
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 5
  %20 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %xfs_da3_node_hdr_from_disk.exit.land.end.thread_crit_edge, label %land.end

xfs_da3_node_hdr_from_disk.exit.land.end.thread_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.thread

land.end:                                         ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp = icmp eq i32 %25, 1
  %spec.select148 = select i1 %cmp, i32 2, i32 1
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %xfs_da3_node_hdr_from_disk.exit.land.end.thread_crit_edge
  %26 = phi i1 [ false, %xfs_da3_node_hdr_from_disk.exit.land.end.thread_crit_edge ], [ %cmp, %land.end ]
  %27 = phi i32 [ 1, %xfs_da3_node_hdr_from_disk.exit.land.end.thread_crit_edge ], [ %spec.select148, %land.end ]
  %conv5 = zext i16 %nodehdr.sroa.15.0 to i32
  %add6 = add nuw nsw i32 %27, %conv5
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %node_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %node_ents to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %node_ents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %33)
  %cmp8 = icmp ugt i32 %add6, %33
  br i1 %cmp8, label %if.then, label %land.end.thread.if.end26_crit_edge

land.end.thread.if.end26_crit_edge:               ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then:                                          ; preds = %land.end.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bno.i) #12
  tail call fastcc void @trace_xfs_da_grow_inode(ptr noundef %29) #12
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 8
  %leafblk.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %leafblk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %leafblk.i, align 4
  %conv.i = zext i32 %37 to i64
  %38 = ptrtoint ptr %bno.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.i, ptr %bno.i, align 8
  %fsbcount.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %fsbcount.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fsbcount.i, align 4
  %call.i = call i32 @xfs_da_grow_inode_int(ptr noundef %29, ptr noundef nonnull %bno.i, i32 noundef %40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %xfs_da_grow_inode.exit

xfs_da_grow_inode.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bno.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %41 = ptrtoint ptr %bno.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bno.i, align 8
  %conv2.i = trunc i64 %42 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bno.i) #12
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state, align 8
  %whichfork16 = getelementptr inbounds %struct.xfs_da_args, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %whichfork16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %whichfork16, align 4
  %call17 = call i32 @xfs_da3_node_create(ptr noundef %44, i32 noundef %conv2.i, i32 noundef %treelevel, ptr noundef %newblk, i32 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %blkno21 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 1
  %47 = ptrtoint ptr %blkno21 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv2.i, ptr %blkno21, align 4
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 5
  %48 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65214, ptr %magic, align 8
  call fastcc void @xfs_da3_node_rebalance(ptr noundef %state, ptr noundef %oldblk, ptr noundef %newblk)
  %call22 = call i32 @xfs_da3_blk_link(ptr noundef %state, ptr noundef %oldblk, ptr noundef %newblk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %if.end20.if.end26_crit_edge, %land.end.thread.if.end26_crit_edge
  %storemerge = phi i32 [ 1, %if.end20.if.end26_crit_edge ], [ 0, %land.end.thread.if.end26_crit_edge ]
  %49 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %result, align 4
  %50 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %oldblk, align 8
  %b_addr28 = getelementptr inbounds %struct.xfs_buf, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %b_addr28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_addr28, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 8
  %m_features.i.i113 = getelementptr inbounds %struct.xfs_mount, ptr %55, i32 0, i32 61
  %56 = ptrtoint ptr %m_features.i.i113 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %m_features.i.i113, align 8
  %and.i.i114 = and i64 %57, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i114)
  %tobool.i.not.i115 = icmp eq i64 %and.i.i114, 0
  %magic26.i131 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %53, i32 0, i32 2
  br i1 %tobool.i.not.i115, label %if.else.i140, label %if.then.i127

if.then.i127:                                     ; preds = %if.end26
  %58 = ptrtoint ptr %magic26.i131 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %magic26.i131, align 8
  %__count.i120 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %53, i32 0, i32 1
  %60 = ptrtoint ptr %__count.i120 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %__count.i120, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %59)
  %cmp.i126 = icmp eq i16 %59, 16062
  br i1 %cmp.i126, label %if.then.i127.xfs_da3_node_hdr_from_disk.exit142_crit_edge, label %cond.false.i128, !prof !216

if.then.i127.xfs_da3_node_hdr_from_disk.exit142_crit_edge: ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit142

cond.false.i128:                                  ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit142

if.else.i140:                                     ; preds = %if.end26
  %62 = ptrtoint ptr %magic26.i131 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %magic26.i131, align 4
  %__count29.i133 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %53, i32 0, i32 1
  %64 = ptrtoint ptr %__count29.i133 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %__count29.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %63)
  %cmp39.i139 = icmp eq i16 %63, -322
  br i1 %cmp39.i139, label %if.else.i140.xfs_da3_node_hdr_from_disk.exit142_crit_edge, label %cond.false48.i141, !prof !216

if.else.i140.xfs_da3_node_hdr_from_disk.exit142_crit_edge: ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit142

cond.false48.i141:                                ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit142

xfs_da3_node_hdr_from_disk.exit142:               ; preds = %cond.false48.i141, %if.else.i140.xfs_da3_node_hdr_from_disk.exit142_crit_edge, %cond.false.i128, %if.then.i127.xfs_da3_node_hdr_from_disk.exit142_crit_edge
  %nodehdr.sroa.15.1 = phi i16 [ %65, %if.else.i140.xfs_da3_node_hdr_from_disk.exit142_crit_edge ], [ %65, %cond.false48.i141 ], [ %61, %if.then.i127.xfs_da3_node_hdr_from_disk.exit142_crit_edge ], [ %61, %cond.false.i128 ]
  %index = getelementptr inbounds %struct.xfs_da_state_blk, ptr %oldblk, i32 0, i32 3
  %66 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index, align 8
  %conv31 = zext i16 %nodehdr.sroa.15.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv31)
  %cmp32.not = icmp sgt i32 %67, %conv31
  br i1 %cmp32.not, label %if.else45, label %if.then34

if.then34:                                        ; preds = %xfs_da3_node_hdr_from_disk.exit142
  %inc = add i32 %67, 1
  %68 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %inc, ptr %index, align 8
  call fastcc void @xfs_da3_node_add(ptr noundef %state, ptr noundef %oldblk, ptr noundef %addblk)
  br i1 %26, label %if.then37, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37:                                        ; preds = %if.then34
  %extraafter = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 6
  %69 = ptrtoint ptr %extraafter to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %extraafter, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool38.not = icmp eq i8 %70, 0
  br i1 %tobool38.not, label %if.then37.if.end42_crit_edge, label %if.then39

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %index, align 8
  %inc41 = add i32 %72, 1
  store i32 %inc41, ptr %index, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then37.if.end42_crit_edge
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  call fastcc void @xfs_da3_node_add(ptr noundef %state, ptr noundef %oldblk, ptr noundef %extrablk)
  %73 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %extravalid, align 1
  br label %cleanup

if.else45:                                        ; preds = %xfs_da3_node_hdr_from_disk.exit142
  %index46 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 3
  %74 = ptrtoint ptr %index46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index46, align 8
  %inc47 = add i32 %75, 1
  store i32 %inc47, ptr %index46, align 8
  call fastcc void @xfs_da3_node_add(ptr noundef %state, ptr noundef %newblk, ptr noundef %addblk)
  br i1 %26, label %if.then49, label %if.else45.cleanup_crit_edge

if.else45.cleanup_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %if.else45
  %extraafter50 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 6
  %76 = ptrtoint ptr %extraafter50 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %extraafter50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool51.not = icmp eq i8 %77, 0
  br i1 %tobool51.not, label %if.then49.if.end55_crit_edge, label %if.then52

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %index46 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %index46, align 8
  %inc54 = add i32 %79, 1
  store i32 %inc54, ptr %index46, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then49.if.end55_crit_edge
  %extrablk56 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  call fastcc void @xfs_da3_node_add(ptr noundef %state, ptr noundef %newblk, ptr noundef %extrablk56)
  %80 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %extravalid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.else45.cleanup_crit_edge, %if.end42, %if.then34.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %xfs_da_grow_inode.exit
  %retval.0 = phi i32 [ %call.i, %xfs_da_grow_inode.exit ], [ %call17, %if.end.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ 0, %if.else45.cleanup_crit_edge ], [ 0, %if.end55 ], [ 0, %if.then34.cleanup_crit_edge ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_da3_fixhashpath(ptr nocapture noundef readonly %state, ptr nocapture noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #12
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %count, align 4, !annotation !224
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_da_fixhashpath(ptr noundef %2)
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %path, align 8
  %sub = add i32 %6, -1
  %arrayidx = getelementptr %struct.xfs_da_state_path, ptr %path, i32 0, i32 1, i32 %sub
  %magic = getelementptr %struct.xfs_da_state_path, ptr %path, i32 0, i32 1, i32 %sub, i32 5
  %7 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %magic, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 64494, label %sw.bb
    i32 54015, label %sw.bb4
    i32 65214, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @xfs_attr_leaf_lasthash(ptr noundef %11, ptr noundef nonnull %count) #12
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %sw.bb.cleanup43_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.cleanup43_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

sw.bb4:                                           ; preds = %entry
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 8
  %call6 = call i32 @xfs_dir2_leaf_lasthash(ptr noundef %4, ptr noundef %15, ptr noundef nonnull %count) #12
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7 = icmp eq i32 %17, 0
  br i1 %cmp7, label %sw.bb4.cleanup43_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4.cleanup43_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

sw.bb10:                                          ; preds = %entry
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %call12 = call fastcc i32 @xfs_da3_node_lasthash(ptr noundef %4, ptr noundef %19, ptr noundef nonnull %count)
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %sw.bb10.cleanup43_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb10.cleanup43_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

sw.epilog:                                        ; preds = %sw.bb10.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %lasthash.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call12, %sw.bb10.sw.epilog_crit_edge ], [ %call6, %sw.bb4.sw.epilog_crit_edge ], [ %call, %sw.bb.sw.epilog_crit_edge ]
  %dec = add i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp1686 = icmp sgt i32 %dec, -1
  br i1 %cmp1686, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup43_crit_edge

sw.epilog.cleanup43_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %level.089 = phi i32 [ %dec42, %for.inc.for.body_crit_edge ], [ %dec, %sw.epilog.for.body_crit_edge ]
  %lasthash.188 = phi i32 [ %53, %for.inc.for.body_crit_edge ], [ %lasthash.0, %sw.epilog.for.body_crit_edge ]
  %arrayidx.pn87 = phi ptr [ %blk.090, %for.inc.for.body_crit_edge ], [ %arrayidx, %sw.epilog.for.body_crit_edge ]
  %blk.090 = getelementptr %struct.xfs_da_state_blk, ptr %arrayidx.pn87, i32 -1
  %22 = ptrtoint ptr %blk.090 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blk.090, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_addr, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %4, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %25, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %30 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %__count.i, align 8
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %25, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %31)
  %cmp.i = icmp eq i16 %31, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %for.body
  %34 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %25, i32 0, i32 1
  %36 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %__count29.i, align 4
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %25, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %35)
  %cmp39.i = icmp eq i16 %35, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.1480.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %nodehdr.sroa.9.0 = phi i16 [ %37, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %37, %cond.false48.i ], [ %33, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %33, %cond.false.i ]
  %index = getelementptr %struct.xfs_da_state_blk, ptr %arrayidx.pn87, i32 -1, i32 3
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 8
  %arrayidx19 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.1480.0, i32 %39
  %40 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %lasthash.188)
  %cmp20 = icmp eq i32 %41, %lasthash.188
  br i1 %cmp20, label %xfs_da3_node_hdr_from_disk.exit.cleanup43_crit_edge, label %for.inc

xfs_da3_node_hdr_from_disk.exit.cleanup43_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

for.inc:                                          ; preds = %xfs_da3_node_hdr_from_disk.exit
  %hashval23 = getelementptr %struct.xfs_da_state_blk, ptr %arrayidx.pn87, i32 -1, i32 4
  %42 = ptrtoint ptr %hashval23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %lasthash.188, ptr %hashval23, align 4
  %43 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %lasthash.188, ptr %arrayidx19, align 4
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trans, align 4
  %48 = ptrtoint ptr %blk.090 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %blk.090, align 8
  %50 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index, align 8
  %arrayidx30 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.1480.0, i32 %51
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx30 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub36 = add i32 %sub.ptr.sub, 7
  call void @xfs_trans_log_buf(ptr noundef %47, ptr noundef %49, i32 noundef %sub.ptr.sub, i32 noundef %sub36) #12
  %conv = zext i16 %nodehdr.sroa.9.0 to i32
  %sub38 = add nsw i32 %conv, -1
  %arrayidx39 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.1480.0, i32 %sub38
  %52 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx39, align 4
  %dec42 = add nsw i32 %level.089, -1
  %cmp16 = icmp sgt i32 %level.089, 0
  br i1 %cmp16, label %for.inc.for.body_crit_edge, label %for.inc.cleanup43_crit_edge

for.inc.cleanup43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup43:                                        ; preds = %for.inc.cleanup43_crit_edge, %xfs_da3_node_hdr_from_disk.exit.cleanup43_crit_edge, %sw.epilog.cleanup43_crit_edge, %sw.bb10.cleanup43_crit_edge, %sw.bb4.cleanup43_crit_edge, %sw.bb.cleanup43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_root_split(ptr nocapture noundef readonly %state, ptr nocapture noundef %blk1, ptr nocapture noundef readonly %blk2) unnamed_addr #5 align 64 {
entry:
  %bp.i = alloca ptr, align 4
  %map.i = alloca %struct.xfs_buf_map, align 8
  %mapp.i = alloca ptr, align 4
  %nmap.i = alloca i32, align 4
  %bno.i = alloca i64, align 8
  %bp = alloca ptr, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_da_root_split(ptr noundef %1)
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bno.i) #12
  tail call fastcc void @trace_xfs_da_grow_inode(ptr noundef %3) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %leafblk.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %leafblk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leafblk.i, align 4
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %bno.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %bno.i, align 8
  %fsbcount.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %fsbcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fsbcount.i, align 4
  %call.i = call i32 @xfs_da_grow_inode_int(ptr noundef %3, ptr noundef nonnull %bno.i, i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %xfs_da_grow_inode.exit

xfs_da_grow_inode.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bno.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %bno.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bno.i, align 8
  %conv2.i = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bno.i) #12
  %dp3 = getelementptr inbounds %struct.xfs_da_args, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %dp3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp3, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans, align 4
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %whichfork, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i) #12
  %21 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp.i, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #12
  %22 = call ptr @memset(ptr %map.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapp.i) #12
  %23 = ptrtoint ptr %mapp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %map.i, ptr %mapp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap.i) #12
  %24 = ptrtoint ptr %nmap.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %nmap.i, align 4
  %25 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %bp, align 4
  %call.i222 = call fastcc i32 @xfs_dabuf_map(ptr noundef %14, i32 noundef %conv2.i, i32 noundef 0, i32 noundef %18, ptr noundef nonnull %mapp.i, ptr noundef nonnull %nmap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool.not.i223 = icmp eq i32 %call.i222, 0
  br i1 %tobool.not.i223, label %lor.lhs.false.i, label %if.end.out_free.i_crit_edge

if.end.out_free.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i

lor.lhs.false.i:                                  ; preds = %if.end
  %26 = ptrtoint ptr %nmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %lor.lhs.false.i.out_free.i_crit_edge, label %if.end.i

lor.lhs.false.i.out_free.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %m_ddev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 13
  %28 = ptrtoint ptr %m_ddev_targp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m_ddev_targp.i, align 8
  %30 = ptrtoint ptr %mapp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mapp.i, align 4
  %call1.i = call i32 @xfs_trans_get_buf_map(ptr noundef %16, ptr noundef %29, ptr noundef %31, i32 noundef %27, i32 noundef 0, ptr noundef nonnull %bp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.out_free.i_crit_edge

if.end.i.out_free.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bp.i, align 4
  %34 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %bp, align 4
  br label %out_free.i

out_free.i:                                       ; preds = %if.end4.i, %if.end.i.out_free.i_crit_edge, %lor.lhs.false.i.out_free.i_crit_edge, %if.end.out_free.i_crit_edge
  %error.0.i = phi i32 [ %call.i222, %if.end.out_free.i_crit_edge ], [ 0, %lor.lhs.false.i.out_free.i_crit_edge ], [ %call1.i, %if.end.i.out_free.i_crit_edge ], [ 0, %if.end4.i ]
  %35 = ptrtoint ptr %mapp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mapp.i, align 4
  %cmp5.not.i = icmp eq ptr %36, %map.i
  br i1 %cmp5.not.i, label %out_free.i.xfs_da_get_buf.exit_crit_edge, label %if.then6.i

out_free.i.xfs_da_get_buf.exit_crit_edge:         ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da_get_buf.exit

if.then6.i:                                       ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef %36) #12
  br label %xfs_da_get_buf.exit

xfs_da_get_buf.exit:                              ; preds = %if.then6.i, %out_free.i.xfs_da_get_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapp.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool5.not = icmp eq i32 %error.0.i, 0
  br i1 %tobool5.not, label %if.end7, label %xfs_da_get_buf.exit.cleanup_crit_edge

xfs_da_get_buf.exit.cleanup_crit_edge:            ; preds = %xfs_da_get_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %xfs_da_get_buf.exit
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_addr, align 4
  %41 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %blk1, align 8
  %b_addr9 = getelementptr inbounds %struct.xfs_buf, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %b_addr9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_addr9, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %magic, align 4
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %46, label %if.else [
    i16 -322, label %if.end7.if.then17_crit_edge
    i16 16062, label %if.end7.if.then17_crit_edge282
  ]

if.end7.if.then17_crit_edge282:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end7.if.then17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %if.end7.if.then17_crit_edge, %if.end7.if.then17_crit_edge282
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %14, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 61
  %50 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i225

if.then.i225:                                     ; preds = %if.then17
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %44, i32 0, i32 2
  %54 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %__level.i, align 2
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %44, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %46)
  %cmp.i224 = icmp eq i16 %46, 16062
  br i1 %cmp.i224, label %if.then.i225.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i225.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i225
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.then17
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %44, i32 0, i32 1
  %56 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %44, i32 0, i32 2
  %58 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %__level32.i, align 2
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %44, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %46)
  %cmp39.i = icmp eq i16 %46, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i225.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %icnodehdr.sroa.15271.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i225.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %icnodehdr.sroa.12.0 = phi i16 [ %59, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %59, %cond.false48.i ], [ %55, %if.then.i225.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %55, %cond.false.i ]
  %icnodehdr.sroa.9.0 = phi i16 [ %57, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %57, %cond.false48.i ], [ %53, %if.then.i225.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %53, %cond.false.i ]
  %idxprom = zext i16 %icnodehdr.sroa.9.0 to i32
  %arrayidx = getelementptr %struct.xfs_da_node_entry, ptr %icnodehdr.sroa.15271.0, i32 %idxprom
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %44 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv20 = zext i16 %icnodehdr.sroa.12.0 to i32
  call void @xfs_trans_buf_set_type(ptr noundef %16, ptr noundef %38, i32 noundef 15) #12
  %phi.bo = add nuw nsw i32 %conv20, 1
  br label %if.end38

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #12
  %60 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %61 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %14, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %62, ptr noundef nonnull %leafhdr, ptr noundef %44) #12
  %magic22 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %63 = ptrtoint ptr %magic22 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %magic22, align 4
  %65 = zext i16 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %64, label %cond.false [
    i16 -11521, label %if.else.cond.end_crit_edge
    i16 15871, label %if.else.cond.end_crit_edge283
  ]

if.else.cond.end_crit_edge283:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 691) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else.cond.end_crit_edge, %if.else.cond.end_crit_edge283
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %66 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ents, align 4
  %count32 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %68 = ptrtoint ptr %count32 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %count32, align 2
  %idxprom33 = zext i16 %69 to i32
  %arrayidx34 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %67, i32 %idxprom33
  %sub.ptr.lhs.cast35 = ptrtoint ptr %arrayidx34 to i32
  %sub.ptr.rhs.cast36 = ptrtoint ptr %44 to i32
  %sub.ptr.sub37 = sub i32 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  call void @xfs_trans_buf_set_type(ptr noundef %16, ptr noundef %38, i32 noundef 14) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #12
  br label %if.end38

if.end38:                                         ; preds = %cond.end, %xfs_da3_node_hdr_from_disk.exit
  %level.0 = phi i32 [ %phi.bo, %xfs_da3_node_hdr_from_disk.exit ], [ 1, %cond.end ]
  %size.0 = phi i32 [ %sub.ptr.sub, %xfs_da3_node_hdr_from_disk.exit ], [ %sub.ptr.sub37, %cond.end ]
  %70 = call ptr @memcpy(ptr %40, ptr %44, i32 %size.0)
  %71 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %magic, align 4
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %72, label %if.end38.if.end57_crit_edge [
    i16 16062, label %if.end38.if.then52_crit_edge
    i16 15871, label %if.end38.if.then52_crit_edge284
  ]

if.end38.if.then52_crit_edge284:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.end38.if.then52_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.end38.if.end57_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then52:                                        ; preds = %if.end38.if.then52_crit_edge, %if.end38.if.then52_crit_edge284
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %38, i32 0, i32 24
  %74 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_maps.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %75, align 8
  %blkno56 = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %40, i32 0, i32 2
  %78 = ptrtoint ptr %blkno56 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %blkno56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end38.if.end57_crit_edge
  %sub = add i32 %size.0, -1
  call void @xfs_trans_log_buf(ptr noundef %16, ptr noundef %38, i32 noundef 0, i32 noundef %sub) #12
  %79 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %blk1, align 8
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %80, i32 0, i32 35
  %81 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_ops, align 4
  %b_ops59 = getelementptr inbounds %struct.xfs_buf, ptr %38, i32 0, i32 35
  %83 = ptrtoint ptr %b_ops59 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %b_ops59, align 4
  %84 = load ptr, ptr %blk1, align 8
  call void @xfs_trans_buf_copy_type(ptr noundef %38, ptr noundef %84) #12
  %85 = ptrtoint ptr %blk1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %38, ptr %blk1, align 8
  %blkno62 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1, i32 0, i32 1
  %86 = ptrtoint ptr %blkno62 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv2.i, ptr %blkno62, align 4
  %87 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp64 = icmp eq i32 %88, 0
  br i1 %cmp64, label %cond.true66, label %if.end57.cond.end68_crit_edge

if.end57.cond.end68_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end68

cond.true66:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %leafblk, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true66, %if.end57.cond.end68_crit_edge
  %cond = phi i32 [ %92, %cond.true66 ], [ 0, %if.end57.cond.end68_crit_edge ]
  %call70 = call i32 @xfs_da3_node_create(ptr noundef %3, i32 noundef %cond, i32 noundef %level.0, ptr noundef nonnull %bp, i32 noundef %88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %cond.end68.cleanup_crit_edge

cond.end68.cleanup_crit_edge:                     ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end73:                                         ; preds = %cond.end68
  %93 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bp, align 4
  %b_addr74 = getelementptr inbounds %struct.xfs_buf, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %b_addr74 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %b_addr74, align 4
  %97 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %14, align 8
  %m_features.i.i227 = getelementptr inbounds %struct.xfs_mount, ptr %98, i32 0, i32 61
  %99 = ptrtoint ptr %m_features.i.i227 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %m_features.i.i227, align 8
  %and.i.i228 = and i64 %100, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i228)
  %tobool.i.not.i229 = icmp eq i64 %and.i.i228, 0
  br i1 %tobool.i.not.i229, label %if.else.i254, label %if.then.i241

if.then.i241:                                     ; preds = %if.end73
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %96, align 8
  %back.i230 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 1
  %103 = ptrtoint ptr %back.i230 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %back.i230, align 4
  %magic.i232 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 2
  %105 = ptrtoint ptr %magic.i232 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %magic.i232, align 8
  %__level.i236 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %96, i32 0, i32 2
  %107 = ptrtoint ptr %__level.i236 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %__level.i236, align 2
  %__btree.i238 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %96, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %106)
  %cmp.i240 = icmp eq i16 %106, 16062
  br i1 %cmp.i240, label %if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge, label %cond.false.i242, !prof !216

if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge: ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit257

cond.false.i242:                                  ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit257

if.else.i254:                                     ; preds = %if.end73
  %109 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %96, align 4
  %back22.i243 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 1
  %111 = ptrtoint ptr %back22.i243 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %back22.i243, align 4
  %magic26.i245 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 2
  %113 = ptrtoint ptr %magic26.i245 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %magic26.i245, align 4
  %__level32.i249 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %96, i32 0, i32 2
  %115 = ptrtoint ptr %__level32.i249 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %__level32.i249, align 2
  %__btree34.i251 = getelementptr inbounds %struct.xfs_da_intnode, ptr %96, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %114)
  %cmp39.i253 = icmp eq i16 %114, -322
  br i1 %cmp39.i253, label %if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge, label %cond.false48.i255, !prof !216

if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge: ; preds = %if.else.i254
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit257

cond.false48.i255:                                ; preds = %if.else.i254
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit257

xfs_da3_node_hdr_from_disk.exit257:               ; preds = %cond.false48.i255, %if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge, %cond.false.i242, %if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge
  %nodehdr.sroa.25279.0 = phi ptr [ %__btree34.i251, %if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %__btree34.i251, %cond.false48.i255 ], [ %__btree.i238, %if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %__btree.i238, %cond.false.i242 ]
  %nodehdr.sroa.21.0 = phi i16 [ %116, %if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %116, %cond.false48.i255 ], [ %108, %if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %108, %cond.false.i242 ]
  %nodehdr.sroa.11.0 = phi i16 [ -322, %if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %114, %cond.false48.i255 ], [ 16062, %if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %106, %cond.false.i242 ]
  %nodehdr.sroa.7.0 = phi i32 [ %112, %if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %112, %cond.false48.i255 ], [ %104, %if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %104, %cond.false.i242 ]
  %nodehdr.sroa.0.0 = phi i32 [ %110, %if.else.i254.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %110, %cond.false48.i255 ], [ %102, %if.then.i241.xfs_da3_node_hdr_from_disk.exit257_crit_edge ], [ %102, %cond.false.i242 ]
  %hashval = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1, i32 0, i32 4
  %117 = ptrtoint ptr %hashval to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hashval, align 4
  %119 = ptrtoint ptr %nodehdr.sroa.25279.0 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %nodehdr.sroa.25279.0, align 4
  %120 = ptrtoint ptr %blkno62 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %blkno62, align 4
  %before = getelementptr inbounds %struct.xfs_da_node_entry, ptr %nodehdr.sroa.25279.0, i32 0, i32 1
  %122 = ptrtoint ptr %before to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %before, align 4
  %hashval81 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2, i32 0, i32 4
  %123 = ptrtoint ptr %hashval81 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hashval81, align 4
  %arrayidx82 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.25279.0, i32 1
  %125 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx82, align 4
  %blkno84 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2, i32 0, i32 1
  %126 = ptrtoint ptr %blkno84 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %blkno84, align 4
  %before86 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.25279.0, i32 1, i32 1
  %128 = ptrtoint ptr %before86 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %before86, align 4
  %129 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %14, align 8
  %m_features.i.i258 = getelementptr inbounds %struct.xfs_mount, ptr %130, i32 0, i32 61
  %131 = ptrtoint ptr %m_features.i.i258 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %m_features.i.i258, align 8
  %and.i.i259 = and i64 %132, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i259)
  %tobool.i.not.i260 = icmp eq i64 %and.i.i259, 0
  br i1 %tobool.i.not.i260, label %if.else.i269, label %if.then.i262

if.then.i262:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit257
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %nodehdr.sroa.11.0)
  %cmp.i261 = icmp eq i16 %nodehdr.sroa.11.0, 16062
  br i1 %cmp.i261, label %if.then.i262.cond.end.i_crit_edge, label %cond.false.i263, !prof !216

if.then.i262.cond.end.i_crit_edge:                ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i263:                                  ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i263, %if.then.i262.cond.end.i_crit_edge
  %133 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %nodehdr.sroa.0.0, ptr %96, align 8
  %back8.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 1
  %134 = ptrtoint ptr %back8.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %nodehdr.sroa.7.0, ptr %back8.i, align 4
  %magic13.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 2
  %135 = ptrtoint ptr %magic13.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %nodehdr.sroa.11.0, ptr %magic13.i, align 8
  %__count.i266 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %96, i32 0, i32 1
  %136 = ptrtoint ptr %__count.i266 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 2, ptr %__count.i266, align 8
  %__level.i268 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %96, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

if.else.i269:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %nodehdr.sroa.11.0)
  %cmp18.i = icmp eq i16 %nodehdr.sroa.11.0, -322
  br i1 %cmp18.i, label %if.else.i269.cond.end28.i_crit_edge, label %cond.false27.i, !prof !216

if.else.i269.cond.end28.i_crit_edge:              ; preds = %if.else.i269
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28.i

cond.false27.i:                                   ; preds = %if.else.i269
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false27.i, %if.else.i269.cond.end28.i_crit_edge
  %137 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %nodehdr.sroa.0.0, ptr %96, align 4
  %back36.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 1
  %138 = ptrtoint ptr %back36.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %nodehdr.sroa.7.0, ptr %back36.i, align 4
  %magic40.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %96, i32 0, i32 2
  %139 = ptrtoint ptr %magic40.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %nodehdr.sroa.11.0, ptr %magic40.i, align 4
  %__count43.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %96, i32 0, i32 1
  %140 = ptrtoint ptr %__count43.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 2, ptr %__count43.i, align 4
  %__level46.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %96, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

xfs_da3_node_hdr_to_disk.exit:                    ; preds = %cond.end28.i, %cond.end.i
  %__level.i268.sink = phi ptr [ %__level.i268, %cond.end.i ], [ %__level46.i, %cond.end28.i ]
  %141 = ptrtoint ptr %__level.i268.sink to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %nodehdr.sroa.21.0, ptr %__level.i268.sink, align 2
  %142 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %magic, align 4
  %144 = zext i16 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %143, label %xfs_da3_node_hdr_to_disk.exit.if.end142_crit_edge [
    i16 -11521, label %xfs_da3_node_hdr_to_disk.exit.if.then102_crit_edge
    i16 15871, label %xfs_da3_node_hdr_to_disk.exit.if.then102_crit_edge285
  ]

xfs_da3_node_hdr_to_disk.exit.if.then102_crit_edge285: ; preds = %xfs_da3_node_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

xfs_da3_node_hdr_to_disk.exit.if.then102_crit_edge: ; preds = %xfs_da3_node_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

xfs_da3_node_hdr_to_disk.exit.if.end142_crit_edge: ; preds = %xfs_da3_node_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

if.then102:                                       ; preds = %xfs_da3_node_hdr_to_disk.exit.if.then102_crit_edge, %xfs_da3_node_hdr_to_disk.exit.if.then102_crit_edge285
  %145 = ptrtoint ptr %blkno62 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %blkno62, align 4
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %3, align 8
  %leafblk105 = getelementptr inbounds %struct.xfs_da_geometry, ptr %148, i32 0, i32 10
  %149 = ptrtoint ptr %leafblk105 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %leafblk105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %150)
  %cmp106.not = icmp ult i32 %146, %150
  br i1 %cmp106.not, label %if.then102.cond.false119_crit_edge, label %land.rhs, !prof !238

if.then102.cond.false119_crit_edge:               ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false119

land.rhs:                                         ; preds = %if.then102
  %freeblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %148, i32 0, i32 13
  %151 = ptrtoint ptr %freeblk to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %freeblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %152)
  %cmp110 = icmp ult i32 %146, %152
  br i1 %cmp110, label %land.rhs.cond.end120_crit_edge, label %land.rhs.cond.false119_crit_edge, !prof !216

land.rhs.cond.false119_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false119

land.rhs.cond.end120_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end120

cond.false119:                                    ; preds = %land.rhs.cond.false119_crit_edge, %if.then102.cond.false119_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 746) #12
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119, %land.rhs.cond.end120_crit_edge
  %153 = ptrtoint ptr %blkno84 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %blkno84, align 4
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %3, align 8
  %leafblk123 = getelementptr inbounds %struct.xfs_da_geometry, ptr %156, i32 0, i32 10
  %157 = ptrtoint ptr %leafblk123 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %leafblk123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %158)
  %cmp124.not = icmp ult i32 %154, %158
  br i1 %cmp124.not, label %cond.end120.cond.false140_crit_edge, label %land.rhs126, !prof !238

cond.end120.cond.false140_crit_edge:              ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false140

land.rhs126:                                      ; preds = %cond.end120
  %freeblk129 = getelementptr inbounds %struct.xfs_da_geometry, ptr %156, i32 0, i32 13
  %159 = ptrtoint ptr %freeblk129 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %freeblk129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %160)
  %cmp130 = icmp ult i32 %154, %160
  br i1 %cmp130, label %land.rhs126.if.end142_crit_edge, label %land.rhs126.cond.false140_crit_edge, !prof !216

land.rhs126.cond.false140_crit_edge:              ; preds = %land.rhs126
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false140

land.rhs126.if.end142_crit_edge:                  ; preds = %land.rhs126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

cond.false140:                                    ; preds = %land.rhs126.cond.false140_crit_edge, %cond.end120.cond.false140_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 748) #12
  br label %if.end142

if.end142:                                        ; preds = %cond.false140, %land.rhs126.if.end142_crit_edge, %xfs_da3_node_hdr_to_disk.exit.if.end142_crit_edge
  %sub.ptr.lhs.cast143 = ptrtoint ptr %nodehdr.sroa.25279.0 to i32
  %sub.ptr.rhs.cast144 = ptrtoint ptr %96 to i32
  %sub.ptr.sub145 = sub i32 %sub.ptr.lhs.cast143, %sub.ptr.rhs.cast144
  %sub150 = add i32 %sub.ptr.sub145, 15
  call void @xfs_trans_log_buf(ptr noundef %16, ptr noundef %94, i32 noundef %sub.ptr.sub145, i32 noundef %sub150) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %cond.end68.cleanup_crit_edge, %xfs_da_get_buf.exit.cleanup_crit_edge, %xfs_da_grow_inode.exit
  %retval.0 = phi i32 [ 0, %if.end142 ], [ %call.i, %xfs_da_grow_inode.exit ], [ %error.0.i, %xfs_da_get_buf.exit.cleanup_crit_edge ], [ %call70, %cond.end68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_join(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %action = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %action) #12
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %action, align 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_da_join(ptr noundef %2)
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %blk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %path, align 8
  %sub = add i32 %4, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %arrayidx6 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 3, i32 1, i32 %sub
  %magic = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 0, i32 5
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65214, i32 %6)
  %cmp = icmp eq i32 %6, 65214
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !216

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1071) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %magic11 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %7 = ptrtoint ptr %magic11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %magic11, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %8, label %cond.false22 [
    i32 64494, label %cond.end.cond.end23_crit_edge
    i32 54015, label %cond.end.cond.end23_crit_edge128
  ]

cond.end.cond.end23_crit_edge128:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

cond.end.cond.end23_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1073) #12
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.end.cond.end23_crit_edge, %cond.end.cond.end23_crit_edge128
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp26124 = icmp sgt i32 %.pr, 1
  br i1 %cmp26124, label %cond.end23.for.body_crit_edge, label %cond.end23.for.end_crit_edge

cond.end23.for.end_crit_edge:                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cond.end23.for.body_crit_edge:                    ; preds = %cond.end23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end23.for.body_crit_edge
  %save_blk.0126 = phi ptr [ %incdec.ptr60, %for.inc.for.body_crit_edge ], [ %arrayidx6, %cond.end23.for.body_crit_edge ]
  %drop_blk.0125 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %arrayidx, %cond.end23.for.body_crit_edge ]
  %magic27 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk.0125, i32 0, i32 5
  %11 = ptrtoint ptr %magic27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %magic27, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %12, label %for.body.sw.epilog_crit_edge [
    i32 64494, label %sw.bb
    i32 54015, label %sw.bb32
    i32 65214, label %sw.bb40
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %call = call i32 @xfs_attr3_leaf_toosmall(ptr noundef %state, ptr noundef nonnull %action) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %14 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp29 = icmp eq i32 %15, 0
  br i1 %cmp29, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_attr3_leaf_unbalance(ptr noundef %state, ptr noundef %drop_blk.0125, ptr noundef %save_blk.0126) #12
  br label %sw.epilog

sw.bb32:                                          ; preds = %for.body
  %call33 = call i32 @xfs_dir2_leafn_toosmall(ptr noundef %state, ptr noundef nonnull %action) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %sw.bb32
  %16 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp37 = icmp eq i32 %17, 0
  br i1 %cmp37, label %if.end36.cleanup_crit_edge, label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_dir2_leafn_unbalance(ptr noundef %state, ptr noundef %drop_blk.0125, ptr noundef %save_blk.0126) #12
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.body
  call fastcc void @xfs_da3_node_remove(ptr noundef %state, ptr noundef %drop_blk.0125)
  call void @xfs_da3_fixhashpath(ptr noundef %state, ptr noundef %path)
  %call42 = call fastcc i32 @xfs_da3_node_toosmall(ptr noundef %state, ptr noundef nonnull %action)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %sw.bb40
  %18 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp46 = icmp eq i32 %19, 0
  br i1 %cmp46, label %if.end45.cleanup_crit_edge, label %if.end48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @xfs_da3_node_unbalance(ptr noundef %state, ptr noundef %drop_blk.0125, ptr noundef %save_blk.0126)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end48, %if.end39, %if.end31, %for.body.sw.epilog_crit_edge
  call void @xfs_da3_fixhashpath(ptr noundef %state, ptr noundef %altpath)
  %call50 = call fastcc i32 @xfs_da3_blk_unlink(ptr noundef %state, ptr noundef %drop_blk.0125, ptr noundef %save_blk.0126)
  call fastcc void @xfs_da_state_kill_altpath(ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %sw.epilog
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 8
  %blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk.0125, i32 0, i32 1
  %22 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blkno, align 4
  %24 = ptrtoint ptr %drop_blk.0125 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drop_blk.0125, align 8
  %call55 = call i32 @xfs_da_shrink_inode(ptr noundef %21, i32 noundef %23, ptr noundef %25)
  %26 = ptrtoint ptr %drop_blk.0125 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %drop_blk.0125, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %for.inc, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end53
  %incdec.ptr = getelementptr %struct.xfs_da_state_blk, ptr %drop_blk.0125, i32 -1
  %incdec.ptr60 = getelementptr %struct.xfs_da_state_blk, ptr %save_blk.0126, i32 -1
  %27 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %path, align 8
  %dec = add i32 %28, -1
  store i32 %dec, ptr %path, align 8
  %cmp26 = icmp sgt i32 %dec, 1
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end23.for.end_crit_edge
  %drop_blk.0.lcssa = phi ptr [ %arrayidx, %cond.end23.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  call fastcc void @xfs_da3_node_remove(ptr noundef %state, ptr noundef %drop_blk.0.lcssa)
  call void @xfs_da3_fixhashpath(ptr noundef %state, ptr noundef %path)
  %call67 = call fastcc i32 @xfs_da3_root_join(ptr noundef %state, ptr noundef %blk)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end53.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %for.end ], [ %call55, %if.end53.cleanup_crit_edge ], [ %call50, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %call42, %sw.bb40.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ %call33, %sw.bb32.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_join(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_join, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_join, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !239
  %call42 = tail call i32 @__traceiter_xfs_da_join(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !240
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_join, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_join, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_join.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_join.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2074, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @xfs_attr3_leaf_toosmall(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_attr3_leaf_unbalance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leafn_toosmall(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_leafn_unbalance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_da3_node_remove(ptr nocapture noundef readonly %state, ptr nocapture noundef %drop_blk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_da_node_remove(ptr noundef %1)
  %4 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drop_blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %back.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %__level.i, align 2
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %17)
  %cmp.i = icmp eq i16 %17, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %back22.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %back22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %back22.i, align 4
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %__level32.i, align 2
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %27)
  %cmp39.i = icmp eq i16 %27, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.29138.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %nodehdr.sroa.25.0 = phi i16 [ %31, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %31, %cond.false48.i ], [ %21, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %21, %cond.false.i ]
  %nodehdr.sroa.16.0 = phi i16 [ %29, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %29, %cond.false48.i ], [ %19, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %19, %cond.false.i ]
  %nodehdr.sroa.11.0 = phi i16 [ -322, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %27, %cond.false48.i ], [ 16062, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %17, %cond.false.i ]
  %nodehdr.sroa.7.0 = phi i32 [ %25, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %25, %cond.false48.i ], [ %15, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %15, %cond.false.i ]
  %nodehdr.sroa.0.0 = phi i32 [ %23, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %23, %cond.false48.i ], [ %13, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %13, %cond.false.i ]
  %index3 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk, i32 0, i32 3
  %32 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index3, align 8
  %conv = zext i16 %nodehdr.sroa.16.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv)
  %cmp = icmp slt i32 %33, %conv
  br i1 %cmp, label %xfs_da3_node_hdr_from_disk.exit.cond.end_crit_edge, label %cond.false, !prof !216

xfs_da3_node_hdr_from_disk.exit.cond.end_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 1449) #12
  %34 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %index3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_da3_node_hdr_from_disk.exit.cond.end_crit_edge
  %35 = phi i32 [ %33, %xfs_da3_node_hdr_from_disk.exit.cond.end_crit_edge ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp7 = icmp sgt i32 %35, -1
  br i1 %cmp7, label %cond.end.cond.end17_crit_edge, label %cond.false16, !prof !216

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 1450) #12
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.end.cond.end17_crit_edge
  %36 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index3, align 8
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %sub)
  %cmp22 = icmp slt i32 %37, %sub
  br i1 %cmp22, label %if.then, label %cond.end17.if.end_crit_edge

cond.end17.if.end_crit_edge:                      ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = ptrtoint ptr %7 to i32
  br label %if.end

if.then:                                          ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  %38 = xor i32 %37, -1
  %sub27 = add i32 %38, %conv
  %mul = shl i32 %sub27, 3
  %arrayidx = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29138.0, i32 %37
  %add = add nsw i32 %37, 1
  %arrayidx28 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29138.0, i32 %add
  %39 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx28, i32 %mul)
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trans, align 4
  %44 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %drop_blk, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add36 = add i32 %mul, -1
  %sub37 = add i32 %add36, %sub.ptr.sub
  tail call void @xfs_trans_log_buf(ptr noundef %43, ptr noundef %45, i32 noundef %sub.ptr.sub, i32 noundef %sub37) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end17.if.end_crit_edge
  %sub.ptr.rhs.cast47.pre-phi = phi i32 [ %.pre, %cond.end17.if.end_crit_edge ], [ %sub.ptr.rhs.cast, %if.then ]
  %index.0 = phi i32 [ %37, %cond.end17.if.end_crit_edge ], [ %sub, %if.then ]
  %arrayidx41 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29138.0, i32 %index.0
  %46 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 0, ptr %arrayidx41, align 4
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state, align 8
  %trans43 = getelementptr inbounds %struct.xfs_da_args, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %trans43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans43, align 4
  %51 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %drop_blk, align 8
  %sub.ptr.lhs.cast46 = ptrtoint ptr %arrayidx41 to i32
  %sub.ptr.sub48 = sub i32 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47.pre-phi
  %sub54 = add i32 %sub.ptr.sub48, 7
  tail call void @xfs_trans_log_buf(ptr noundef %50, ptr noundef %52, i32 noundef %sub.ptr.sub48, i32 noundef %sub54) #12
  %sub57 = add i16 %nodehdr.sroa.16.0, -1
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 8
  %m_features.i.i116 = getelementptr inbounds %struct.xfs_mount, ptr %54, i32 0, i32 61
  %55 = ptrtoint ptr %m_features.i.i116 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %m_features.i.i116, align 8
  %and.i.i117 = and i64 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i117)
  %tobool.i.not.i118 = icmp eq i64 %and.i.i117, 0
  br i1 %tobool.i.not.i118, label %if.else.i127, label %if.then.i120

if.then.i120:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %nodehdr.sroa.11.0)
  %cmp.i119 = icmp eq i16 %nodehdr.sroa.11.0, 16062
  br i1 %cmp.i119, label %if.then.i120.cond.end.i_crit_edge, label %cond.false.i121, !prof !216

if.then.i120.cond.end.i_crit_edge:                ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i121:                                  ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i121, %if.then.i120.cond.end.i_crit_edge
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %nodehdr.sroa.0.0, ptr %7, align 8
  %back8.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %58 = ptrtoint ptr %back8.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %nodehdr.sroa.7.0, ptr %back8.i, align 4
  %magic13.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %59 = ptrtoint ptr %magic13.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %nodehdr.sroa.11.0, ptr %magic13.i, align 8
  %__count.i124 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %60 = ptrtoint ptr %__count.i124 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %sub57, ptr %__count.i124, align 8
  %__level.i126 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

if.else.i127:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %nodehdr.sroa.11.0)
  %cmp18.i = icmp eq i16 %nodehdr.sroa.11.0, -322
  br i1 %cmp18.i, label %if.else.i127.cond.end28.i_crit_edge, label %cond.false27.i, !prof !216

if.else.i127.cond.end28.i_crit_edge:              ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28.i

cond.false27.i:                                   ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false27.i, %if.else.i127.cond.end28.i_crit_edge
  %61 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %nodehdr.sroa.0.0, ptr %7, align 4
  %back36.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %62 = ptrtoint ptr %back36.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %nodehdr.sroa.7.0, ptr %back36.i, align 4
  %magic40.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %63 = ptrtoint ptr %magic40.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %nodehdr.sroa.11.0, ptr %magic40.i, align 4
  %__count43.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %64 = ptrtoint ptr %__count43.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %sub57, ptr %__count43.i, align 4
  %__level46.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

xfs_da3_node_hdr_to_disk.exit:                    ; preds = %cond.end28.i, %cond.end.i
  %__level.i126.sink = phi ptr [ %__level.i126, %cond.end.i ], [ %__level46.i, %cond.end28.i ]
  %65 = ptrtoint ptr %__level.i126.sink to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %nodehdr.sroa.25.0, ptr %__level.i126.sink, align 2
  %66 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %state, align 8
  %trans61 = getelementptr inbounds %struct.xfs_da_args, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %trans61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %trans61, align 4
  %70 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drop_blk, align 8
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %67, align 8
  %node_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %node_hdr_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %node_hdr_size, align 4
  %sub72 = add i32 %75, -1
  tail call void @xfs_trans_log_buf(ptr noundef %69, ptr noundef %71, i32 noundef 0, i32 noundef %sub72) #12
  %sub73 = add i32 %index.0, -1
  %arrayidx74 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29138.0, i32 %sub73
  %76 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx74, align 4
  %hashval75 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk, i32 0, i32 4
  %78 = ptrtoint ptr %hashval75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %hashval75, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_node_toosmall(ptr noundef %state, ptr nocapture noundef writeonly %action) unnamed_addr #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #12
  %1 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %retval1, align 4, !annotation !224
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp2, align 8
  tail call fastcc void @trace_xfs_da_node_toosmall(ptr noundef %3)
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %path, align 8
  %sub = add i32 %7, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 8
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %back.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %magic.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %__count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %21)
  %cmp.i = icmp eq i16 %21, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %11, align 4
  %back22.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %26 = ptrtoint ptr %back22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %back22.i, align 4
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %28 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %__count29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %29)
  %cmp39.i = icmp eq i16 %29, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.13.0 = phi i16 [ %31, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %31, %cond.false48.i ], [ %23, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %23, %cond.false.i ]
  %nodehdr.sroa.7.0 = phi i32 [ %27, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %27, %cond.false48.i ], [ %19, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %19, %cond.false.i ]
  %nodehdr.sroa.0.0 = phi i32 [ %25, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %25, %cond.false48.i ], [ %17, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %17, %cond.false.i ]
  %conv = zext i16 %nodehdr.sroa.13.0 to i32
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %node_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %node_ents to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %node_ents, align 4
  %shr = lshr i32 %37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp = icmp ult i32 %shr, %conv
  br i1 %cmp, label %xfs_da3_node_hdr_from_disk.exit.cleanup91.sink.split_crit_edge, label %if.end

xfs_da3_node_hdr_from_disk.exit.cleanup91.sink.split_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91.sink.split

if.end:                                           ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nodehdr.sroa.13.0)
  %cmp12 = icmp eq i16 %nodehdr.sroa.13.0, 0
  br i1 %cmp12, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp15 = icmp ne i32 %39, 0
  %conv16 = zext i1 %cmp15 to i32
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %40 = call ptr @memcpy(ptr %altpath, ptr %path, i32 168)
  %call = call i32 @xfs_da3_path_shift(ptr noundef %state, ptr noundef %altpath, i32 noundef %conv16, i32 noundef 0, ptr noundef nonnull %retval1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end20, label %if.then14.cleanup91_crit_edge

if.then14.cleanup91_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool21.not = icmp eq i32 %42, 0
  %. = select i1 %tobool21.not, i32 2, i32 0
  br label %cleanup91.sink.split

if.end24:                                         ; preds = %if.end
  %shr31 = lshr i32 %37, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %nodehdr.sroa.0.0, i32 %nodehdr.sroa.7.0)
  %cmp37 = icmp ult i32 %nodehdr.sroa.0.0, %nodehdr.sroa.7.0
  %43 = add nuw nsw i32 %shr31, %conv
  %44 = call i32 @llvm.umin.i32(i32 %nodehdr.sroa.0.0, i32 %nodehdr.sroa.7.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp47 = icmp eq i32 %44, 0
  br i1 %cmp47, label %if.end24.for.inc_crit_edge, label %if.end50

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end50:                                         ; preds = %if.end24
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans, align 4
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %46, i32 0, i32 13
  %49 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %whichfork, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %48, ptr noundef %5, i32 noundef %44, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %50, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end50.cleanup91_crit_edge

if.end50.cleanup91_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

lor.lhs.false.i:                                  ; preds = %if.end50
  %51 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bp, align 4
  %tobool1.not.i = icmp eq ptr %52, null
  %tobool3.not.i = icmp eq ptr %48, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end56_crit_edge, label %xfs_da3_node_read.exit

lor.lhs.false.i.if.end56_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

xfs_da3_node_read.exit:                           ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %48, ptr noundef nonnull %52) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool54.not = icmp eq i32 %call4.i, 0
  br i1 %tobool54.not, label %xfs_da3_node_read.exit.if.end56_crit_edge, label %xfs_da3_node_read.exit.cleanup91_crit_edge

xfs_da3_node_read.exit.cleanup91_crit_edge:       ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

xfs_da3_node_read.exit.if.end56_crit_edge:        ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.end56:                                         ; preds = %xfs_da3_node_read.exit.if.end56_crit_edge, %lor.lhs.false.i.if.end56_crit_edge
  %53 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bp, align 4
  %b_addr57 = getelementptr inbounds %struct.xfs_buf, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %b_addr57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_addr57, align 4
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 8
  %m_features.i.i148 = getelementptr inbounds %struct.xfs_mount, ptr %58, i32 0, i32 61
  %59 = ptrtoint ptr %m_features.i.i148 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %m_features.i.i148, align 8
  %and.i.i149 = and i64 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i149)
  %tobool.i.not.i150 = icmp eq i64 %and.i.i149, 0
  %magic26.i166 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %56, i32 0, i32 2
  br i1 %tobool.i.not.i150, label %if.else.i175, label %if.then.i162

if.then.i162:                                     ; preds = %if.end56
  %61 = ptrtoint ptr %magic26.i166 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %magic26.i166, align 8
  %__count.i155 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %56, i32 0, i32 1
  %63 = ptrtoint ptr %__count.i155 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %__count.i155, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %62)
  %cmp.i161 = icmp eq i16 %62, 16062
  br i1 %cmp.i161, label %if.then.i162.xfs_da3_node_hdr_from_disk.exit178_crit_edge, label %cond.false.i163, !prof !216

if.then.i162.xfs_da3_node_hdr_from_disk.exit178_crit_edge: ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit178

cond.false.i163:                                  ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit178

if.else.i175:                                     ; preds = %if.end56
  %65 = ptrtoint ptr %magic26.i166 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %magic26.i166, align 4
  %__count29.i168 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %56, i32 0, i32 1
  %67 = ptrtoint ptr %__count29.i168 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %__count29.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %66)
  %cmp39.i174 = icmp eq i16 %66, -322
  br i1 %cmp39.i174, label %if.else.i175.xfs_da3_node_hdr_from_disk.exit178_crit_edge, label %cond.false48.i176, !prof !216

if.else.i175.xfs_da3_node_hdr_from_disk.exit178_crit_edge: ; preds = %if.else.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit178

cond.false48.i176:                                ; preds = %if.else.i175
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit178

xfs_da3_node_hdr_from_disk.exit178:               ; preds = %cond.false48.i176, %if.else.i175.xfs_da3_node_hdr_from_disk.exit178_crit_edge, %cond.false.i163, %if.then.i162.xfs_da3_node_hdr_from_disk.exit178_crit_edge
  %thdr.sroa.9.0 = phi i16 [ %68, %if.else.i175.xfs_da3_node_hdr_from_disk.exit178_crit_edge ], [ %68, %cond.false48.i176 ], [ %64, %if.then.i162.xfs_da3_node_hdr_from_disk.exit178_crit_edge ], [ %64, %cond.false.i163 ]
  %69 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %state, align 8
  %trans60 = getelementptr inbounds %struct.xfs_da_args, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %trans60 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trans60, align 4
  tail call void @xfs_trans_brelse(ptr noundef %72, ptr noundef %54) #12
  %conv62 = zext i16 %thdr.sroa.9.0 to i32
  %73 = add nuw nsw i32 %43, %conv62
  %sub63 = sub i32 %37, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub63)
  %cmp64 = icmp sgt i32 %sub63, -1
  br i1 %cmp64, label %xfs_da3_node_hdr_from_disk.exit178.if.end72_crit_edge, label %xfs_da3_node_hdr_from_disk.exit178.for.inc_crit_edge

xfs_da3_node_hdr_from_disk.exit178.for.inc_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit178
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

xfs_da3_node_hdr_from_disk.exit178.if.end72_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

for.inc:                                          ; preds = %xfs_da3_node_hdr_from_disk.exit178.for.inc_crit_edge, %if.end24.for.inc_crit_edge
  %lnot = xor i1 %cmp37, true
  %74 = call i32 @llvm.umax.i32(i32 %nodehdr.sroa.0.0, i32 %nodehdr.sroa.7.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp47.1 = icmp eq i32 %74, 0
  br i1 %cmp47.1, label %for.inc.cleanup91.sink.split_crit_edge, label %if.end50.1

for.inc.cleanup91.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91.sink.split

if.end50.1:                                       ; preds = %for.inc
  %75 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state, align 8
  %trans.1 = getelementptr inbounds %struct.xfs_da_args, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %trans.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %trans.1, align 4
  %whichfork.1 = getelementptr inbounds %struct.xfs_da_args, ptr %76, i32 0, i32 13
  %79 = ptrtoint ptr %whichfork.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %whichfork.1, align 4
  %call.i.1 = call i32 @xfs_da_read_buf(ptr noundef %78, ptr noundef %5, i32 noundef %74, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %80, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %lor.lhs.false.i.1, label %if.end50.1.cleanup91_crit_edge

if.end50.1.cleanup91_crit_edge:                   ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

lor.lhs.false.i.1:                                ; preds = %if.end50.1
  %81 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bp, align 4
  %tobool1.not.i.1 = icmp eq ptr %82, null
  %tobool3.not.i.1 = icmp eq ptr %78, null
  %or.cond.i.1 = or i1 %tobool3.not.i.1, %tobool1.not.i.1
  br i1 %or.cond.i.1, label %lor.lhs.false.i.1.if.end56.1_crit_edge, label %xfs_da3_node_read.exit.1

lor.lhs.false.i.1.if.end56.1_crit_edge:           ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.1

xfs_da3_node_read.exit.1:                         ; preds = %lor.lhs.false.i.1
  %call4.i.1 = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %78, ptr noundef nonnull %82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1)
  %tobool54.not.1 = icmp eq i32 %call4.i.1, 0
  br i1 %tobool54.not.1, label %xfs_da3_node_read.exit.1.if.end56.1_crit_edge, label %xfs_da3_node_read.exit.1.cleanup91_crit_edge

xfs_da3_node_read.exit.1.cleanup91_crit_edge:     ; preds = %xfs_da3_node_read.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

xfs_da3_node_read.exit.1.if.end56.1_crit_edge:    ; preds = %xfs_da3_node_read.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.1

if.end56.1:                                       ; preds = %xfs_da3_node_read.exit.1.if.end56.1_crit_edge, %lor.lhs.false.i.1.if.end56.1_crit_edge
  %83 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bp, align 4
  %b_addr57.1 = getelementptr inbounds %struct.xfs_buf, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %b_addr57.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_addr57.1, align 4
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %5, align 8
  %m_features.i.i148.1 = getelementptr inbounds %struct.xfs_mount, ptr %88, i32 0, i32 61
  %89 = ptrtoint ptr %m_features.i.i148.1 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %m_features.i.i148.1, align 8
  %and.i.i149.1 = and i64 %90, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i149.1)
  %tobool.i.not.i150.1 = icmp eq i64 %and.i.i149.1, 0
  %magic26.i166.1 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %86, i32 0, i32 2
  br i1 %tobool.i.not.i150.1, label %if.else.i175.1, label %if.then.i162.1

if.then.i162.1:                                   ; preds = %if.end56.1
  %91 = ptrtoint ptr %magic26.i166.1 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %magic26.i166.1, align 8
  %__count.i155.1 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %86, i32 0, i32 1
  %93 = ptrtoint ptr %__count.i155.1 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %__count.i155.1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %92)
  %cmp.i161.1 = icmp eq i16 %92, 16062
  br i1 %cmp.i161.1, label %if.then.i162.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge, label %cond.false.i163.1, !prof !216

if.then.i162.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge: ; preds = %if.then.i162.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit178.1

cond.false.i163.1:                                ; preds = %if.then.i162.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit178.1

if.else.i175.1:                                   ; preds = %if.end56.1
  %95 = ptrtoint ptr %magic26.i166.1 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %magic26.i166.1, align 4
  %__count29.i168.1 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %86, i32 0, i32 1
  %97 = ptrtoint ptr %__count29.i168.1 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %__count29.i168.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %96)
  %cmp39.i174.1 = icmp eq i16 %96, -322
  br i1 %cmp39.i174.1, label %if.else.i175.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge, label %cond.false48.i176.1, !prof !216

if.else.i175.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge: ; preds = %if.else.i175.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit178.1

cond.false48.i176.1:                              ; preds = %if.else.i175.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit178.1

xfs_da3_node_hdr_from_disk.exit178.1:             ; preds = %cond.false48.i176.1, %if.else.i175.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge, %cond.false.i163.1, %if.then.i162.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge
  %thdr.sroa.9.0.1 = phi i16 [ %98, %if.else.i175.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge ], [ %98, %cond.false48.i176.1 ], [ %94, %if.then.i162.1.xfs_da3_node_hdr_from_disk.exit178.1_crit_edge ], [ %94, %cond.false.i163.1 ]
  %99 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %state, align 8
  %trans60.1 = getelementptr inbounds %struct.xfs_da_args, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %trans60.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %trans60.1, align 4
  tail call void @xfs_trans_brelse(ptr noundef %102, ptr noundef %84) #12
  %conv62.1 = zext i16 %thdr.sroa.9.0.1 to i32
  %103 = add nuw nsw i32 %43, %conv62.1
  %sub63.1 = sub i32 %37, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub63.1)
  %cmp64.1 = icmp sgt i32 %sub63.1, -1
  br i1 %cmp64.1, label %xfs_da3_node_hdr_from_disk.exit178.1.if.end72_crit_edge, label %xfs_da3_node_hdr_from_disk.exit178.1.cleanup91.sink.split_crit_edge

xfs_da3_node_hdr_from_disk.exit178.1.cleanup91.sink.split_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit178.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91.sink.split

xfs_da3_node_hdr_from_disk.exit178.1.if.end72_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit178.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %xfs_da3_node_hdr_from_disk.exit178.1.if.end72_crit_edge, %xfs_da3_node_hdr_from_disk.exit178.if.end72_crit_edge
  %forward.0.in201.lcssa206 = phi i1 [ %cmp37, %xfs_da3_node_hdr_from_disk.exit178.if.end72_crit_edge ], [ %lnot, %xfs_da3_node_hdr_from_disk.exit178.1.if.end72_crit_edge ]
  %spec.select.lcssa204 = phi i32 [ %44, %xfs_da3_node_hdr_from_disk.exit178.if.end72_crit_edge ], [ %74, %xfs_da3_node_hdr_from_disk.exit178.1.if.end72_crit_edge ]
  %forward.0.le = zext i1 %forward.0.in201.lcssa206 to i32
  %altpath73 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %104 = call ptr @memcpy(ptr %altpath73, ptr %path, i32 168)
  %blkno75 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub, i32 1
  %105 = ptrtoint ptr %blkno75 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %blkno75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.lcssa204, i32 %106)
  %cmp76 = icmp ult i32 %spec.select.lcssa204, %106
  %altpath73.path = select i1 %cmp76, ptr %altpath73, ptr %path
  %call83 = call i32 @xfs_da3_path_shift(ptr noundef %state, ptr noundef %altpath73.path, i32 noundef %forward.0.le, i32 noundef 0, ptr noundef nonnull %retval1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  br i1 %tobool85.not, label %if.end87, label %if.end72.cleanup91_crit_edge

if.end72.cleanup91_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

if.end87:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool88.not = icmp eq i32 %108, 0
  %.208 = zext i1 %tobool88.not to i32
  br label %cleanup91.sink.split

cleanup91.sink.split:                             ; preds = %if.end87, %xfs_da3_node_hdr_from_disk.exit178.1.cleanup91.sink.split_crit_edge, %for.inc.cleanup91.sink.split_crit_edge, %if.end20, %xfs_da3_node_hdr_from_disk.exit.cleanup91.sink.split_crit_edge
  %.sink = phi i32 [ %., %if.end20 ], [ 0, %xfs_da3_node_hdr_from_disk.exit.cleanup91.sink.split_crit_edge ], [ 0, %xfs_da3_node_hdr_from_disk.exit178.1.cleanup91.sink.split_crit_edge ], [ 0, %for.inc.cleanup91.sink.split_crit_edge ], [ %.208, %if.end87 ]
  %109 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %.sink, ptr %action, align 4
  br label %cleanup91

cleanup91:                                        ; preds = %cleanup91.sink.split, %if.end72.cleanup91_crit_edge, %xfs_da3_node_read.exit.1.cleanup91_crit_edge, %if.end50.1.cleanup91_crit_edge, %xfs_da3_node_read.exit.cleanup91_crit_edge, %if.end50.cleanup91_crit_edge, %if.then14.cleanup91_crit_edge
  %retval.2 = phi i32 [ %call, %if.then14.cleanup91_crit_edge ], [ %call83, %if.end72.cleanup91_crit_edge ], [ %call4.i, %xfs_da3_node_read.exit.cleanup91_crit_edge ], [ %call.i, %if.end50.cleanup91_crit_edge ], [ %call.i.1, %if.end50.1.cleanup91_crit_edge ], [ %call4.i.1, %xfs_da3_node_read.exit.1.cleanup91_crit_edge ], [ 0, %cleanup91.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_da3_node_unbalance(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %drop_blk, ptr nocapture noundef %save_blk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_da_node_unbalance(ptr noundef %1)
  %4 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drop_blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %8 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %save_blk, align 8
  %b_addr4 = getelementptr inbounds %struct.xfs_buf, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr4, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %16 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %__count.i, align 8
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %17)
  %cmp.i = icmp eq i16 %17, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %20 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %__count29.i, align 4
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %21)
  %cmp39.i = icmp eq i16 %21, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %drop_hdr.sroa.18174.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %drop_hdr.sroa.9.0 = phi i16 [ %23, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %23, %cond.false48.i ], [ %19, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %19, %cond.false.i ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %m_features.i.i116 = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 61
  %26 = ptrtoint ptr %m_features.i.i116 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %m_features.i.i116, align 8
  %and.i.i117 = and i64 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i117)
  %tobool.i.not.i118 = icmp eq i64 %and.i.i117, 0
  br i1 %tobool.i.not.i118, label %if.else.i143, label %if.then.i130

if.then.i130:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %11, align 8
  %back.i119 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %back.i119 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %back.i119, align 4
  %magic.i121 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %32 = ptrtoint ptr %magic.i121 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %magic.i121, align 8
  %__count.i123 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 1
  %34 = ptrtoint ptr %__count.i123 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %__count.i123, align 8
  %__level.i125 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 2
  %36 = ptrtoint ptr %__level.i125 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %__level.i125, align 2
  %__btree.i127 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %33)
  %cmp.i129 = icmp eq i16 %33, 16062
  br i1 %cmp.i129, label %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge, label %cond.false.i131, !prof !216

if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge: ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit145

cond.false.i131:                                  ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit145

if.else.i143:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %11, align 4
  %back22.i132 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %40 = ptrtoint ptr %back22.i132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %back22.i132, align 4
  %magic26.i134 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %42 = ptrtoint ptr %magic26.i134 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %magic26.i134, align 4
  %__count29.i136 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 1
  %44 = ptrtoint ptr %__count29.i136 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %__count29.i136, align 4
  %__level32.i138 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 2
  %46 = ptrtoint ptr %__level32.i138 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %__level32.i138, align 2
  %__btree34.i140 = getelementptr inbounds %struct.xfs_da_intnode, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %43)
  %cmp39.i142 = icmp eq i16 %43, -322
  br i1 %cmp39.i142, label %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge, label %cond.false48.i144, !prof !216

if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge: ; preds = %if.else.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit145

cond.false48.i144:                                ; preds = %if.else.i143
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit145

xfs_da3_node_hdr_from_disk.exit145:               ; preds = %cond.false48.i144, %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge, %cond.false.i131, %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge
  %save_hdr.sroa.30169.0 = phi ptr [ %__btree34.i140, %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %__btree34.i140, %cond.false48.i144 ], [ %__btree.i127, %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %__btree.i127, %cond.false.i131 ]
  %save_hdr.sroa.26.0 = phi i16 [ %47, %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %47, %cond.false48.i144 ], [ %37, %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %37, %cond.false.i131 ]
  %save_hdr.sroa.16.0 = phi i16 [ %45, %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %45, %cond.false48.i144 ], [ %35, %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %35, %cond.false.i131 ]
  %save_hdr.sroa.11.0 = phi i16 [ -322, %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %43, %cond.false48.i144 ], [ 16062, %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %33, %cond.false.i131 ]
  %save_hdr.sroa.7.0 = phi i32 [ %41, %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %41, %cond.false48.i144 ], [ %31, %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %31, %cond.false.i131 ]
  %save_hdr.sroa.0.0 = phi i32 [ %39, %if.else.i143.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %39, %cond.false48.i144 ], [ %29, %if.then.i130.xfs_da3_node_hdr_from_disk.exit145_crit_edge ], [ %29, %cond.false.i131 ]
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trans, align 4
  %52 = ptrtoint ptr %drop_hdr.sroa.18174.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %drop_hdr.sroa.18174.0, align 4
  %54 = ptrtoint ptr %save_hdr.sroa.30169.0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %save_hdr.sroa.30169.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp = icmp ult i32 %53, %55
  br i1 %cmp, label %xfs_da3_node_hdr_from_disk.exit145.if.then_crit_edge, label %lor.lhs.false

xfs_da3_node_hdr_from_disk.exit145.if.then_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit145
  call void @__sanitizer_cov_trace_pc() #14
  %.pre175 = zext i16 %save_hdr.sroa.16.0 to i32
  %.pre176 = zext i16 %drop_hdr.sroa.9.0 to i32
  br label %if.then

lor.lhs.false:                                    ; preds = %xfs_da3_node_hdr_from_disk.exit145
  %conv = zext i16 %drop_hdr.sroa.9.0 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx10 = getelementptr %struct.xfs_da_node_entry, ptr %drop_hdr.sroa.18174.0, i32 %sub
  %56 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx10, align 4
  %conv13 = zext i16 %save_hdr.sroa.16.0 to i32
  %sub14 = add nsw i32 %conv13, -1
  %arrayidx15 = getelementptr %struct.xfs_da_node_entry, ptr %save_hdr.sroa.30169.0, i32 %sub14
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp17 = icmp ult i32 %57, %59
  br i1 %cmp17, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %xfs_da3_node_hdr_from_disk.exit145.if.then_crit_edge
  %idxprom.pre-phi = phi i32 [ %.pre176, %xfs_da3_node_hdr_from_disk.exit145.if.then_crit_edge ], [ %conv, %lor.lhs.false.if.then_crit_edge ]
  %conv20.pre-phi = phi i32 [ %.pre175, %xfs_da3_node_hdr_from_disk.exit145.if.then_crit_edge ], [ %conv13, %lor.lhs.false.if.then_crit_edge ]
  %mul = shl nuw nsw i32 %conv20.pre-phi, 3
  %arrayidx22 = getelementptr %struct.xfs_da_node_entry, ptr %save_hdr.sroa.30169.0, i32 %idxprom.pre-phi
  %60 = call ptr @memmove(ptr %arrayidx22, ptr %save_hdr.sroa.30169.0, i32 %mul)
  %61 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %save_blk, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %save_hdr.sroa.30169.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nuw nsw i32 %conv20.pre-phi, %idxprom.pre-phi
  %mul34 = shl nuw nsw i32 %add, 3
  %add35 = add i32 %sub.ptr.sub, -1
  %sub36 = add i32 %add35, %mul34
  tail call void @xfs_trans_log_buf(ptr noundef %51, ptr noundef %62, i32 noundef %sub.ptr.sub, i32 noundef %sub36) #12
  %.pre = shl nuw nsw i32 %idxprom.pre-phi, 3
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %save_blk, align 8
  %arrayidx40 = getelementptr %struct.xfs_da_node_entry, ptr %save_hdr.sroa.30169.0, i32 %conv13
  %sub.ptr.lhs.cast41 = ptrtoint ptr %arrayidx40 to i32
  %sub.ptr.rhs.cast42 = ptrtoint ptr %11 to i32
  %sub.ptr.sub43 = sub i32 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %mul50 = shl nuw nsw i32 %conv, 3
  %add51 = add nsw i32 %mul50, -1
  %sub52 = add i32 %add51, %sub.ptr.sub43
  tail call void @xfs_trans_log_buf(ptr noundef %51, ptr noundef %64, i32 noundef %sub.ptr.sub43, i32 noundef %sub52) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mul55.pre-phi = phi i32 [ %mul50, %if.else ], [ %.pre, %if.then ]
  %sindex.0 = phi i32 [ %conv13, %if.else ], [ 0, %if.then ]
  %arrayidx56 = getelementptr %struct.xfs_da_node_entry, ptr %save_hdr.sroa.30169.0, i32 %sindex.0
  %65 = call ptr @memcpy(ptr %arrayidx56, ptr %drop_hdr.sroa.18174.0, i32 %mul55.pre-phi)
  %add62 = add i16 %save_hdr.sroa.16.0, %drop_hdr.sroa.9.0
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 8
  %m_features.i.i146 = getelementptr inbounds %struct.xfs_mount, ptr %67, i32 0, i32 61
  %68 = ptrtoint ptr %m_features.i.i146 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %m_features.i.i146, align 8
  %and.i.i147 = and i64 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i147)
  %tobool.i.not.i148 = icmp eq i64 %and.i.i147, 0
  br i1 %tobool.i.not.i148, label %if.else.i157, label %if.then.i150

if.then.i150:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %save_hdr.sroa.11.0)
  %cmp.i149 = icmp eq i16 %save_hdr.sroa.11.0, 16062
  br i1 %cmp.i149, label %if.then.i150.cond.end.i_crit_edge, label %cond.false.i151, !prof !216

if.then.i150.cond.end.i_crit_edge:                ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i151:                                  ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i151, %if.then.i150.cond.end.i_crit_edge
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %save_hdr.sroa.0.0, ptr %11, align 8
  %back8.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %71 = ptrtoint ptr %back8.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %save_hdr.sroa.7.0, ptr %back8.i, align 4
  %magic13.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %72 = ptrtoint ptr %magic13.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %save_hdr.sroa.11.0, ptr %magic13.i, align 8
  %__count.i154 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 1
  %73 = ptrtoint ptr %__count.i154 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add62, ptr %__count.i154, align 8
  %__level.i156 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

if.else.i157:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %save_hdr.sroa.11.0)
  %cmp18.i = icmp eq i16 %save_hdr.sroa.11.0, -322
  br i1 %cmp18.i, label %if.else.i157.cond.end28.i_crit_edge, label %cond.false27.i, !prof !216

if.else.i157.cond.end28.i_crit_edge:              ; preds = %if.else.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28.i

cond.false27.i:                                   ; preds = %if.else.i157
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false27.i, %if.else.i157.cond.end28.i_crit_edge
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %save_hdr.sroa.0.0, ptr %11, align 4
  %back36.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %75 = ptrtoint ptr %back36.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %save_hdr.sroa.7.0, ptr %back36.i, align 4
  %magic40.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %76 = ptrtoint ptr %magic40.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %save_hdr.sroa.11.0, ptr %magic40.i, align 4
  %__count43.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 1
  %77 = ptrtoint ptr %__count43.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %add62, ptr %__count43.i, align 4
  %__level46.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

xfs_da3_node_hdr_to_disk.exit:                    ; preds = %cond.end28.i, %cond.end.i
  %__level.i156.sink = phi ptr [ %__level.i156, %cond.end.i ], [ %__level46.i, %cond.end28.i ]
  %78 = ptrtoint ptr %__level.i156.sink to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %save_hdr.sroa.26.0, ptr %__level.i156.sink, align 2
  %79 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %save_blk, align 8
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %state, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %node_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %node_hdr_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %node_hdr_size, align 4
  %sub75 = add i32 %86, -1
  tail call void @xfs_trans_log_buf(ptr noundef %51, ptr noundef %80, i32 noundef 0, i32 noundef %sub75) #12
  %conv77 = zext i16 %add62 to i32
  %sub78 = add nsw i32 %conv77, -1
  %arrayidx79 = getelementptr %struct.xfs_da_node_entry, ptr %save_hdr.sroa.30169.0, i32 %sub78
  %87 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx79, align 4
  %hashval81 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %save_blk, i32 0, i32 4
  %89 = ptrtoint ptr %hashval81 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %hashval81, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_blk_unlink(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %drop_blk, ptr nocapture noundef readonly %save_blk) unnamed_addr #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !224
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !238

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1898) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %3 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %save_blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %7 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drop_blk, align 8
  %b_addr5 = getelementptr inbounds %struct.xfs_buf, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %b_addr5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_addr5, align 4
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %save_blk, i32 0, i32 5
  %11 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %magic, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %12, label %cond.false18.critedge [
    i32 65214, label %cond.end.cond.end19_crit_edge
    i32 54015, label %cond.end.cond.end19_crit_edge254
    i32 64494, label %cond.end.cond.end19_crit_edge255
  ]

cond.end.cond.end19_crit_edge255:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end19

cond.end.cond.end19_crit_edge254:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end19

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end19

cond.false18.critedge:                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 1903) #12
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18.critedge, %cond.end.cond.end19_crit_edge, %cond.end.cond.end19_crit_edge254, %cond.end.cond.end19_crit_edge255
  %14 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %magic, align 8
  %magic21 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk, i32 0, i32 5
  %16 = ptrtoint ptr %magic21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %magic21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp22 = icmp eq i32 %15, %17
  br i1 %cmp22, label %cond.end19.cond.end31_crit_edge, label %cond.false30, !prof !216

cond.end19.cond.end31_crit_edge:                  ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 1904) #12
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.end19.cond.end31_crit_edge
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  %blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk, i32 0, i32 1
  %20 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp32 = icmp eq i32 %19, %21
  br i1 %cmp32, label %cond.end31.cond.end45_crit_edge, label %lor.rhs33

cond.end31.cond.end45_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end45

lor.rhs33:                                        ; preds = %cond.end31
  %back = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 1
  %22 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %back, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp35 = icmp eq i32 %23, %21
  br i1 %cmp35, label %lor.rhs33.cond.end45_crit_edge, label %cond.false44, !prof !216

lor.rhs33.cond.end45_crit_edge:                   ; preds = %lor.rhs33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end45

cond.false44:                                     ; preds = %lor.rhs33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 1906) #12
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %lor.rhs33.cond.end45_crit_edge, %cond.end31.cond.end45_crit_edge
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %10, align 4
  %blkno47 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %save_blk, i32 0, i32 1
  %26 = ptrtoint ptr %blkno47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blkno47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp48 = icmp eq i32 %25, %27
  br i1 %cmp48, label %cond.end45.cond.end62_crit_edge, label %lor.rhs49

cond.end45.cond.end62_crit_edge:                  ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end62

lor.rhs49:                                        ; preds = %cond.end45
  %back50 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %10, i32 0, i32 1
  %28 = ptrtoint ptr %back50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %back50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp52 = icmp eq i32 %29, %27
  br i1 %cmp52, label %lor.rhs49.cond.end62_crit_edge, label %cond.false61, !prof !216

lor.rhs49.cond.end62_crit_edge:                   ; preds = %lor.rhs49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end62

cond.false61:                                     ; preds = %lor.rhs49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 1908) #12
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %lor.rhs49.cond.end62_crit_edge, %cond.end45.cond.end62_crit_edge
  %back63 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 1
  %30 = ptrtoint ptr %back63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %back63, align 4
  %32 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp65 = icmp eq i32 %31, %33
  br i1 %cmp65, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end62
  tail call fastcc void @trace_xfs_da_unlink_back(ptr noundef %2)
  %back66 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %10, i32 0, i32 1
  %34 = ptrtoint ptr %back66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %back66, align 4
  %36 = ptrtoint ptr %back63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %back63, align 4
  %37 = load i32, ptr %back66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool69.not = icmp eq i32 %37, 0
  br i1 %tobool69.not, label %if.then.if.end173_crit_edge, label %if.then70

if.then.if.end173_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then70:                                        ; preds = %if.then
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 11
  %38 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %40 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dp, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 13
  %42 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %whichfork, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %39, ptr noundef %41, i32 noundef %37, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %43, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then70.cleanup_crit_edge

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then70
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp, align 4
  %tobool1.not.i = icmp eq ptr %45, null
  %tobool3.not.i = icmp eq ptr %39, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end_crit_edge, label %xfs_da3_node_read.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

xfs_da3_node_read.exit:                           ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %39, ptr noundef nonnull %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool72.not = icmp eq i32 %call4.i, 0
  br i1 %tobool72.not, label %if.endthread-pre-split, label %xfs_da3_node_read.exit.cleanup_crit_edge

xfs_da3_node_read.exit.cleanup_crit_edge:         ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.endthread-pre-split:                           ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load ptr, ptr %bp, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %lor.lhs.false.i.if.end_crit_edge
  %47 = phi ptr [ %.pr, %if.endthread-pre-split ], [ %45, %lor.lhs.false.i.if.end_crit_edge ]
  %cmp74.not = icmp eq ptr %47, null
  br i1 %cmp74.not, label %cond.false82, label %if.end.cond.end83_crit_edge, !prof !238

if.end.cond.end83_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end83

cond.false82:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1922) #12
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false82, %if.end.cond.end83_crit_edge
  %b_addr84 = getelementptr inbounds %struct.xfs_buf, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %b_addr84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_addr84, align 4
  %magic85 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %magic85 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %magic85, align 4
  %magic86 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 2
  %52 = ptrtoint ptr %magic86 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %magic86, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp88 = icmp eq i16 %51, %53
  br i1 %cmp88, label %cond.end83.cond.end98_crit_edge, label %cond.false97, !prof !216

cond.end83.cond.end98_crit_edge:                  ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 1924) #12
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %cond.end83.cond.end98_crit_edge
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %49, align 4
  %56 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp101 = icmp eq i32 %55, %57
  br i1 %cmp101, label %cond.end98.if.end173.sink.split_crit_edge, label %cond.false110, !prof !216

cond.end98.if.end173.sink.split_crit_edge:        ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173.sink.split

cond.false110:                                    ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 1925) #12
  br label %if.end173.sink.split

if.else:                                          ; preds = %cond.end62
  tail call fastcc void @trace_xfs_da_unlink_forward(ptr noundef %2)
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %10, align 4
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %6, align 4
  %61 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool119.not = icmp eq i32 %61, 0
  br i1 %tobool119.not, label %if.else.if.end173_crit_edge, label %if.then120

if.else.if.end173_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then120:                                       ; preds = %if.else
  %trans121 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 11
  %62 = ptrtoint ptr %trans121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trans121, align 4
  %dp122 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %64 = ptrtoint ptr %dp122 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dp122, align 8
  %whichfork124 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 13
  %66 = ptrtoint ptr %whichfork124 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %whichfork124, align 4
  %call.i232 = call i32 @xfs_da_read_buf(ptr noundef %63, ptr noundef %65, i32 noundef %61, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %67, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool.not.i233 = icmp eq i32 %call.i232, 0
  br i1 %tobool.not.i233, label %lor.lhs.false.i237, label %if.then120.cleanup_crit_edge

if.then120.cleanup_crit_edge:                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i237:                               ; preds = %if.then120
  %68 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bp, align 4
  %tobool1.not.i234 = icmp eq ptr %69, null
  %tobool3.not.i235 = icmp eq ptr %63, null
  %or.cond.i236 = or i1 %tobool3.not.i235, %tobool1.not.i234
  br i1 %or.cond.i236, label %lor.lhs.false.i237.if.end128_crit_edge, label %xfs_da3_node_read.exit241

lor.lhs.false.i237.if.end128_crit_edge:           ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

xfs_da3_node_read.exit241:                        ; preds = %lor.lhs.false.i237
  %call4.i238 = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %63, ptr noundef nonnull %69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i238)
  %tobool126.not = icmp eq i32 %call4.i238, 0
  br i1 %tobool126.not, label %if.end128thread-pre-split, label %xfs_da3_node_read.exit241.cleanup_crit_edge

xfs_da3_node_read.exit241.cleanup_crit_edge:      ; preds = %xfs_da3_node_read.exit241
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end128thread-pre-split:                        ; preds = %xfs_da3_node_read.exit241
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr252 = load ptr, ptr %bp, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end128thread-pre-split, %lor.lhs.false.i237.if.end128_crit_edge
  %71 = phi ptr [ %.pr252, %if.end128thread-pre-split ], [ %69, %lor.lhs.false.i237.if.end128_crit_edge ]
  %cmp129.not = icmp eq ptr %71, null
  br i1 %cmp129.not, label %cond.false138, label %if.end128.cond.end139_crit_edge, !prof !238

if.end128.cond.end139_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end139

cond.false138:                                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1939) #12
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false138, %if.end128.cond.end139_crit_edge
  %b_addr140 = getelementptr inbounds %struct.xfs_buf, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %b_addr140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %b_addr140, align 4
  %magic141 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %magic141 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %magic141, align 4
  %magic143 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 2
  %76 = ptrtoint ptr %magic143 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %magic143, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp145 = icmp eq i16 %75, %77
  br i1 %cmp145, label %cond.end139.cond.end155_crit_edge, label %cond.false154, !prof !216

cond.end139.cond.end155_crit_edge:                ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end155

cond.false154:                                    ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 1941) #12
  br label %cond.end155

cond.end155:                                      ; preds = %cond.false154, %cond.end139.cond.end155_crit_edge
  %back156 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %back156 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %back156, align 4
  %80 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp158 = icmp eq i32 %79, %81
  br i1 %cmp158, label %cond.end155.if.end173.sink.split_crit_edge, label %cond.false167, !prof !216

cond.end155.if.end173.sink.split_crit_edge:       ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173.sink.split

cond.false167:                                    ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 1942) #12
  br label %if.end173.sink.split

if.end173.sink.split:                             ; preds = %cond.false167, %cond.end155.if.end173.sink.split_crit_edge, %cond.false110, %cond.end98.if.end173.sink.split_crit_edge
  %back156.sink = phi ptr [ %49, %cond.end98.if.end173.sink.split_crit_edge ], [ %49, %cond.false110 ], [ %back156, %cond.end155.if.end173.sink.split_crit_edge ], [ %back156, %cond.false167 ]
  %trans121.sink = phi ptr [ %trans, %cond.end98.if.end173.sink.split_crit_edge ], [ %trans, %cond.false110 ], [ %trans121, %cond.end155.if.end173.sink.split_crit_edge ], [ %trans121, %cond.false167 ]
  %.sink253 = phi ptr [ %47, %cond.end98.if.end173.sink.split_crit_edge ], [ %47, %cond.false110 ], [ %71, %cond.end155.if.end173.sink.split_crit_edge ], [ %71, %cond.false167 ]
  %82 = ptrtoint ptr %blkno47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %blkno47, align 4
  %84 = ptrtoint ptr %back156.sink to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %back156.sink, align 4
  %85 = ptrtoint ptr %trans121.sink to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %trans121.sink, align 4
  tail call void @xfs_trans_log_buf(ptr noundef %86, ptr noundef %.sink253, i32 noundef 0, i32 noundef 11) #12
  br label %if.end173

if.end173:                                        ; preds = %if.end173.sink.split, %if.else.if.end173_crit_edge, %if.then.if.end173_crit_edge
  %trans174 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 11
  %87 = ptrtoint ptr %trans174 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %trans174, align 4
  %89 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %save_blk, align 8
  tail call void @xfs_trans_log_buf(ptr noundef %88, ptr noundef %90, i32 noundef 0, i32 noundef 11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end173, %xfs_da3_node_read.exit241.cleanup_crit_edge, %if.then120.cleanup_crit_edge, %xfs_da3_node_read.exit.cleanup_crit_edge, %if.then70.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end173 ], [ %call4.i, %xfs_da3_node_read.exit.cleanup_crit_edge ], [ %call4.i238, %xfs_da3_node_read.exit241.cleanup_crit_edge ], [ %call.i, %if.then70.cleanup_crit_edge ], [ %call.i232, %if.then120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da_shrink_inode(ptr noundef %args, i32 noundef %dead_blkno, ptr noundef %dead_buf) local_unnamed_addr #0 align 64 {
entry:
  %dead_blkno.addr = alloca i32, align 4
  %dead_buf.addr = alloca ptr, align 4
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dead_blkno.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dead_blkno, ptr %dead_blkno.addr, align 4
  %1 = ptrtoint ptr %dead_buf.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dead_buf, ptr %dead_buf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #12
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %done, align 4, !annotation !224
  tail call fastcc void @trace_xfs_da_shrink_inode(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %3 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp1, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 13
  %5 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %whichfork, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsbcount, align 4
  %conv2 = sext i32 %12 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1.i = icmp eq i32 %6, 2
  %cond.i = select i1 %cmp1.i, i32 512, i32 0
  %cond2.i = select i1 %cmp.i, i32 4, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp ne i32 %6, 0
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %13 = ptrtoint ptr %dead_blkno.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dead_blkno.addr, align 4
  %conv = zext i32 %14 to i64
  %call3 = call i32 @xfs_bunmapi(ptr noundef %8, ptr noundef %4, i64 noundef %conv, i64 noundef %conv2, i32 noundef %cond2.i, i32 noundef 0, ptr noundef nonnull %done) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call3)
  %cmp = icmp ne i32 %call3, -28
  %brmerge = select i1 %cmp, i1 true, i1 %cmp5.not
  br i1 %brmerge, label %for.cond.for.end_crit_edge, label %if.end

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.cond
  %call8 = call fastcc i32 @xfs_da3_swap_lastblock(ptr noundef %args, ptr noundef nonnull %dead_blkno.addr, ptr noundef nonnull %dead_buf.addr)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end.for.cond_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.for.end_crit_edge
  %error.0 = phi i32 [ %call8, %if.end.for.end_crit_edge ], [ %call3, %for.cond.for.end_crit_edge ]
  %15 = ptrtoint ptr %dead_buf.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dead_buf.addr, align 4
  call void @xfs_trans_binval(ptr noundef %8, ptr noundef %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #12
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_root_join(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %root_blk) unnamed_addr #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !224
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp2, align 8
  tail call fastcc void @trace_xfs_da_root_join(ptr noundef %2)
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %root_blk, i32 0, i32 5
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65214, i32 %6)
  %cmp = icmp eq i32 %6, 65214
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !216

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 1182) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %9 = ptrtoint ptr %root_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root_blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 8
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %back.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %magic.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %12, i32 0, i32 1
  %23 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %12, i32 0, i32 2
  %25 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %__level.i, align 2
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %12, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %22)
  %cmp.i = icmp eq i16 %22, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %cond.end
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %12, align 4
  %back22.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %12, i32 0, i32 1
  %29 = ptrtoint ptr %back22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %back22.i, align 4
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %12, i32 0, i32 2
  %31 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %12, i32 0, i32 1
  %33 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %12, i32 0, i32 2
  %35 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %__level32.i, align 2
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %12, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %32)
  %cmp39.i = icmp eq i16 %32, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %oldroothdr.sroa.1895.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %oldroothdr.sroa.15.0 = phi i16 [ %36, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %36, %cond.false48.i ], [ %26, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %26, %cond.false.i ]
  %oldroothdr.sroa.12.0 = phi i16 [ %34, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %34, %cond.false48.i ], [ %24, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %24, %cond.false.i ]
  %oldroothdr.sroa.9.0 = phi i16 [ -322, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %32, %cond.false48.i ], [ 16062, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %22, %cond.false.i ]
  %oldroothdr.sroa.6.0 = phi i32 [ %30, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %30, %cond.false48.i ], [ %20, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %20, %cond.false.i ]
  %oldroothdr.sroa.0.0 = phi i32 [ %28, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %28, %cond.false48.i ], [ %18, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %18, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oldroothdr.sroa.0.0)
  %cmp7 = icmp eq i32 %oldroothdr.sroa.0.0, 0
  br i1 %cmp7, label %xfs_da3_node_hdr_from_disk.exit.cond.end16_crit_edge, label %cond.false15, !prof !216

xfs_da3_node_hdr_from_disk.exit.cond.end16_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end16

cond.false15:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 1187) #12
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %xfs_da3_node_hdr_from_disk.exit.cond.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oldroothdr.sroa.6.0)
  %cmp17 = icmp eq i32 %oldroothdr.sroa.6.0, 0
  br i1 %cmp17, label %cond.end16.cond.end26_crit_edge, label %cond.false25, !prof !216

cond.end16.cond.end26_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 1188) #12
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.end16.cond.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %oldroothdr.sroa.12.0)
  %cmp27 = icmp ugt i16 %oldroothdr.sroa.12.0, 1
  br i1 %cmp27, label %cond.end26.cleanup_crit_edge, label %if.end

cond.end26.cleanup_crit_edge:                     ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end26
  %before = getelementptr inbounds %struct.xfs_da_node_entry, ptr %oldroothdr.sroa.1895.0, i32 0, i32 1
  %37 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %before, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp29.not = icmp eq i32 %38, 0
  br i1 %cmp29.not, label %cond.false38, label %if.end.cond.end39_crit_edge, !prof !238

if.end.cond.end39_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end39

cond.false38:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 1201) #12
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %if.end.cond.end39_crit_edge
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %8, i32 0, i32 11
  %39 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trans, align 4
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %8, i32 0, i32 13
  %41 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %whichfork, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %40, ptr noundef %4, i32 noundef %38, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %42, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %cond.end39.cleanup_crit_edge

cond.end39.cleanup_crit_edge:                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %cond.end39
  %43 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bp, align 4
  %tobool1.not.i = icmp eq ptr %44, null
  %tobool3.not.i = icmp eq ptr %40, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end42_crit_edge, label %xfs_da3_node_read.exit

lor.lhs.false.i.if.end42_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

xfs_da3_node_read.exit:                           ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %40, ptr noundef nonnull %44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool40.not = icmp eq i32 %call4.i, 0
  br i1 %tobool40.not, label %xfs_da3_node_read.exit.if.end42_crit_edge, label %xfs_da3_node_read.exit.cleanup_crit_edge

xfs_da3_node_read.exit.cleanup_crit_edge:         ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_da3_node_read.exit.if.end42_crit_edge:        ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end42:                                         ; preds = %xfs_da3_node_read.exit.if.end42_crit_edge, %lor.lhs.false.i.if.end42_crit_edge
  %45 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bp, align 4
  %b_addr43 = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %b_addr43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_addr43, align 4
  %magic1.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %magic1.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %magic1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %oldroothdr.sroa.15.0)
  %cmp.i90 = icmp eq i16 %oldroothdr.sroa.15.0, 1
  br i1 %cmp.i90, label %if.then.i91, label %if.else.i92

if.then.i91:                                      ; preds = %if.end42
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %50, label %cond.false.critedge.i [
    i16 -11521, label %if.then.i91.if.end.i93_crit_edge
    i16 15871, label %if.then.i91.if.end.i93_crit_edge101
    i16 -1042, label %if.then.i91.if.end.i93_crit_edge102
    i16 15342, label %if.then.i91.if.end.i93_crit_edge103
  ]

if.then.i91.if.end.i93_crit_edge103:              ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i93

if.then.i91.if.end.i93_crit_edge102:              ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i93

if.then.i91.if.end.i93_crit_edge101:              ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i93

if.then.i91.if.end.i93_crit_edge:                 ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i93

cond.false.critedge.i:                            ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 1151) #12
  br label %if.end.i93

if.else.i92:                                      ; preds = %if.end42
  %52 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %50, label %cond.false32.i [
    i16 -322, label %if.else.i92.if.end.i93_crit_edge
    i16 16062, label %if.else.i92.if.end.i93_crit_edge104
  ]

if.else.i92.if.end.i93_crit_edge104:              ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i93

if.else.i92.if.end.i93_crit_edge:                 ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i93

cond.false32.i:                                   ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 1154) #12
  br label %if.end.i93

if.end.i93:                                       ; preds = %cond.false32.i, %if.else.i92.if.end.i93_crit_edge, %if.else.i92.if.end.i93_crit_edge104, %cond.false.critedge.i, %if.then.i91.if.end.i93_crit_edge, %if.then.i91.if.end.i93_crit_edge101, %if.then.i91.if.end.i93_crit_edge102, %if.then.i91.if.end.i93_crit_edge103
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool34.not.i = icmp eq i32 %54, 0
  br i1 %tobool34.not.i, label %if.end.i93.cond.end45.i_crit_edge, label %cond.false44.i, !prof !216

if.end.i93.cond.end45.i_crit_edge:                ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end45.i

cond.false44.i:                                   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 1156) #12
  br label %cond.end45.i

cond.end45.i:                                     ; preds = %cond.false44.i, %if.end.i93.cond.end45.i_crit_edge
  %back.i94 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %48, i32 0, i32 1
  %55 = ptrtoint ptr %back.i94 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %back.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool46.not.i = icmp eq i32 %56, 0
  br i1 %tobool46.not.i, label %cond.end45.i.xfs_da_blkinfo_onlychild_validate.exit_crit_edge, label %cond.false56.i, !prof !216

cond.end45.i.xfs_da_blkinfo_onlychild_validate.exit_crit_edge: ; preds = %cond.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da_blkinfo_onlychild_validate.exit

cond.false56.i:                                   ; preds = %cond.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 1157) #12
  br label %xfs_da_blkinfo_onlychild_validate.exit

xfs_da_blkinfo_onlychild_validate.exit:           ; preds = %cond.false56.i, %cond.end45.i.xfs_da_blkinfo_onlychild_validate.exit_crit_edge
  %57 = ptrtoint ptr %root_blk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %root_blk, align 8
  %b_addr45 = getelementptr inbounds %struct.xfs_buf, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %b_addr45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_addr45, align 4
  %61 = ptrtoint ptr %b_addr43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_addr43, align 4
  %63 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %8, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = call ptr @memcpy(ptr %60, ptr %62, i32 %66)
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 35
  %68 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_ops, align 4
  %70 = load ptr, ptr %root_blk, align 8
  %b_ops48 = getelementptr inbounds %struct.xfs_buf, ptr %70, i32 0, i32 35
  %71 = ptrtoint ptr %b_ops48 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %b_ops48, align 4
  %72 = load ptr, ptr %root_blk, align 8
  tail call void @xfs_trans_buf_copy_type(ptr noundef %72, ptr noundef %46) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %oldroothdr.sroa.9.0)
  %cmp52 = icmp eq i16 %oldroothdr.sroa.9.0, 16062
  br i1 %cmp52, label %if.then54, label %xfs_da_blkinfo_onlychild_validate.exit.if.end59_crit_edge

xfs_da_blkinfo_onlychild_validate.exit.if.end59_crit_edge: ; preds = %xfs_da_blkinfo_onlychild_validate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then54:                                        ; preds = %xfs_da_blkinfo_onlychild_validate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %root_blk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %root_blk, align 8
  %b_addr56 = getelementptr inbounds %struct.xfs_buf, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %b_addr56 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_addr56, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %74, i32 0, i32 24
  %77 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_maps.i, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %78, align 8
  %blkno = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %76, i32 0, i32 2
  %81 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %blkno, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %xfs_da_blkinfo_onlychild_validate.exit.if.end59_crit_edge
  %82 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans, align 4
  %84 = ptrtoint ptr %root_blk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %root_blk, align 8
  %86 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %8, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %sub = add i32 %89, -1
  tail call void @xfs_trans_log_buf(ptr noundef %83, ptr noundef %85, i32 noundef 0, i32 noundef %sub) #12
  %call64 = tail call i32 @xfs_da_shrink_inode(ptr noundef %8, i32 noundef %38, ptr noundef %46)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %xfs_da3_node_read.exit.cleanup_crit_edge, %cond.end39.cleanup_crit_edge, %cond.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %call64, %if.end59 ], [ 0, %cond.end26.cleanup_crit_edge ], [ %call4.i, %xfs_da3_node_read.exit.cleanup_crit_edge ], [ %call.i, %cond.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_fixhashpath(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_fixhashpath, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_fixhashpath, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !241
  %call42 = tail call i32 @__traceiter_xfs_da_fixhashpath(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !242
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_fixhashpath, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_fixhashpath, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_fixhashpath.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_fixhashpath.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2091, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @xfs_attr_leaf_lasthash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_lasthash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_node_lasthash(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %bp, ptr noundef writeonly %count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %3, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %__count.i, align 8
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %7)
  %cmp.i = icmp eq i16 %7, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %10 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %__count29.i, align 4
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %11)
  %cmp39.i = icmp eq i16 %11, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.1510.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %nodehdr.sroa.9.0 = phi i16 [ %13, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %13, %cond.false48.i ], [ %9, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %9, %cond.false.i ]
  %tobool.not = icmp eq ptr %count, null
  br i1 %tobool.not, label %xfs_da3_node_hdr_from_disk.exit.if.end_crit_edge, label %if.then

xfs_da3_node_hdr_from_disk.exit.if.end_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %nodehdr.sroa.9.0 to i32
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_da3_node_hdr_from_disk.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nodehdr.sroa.9.0)
  %tobool3.not = icmp eq i16 %nodehdr.sroa.9.0, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv7 = zext i16 %nodehdr.sroa.9.0 to i32
  %sub = add nsw i32 %conv7, -1
  %arrayidx = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.1510.0, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.end5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_node_lookup_int(ptr noundef %state, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #12
  %0 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retval1, align 4, !annotation !224
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %dp3 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %dp3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp3, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leafblk, align 4
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %blk5 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 11
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 13
  %9 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %path, align 8
  %hashval86 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %blk.0419 = phi ptr [ %blk5, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %expected_level.0418 = phi i32 [ 0, %entry ], [ %expected_level.1, %for.inc.for.body_crit_edge ]
  %blkno.0417 = phi i32 [ %8, %entry ], [ %blkno.1, %for.inc.for.body_crit_edge ]
  %blkno9 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 1
  %10 = ptrtoint ptr %blkno9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %blkno.0417, ptr %blkno9, align 4
  %11 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans, align 4
  %13 = ptrtoint ptr %dp3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp3, align 8
  %15 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %whichfork, align 4
  %call.i = tail call i32 @xfs_da_read_buf(ptr noundef %12, ptr noundef %14, i32 noundef %blkno.0417, i32 noundef 0, ptr noundef %blk.0419, i32 noundef %16, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.i:                                  ; preds = %for.body
  %17 = ptrtoint ptr %blk.0419 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %blk.0419, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  %tobool3.not.i = icmp eq ptr %12, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end_crit_edge, label %xfs_da3_node_read.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

xfs_da3_node_read.exit:                           ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %12, ptr noundef nonnull %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %xfs_da3_node_read.exit.if.end_crit_edge, label %xfs_da3_node_read.exit.if.then_crit_edge

xfs_da3_node_read.exit.if.then_crit_edge:         ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

xfs_da3_node_read.exit.if.end_crit_edge:          ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %xfs_da3_node_read.exit.if.then_crit_edge, %for.body.if.then_crit_edge
  %retval.0.i368 = phi i32 [ %call4.i, %xfs_da3_node_read.exit.if.then_crit_edge ], [ %call.i, %for.body.if.then_crit_edge ]
  %blkno9.le = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 1
  %19 = ptrtoint ptr %blkno9.le to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %blkno9.le, align 4
  %20 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %path, align 8
  %dec = add i32 %21, -1
  store i32 %dec, ptr %path, align 8
  br label %cleanup

if.end:                                           ; preds = %xfs_da3_node_read.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %22 = ptrtoint ptr %blk.0419 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blk.0419, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_addr, align 4
  %magic15 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %magic15 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %magic15, align 4
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %27, label %__here [
    i16 -1042, label %if.end.if.then21_crit_edge
    i16 15342, label %if.end.if.then21_crit_edge553
    i16 -11521, label %if.end.if.then34_crit_edge
    i16 15871, label %if.end.if.then34_crit_edge554
    i16 -322, label %if.end.if.end49_crit_edge
    i16 16062, label %if.end.if.end49_crit_edge555
  ]

if.end.if.end49_crit_edge555:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end.if.then34_crit_edge554:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

if.end.if.then34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

if.end.if.then21_crit_edge553:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then21:                                        ; preds = %if.end.if.then21_crit_edge, %if.end.if.then21_crit_edge553
  %magic22 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 5
  %29 = ptrtoint ptr %magic22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64494, ptr %magic22, align 8
  %call24 = tail call i32 @xfs_attr_leaf_lasthash(ptr noundef %23, ptr noundef null) #12
  br label %for.end.sink.split

if.then34:                                        ; preds = %if.end.if.then34_crit_edge, %if.end.if.then34_crit_edge554
  %magic35 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 5
  %30 = ptrtoint ptr %magic35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 54015, ptr %magic35, align 8
  %31 = ptrtoint ptr %dp3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dp3, align 8
  %call38 = tail call i32 @xfs_dir2_leaf_lasthash(ptr noundef %32, ptr noundef %23, ptr noundef null) #12
  br label %for.end.sink.split

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !243
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %23, ptr noundef blockaddress(@xfs_da3_node_lookup_int, %__here)) #12
  br label %cleanup

if.end49:                                         ; preds = %if.end.if.end49_crit_edge, %if.end.if.end49_crit_edge555
  %magic50 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 5
  %33 = ptrtoint ptr %magic50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65214, ptr %magic50, align 8
  %34 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_addr, align 4
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %4, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %37, i32 0, i32 61
  %38 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %35, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end49
  %40 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %35, i32 0, i32 2
  %44 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %__level.i, align 2
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %35, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %41)
  %cmp.i = icmp eq i16 %41, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.end49
  %46 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %35, i32 0, i32 1
  %48 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %35, i32 0, i32 2
  %50 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %__level32.i, align 2
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %35, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %47)
  %cmp39.i = icmp eq i16 %47, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.15362.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %nodehdr.sroa.12.0 = phi i16 [ %51, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %51, %cond.false48.i ], [ %45, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %45, %cond.false.i ]
  %nodehdr.sroa.9.0 = phi i16 [ %49, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %49, %cond.false48.i ], [ %43, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %43, %cond.false.i ]
  %conv54 = zext i16 %nodehdr.sroa.12.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %nodehdr.sroa.12.0)
  %cmp55 = icmp ugt i16 %nodehdr.sroa.12.0, 4
  br i1 %cmp55, label %__here59, label %if.end61

__here59:                                         ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %blk.0419 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blk.0419, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !244
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %53, ptr noundef blockaddress(@xfs_da3_node_lookup_int, %__here59)) #12
  br label %cleanup

if.end61:                                         ; preds = %xfs_da3_node_hdr_from_disk.exit
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 8
  %leafblk63 = getelementptr inbounds %struct.xfs_da_geometry, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %leafblk63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %leafblk63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blkno.0417, i32 %57)
  %cmp64 = icmp eq i32 %blkno.0417, %57
  br i1 %cmp64, label %if.end61.if.end80_crit_edge, label %if.else

if.end61.if.end80_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_level.0418, i32 %conv54)
  %cmp71.not = icmp eq i32 %expected_level.0418, %conv54
  br i1 %cmp71.not, label %if.else.if.end80_crit_edge, label %__here75

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

__here75:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %blk.0419 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %blk.0419, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !245
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %59, ptr noundef blockaddress(@xfs_da3_node_lookup_int, %__here75)) #12
  br label %cleanup

if.end80:                                         ; preds = %if.else.if.end80_crit_edge, %if.end61.if.end80_crit_edge
  %expected_level.1.in = phi i32 [ %conv54, %if.end61.if.end80_crit_edge ], [ %expected_level.0418, %if.else.if.end80_crit_edge ]
  %expected_level.1 = add i32 %expected_level.1.in, -1
  %conv81 = zext i16 %nodehdr.sroa.9.0 to i32
  %sub82 = add nsw i32 %conv81, -1
  %arrayidx83 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.15362.0, i32 %sub82
  %60 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx83, align 4
  %hashval85 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 4
  %62 = ptrtoint ptr %hashval85 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %hashval85, align 4
  %div360 = lshr i32 %conv81, 1
  %63 = ptrtoint ptr %hashval86 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hashval86, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %nodehdr.sroa.9.0)
  %cmp87402 = icmp ugt i16 %nodehdr.sroa.9.0, 9
  br i1 %cmp87402, label %if.end80.while.body_crit_edge, label %if.end80.while.end_crit_edge

if.end80.while.end_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end80.while.body_crit_edge:                    ; preds = %if.end80
  br label %while.body

while.body:                                       ; preds = %if.end102.while.body_crit_edge, %if.end80.while.body_crit_edge
  %span.0404 = phi i32 [ %div89369370, %if.end102.while.body_crit_edge ], [ %div360, %if.end80.while.body_crit_edge ]
  %probe.0403 = phi i32 [ %probe.1, %if.end102.while.body_crit_edge ], [ %div360, %if.end80.while.body_crit_edge ]
  %div89369370 = lshr i32 %span.0404, 1
  %arrayidx90 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.15362.0, i32 %probe.0403
  %65 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp92 = icmp ult i32 %66, %64
  br i1 %cmp92, label %if.then94, label %if.else95

if.then94:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %div89369370, %probe.0403
  br label %if.end102

if.else95:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp96 = icmp ugt i32 %66, %64
  br i1 %cmp96, label %if.then98, label %if.else95.while.end_crit_edge

if.else95.while.end_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then98:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #14
  %sub99 = sub i32 %probe.0403, %div89369370
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.then94
  %probe.1 = phi i32 [ %add, %if.then94 ], [ %sub99, %if.then98 ]
  %cmp87 = icmp ugt i32 %span.0404, 9
  br i1 %cmp87, label %if.end102.while.body_crit_edge, label %if.end102.while.end_crit_edge

if.end102.while.end_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end102.while.body_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end102.while.end_crit_edge, %if.else95.while.end_crit_edge, %if.end80.while.end_crit_edge
  %probe.0.lcssa = phi i32 [ %div360, %if.end80.while.end_crit_edge ], [ %probe.0403, %if.else95.while.end_crit_edge ], [ %probe.1, %if.end102.while.end_crit_edge ]
  %span.1 = phi i32 [ %div360, %if.end80.while.end_crit_edge ], [ %div89369370, %if.else95.while.end_crit_edge ], [ %div89369370, %if.end102.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %probe.0.lcssa)
  %cmp103 = icmp sgt i32 %probe.0.lcssa, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %probe.0.lcssa, i32 %conv81)
  %cmp105 = icmp slt i32 %probe.0.lcssa, %conv81
  %spec.select = select i1 %cmp103, i1 %cmp105, i1 false, !prof !216
  br i1 %spec.select, label %while.end.cond.end_crit_edge, label %cond.false, !prof !216

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1676) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.end.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %span.1)
  %cmp109 = icmp ult i32 %span.1, 5
  br i1 %cmp109, label %cond.end.cond.end123_crit_edge, label %lor.rhs

cond.end.cond.end123_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end123

lor.rhs:                                          ; preds = %cond.end
  %arrayidx111 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.15362.0, i32 %probe.0.lcssa
  %67 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %64)
  %cmp113 = icmp eq i32 %68, %64
  br i1 %cmp113, label %lor.rhs.cond.end123_crit_edge, label %cond.false122, !prof !216

lor.rhs.cond.end123_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end123

cond.false122:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1678) #12
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false122, %lor.rhs.cond.end123_crit_edge, %cond.end.cond.end123_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %probe.0.lcssa)
  %cmp125408 = icmp sgt i32 %probe.0.lcssa, 0
  br i1 %cmp125408, label %cond.end123.land.rhs127_crit_edge, label %cond.end123.while.end135_crit_edge

cond.end123.while.end135_crit_edge:               ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end135

cond.end123.land.rhs127_crit_edge:                ; preds = %cond.end123
  br label %land.rhs127

land.rhs127:                                      ; preds = %while.body133.land.rhs127_crit_edge, %cond.end123.land.rhs127_crit_edge
  %probe.2409 = phi i32 [ %dec134, %while.body133.land.rhs127_crit_edge ], [ %probe.0.lcssa, %cond.end123.land.rhs127_crit_edge ]
  %arrayidx128 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.15362.0, i32 %probe.2409
  %69 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %64)
  %cmp130.not = icmp ult i32 %70, %64
  br i1 %cmp130.not, label %land.rhs127.while.end135_crit_edge, label %while.body133

land.rhs127.while.end135_crit_edge:               ; preds = %land.rhs127
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end135

while.body133:                                    ; preds = %land.rhs127
  %dec134 = add nsw i32 %probe.2409, -1
  %cmp125 = icmp sgt i32 %probe.2409, 1
  br i1 %cmp125, label %while.body133.land.rhs127_crit_edge, label %while.body133.while.end135_crit_edge

while.body133.while.end135_crit_edge:             ; preds = %while.body133
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end135

while.body133.land.rhs127_crit_edge:              ; preds = %while.body133
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs127

while.end135:                                     ; preds = %while.body133.while.end135_crit_edge, %land.rhs127.while.end135_crit_edge, %cond.end123.while.end135_crit_edge
  %probe.2.lcssa = phi i32 [ %probe.0.lcssa, %cond.end123.while.end135_crit_edge ], [ 0, %while.body133.while.end135_crit_edge ], [ %probe.2409, %land.rhs127.while.end135_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %probe.2.lcssa, i32 %conv81)
  %cmp137412 = icmp slt i32 %probe.2.lcssa, %conv81
  br i1 %cmp137412, label %while.end135.land.rhs139_crit_edge, label %while.end135.while.end146_crit_edge

while.end135.while.end146_crit_edge:              ; preds = %while.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end146

while.end135.land.rhs139_crit_edge:               ; preds = %while.end135
  br label %land.rhs139

land.rhs139:                                      ; preds = %while.body145.land.rhs139_crit_edge, %while.end135.land.rhs139_crit_edge
  %probe.3413 = phi i32 [ %inc, %while.body145.land.rhs139_crit_edge ], [ %probe.2.lcssa, %while.end135.land.rhs139_crit_edge ]
  %arrayidx140 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.15362.0, i32 %probe.3413
  %71 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %64)
  %cmp142 = icmp ult i32 %72, %64
  br i1 %cmp142, label %while.body145, label %land.rhs139.while.end146_crit_edge

land.rhs139.while.end146_crit_edge:               ; preds = %land.rhs139
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end146

while.body145:                                    ; preds = %land.rhs139
  %inc = add i32 %probe.3413, 1
  %exitcond.not = icmp eq i32 %inc, %conv81
  br i1 %exitcond.not, label %while.body145.if.end157_crit_edge, label %while.body145.land.rhs139_crit_edge

while.body145.land.rhs139_crit_edge:              ; preds = %while.body145
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs139

while.body145.if.end157_crit_edge:                ; preds = %while.body145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

while.end146:                                     ; preds = %land.rhs139.while.end146_crit_edge, %while.end135.while.end146_crit_edge
  %probe.3.lcssa = phi i32 [ %probe.2.lcssa, %while.end135.while.end146_crit_edge ], [ %probe.3413, %land.rhs139.while.end146_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %probe.3.lcssa, i32 %conv81)
  %cmp147 = icmp eq i32 %probe.3.lcssa, %conv81
  %spec.select477 = select i1 %cmp147, i32 %sub82, i32 %probe.3.lcssa
  br label %if.end157

if.end157:                                        ; preds = %while.end146, %while.body145.if.end157_crit_edge
  %probe.3.lcssa.sink = phi i32 [ %spec.select477, %while.end146 ], [ %sub82, %while.body145.if.end157_crit_edge ]
  %73 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 3
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %probe.3.lcssa.sink, ptr %73, align 8
  %blkno.1.in = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.15362.0, i32 %probe.3.lcssa.sink, i32 1
  %75 = ptrtoint ptr %blkno.1.in to i32
  call void @__asan_load4_noabort(i32 %75)
  %blkno.1 = load i32, ptr %blkno.1.in, align 4
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 8
  %leafblk159 = getelementptr inbounds %struct.xfs_da_geometry, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %leafblk159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %leafblk159, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blkno.1, i32 %79)
  %cmp160 = icmp eq i32 %blkno.1, %79
  br i1 %cmp160, label %__here170, label %for.inc, !prof !238

__here170:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !246
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef %81, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1705, ptr noundef blockaddress(@xfs_da3_node_lookup_int, %__here170)) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end157
  %incdec.ptr = getelementptr %struct.xfs_da_state_blk, ptr %blk.0419, i32 1
  %82 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %path, align 8
  %inc177 = add i32 %83, 1
  store i32 %inc177, ptr %path, align 8
  %cmp = icmp slt i32 %inc177, 6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.sink.split:                               ; preds = %if.then34, %if.then21
  %call38.sink = phi i32 [ %call38, %if.then34 ], [ %call24, %if.then21 ]
  %hashval39 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0419, i32 0, i32 4
  %84 = ptrtoint ptr %hashval39 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call38.sink, ptr %hashval39, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge
  %expected_level.0390 = phi i32 [ %expected_level.0418, %for.end.sink.split ], [ %expected_level.1, %for.inc.for.end_crit_edge ]
  %blk.0382 = phi ptr [ %blk.0419, %for.end.sink.split ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expected_level.0390)
  %cmp178.not = icmp eq i32 %expected_level.0390, 0
  br i1 %cmp178.not, label %for.cond193.preheader, label %__here188, !prof !216

for.cond193.preheader:                            ; preds = %for.end
  %magic194 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0382, i32 0, i32 5
  %index208 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 15
  %index209 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0382, i32 0, i32 3
  %blkno210 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0382, i32 0, i32 1
  %blkno211 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 14
  %hashval221 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.0382, i32 0, i32 4
  br label %for.cond193

__here188:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %86, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1709, ptr noundef blockaddress(@xfs_da3_node_lookup_int, %__here188)) #12
  br label %cleanup

for.cond193:                                      ; preds = %if.end230.for.cond193_crit_edge, %for.cond193.preheader
  %87 = ptrtoint ptr %magic194 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %magic194, align 8
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %88, label %if.else212 [
    i32 54015, label %if.then197
    i32 64494, label %if.then205
  ]

if.then197:                                       ; preds = %for.cond193
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %blk.0382 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %blk.0382, align 8
  %call200 = tail call i32 @xfs_dir2_leafn_lookup_int(ptr noundef %91, ptr noundef %2, ptr noundef %index209, ptr noundef %state) #12
  %92 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call200, ptr %retval1, align 4
  br label %if.end214

if.then205:                                       ; preds = %for.cond193
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %blk.0382 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %blk.0382, align 8
  %call207 = tail call i32 @xfs_attr3_leaf_lookup_int(ptr noundef %94, ptr noundef %2) #12
  %95 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call207, ptr %retval1, align 4
  %96 = ptrtoint ptr %index208 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index208, align 4
  %98 = ptrtoint ptr %index209 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %index209, align 8
  %99 = ptrtoint ptr %blkno210 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blkno210, align 4
  %101 = ptrtoint ptr %blkno211 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %blkno211, align 8
  br label %if.end214

if.else212:                                       ; preds = %for.cond193
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1727) #12
  br label %cleanup

if.end214:                                        ; preds = %if.then205, %if.then197
  %102 = phi i32 [ %call207, %if.then205 ], [ %call200, %if.then197 ]
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %102, label %if.end214.for.end242_crit_edge [
    i32 -2, label %if.end214.land.lhs.true220_crit_edge
    i32 -61, label %if.end214.land.lhs.true220_crit_edge556
  ]

if.end214.land.lhs.true220_crit_edge556:          ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true220

if.end214.land.lhs.true220_crit_edge:             ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true220

if.end214.for.end242_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end242

land.lhs.true220:                                 ; preds = %if.end214.land.lhs.true220_crit_edge, %if.end214.land.lhs.true220_crit_edge556
  %104 = ptrtoint ptr %hashval221 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hashval221, align 4
  %106 = ptrtoint ptr %hashval86 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hashval86, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp223 = icmp eq i32 %105, %107
  br i1 %cmp223, label %if.then225, label %land.lhs.true220.for.end242_crit_edge

land.lhs.true220.for.end242_crit_edge:            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end242

if.then225:                                       ; preds = %land.lhs.true220
  %call227 = call i32 @xfs_da3_path_shift(ptr noundef %state, ptr noundef %path, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %retval1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end230, label %if.then225.cleanup_crit_edge

if.then225.cleanup_crit_edge:                     ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end230:                                        ; preds = %if.then225
  %108 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %retval1, align 4
  %cmp231 = icmp eq i32 %109, 0
  br i1 %cmp231, label %if.end230.for.cond193_crit_edge, label %if.else234

if.end230.for.cond193_crit_edge:                  ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond193

if.else234:                                       ; preds = %if.end230
  %110 = ptrtoint ptr %magic194 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %magic194, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %111)
  %cmp236 = icmp eq i32 %111, 64494
  br i1 %cmp236, label %if.then238, label %if.else234.for.end242_crit_edge

if.else234.for.end242_crit_edge:                  ; preds = %if.else234
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end242

if.then238:                                       ; preds = %if.else234
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -61, ptr %retval1, align 4
  br label %for.end242

for.end242:                                       ; preds = %if.then238, %if.else234.for.end242_crit_edge, %land.lhs.true220.for.end242_crit_edge, %if.end214.for.end242_crit_edge
  %113 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %retval1, align 4
  %115 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end242, %if.then225.cleanup_crit_edge, %if.else212, %__here188, %__here170, %__here75, %__here59, %__here, %if.then
  %retval.0 = phi i32 [ %retval.0.i368, %if.then ], [ -117, %__here188 ], [ 0, %for.end242 ], [ -117, %if.else212 ], [ -117, %__here ], [ -117, %__here59 ], [ -117, %__here170 ], [ -117, %__here75 ], [ %call227, %if.then225.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leafn_lookup_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_lookup_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_path_shift(ptr nocapture noundef readonly %state, ptr noundef %path, i32 noundef %forward, i32 noundef %release, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !224
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp2, align 8
  tail call fastcc void @trace_xfs_da_path_shift(ptr noundef %2)
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !238

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1988) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp6.not = icmp eq ptr %path, null
  br i1 %cmp6.not, label %cond.false14, label %cond.end.cond.end15_crit_edge, !prof !238

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1989) #12
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %7 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %path, align 8
  %9 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %cond.end15.cond.end27_crit_edge, label %cond.false26, !prof !216

cond.end15.cond.end27_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1990) #12
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.end15.cond.end27_crit_edge
  %11 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %path, align 8
  %sub29 = add i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub29)
  %cmp30311 = icmp sgt i32 %sub29, -1
  br i1 %cmp30311, label %for.body.lr.ph, label %cond.end27.if.then56_crit_edge

cond.end27.if.then56_crit_edge:                   ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

for.body.lr.ph:                                   ; preds = %cond.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward)
  %tobool33.not = icmp eq i32 %forward, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %level.0312 = phi i32 [ %sub29, %for.body.lr.ph ], [ %dec53, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_da_state_path, ptr %path, i32 0, i32 1, i32 %level.0312
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_addr, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 61
  %19 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %18, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %21 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %__count.i, align 8
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %18, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %22)
  %cmp.i = icmp eq i16 %22, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %for.body
  %25 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %__count29.i, align 4
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %18, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %26)
  %cmp39.i = icmp eq i16 %26, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.26292.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %nodehdr.sroa.15.0 = phi i16 [ %28, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %28, %cond.false48.i ], [ %24, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %24, %cond.false.i ]
  %index43 = getelementptr %struct.xfs_da_state_path, ptr %path, i32 0, i32 1, i32 %level.0312, i32 3
  %29 = ptrtoint ptr %index43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index43, align 8
  br i1 %tobool33.not, label %land.lhs.true42.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %xfs_da3_node_hdr_from_disk.exit
  %conv = zext i16 %nodehdr.sroa.15.0 to i32
  %sub34 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub34)
  %cmp35 = icmp slt i32 %30, %sub34
  br i1 %cmp35, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true42.critedge:                         ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp44 = icmp sgt i32 %30, 0
  br i1 %cmp44, label %land.lhs.true42.critedge.for.end_crit_edge, label %land.lhs.true42.critedge.for.inc_crit_edge

land.lhs.true42.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true42.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true42.critedge.for.end_crit_edge:       ; preds = %land.lhs.true42.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true42.critedge.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %dec53 = add nsw i32 %level.0312, -1
  %cmp30 = icmp sgt i32 %level.0312, 0
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %for.inc.if.then56_crit_edge

for.inc.if.then56_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %land.lhs.true42.critedge.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %.sink = phi i32 [ 1, %land.lhs.true.for.end_crit_edge ], [ -1, %land.lhs.true42.critedge.for.end_crit_edge ]
  %dec = add nsw i32 %30, %.sink
  %31 = ptrtoint ptr %index43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec, ptr %index43, align 8
  %level.1314 = add nuw i32 %level.0312, 1
  %32 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %level.1314, i32 %33)
  %cmp71316 = icmp slt i32 %level.1314, %33
  br i1 %cmp71316, label %for.body73.lr.ph, label %for.end.for.end186_crit_edge

for.end.for.end186_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end186

for.body73.lr.ph:                                 ; preds = %for.end
  %blkno.0.in = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.26292.0, i32 %dec, i32 1
  %34 = ptrtoint ptr %blkno.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %blkno.0 = load i32, ptr %blkno.0.in, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %6, i32 0, i32 11
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %6, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %release)
  %tobool77.not = icmp eq i32 %release, 0
  %dp179 = getelementptr inbounds %struct.xfs_da_args, ptr %6, i32 0, i32 10
  br label %for.body73

if.then56:                                        ; preds = %for.inc.if.then56_crit_edge, %cond.end27.if.then56_crit_edge
  %35 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2, ptr %result, align 4
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %6, i32 0, i32 24
  %36 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %op_flags, align 8
  %and = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %cond.false65, label %if.then56.cleanup_crit_edge, !prof !238

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false65:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2009) #12
  br label %cleanup

for.body73:                                       ; preds = %for.inc183.for.body73_crit_edge, %for.body73.lr.ph
  %level.1321 = phi i32 [ %level.1314, %for.body73.lr.ph ], [ %level.1, %for.inc183.for.body73_crit_edge ]
  %level.1.in320 = phi i32 [ %level.0312, %for.body73.lr.ph ], [ %level.1321, %for.inc183.for.body73_crit_edge ]
  %blkno.1319 = phi i32 [ %blkno.0, %for.body73.lr.ph ], [ %blkno.2, %for.inc183.for.body73_crit_edge ]
  %blk.1.pn317 = phi ptr [ %arrayidx, %for.body73.lr.ph ], [ %blk.2322, %for.inc183.for.body73_crit_edge ]
  %blk.2322 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1
  %38 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans, align 4
  %40 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %whichfork, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %39, ptr noundef %4, i32 noundef %blkno.1319, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %41, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body73.cleanup_crit_edge

for.body73.cleanup_crit_edge:                     ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.body73
  %42 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bp, align 4
  %tobool1.not.i = icmp eq ptr %43, null
  %tobool3.not.i = icmp eq ptr %39, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end76_crit_edge, label %xfs_da3_node_read.exit

lor.lhs.false.i.if.end76_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

xfs_da3_node_read.exit:                           ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %39, ptr noundef nonnull %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool74.not = icmp eq i32 %call4.i, 0
  br i1 %tobool74.not, label %xfs_da3_node_read.exit.if.end76_crit_edge, label %xfs_da3_node_read.exit.cleanup_crit_edge

xfs_da3_node_read.exit.cleanup_crit_edge:         ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_da3_node_read.exit.if.end76_crit_edge:        ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end76:                                         ; preds = %xfs_da3_node_read.exit.if.end76_crit_edge, %lor.lhs.false.i.if.end76_crit_edge
  br i1 %tobool77.not, label %if.end76.if.end81_crit_edge, label %if.then78

if.end76.if.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trans, align 4
  %46 = ptrtoint ptr %blk.2322 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %blk.2322, align 8
  tail call void @xfs_trans_brelse(ptr noundef %45, ptr noundef %47) #12
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end76.if.end81_crit_edge
  %blkno82 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 1
  %48 = ptrtoint ptr %blkno82 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %blkno.1319, ptr %blkno82, align 4
  %49 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bp, align 4
  %51 = ptrtoint ptr %blk.2322 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %blk.2322, align 8
  %b_addr85 = getelementptr inbounds %struct.xfs_buf, ptr %50, i32 0, i32 16
  %52 = ptrtoint ptr %b_addr85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_addr85, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %magic, align 4
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %55, label %cond.false119.critedge [
    i16 -322, label %if.end81.cond.end120_crit_edge
    i16 16062, label %if.end81.cond.end120_crit_edge367
    i16 -11521, label %if.end81.cond.end120_crit_edge368
    i16 15871, label %if.end81.cond.end120_crit_edge369
    i16 -1042, label %if.end81.cond.end120_crit_edge370
    i16 15342, label %if.end81.cond.end120_crit_edge371
  ]

if.end81.cond.end120_crit_edge371:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end120

if.end81.cond.end120_crit_edge370:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end120

if.end81.cond.end120_crit_edge369:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end120

if.end81.cond.end120_crit_edge368:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end120

if.end81.cond.end120_crit_edge367:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end120

if.end81.cond.end120_crit_edge:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end120

cond.false119.critedge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 2043) #12
  %57 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %57)
  %.pr = load i16, ptr %magic, align 4
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119.critedge, %if.end81.cond.end120_crit_edge, %if.end81.cond.end120_crit_edge367, %if.end81.cond.end120_crit_edge368, %if.end81.cond.end120_crit_edge369, %if.end81.cond.end120_crit_edge370, %if.end81.cond.end120_crit_edge371
  %58 = phi i16 [ %55, %if.end81.cond.end120_crit_edge ], [ %55, %if.end81.cond.end120_crit_edge367 ], [ %55, %if.end81.cond.end120_crit_edge368 ], [ %55, %if.end81.cond.end120_crit_edge369 ], [ %55, %if.end81.cond.end120_crit_edge370 ], [ %55, %if.end81.cond.end120_crit_edge371 ], [ %.pr, %cond.false119.critedge ]
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %58, label %sw.default [
    i16 -322, label %cond.end120.sw.bb_crit_edge
    i16 16062, label %cond.end120.sw.bb_crit_edge372
    i16 -1042, label %cond.end120.sw.bb144_crit_edge
    i16 15342, label %cond.end120.sw.bb144_crit_edge373
    i16 -11521, label %cond.end120.sw.bb163_crit_edge
    i16 15871, label %cond.end120.sw.bb163_crit_edge374
  ]

cond.end120.sw.bb163_crit_edge374:                ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb163

cond.end120.sw.bb163_crit_edge:                   ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb163

cond.end120.sw.bb144_crit_edge373:                ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb144

cond.end120.sw.bb144_crit_edge:                   ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb144

cond.end120.sw.bb_crit_edge372:                   ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

cond.end120.sw.bb_crit_edge:                      ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %cond.end120.sw.bb_crit_edge, %cond.end120.sw.bb_crit_edge372
  %magic123 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 5
  %60 = ptrtoint ptr %magic123 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 65214, ptr %magic123, align 8
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %4, align 8
  %63 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bp, align 4
  %b_addr125 = getelementptr inbounds %struct.xfs_buf, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %b_addr125 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_addr125, align 4
  %m_features.i.i259 = getelementptr inbounds %struct.xfs_mount, ptr %62, i32 0, i32 61
  %67 = ptrtoint ptr %m_features.i.i259 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %m_features.i.i259, align 8
  %and.i.i260 = and i64 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i260)
  %tobool.i.not.i261 = icmp eq i64 %and.i.i260, 0
  %magic26.i277 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %66, i32 0, i32 2
  br i1 %tobool.i.not.i261, label %if.else.i286, label %if.then.i273

if.then.i273:                                     ; preds = %sw.bb
  %69 = ptrtoint ptr %magic26.i277 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %magic26.i277, align 8
  %__count.i266 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %__count.i266 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %__count.i266, align 8
  %__btree.i270 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %66, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %70)
  %cmp.i272 = icmp eq i16 %70, 16062
  br i1 %cmp.i272, label %if.then.i273.xfs_da3_node_hdr_from_disk.exit289_crit_edge, label %cond.false.i274, !prof !216

if.then.i273.xfs_da3_node_hdr_from_disk.exit289_crit_edge: ; preds = %if.then.i273
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit289

cond.false.i274:                                  ; preds = %if.then.i273
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit289

if.else.i286:                                     ; preds = %sw.bb
  %73 = ptrtoint ptr %magic26.i277 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %magic26.i277, align 4
  %__count29.i279 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %66, i32 0, i32 1
  %75 = ptrtoint ptr %__count29.i279 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %__count29.i279, align 4
  %__btree34.i283 = getelementptr inbounds %struct.xfs_da_intnode, ptr %66, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %74)
  %cmp39.i285 = icmp eq i16 %74, -322
  br i1 %cmp39.i285, label %if.else.i286.xfs_da3_node_hdr_from_disk.exit289_crit_edge, label %cond.false48.i287, !prof !216

if.else.i286.xfs_da3_node_hdr_from_disk.exit289_crit_edge: ; preds = %if.else.i286
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit289

cond.false48.i287:                                ; preds = %if.else.i286
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit289

xfs_da3_node_hdr_from_disk.exit289:               ; preds = %cond.false48.i287, %if.else.i286.xfs_da3_node_hdr_from_disk.exit289_crit_edge, %cond.false.i274, %if.then.i273.xfs_da3_node_hdr_from_disk.exit289_crit_edge
  %nodehdr.sroa.26292.1 = phi ptr [ %__btree34.i283, %if.else.i286.xfs_da3_node_hdr_from_disk.exit289_crit_edge ], [ %__btree34.i283, %cond.false48.i287 ], [ %__btree.i270, %if.then.i273.xfs_da3_node_hdr_from_disk.exit289_crit_edge ], [ %__btree.i270, %cond.false.i274 ]
  %nodehdr.sroa.15.1 = phi i16 [ %76, %if.else.i286.xfs_da3_node_hdr_from_disk.exit289_crit_edge ], [ %76, %cond.false48.i287 ], [ %72, %if.then.i273.xfs_da3_node_hdr_from_disk.exit289_crit_edge ], [ %72, %cond.false.i274 ]
  %conv128 = zext i16 %nodehdr.sroa.15.1 to i32
  %sub129 = add nsw i32 %conv128, -1
  %arrayidx130 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.26292.1, i32 %sub129
  %77 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx130, align 4
  %hashval131 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 4
  %79 = ptrtoint ptr %hashval131 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %hashval131, align 4
  %spec.select = select i1 %tobool33.not, i32 %sub129, i32 0
  %80 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 3
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select, ptr %80, align 8
  %before143 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.26292.1, i32 %spec.select, i32 1
  %82 = ptrtoint ptr %before143 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %before143, align 4
  br label %for.inc183

sw.bb144:                                         ; preds = %cond.end120.sw.bb144_crit_edge, %cond.end120.sw.bb144_crit_edge373
  %magic145 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 5
  %84 = ptrtoint ptr %magic145 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 64494, ptr %magic145, align 8
  %85 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %path, align 8
  %87 = add i32 %86, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %level.1.in320, i32 %87)
  %cmp148 = icmp eq i32 %level.1.in320, %87
  br i1 %cmp148, label %sw.bb144.cond.end158_crit_edge, label %cond.false157, !prof !216

sw.bb144.cond.end158_crit_edge:                   ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end158

cond.false157:                                    ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 2067) #12
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false157, %sw.bb144.cond.end158_crit_edge
  %index159 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 3
  %88 = ptrtoint ptr %index159 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %index159, align 8
  %89 = ptrtoint ptr %blk.2322 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %blk.2322, align 8
  %call161 = tail call i32 @xfs_attr_leaf_lasthash(ptr noundef %90, ptr noundef null) #12
  %hashval162 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 4
  %91 = ptrtoint ptr %hashval162 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call161, ptr %hashval162, align 4
  br label %for.inc183

sw.bb163:                                         ; preds = %cond.end120.sw.bb163_crit_edge, %cond.end120.sw.bb163_crit_edge374
  %magic164 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 5
  %92 = ptrtoint ptr %magic164 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 54015, ptr %magic164, align 8
  %93 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %path, align 8
  %95 = add i32 %94, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %level.1.in320, i32 %95)
  %cmp167 = icmp eq i32 %level.1.in320, %95
  br i1 %cmp167, label %sw.bb163.cond.end177_crit_edge, label %cond.false176, !prof !216

sw.bb163.cond.end177_crit_edge:                   ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end177

cond.false176:                                    ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 2074) #12
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false176, %sw.bb163.cond.end177_crit_edge
  %index178 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 3
  %96 = ptrtoint ptr %index178 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %index178, align 8
  %97 = ptrtoint ptr %dp179 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dp179, align 8
  %99 = ptrtoint ptr %blk.2322 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %blk.2322, align 8
  %call181 = tail call i32 @xfs_dir2_leaf_lasthash(ptr noundef %98, ptr noundef %100, ptr noundef null) #12
  %hashval182 = getelementptr %struct.xfs_da_state_blk, ptr %blk.1.pn317, i32 1, i32 4
  %101 = ptrtoint ptr %hashval182 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call181, ptr %hashval182, align 4
  br label %for.inc183

sw.default:                                       ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 2080) #12
  br label %for.inc183

for.inc183:                                       ; preds = %sw.default, %cond.end177, %cond.end158, %xfs_da3_node_hdr_from_disk.exit289
  %blkno.2 = phi i32 [ %blkno.1319, %sw.default ], [ %blkno.1319, %cond.end177 ], [ %blkno.1319, %cond.end158 ], [ %83, %xfs_da3_node_hdr_from_disk.exit289 ]
  %level.1 = add i32 %level.1321, 1
  %102 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %path, align 8
  %cmp71 = icmp slt i32 %level.1, %103
  br i1 %cmp71, label %for.inc183.for.body73_crit_edge, label %for.inc183.for.end186_crit_edge

for.inc183.for.end186_crit_edge:                  ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end186

for.inc183.for.body73_crit_edge:                  ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body73

for.end186:                                       ; preds = %for.inc183.for.end186_crit_edge, %for.end.for.end186_crit_edge
  %104 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end186, %xfs_da3_node_read.exit.cleanup_crit_edge, %for.body73.cleanup_crit_edge, %cond.false65, %if.then56.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end186 ], [ 0, %if.then56.cleanup_crit_edge ], [ 0, %cond.false65 ], [ %call.i, %for.body73.cleanup_crit_edge ], [ %call4.i, %xfs_da3_node_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da3_blk_link(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %old_blk, ptr nocapture noundef readonly %new_blk) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #12
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !224
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp2, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !238

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1807) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %5 = ptrtoint ptr %old_blk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %old_blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_addr, align 4
  %9 = ptrtoint ptr %new_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new_blk, align 8
  %b_addr7 = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %b_addr7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr7, align 4
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %old_blk, i32 0, i32 5
  %13 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %magic, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %14, label %cond.false20.critedge [
    i32 65214, label %cond.end.cond.end21_crit_edge
    i32 54015, label %cond.end.cond.end21_crit_edge240
    i32 64494, label %cond.end.cond.end21_crit_edge241
  ]

cond.end.cond.end21_crit_edge241:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end21

cond.end.cond.end21_crit_edge240:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end21

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end21

cond.false20.critedge:                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1812) #12
  %16 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %magic, align 8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20.critedge, %cond.end.cond.end21_crit_edge, %cond.end.cond.end21_crit_edge240, %cond.end.cond.end21_crit_edge241
  %17 = phi i32 [ %14, %cond.end.cond.end21_crit_edge ], [ %14, %cond.end.cond.end21_crit_edge240 ], [ %14, %cond.end.cond.end21_crit_edge241 ], [ %.pr, %cond.false20.critedge ]
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %17, label %cond.end21.if.else_crit_edge [
    i32 64494, label %sw.bb
    i32 54015, label %sw.bb25
    i32 65214, label %sw.bb29
  ]

cond.end21.if.else_crit_edge:                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

sw.bb:                                            ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %old_blk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %old_blk, align 8
  %21 = ptrtoint ptr %new_blk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %new_blk, align 8
  %call = tail call i32 @xfs_attr_leaf_order(ptr noundef %20, ptr noundef %22) #12
  br label %sw.epilog

sw.bb25:                                          ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %old_blk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %old_blk, align 8
  %25 = ptrtoint ptr %new_blk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %new_blk, align 8
  %call28 = tail call i32 @xfs_dir2_leafn_order(ptr noundef %4, ptr noundef %24, ptr noundef %26) #12
  br label %sw.epilog

sw.bb29:                                          ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %old_blk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %old_blk, align 8
  %29 = ptrtoint ptr %new_blk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %new_blk, align 8
  %call32 = tail call fastcc i32 @xfs_da3_node_order(ptr noundef %4, ptr noundef %28, ptr noundef %30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb25, %sw.bb
  %before.0 = phi i32 [ %call32, %sw.bb29 ], [ %call28, %sw.bb25 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %before.0)
  %tobool33.not = icmp eq i32 %before.0, 0
  br i1 %tobool33.not, label %sw.epilog.if.else_crit_edge, label %if.then

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %sw.epilog
  tail call fastcc void @trace_xfs_da_link_before(ptr noundef %2)
  %blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %old_blk, i32 0, i32 1
  %31 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blkno, align 4
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %12, align 4
  %back = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %8, i32 0, i32 1
  %34 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %back, align 4
  %back34 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %12, i32 0, i32 1
  %36 = ptrtoint ptr %back34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %back34, align 4
  %37 = load i32, ptr %back, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool36.not = icmp eq i32 %37, 0
  br i1 %tobool36.not, label %if.then.if.end146_crit_edge, label %if.then37

if.then.if.end146_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.then37:                                        ; preds = %if.then
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 11
  %38 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans, align 4
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 13
  %40 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %whichfork, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %39, ptr noundef %4, i32 noundef %37, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %41, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then37
  %42 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bp, align 4
  %tobool1.not.i = icmp eq ptr %43, null
  %tobool3.not.i = icmp eq ptr %39, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end_crit_edge, label %xfs_da3_node_read.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

xfs_da3_node_read.exit:                           ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %39, ptr noundef nonnull %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool40.not = icmp eq i32 %call4.i, 0
  br i1 %tobool40.not, label %if.endthread-pre-split, label %xfs_da3_node_read.exit.cleanup_crit_edge

xfs_da3_node_read.exit.cleanup_crit_edge:         ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.endthread-pre-split:                           ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr231 = load ptr, ptr %bp, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %lor.lhs.false.i.if.end_crit_edge
  %45 = phi ptr [ %.pr231, %if.endthread-pre-split ], [ %43, %lor.lhs.false.i.if.end_crit_edge ]
  %cmp42.not = icmp eq ptr %45, null
  br i1 %cmp42.not, label %cond.false50, label %if.end.cond.end51_crit_edge, !prof !238

if.end.cond.end51_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end51

cond.false50:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1842) #12
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %if.end.cond.end51_crit_edge
  %b_addr52 = getelementptr inbounds %struct.xfs_buf, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %b_addr52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_addr52, align 4
  %magic53 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %magic53 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %magic53, align 4
  %magic54 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %8, i32 0, i32 2
  %50 = ptrtoint ptr %magic54 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %magic54, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp56 = icmp eq i16 %49, %51
  br i1 %cmp56, label %cond.end51.cond.end66_crit_edge, label %cond.false65, !prof !216

cond.end51.cond.end66_crit_edge:                  ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1844) #12
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.end51.cond.end66_crit_edge
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %47, align 4
  %54 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp69 = icmp eq i32 %53, %55
  br i1 %cmp69, label %cond.end66.if.end146.sink.split_crit_edge, label %cond.false78, !prof !216

cond.end66.if.end146.sink.split_crit_edge:        ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

cond.false78:                                     ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1845) #12
  br label %if.end146.sink.split

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %cond.end21.if.else_crit_edge
  tail call fastcc void @trace_xfs_da_link_after(ptr noundef %2)
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %8, align 4
  %58 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %12, align 4
  %blkno88 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %old_blk, i32 0, i32 1
  %59 = ptrtoint ptr %blkno88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blkno88, align 4
  %back89 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %12, i32 0, i32 1
  %61 = ptrtoint ptr %back89 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %back89, align 4
  %62 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool91.not = icmp eq i32 %62, 0
  br i1 %tobool91.not, label %if.else.if.end146_crit_edge, label %if.then92

if.else.if.end146_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.then92:                                        ; preds = %if.else
  %trans93 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 11
  %63 = ptrtoint ptr %trans93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %trans93, align 4
  %whichfork95 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 13
  %65 = ptrtoint ptr %whichfork95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %whichfork95, align 4
  %call.i214 = call i32 @xfs_da_read_buf(ptr noundef %64, ptr noundef %4, i32 noundef %62, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef %66, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %lor.lhs.false.i219, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i219:                               ; preds = %if.then92
  %67 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bp, align 4
  %tobool1.not.i216 = icmp eq ptr %68, null
  %tobool3.not.i217 = icmp eq ptr %64, null
  %or.cond.i218 = or i1 %tobool3.not.i217, %tobool1.not.i216
  br i1 %or.cond.i218, label %lor.lhs.false.i219.if.end99_crit_edge, label %xfs_da3_node_read.exit223

lor.lhs.false.i219.if.end99_crit_edge:            ; preds = %lor.lhs.false.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

xfs_da3_node_read.exit223:                        ; preds = %lor.lhs.false.i219
  %call4.i220 = tail call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %64, ptr noundef nonnull %68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i220)
  %tobool97.not = icmp eq i32 %call4.i220, 0
  br i1 %tobool97.not, label %if.end99thread-pre-split, label %xfs_da3_node_read.exit223.cleanup_crit_edge

xfs_da3_node_read.exit223.cleanup_crit_edge:      ; preds = %xfs_da3_node_read.exit223
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end99thread-pre-split:                         ; preds = %xfs_da3_node_read.exit223
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr237 = load ptr, ptr %bp, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end99thread-pre-split, %lor.lhs.false.i219.if.end99_crit_edge
  %70 = phi ptr [ %.pr237, %if.end99thread-pre-split ], [ %68, %lor.lhs.false.i219.if.end99_crit_edge ]
  %cmp100.not = icmp eq ptr %70, null
  br i1 %cmp100.not, label %cond.false109, label %if.end99.cond.end110_crit_edge, !prof !238

if.end99.cond.end110_crit_edge:                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end110

cond.false109:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1863) #12
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %if.end99.cond.end110_crit_edge
  %b_addr111 = getelementptr inbounds %struct.xfs_buf, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %b_addr111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_addr111, align 4
  %magic112 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %magic112 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %magic112, align 4
  %magic114 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %8, i32 0, i32 2
  %75 = ptrtoint ptr %magic114 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %magic114, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %76)
  %cmp116 = icmp eq i16 %74, %76
  br i1 %cmp116, label %cond.end110.cond.end126_crit_edge, label %cond.false125, !prof !216

cond.end110.cond.end126_crit_edge:                ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end126

cond.false125:                                    ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1865) #12
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false125, %cond.end110.cond.end126_crit_edge
  %back127 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %back127 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %back127, align 4
  %79 = ptrtoint ptr %blkno88 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blkno88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp129 = icmp eq i32 %78, %80
  br i1 %cmp129, label %cond.end126.if.end146.sink.split_crit_edge, label %cond.false138, !prof !216

cond.end126.if.end146.sink.split_crit_edge:       ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

cond.false138:                                    ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1866) #12
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %cond.false138, %cond.end126.if.end146.sink.split_crit_edge, %cond.false78, %cond.end66.if.end146.sink.split_crit_edge
  %back127.sink = phi ptr [ %47, %cond.end66.if.end146.sink.split_crit_edge ], [ %47, %cond.false78 ], [ %back127, %cond.end126.if.end146.sink.split_crit_edge ], [ %back127, %cond.false138 ]
  %trans93.sink = phi ptr [ %trans, %cond.end66.if.end146.sink.split_crit_edge ], [ %trans, %cond.false78 ], [ %trans93, %cond.end126.if.end146.sink.split_crit_edge ], [ %trans93, %cond.false138 ]
  %.sink239 = phi ptr [ %45, %cond.end66.if.end146.sink.split_crit_edge ], [ %45, %cond.false78 ], [ %70, %cond.end126.if.end146.sink.split_crit_edge ], [ %70, %cond.false138 ]
  %.sink238.ph = phi ptr [ %back, %cond.end66.if.end146.sink.split_crit_edge ], [ %back, %cond.false78 ], [ %8, %cond.end126.if.end146.sink.split_crit_edge ], [ %8, %cond.false138 ]
  %blkno140 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %new_blk, i32 0, i32 1
  %81 = ptrtoint ptr %blkno140 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %blkno140, align 4
  %83 = ptrtoint ptr %back127.sink to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %back127.sink, align 4
  %84 = ptrtoint ptr %trans93.sink to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %trans93.sink, align 4
  tail call void @xfs_trans_log_buf(ptr noundef %85, ptr noundef %.sink239, i32 noundef 0, i32 noundef 11) #12
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %if.else.if.end146_crit_edge, %if.then.if.end146_crit_edge
  %.sink238 = phi ptr [ %back, %if.then.if.end146_crit_edge ], [ %8, %if.else.if.end146_crit_edge ], [ %.sink238.ph, %if.end146.sink.split ]
  %blkno144 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %new_blk, i32 0, i32 1
  %86 = ptrtoint ptr %blkno144 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %blkno144, align 4
  %88 = ptrtoint ptr %.sink238 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %.sink238, align 4
  %trans147 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 11
  %89 = ptrtoint ptr %trans147 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %trans147, align 4
  %91 = ptrtoint ptr %old_blk to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %old_blk, align 8
  tail call void @xfs_trans_log_buf(ptr noundef %90, ptr noundef %92, i32 noundef 0, i32 noundef 11) #12
  %93 = ptrtoint ptr %trans147 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %trans147, align 4
  %95 = ptrtoint ptr %new_blk to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %new_blk, align 8
  tail call void @xfs_trans_log_buf(ptr noundef %94, ptr noundef %96, i32 noundef 0, i32 noundef 11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %xfs_da3_node_read.exit223.cleanup_crit_edge, %if.then92.cleanup_crit_edge, %xfs_da3_node_read.exit.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end146 ], [ %call4.i, %xfs_da3_node_read.exit.cleanup_crit_edge ], [ %call4.i220, %xfs_da3_node_read.exit223.cleanup_crit_edge ], [ %call.i, %if.then37.cleanup_crit_edge ], [ %call.i214, %if.then92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_leaf_order(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leafn_order(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_node_order(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %node1_bp, ptr nocapture noundef readonly %node2_bp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %node1_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %b_addr1 = getelementptr inbounds %struct.xfs_buf, ptr %node2_bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr1, align 4
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %__count.i, align 8
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %9)
  %cmp.i = icmp eq i16 %9, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %__count29.i, align 4
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %13)
  %cmp39.i = icmp eq i16 %13, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %node1hdr.sroa.1464.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %node1hdr.sroa.9.0 = phi i16 [ %15, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %15, %cond.false48.i ], [ %11, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %11, %cond.false.i ]
  %16 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dp, align 8
  %m_features.i.i33 = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i.i33 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i.i33, align 8
  %and.i.i34 = and i64 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i34)
  %tobool.i.not.i35 = icmp eq i64 %and.i.i34, 0
  %magic26.i51 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %3, i32 0, i32 2
  br i1 %tobool.i.not.i35, label %if.else.i60, label %if.then.i47

if.then.i47:                                      ; preds = %xfs_da3_node_hdr_from_disk.exit
  %20 = ptrtoint ptr %magic26.i51 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %magic26.i51, align 8
  %__count.i40 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %__count.i40 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %__count.i40, align 8
  %__btree.i44 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %21)
  %cmp.i46 = icmp eq i16 %21, 16062
  br i1 %cmp.i46, label %if.then.i47.xfs_da3_node_hdr_from_disk.exit62_crit_edge, label %cond.false.i48, !prof !216

if.then.i47.xfs_da3_node_hdr_from_disk.exit62_crit_edge: ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit62

cond.false.i48:                                   ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit62

if.else.i60:                                      ; preds = %xfs_da3_node_hdr_from_disk.exit
  %24 = ptrtoint ptr %magic26.i51 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %magic26.i51, align 4
  %__count29.i53 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %__count29.i53 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %__count29.i53, align 4
  %__btree34.i57 = getelementptr inbounds %struct.xfs_da_intnode, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %25)
  %cmp39.i59 = icmp eq i16 %25, -322
  br i1 %cmp39.i59, label %if.else.i60.xfs_da3_node_hdr_from_disk.exit62_crit_edge, label %cond.false48.i61, !prof !216

if.else.i60.xfs_da3_node_hdr_from_disk.exit62_crit_edge: ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit62

cond.false48.i61:                                 ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit62

xfs_da3_node_hdr_from_disk.exit62:                ; preds = %cond.false48.i61, %if.else.i60.xfs_da3_node_hdr_from_disk.exit62_crit_edge, %cond.false.i48, %if.then.i47.xfs_da3_node_hdr_from_disk.exit62_crit_edge
  %node2hdr.sroa.1463.0 = phi ptr [ %__btree34.i57, %if.else.i60.xfs_da3_node_hdr_from_disk.exit62_crit_edge ], [ %__btree34.i57, %cond.false48.i61 ], [ %__btree.i44, %if.then.i47.xfs_da3_node_hdr_from_disk.exit62_crit_edge ], [ %__btree.i44, %cond.false.i48 ]
  %node2hdr.sroa.9.0 = phi i16 [ %27, %if.else.i60.xfs_da3_node_hdr_from_disk.exit62_crit_edge ], [ %27, %cond.false48.i61 ], [ %23, %if.then.i47.xfs_da3_node_hdr_from_disk.exit62_crit_edge ], [ %23, %cond.false.i48 ]
  %conv = zext i16 %node1hdr.sroa.9.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %node1hdr.sroa.9.0)
  %cmp.not = icmp eq i16 %node1hdr.sroa.9.0, 0
  br i1 %cmp.not, label %xfs_da3_node_hdr_from_disk.exit62.if.end_crit_edge, label %land.lhs.true

xfs_da3_node_hdr_from_disk.exit62.if.end_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %xfs_da3_node_hdr_from_disk.exit62
  %conv6 = zext i16 %node2hdr.sroa.9.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %node2hdr.sroa.9.0)
  %cmp7.not = icmp eq i16 %node2hdr.sroa.9.0, 0
  br i1 %cmp7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true9

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %28 = ptrtoint ptr %node2hdr.sroa.1463.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node2hdr.sroa.1463.0, align 4
  %30 = ptrtoint ptr %node1hdr.sroa.1464.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node1hdr.sroa.1464.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp12 = icmp ult i32 %29, %31
  br i1 %cmp12, label %land.lhs.true9.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %sub = add nsw i32 %conv6, -1
  %arrayidx16 = getelementptr %struct.xfs_da_node_entry, ptr %node2hdr.sroa.1463.0, i32 %sub
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16, align 4
  %sub20 = add nsw i32 %conv, -1
  %arrayidx21 = getelementptr %struct.xfs_da_node_entry, ptr %node1hdr.sroa.1464.0, i32 %sub20
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp23 = icmp ult i32 %33, %35
  br i1 %cmp23, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %xfs_da3_node_hdr_from_disk.exit62.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %land.lhs.true9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_link_before(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_link_before, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_link_before, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %call42 = tail call i32 @__traceiter_xfs_da_link_before(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !249
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_link_before, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_link_before, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_link_before.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_link_before.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2075, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
define internal fastcc void @trace_xfs_da_link_after(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_link_after, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_link_after, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !250
  %call42 = tail call i32 @__traceiter_xfs_da_link_after(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_link_after, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_link_after, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_link_after.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_link_after.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2076, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
define internal fastcc void @trace_xfs_da_path_shift(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_path_shift, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_path_shift, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !252
  %call42 = tail call i32 @__traceiter_xfs_da_path_shift(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !253
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_path_shift, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_path_shift, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_path_shift.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_path_shift.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2092, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da_hashname(ptr nocapture noundef readonly %name, i32 noundef %namelen) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %namelen)
  %cmp61 = icmp sgt i32 %namelen, 3
  br i1 %cmp61, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %hash.064 = phi i32 [ %xor12, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %namelen.addr.063 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %namelen, %entry.for.body_crit_edge ]
  %name.addr.062 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %name, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %name.addr.062 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name.addr.062, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 21
  %arrayidx1 = getelementptr i8, ptr %name.addr.062, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw nsw i32 %conv2, 14
  %arrayidx4 = getelementptr i8, ptr %name.addr.062, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl nuw nsw i32 %conv5, 7
  %arrayidx8 = getelementptr i8, ptr %name.addr.062, i32 3
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %hash.064, i32 %hash.064, i32 28) #12
  %xor = xor i32 %shl, %or.i
  %xor7 = xor i32 %xor, %shl3
  %xor11 = xor i32 %xor7, %shl6
  %xor12 = xor i32 %xor11, %conv9
  %sub = add nsw i32 %namelen.addr.063, -4
  %add.ptr = getelementptr i8, ptr %name.addr.062, i32 4
  %cmp = icmp ugt i32 %namelen.addr.063, 7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %name.addr.0.lcssa = phi ptr [ %name, %entry.for.end_crit_edge ], [ %add.ptr, %for.body.for.end_crit_edge ]
  %namelen.addr.0.lcssa = phi i32 [ %namelen, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %hash.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %xor12, %for.body.for.end_crit_edge ]
  %8 = zext i32 %namelen.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %namelen.addr.0.lcssa, label %for.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb26
    i32 1, label %sw.bb36
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %name.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %name.addr.0.lcssa, align 1
  %conv14 = zext i8 %10 to i32
  %shl15 = shl nuw nsw i32 %conv14, 14
  %arrayidx16 = getelementptr i8, ptr %name.addr.0.lcssa, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %shl18 = shl nuw nsw i32 %conv17, 7
  %arrayidx20 = getelementptr i8, ptr %name.addr.0.lcssa, i32 2
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %or.i58 = tail call i32 @llvm.fshl.i32(i32 %hash.0.lcssa, i32 %hash.0.lcssa, i32 21) #12
  %xor19 = xor i32 %shl15, %or.i58
  %xor23 = xor i32 %xor19, %shl18
  %xor25 = xor i32 %xor23, %conv21
  br label %cleanup

sw.bb26:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %name.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name.addr.0.lcssa, align 1
  %conv28 = zext i8 %16 to i32
  %shl29 = shl nuw nsw i32 %conv28, 7
  %arrayidx30 = getelementptr i8, ptr %name.addr.0.lcssa, i32 1
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %18 to i32
  %or.i59 = tail call i32 @llvm.fshl.i32(i32 %hash.0.lcssa, i32 %hash.0.lcssa, i32 14) #12
  %xor33 = xor i32 %or.i59, %conv31
  %xor35 = xor i32 %xor33, %shl29
  br label %cleanup

sw.bb36:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %name.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name.addr.0.lcssa, align 1
  %conv38 = zext i8 %20 to i32
  %or.i60 = tail call i32 @llvm.fshl.i32(i32 %hash.0.lcssa, i32 %hash.0.lcssa, i32 7) #12
  %xor41 = xor i32 %or.i60, %conv38
  br label %cleanup

cleanup:                                          ; preds = %sw.bb36, %sw.bb26, %sw.bb, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %xor41, %sw.bb36 ], [ %xor35, %sw.bb26 ], [ %xor25, %sw.bb ], [ %hash.0.lcssa, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_da_compname(ptr nocapture noundef readonly %args, ptr nocapture noundef readonly %name, i32 noundef %len) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %namelen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp = icmp eq i32 %1, %len
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  %bcmp = tail call i32 @bcmp(ptr %3, ptr %name, i32 %len) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp2 = icmp eq i32 %bcmp, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da_grow_inode_int(ptr nocapture noundef %args, ptr noundef %bno, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 13
  %4 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %whichfork, align 4
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_nblocks, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #12
  %8 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #12
  %call = tail call i32 @xfs_bmap_first_unused(ptr noundef %1, ptr noundef %3, i32 noundef %count, ptr noundef %bno, i32 noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup93_crit_edge

entry.cleanup93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup93

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %nmap, align 4
  %10 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bno, align 8
  %conv = sext i32 %count to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1.i = icmp eq i32 %5, 2
  %cond.i = select i1 %cmp1.i, i32 512, i32 0
  %cond2.i = select i1 %cmp.i, i32 4, i32 %cond.i
  %or3 = or i32 %cond2.i, 34
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %12 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total, align 8
  %call4 = call i32 @xfs_bmapi_write(ptr noundef %1, ptr noundef %3, i64 noundef %11, i64 noundef %conv, i32 noundef %or3, i32 noundef %13, ptr noundef nonnull %map, ptr noundef nonnull %nmap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup93_crit_edge

if.end.cleanup93_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup93

if.end7:                                          ; preds = %if.end
  %14 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp slt i32 %15, 2
  br i1 %cmp, label %if.end7.cond.end_crit_edge, label %cond.false, !prof !216

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 2166) #12
  %16 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %nmap, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge
  %17 = phi i32 [ %15, %if.end7.cond.end_crit_edge ], [ %.pr, %cond.false ]
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %17, label %cond.end.for.end62_crit_edge [
    i32 1, label %cond.end.for.body56.preheader_crit_edge
    i32 0, label %land.lhs.true
  ]

cond.end.for.body56.preheader_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56.preheader

cond.end.for.end62_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end62

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp16 = icmp sgt i32 %count, 1
  br i1 %cmp16, label %if.then18, label %land.lhs.true.for.end62_crit_edge

land.lhs.true.for.end62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end62

if.then18:                                        ; preds = %land.lhs.true
  %mul = shl i32 %count, 5
  %call19 = call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 0) #12
  %19 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bno, align 8
  %add169 = add i64 %20, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add169, i64 %20)
  %cmp21170 = icmp ugt i64 %add169, %20
  br i1 %cmp21170, label %for.body.lr.ph, label %if.then18.for.end62_crit_edge

if.then18.for.end62_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end62

for.body.lr.ph:                                   ; preds = %if.then18
  %21 = call i32 @llvm.smin.i32(i32 %count, i32 4)
  %or33 = or i32 %cond2.i, 2
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.body.lr.ph
  %add173 = phi i64 [ %add169, %for.body.lr.ph ], [ %add, %if.end42.for.body_crit_edge ]
  %b.0172 = phi i64 [ %20, %for.body.lr.ph ], [ %add48, %if.end42.for.body_crit_edge ]
  %mapi.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %add43, %if.end42.for.body_crit_edge ]
  %22 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nmap, align 4
  %sub = sub i64 %add173, %b.0172
  %23 = shl i64 %sub, 32
  %conv31 = ashr exact i64 %23, 32
  %24 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total, align 8
  %arrayidx = getelementptr %struct.xfs_bmbt_irec, ptr %call19, i32 %mapi.0171
  %call35 = call i32 @xfs_bmapi_write(ptr noundef %1, ptr noundef %3, i64 noundef %b.0172, i64 noundef %conv31, i32 noundef %or33, i32 noundef %25, ptr noundef %arrayidx, ptr noundef nonnull %nmap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %for.body.out_free_map_crit_edge

for.body.out_free_map_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_map

if.end38:                                         ; preds = %for.body
  %26 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp39 = icmp slt i32 %27, 1
  br i1 %cmp39, label %if.end38.if.end52_crit_edge, label %if.end42

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.end42:                                         ; preds = %if.end38
  %add43 = add i32 %27, %mapi.0171
  %sub44 = add i32 %add43, -1
  %arrayidx45 = getelementptr %struct.xfs_bmbt_irec, ptr %call19, i32 %sub44
  %28 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx45, align 8
  %br_blockcount = getelementptr %struct.xfs_bmbt_irec, ptr %call19, i32 %sub44, i32 2
  %30 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %br_blockcount, align 8
  %add48 = add i64 %31, %29
  %32 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bno, align 8
  %add = add i64 %33, %conv
  %cmp21 = icmp ugt i64 %add, %add48
  br i1 %cmp21, label %if.end42.for.body_crit_edge, label %if.end42.if.end52_crit_edge

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end52:                                         ; preds = %if.end42.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  %mapi.1 = phi i32 [ %mapi.0171, %if.end38.if.end52_crit_edge ], [ %add43, %if.end42.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapi.1)
  %cmp54175 = icmp sgt i32 %mapi.1, 0
  br i1 %cmp54175, label %if.end52.for.body56.preheader_crit_edge, label %if.end52.for.end62_crit_edge

if.end52.for.end62_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end62

if.end52.for.body56.preheader_crit_edge:          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56.preheader

for.body56.preheader:                             ; preds = %if.end52.for.body56.preheader_crit_edge, %cond.end.for.body56.preheader_crit_edge
  %mapi.1190 = phi i32 [ %mapi.1, %if.end52.for.body56.preheader_crit_edge ], [ %17, %cond.end.for.body56.preheader_crit_edge ]
  %mapp.0189 = phi ptr [ %call19, %if.end52.for.body56.preheader_crit_edge ], [ %map, %cond.end.for.body56.preheader_crit_edge ]
  br label %for.body56

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.body56.preheader
  %i.0177 = phi i32 [ %inc, %for.body56.for.body56_crit_edge ], [ 0, %for.body56.preheader ]
  %got.0176 = phi i32 [ %conv61, %for.body56.for.body56_crit_edge ], [ 0, %for.body56.preheader ]
  %br_blockcount58 = getelementptr %struct.xfs_bmbt_irec, ptr %mapp.0189, i32 %i.0177, i32 2
  %34 = ptrtoint ptr %br_blockcount58 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %br_blockcount58, align 8
  %36 = trunc i64 %35 to i32
  %conv61 = add i32 %got.0176, %36
  %inc = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, %mapi.1190
  br i1 %exitcond.not, label %for.body56.for.end62_crit_edge, label %for.body56.for.body56_crit_edge

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56

for.body56.for.end62_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end62

for.end62:                                        ; preds = %for.body56.for.end62_crit_edge, %if.end52.for.end62_crit_edge, %if.then18.for.end62_crit_edge, %land.lhs.true.for.end62_crit_edge, %cond.end.for.end62_crit_edge
  %mapi.1184 = phi i32 [ %mapi.1, %if.end52.for.end62_crit_edge ], [ 0, %if.then18.for.end62_crit_edge ], [ 0, %cond.end.for.end62_crit_edge ], [ 0, %land.lhs.true.for.end62_crit_edge ], [ %mapi.1190, %for.body56.for.end62_crit_edge ]
  %mapp.0183 = phi ptr [ %call19, %if.end52.for.end62_crit_edge ], [ %call19, %if.then18.for.end62_crit_edge ], [ null, %cond.end.for.end62_crit_edge ], [ null, %land.lhs.true.for.end62_crit_edge ], [ %mapp.0189, %for.body56.for.end62_crit_edge ]
  %got.0.lcssa = phi i32 [ 0, %if.end52.for.end62_crit_edge ], [ 0, %if.then18.for.end62_crit_edge ], [ 0, %cond.end.for.end62_crit_edge ], [ 0, %land.lhs.true.for.end62_crit_edge ], [ %conv61, %for.body56.for.end62_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %got.0.lcssa, i32 %count)
  %cmp63.not = icmp eq i32 %got.0.lcssa, %count
  br i1 %cmp63.not, label %lor.lhs.false, label %for.end62.out_free_map_crit_edge

for.end62.out_free_map_crit_edge:                 ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_map

lor.lhs.false:                                    ; preds = %for.end62
  %37 = ptrtoint ptr %mapp.0183 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mapp.0183, align 8
  %39 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %40)
  %cmp67.not = icmp eq i64 %38, %40
  br i1 %cmp67.not, label %lor.lhs.false69, label %lor.lhs.false.out_free_map_crit_edge

lor.lhs.false.out_free_map_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_map

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  %sub70 = add i32 %mapi.1184, -1
  %arrayidx71 = getelementptr %struct.xfs_bmbt_irec, ptr %mapp.0183, i32 %sub70
  %41 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx71, align 8
  %br_blockcount75 = getelementptr %struct.xfs_bmbt_irec, ptr %mapp.0183, i32 %sub70, i32 2
  %43 = ptrtoint ptr %br_blockcount75 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %br_blockcount75, align 8
  %add76 = add i64 %44, %42
  %add78 = add i64 %38, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add76, i64 %add78)
  %cmp79.not = icmp eq i64 %add76, %add78
  br i1 %cmp79.not, label %if.end82, label %lor.lhs.false69.out_free_map_crit_edge

lor.lhs.false69.out_free_map_crit_edge:           ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_map

if.end82:                                         ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_nblocks, align 8
  %sub84.neg = sub i64 %7, %46
  %47 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %total, align 8
  %49 = trunc i64 %sub84.neg to i32
  %conv88 = add i32 %48, %49
  store i32 %conv88, ptr %total, align 8
  br label %out_free_map

out_free_map:                                     ; preds = %if.end82, %lor.lhs.false69.out_free_map_crit_edge, %lor.lhs.false.out_free_map_crit_edge, %for.end62.out_free_map_crit_edge, %for.body.out_free_map_crit_edge
  %mapp.1 = phi ptr [ %mapp.0183, %if.end82 ], [ %mapp.0183, %lor.lhs.false69.out_free_map_crit_edge ], [ %mapp.0183, %lor.lhs.false.out_free_map_crit_edge ], [ %mapp.0183, %for.end62.out_free_map_crit_edge ], [ %call19, %for.body.out_free_map_crit_edge ]
  %error.4 = phi i32 [ 0, %if.end82 ], [ -28, %lor.lhs.false69.out_free_map_crit_edge ], [ -28, %lor.lhs.false.out_free_map_crit_edge ], [ -28, %for.end62.out_free_map_crit_edge ], [ %call35, %for.body.out_free_map_crit_edge ]
  %cmp89.not = icmp eq ptr %mapp.1, %map
  br i1 %cmp89.not, label %out_free_map.cleanup93_crit_edge, label %if.then91

out_free_map.cleanup93_crit_edge:                 ; preds = %out_free_map
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup93

if.then91:                                        ; preds = %out_free_map
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef %mapp.1) #12
  br label %cleanup93

cleanup93:                                        ; preds = %if.then91, %out_free_map.cleanup93_crit_edge, %if.end.cleanup93_crit_edge, %entry.cleanup93_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup93_crit_edge ], [ %call4, %if.end.cleanup93_crit_edge ], [ %error.4, %if.then91 ], [ %error.4, %out_free_map.cleanup93_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_first_unused(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da_grow_inode(ptr noundef %args, ptr nocapture noundef writeonly %new_blkno) local_unnamed_addr #0 align 64 {
entry:
  %bno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bno) #12
  tail call fastcc void @trace_xfs_da_grow_inode(ptr noundef %args)
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leafblk, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %bno to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %bno, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fsbcount, align 4
  %call = call i32 @xfs_da_grow_inode_int(ptr noundef %args, ptr noundef nonnull %bno, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bno, align 8
  %conv2 = trunc i64 %8 to i32
  %9 = ptrtoint ptr %new_blkno to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv2, ptr %new_blkno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bno) #12
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_grow_inode(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_grow_inode, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_grow_inode, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !254
  %call42 = tail call i32 @__traceiter_xfs_da_grow_inode(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !255
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_grow_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_grow_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_grow_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_grow_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2089, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
define internal fastcc void @trace_xfs_da_shrink_inode(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_shrink_inode, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_shrink_inode, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !256
  %call42 = tail call i32 @__traceiter_xfs_da_shrink_inode(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_shrink_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_shrink_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_shrink_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_shrink_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2090, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @xfs_bunmapi(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_da3_swap_lastblock(ptr noundef %args, ptr nocapture noundef %dead_blknop, ptr nocapture noundef %dead_bufp) #5 align 64 {
entry:
  %last_buf = alloca ptr, align 4
  %sib_buf = alloca ptr, align 4
  %par_buf = alloca ptr, align 4
  %lastoff = alloca i64, align 8
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_buf) #12
  %0 = ptrtoint ptr %last_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %last_buf, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sib_buf) #12
  %1 = ptrtoint ptr %sib_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %sib_buf, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %par_buf) #12
  %2 = ptrtoint ptr %par_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %par_buf, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lastoff) #12
  tail call fastcc void @trace_xfs_da_swap_lastblock(ptr noundef %args)
  %3 = ptrtoint ptr %dead_bufp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dead_bufp, align 4
  %5 = ptrtoint ptr %dead_blknop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dead_blknop, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %9 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dp1, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 13
  %11 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !216

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.1, i32 noundef 2287) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args, align 8
  %freeblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %freeblk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freeblk, align 4
  %conv = zext i32 %18 to i64
  %19 = ptrtoint ptr %lastoff to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %lastoff, align 8
  %call = call i32 @xfs_bmap_last_before(ptr noundef %8, ptr noundef %10, ptr noundef nonnull %lastoff, i32 noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %20 = ptrtoint ptr %lastoff to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lastoff, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp4 = icmp eq i64 %21, 0
  br i1 %cmp4, label %__here, label %if.end15, !prof !238

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !258
  call void @xfs_corruption_error(ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2293, ptr noundef blockaddress(@xfs_da3_swap_lastblock, %__here)) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %conv16 = trunc i64 %21 to i32
  %22 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fsbcount, align 4
  %sub = sub i32 %conv16, %25
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %8, ptr noundef %10, i32 noundef %sub, i32 noundef 0, ptr noundef nonnull %last_buf, i32 noundef %12, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end15
  %26 = ptrtoint ptr %last_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %last_buf, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  %tobool3.not.i = icmp eq ptr %8, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end21_crit_edge, label %xfs_da3_node_read.exit

lor.lhs.false.i.if.end21_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

xfs_da3_node_read.exit:                           ; preds = %lor.lhs.false.i
  %call4.i = call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %8, ptr noundef nonnull %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool19.not = icmp eq i32 %call4.i, 0
  br i1 %tobool19.not, label %xfs_da3_node_read.exit.if.end21_crit_edge, label %xfs_da3_node_read.exit.cleanup_crit_edge

xfs_da3_node_read.exit.cleanup_crit_edge:         ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_da3_node_read.exit.if.end21_crit_edge:        ; preds = %xfs_da3_node_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %xfs_da3_node_read.exit.if.end21_crit_edge, %lor.lhs.false.i.if.end21_crit_edge
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %4, i32 0, i32 16
  %28 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_addr, align 4
  %30 = ptrtoint ptr %last_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %last_buf, align 4
  %b_addr22 = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %b_addr22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_addr22, align 4
  %34 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %args, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = call ptr @memcpy(ptr %29, ptr %33, i32 %37)
  %39 = load ptr, ptr %args, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %sub26 = add i32 %41, -1
  call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %4, i32 noundef 0, i32 noundef %sub26) #12
  %42 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %magic, align 4
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %45, label %if.else [
    i16 -11521, label %if.end21.if.then35_crit_edge
    i16 15871, label %if.end21.if.then35_crit_edge696
  ]

if.end21.if.then35_crit_edge696:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end21.if.then35_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.then35:                                        ; preds = %if.end21.if.then35_crit_edge, %if.end21.if.then35_crit_edge696
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #12
  %47 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %10, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %49, ptr noundef nonnull %leafhdr, ptr noundef %43) #12
  %ents37 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %50 = ptrtoint ptr %ents37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ents37, align 4
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %52 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %count, align 2
  %conv38 = zext i16 %53 to i32
  %sub39 = add nsw i32 %conv38, -1
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %51, i32 %sub39
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #12
  br label %if.end49

if.else:                                          ; preds = %if.end21
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %10, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %57, i32 0, i32 61
  %58 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %59, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %43, i32 0, i32 1
  %60 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %43, i32 0, i32 2
  %62 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %__level.i, align 2
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %43, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %45)
  %cmp.i = icmp eq i16 %45, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.else
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %43, i32 0, i32 1
  %64 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %43, i32 0, i32 2
  %66 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %__level32.i, align 2
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %43, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %45)
  %cmp39.i = icmp eq i16 %45, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %deadhdr.sroa.15512.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %deadhdr.sroa.12.0 = phi i16 [ %67, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %67, %cond.false48.i ], [ %63, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %63, %cond.false.i ]
  %deadhdr.sroa.9.0 = phi i16 [ %65, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %65, %cond.false48.i ], [ %61, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %61, %cond.false.i ]
  %conv43 = zext i16 %deadhdr.sroa.12.0 to i32
  %conv45 = zext i16 %deadhdr.sroa.9.0 to i32
  %sub46 = add nsw i32 %conv45, -1
  %arrayidx47 = getelementptr %struct.xfs_da_node_entry, ptr %deadhdr.sroa.15512.0, i32 %sub46
  %68 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx47, align 4
  %phi.bo = add nuw nsw i32 %conv43, 1
  br label %if.end49

if.end49:                                         ; preds = %xfs_da3_node_hdr_from_disk.exit, %if.then35
  %dead_hash.0 = phi i32 [ %55, %if.then35 ], [ %69, %xfs_da3_node_hdr_from_disk.exit ]
  %dead_level.0 = phi i32 [ 1, %if.then35 ], [ %phi.bo, %xfs_da3_node_hdr_from_disk.exit ]
  %70 = ptrtoint ptr %par_buf to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %par_buf, align 4
  %71 = ptrtoint ptr %sib_buf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %sib_buf, align 4
  %back = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %43, i32 0, i32 1
  %72 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %back, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool50.not = icmp eq i32 %73, 0
  br i1 %tobool50.not, label %if.end49.if.end84_crit_edge, label %if.then51

if.end49.if.end84_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then51:                                        ; preds = %if.end49
  %call.i410 = call i32 @xfs_da_read_buf(ptr noundef %8, ptr noundef %10, i32 noundef %73, i32 noundef 0, ptr noundef nonnull %sib_buf, i32 noundef %12, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410)
  %tobool.not.i411 = icmp eq i32 %call.i410, 0
  br i1 %tobool.not.i411, label %lor.lhs.false.i415, label %if.then51.done_crit_edge

if.then51.done_crit_edge:                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false.i415:                               ; preds = %if.then51
  %74 = ptrtoint ptr %sib_buf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sib_buf, align 4
  %tobool1.not.i412 = icmp eq ptr %75, null
  %or.cond.i414 = or i1 %tobool3.not.i, %tobool1.not.i412
  br i1 %or.cond.i414, label %lor.lhs.false.i415.if.end55_crit_edge, label %xfs_da3_node_read.exit419

lor.lhs.false.i415.if.end55_crit_edge:            ; preds = %lor.lhs.false.i415
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

xfs_da3_node_read.exit419:                        ; preds = %lor.lhs.false.i415
  %call4.i416 = call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %8, ptr noundef nonnull %75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i416)
  %tobool53.not = icmp eq i32 %call4.i416, 0
  br i1 %tobool53.not, label %xfs_da3_node_read.exit419.if.end55_crit_edge, label %xfs_da3_node_read.exit419.done_crit_edge

xfs_da3_node_read.exit419.done_crit_edge:         ; preds = %xfs_da3_node_read.exit419
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

xfs_da3_node_read.exit419.if.end55_crit_edge:     ; preds = %xfs_da3_node_read.exit419
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55:                                         ; preds = %xfs_da3_node_read.exit419.if.end55_crit_edge, %lor.lhs.false.i415.if.end55_crit_edge
  %76 = ptrtoint ptr %sib_buf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sib_buf, align 4
  %b_addr56 = getelementptr inbounds %struct.xfs_buf, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %b_addr56 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_addr56, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %sub)
  %cmp57.not = icmp eq i32 %81, %sub
  br i1 %cmp57.not, label %lor.rhs, label %if.end55.__here72_crit_edge, !prof !216

if.end55.__here72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here72

lor.rhs:                                          ; preds = %if.end55
  %magic59 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %magic59 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %magic59, align 4
  %84 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %85)
  %cmp63.not = icmp eq i16 %83, %85
  br i1 %cmp63.not, label %if.end76, label %lor.rhs.__here72_crit_edge, !prof !216

lor.rhs.__here72_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here72

__here72:                                         ; preds = %lor.rhs.__here72_crit_edge, %if.end55.__here72_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !259
  call void @xfs_corruption_error(ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2342, ptr noundef blockaddress(@xfs_da3_swap_lastblock, %__here72)) #12
  br label %done

if.end76:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %6, ptr %79, align 4
  call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %77, i32 noundef 0, i32 noundef 3) #12
  %87 = ptrtoint ptr %sib_buf to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %sib_buf, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end76, %if.end49.if.end84_crit_edge
  %88 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool86.not = icmp eq i32 %89, 0
  br i1 %tobool86.not, label %if.end84.if.end127_crit_edge, label %if.then87

if.end84.if.end127_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then87:                                        ; preds = %if.end84
  %call.i420 = call i32 @xfs_da_read_buf(ptr noundef %8, ptr noundef %10, i32 noundef %89, i32 noundef 0, ptr noundef nonnull %sib_buf, i32 noundef %12, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i420)
  %tobool.not.i421 = icmp eq i32 %call.i420, 0
  br i1 %tobool.not.i421, label %lor.lhs.false.i425, label %if.then87.done_crit_edge

if.then87.done_crit_edge:                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false.i425:                               ; preds = %if.then87
  %90 = ptrtoint ptr %sib_buf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sib_buf, align 4
  %tobool1.not.i422 = icmp eq ptr %91, null
  %or.cond.i424 = or i1 %tobool3.not.i, %tobool1.not.i422
  br i1 %or.cond.i424, label %lor.lhs.false.i425.if.end91_crit_edge, label %xfs_da3_node_read.exit429

lor.lhs.false.i425.if.end91_crit_edge:            ; preds = %lor.lhs.false.i425
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

xfs_da3_node_read.exit429:                        ; preds = %lor.lhs.false.i425
  %call4.i426 = call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %8, ptr noundef nonnull %91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i426)
  %tobool89.not = icmp eq i32 %call4.i426, 0
  br i1 %tobool89.not, label %xfs_da3_node_read.exit429.if.end91_crit_edge, label %xfs_da3_node_read.exit429.done_crit_edge

xfs_da3_node_read.exit429.done_crit_edge:         ; preds = %xfs_da3_node_read.exit429
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

xfs_da3_node_read.exit429.if.end91_crit_edge:     ; preds = %xfs_da3_node_read.exit429
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.end91:                                         ; preds = %xfs_da3_node_read.exit429.if.end91_crit_edge, %lor.lhs.false.i425.if.end91_crit_edge
  %92 = ptrtoint ptr %sib_buf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sib_buf, align 4
  %b_addr92 = getelementptr inbounds %struct.xfs_buf, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %b_addr92 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_addr92, align 4
  %back93 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %back93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %back93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %sub)
  %cmp94.not = icmp eq i32 %97, %sub
  br i1 %cmp94.not, label %lor.rhs96, label %if.end91.__here111_crit_edge, !prof !216

if.end91.__here111_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here111

lor.rhs96:                                        ; preds = %if.end91
  %magic97 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %95, i32 0, i32 2
  %98 = ptrtoint ptr %magic97 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %magic97, align 4
  %100 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %101)
  %cmp101.not = icmp eq i16 %99, %101
  br i1 %cmp101.not, label %if.end115, label %lor.rhs96.__here111_crit_edge, !prof !216

lor.rhs96.__here111_crit_edge:                    ; preds = %lor.rhs96
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here111

__here111:                                        ; preds = %lor.rhs96.__here111_crit_edge, %if.end91.__here111_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !260
  call void @xfs_corruption_error(ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2362, ptr noundef blockaddress(@xfs_da3_swap_lastblock, %__here111)) #12
  br label %done

if.end115:                                        ; preds = %lor.rhs96
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %back93 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %6, ptr %back93, align 4
  call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %93, i32 noundef 4, i32 noundef 7) #12
  %103 = ptrtoint ptr %sib_buf to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %sib_buf, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.end115, %if.end84.if.end127_crit_edge
  %104 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %args, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %leafblk, align 4
  %call.i430573 = call i32 @xfs_da_read_buf(ptr noundef %8, ptr noundef %10, i32 noundef %107, i32 noundef 0, ptr noundef nonnull %par_buf, i32 noundef %12, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i430573)
  %tobool.not.i431574 = icmp eq i32 %call.i430573, 0
  br i1 %tobool.not.i431574, label %if.end127.lor.lhs.false.i435_crit_edge, label %if.end127.done_crit_edge

if.end127.done_crit_edge:                         ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end127.lor.lhs.false.i435_crit_edge:           ; preds = %if.end127
  br label %lor.lhs.false.i435

lor.lhs.false.i435:                               ; preds = %if.end189.lor.lhs.false.i435_crit_edge, %if.end127.lor.lhs.false.i435_crit_edge
  %level.0575 = phi i32 [ %conv138, %if.end189.lor.lhs.false.i435_crit_edge ], [ -1, %if.end127.lor.lhs.false.i435_crit_edge ]
  %108 = ptrtoint ptr %par_buf to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %par_buf, align 4
  %tobool1.not.i432 = icmp eq ptr %109, null
  %or.cond.i434 = or i1 %tobool3.not.i, %tobool1.not.i432
  br i1 %or.cond.i434, label %lor.lhs.false.i435.if.end132_crit_edge, label %xfs_da3_node_read.exit439

lor.lhs.false.i435.if.end132_crit_edge:           ; preds = %lor.lhs.false.i435
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

xfs_da3_node_read.exit439:                        ; preds = %lor.lhs.false.i435
  %call4.i436 = call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %8, ptr noundef nonnull %109) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i436)
  %tobool130.not = icmp eq i32 %call4.i436, 0
  br i1 %tobool130.not, label %xfs_da3_node_read.exit439.if.end132_crit_edge, label %xfs_da3_node_read.exit439.done_crit_edge

xfs_da3_node_read.exit439.done_crit_edge:         ; preds = %xfs_da3_node_read.exit439
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

xfs_da3_node_read.exit439.if.end132_crit_edge:    ; preds = %xfs_da3_node_read.exit439
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.end132:                                        ; preds = %xfs_da3_node_read.exit439.if.end132_crit_edge, %lor.lhs.false.i435.if.end132_crit_edge
  %110 = ptrtoint ptr %par_buf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %par_buf, align 4
  %b_addr133 = getelementptr inbounds %struct.xfs_buf, ptr %111, i32 0, i32 16
  %112 = ptrtoint ptr %b_addr133 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %b_addr133, align 4
  %114 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %10, align 8
  %m_features.i.i440 = getelementptr inbounds %struct.xfs_mount, ptr %115, i32 0, i32 61
  %116 = ptrtoint ptr %m_features.i.i440 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %m_features.i.i440, align 8
  %and.i.i441 = and i64 %117, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i441)
  %tobool.i.not.i442 = icmp eq i64 %and.i.i441, 0
  br i1 %tobool.i.not.i442, label %if.else.i467, label %if.then.i454

if.then.i454:                                     ; preds = %if.end132
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %113, align 8
  %magic.i445 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %113, i32 0, i32 2
  %120 = ptrtoint ptr %magic.i445 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %magic.i445, align 8
  %__count.i447 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %113, i32 0, i32 1
  %122 = ptrtoint ptr %__count.i447 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %__count.i447, align 8
  %__level.i449 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %113, i32 0, i32 2
  %124 = ptrtoint ptr %__level.i449 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %__level.i449, align 2
  %__btree.i451 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %113, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %121)
  %cmp.i453 = icmp eq i16 %121, 16062
  br i1 %cmp.i453, label %if.then.i454.xfs_da3_node_hdr_from_disk.exit470_crit_edge, label %cond.false.i455, !prof !216

if.then.i454.xfs_da3_node_hdr_from_disk.exit470_crit_edge: ; preds = %if.then.i454
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit470

cond.false.i455:                                  ; preds = %if.then.i454
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit470

if.else.i467:                                     ; preds = %if.end132
  %126 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %113, align 4
  %magic26.i458 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %113, i32 0, i32 2
  %128 = ptrtoint ptr %magic26.i458 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %magic26.i458, align 4
  %__count29.i460 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %113, i32 0, i32 1
  %130 = ptrtoint ptr %__count29.i460 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %__count29.i460, align 4
  %__level32.i462 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %113, i32 0, i32 2
  %132 = ptrtoint ptr %__level32.i462 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %__level32.i462, align 2
  %__btree34.i464 = getelementptr inbounds %struct.xfs_da_intnode, ptr %113, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %129)
  %cmp39.i466 = icmp eq i16 %129, -322
  br i1 %cmp39.i466, label %if.else.i467.xfs_da3_node_hdr_from_disk.exit470_crit_edge, label %cond.false48.i468, !prof !216

if.else.i467.xfs_da3_node_hdr_from_disk.exit470_crit_edge: ; preds = %if.else.i467
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit470

cond.false48.i468:                                ; preds = %if.else.i467
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit470

xfs_da3_node_hdr_from_disk.exit470:               ; preds = %cond.false48.i468, %if.else.i467.xfs_da3_node_hdr_from_disk.exit470_crit_edge, %cond.false.i455, %if.then.i454.xfs_da3_node_hdr_from_disk.exit470_crit_edge
  %par_hdr.sroa.31518.0 = phi ptr [ %__btree34.i464, %if.else.i467.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %__btree34.i464, %cond.false48.i468 ], [ %__btree.i451, %if.then.i454.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %__btree.i451, %cond.false.i455 ]
  %par_hdr.sroa.24.0 = phi i16 [ %133, %if.else.i467.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %133, %cond.false48.i468 ], [ %125, %if.then.i454.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %125, %cond.false.i455 ]
  %par_hdr.sroa.16.0 = phi i16 [ %131, %if.else.i467.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %131, %cond.false48.i468 ], [ %123, %if.then.i454.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %123, %cond.false.i455 ]
  %par_hdr.sroa.0.0 = phi i32 [ %127, %if.else.i467.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %127, %cond.false48.i468 ], [ %119, %if.then.i454.xfs_da3_node_hdr_from_disk.exit470_crit_edge ], [ %119, %cond.false.i455 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0575)
  %cmp135 = icmp slt i32 %level.0575, 0
  %conv138 = zext i16 %par_hdr.sroa.24.0 to i32
  %add139 = add nuw nsw i32 %conv138, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0575, i32 %add139)
  %cmp140.not = icmp eq i32 %level.0575, %add139
  %or.cond = select i1 %cmp135, i1 true, i1 %cmp140.not
  br i1 %or.cond, label %if.end153, label %__here149, !prof !261

__here149:                                        ; preds = %xfs_da3_node_hdr_from_disk.exit470
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !262
  call void @xfs_corruption_error(ptr noundef nonnull @.str.60, i32 noundef 1, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2384, ptr noundef blockaddress(@xfs_da3_swap_lastblock, %__here149)) #12
  br label %done

if.end153:                                        ; preds = %xfs_da3_node_hdr_from_disk.exit470
  %conv159 = zext i16 %par_hdr.sroa.16.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %par_hdr.sroa.16.0)
  %cmp160568.not = icmp eq i16 %par_hdr.sroa.16.0, 0
  br i1 %cmp160568.not, label %if.end153.for.end_crit_edge, label %if.end153.land.rhs162_crit_edge

if.end153.land.rhs162_crit_edge:                  ; preds = %if.end153
  br label %land.rhs162

if.end153.for.end_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs162:                                      ; preds = %for.inc.land.rhs162_crit_edge, %if.end153.land.rhs162_crit_edge
  %entno.0569 = phi i32 [ %inc, %for.inc.land.rhs162_crit_edge ], [ 0, %if.end153.land.rhs162_crit_edge ]
  %arrayidx163 = getelementptr %struct.xfs_da_node_entry, ptr %par_hdr.sroa.31518.0, i32 %entno.0569
  %134 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %dead_hash.0)
  %cmp165 = icmp ult i32 %135, %dead_hash.0
  br i1 %cmp165, label %for.inc, label %land.rhs162.for.end_crit_edge

land.rhs162.for.end_crit_edge:                    ; preds = %land.rhs162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.rhs162
  %inc = add nuw nsw i32 %entno.0569, 1
  %exitcond.not = icmp eq i32 %inc, %conv159
  br i1 %exitcond.not, label %for.inc.__here179_crit_edge, label %for.inc.land.rhs162_crit_edge

for.inc.land.rhs162_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs162

for.inc.__here179_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here179

for.end:                                          ; preds = %land.rhs162.for.end_crit_edge, %if.end153.for.end_crit_edge
  %entno.0.lcssa = phi i32 [ 0, %if.end153.for.end_crit_edge ], [ %entno.0569, %land.rhs162.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %entno.0.lcssa, i32 %conv159)
  %cmp170 = icmp eq i32 %entno.0.lcssa, %conv159
  br i1 %cmp170, label %for.end.__here179_crit_edge, label %if.end183, !prof !238

for.end.__here179_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here179

__here179:                                        ; preds = %for.end.__here179_crit_edge, %for.inc.__here179_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !263
  call void @xfs_corruption_error(ptr noundef nonnull @.str.61, i32 noundef 1, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2395, ptr noundef blockaddress(@xfs_da3_swap_lastblock, %__here179)) #12
  br label %done

if.end183:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %dead_level.0, i32 %conv138)
  %cmp186 = icmp eq i32 %dead_level.0, %conv138
  br i1 %cmp186, label %if.end183.for.cond191_crit_edge, label %if.end189

if.end183.for.cond191_crit_edge:                  ; preds = %if.end183
  br label %for.cond191

if.end189:                                        ; preds = %if.end183
  %before = getelementptr %struct.xfs_da_node_entry, ptr %par_hdr.sroa.31518.0, i32 %entno.0.lcssa, i32 1
  %136 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %before, align 4
  call void @xfs_trans_brelse(ptr noundef %8, ptr noundef %111) #12
  %138 = ptrtoint ptr %par_buf to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %par_buf, align 4
  %call.i430 = call i32 @xfs_da_read_buf(ptr noundef %8, ptr noundef %10, i32 noundef %137, i32 noundef 0, ptr noundef nonnull %par_buf, i32 noundef %12, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  %tobool.not.i431 = icmp eq i32 %call.i430, 0
  br i1 %tobool.not.i431, label %if.end189.lor.lhs.false.i435_crit_edge, label %if.end189.done_crit_edge

if.end189.done_crit_edge:                         ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end189.lor.lhs.false.i435_crit_edge:           ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i435

for.cond191:                                      ; preds = %xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge, %if.end183.for.cond191_crit_edge
  %par_hdr.sroa.16.1 = phi i16 [ %par_hdr.sroa.16.2, %xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge ], [ %par_hdr.sroa.16.0, %if.end183.for.cond191_crit_edge ]
  %par_hdr.sroa.0.1 = phi i32 [ %par_hdr.sroa.0.2, %xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge ], [ %par_hdr.sroa.0.0, %if.end183.for.cond191_crit_edge ]
  %entno.1 = phi i32 [ 0, %xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge ], [ %entno.0.lcssa, %if.end183.for.cond191_crit_edge ]
  %btree.0 = phi ptr [ %par_hdr.sroa.31518.1, %xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge ], [ %par_hdr.sroa.31518.0, %if.end183.for.cond191_crit_edge ]
  %par_node.0 = phi ptr [ %149, %xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge ], [ %113, %if.end183.for.cond191_crit_edge ]
  %conv194 = zext i16 %par_hdr.sroa.16.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %entno.1, i32 %conv194)
  %cmp195578 = icmp ult i32 %entno.1, %conv194
  br i1 %cmp195578, label %for.cond191.land.rhs197_crit_edge, label %for.cond191.if.end212_crit_edge

for.cond191.if.end212_crit_edge:                  ; preds = %for.cond191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end212

for.cond191.land.rhs197_crit_edge:                ; preds = %for.cond191
  br label %land.rhs197

land.rhs197:                                      ; preds = %for.inc204.land.rhs197_crit_edge, %for.cond191.land.rhs197_crit_edge
  %entno.2579 = phi i32 [ %inc205, %for.inc204.land.rhs197_crit_edge ], [ %entno.1, %for.cond191.land.rhs197_crit_edge ]
  %before199 = getelementptr %struct.xfs_da_node_entry, ptr %btree.0, i32 %entno.2579, i32 1
  %139 = ptrtoint ptr %before199 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %before199, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %sub)
  %cmp200.not = icmp eq i32 %140, %sub
  br i1 %cmp200.not, label %for.end251, label %for.inc204

for.inc204:                                       ; preds = %land.rhs197
  %inc205 = add nuw nsw i32 %entno.2579, 1
  %exitcond600.not = icmp eq i32 %inc205, %conv194
  br i1 %exitcond600.not, label %for.inc204.if.end212_crit_edge, label %for.inc204.land.rhs197_crit_edge

for.inc204.land.rhs197_crit_edge:                 ; preds = %for.inc204
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs197

for.inc204.if.end212_crit_edge:                   ; preds = %for.inc204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end212

if.end212:                                        ; preds = %for.inc204.if.end212_crit_edge, %for.cond191.if.end212_crit_edge
  %141 = ptrtoint ptr %par_buf to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %par_buf, align 4
  call void @xfs_trans_brelse(ptr noundef %8, ptr noundef %142) #12
  %143 = ptrtoint ptr %par_buf to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %par_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %par_hdr.sroa.0.1)
  %cmp214 = icmp eq i32 %par_hdr.sroa.0.1, 0
  br i1 %cmp214, label %done.thread, label %if.end227, !prof !238

done.thread:                                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !264
  call void @xfs_corruption_error(ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2420, ptr noundef blockaddress(@xfs_da3_swap_lastblock, %done.thread)) #12
  br label %if.end268

if.end227:                                        ; preds = %if.end212
  %call.i471 = call i32 @xfs_da_read_buf(ptr noundef %8, ptr noundef %10, i32 noundef %par_hdr.sroa.0.1, i32 noundef 0, ptr noundef nonnull %par_buf, i32 noundef %12, ptr noundef nonnull @xfs_da3_node_buf_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i471)
  %tobool.not.i472 = icmp eq i32 %call.i471, 0
  br i1 %tobool.not.i472, label %lor.lhs.false.i476, label %if.end227.done_crit_edge

if.end227.done_crit_edge:                         ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false.i476:                               ; preds = %if.end227
  %144 = ptrtoint ptr %par_buf to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %par_buf, align 4
  %tobool1.not.i473 = icmp eq ptr %145, null
  %or.cond.i475 = or i1 %tobool3.not.i, %tobool1.not.i473
  br i1 %or.cond.i475, label %lor.lhs.false.i476.if.end231_crit_edge, label %xfs_da3_node_read.exit480

lor.lhs.false.i476.if.end231_crit_edge:           ; preds = %lor.lhs.false.i476
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231

xfs_da3_node_read.exit480:                        ; preds = %lor.lhs.false.i476
  %call4.i477 = call fastcc i32 @xfs_da3_node_set_type(ptr noundef nonnull %8, ptr noundef nonnull %145) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i477)
  %tobool229.not = icmp eq i32 %call4.i477, 0
  br i1 %tobool229.not, label %xfs_da3_node_read.exit480.if.end231_crit_edge, label %xfs_da3_node_read.exit480.done_crit_edge

xfs_da3_node_read.exit480.done_crit_edge:         ; preds = %xfs_da3_node_read.exit480
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

xfs_da3_node_read.exit480.if.end231_crit_edge:    ; preds = %xfs_da3_node_read.exit480
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231

if.end231:                                        ; preds = %xfs_da3_node_read.exit480.if.end231_crit_edge, %lor.lhs.false.i476.if.end231_crit_edge
  %146 = ptrtoint ptr %par_buf to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %par_buf, align 4
  %b_addr232 = getelementptr inbounds %struct.xfs_buf, ptr %147, i32 0, i32 16
  %148 = ptrtoint ptr %b_addr232 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %b_addr232, align 4
  %150 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %10, align 8
  %m_features.i.i481 = getelementptr inbounds %struct.xfs_mount, ptr %151, i32 0, i32 61
  %152 = ptrtoint ptr %m_features.i.i481 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %m_features.i.i481, align 8
  %and.i.i482 = and i64 %153, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i482)
  %tobool.i.not.i483 = icmp eq i64 %and.i.i482, 0
  br i1 %tobool.i.not.i483, label %if.else.i508, label %if.then.i495

if.then.i495:                                     ; preds = %if.end231
  %154 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %149, align 8
  %magic.i486 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %149, i32 0, i32 2
  %156 = ptrtoint ptr %magic.i486 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %magic.i486, align 8
  %__count.i488 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %149, i32 0, i32 1
  %158 = ptrtoint ptr %__count.i488 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %__count.i488, align 8
  %__level.i490 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %149, i32 0, i32 2
  %160 = ptrtoint ptr %__level.i490 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %__level.i490, align 2
  %__btree.i492 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %149, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %157)
  %cmp.i494 = icmp eq i16 %157, 16062
  br i1 %cmp.i494, label %if.then.i495.xfs_da3_node_hdr_from_disk.exit511_crit_edge, label %cond.false.i496, !prof !216

if.then.i495.xfs_da3_node_hdr_from_disk.exit511_crit_edge: ; preds = %if.then.i495
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit511

cond.false.i496:                                  ; preds = %if.then.i495
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit511

if.else.i508:                                     ; preds = %if.end231
  %162 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %149, align 4
  %magic26.i499 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %149, i32 0, i32 2
  %164 = ptrtoint ptr %magic26.i499 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %magic26.i499, align 4
  %__count29.i501 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %149, i32 0, i32 1
  %166 = ptrtoint ptr %__count29.i501 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %__count29.i501, align 4
  %__level32.i503 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %149, i32 0, i32 2
  %168 = ptrtoint ptr %__level32.i503 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %__level32.i503, align 2
  %__btree34.i505 = getelementptr inbounds %struct.xfs_da_intnode, ptr %149, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %165)
  %cmp39.i507 = icmp eq i16 %165, -322
  br i1 %cmp39.i507, label %if.else.i508.xfs_da3_node_hdr_from_disk.exit511_crit_edge, label %cond.false48.i509, !prof !216

if.else.i508.xfs_da3_node_hdr_from_disk.exit511_crit_edge: ; preds = %if.else.i508
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit511

cond.false48.i509:                                ; preds = %if.else.i508
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit511

xfs_da3_node_hdr_from_disk.exit511:               ; preds = %cond.false48.i509, %if.else.i508.xfs_da3_node_hdr_from_disk.exit511_crit_edge, %cond.false.i496, %if.then.i495.xfs_da3_node_hdr_from_disk.exit511_crit_edge
  %par_hdr.sroa.31518.1 = phi ptr [ %__btree34.i505, %if.else.i508.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %__btree34.i505, %cond.false48.i509 ], [ %__btree.i492, %if.then.i495.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %__btree.i492, %cond.false.i496 ]
  %par_hdr.sroa.24.1 = phi i16 [ %169, %if.else.i508.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %169, %cond.false48.i509 ], [ %161, %if.then.i495.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %161, %cond.false.i496 ]
  %par_hdr.sroa.16.2 = phi i16 [ %167, %if.else.i508.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %167, %cond.false48.i509 ], [ %159, %if.then.i495.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %159, %cond.false.i496 ]
  %par_hdr.sroa.0.2 = phi i32 [ %163, %if.else.i508.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %163, %cond.false48.i509 ], [ %155, %if.then.i495.xfs_da3_node_hdr_from_disk.exit511_crit_edge ], [ %155, %cond.false.i496 ]
  %cmp236.not = icmp eq i16 %par_hdr.sroa.24.1, %par_hdr.sroa.24.0
  br i1 %cmp236.not, label %xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge, label %__here245, !prof !216

xfs_da3_node_hdr_from_disk.exit511.for.cond191_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit511
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond191

__here245:                                        ; preds = %xfs_da3_node_hdr_from_disk.exit511
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !265
  call void @xfs_corruption_error(ptr noundef nonnull @.str.63, i32 noundef 1, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2429, ptr noundef blockaddress(@xfs_da3_swap_lastblock, %__here245)) #12
  br label %done

for.end251:                                       ; preds = %land.rhs197
  call void @__sanitizer_cov_trace_pc() #14
  %170 = ptrtoint ptr %before199 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %6, ptr %before199, align 4
  %171 = ptrtoint ptr %par_buf to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %par_buf, align 4
  %sub.ptr.lhs.cast256 = ptrtoint ptr %before199 to i32
  %sub.ptr.rhs.cast257 = ptrtoint ptr %par_node.0 to i32
  %sub.ptr.sub258 = sub i32 %sub.ptr.lhs.cast256, %sub.ptr.rhs.cast257
  %sub265 = add i32 %sub.ptr.sub258, 3
  call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %172, i32 noundef %sub.ptr.sub258, i32 noundef %sub265) #12
  %173 = ptrtoint ptr %dead_blknop to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %sub, ptr %dead_blknop, align 4
  %174 = ptrtoint ptr %last_buf to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %last_buf, align 4
  %176 = ptrtoint ptr %dead_bufp to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %175, ptr %dead_bufp, align 4
  br label %cleanup

done:                                             ; preds = %__here245, %xfs_da3_node_read.exit480.done_crit_edge, %if.end227.done_crit_edge, %if.end189.done_crit_edge, %__here179, %__here149, %xfs_da3_node_read.exit439.done_crit_edge, %if.end127.done_crit_edge, %__here111, %xfs_da3_node_read.exit429.done_crit_edge, %if.then87.done_crit_edge, %__here72, %xfs_da3_node_read.exit419.done_crit_edge, %if.then51.done_crit_edge
  %error.0.ph = phi i32 [ -117, %__here245 ], [ -117, %__here179 ], [ -117, %__here149 ], [ -117, %__here111 ], [ %call4.i426, %xfs_da3_node_read.exit429.done_crit_edge ], [ -117, %__here72 ], [ %call4.i416, %xfs_da3_node_read.exit419.done_crit_edge ], [ %call.i410, %if.then51.done_crit_edge ], [ %call.i420, %if.then87.done_crit_edge ], [ %call.i430573, %if.end127.done_crit_edge ], [ %call.i471, %if.end227.done_crit_edge ], [ %call4.i477, %xfs_da3_node_read.exit480.done_crit_edge ], [ %call4.i436, %xfs_da3_node_read.exit439.done_crit_edge ], [ %call.i430, %if.end189.done_crit_edge ]
  %177 = ptrtoint ptr %par_buf to i32
  call void @__asan_load4_noabort(i32 %177)
  %.pr = load ptr, ptr %par_buf, align 4
  %tobool266.not = icmp eq ptr %.pr, null
  br i1 %tobool266.not, label %done.if.end268_crit_edge, label %if.then267

done.if.end268_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end268

if.then267:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_trans_brelse(ptr noundef %8, ptr noundef nonnull %.pr) #12
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %done.if.end268_crit_edge, %done.thread
  %error.0547 = phi i32 [ -117, %done.thread ], [ %error.0.ph, %if.then267 ], [ %error.0.ph, %done.if.end268_crit_edge ]
  %178 = ptrtoint ptr %sib_buf to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sib_buf, align 4
  %tobool269.not = icmp eq ptr %179, null
  br i1 %tobool269.not, label %if.end268.if.end271_crit_edge, label %if.then270

if.end268.if.end271_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271

if.then270:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_trans_brelse(ptr noundef %8, ptr noundef nonnull %179) #12
  br label %if.end271

if.end271:                                        ; preds = %if.then270, %if.end268.if.end271_crit_edge
  call void @xfs_trans_brelse(ptr noundef %8, ptr noundef %31) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end271, %for.end251, %xfs_da3_node_read.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %__here, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ %error.0547, %if.end271 ], [ 0, %for.end251 ], [ %call, %cond.end.cleanup_crit_edge ], [ %call4.i, %xfs_da3_node_read.exit.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastoff) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %par_buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sib_buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_binval(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dabuf_map(ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, i32 noundef %whichfork, ptr nocapture noundef %mapp, ptr nocapture noundef writeonly %nmaps) #0 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  %nirecs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp.i = icmp eq i32 %whichfork, 0
  %m_dir_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %m_attr_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %.pn.in.i = select i1 %cmp.i, ptr %m_dir_geo.i, ptr %m_attr_geo.i
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %retval.0.in.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %.pn.i, i32 0, i32 1
  %3 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #12
  %4 = call ptr @memset(ptr %irec, i32 255, i32 32)
  %5 = ptrtoint ptr %mapp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapp, align 4
  %conv = zext i32 %bno to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nirecs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl i32 %retval.0.i, 5
  %call.i = tail call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 20) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irecs.0 = phi ptr [ %call.i, %if.then ], [ %irec, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %nirecs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %nirecs, align 4
  %conv4 = sext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp.i156 = icmp eq i32 %whichfork, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp1.i = icmp eq i32 %whichfork, 2
  %cond.i = select i1 %cmp1.i, i32 512, i32 0
  %cond2.i = select i1 %cmp.i156, i32 4, i32 %cond.i
  %call6 = call i32 @xfs_bmapi_read(ptr noundef %dp, i64 noundef %conv, i64 noundef %conv4, ptr noundef %irecs.0, ptr noundef nonnull %nirecs, i32 noundef %cond2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_free_irecs_crit_edge

if.end.out_free_irecs_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irecs

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %nirecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nirecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp9 = icmp sgt i32 %9, 1
  br i1 %cmp9, label %if.then11, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then11:                                        ; preds = %if.end8
  %mul12 = shl i32 %9, 4
  %call.i157 = call ptr @kmem_alloc(i32 noundef %mul12, i32 noundef 20) #12
  %tobool14.not = icmp eq ptr %call.i157, null
  br i1 %tobool14.not, label %if.then11.out_free_irecs_crit_edge, label %if.end16

if.then11.out_free_irecs_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irecs

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %mapp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i157, ptr %mapp, align 4
  %11 = ptrtoint ptr %nirecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %nirecs, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end8.if.end17_crit_edge
  %12 = phi i32 [ %.pr, %if.end16 ], [ %9, %if.end8.if.end17_crit_edge ]
  %map.0 = phi ptr [ %call.i157, %if.end16 ], [ %6, %if.end8.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18160 = icmp sgt i32 %12, 0
  br i1 %cmp18160, label %for.body.lr.ph, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end32.for.body_crit_edge ]
  %off.0161 = phi i64 [ %conv, %for.body.lr.ph ], [ %add62, %if.end32.for.body_crit_edge ]
  %br_startblock = getelementptr %struct.xfs_bmbt_irec, ptr %irecs.0, i32 %i.0162, i32 1
  %13 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %14)
  %switch = icmp ugt i64 %14, -3
  br i1 %switch, label %for.body.invalid_mapping_crit_edge, label %if.end27

for.body.invalid_mapping_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %invalid_mapping

if.end27:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.xfs_bmbt_irec, ptr %irecs.0, i32 %i.0162
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %off.0161, i64 %16)
  %cmp29.not = icmp eq i64 %off.0161, %16
  br i1 %cmp29.not, label %if.end32, label %if.end27.invalid_mapping_crit_edge

if.end27.invalid_mapping_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %invalid_mapping

if.end32:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_agblklog, align 4
  %conv35 = zext i8 %18 to i32
  %sh_prom = zext i8 %18 to i64
  %shr = lshr i64 %14, %sh_prom
  %conv37 = and i64 %shr, 4294967295
  %19 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_agblocks, align 4
  %conv39 = zext i32 %20 to i64
  %mul40 = mul nuw i64 %conv37, %conv39
  %notmask.i = shl nsw i32 -1, %conv35
  %sub.i = xor i32 %notmask.i, -1
  %21 = trunc i64 %14 to i32
  %conv48 = and i32 %sub.i, %21
  %conv49 = zext i32 %conv48 to i64
  %add = add nuw i64 %mul40, %conv49
  %22 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom51 = zext i8 %23 to i64
  %shl = shl i64 %add, %sh_prom51
  %arrayidx52 = getelementptr %struct.xfs_buf_map, ptr %map.0, i32 %i.0162
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl, ptr %arrayidx52, align 8
  %br_blockcount = getelementptr %struct.xfs_bmbt_irec, ptr %irecs.0, i32 %i.0162, i32 2
  %25 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %br_blockcount, align 8
  %27 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom56 = zext i8 %27 to i64
  %shl57 = shl i64 %26, %sh_prom56
  %conv58 = trunc i64 %shl57 to i32
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %map.0, i32 %i.0162, i32 1
  %28 = ptrtoint ptr %bm_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv58, ptr %bm_len, align 8
  %29 = load i64, ptr %br_blockcount, align 8
  %add62 = add i64 %29, %off.0161
  %inc = add nuw nsw i32 %i.0162, 1
  %30 = ptrtoint ptr %nirecs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nirecs, align 4
  %cmp18 = icmp slt i32 %inc, %31
  br i1 %cmp18, label %if.end32.for.body_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %if.end17.for.end_crit_edge
  %off.0.lcssa = phi i64 [ %conv, %if.end17.for.end_crit_edge ], [ %add62, %if.end32.for.end_crit_edge ]
  %.lcssa = phi i32 [ %12, %if.end17.for.end_crit_edge ], [ %31, %if.end32.for.end_crit_edge ]
  %add63 = add i32 %retval.0.i, %bno
  %conv64 = zext i32 %add63 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %off.0.lcssa, i64 %conv64)
  %cmp65.not = icmp eq i64 %off.0.lcssa, %conv64
  br i1 %cmp65.not, label %for.end.out_free_irecs.sink.split_crit_edge, label %for.end.invalid_mapping_crit_edge

for.end.invalid_mapping_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %invalid_mapping

for.end.out_free_irecs.sink.split_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irecs.sink.split

out_free_irecs.sink.split:                        ; preds = %invalid_mapping.out_free_irecs.sink.split_crit_edge, %for.end.out_free_irecs.sink.split_crit_edge
  %.sink = phi i32 [ 0, %invalid_mapping.out_free_irecs.sink.split_crit_edge ], [ %.lcssa, %for.end.out_free_irecs.sink.split_crit_edge ]
  %32 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %nmaps, align 4
  br label %out_free_irecs

out_free_irecs:                                   ; preds = %for.body85.out_free_irecs_crit_edge, %if.then81.out_free_irecs_crit_edge, %__here.out_free_irecs_crit_edge, %out_free_irecs.sink.split, %if.then11.out_free_irecs_crit_edge, %if.end.out_free_irecs_crit_edge
  %error.0 = phi i32 [ %call6, %if.end.out_free_irecs_crit_edge ], [ -117, %__here.out_free_irecs_crit_edge ], [ -12, %if.then11.out_free_irecs_crit_edge ], [ -117, %if.then81.out_free_irecs_crit_edge ], [ 0, %out_free_irecs.sink.split ], [ -117, %for.body85.out_free_irecs_crit_edge ]
  %cmp69.not = icmp eq ptr %irecs.0, %irec
  br i1 %cmp69.not, label %out_free_irecs.if.end72_crit_edge, label %if.then71

out_free_irecs.if.end72_crit_edge:                ; preds = %out_free_irecs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then71:                                        ; preds = %out_free_irecs
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef %irecs.0) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %out_free_irecs.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nirecs) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #12
  ret i32 %error.0

invalid_mapping:                                  ; preds = %for.end.invalid_mapping_crit_edge, %if.end27.invalid_mapping_crit_edge, %for.body.invalid_mapping_crit_edge
  %and73 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %__here, label %invalid_mapping.out_free_irecs.sink.split_crit_edge, !prof !238

invalid_mapping.out_free_irecs.sink.split_crit_edge: ; preds = %invalid_mapping
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irecs.sink.split

__here:                                           ; preds = %invalid_mapping
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !266
  call void @xfs_corruption_error(ptr noundef nonnull @.str.64, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 2557, ptr noundef blockaddress(@xfs_dabuf_map, %__here)) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %33 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp79 = icmp sgt i32 %33, 0
  br i1 %cmp79, label %if.then81, label %__here.out_free_irecs_crit_edge

__here.out_free_irecs_crit_edge:                  ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irecs

if.then81:                                        ; preds = %__here
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.xfs_dabuf_map, i32 noundef %bno, i64 noundef %35) #12
  %36 = ptrtoint ptr %nirecs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nirecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp83164 = icmp sgt i32 %37, 0
  br i1 %cmp83164, label %if.then81.for.body85_crit_edge, label %if.then81.out_free_irecs_crit_edge

if.then81.out_free_irecs_crit_edge:               ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irecs

if.then81.for.body85_crit_edge:                   ; preds = %if.then81
  br label %for.body85

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %if.then81.for.body85_crit_edge
  %i.1165 = phi i32 [ %inc94, %for.body85.for.body85_crit_edge ], [ 0, %if.then81.for.body85_crit_edge ]
  %arrayidx86 = getelementptr %struct.xfs_bmbt_irec, ptr %irecs.0, i32 %i.1165
  %38 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx86, align 8
  %br_startblock89 = getelementptr %struct.xfs_bmbt_irec, ptr %irecs.0, i32 %i.1165, i32 1
  %40 = ptrtoint ptr %br_startblock89 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %br_startblock89, align 8
  %br_blockcount91 = getelementptr %struct.xfs_bmbt_irec, ptr %irecs.0, i32 %i.1165, i32 2
  %42 = ptrtoint ptr %br_blockcount91 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %br_blockcount91, align 8
  %br_state = getelementptr %struct.xfs_bmbt_irec, ptr %irecs.0, i32 %i.1165, i32 3
  %44 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %br_state, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %i.1165, i64 noundef %39, i64 noundef %41, i64 noundef %43, i32 noundef %45) #12
  %inc94 = add nuw nsw i32 %i.1165, 1
  %46 = ptrtoint ptr %nirecs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nirecs, align 4
  %cmp83 = icmp slt i32 %inc94, %47
  br i1 %cmp83, label %for.body85.for.body85_crit_edge, label %for.body85.out_free_irecs_crit_edge

for.body85.out_free_irecs_crit_edge:              ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irecs

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da_reada_buf(ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, i32 noundef %whichfork, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.xfs_buf_map, align 8
  %mapp = alloca ptr, align 4
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #12
  %0 = call ptr @memset(ptr %map, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapp) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #12
  %1 = ptrtoint ptr %mapp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %map, ptr %mapp, align 4
  %2 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nmap, align 4
  %call = call fastcc i32 @xfs_dabuf_map(ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, i32 noundef %whichfork, ptr noundef nonnull %mapp, ptr noundef nonnull %nmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_free_crit_edge

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.out_free_crit_edge, label %if.end

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp, align 8
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_ddev_targp, align 8
  %9 = ptrtoint ptr %mapp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapp, align 4
  call void @xfs_buf_readahead_map(ptr noundef %8, ptr noundef %10, i32 noundef %4, ptr noundef %ops) #12
  br label %out_free

out_free:                                         ; preds = %if.end, %lor.lhs.false.out_free_crit_edge, %entry.out_free_crit_edge
  %11 = ptrtoint ptr %mapp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapp, align 4
  %cmp.not = icmp eq ptr %12, %map
  br i1 %cmp.not, label %out_free.if.end3_crit_edge, label %if.then2

out_free.if.end3_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef %12) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %out_free.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapp) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_readahead_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_da3_node_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %3, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %magic26.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %__level.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %7)
  %cmp.i = icmp eq i16 %7, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %__level32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %13)
  %cmp39.i = icmp eq i16 %13, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %ichdr.sroa.12.0 = phi i16 [ %17, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %17, %cond.false48.i ], [ %11, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %11, %cond.false.i ]
  %ichdr.sroa.9.0 = phi i16 [ %15, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %15, %cond.false48.i ], [ %9, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %9, %cond.false.i ]
  %18 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr, align 4
  %call = tail call ptr @xfs_da3_blkinfo_verify(ptr noundef %bp, ptr noundef %19)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %xfs_da3_node_hdr_from_disk.exit.cleanup_crit_edge

xfs_da3_node_hdr_from_disk.exit.cleanup_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ichdr.sroa.12.0)
  %cmp = icmp eq i16 %ichdr.sroa.12.0, 0
  br i1 %cmp, label %__here, label %if.end4

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !267
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %ichdr.sroa.12.0)
  %cmp7 = icmp ugt i16 %ichdr.sroa.12.0, 5
  br i1 %cmp7, label %__here10, label %if.end12

__here10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !268
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %conv13 = zext i16 %ichdr.sroa.9.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ichdr.sroa.9.0)
  %cmp14 = icmp eq i16 %ichdr.sroa.9.0, 0
  br i1 %cmp14, label %__here17, label %if.end19

__here17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m_dir_geo, align 4
  %node_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %node_ents to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_ents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv13)
  %cmp22 = icmp ult i32 %23, %conv13
  br i1 %cmp22, label %land.lhs.true, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end19
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_attr_geo, align 32
  %node_ents26 = getelementptr inbounds %struct.xfs_da_geometry, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %node_ents26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node_ents26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv13)
  %cmp27 = icmp ult i32 %27, %conv13
  br i1 %cmp27, label %__here30, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__here30:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !270
  br label %cleanup

cleanup:                                          ; preds = %__here30, %land.lhs.true.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %__here17, %__here10, %__here, %xfs_da3_node_hdr_from_disk.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ blockaddress(@xfs_da3_node_verify, %__here), %__here ], [ blockaddress(@xfs_da3_node_verify, %__here10), %__here10 ], [ blockaddress(@xfs_da3_node_verify, %__here17), %__here17 ], [ blockaddress(@xfs_da3_node_verify, %__here30), %__here30 ], [ %call, %xfs_da3_node_hdr_from_disk.exit.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_node_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_split(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_split_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_split_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_root_split(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_root_split, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_root_split, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !271
  %call42 = tail call i32 @__traceiter_xfs_da_root_split(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !272
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_root_split, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_root_split, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_root_split.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_root_split.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2079, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local void @xfs_dir2_leaf_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_copy_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_root_split(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_node_split(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_split, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_node_split, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !273
  %call42 = tail call i32 @__traceiter_xfs_da_node_split(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !274
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_split, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_split, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_node_split.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_node_split.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2083, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_da3_node_rebalance(ptr nocapture noundef readonly %state, ptr nocapture noundef %blk1, ptr nocapture noundef %blk2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_da_node_rebalance(ptr noundef %1)
  %4 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blk1, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %8 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blk2, align 8
  %b_addr4 = getelementptr inbounds %struct.xfs_buf, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr4, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 8
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %back.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %magic.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %__level.i, align 2
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %21)
  %cmp.i = icmp eq i16 %21, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %7, align 4
  %back22.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %back22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %back22.i, align 4
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %32 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 2
  %34 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %__level32.i, align 2
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %31)
  %cmp39.i = icmp eq i16 %31, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr1.sroa.54473.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %nodehdr1.sroa.46.0 = phi i16 [ %35, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %35, %cond.false48.i ], [ %25, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %25, %cond.false.i ]
  %nodehdr1.sroa.28.0 = phi i16 [ %33, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %33, %cond.false48.i ], [ %23, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %23, %cond.false.i ]
  %nodehdr1.sroa.19.0 = phi i16 [ -322, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %31, %cond.false48.i ], [ 16062, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %21, %cond.false.i ]
  %nodehdr1.sroa.11.0 = phi i32 [ %29, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %29, %cond.false48.i ], [ %19, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %19, %cond.false.i ]
  %nodehdr1.sroa.0.0 = phi i32 [ %27, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %27, %cond.false48.i ], [ %17, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %17, %cond.false.i ]
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %m_features.i.i254 = getelementptr inbounds %struct.xfs_mount, ptr %37, i32 0, i32 61
  %38 = ptrtoint ptr %m_features.i.i254 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_features.i.i254, align 8
  %and.i.i255 = and i64 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i255)
  %tobool.i.not.i256 = icmp eq i64 %and.i.i255, 0
  br i1 %tobool.i.not.i256, label %if.else.i281, label %if.then.i268

if.then.i268:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %11, align 8
  %back.i257 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %42 = ptrtoint ptr %back.i257 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %back.i257, align 4
  %magic.i259 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %44 = ptrtoint ptr %magic.i259 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %magic.i259, align 8
  %__count.i261 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 1
  %46 = ptrtoint ptr %__count.i261 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %__count.i261, align 8
  %__level.i263 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 2
  %48 = ptrtoint ptr %__level.i263 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %__level.i263, align 2
  %__btree.i265 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %45)
  %cmp.i267 = icmp eq i16 %45, 16062
  br i1 %cmp.i267, label %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge, label %cond.false.i269, !prof !216

if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge: ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit283

cond.false.i269:                                  ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit283

if.else.i281:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %11, align 4
  %back22.i270 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %52 = ptrtoint ptr %back22.i270 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %back22.i270, align 4
  %magic26.i272 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %54 = ptrtoint ptr %magic26.i272 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %magic26.i272, align 4
  %__count29.i274 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 1
  %56 = ptrtoint ptr %__count29.i274 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %__count29.i274, align 4
  %__level32.i276 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 2
  %58 = ptrtoint ptr %__level32.i276 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %__level32.i276, align 2
  %__btree34.i278 = getelementptr inbounds %struct.xfs_da_intnode, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %55)
  %cmp39.i280 = icmp eq i16 %55, -322
  br i1 %cmp39.i280, label %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge, label %cond.false48.i282, !prof !216

if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge: ; preds = %if.else.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit283

cond.false48.i282:                                ; preds = %if.else.i281
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit283

xfs_da3_node_hdr_from_disk.exit283:               ; preds = %cond.false48.i282, %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge, %cond.false.i269, %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge
  %nodehdr2.sroa.53456.0 = phi ptr [ %__btree34.i278, %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %__btree34.i278, %cond.false48.i282 ], [ %__btree.i265, %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %__btree.i265, %cond.false.i269 ]
  %nodehdr2.sroa.45.0 = phi i16 [ %59, %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %59, %cond.false48.i282 ], [ %49, %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %49, %cond.false.i269 ]
  %nodehdr2.sroa.28.0 = phi i16 [ %57, %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %57, %cond.false48.i282 ], [ %47, %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %47, %cond.false.i269 ]
  %nodehdr2.sroa.19.0 = phi i16 [ -322, %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %55, %cond.false48.i282 ], [ 16062, %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %45, %cond.false.i269 ]
  %nodehdr2.sroa.11.0 = phi i32 [ %53, %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %53, %cond.false48.i282 ], [ %43, %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %43, %cond.false.i269 ]
  %nodehdr2.sroa.0.0 = phi i32 [ %51, %if.else.i281.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %51, %cond.false48.i282 ], [ %41, %if.then.i268.xfs_da3_node_hdr_from_disk.exit283_crit_edge ], [ %41, %cond.false.i269 ]
  %conv = zext i16 %nodehdr1.sroa.28.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nodehdr1.sroa.28.0)
  %cmp.not = icmp eq i16 %nodehdr1.sroa.28.0, 0
  br i1 %cmp.not, label %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge, label %land.lhs.true

xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit283
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %xfs_da3_node_hdr_from_disk.exit283
  %conv10 = zext i16 %nodehdr2.sroa.28.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nodehdr2.sroa.28.0)
  %cmp11.not = icmp eq i16 %nodehdr2.sroa.28.0, 0
  br i1 %cmp11.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true13

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %60 = ptrtoint ptr %nodehdr2.sroa.53456.0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nodehdr2.sroa.53456.0, align 4
  %62 = ptrtoint ptr %nodehdr1.sroa.54473.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nodehdr1.sroa.54473.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp16 = icmp ult i32 %61, %63
  br i1 %cmp16, label %land.lhs.true13.do.body_crit_edge, label %lor.lhs.false

land.lhs.true13.do.body_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %sub = add nsw i32 %conv10, -1
  %arrayidx20 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr2.sroa.53456.0, i32 %sub
  %64 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx20, align 4
  %sub24 = add nsw i32 %conv, -1
  %arrayidx25 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr1.sroa.54473.0, i32 %sub24
  %66 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp27 = icmp ult i32 %65, %67
  br i1 %cmp27, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true13.do.body_crit_edge
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 8
  %m_features.i.i284 = getelementptr inbounds %struct.xfs_mount, ptr %69, i32 0, i32 61
  %70 = ptrtoint ptr %m_features.i.i284 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %m_features.i.i284, align 8
  %and.i.i285 = and i64 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i285)
  %tobool.i.not.i286 = icmp eq i64 %and.i.i285, 0
  br i1 %tobool.i.not.i286, label %if.else.i311, label %if.then.i298

if.then.i298:                                     ; preds = %do.body
  %72 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %11, align 8
  %back.i287 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %74 = ptrtoint ptr %back.i287 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %back.i287, align 4
  %magic.i289 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %76 = ptrtoint ptr %magic.i289 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %magic.i289, align 8
  %__count.i291 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 1
  %78 = ptrtoint ptr %__count.i291 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %__count.i291, align 8
  %__level.i293 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %11, i32 0, i32 2
  %80 = ptrtoint ptr %__level.i293 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %__level.i293, align 2
  %__btree.i295 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %77)
  %cmp.i297 = icmp eq i16 %77, 16062
  br i1 %cmp.i297, label %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge, label %cond.false.i299, !prof !216

if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge: ; preds = %if.then.i298
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit313

cond.false.i299:                                  ; preds = %if.then.i298
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit313

if.else.i311:                                     ; preds = %do.body
  %82 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %11, align 4
  %back22.i300 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 1
  %84 = ptrtoint ptr %back22.i300 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %back22.i300, align 4
  %magic26.i302 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %86 = ptrtoint ptr %magic26.i302 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %magic26.i302, align 4
  %__count29.i304 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 1
  %88 = ptrtoint ptr %__count29.i304 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %__count29.i304, align 4
  %__level32.i306 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %11, i32 0, i32 2
  %90 = ptrtoint ptr %__level32.i306 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %__level32.i306, align 2
  %__btree34.i308 = getelementptr inbounds %struct.xfs_da_intnode, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %87)
  %cmp39.i310 = icmp eq i16 %87, -322
  br i1 %cmp39.i310, label %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge, label %cond.false48.i312, !prof !216

if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge: ; preds = %if.else.i311
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit313

cond.false48.i312:                                ; preds = %if.else.i311
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit313

xfs_da3_node_hdr_from_disk.exit313:               ; preds = %cond.false48.i312, %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge, %cond.false.i299, %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge
  %nodehdr1.sroa.54473.1 = phi ptr [ %__btree34.i308, %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %__btree34.i308, %cond.false48.i312 ], [ %__btree.i295, %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %__btree.i295, %cond.false.i299 ]
  %nodehdr1.sroa.46.1 = phi i16 [ %91, %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %91, %cond.false48.i312 ], [ %81, %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %81, %cond.false.i299 ]
  %nodehdr1.sroa.28.1 = phi i16 [ %89, %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %89, %cond.false48.i312 ], [ %79, %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %79, %cond.false.i299 ]
  %nodehdr1.sroa.19.1 = phi i16 [ -322, %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %87, %cond.false48.i312 ], [ 16062, %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %77, %cond.false.i299 ]
  %nodehdr1.sroa.11.1 = phi i32 [ %85, %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %85, %cond.false48.i312 ], [ %75, %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %75, %cond.false.i299 ]
  %nodehdr1.sroa.0.1 = phi i32 [ %83, %if.else.i311.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %83, %cond.false48.i312 ], [ %73, %if.then.i298.xfs_da3_node_hdr_from_disk.exit313_crit_edge ], [ %73, %cond.false.i299 ]
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %3, align 8
  %m_features.i.i314 = getelementptr inbounds %struct.xfs_mount, ptr %93, i32 0, i32 61
  %94 = ptrtoint ptr %m_features.i.i314 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %m_features.i.i314, align 8
  %and.i.i315 = and i64 %95, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i315)
  %tobool.i.not.i316 = icmp eq i64 %and.i.i315, 0
  br i1 %tobool.i.not.i316, label %if.else.i341, label %if.then.i328

if.then.i328:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit313
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %7, align 8
  %back.i317 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %98 = ptrtoint ptr %back.i317 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %back.i317, align 4
  %magic.i319 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %100 = ptrtoint ptr %magic.i319 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %magic.i319, align 8
  %__count.i321 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %102 = ptrtoint ptr %__count.i321 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %__count.i321, align 8
  %__level.i323 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 2
  %104 = ptrtoint ptr %__level.i323 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %__level.i323, align 2
  %__btree.i325 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %101)
  %cmp.i327 = icmp eq i16 %101, 16062
  br i1 %cmp.i327, label %if.then.i328.if.end_crit_edge, label %cond.false.i329, !prof !216

if.then.i328.if.end_crit_edge:                    ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.false.i329:                                  ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %if.end

if.else.i341:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit313
  %106 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %7, align 4
  %back22.i330 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %108 = ptrtoint ptr %back22.i330 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %back22.i330, align 4
  %magic26.i332 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %110 = ptrtoint ptr %magic26.i332 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %magic26.i332, align 4
  %__count29.i334 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %112 = ptrtoint ptr %__count29.i334 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %__count29.i334, align 4
  %__level32.i336 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 2
  %114 = ptrtoint ptr %__level32.i336 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %__level32.i336, align 2
  %__btree34.i338 = getelementptr inbounds %struct.xfs_da_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %111)
  %cmp39.i340 = icmp eq i16 %111, -322
  br i1 %cmp39.i340, label %if.else.i341.if.end_crit_edge, label %cond.false48.i342, !prof !216

if.else.i341.if.end_crit_edge:                    ; preds = %if.else.i341
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.false48.i342:                                ; preds = %if.else.i341
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %if.end

if.end:                                           ; preds = %cond.false48.i342, %if.else.i341.if.end_crit_edge, %cond.false.i329, %if.then.i328.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge
  %nodehdr1.sroa.46.2 = phi i16 [ %nodehdr1.sroa.46.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr1.sroa.46.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr1.sroa.46.0, %lor.lhs.false.if.end_crit_edge ], [ %nodehdr1.sroa.46.1, %if.then.i328.if.end_crit_edge ], [ %nodehdr1.sroa.46.1, %cond.false.i329 ], [ %nodehdr1.sroa.46.1, %if.else.i341.if.end_crit_edge ], [ %nodehdr1.sroa.46.1, %cond.false48.i342 ]
  %nodehdr1.sroa.28.2 = phi i16 [ 0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr1.sroa.28.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr1.sroa.28.0, %lor.lhs.false.if.end_crit_edge ], [ %nodehdr1.sroa.28.1, %if.then.i328.if.end_crit_edge ], [ %nodehdr1.sroa.28.1, %cond.false.i329 ], [ %nodehdr1.sroa.28.1, %if.else.i341.if.end_crit_edge ], [ %nodehdr1.sroa.28.1, %cond.false48.i342 ]
  %nodehdr1.sroa.19.2 = phi i16 [ %nodehdr1.sroa.19.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr1.sroa.19.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr1.sroa.19.0, %lor.lhs.false.if.end_crit_edge ], [ %nodehdr1.sroa.19.1, %if.then.i328.if.end_crit_edge ], [ %nodehdr1.sroa.19.1, %cond.false.i329 ], [ %nodehdr1.sroa.19.1, %if.else.i341.if.end_crit_edge ], [ %nodehdr1.sroa.19.1, %cond.false48.i342 ]
  %nodehdr1.sroa.11.2 = phi i32 [ %nodehdr1.sroa.11.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr1.sroa.11.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr1.sroa.11.0, %lor.lhs.false.if.end_crit_edge ], [ %nodehdr1.sroa.11.1, %if.then.i328.if.end_crit_edge ], [ %nodehdr1.sroa.11.1, %cond.false.i329 ], [ %nodehdr1.sroa.11.1, %if.else.i341.if.end_crit_edge ], [ %nodehdr1.sroa.11.1, %cond.false48.i342 ]
  %nodehdr1.sroa.0.2 = phi i32 [ %nodehdr1.sroa.0.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr1.sroa.0.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr1.sroa.0.0, %lor.lhs.false.if.end_crit_edge ], [ %nodehdr1.sroa.0.1, %if.then.i328.if.end_crit_edge ], [ %nodehdr1.sroa.0.1, %cond.false.i329 ], [ %nodehdr1.sroa.0.1, %if.else.i341.if.end_crit_edge ], [ %nodehdr1.sroa.0.1, %cond.false48.i342 ]
  %nodehdr2.sroa.45.2 = phi i16 [ %nodehdr2.sroa.45.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr2.sroa.45.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr2.sroa.45.0, %lor.lhs.false.if.end_crit_edge ], [ %105, %if.then.i328.if.end_crit_edge ], [ %105, %cond.false.i329 ], [ %115, %if.else.i341.if.end_crit_edge ], [ %115, %cond.false48.i342 ]
  %nodehdr2.sroa.28.2 = phi i16 [ %nodehdr2.sroa.28.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr2.sroa.28.0, %lor.lhs.false.if.end_crit_edge ], [ %103, %if.then.i328.if.end_crit_edge ], [ %103, %cond.false.i329 ], [ %113, %if.else.i341.if.end_crit_edge ], [ %113, %cond.false48.i342 ]
  %nodehdr2.sroa.19.2 = phi i16 [ %nodehdr2.sroa.19.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr2.sroa.19.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr2.sroa.19.0, %lor.lhs.false.if.end_crit_edge ], [ 16062, %if.then.i328.if.end_crit_edge ], [ %101, %cond.false.i329 ], [ -322, %if.else.i341.if.end_crit_edge ], [ %111, %cond.false48.i342 ]
  %nodehdr2.sroa.11.2 = phi i32 [ %nodehdr2.sroa.11.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr2.sroa.11.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr2.sroa.11.0, %lor.lhs.false.if.end_crit_edge ], [ %99, %if.then.i328.if.end_crit_edge ], [ %99, %cond.false.i329 ], [ %109, %if.else.i341.if.end_crit_edge ], [ %109, %cond.false48.i342 ]
  %nodehdr2.sroa.0.2 = phi i32 [ %nodehdr2.sroa.0.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr2.sroa.0.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr2.sroa.0.0, %lor.lhs.false.if.end_crit_edge ], [ %97, %if.then.i328.if.end_crit_edge ], [ %97, %cond.false.i329 ], [ %107, %if.else.i341.if.end_crit_edge ], [ %107, %cond.false48.i342 ]
  %node2.0 = phi ptr [ %11, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %11, %land.lhs.true.if.end_crit_edge ], [ %11, %lor.lhs.false.if.end_crit_edge ], [ %7, %if.then.i328.if.end_crit_edge ], [ %7, %cond.false.i329 ], [ %7, %if.else.i341.if.end_crit_edge ], [ %7, %cond.false48.i342 ]
  %btree1.0 = phi ptr [ %nodehdr1.sroa.54473.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr1.sroa.54473.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr1.sroa.54473.0, %lor.lhs.false.if.end_crit_edge ], [ %nodehdr1.sroa.54473.1, %if.then.i328.if.end_crit_edge ], [ %nodehdr1.sroa.54473.1, %cond.false.i329 ], [ %nodehdr1.sroa.54473.1, %if.else.i341.if.end_crit_edge ], [ %nodehdr1.sroa.54473.1, %cond.false48.i342 ]
  %btree2.0 = phi ptr [ %nodehdr2.sroa.53456.0, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %nodehdr2.sroa.53456.0, %land.lhs.true.if.end_crit_edge ], [ %nodehdr2.sroa.53456.0, %lor.lhs.false.if.end_crit_edge ], [ %__btree.i325, %if.then.i328.if.end_crit_edge ], [ %__btree.i325, %cond.false.i329 ], [ %__btree34.i338, %if.else.i341.if.end_crit_edge ], [ %__btree34.i338, %cond.false48.i342 ]
  %tobool.not = phi i1 [ true, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ true, %land.lhs.true.if.end_crit_edge ], [ true, %lor.lhs.false.if.end_crit_edge ], [ false, %if.then.i328.if.end_crit_edge ], [ false, %cond.false.i329 ], [ false, %if.else.i341.if.end_crit_edge ], [ false, %cond.false48.i342 ]
  %node1.0 = phi ptr [ %7, %xfs_da3_node_hdr_from_disk.exit283.if.end_crit_edge ], [ %7, %land.lhs.true.if.end_crit_edge ], [ %7, %lor.lhs.false.if.end_crit_edge ], [ %11, %if.then.i328.if.end_crit_edge ], [ %11, %cond.false.i329 ], [ %11, %if.else.i341.if.end_crit_edge ], [ %11, %cond.false48.i342 ]
  %conv34 = zext i16 %nodehdr1.sroa.28.2 to i32
  %conv36 = zext i16 %nodehdr2.sroa.28.2 to i32
  %sub37 = sub nsw i32 %conv34, %conv36
  %div = sdiv i32 %sub37, 2
  %sub37.off = add nsw i32 %sub37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub37.off)
  %116 = icmp ult i32 %sub37.off, 3
  br i1 %116, label %if.end.cleanup_crit_edge, label %if.end41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end
  %117 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %118, i32 0, i32 11
  %119 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %trans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub37)
  %cmp43 = icmp sgt i32 %sub37, 1
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nodehdr2.sroa.28.2)
  %cmp48.not = icmp eq i16 %nodehdr2.sroa.28.2, 0
  br i1 %cmp48.not, label %if.then45.if.end53_crit_edge, label %if.then50

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl nuw nsw i32 %conv36, 3
  %arrayidx52 = getelementptr %struct.xfs_da_node_entry, ptr %btree2.0, i32 %div
  %121 = call ptr @memmove(ptr %arrayidx52, ptr %btree2.0, i32 %mul)
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then45.if.end53_crit_edge
  %mul57 = shl nsw i32 %div, 3
  %sub60 = sub nsw i32 %conv34, %div
  %arrayidx61 = getelementptr %struct.xfs_da_node_entry, ptr %btree1.0, i32 %sub60
  %122 = call ptr @memcpy(ptr %btree2.0, ptr %arrayidx61, i32 %mul57)
  br label %if.end92

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %sub67 = sub nsw i32 0, %div
  %mul68 = shl nsw i32 %sub67, 3
  %arrayidx71 = getelementptr %struct.xfs_da_node_entry, ptr %btree1.0, i32 %conv34
  %123 = call ptr @memcpy(ptr %arrayidx71, ptr %btree2.0, i32 %mul68)
  %124 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %blk1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx71 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %node1.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add80 = add nsw i32 %mul68, -1
  %sub81 = add i32 %add80, %sub.ptr.sub
  tail call void @xfs_trans_log_buf(ptr noundef %120, ptr noundef %125, i32 noundef %sub.ptr.sub, i32 noundef %sub81) #12
  %sub84 = add nsw i32 %div, %conv36
  %mul85 = shl nsw i32 %sub84, 3
  %arrayidx86 = getelementptr %struct.xfs_da_node_entry, ptr %btree2.0, i32 %sub67
  %126 = call ptr @memmove(ptr %btree2.0, ptr %arrayidx86, i32 %mul85)
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.end53
  %.pn = trunc i32 %div to i16
  %nodehdr2.sroa.28.3 = add i16 %nodehdr2.sroa.28.2, %.pn
  %nodehdr1.sroa.28.3 = sub i16 %nodehdr1.sroa.28.2, %.pn
  %127 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %3, align 8
  %m_features.i.i344 = getelementptr inbounds %struct.xfs_mount, ptr %128, i32 0, i32 61
  %129 = ptrtoint ptr %m_features.i.i344 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %m_features.i.i344, align 8
  %and.i.i345 = and i64 %130, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i345)
  %tobool.i.not.i346 = icmp eq i64 %and.i.i345, 0
  br i1 %tobool.i.not.i346, label %if.else.i355, label %if.then.i348

if.then.i348:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %nodehdr1.sroa.19.2)
  %cmp.i347 = icmp eq i16 %nodehdr1.sroa.19.2, 16062
  br i1 %cmp.i347, label %if.then.i348.cond.end.i_crit_edge, label %cond.false.i349, !prof !216

if.then.i348.cond.end.i_crit_edge:                ; preds = %if.then.i348
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i349:                                  ; preds = %if.then.i348
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i349, %if.then.i348.cond.end.i_crit_edge
  %131 = ptrtoint ptr %node1.0 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %nodehdr1.sroa.0.2, ptr %node1.0, align 8
  %back8.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node1.0, i32 0, i32 1
  %132 = ptrtoint ptr %back8.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %nodehdr1.sroa.11.2, ptr %back8.i, align 4
  %magic13.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node1.0, i32 0, i32 2
  %133 = ptrtoint ptr %magic13.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %nodehdr1.sroa.19.2, ptr %magic13.i, align 8
  %__count.i352 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %node1.0, i32 0, i32 1
  %134 = ptrtoint ptr %__count.i352 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %nodehdr1.sroa.28.3, ptr %__count.i352, align 8
  %__level.i354 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %node1.0, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

if.else.i355:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %nodehdr1.sroa.19.2)
  %cmp18.i = icmp eq i16 %nodehdr1.sroa.19.2, -322
  br i1 %cmp18.i, label %if.else.i355.cond.end28.i_crit_edge, label %cond.false27.i, !prof !216

if.else.i355.cond.end28.i_crit_edge:              ; preds = %if.else.i355
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28.i

cond.false27.i:                                   ; preds = %if.else.i355
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false27.i, %if.else.i355.cond.end28.i_crit_edge
  %135 = ptrtoint ptr %node1.0 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %nodehdr1.sroa.0.2, ptr %node1.0, align 4
  %back36.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node1.0, i32 0, i32 1
  %136 = ptrtoint ptr %back36.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %nodehdr1.sroa.11.2, ptr %back36.i, align 4
  %magic40.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node1.0, i32 0, i32 2
  %137 = ptrtoint ptr %magic40.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %nodehdr1.sroa.19.2, ptr %magic40.i, align 4
  %__count43.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %node1.0, i32 0, i32 1
  %138 = ptrtoint ptr %__count43.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %nodehdr1.sroa.28.3, ptr %__count43.i, align 4
  %__level46.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %node1.0, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

xfs_da3_node_hdr_to_disk.exit:                    ; preds = %cond.end28.i, %cond.end.i
  %__level.i354.sink = phi ptr [ %__level.i354, %cond.end.i ], [ %__level46.i, %cond.end28.i ]
  %139 = ptrtoint ptr %__level.i354.sink to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %nodehdr1.sroa.46.2, ptr %__level.i354.sink, align 2
  %140 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %blk1, align 8
  %142 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %state, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 8
  %node_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %node_hdr_size to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %node_hdr_size, align 4
  %sub104 = add i32 %147, -1
  tail call void @xfs_trans_log_buf(ptr noundef %120, ptr noundef %141, i32 noundef 0, i32 noundef %sub104) #12
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %3, align 8
  %m_features.i.i356 = getelementptr inbounds %struct.xfs_mount, ptr %149, i32 0, i32 61
  %150 = ptrtoint ptr %m_features.i.i356 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %m_features.i.i356, align 8
  %and.i.i357 = and i64 %151, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i357)
  %tobool.i.not.i358 = icmp eq i64 %and.i.i357, 0
  br i1 %tobool.i.not.i358, label %if.else.i372, label %if.then.i361

if.then.i361:                                     ; preds = %xfs_da3_node_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %nodehdr2.sroa.19.2)
  %cmp.i360 = icmp eq i16 %nodehdr2.sroa.19.2, 16062
  br i1 %cmp.i360, label %if.then.i361.cond.end.i370_crit_edge, label %cond.false.i362, !prof !216

if.then.i361.cond.end.i370_crit_edge:             ; preds = %if.then.i361
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i370

cond.false.i362:                                  ; preds = %if.then.i361
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end.i370

cond.end.i370:                                    ; preds = %cond.false.i362, %if.then.i361.cond.end.i370_crit_edge
  %152 = ptrtoint ptr %node2.0 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %nodehdr2.sroa.0.2, ptr %node2.0, align 8
  %back8.i364 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node2.0, i32 0, i32 1
  %153 = ptrtoint ptr %back8.i364 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %nodehdr2.sroa.11.2, ptr %back8.i364, align 4
  %magic13.i365 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node2.0, i32 0, i32 2
  %154 = ptrtoint ptr %magic13.i365 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %nodehdr2.sroa.19.2, ptr %magic13.i365, align 8
  %__count.i367 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %node2.0, i32 0, i32 1
  %155 = ptrtoint ptr %__count.i367 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %nodehdr2.sroa.28.3, ptr %__count.i367, align 8
  %__level.i369 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %node2.0, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit382

if.else.i372:                                     ; preds = %xfs_da3_node_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %nodehdr2.sroa.19.2)
  %cmp18.i371 = icmp eq i16 %nodehdr2.sroa.19.2, -322
  br i1 %cmp18.i371, label %if.else.i372.cond.end28.i381_crit_edge, label %cond.false27.i373, !prof !216

if.else.i372.cond.end28.i381_crit_edge:           ; preds = %if.else.i372
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28.i381

cond.false27.i373:                                ; preds = %if.else.i372
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28.i381

cond.end28.i381:                                  ; preds = %cond.false27.i373, %if.else.i372.cond.end28.i381_crit_edge
  %156 = ptrtoint ptr %node2.0 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %nodehdr2.sroa.0.2, ptr %node2.0, align 4
  %back36.i375 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node2.0, i32 0, i32 1
  %157 = ptrtoint ptr %back36.i375 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %nodehdr2.sroa.11.2, ptr %back36.i375, align 4
  %magic40.i376 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %node2.0, i32 0, i32 2
  %158 = ptrtoint ptr %magic40.i376 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %nodehdr2.sroa.19.2, ptr %magic40.i376, align 4
  %__count43.i378 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %node2.0, i32 0, i32 1
  %159 = ptrtoint ptr %__count43.i378 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %nodehdr2.sroa.28.3, ptr %__count43.i378, align 4
  %__level46.i380 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %node2.0, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit382

xfs_da3_node_hdr_to_disk.exit382:                 ; preds = %cond.end28.i381, %cond.end.i370
  %__level.i369.sink = phi ptr [ %__level.i369, %cond.end.i370 ], [ %__level46.i380, %cond.end28.i381 ]
  %160 = ptrtoint ptr %__level.i369.sink to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %nodehdr2.sroa.45.2, ptr %__level.i369.sink, align 2
  %161 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %blk2, align 8
  %163 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %state, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %node_hdr_size117 = getelementptr inbounds %struct.xfs_da_geometry, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %node_hdr_size117 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %node_hdr_size117, align 4
  %conv119 = zext i16 %nodehdr2.sroa.28.3 to i32
  %mul120 = shl nuw nsw i32 %conv119, 3
  %add121 = add nsw i32 %mul120, -1
  %sub123 = add i32 %add121, %168
  tail call void @xfs_trans_log_buf(ptr noundef %120, ptr noundef %162, i32 noundef 0, i32 noundef %sub123) #12
  br i1 %tobool.not, label %xfs_da3_node_hdr_to_disk.exit382.if.end133_crit_edge, label %if.then124

xfs_da3_node_hdr_to_disk.exit382.if.end133_crit_edge: ; preds = %xfs_da3_node_hdr_to_disk.exit382
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then124:                                       ; preds = %xfs_da3_node_hdr_to_disk.exit382
  %169 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %blk1, align 8
  %b_addr126 = getelementptr inbounds %struct.xfs_buf, ptr %170, i32 0, i32 16
  %171 = ptrtoint ptr %b_addr126 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %b_addr126, align 4
  %173 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %blk2, align 8
  %b_addr128 = getelementptr inbounds %struct.xfs_buf, ptr %174, i32 0, i32 16
  %175 = ptrtoint ptr %b_addr128 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %b_addr128, align 4
  %177 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %3, align 8
  %m_features.i.i383 = getelementptr inbounds %struct.xfs_mount, ptr %178, i32 0, i32 61
  %179 = ptrtoint ptr %m_features.i.i383 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %m_features.i.i383, align 8
  %and.i.i384 = and i64 %180, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i384)
  %tobool.i.not.i385 = icmp eq i64 %and.i.i384, 0
  %magic26.i401 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %172, i32 0, i32 2
  br i1 %tobool.i.not.i385, label %if.else.i410, label %if.then.i397

if.then.i397:                                     ; preds = %if.then124
  %181 = ptrtoint ptr %magic26.i401 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %magic26.i401, align 8
  %__count.i390 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %172, i32 0, i32 1
  %183 = ptrtoint ptr %__count.i390 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %__count.i390, align 8
  %__btree.i394 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %172, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %182)
  %cmp.i396 = icmp eq i16 %182, 16062
  br i1 %cmp.i396, label %if.then.i397.xfs_da3_node_hdr_from_disk.exit412_crit_edge, label %cond.false.i398, !prof !216

if.then.i397.xfs_da3_node_hdr_from_disk.exit412_crit_edge: ; preds = %if.then.i397
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit412

cond.false.i398:                                  ; preds = %if.then.i397
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit412

if.else.i410:                                     ; preds = %if.then124
  %185 = ptrtoint ptr %magic26.i401 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %magic26.i401, align 4
  %__count29.i403 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %172, i32 0, i32 1
  %187 = ptrtoint ptr %__count29.i403 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %__count29.i403, align 4
  %__btree34.i407 = getelementptr inbounds %struct.xfs_da_intnode, ptr %172, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %186)
  %cmp39.i409 = icmp eq i16 %186, -322
  br i1 %cmp39.i409, label %if.else.i410.xfs_da3_node_hdr_from_disk.exit412_crit_edge, label %cond.false48.i411, !prof !216

if.else.i410.xfs_da3_node_hdr_from_disk.exit412_crit_edge: ; preds = %if.else.i410
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit412

cond.false48.i411:                                ; preds = %if.else.i410
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit412

xfs_da3_node_hdr_from_disk.exit412:               ; preds = %cond.false48.i411, %if.else.i410.xfs_da3_node_hdr_from_disk.exit412_crit_edge, %cond.false.i398, %if.then.i397.xfs_da3_node_hdr_from_disk.exit412_crit_edge
  %nodehdr1.sroa.54473.2 = phi ptr [ %__btree34.i407, %if.else.i410.xfs_da3_node_hdr_from_disk.exit412_crit_edge ], [ %__btree34.i407, %cond.false48.i411 ], [ %__btree.i394, %if.then.i397.xfs_da3_node_hdr_from_disk.exit412_crit_edge ], [ %__btree.i394, %cond.false.i398 ]
  %nodehdr1.sroa.28.4 = phi i16 [ %188, %if.else.i410.xfs_da3_node_hdr_from_disk.exit412_crit_edge ], [ %188, %cond.false48.i411 ], [ %184, %if.then.i397.xfs_da3_node_hdr_from_disk.exit412_crit_edge ], [ %184, %cond.false.i398 ]
  %189 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %3, align 8
  %m_features.i.i413 = getelementptr inbounds %struct.xfs_mount, ptr %190, i32 0, i32 61
  %191 = ptrtoint ptr %m_features.i.i413 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %m_features.i.i413, align 8
  %and.i.i414 = and i64 %192, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i414)
  %tobool.i.not.i415 = icmp eq i64 %and.i.i414, 0
  %magic26.i431 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %176, i32 0, i32 2
  br i1 %tobool.i.not.i415, label %if.else.i440, label %if.then.i427

if.then.i427:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit412
  %193 = ptrtoint ptr %magic26.i431 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %magic26.i431, align 8
  %__count.i420 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %176, i32 0, i32 1
  %195 = ptrtoint ptr %__count.i420 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %__count.i420, align 8
  %__btree.i424 = getelementptr inbounds %struct.xfs_da3_intnode, ptr %176, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %194)
  %cmp.i426 = icmp eq i16 %194, 16062
  br i1 %cmp.i426, label %if.then.i427.if.end133_crit_edge, label %cond.false.i428, !prof !216

if.then.i427.if.end133_crit_edge:                 ; preds = %if.then.i427
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

cond.false.i428:                                  ; preds = %if.then.i427
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %if.end133

if.else.i440:                                     ; preds = %xfs_da3_node_hdr_from_disk.exit412
  %197 = ptrtoint ptr %magic26.i431 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %magic26.i431, align 4
  %__count29.i433 = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %176, i32 0, i32 1
  %199 = ptrtoint ptr %__count29.i433 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %__count29.i433, align 4
  %__btree34.i437 = getelementptr inbounds %struct.xfs_da_intnode, ptr %176, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %198)
  %cmp39.i439 = icmp eq i16 %198, -322
  br i1 %cmp39.i439, label %if.else.i440.if.end133_crit_edge, label %cond.false48.i441, !prof !216

if.else.i440.if.end133_crit_edge:                 ; preds = %if.else.i440
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

cond.false48.i441:                                ; preds = %if.else.i440
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %if.end133

if.end133:                                        ; preds = %cond.false48.i441, %if.else.i440.if.end133_crit_edge, %cond.false.i428, %if.then.i427.if.end133_crit_edge, %xfs_da3_node_hdr_to_disk.exit382.if.end133_crit_edge
  %nodehdr1.sroa.28.5 = phi i16 [ %nodehdr1.sroa.28.3, %xfs_da3_node_hdr_to_disk.exit382.if.end133_crit_edge ], [ %nodehdr1.sroa.28.4, %if.then.i427.if.end133_crit_edge ], [ %nodehdr1.sroa.28.4, %cond.false.i428 ], [ %nodehdr1.sroa.28.4, %if.else.i440.if.end133_crit_edge ], [ %nodehdr1.sroa.28.4, %cond.false48.i441 ]
  %nodehdr2.sroa.28.5 = phi i16 [ %nodehdr2.sroa.28.3, %xfs_da3_node_hdr_to_disk.exit382.if.end133_crit_edge ], [ %196, %if.then.i427.if.end133_crit_edge ], [ %196, %cond.false.i428 ], [ %200, %if.else.i440.if.end133_crit_edge ], [ %200, %cond.false48.i441 ]
  %btree1.1 = phi ptr [ %btree1.0, %xfs_da3_node_hdr_to_disk.exit382.if.end133_crit_edge ], [ %nodehdr1.sroa.54473.2, %if.then.i427.if.end133_crit_edge ], [ %nodehdr1.sroa.54473.2, %cond.false.i428 ], [ %nodehdr1.sroa.54473.2, %if.else.i440.if.end133_crit_edge ], [ %nodehdr1.sroa.54473.2, %cond.false48.i441 ]
  %btree2.1 = phi ptr [ %btree2.0, %xfs_da3_node_hdr_to_disk.exit382.if.end133_crit_edge ], [ %__btree.i424, %if.then.i427.if.end133_crit_edge ], [ %__btree.i424, %cond.false.i428 ], [ %__btree34.i437, %if.else.i440.if.end133_crit_edge ], [ %__btree34.i437, %cond.false48.i441 ]
  %conv135 = zext i16 %nodehdr1.sroa.28.5 to i32
  %sub136 = add nsw i32 %conv135, -1
  %arrayidx137 = getelementptr %struct.xfs_da_node_entry, ptr %btree1.1, i32 %sub136
  %201 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx137, align 4
  %hashval139 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1, i32 0, i32 4
  %203 = ptrtoint ptr %hashval139 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %hashval139, align 4
  %conv141 = zext i16 %nodehdr2.sroa.28.5 to i32
  %sub142 = add nsw i32 %conv141, -1
  %arrayidx143 = getelementptr %struct.xfs_da_node_entry, ptr %btree2.1, i32 %sub142
  %204 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx143, align 4
  %hashval145 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2, i32 0, i32 4
  %206 = ptrtoint ptr %hashval145 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %hashval145, align 4
  %index = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1, i32 0, i32 3
  %207 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %conv135)
  %cmp148.not = icmp slt i32 %208, %conv135
  br i1 %cmp148.not, label %if.end133.cleanup_crit_edge, label %if.then150

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then150:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  %sub154 = sub i32 %208, %conv135
  %index155 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2, i32 0, i32 3
  %209 = ptrtoint ptr %index155 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %sub154, ptr %index155, align 8
  %add158 = add nuw nsw i32 %conv135, 1
  %210 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add158, ptr %index, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then150, %if.end133.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_da3_node_add(ptr nocapture noundef readonly %state, ptr nocapture noundef %oldblk, ptr nocapture noundef readonly %newblk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_da_node_add(ptr noundef %1)
  %4 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oldblk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %back.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic.i, align 8
  %__count.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %__count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %__count.i, align 8
  %__level.i = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %__level.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %__level.i, align 2
  %__btree.i = getelementptr inbounds %struct.xfs_da3_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %17)
  %cmp.i = icmp eq i16 %17, 16062
  br i1 %cmp.i, label %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !216

if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141) #12
  br label %xfs_da3_node_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %back22.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %back22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %back22.i, align 4
  %magic26.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %magic26.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %magic26.i, align 4
  %__count29.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %__count29.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %__count29.i, align 4
  %__level32.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %__level32.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %__level32.i, align 2
  %__btree34.i = getelementptr inbounds %struct.xfs_da_intnode, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %27)
  %cmp39.i = icmp eq i16 %27, -322
  br i1 %cmp39.i, label %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, label %cond.false48.i, !prof !216

if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_da3_node_hdr_from_disk.exit

cond.false48.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149) #12
  br label %xfs_da3_node_hdr_from_disk.exit

xfs_da3_node_hdr_from_disk.exit:                  ; preds = %cond.false48.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge
  %nodehdr.sroa.29161.0 = phi ptr [ %__btree34.i, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree34.i, %cond.false48.i ], [ %__btree.i, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %__btree.i, %cond.false.i ]
  %nodehdr.sroa.25.0 = phi i16 [ %31, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %31, %cond.false48.i ], [ %21, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %21, %cond.false.i ]
  %nodehdr.sroa.16.0 = phi i16 [ %29, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %29, %cond.false48.i ], [ %19, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %19, %cond.false.i ]
  %nodehdr.sroa.11.0 = phi i16 [ -322, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %27, %cond.false48.i ], [ 16062, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %17, %cond.false.i ]
  %nodehdr.sroa.7.0 = phi i32 [ %25, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %25, %cond.false48.i ], [ %15, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %15, %cond.false.i ]
  %nodehdr.sroa.0.0 = phi i32 [ %23, %if.else.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %23, %cond.false48.i ], [ %13, %if.then.i.xfs_da3_node_hdr_from_disk.exit_crit_edge ], [ %13, %cond.false.i ]
  %index = getelementptr inbounds %struct.xfs_da_state_blk, ptr %oldblk, i32 0, i32 3
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp = icmp sgt i32 %33, -1
  %conv = zext i16 %nodehdr.sroa.16.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv)
  %cmp5 = icmp ule i32 %33, %conv
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %xfs_da3_node_hdr_from_disk.exit.cond.end_crit_edge, label %cond.false, !prof !275

xfs_da3_node_hdr_from_disk.exit.cond.end_crit_edge: ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %xfs_da3_node_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 1018) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_da3_node_hdr_from_disk.exit.cond.end_crit_edge
  %blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 1
  %34 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp8.not = icmp eq i32 %35, 0
  br i1 %cmp8.not, label %cond.false17, label %cond.end.cond.end18_crit_edge, !prof !238

cond.end.cond.end18_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 1019) #12
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.end.cond.end18_crit_edge
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp20 = icmp eq i32 %39, 0
  br i1 %cmp20, label %if.then, label %cond.end18.if.end_crit_edge

cond.end18.if.end_crit_edge:                      ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end18
  %40 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blkno, align 4
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %leafblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp24.not = icmp ult i32 %41, %45
  br i1 %cmp24.not, label %if.then.cond.false40_crit_edge, label %land.rhs26, !prof !238

if.then.cond.false40_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false40

land.rhs26:                                       ; preds = %if.then
  %freeblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %43, i32 0, i32 13
  %46 = ptrtoint ptr %freeblk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %freeblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %47)
  %cmp30 = icmp ult i32 %41, %47
  br i1 %cmp30, label %land.rhs26.if.end_crit_edge, label %land.rhs26.cond.false40_crit_edge, !prof !216

land.rhs26.cond.false40_crit_edge:                ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false40

land.rhs26.if.end_crit_edge:                      ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.false40:                                     ; preds = %land.rhs26.cond.false40_crit_edge, %if.then.cond.false40_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 1022) #12
  br label %if.end

if.end:                                           ; preds = %cond.false40, %land.rhs26.if.end_crit_edge, %cond.end18.if.end_crit_edge
  %48 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv)
  %cmp45 = icmp slt i32 %49, %conv
  br i1 %cmp45, label %if.then47, label %if.end.if.end54_crit_edge

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %conv, %49
  %mul = shl i32 %sub, 3
  %add = add nsw i32 %49, 1
  %arrayidx = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29161.0, i32 %add
  %arrayidx53 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29161.0, i32 %49
  %50 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx53, i32 %mul)
  %phi.bo162 = or i32 %mul, 7
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.end.if.end54_crit_edge
  %tmp.0 = phi i32 [ %phi.bo162, %if.then47 ], [ 7, %if.end.if.end54_crit_edge ]
  %hashval = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 4
  %51 = ptrtoint ptr %hashval to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hashval, align 4
  %53 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index, align 8
  %arrayidx56 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29161.0, i32 %54
  %55 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %arrayidx56, align 4
  %56 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %blkno, align 4
  %58 = load i32, ptr %index, align 8
  %before = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29161.0, i32 %58, i32 1
  %59 = ptrtoint ptr %before to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %before, align 4
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trans, align 4
  %64 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %oldblk, align 8
  %66 = load i32, ptr %index, align 8
  %arrayidx64 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29161.0, i32 %66
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx64 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub72 = add i32 %tmp.0, %sub.ptr.sub
  tail call void @xfs_trans_log_buf(ptr noundef %63, ptr noundef %65, i32 noundef %sub.ptr.sub, i32 noundef %sub72) #12
  %add75 = add i16 %nodehdr.sroa.16.0, 1
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 8
  %m_features.i.i139 = getelementptr inbounds %struct.xfs_mount, ptr %68, i32 0, i32 61
  %69 = ptrtoint ptr %m_features.i.i139 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %m_features.i.i139, align 8
  %and.i.i140 = and i64 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i140)
  %tobool.i.not.i141 = icmp eq i64 %and.i.i140, 0
  br i1 %tobool.i.not.i141, label %if.else.i150, label %if.then.i143

if.then.i143:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp2(i16 16062, i16 %nodehdr.sroa.11.0)
  %cmp.i142 = icmp eq i16 %nodehdr.sroa.11.0, 16062
  br i1 %cmp.i142, label %if.then.i143.cond.end.i_crit_edge, label %cond.false.i144, !prof !216

if.then.i143.cond.end.i_crit_edge:                ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i144:                                  ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 162) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i144, %if.then.i143.cond.end.i_crit_edge
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %nodehdr.sroa.0.0, ptr %7, align 8
  %back8.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %72 = ptrtoint ptr %back8.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %nodehdr.sroa.7.0, ptr %back8.i, align 4
  %magic13.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %73 = ptrtoint ptr %magic13.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %nodehdr.sroa.11.0, ptr %magic13.i, align 8
  %__count.i147 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 1
  %74 = ptrtoint ptr %__count.i147 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %add75, ptr %__count.i147, align 8
  %__level.i149 = getelementptr inbounds %struct.xfs_da3_node_hdr, ptr %7, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

if.else.i150:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp2(i16 -322, i16 %nodehdr.sroa.11.0)
  %cmp18.i = icmp eq i16 %nodehdr.sroa.11.0, -322
  br i1 %cmp18.i, label %if.else.i150.cond.end28.i_crit_edge, label %cond.false27.i, !prof !216

if.else.i150.cond.end28.i_crit_edge:              ; preds = %if.else.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28.i

cond.false27.i:                                   ; preds = %if.else.i150
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169) #12
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false27.i, %if.else.i150.cond.end28.i_crit_edge
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %nodehdr.sroa.0.0, ptr %7, align 4
  %back36.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 1
  %76 = ptrtoint ptr %back36.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %nodehdr.sroa.7.0, ptr %back36.i, align 4
  %magic40.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %77 = ptrtoint ptr %magic40.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %nodehdr.sroa.11.0, ptr %magic40.i, align 4
  %__count43.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 1
  %78 = ptrtoint ptr %__count43.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %add75, ptr %__count43.i, align 4
  %__level46.i = getelementptr inbounds %struct.xfs_da_node_hdr, ptr %7, i32 0, i32 2
  br label %xfs_da3_node_hdr_to_disk.exit

xfs_da3_node_hdr_to_disk.exit:                    ; preds = %cond.end28.i, %cond.end.i
  %__level.i149.sink = phi ptr [ %__level.i149, %cond.end.i ], [ %__level46.i, %cond.end28.i ]
  %79 = ptrtoint ptr %__level.i149.sink to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %nodehdr.sroa.25.0, ptr %__level.i149.sink, align 2
  %80 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %state, align 8
  %trans79 = getelementptr inbounds %struct.xfs_da_args, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %trans79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans79, align 4
  %84 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %oldblk, align 8
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %81, align 8
  %node_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %node_hdr_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %node_hdr_size, align 4
  %sub91 = add i32 %89, -1
  tail call void @xfs_trans_log_buf(ptr noundef %83, ptr noundef %85, i32 noundef 0, i32 noundef %sub91) #12
  %conv93 = zext i16 %add75 to i32
  %sub94 = add nsw i32 %conv93, -1
  %arrayidx95 = getelementptr %struct.xfs_da_node_entry, ptr %nodehdr.sroa.29161.0, i32 %sub94
  %90 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx95, align 4
  %hashval97 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %oldblk, i32 0, i32 4
  %92 = ptrtoint ptr %hashval97 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %hashval97, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_node_split(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_node_rebalance(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_rebalance, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_node_rebalance, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  %call42 = tail call i32 @__traceiter_xfs_da_node_rebalance(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !277
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_rebalance, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_rebalance, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_node_rebalance.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_node_rebalance.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2085, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @__traceiter_xfs_da_node_rebalance(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_node_add(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_add, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_node_add, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !278
  %call42 = tail call i32 @__traceiter_xfs_da_node_add(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !279
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_node_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_node_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2081, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @__traceiter_xfs_da_node_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_root_join(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_root_join, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_root_join, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !280
  %call42 = tail call i32 @__traceiter_xfs_da_root_join(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !281
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_root_join, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_root_join, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_root_join.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_root_join.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2080, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @__traceiter_xfs_da_root_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_node_toosmall(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_toosmall, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_node_toosmall, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !282
  %call42 = tail call i32 @__traceiter_xfs_da_node_toosmall(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !283
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_toosmall, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_toosmall, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_node_toosmall.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_node_toosmall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2087, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @__traceiter_xfs_da_node_toosmall(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_fixhashpath(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_node_remove(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_remove, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_node_remove, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !284
  %call42 = tail call i32 @__traceiter_xfs_da_node_remove(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_node_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_node_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2084, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @__traceiter_xfs_da_node_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_node_unbalance(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_unbalance, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_node_unbalance, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %call42 = tail call i32 @__traceiter_xfs_da_node_unbalance(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !287
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_unbalance, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_node_unbalance, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_node_unbalance.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_node_unbalance.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2086, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @__traceiter_xfs_da_node_unbalance(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_link_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_link_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_unlink_back(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_unlink_back, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_unlink_back, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !288
  %call42 = tail call i32 @__traceiter_xfs_da_unlink_back(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !289
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_unlink_back, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_unlink_back, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_unlink_back.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_unlink_back.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2077, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
define internal fastcc void @trace_xfs_da_unlink_forward(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_unlink_forward, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_unlink_forward, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !290
  %call42 = tail call i32 @__traceiter_xfs_da_unlink_forward(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !291
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_unlink_forward, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_unlink_forward, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_unlink_forward.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_unlink_forward.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2078, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @__traceiter_xfs_da_unlink_back(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_unlink_forward(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_path_shift(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_grow_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_shrink_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_da_swap_lastblock(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_swap_lastblock, i32 0, i32 1), ptr blockaddress(@trace_xfs_da_swap_lastblock, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !225

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !216

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !292
  %call42 = tail call i32 @__traceiter_xfs_da_swap_lastblock(ptr noundef null, ptr noundef %args) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !293
  %13 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !216

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_swap_lastblock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_da_swap_lastblock, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_da_swap_lastblock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_da_swap_lastblock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2088, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !206) #12
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
declare dso_local i32 @xfs_bmap_last_before(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_da_swap_lastblock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !101, !103, !105, !106, !108, !109, !111, !113, !115, !117, !119, !120, !122, !124, !126, !128, !130, !131, !133, !134, !136, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !200, !202, !204}
!llvm.named.register.sp = !{!206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 141, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 149, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 162, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 169, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 332, i32 10}
!11 = !{ptr @xfs_da3_node_buf_ops, !12, !"xfs_da3_node_buf_ops", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 331, i32 26}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 436, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 492, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 493, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 573, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 579, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1071, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1072, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1676, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1677, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1705, i32 7}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1709, i32 6}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1727, i32 4}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1807, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1810, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1842, i32 4}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1844, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1845, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1866, i32 4}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1989, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1990, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2009, i32 3}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2038, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2067, i32 4}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2166, i32 2}
!61 = !{ptr @xfs_da_state_cache, !62, !"xfs_da_state_cache", i1 false, i1 false}
!62 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 75, i32 20}
!63 = !{ptr @__func__.xfs_da3_node_set_type, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 361, i32 3}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_trace.h", i32 2082, i32 1}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!69 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_trace.h", i32 2073, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/xfs/xfs_trace.h", i32 2047, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_trace.h", i32 2048, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 690, i32 3}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 745, i32 3}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 747, i32 3}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../fs/xfs/xfs_trace.h", i32 2079, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_trace.h", i32 2083, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_trace.h", i32 2085, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1018, i32 2}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1019, i32 2}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1021, i32 3}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../fs/xfs/xfs_trace.h", i32 2081, i32 1}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../fs/xfs/xfs_trace.h", i32 2074, i32 1}
!108 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1182, i32 2}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1187, i32 2}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1188, i32 2}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1201, i32 2}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../fs/xfs/xfs_trace.h", i32 2080, i32 1}
!119 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1148, i32 3}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1153, i32 3}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1156, i32 2}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1157, i32 2}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../fs/xfs/xfs_trace.h", i32 2087, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../fs/xfs/xfs_trace.h", i32 2091, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1449, i32 2}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1450, i32 2}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../fs/xfs/xfs_trace.h", i32 2084, i32 1}
!140 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../fs/xfs/xfs_trace.h", i32 2086, i32 1}
!143 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../fs/xfs/xfs_trace.h", i32 2075, i32 1}
!146 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../fs/xfs/xfs_trace.h", i32 2076, i32 1}
!149 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!150 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1901, i32 2}
!152 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1904, i32 2}
!154 = !{ptr @.str.51, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1905, i32 2}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1907, i32 2}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1924, i32 4}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1925, i32 4}
!162 = !{ptr @.str.55, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 1942, i32 4}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../fs/xfs/xfs_trace.h", i32 2077, i32 1}
!166 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../fs/xfs/xfs_trace.h", i32 2078, i32 1}
!169 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!170 = distinct !{null, !171, !"__already_done", i1 false, i1 false}
!171 = !{!"../fs/xfs/xfs_trace.h", i32 2092, i32 1}
!172 = distinct !{null, !171, !"__warned", i1 false, i1 false}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../fs/xfs/xfs_trace.h", i32 2089, i32 1}
!175 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../fs/xfs/xfs_trace.h", i32 2090, i32 1}
!178 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!179 = !{ptr @.str.56, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2287, i32 2}
!181 = !{ptr @.str.57, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2293, i32 6}
!183 = !{ptr @.str.58, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2340, i32 7}
!185 = !{ptr @.str.59, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2360, i32 7}
!187 = !{ptr @.str.60, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2383, i32 7}
!189 = !{ptr @.str.61, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2395, i32 7}
!191 = !{ptr @.str.62, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2420, i32 7}
!193 = !{ptr @.str.63, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2429, i32 7}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../fs/xfs/xfs_trace.h", i32 2088, i32 1}
!197 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!198 = !{ptr @.str.64, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2557, i32 6}
!200 = !{ptr @.str.65, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2560, i32 18}
!202 = !{ptr @__func__.xfs_dabuf_map, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2561, i32 6}
!204 = !{ptr @.str.66, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/xfs/libxfs/xfs_da_btree.c", i32 2565, i32 1}
!206 = !{!"sp"}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2166388904}
!218 = !{i64 2166388995}
!219 = !{i64 2166389141}
!220 = !{i64 2166389285}
!221 = !{i64 2166390257}
!222 = !{i64 2166390440}
!223 = !{i64 2166390628}
!224 = !{!"auto-init"}
!225 = !{i64 2148315332, i64 2148315337, i64 2148315350, i64 2148315394, i64 2148315428, i64 2148315449}
!226 = !{i64 2161940279}
!227 = !{i64 2161940486}
!228 = !{i64 2150017425}
!229 = !{i64 2150018461}
!230 = !{i64 2166393210}
!231 = !{i64 2166393746}
!232 = !{i64 2161785400}
!233 = !{i64 2161785595}
!234 = !{i64 2161463912}
!235 = !{i64 2161464135}
!236 = !{i64 2161481063}
!237 = !{i64 2161481284}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{i64 2161801259}
!240 = !{i64 2161801452}
!241 = !{i64 2162101496}
!242 = !{i64 2162101703}
!243 = !{i64 2166410409}
!244 = !{i64 2166410574}
!245 = !{i64 2166410730}
!246 = !{i64 2166412229}
!247 = !{i64 2166412648}
!248 = !{i64 2161821398}
!249 = !{i64 2161821605}
!250 = !{i64 2161837815}
!251 = !{i64 2161838020}
!252 = !{i64 2162117913}
!253 = !{i64 2162118118}
!254 = !{i64 2162064484}
!255 = !{i64 2162064689}
!256 = !{i64 2162084986}
!257 = !{i64 2162085195}
!258 = !{i64 2166425863}
!259 = !{i64 2166426896}
!260 = !{i64 2166427991}
!261 = !{!"branch_weights", i32 4001, i32 1}
!262 = !{i64 2166428803}
!263 = !{i64 2166433347}
!264 = !{i64 2166433892}
!265 = !{i64 2166434311}
!266 = !{i64 2166436093}
!267 = !{i64 2166389388}
!268 = !{i64 2166389481}
!269 = !{i64 2166389572}
!270 = !{i64 2166389663}
!271 = !{i64 2161891430}
!272 = !{i64 2161891635}
!273 = !{i64 2161960757}
!274 = !{i64 2161960962}
!275 = !{!"branch_weights", i32 4000000, i32 4001}
!276 = !{i64 2161993732}
!277 = !{i64 2161993945}
!278 = !{i64 2161923985}
!279 = !{i64 2161924186}
!280 = !{i64 2161907754}
!281 = !{i64 2161907957}
!282 = !{i64 2162031224}
!283 = !{i64 2162031435}
!284 = !{i64 2161977159}
!285 = !{i64 2161977366}
!286 = !{i64 2162014528}
!287 = !{i64 2162014741}
!288 = !{i64 2161854217}
!289 = !{i64 2161854424}
!290 = !{i64 2161870790}
!291 = !{i64 2161871003}
!292 = !{i64 2162047905}
!293 = !{i64 2162048118}
