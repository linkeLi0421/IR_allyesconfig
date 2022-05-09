; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_dir2_node.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_dir2_node.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon, ptr, ptr, ptr }
%union.anon = type { [2 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_dir3_blk_hdr = type { i32, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_dir3_free_hdr = type { %struct.xfs_dir3_blk_hdr, i32, i32, i32, i32 }
%struct.xfs_dir3_icfree_hdr = type { i32, i32, i32, i32, ptr }
%struct.xfs_dir3_free = type { %struct.xfs_dir3_free_hdr, [0 x i16] }
%struct.xfs_dir2_free_hdr = type { i32, i32, i32, i32 }
%struct.xfs_dir2_free = type { %struct.xfs_dir2_free_hdr, [0 x i16] }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
%struct.xfs_da_state = type { ptr, ptr, %struct.xfs_da_state_path, %struct.xfs_da_state_path, i8, i8, i8, %struct.xfs_da_state_blk }
%struct.xfs_da_state_path = type { i32, [5 x %struct.xfs_da_state_blk] }
%struct.xfs_da_state_blk = type { ptr, i32, i64, i32, i32, i32 }
%struct.xfs_dir2_data_entry = type { i64, i8, [0 x i8] }
%struct.xfs_dir2_data_free = type { i16, i16 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xfs_dir3_free\00", [18 x i8] zeroinitializer }, align 32
@xfs_dir3_free_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon { [2 x i32] [i32 1480864326, i32 1480869427] }, ptr @xfs_dir3_free_read_verify, ptr @xfs_dir3_free_write_verify, ptr @xfs_dir3_free_verify }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"to->magic == XFS_DIR3_FREE_MAGIC\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/libxfs/xfs_dir2_node.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"to->magic == XFS_DIR2_FREE_MAGIC\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"fdb == xfs_dir2_byte_to_db(args->geo, XFS_DIR2_FREE_OFFSET)\00", [36 x i8] zeroinitializer }, align 32
@xfs_dir3_leafn_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.5 = internal constant { [161 x i8], [63 x i8] } { [161 x i8] c"leafhdr.magic == XFS_DIR2_LEAFN_MAGIC || leafhdr.magic == XFS_DIR3_LEAFN_MAGIC || leafhdr.magic == XFS_DIR2_LEAF1_MAGIC || leafhdr.magic == XFS_DIR3_LEAF1_MAGIC\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"oldblk->magic == XFS_DIR2_LEAFN_MAGIC\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drop_blk->magic == XFS_DIR2_LEAFN_MAGIC\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"save_blk->magic == XFS_DIR2_LEAFN_MAGIC\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"blk->magic == XFS_DIR2_LEAFN_MAGIC\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rval == -ENOSPC\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"state->extravalid\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC)\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inum != be64_to_cpu(dep->inumber)\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOSPC\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_leaf_to_node = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_dir2_leaf_to_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"from->magic == XFS_DIR3_FREE_MAGIC\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"from->magic == XFS_DIR2_FREE_MAGIC\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"free->hdr.magic == cpu_to_be32(XFS_DIR2_FREE_MAGIC) || free->hdr.magic == cpu_to_be32(XFS_DIR3_FREE_MAGIC)\00", [53 x i8] zeroinitializer }, align 32
@__func__.xfs_dir3_leaf_check = private unnamed_addr constant [20 x i8] c"xfs_dir3_leaf_check\00", align 1
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"leafhdr.count > 0\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"freehdr.bests[fi] == cpu_to_be16(NULLDATAOFF)\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"args->op_flags & XFS_DA_OP_OKNOENT\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(hdr.firstdb % dp->i_mount->m_dir_geo->free_max_bests) == 0\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdr.firstdb <= db\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"db < hdr.firstdb + hdr.nvalid\00", [34 x i8] zeroinitializer }, align 32
@xfs_dir3_data_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"index == leafhdr.count || (args->op_flags & XFS_DA_OP_OKNOENT)\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hdr1.count + hdr2.count == oldsum\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hdr1.stale + hdr2.stale == oldstale\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: picked the wrong leaf? reverting original leaf: blk1->index %d\00", [61 x i8] zeroinitializer }, align 32
@__func__.xfs_dir2_leafn_rebalance = private unnamed_addr constant [25 x i8] c"xfs_dir2_leafn_rebalance\00", align 1
@.str.32 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"index == 0 || be32_to_cpu(ents[index - 1].hashval) <= args->hashval\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"index == leafhdr.count || be32_to_cpu(ents[index].hashval) >= args->hashval\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_leafn_add = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leafn_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_leafn_moveents = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leafn_moveents.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_node_addname = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_node_addname.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"be16_to_cpu(bf[0].length) >= length\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"findex < hdr->nvalid\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"be16_to_cpu(hdr->bests[findex]) != NULLDATAOFF\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"be16_to_cpu(hdr->bests[findex]) >= length\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"xfs_dir2_db_to_fdb(args->geo, *dbno) != fbno\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: dir ino %llu needed freesp block %lld for data block %lld, got %lld\00", [56 x i8] zeroinitializer }, align 32
@__func__.xfs_dir2_node_add_datablk = private unnamed_addr constant [26 x i8] c"xfs_dir2_node_add_datablk\00", align 1
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" fblk %px blkno %llu index %d magic 0x%x\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" ... fblk is NULL\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*findex < args->geo->free_max_bests\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_node_lookup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_node_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_node_removename = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_node_removename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dblk->blkno == db\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dblk->index == off\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"freehdr.firstdb == geo->free_max_bests * (fdb - xfs_dir2_byte_to_db(geo, XFS_DIR2_FREE_OFFSET))\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_leafn_remove = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leafn_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_node_replace = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_node_replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1480864326, i64 1480869427]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1480864326, i64 1480869427]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1480864326, i64 1480869427]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1480864326, i64 1480869427]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1480864326, i64 1480869427]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1480864324, i64 1480868915]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 15871, i64 54015]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 166, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"xfs_dir3_free_buf_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 165, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 259, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 267, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 432, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 608, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1433, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1629, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1630, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2039, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2055, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2154, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2240, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2246, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2328, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1974, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 280, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 287, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 372, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 92, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 655, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 734, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 749, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 586, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 587, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 588, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 903, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1138, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1139, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1173, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 536, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 537, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1954, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1821, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1822, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1823, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1726, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1730, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1736, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1740, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1764, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1300, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1302, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [33 x i8] c"../fs/xfs/libxfs/xfs_dir2_node.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1363, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @.str, ptr @xfs_dir3_free_buf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir3_free_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_free_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %7, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #8
  %8 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %5, i32 noundef 4) #8
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #8
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 8
  %sub.i.i.i = add i32 %shl.i, -8
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = xor i32 %call3.i.i.i, -1
  %12 = call i32 @llvm.bswap.i32(i32 %11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i.not = icmp eq i32 %10, %12
  br i1 %cmp.i.i.not, label %land.lhs.true.if.else_crit_edge, label %__here

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !132
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_dir3_free_read_verify, %__here)) #8
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = call ptr @xfs_dir3_free_verify(ptr noundef %bp)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call2) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %__here
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_free_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call = tail call ptr @xfs_dir3_free_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_lsn, align 8
  %lsn = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %5, i32 0, i32 3
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
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %12, i32 noundef %shl.i) #8
  %16 = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_dir3_free_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %5) #8
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !133
  br label %cleanup20

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup20_crit_edge, label %if.then2

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %uuid = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %9, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end8, label %__here6

__here6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !134
  br label %cleanup20

if.end8:                                          ; preds = %if.then2
  %blkno = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %blkno, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %12 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_maps.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %15)
  %cmp.not = icmp eq i64 %11, %15
  br i1 %cmp.not, label %if.end13, label %__here11

__here11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !135
  br label %cleanup20

if.end13:                                         ; preds = %if.end8
  %lsn = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %lsn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lsn, align 8
  %call14 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %1, i64 noundef %17) #8
  br i1 %call14, label %if.end13.cleanup20_crit_edge, label %__here16

if.end13.cleanup20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

__here16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  br label %cleanup20

cleanup20:                                        ; preds = %__here16, %if.end13.cleanup20_crit_edge, %__here11, %__here6, %if.end.cleanup20_crit_edge, %__here
  %retval.1 = phi ptr [ blockaddress(@xfs_dir3_free_verify, %__here), %__here ], [ null, %if.end13.cleanup20_crit_edge ], [ null, %if.end.cleanup20_crit_edge ], [ blockaddress(@xfs_dir3_free_verify, %__here6), %__here6 ], [ blockaddress(@xfs_dir3_free_verify, %__here11), %__here11 ], [ blockaddress(@xfs_dir3_free_verify, %__here16), %__here16 ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_free_hdr_from_disk(ptr nocapture noundef readonly %mp, ptr nocapture noundef %to, ptr noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %firstdb = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %from, i32 0, i32 1
  %5 = ptrtoint ptr %firstdb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %firstdb, align 8
  %firstdb4 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 1
  %7 = ptrtoint ptr %firstdb4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %firstdb4, align 4
  %nvalid = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %from, i32 0, i32 2
  %8 = ptrtoint ptr %nvalid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nvalid, align 4
  %nvalid6 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 2
  %10 = ptrtoint ptr %nvalid6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nvalid6, align 4
  %nused = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %from, i32 0, i32 3
  %11 = ptrtoint ptr %nused to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nused, align 8
  %nused8 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 3
  %13 = ptrtoint ptr %nused8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nused8, align 4
  %bests = getelementptr inbounds %struct.xfs_dir3_free, ptr %from, i32 0, i32 1
  %bests9 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 4
  %14 = ptrtoint ptr %bests9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bests, ptr %bests9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %3)
  %cmp = icmp eq i32 %3, 1480869427
  br i1 %cmp, label %if.then.if.end_crit_edge, label %cond.false, !prof !137

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %from, align 4
  %17 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %to, align 4
  %firstdb16 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %from, i32 0, i32 1
  %18 = ptrtoint ptr %firstdb16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %firstdb16, align 4
  %firstdb17 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 1
  %20 = ptrtoint ptr %firstdb17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %firstdb17, align 4
  %nvalid19 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %from, i32 0, i32 2
  %21 = ptrtoint ptr %nvalid19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nvalid19, align 4
  %nvalid20 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 2
  %23 = ptrtoint ptr %nvalid20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %nvalid20, align 4
  %nused22 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %from, i32 0, i32 3
  %24 = ptrtoint ptr %nused22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nused22, align 4
  %nused23 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 3
  %26 = ptrtoint ptr %nused23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nused23, align 4
  %bests24 = getelementptr inbounds %struct.xfs_dir2_free, ptr %from, i32 0, i32 1
  %bests26 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %to, i32 0, i32 4
  %27 = ptrtoint ptr %bests26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bests24, ptr %bests26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %16)
  %cmp28 = icmp eq i32 %16, 1480864326
  br i1 %cmp28, label %if.else.if.end_crit_edge, label %cond.false36, !prof !137

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false36:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %if.end

if.end:                                           ; preds = %cond.false36, %if.else.if.end_crit_edge, %cond.false, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_free_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xfs_dir3_free_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, i32 noundef 0, ptr noundef %bpp)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_dir3_free_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, i32 noundef %flags, ptr noundef %bpp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, i32 noundef %flags, ptr noundef %bpp, i32 noundef 0, ptr noundef nonnull @xfs_dir3_free_buf_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpp, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc ptr @xfs_dir3_free_header_check(ptr noundef %dp, i32 noundef %fbno, ptr noundef nonnull %1)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpp, align 4
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %3, ptr noundef nonnull %call2) #8
  %4 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %5) #8
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bpp, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %tp, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bpp, align 4
  tail call void @xfs_trans_buf_set_type(ptr noundef nonnull %tp, ptr noundef %8, i32 noundef 12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then4 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leaf_to_node(ptr noundef %args, ptr noundef %lbp) #0 align 64 {
entry:
  %fbp = alloca ptr, align 4
  %fdb = alloca i32, align 4
  %freehdr = alloca %struct.xfs_dir3_icfree_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbp) #8
  %0 = ptrtoint ptr %fbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fbp, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fdb) #8
  %1 = ptrtoint ptr %fdb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fdb, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %freehdr) #8
  %2 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 4
  %6 = call ptr @memset(ptr %freehdr, i32 255, i32 20)
  tail call fastcc void @trace_xfs_dir2_leaf_to_node(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %7 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %9 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans, align 4
  %call = call i32 @xfs_dir2_grow_inode(ptr noundef %args, i32 noundef 2, ptr noundef nonnull %fdb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %fdb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fdb, align 4
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %blklog.i, align 1
  %sh_prom.i = zext i8 %16 to i64
  %shr.i98 = lshr i64 68719476736, %sh_prom.i
  %conv1.i = trunc i64 %shr.i98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv1.i)
  %cmp = icmp eq i32 %12, %conv1.i
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !137

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 432) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %17 = ptrtoint ptr %fdb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fdb, align 4
  %call5 = call fastcc i32 @xfs_dir3_free_get_buf(ptr noundef %args, i32 noundef %18, ptr noundef nonnull %fbp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %cond.end
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 8
  %21 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_addr, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 8
  %29 = ptrtoint ptr %freehdr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %freehdr, align 4
  %firstdb.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %firstdb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %firstdb.i, align 8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %2, align 4
  %bests.i = getelementptr inbounds %struct.xfs_dir3_free, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bests.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %28)
  %cmp.i = icmp eq i32 %28, 1480869427
  br i1 %cmp.i, label %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !137

if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.end8
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %24, align 4
  %36 = ptrtoint ptr %freehdr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %freehdr, align 4
  %firstdb16.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %24, i32 0, i32 1
  %37 = ptrtoint ptr %firstdb16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %firstdb16.i, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %2, align 4
  %bests24.i = getelementptr inbounds %struct.xfs_dir2_free, ptr %24, i32 0, i32 1
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %bests24.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %35)
  %cmp28.i = icmp eq i32 %35, 1480864326
  br i1 %cmp28.i, label %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, label %cond.false36.i, !prof !137

if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit

cond.false36.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit

xfs_dir2_free_hdr_from_disk.exit:                 ; preds = %cond.false36.i, %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge
  %b_addr9 = getelementptr inbounds %struct.xfs_buf, ptr %lbp, i32 0, i32 16
  %41 = ptrtoint ptr %b_addr9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_addr9, align 4
  %43 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 %46
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr1.i, align 4
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %8, i32 0, i32 18
  %49 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_disk_size, align 8
  %conv = trunc i64 %50 to i32
  %div = udiv i32 %conv, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %div)
  %cmp13 = icmp ugt i32 %48, %div
  br i1 %cmp13, label %__here, label %if.end16

__here:                                           ; preds = %xfs_dir2_free_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  call void @__xfs_buf_mark_corrupt(ptr noundef %lbp, ptr noundef blockaddress(@xfs_dir2_leaf_to_node, %__here)) #8
  br label %cleanup

if.end16:                                         ; preds = %xfs_dir2_free_hdr_from_disk.exit
  %51 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp1999.not = icmp eq i32 %52, 0
  br i1 %cmp1999.not, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %idx.neg.i = sub i32 0, %48
  %add.ptr.i84 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %5, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.body.for.body_crit_edge ]
  %from.0100 = phi ptr [ %add.ptr.i84, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %55 = ptrtoint ptr %from.0100 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %from.0100, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %56)
  %cmp22.not = icmp ne i16 %56, -1
  %inc = zext i1 %cmp22.not to i32
  %spec.select = add i32 %n.0102, %inc
  %arrayidx = getelementptr i16, ptr %54, i32 %i.0101
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx, align 2
  %inc26 = add nuw i32 %i.0101, 1
  %incdec.ptr = getelementptr i16, ptr %from.0100, i32 1
  %58 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr1.i, align 4
  %cmp19 = icmp ult i32 %inc26, %59
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %if.end16.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %n.0.lcssa, ptr %4, align 4
  %61 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr1.i, align 4
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %3, align 4
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %8, align 8
  %66 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_addr, align 4
  %m_features.i.i85 = getelementptr inbounds %struct.xfs_mount, ptr %65, i32 0, i32 61
  %68 = ptrtoint ptr %m_features.i.i85 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %m_features.i.i85, align 8
  %and.i.i86 = and i64 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i86)
  %tobool.i.not.i87 = icmp eq i64 %and.i.i86, 0
  %70 = ptrtoint ptr %freehdr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %freehdr, align 4
  br i1 %tobool.i.not.i87, label %if.else.i94, label %if.then.i89

if.then.i89:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %71)
  %cmp.i88 = icmp eq i32 %71, 1480869427
  br i1 %cmp.i88, label %if.then.i89.cond.end.i_crit_edge, label %cond.false.i90, !prof !137

if.then.i89.cond.end.i_crit_edge:                 ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i90:                                   ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 280) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i90, %if.then.i89.cond.end.i_crit_edge
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %67, align 8
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %2, align 4
  %firstdb6.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %67, i32 0, i32 1
  %75 = ptrtoint ptr %firstdb6.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %firstdb6.i, align 8
  %nvalid8.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %67, i32 0, i32 2
  %76 = ptrtoint ptr %nvalid8.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %62, ptr %nvalid8.i, align 4
  %nused10.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %67, i32 0, i32 3
  %77 = ptrtoint ptr %nused10.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %n.0.lcssa, ptr %nused10.i, align 8
  br label %xfs_dir2_free_hdr_to_disk.exit

if.else.i94:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %71)
  %cmp12.i = icmp eq i32 %71, 1480864326
  br i1 %cmp12.i, label %if.else.i94.cond.end21.i_crit_edge, label %cond.false20.i, !prof !137

if.else.i94.cond.end21.i_crit_edge:               ; preds = %if.else.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21.i

cond.false20.i:                                   ; preds = %if.else.i94
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 287) #8
  br label %cond.end21.i

cond.end21.i:                                     ; preds = %cond.false20.i, %if.else.i94.cond.end21.i_crit_edge
  %78 = ptrtoint ptr %freehdr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %freehdr, align 4
  %80 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %67, align 4
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %2, align 4
  %firstdb27.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %67, i32 0, i32 1
  %83 = ptrtoint ptr %firstdb27.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %firstdb27.i, align 4
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %3, align 4
  %nvalid30.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %67, i32 0, i32 2
  %86 = ptrtoint ptr %nvalid30.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %nvalid30.i, align 4
  %nused33.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %67, i32 0, i32 3
  %87 = ptrtoint ptr %nused33.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %n.0.lcssa, ptr %nused33.i, align 4
  br label %xfs_dir2_free_hdr_to_disk.exit

xfs_dir2_free_hdr_to_disk.exit:                   ; preds = %cond.end21.i, %cond.end.i
  %sub = add i32 %62, -1
  call fastcc void @xfs_dir2_free_log_bests(ptr noundef %args, ptr noundef nonnull %freehdr, ptr noundef %22, i32 noundef 0, i32 noundef %sub)
  %88 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_addr, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values)
  switch i32 %91, label %cond.false.i95 [
    i32 1480869427, label %xfs_dir2_free_hdr_to_disk.exit.xfs_dir2_free_log_header.exit_crit_edge
    i32 1480864326, label %xfs_dir2_free_hdr_to_disk.exit.xfs_dir2_free_log_header.exit_crit_edge103
  ]

xfs_dir2_free_hdr_to_disk.exit.xfs_dir2_free_log_header.exit_crit_edge103: ; preds = %xfs_dir2_free_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_log_header.exit

xfs_dir2_free_hdr_to_disk.exit.xfs_dir2_free_log_header.exit_crit_edge: ; preds = %xfs_dir2_free_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_log_header.exit

cond.false.i95:                                   ; preds = %xfs_dir2_free_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 393) #8
  br label %xfs_dir2_free_log_header.exit

xfs_dir2_free_log_header.exit:                    ; preds = %cond.false.i95, %xfs_dir2_free_hdr_to_disk.exit.xfs_dir2_free_log_header.exit_crit_edge, %xfs_dir2_free_hdr_to_disk.exit.xfs_dir2_free_log_header.exit_crit_edge103
  %93 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %trans, align 4
  %95 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %args, align 8
  %free_hdr_size.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %free_hdr_size.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %free_hdr_size.i, align 4
  %sub.i = add i32 %98, -1
  call void @xfs_trans_log_buf(ptr noundef %94, ptr noundef %22, i32 noundef 0, i32 noundef %sub.i) #8
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %42, i32 0, i32 2
  %99 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11535, i16 %100)
  %cmp32 = icmp eq i16 %100, -11535
  %. = select i1 %cmp32, i16 -11521, i16 15871
  %101 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %., ptr %magic, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %lbp, i32 0, i32 35
  %102 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @xfs_dir3_leafn_buf_ops, ptr %b_ops, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %10, ptr noundef %lbp, i32 noundef 14) #8
  call void @xfs_dir3_leaf_log_header(ptr noundef %args, ptr noundef %lbp) #8
  %call.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %8, ptr noundef %lbp) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %xfs_dir2_free_log_header.exit.cleanup_crit_edge, label %if.end.i

xfs_dir2_free_log_header.exit.cleanup_crit_edge:  ; preds = %xfs_dir2_free_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %xfs_dir2_free_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %8, align 8
  %105 = ptrtoint ptr %b_addr9 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %b_addr9, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %lbp, i32 0, i32 2
  %107 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %108, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %104, ptr noundef %106, i32 noundef %shl.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %xfs_dir2_free_log_header.exit.cleanup_crit_edge, %__here, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %cond.end.cleanup_crit_edge ], [ 0, %xfs_dir2_free_log_header.exit.cleanup_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fdb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leaf_to_node(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_to_node, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leaf_to_node, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %call42 = tail call i32 @__traceiter_xfs_dir2_leaf_to_node(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_to_node, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_to_node, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_leaf_to_node.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leaf_to_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1974, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local i32 @xfs_dir2_grow_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir3_free_get_buf(ptr nocapture noundef readonly %args, i32 noundef %fbno, ptr nocapture noundef writeonly %bpp) unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !138
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %10 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %12 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %fbno, %sub.i
  %call2 = call i32 @xfs_da_get_buf(ptr noundef %1, ptr noundef %3, i32 noundef %shl.i, ptr noundef nonnull %bp, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %1, ptr noundef %14, i32 noundef 12) #8
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %16, i32 0, i32 35
  %17 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xfs_dir3_free_buf_ops, ptr %b_ops, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %16, i32 0, i32 16
  %18 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 64)
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %21 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %23 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_addr, align 4
  br i1 %tobool.i.not, label %if.end11.thread, label %if.end11

if.end11:                                         ; preds = %if.end
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %16, i32 0, i32 24
  %25 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_maps.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  %blkno = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %blkno, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_ino, align 8
  %owner = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %24, i32 0, i32 5
  %32 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %owner, align 8
  %uuid = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %24, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 54
  %33 = call ptr @memcpy(ptr %uuid, ptr %sb_meta_uuid, i32 16)
  %34 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_addr, align 4
  %36 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_features.i, align 8
  %and.i.i = and i64 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.false20.i, label %if.end11.cond.end.i_crit_edge

if.end11.cond.end.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end11.thread:                                  ; preds = %if.end
  %38 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_features.i, align 8
  %and.i.i39 = and i64 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i39)
  %tobool.i.not.i40 = icmp eq i64 %and.i.i39, 0
  br i1 %tobool.i.not.i40, label %if.end11.thread.cond.end21.i_crit_edge, label %cond.false.i

if.end11.thread.cond.end21.i_crit_edge:           ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21.i

cond.false.i:                                     ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 280) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end11.cond.end.i_crit_edge
  %hdr.sroa.0.04246 = phi i32 [ 1480864326, %cond.false.i ], [ 1480869427, %if.end11.cond.end.i_crit_edge ]
  %40 = phi ptr [ %24, %cond.false.i ], [ %35, %if.end11.cond.end.i_crit_edge ]
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %hdr.sroa.0.04246, ptr %40, align 8
  %firstdb6.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %firstdb6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %firstdb6.i, align 8
  %nvalid8.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %nvalid8.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %nvalid8.i, align 4
  %nused10.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %40, i32 0, i32 3
  %44 = ptrtoint ptr %nused10.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %nused10.i, align 8
  br label %xfs_dir2_free_hdr_to_disk.exit

cond.false20.i:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 287) #8
  br label %cond.end21.i

cond.end21.i:                                     ; preds = %cond.false20.i, %if.end11.thread.cond.end21.i_crit_edge
  %hdr.sroa.0.04149 = phi i32 [ 1480869427, %cond.false20.i ], [ 1480864326, %if.end11.thread.cond.end21.i_crit_edge ]
  %45 = phi ptr [ %35, %cond.false20.i ], [ %24, %if.end11.thread.cond.end21.i_crit_edge ]
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %hdr.sroa.0.04149, ptr %45, align 4
  %firstdb27.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %firstdb27.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %firstdb27.i, align 4
  %nvalid30.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %nvalid30.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %nvalid30.i, align 4
  %nused33.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %45, i32 0, i32 3
  %49 = ptrtoint ptr %nused33.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %nused33.i, align 4
  br label %xfs_dir2_free_hdr_to_disk.exit

xfs_dir2_free_hdr_to_disk.exit:                   ; preds = %cond.end21.i, %cond.end.i
  %50 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bp, align 4
  %52 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir2_free_hdr_to_disk.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_free_hdr_to_disk(ptr nocapture noundef readonly %mp, ptr nocapture noundef writeonly %to, ptr nocapture noundef readonly %from) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %2 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %from, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %3)
  %cmp = icmp eq i32 %3, 1480869427
  br i1 %cmp, label %if.then.cond.end_crit_edge, label %cond.false, !prof !137

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 280) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %4 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %from, align 4
  %6 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %to, align 8
  %firstdb = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %from, i32 0, i32 1
  %7 = ptrtoint ptr %firstdb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %firstdb, align 4
  %firstdb6 = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %to, i32 0, i32 1
  %9 = ptrtoint ptr %firstdb6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %firstdb6, align 8
  %nvalid = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %from, i32 0, i32 2
  %10 = ptrtoint ptr %nvalid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvalid, align 4
  %nvalid8 = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %to, i32 0, i32 2
  %12 = ptrtoint ptr %nvalid8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nvalid8, align 4
  %nused = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %from, i32 0, i32 3
  %13 = ptrtoint ptr %nused to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nused, align 4
  %nused10 = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %to, i32 0, i32 3
  %15 = ptrtoint ptr %nused10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nused10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %3)
  %cmp12 = icmp eq i32 %3, 1480864326
  br i1 %cmp12, label %if.else.cond.end21_crit_edge, label %cond.false20, !prof !137

if.else.cond.end21_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 287) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %if.else.cond.end21_crit_edge
  %16 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %from, align 4
  %18 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %to, align 4
  %firstdb25 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %from, i32 0, i32 1
  %19 = ptrtoint ptr %firstdb25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %firstdb25, align 4
  %firstdb27 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %to, i32 0, i32 1
  %21 = ptrtoint ptr %firstdb27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %firstdb27, align 4
  %nvalid28 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %from, i32 0, i32 2
  %22 = ptrtoint ptr %nvalid28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nvalid28, align 4
  %nvalid30 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %to, i32 0, i32 2
  %24 = ptrtoint ptr %nvalid30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nvalid30, align 4
  %nused31 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %from, i32 0, i32 3
  %25 = ptrtoint ptr %nused31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nused31, align 4
  %nused33 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %to, i32 0, i32 3
  %27 = ptrtoint ptr %nused33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %nused33, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end21, %cond.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_free_log_bests(ptr nocapture noundef readonly %args, ptr nocapture noundef readonly %hdr, ptr noundef %bp, i32 noundef %first, i32 noundef %last) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %3, label %cond.false [
    i32 1480869427, label %entry.cond.end_crit_edge
    i32 1480864326, label %entry.cond.end_crit_edge16
  ]

entry.cond.end_crit_edge16:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 373) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge16
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %bests = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 4
  %7 = ptrtoint ptr %bests to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bests, align 4
  %arrayidx = getelementptr i16, ptr %8, i32 %first
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx7 = getelementptr i16, ptr %8, i32 %last
  %sub.ptr.lhs.cast8 = ptrtoint ptr %arrayidx7 to i32
  %sub.ptr.sub10 = sub i32 1, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub10, %sub.ptr.lhs.cast8
  tail call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_free_log_header(ptr nocapture noundef readonly %args, ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %3, label %cond.false [
    i32 1480869427, label %entry.cond.end_crit_edge
    i32 1480864326, label %entry.cond.end_crit_edge8
  ]

entry.cond.end_crit_edge8:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 393) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %free_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %free_hdr_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %free_hdr_size, align 4
  %sub = add i32 %10, -1
  tail call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %bp, i32 noundef 0, i32 noundef %sub) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir3_leaf_log_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leaf_lasthash(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %bp, ptr noundef writeonly %count) local_unnamed_addr #0 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %0 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %2, ptr noundef nonnull %leafhdr, ptr noundef %4) #8
  %magic = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %magic, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %6, label %cond.false.critedge [
    i16 -11521, label %entry.cond.end_crit_edge
    i16 15871, label %entry.cond.end_crit_edge26
    i16 -11535, label %entry.cond.end_crit_edge27
    i16 15857, label %entry.cond.end_crit_edge28
  ]

entry.cond.end_crit_edge28:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge27:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 611) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge26, %entry.cond.end_crit_edge27, %entry.cond.end_crit_edge28
  %tobool16.not = icmp eq ptr %count, null
  br i1 %tobool16.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %count17 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %8 = ptrtoint ptr %count17 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count17, align 2
  %conv18 = zext i16 %9 to i32
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv18, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %count19 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %11 = ptrtoint ptr %count19 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool20.not = icmp eq i16 %12, 0
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %13 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ents, align 4
  %conv24 = zext i16 %12 to i32
  %sub = add nsw i32 %conv24, -1
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.end22 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_leaf_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leafn_lookup_int(ptr noundef %bp, ptr noundef %args, ptr nocapture noundef writeonly %indexp, ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %0 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @xfs_dir2_leafn_lookup_for_addname(ptr noundef %bp, ptr noundef %args, ptr noundef %indexp, ptr noundef %state)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @xfs_dir2_leafn_lookup_for_entry(ptr noundef %bp, ptr noundef %args, ptr noundef %indexp, ptr noundef %state)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_leafn_lookup_for_addname(ptr noundef %bp, ptr noundef %args, ptr nocapture noundef writeonly %indexp, ptr nocapture noundef %state) #4 align 64 {
entry:
  %curbp = alloca ptr, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curbp) #8
  %0 = ptrtoint ptr %curbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %curbp, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %1 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %7, ptr noundef nonnull %leafhdr, ptr noundef %9) #8
  %call.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %3, ptr noundef %bp) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

entry.xfs_dir3_leaf_check.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %14 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %15, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %11, ptr noundef %13, i32 noundef %shl.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %entry.xfs_dir3_leaf_check.exit_crit_edge
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not = icmp eq i16 %17, 0
  br i1 %cmp.not, label %cond.false, label %xfs_dir3_leaf_check.exit.cond.end_crit_edge, !prof !145

xfs_dir3_leaf_check.exit.cond.end_crit_edge:      ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 655) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_dir3_leaf_check.exit.cond.end_crit_edge
  %call = call i32 @xfs_dir2_leaf_search_hash(ptr noundef %args, ptr noundef %bp) #8
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 5
  %18 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  %20 = ptrtoint ptr %extrablk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extrablk, align 8
  %22 = ptrtoint ptr %curbp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %curbp, align 4
  %blkno = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blkno, align 4
  %b_addr7 = getelementptr inbounds %struct.xfs_buf, ptr %21, i32 0, i32 16
  %25 = ptrtoint ptr %b_addr7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_addr7, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %28, label %cond.false21 [
    i32 1480869427, label %if.then.if.end_crit_edge
    i32 1480864326, label %if.then.if.end_crit_edge226
  ]

if.then.if.end_crit_edge226:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false21:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 670) #8
  br label %if.end

if.end:                                           ; preds = %cond.false21, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge226, %cond.end.if.end_crit_edge
  %curfdb.0 = phi i32 [ %24, %if.then.if.end_crit_edge ], [ %24, %cond.false21 ], [ -1, %cond.end.if.end_crit_edge ], [ %24, %if.then.if.end_crit_edge226 ]
  %free.0 = phi ptr [ %26, %if.then.if.end_crit_edge ], [ %26, %cond.false21 ], [ null, %cond.end.if.end_crit_edge ], [ %26, %if.then.if.end_crit_edge226 ]
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %30 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %namelen, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 61
  %32 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add i32 %31, -1
  %sub.i = add i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add i32 %or.i, 1
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count, align 2
  %conv25204 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv25204)
  %cmp26205 = icmp slt i32 %call, %conv25204
  br i1 %cmp26205, label %land.rhs.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.rhs.lr.ph:                                   ; preds = %if.end
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %36 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ents, align 4
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %37, i32 %call
  %hashval28 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %lep.0212 = phi ptr [ %arrayidx, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc.land.rhs_crit_edge ]
  %curdb.0211 = phi i32 [ -1, %land.rhs.lr.ph ], [ %curdb.1, %for.inc.land.rhs_crit_edge ]
  %index.0209 = phi i32 [ %call, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %free.1208 = phi ptr [ %free.0, %land.rhs.lr.ph ], [ %free.4, %for.inc.land.rhs_crit_edge ]
  %curfdb.1206 = phi i32 [ %curfdb.0, %land.rhs.lr.ph ], [ %curfdb.3, %for.inc.land.rhs_crit_edge ]
  %38 = ptrtoint ptr %lep.0212 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lep.0212, align 4
  %40 = ptrtoint ptr %hashval28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hashval28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp29 = icmp eq i32 %39, %41
  br i1 %cmp29, label %for.body, label %land.rhs.out_crit_edge

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body:                                         ; preds = %land.rhs
  %address = getelementptr inbounds %struct.xfs_dir2_leaf_entry, ptr %lep.0212, i32 0, i32 1
  %42 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp31 = icmp eq i32 %43, 0
  br i1 %cmp31, label %for.body.for.inc_crit_edge, label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %44 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %args, align 8
  %conv.i.i = zext i32 %43 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 3
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %47 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %curdb.0211, i32 %conv1.i.i)
  %cmp37.not = icmp eq i32 %curdb.0211, %conv1.i.i
  br i1 %cmp37.not, label %if.end34.for.inc_crit_edge, label %if.then39

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then39:                                        ; preds = %if.end34
  %shr.i2.i174 = lshr i64 68719476736, %sh_prom.i.i
  %conv1.i.i175 = trunc i64 %shr.i2.i174 to i32
  %free_max_bests.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %45, i32 0, i32 12
  %48 = ptrtoint ptr %free_max_bests.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %free_max_bests.i, align 4
  %div.i = udiv i32 %conv1.i.i, %49
  %add.i = add i32 %div.i, %conv1.i.i175
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %curfdb.1206)
  %cmp42.not = icmp eq i32 %add.i, %curfdb.1206
  br i1 %cmp42.not, label %if.then39.if.end55_crit_edge, label %if.then44

if.then39.if.end55_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then44:                                        ; preds = %if.then39
  %50 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %curbp, align 4
  %tobool45.not = icmp eq ptr %51, null
  br i1 %tobool45.not, label %if.then44.if.end47_crit_edge, label %if.then46

if.then44.if.end47_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef nonnull %51) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then44.if.end47_crit_edge
  %52 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %55 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %57 to i32
  %sub.i176 = sub nsw i32 %conv.i, %conv1.i
  %shl.i177 = shl i32 %add.i, %sub.i176
  %call.i178 = call fastcc i32 @__xfs_dir3_free_read(ptr noundef %5, ptr noundef %3, i32 noundef %shl.i177, i32 noundef 0, ptr noundef nonnull %curbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool51.not = icmp eq i32 %call.i178, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.cleanup107_crit_edge

if.end47.cleanup107_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.end53:                                         ; preds = %if.end47
  %58 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curbp, align 4
  %b_addr54 = getelementptr inbounds %struct.xfs_buf, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %b_addr54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_addr54, align 4
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 8
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %63, i32 0, i32 61
  %64 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end53
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %61, align 8
  %firstdb.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %61, i32 0, i32 1
  %68 = ptrtoint ptr %firstdb.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %firstdb.i.i, align 8
  %nvalid.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %61, i32 0, i32 2
  %70 = ptrtoint ptr %nvalid.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nvalid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %67)
  %cmp.i.i = icmp eq i32 %67, 1480869427
  br i1 %cmp.i.i, label %if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge, label %cond.false.i.i, !prof !137

if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i

if.else.i.i:                                      ; preds = %if.end53
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %61, align 4
  %firstdb16.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %61, i32 0, i32 1
  %74 = ptrtoint ptr %firstdb16.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %firstdb16.i.i, align 4
  %nvalid19.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %61, i32 0, i32 2
  %76 = ptrtoint ptr %nvalid19.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nvalid19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %73)
  %cmp28.i.i = icmp eq i32 %73, 1480864326
  br i1 %cmp28.i.i, label %if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge, label %cond.false36.i.i, !prof !137

if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i

cond.false36.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i

xfs_dir2_free_hdr_from_disk.exit.i:               ; preds = %cond.false36.i.i, %if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge, %cond.false.i.i, %if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge
  %hdr.sroa.11.0.i = phi i32 [ %77, %if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge ], [ %77, %cond.false36.i.i ], [ %71, %if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge ], [ %71, %cond.false.i.i ]
  %hdr.sroa.5.0.i = phi i32 [ %75, %if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge ], [ %75, %cond.false36.i.i ], [ %69, %if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge ], [ %69, %cond.false.i.i ]
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 8
  %m_dir_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %m_dir_geo.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %m_dir_geo.i, align 4
  %free_max_bests.i180 = getelementptr inbounds %struct.xfs_da_geometry, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %free_max_bests.i180 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %free_max_bests.i180, align 4
  %rem.i = urem i32 %hdr.sroa.5.0.i, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %xfs_dir2_free_hdr_from_disk.exit.i.cond.end.i_crit_edge, label %cond.false.i, !prof !137

xfs_dir2_free_hdr_from_disk.exit.i.cond.end.i_crit_edge: ; preds = %xfs_dir2_free_hdr_from_disk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %xfs_dir2_free_hdr_from_disk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 586) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %xfs_dir2_free_hdr_from_disk.exit.i.cond.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %hdr.sroa.5.0.i, i32 %conv1.i.i)
  %cmp4.not.i = icmp ugt i32 %hdr.sroa.5.0.i, %conv1.i.i
  br i1 %cmp4.not.i, label %cond.false12.i, label %cond.end.i.cond.end13.i_crit_edge, !prof !145

cond.end.i.cond.end13.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13.i

cond.false12.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 587) #8
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.false12.i, %cond.end.i.cond.end13.i_crit_edge
  %add.i181 = add i32 %hdr.sroa.5.0.i, %hdr.sroa.11.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i181, i32 %conv1.i.i)
  %cmp15.i = icmp ugt i32 %add.i181, %conv1.i.i
  br i1 %cmp15.i, label %cond.end13.i.if.end55_crit_edge, label %cond.false23.i, !prof !137

cond.end13.i.if.end55_crit_edge:                  ; preds = %cond.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

cond.false23.i:                                   ; preds = %cond.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 588) #8
  br label %if.end55

if.end55:                                         ; preds = %cond.false23.i, %cond.end13.i.if.end55_crit_edge, %if.then39.if.end55_crit_edge
  %free.2 = phi ptr [ %free.1208, %if.then39.if.end55_crit_edge ], [ %61, %cond.end13.i.if.end55_crit_edge ], [ %61, %cond.false23.i ]
  %84 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %args, align 8
  %free_max_bests.i182 = getelementptr inbounds %struct.xfs_da_geometry, ptr %85, i32 0, i32 12
  %86 = ptrtoint ptr %free_max_bests.i182 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %free_max_bests.i182, align 4
  %rem.i183 = urem i32 %conv1.i.i, %87
  %88 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %m_features.i.i, align 8
  %and.i.i185 = and i64 %89, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i185)
  %tobool.i.not.i186 = icmp eq i64 %and.i.i185, 0
  br i1 %tobool.i.not.i186, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end55
  %90 = ptrtoint ptr %free.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %free.2, align 8
  %bests.i = getelementptr inbounds %struct.xfs_dir3_free, ptr %free.2, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %91)
  %cmp.i187 = icmp eq i32 %91, 1480869427
  br i1 %cmp.i187, label %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, label %cond.false.i188, !prof !137

if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit

cond.false.i188:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.end55
  %92 = ptrtoint ptr %free.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %free.2, align 4
  %bests24.i = getelementptr inbounds %struct.xfs_dir2_free, ptr %free.2, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %93)
  %cmp28.i = icmp eq i32 %93, 1480864326
  br i1 %cmp28.i, label %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, label %cond.false36.i, !prof !137

if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit

cond.false36.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit

xfs_dir2_free_hdr_from_disk.exit:                 ; preds = %cond.false36.i, %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, %cond.false.i188, %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge
  %freehdr.sroa.14.0 = phi ptr [ %bests24.i, %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge ], [ %bests24.i, %cond.false36.i ], [ %bests.i, %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge ], [ %bests.i, %cond.false.i188 ]
  %arrayidx58 = getelementptr i16, ptr %freehdr.sroa.14.0, i32 %rem.i183
  %94 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %95)
  %cmp60 = icmp eq i16 %95, -1
  br i1 %cmp60, label %__here, label %if.end75, !prof !145

__here:                                           ; preds = %xfs_dir2_free_hdr_from_disk.exit
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !146
  call void @xfs_corruption_error(ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef %7, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 736, ptr noundef blockaddress(@xfs_dir2_leafn_lookup_for_addname, %__here)) #8
  br i1 %cmp42.not, label %__here.cleanup107_crit_edge, label %if.then73

__here.cleanup107_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.then73:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %curbp, align 4
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %97) #8
  br label %cleanup107

if.end75:                                         ; preds = %xfs_dir2_free_hdr_from_disk.exit
  %conv59 = zext i16 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %conv59)
  %cmp79.not = icmp sgt i32 %add3.i, %conv59
  br i1 %cmp79.not, label %if.end75.for.inc_crit_edge, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end75.for.inc_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end75.for.inc_crit_edge, %if.end34.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %curfdb.3 = phi i32 [ %curfdb.1206, %for.body.for.inc_crit_edge ], [ %curfdb.1206, %if.end34.for.inc_crit_edge ], [ %add.i, %if.end75.for.inc_crit_edge ]
  %free.4 = phi ptr [ %free.1208, %for.body.for.inc_crit_edge ], [ %free.1208, %if.end34.for.inc_crit_edge ], [ %free.2, %if.end75.for.inc_crit_edge ]
  %curdb.1 = phi i32 [ %curdb.0211, %for.body.for.inc_crit_edge ], [ %curdb.0211, %if.end34.for.inc_crit_edge ], [ %conv1.i.i, %if.end75.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0212, i32 1
  %inc = add nsw i32 %index.0209, 1
  %98 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %count, align 2
  %conv25 = zext i16 %99 to i32
  %cmp26 = icmp slt i32 %inc, %conv25
  br i1 %cmp26, label %for.inc.land.rhs_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

out:                                              ; preds = %for.inc.out_crit_edge, %if.end75.out_crit_edge, %land.rhs.out_crit_edge, %if.end.out_crit_edge
  %index.0.lcssa = phi i32 [ %call, %if.end.out_crit_edge ], [ %index.0209, %if.end75.out_crit_edge ], [ %index.0209, %land.rhs.out_crit_edge ], [ %inc, %for.inc.out_crit_edge ]
  %curfdb.4 = phi i32 [ %curfdb.0, %if.end.out_crit_edge ], [ %add.i, %if.end75.out_crit_edge ], [ %curfdb.1206, %land.rhs.out_crit_edge ], [ %curfdb.3, %for.inc.out_crit_edge ]
  %fi.3 = phi i32 [ -1, %if.end.out_crit_edge ], [ %rem.i183, %if.end75.out_crit_edge ], [ -1, %land.rhs.out_crit_edge ], [ -1, %for.inc.out_crit_edge ]
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %100 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %op_flags, align 8
  %and = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %cond.false92, label %out.cond.end93_crit_edge, !prof !145

out.cond.end93_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end93

cond.false92:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 749) #8
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %out.cond.end93_crit_edge
  %102 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %curbp, align 4
  %tobool94.not = icmp eq ptr %103, null
  br i1 %tobool94.not, label %if.else, label %if.then95

if.then95:                                        ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %extravalid, align 1
  %extrablk97 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  %105 = ptrtoint ptr %extrablk97 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %103, ptr %extrablk97, align 8
  %index100 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 3
  %106 = ptrtoint ptr %index100 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %fi.3, ptr %index100, align 8
  %blkno102 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 1
  %107 = ptrtoint ptr %blkno102 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %curfdb.4, ptr %blkno102, align 4
  %magic104 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 5
  %108 = ptrtoint ptr %magic104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1480864326, ptr %magic104, align 8
  br label %if.end106

if.else:                                          ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %extravalid, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.else, %if.then95
  %110 = ptrtoint ptr %indexp to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %index.0.lcssa, ptr %indexp, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %if.end106, %if.then73, %__here.cleanup107_crit_edge, %if.end47.cleanup107_crit_edge
  %retval.3 = phi i32 [ -2, %if.end106 ], [ -117, %__here.cleanup107_crit_edge ], [ -117, %if.then73 ], [ %call.i178, %if.end47.cleanup107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curbp) #8
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_leafn_lookup_for_entry(ptr noundef %bp, ptr noundef %args, ptr nocapture noundef writeonly %indexp, ptr nocapture noundef %state) #4 align 64 {
entry:
  %curbp = alloca ptr, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curbp) #8
  %0 = ptrtoint ptr %curbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %curbp, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %1 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %7, ptr noundef nonnull %leafhdr, ptr noundef %9) #8
  %call.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %3, ptr noundef %bp) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

entry.xfs_dir3_leaf_check.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %14 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %15, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %11, ptr noundef %13, i32 noundef %shl.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %entry.xfs_dir3_leaf_check.exit_crit_edge
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp2 = icmp eq i16 %17, 0
  br i1 %cmp2, label %__here, label %if.end

__here:                                           ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !147
  call void @__xfs_buf_mark_corrupt(ptr noundef %bp, ptr noundef blockaddress(@xfs_dir2_leafn_lookup_for_entry, %__here)) #8
  br label %cleanup

if.end:                                           ; preds = %xfs_dir3_leaf_check.exit
  %call = call i32 @xfs_dir2_leaf_search_hash(ptr noundef %args, ptr noundef %bp) #8
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 5
  %18 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  %20 = ptrtoint ptr %extrablk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extrablk, align 8
  %22 = ptrtoint ptr %curbp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %curbp, align 4
  %blkno = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blkno, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %curdb.0 = phi i32 [ %24, %if.then4 ], [ -1, %if.end.if.end7_crit_edge ]
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %count, align 2
  %conv9232 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv9232)
  %cmp10233 = icmp slt i32 %call, %conv9232
  br i1 %cmp10233, label %land.rhs.lr.ph, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end7
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %27 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ents, align 4
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %28, i32 %call
  %hashval12 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %cmpresult = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %blkno28 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 1
  %extrablk37 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  %inumber82 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %index91 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 3
  %magic = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %hashval12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hashval12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp13258 = icmp eq i32 %30, %32
  br i1 %cmp13258, label %land.rhs.lr.ph.for.body_crit_edge, label %land.rhs.lr.ph.land.rhs.for.end.loopexit_crit_edge_crit_edge

land.rhs.lr.ph.land.rhs.for.end.loopexit_crit_edge_crit_edge: ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.for.end.loopexit_crit_edge

land.rhs.lr.ph.for.body_crit_edge:                ; preds = %land.rhs.lr.ph
  br label %for.body

land.rhs:                                         ; preds = %for.inc
  %incdec.ptr = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0236259, i32 1
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr, align 4
  %35 = ptrtoint ptr %hashval12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hashval12, align 8
  %cmp13 = icmp eq i32 %34, %36
  br i1 %cmp13, label %land.rhs.for.body_crit_edge, label %land.rhs.land.rhs.for.end.loopexit_crit_edge_crit_edge

land.rhs.land.rhs.for.end.loopexit_crit_edge_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.for.end.loopexit_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

land.rhs.for.end.loopexit_crit_edge:              ; preds = %land.rhs.land.rhs.for.end.loopexit_crit_edge_crit_edge, %land.rhs.lr.ph.land.rhs.for.end.loopexit_crit_edge_crit_edge
  %.lcssa = phi i16 [ %26, %land.rhs.lr.ph.land.rhs.for.end.loopexit_crit_edge_crit_edge ], [ %100, %land.rhs.land.rhs.for.end.loopexit_crit_edge_crit_edge ]
  %curdb.1235.lcssa = phi i32 [ %curdb.0, %land.rhs.lr.ph.land.rhs.for.end.loopexit_crit_edge_crit_edge ], [ %curdb.3, %land.rhs.land.rhs.for.end.loopexit_crit_edge_crit_edge ]
  %index.0234.lcssa = phi i32 [ %call, %land.rhs.lr.ph.land.rhs.for.end.loopexit_crit_edge_crit_edge ], [ %inc, %land.rhs.land.rhs.for.end.loopexit_crit_edge_crit_edge ]
  %.pre242 = zext i16 %.lcssa to i32
  br label %for.end

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %land.rhs.lr.ph.for.body_crit_edge
  %index.0234261 = phi i32 [ %inc, %land.rhs.for.body_crit_edge ], [ %call, %land.rhs.lr.ph.for.body_crit_edge ]
  %curdb.1235260 = phi i32 [ %curdb.3, %land.rhs.for.body_crit_edge ], [ %curdb.0, %land.rhs.lr.ph.for.body_crit_edge ]
  %lep.0236259 = phi ptr [ %incdec.ptr, %land.rhs.for.body_crit_edge ], [ %arrayidx, %land.rhs.lr.ph.for.body_crit_edge ]
  %address = getelementptr inbounds %struct.xfs_dir2_leaf_entry, ptr %lep.0236259, i32 0, i32 1
  %37 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp15 = icmp eq i32 %38, 0
  br i1 %cmp15, label %for.body.for.inc_crit_edge, label %if.end18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %39 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %args, align 8
  %conv.i.i = zext i32 %38 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 3
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %42 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %curdb.1235260, i32 %conv1.i.i)
  %cmp21.not = icmp eq i32 %curdb.1235260, %conv1.i.i
  br i1 %cmp21.not, label %if.end18.if.end55_crit_edge, label %if.then23

if.end18.if.end55_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then23:                                        ; preds = %if.end18
  %43 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %curbp, align 4
  %tobool24.not = icmp eq ptr %44, null
  br i1 %tobool24.not, label %if.then23.if.end32_crit_edge, label %land.lhs.true

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then23
  %45 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmpresult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp25 = icmp eq i32 %46, 0
  br i1 %cmp25, label %land.lhs.true.if.then31_crit_edge, label %lor.lhs.false

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

lor.lhs.false:                                    ; preds = %land.lhs.true
  %47 = ptrtoint ptr %blkno28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %blkno28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %curdb.1235260, i32 %48)
  %cmp29.not = icmp eq i32 %curdb.1235260, %48
  br i1 %cmp29.not, label %lor.lhs.false.land.lhs.true36_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

lor.lhs.false.land.lhs.true36_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %land.lhs.true.if.then31_crit_edge
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef nonnull %44) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then23.if.end32_crit_edge
  %49 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %cmpresult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp34.not = icmp eq i32 %.pr, 0
  br i1 %cmp34.not, label %if.end32.if.else_crit_edge, label %if.end32.land.lhs.true36_crit_edge

if.end32.land.lhs.true36_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true36:                                  ; preds = %if.end32.land.lhs.true36_crit_edge, %lor.lhs.false.land.lhs.true36_crit_edge
  %50 = ptrtoint ptr %blkno28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %blkno28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv1.i.i)
  %cmp39 = icmp eq i32 %51, %conv1.i.i
  br i1 %cmp39, label %if.then41, label %land.lhs.true36.if.else_crit_edge

land.lhs.true36.if.else_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then41:                                        ; preds = %land.lhs.true36
  %52 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool43.not = icmp eq i8 %53, 0
  br i1 %tobool43.not, label %cond.false, label %if.then41.cond.end_crit_edge, !prof !145

if.then41.cond.end_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 857) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then41.cond.end_crit_edge
  %54 = ptrtoint ptr %extrablk37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extrablk37, align 8
  %56 = ptrtoint ptr %curbp to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %curbp, align 4
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true36.if.else_crit_edge, %if.end32.if.else_crit_edge
  %57 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %60 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %62 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i226 = shl i32 %conv1.i.i, %sub.i
  %call50 = call i32 @xfs_dir3_data_read(ptr noundef %5, ptr noundef %3, i32 noundef %shl.i226, i32 noundef 0, ptr noundef nonnull %curbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.else.if.end54_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %cond.end
  %63 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %curbp, align 4
  call void @xfs_dir3_data_check(ptr noundef %3, ptr noundef %64) #8
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end18.if.end55_crit_edge
  %curdb.2 = phi i32 [ %conv1.i.i, %if.end54 ], [ %curdb.1235260, %if.end18.if.end55_crit_edge ]
  %65 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %curbp, align 4
  %b_addr56 = getelementptr inbounds %struct.xfs_buf, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %b_addr56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_addr56, align 4
  %69 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %args, align 8
  %71 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %address, align 4
  %shl.i.i227 = shl i32 %72, 3
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 4
  %sub.i.i = add i32 %74, -1
  %conv1.i.i228 = and i32 %sub.i.i, %shl.i.i227
  %add.ptr = getelementptr i8, ptr %68, i32 %conv1.i.i228
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %75 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %namelen, align 8
  %conv60 = zext i8 %76 to i32
  %call61 = call i32 @xfs_dir2_compname(ptr noundef %args, ptr noundef %name, i32 noundef %conv60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end55.for.inc_crit_edge, label %land.lhs.true64

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true64:                                  ; preds = %if.end55
  %77 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmpresult, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call61, i32 %78)
  %cmp66.not = icmp eq i32 %call61, %78
  br i1 %cmp66.not, label %land.lhs.true64.for.inc_crit_edge, label %if.then68

land.lhs.true64.for.inc_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then68:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp70.not = icmp eq i32 %78, 0
  br i1 %cmp70.not, label %if.then68.if.end80_crit_edge, label %land.lhs.true72

if.then68.if.end80_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true72:                                  ; preds = %if.then68
  %79 = ptrtoint ptr %blkno28 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blkno28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %curdb.2, i32 %80)
  %cmp75.not = icmp eq i32 %curdb.2, %80
  br i1 %cmp75.not, label %land.lhs.true72.if.end80_crit_edge, label %if.then77

land.lhs.true72.if.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then77:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %extrablk37 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %extrablk37, align 8
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %82) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %land.lhs.true72.if.end80_crit_edge, %if.then68.if.end80_crit_edge
  %83 = ptrtoint ptr %cmpresult to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call61, ptr %cmpresult, align 4
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %add.ptr, align 8
  %86 = ptrtoint ptr %inumber82 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %inumber82, align 8
  %call83 = call zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef %7, ptr noundef %add.ptr) #8
  %87 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %call83, ptr %filetype, align 4
  %88 = ptrtoint ptr %indexp to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %index.0234261, ptr %indexp, align 4
  %89 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %extravalid, align 1
  %90 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %curbp, align 4
  %92 = ptrtoint ptr %extrablk37 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %extrablk37, align 8
  %93 = ptrtoint ptr %blkno28 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %curdb.2, ptr %blkno28, align 4
  %b_addr89 = getelementptr inbounds %struct.xfs_buf, ptr %91, i32 0, i32 16
  %94 = ptrtoint ptr %b_addr89 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_addr89, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %95 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %96 = ptrtoint ptr %index91 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub.ptr.sub, ptr %index91, align 8
  %97 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1480864324, ptr %magic, align 8
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %91, i32 0, i32 35
  %98 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @xfs_dir3_data_buf_ops, ptr %b_ops, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %5, ptr noundef %91, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61)
  %cmp93 = icmp eq i32 %call61, 1
  br i1 %cmp93, label %if.end80.cleanup_crit_edge, label %if.end80.for.inc_crit_edge

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.end80.for.inc_crit_edge, %land.lhs.true64.for.inc_crit_edge, %if.end55.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %curdb.3 = phi i32 [ %curdb.1235260, %for.body.for.inc_crit_edge ], [ %curdb.2, %if.end80.for.inc_crit_edge ], [ %curdb.2, %land.lhs.true64.for.inc_crit_edge ], [ %curdb.2, %if.end55.for.inc_crit_edge ]
  %inc = add nsw i32 %index.0234261, 1
  %99 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %count, align 2
  %conv9 = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv9)
  %cmp10 = icmp slt i32 %inc, %conv9
  br i1 %cmp10, label %land.rhs, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.le = zext i16 %100 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %land.rhs.for.end.loopexit_crit_edge, %if.end7.for.end_crit_edge
  %conv9.le.pre-phi = phi i32 [ %conv9232, %if.end7.for.end_crit_edge ], [ %.pre242, %land.rhs.for.end.loopexit_crit_edge ], [ %conv9.le, %for.end.loopexit ]
  %index.0.lcssa = phi i32 [ %call, %if.end7.for.end_crit_edge ], [ %index.0234.lcssa, %land.rhs.for.end.loopexit_crit_edge ], [ %inc, %for.end.loopexit ]
  %curdb.1.lcssa = phi i32 [ %curdb.0, %if.end7.for.end_crit_edge ], [ %curdb.1235.lcssa, %land.rhs.for.end.loopexit_crit_edge ], [ %curdb.3, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa, i32 %conv9.le.pre-phi)
  %cmp100 = icmp eq i32 %index.0.lcssa, %conv9.le.pre-phi
  br i1 %cmp100, label %for.end.cond.end111_crit_edge, label %lor.rhs

for.end.cond.end111_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end111

lor.rhs:                                          ; preds = %for.end
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %101 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %op_flags, align 8
  %and = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool102.not = icmp eq i32 %and, 0
  br i1 %tobool102.not, label %cond.false110, label %lor.rhs.cond.end111_crit_edge, !prof !145

lor.rhs.cond.end111_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end111

cond.false110:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 903) #8
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false110, %lor.rhs.cond.end111_crit_edge, %for.end.cond.end111_crit_edge
  %103 = ptrtoint ptr %curbp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %curbp, align 4
  %tobool112.not = icmp eq ptr %104, null
  br i1 %tobool112.not, label %if.else136, label %if.then113

if.then113:                                       ; preds = %cond.end111
  %cmpresult114 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %105 = ptrtoint ptr %cmpresult114 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cmpresult114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp115 = icmp eq i32 %106, 0
  br i1 %cmp115, label %if.then117, label %if.else128

if.then117:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %extravalid, align 1
  %extrablk119 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  %108 = ptrtoint ptr %extrablk119 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %104, ptr %extrablk119, align 8
  %index122 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 3
  %109 = ptrtoint ptr %index122 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %index122, align 8
  %blkno124 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 1
  %110 = ptrtoint ptr %blkno124 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %curdb.1.lcssa, ptr %blkno124, align 4
  %magic126 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7, i32 5
  %111 = ptrtoint ptr %magic126 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1480864324, ptr %magic126, align 8
  %b_ops127 = getelementptr inbounds %struct.xfs_buf, ptr %104, i32 0, i32 35
  %112 = ptrtoint ptr %b_ops127 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @xfs_dir3_data_buf_ops, ptr %b_ops127, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %5, ptr noundef nonnull %104, i32 noundef 11) #8
  br label %if.end138

if.else128:                                       ; preds = %if.then113
  %extrablk129 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 7
  %113 = ptrtoint ptr %extrablk129 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %extrablk129, align 8
  %cmp131.not = icmp eq ptr %114, %104
  br i1 %cmp131.not, label %if.else128.if.end138_crit_edge, label %if.then133

if.else128.if.end138_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then133:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef nonnull %104) #8
  br label %if.end138

if.else136:                                       ; preds = %cond.end111
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %extravalid to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %extravalid, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.else136, %if.then133, %if.else128.if.end138_crit_edge, %if.then117
  %116 = ptrtoint ptr %indexp to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %index.0.lcssa, ptr %indexp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %if.end80.cleanup_crit_edge, %if.else.cleanup_crit_edge, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ -2, %if.end138 ], [ -17, %if.end80.cleanup_crit_edge ], [ %call50, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curbp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leafn_order(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %leaf1_bp, ptr nocapture noundef readonly %leaf2_bp) local_unnamed_addr #0 align 64 {
entry:
  %hdr1 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %hdr2 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %leaf1_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %b_addr1 = getelementptr inbounds %struct.xfs_buf, ptr %leaf2_bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr1) #8
  %4 = call ptr @memset(ptr %hdr1, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr2) #8
  %5 = call ptr @memset(ptr %hdr2, i32 255, i32 20)
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %7, ptr noundef nonnull %hdr1, ptr noundef %1) #8
  %8 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dp, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %9, ptr noundef nonnull %hdr2, ptr noundef %3) #8
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1, i32 0, i32 5
  %10 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ents, align 4
  %ents3 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2, i32 0, i32 5
  %12 = ptrtoint ptr %ents3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ents3, align 4
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count, align 2
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not = icmp eq i16 %15, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %count5 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2, i32 0, i32 3
  %16 = ptrtoint ptr %count5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count5, align 2
  %conv6 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp7.not = icmp eq i16 %17, 0
  br i1 %cmp7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true9

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp12 = icmp ult i32 %19, %21
  br i1 %cmp12, label %land.lhs.true9.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %sub = add nsw i32 %conv6, -1
  %arrayidx16 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %13, i32 %sub
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16, align 4
  %sub20 = add nsw i32 %conv, -1
  %arrayidx21 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %11, i32 %sub20
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp23 = icmp ult i32 %23, %25
  br i1 %cmp23, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %land.lhs.true9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leafn_split(ptr noundef %state, ptr noundef %oldblk, ptr noundef %newblk) local_unnamed_addr #0 align 64 {
entry:
  %leafhdr.i74 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %leafhdr.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %hdr1.i.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %hdr2.i.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %hdr1.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %hdr2.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %blkno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blkno) #8
  %0 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %blkno, align 4, !annotation !138
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp2, align 8
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %oldblk, i32 0, i32 5
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54015, i32 %6)
  %cmp = icmp eq i32 %6, 54015
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !137

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 1433) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call = call i32 @xfs_da_grow_inode(ptr noundef %2, ptr noundef nonnull %blkno) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %9 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blkno, align 4
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %12 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %14 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shr.i = lshr i32 %10, %sub.i
  %call6 = call i32 @xfs_dir3_leaf_get_buf(ptr noundef %2, i32 noundef %shr.i, ptr noundef %newblk, i16 noundef zeroext -11521) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %15 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blkno, align 4
  %blkno10 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 1
  %17 = ptrtoint ptr %blkno10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %blkno10, align 4
  %magic11 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 5
  %18 = ptrtoint ptr %magic11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 54015, ptr %magic11, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr1.i) #8
  %19 = call ptr @memset(ptr %hdr1.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr2.i) #8
  %20 = call ptr @memset(ptr %hdr2.i, i32 255, i32 20)
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 8
  %dp2.i = getelementptr inbounds %struct.xfs_da_args, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %dp2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dp2.i, align 8
  %25 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %oldblk, align 8
  %27 = ptrtoint ptr %newblk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %newblk, align 8
  %b_addr.i.i = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 16
  %29 = ptrtoint ptr %b_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_addr.i.i, align 4
  %b_addr1.i.i = getelementptr inbounds %struct.xfs_buf, ptr %28, i32 0, i32 16
  %31 = ptrtoint ptr %b_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_addr1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr1.i.i) #8
  %33 = call ptr @memset(ptr %hdr1.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr2.i.i) #8
  %34 = call ptr @memset(ptr %hdr2.i.i, i32 255, i32 20)
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %24, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %36, ptr noundef nonnull %hdr1.i.i, ptr noundef %30) #8
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %24, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %38, ptr noundef nonnull %hdr2.i.i, ptr noundef %32) #8
  %ents.i.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %ents.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ents.i.i, align 4
  %ents3.i.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %ents3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ents3.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %count.i.i, align 2
  %conv.i.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.not.i.i = icmp eq i16 %44, 0
  br i1 %cmp.not.i.i, label %if.end9._crit_edge, label %land.lhs.true.i.i

if.end9._crit_edge:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %56

land.lhs.true.i.i:                                ; preds = %if.end9
  %count5.i.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %count5.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %count5.i.i, align 2
  %conv6.i.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp7.not.i.i = icmp eq i16 %46, 0
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i._crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i._crit_edge:                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %56

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %42, align 4
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp12.i.i = icmp ult i32 %48, %50
  br i1 %cmp12.i.i, label %land.lhs.true9.i.i._crit_edge, label %lor.lhs.false.i.i

land.lhs.true9.i.i._crit_edge:                    ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %55

lor.lhs.false.i.i:                                ; preds = %land.lhs.true9.i.i
  %sub.i.i = add nsw i32 %conv6.i.i, -1
  %arrayidx16.i.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %42, i32 %sub.i.i
  %51 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx16.i.i, align 4
  %sub20.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx21.i.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %40, i32 %sub20.i.i
  %53 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp23.i.i = icmp ult i32 %52, %54
  br i1 %cmp23.i.i, label %lor.lhs.false.i.i._crit_edge, label %lor.lhs.false.i.i._crit_edge98

lor.lhs.false.i.i._crit_edge98:                   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %56

lor.lhs.false.i.i._crit_edge:                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %55

55:                                               ; preds = %lor.lhs.false.i.i._crit_edge, %land.lhs.true9.i.i._crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr1.i.i) #8
  br label %57

56:                                               ; preds = %lor.lhs.false.i.i._crit_edge98, %land.lhs.true.i.i._crit_edge, %if.end9._crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr1.i.i) #8
  br label %57

57:                                               ; preds = %56, %55
  %58 = phi ptr [ %newblk, %56 ], [ %oldblk, %55 ]
  %tobool.not201207.i = phi i1 [ true, %56 ], [ false, %55 ]
  %retval.0.i202205.i = phi i32 [ 0, %56 ], [ 1, %55 ]
  %59 = phi ptr [ %oldblk, %56 ], [ %newblk, %55 ]
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_addr.i, align 4
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %58, align 8
  %b_addr7.i = getelementptr inbounds %struct.xfs_buf, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %b_addr7.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_addr7.i, align 4
  %68 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %24, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %69, ptr noundef nonnull %hdr1.i, ptr noundef %63) #8
  %70 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %24, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %71, ptr noundef nonnull %hdr2.i, ptr noundef %67) #8
  %ents.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1.i, i32 0, i32 5
  %72 = ptrtoint ptr %ents.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ents.i, align 4
  %ents9.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2.i, i32 0, i32 5
  %74 = ptrtoint ptr %ents9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ents9.i, align 4
  %count10.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1.i, i32 0, i32 3
  %76 = ptrtoint ptr %count10.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %count10.i, align 2
  %conv.i67 = zext i16 %77 to i32
  %count11.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2.i, i32 0, i32 3
  %78 = ptrtoint ptr %count11.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %count11.i, align 2
  %conv12.i = zext i16 %79 to i32
  %add.i = add nuw nsw i32 %conv12.i, %conv.i67
  %stale.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1.i, i32 0, i32 4
  %80 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %stale.i, align 4
  %conv13.i = zext i16 %81 to i32
  %stale14.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2.i, i32 0, i32 4
  %82 = ptrtoint ptr %stale14.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %stale14.i, align 4
  %conv15.i = zext i16 %83 to i32
  %add16.i = add nuw nsw i32 %conv15.i, %conv13.i
  %84 = lshr i32 %add.i, 1
  %and.i = and i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %.if.end32.i_crit_edge, label %if.then18.i

.if.end32.i_crit_edge:                            ; preds = %57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then18.i:                                      ; preds = %57
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %conv.i67)
  %cmp.not.i = icmp ult i32 %84, %conv.i67
  %sub.i68 = sub nsw i32 %84, %conv.i67
  %arrayidx.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %75, i32 %sub.i68
  %arrayidx25.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %73, i32 %84
  %midhash.0.in.i = select i1 %cmp.not.i, ptr %arrayidx25.i, ptr %arrayidx.i
  %85 = ptrtoint ptr %midhash.0.in.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %midhash.0.i = load i32, ptr %midhash.0.in.i, align 4
  %hashval28.i = getelementptr inbounds %struct.xfs_da_args, ptr %22, i32 0, i32 8
  %86 = ptrtoint ptr %hashval28.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hashval28.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %midhash.0.i)
  %cmp29.i = icmp ugt i32 %87, %midhash.0.i
  %phi.cast.i = zext i1 %cmp29.i to i32
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then18.i, %.if.end32.i_crit_edge
  %isleft.0.i = phi i32 [ %phi.cast.i, %if.then18.i ], [ 0, %.if.end32.i_crit_edge ]
  %sub35.i = sub nsw i32 %conv.i67, %84
  %add38.i = add nsw i32 %isleft.0.i, %sub35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add38.i)
  %cmp39.i = icmp sgt i32 %add38.i, 0
  br i1 %cmp39.i, label %if.then41.i, label %if.else47.i

if.then41.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %59, align 8
  %sub45.i = sub nsw i32 %conv.i67, %add38.i
  %90 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %58, align 8
  call fastcc void @xfs_dir3_leafn_moveents(ptr noundef %22, ptr noundef %89, ptr noundef nonnull %hdr1.i, ptr noundef %73, i32 noundef %sub45.i, ptr noundef %91, ptr noundef nonnull %hdr2.i, ptr noundef %75, i32 noundef 0, i32 noundef %add38.i) #8
  br label %if.end56.i

if.else47.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add38.i)
  %cmp48.i = icmp slt i32 %add38.i, 0
  br i1 %cmp48.i, label %if.then50.i, label %if.else47.i.if.end56.i_crit_edge

if.else47.i.if.end56.i_crit_edge:                 ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then50.i:                                      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %58, align 8
  %94 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %59, align 8
  call fastcc void @xfs_dir3_leafn_moveents(ptr noundef %22, ptr noundef %93, ptr noundef nonnull %hdr2.i, ptr noundef %75, i32 noundef 0, ptr noundef %95, ptr noundef nonnull %hdr1.i, ptr noundef %73, i32 noundef %conv.i67, i32 noundef %add38.i) #8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then50.i, %if.else47.i.if.end56.i_crit_edge, %if.then41.i
  %96 = ptrtoint ptr %count10.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %count10.i, align 2
  %conv58.i = zext i16 %97 to i32
  %98 = ptrtoint ptr %count11.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %count11.i, align 2
  %conv60.i = zext i16 %99 to i32
  %add61.i = add nuw nsw i32 %conv60.i, %conv58.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add61.i, i32 %add.i)
  %cmp62.i = icmp eq i32 %add61.i, %add.i
  br i1 %cmp62.i, label %if.end56.i.cond.end.i_crit_edge, label %cond.false.i, !prof !137

if.end56.i.cond.end.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 1138) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end56.i.cond.end.i_crit_edge
  %100 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %stale.i, align 4
  %conv67.i = zext i16 %101 to i32
  %102 = ptrtoint ptr %stale14.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %stale14.i, align 4
  %conv69.i = zext i16 %103 to i32
  %add70.i = add nuw nsw i32 %conv69.i, %conv67.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add70.i, i32 %add16.i)
  %cmp71.i = icmp eq i32 %add70.i, %add16.i
  br i1 %cmp71.i, label %cond.end.i.cond.end81.i_crit_edge, label %cond.false80.i, !prof !137

cond.end.i.cond.end81.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end81.i

cond.false80.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 1139) #8
  br label %cond.end81.i

cond.end81.i:                                     ; preds = %cond.false80.i, %cond.end.i.cond.end81.i_crit_edge
  %104 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %24, align 8
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %105, ptr noundef %63, ptr noundef nonnull %hdr1.i) #8
  %106 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %24, align 8
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %107, ptr noundef %67, ptr noundef nonnull %hdr2.i) #8
  %108 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %59, align 8
  call void @xfs_dir3_leaf_log_header(ptr noundef %22, ptr noundef %109) #8
  %110 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %58, align 8
  call void @xfs_dir3_leaf_log_header(ptr noundef %22, ptr noundef %111) #8
  %112 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %59, align 8
  %call.i.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %24, ptr noundef %113) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.end81.i.xfs_dir3_leaf_check.exit.i_crit_edge, label %if.end.i191.i

cond.end81.i.xfs_dir3_leaf_check.exit.i_crit_edge: ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit.i

if.end.i191.i:                                    ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %24, align 8
  %b_addr.i190.i = getelementptr inbounds %struct.xfs_buf, ptr %113, i32 0, i32 16
  %116 = ptrtoint ptr %b_addr.i190.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %b_addr.i190.i, align 4
  %b_length.i.i = getelementptr inbounds %struct.xfs_buf, ptr %113, i32 0, i32 2
  %118 = ptrtoint ptr %b_length.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %b_length.i.i, align 8
  %shl.i.i = shl i32 %119, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %115, ptr noundef %117, i32 noundef %shl.i.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit.i

xfs_dir3_leaf_check.exit.i:                       ; preds = %if.end.i191.i, %cond.end81.i.xfs_dir3_leaf_check.exit.i_crit_edge
  %120 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %58, align 8
  %call.i192.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %24, ptr noundef %121) #8
  %tobool.not.i193.i = icmp eq ptr %call.i192.i, null
  br i1 %tobool.not.i193.i, label %xfs_dir3_leaf_check.exit.i.xfs_dir3_leaf_check.exit198.i_crit_edge, label %if.end.i197.i

xfs_dir3_leaf_check.exit.i.xfs_dir3_leaf_check.exit198.i_crit_edge: ; preds = %xfs_dir3_leaf_check.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit198.i

if.end.i197.i:                                    ; preds = %xfs_dir3_leaf_check.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %24, align 8
  %b_addr.i194.i = getelementptr inbounds %struct.xfs_buf, ptr %121, i32 0, i32 16
  %124 = ptrtoint ptr %b_addr.i194.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_addr.i194.i, align 4
  %b_length.i195.i = getelementptr inbounds %struct.xfs_buf, ptr %121, i32 0, i32 2
  %126 = ptrtoint ptr %b_length.i195.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %b_length.i195.i, align 8
  %shl.i196.i = shl i32 %127, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %123, ptr noundef %125, i32 noundef %shl.i196.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i192.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit198.i

xfs_dir3_leaf_check.exit198.i:                    ; preds = %if.end.i197.i, %xfs_dir3_leaf_check.exit.i.xfs_dir3_leaf_check.exit198.i_crit_edge
  %128 = ptrtoint ptr %count10.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %count10.i, align 2
  %conv89.i = zext i16 %129 to i32
  %130 = ptrtoint ptr %count11.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %count11.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %129, i16 %131)
  %cmp92.i = icmp ult i16 %129, %131
  br i1 %cmp92.i, label %if.then94.i, label %if.else96.i

if.then94.i:                                      ; preds = %xfs_dir3_leaf_check.exit198.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv95.i = trunc i32 %retval.0.i202205.i to i8
  br label %if.end117.i

if.else96.i:                                      ; preds = %xfs_dir3_leaf_check.exit198.i
  call void @__sanitizer_cov_trace_cmp2(i16 %129, i16 %131)
  %cmp101.i = icmp ugt i16 %129, %131
  br i1 %cmp101.i, label %if.then103.i, label %if.else109.i

if.then103.i:                                     ; preds = %if.else96.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv107.i = zext i1 %tobool.not201207.i to i8
  br label %if.end117.i

if.else109.i:                                     ; preds = %if.else96.i
  call void @__sanitizer_cov_trace_pc() #10
  %index.i = getelementptr inbounds %struct.xfs_da_state_blk, ptr %59, i32 0, i32 3
  %132 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %index.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %conv89.i)
  %cmp112.i = icmp sle i32 %133, %conv89.i
  %conv113.i = zext i1 %cmp112.i to i32
  %xor.i = xor i32 %retval.0.i202205.i, %conv113.i
  %conv114.i = trunc i32 %xor.i to i8
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else109.i, %if.then103.i, %if.then94.i
  %conv107.sink.i = phi i8 [ %conv107.i, %if.then103.i ], [ %conv114.i, %if.else109.i ], [ %conv95.i, %if.then94.i ]
  %inleaf108.i = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 4
  %134 = ptrtoint ptr %inleaf108.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv107.sink.i, ptr %inleaf108.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv107.sink.i)
  %tobool119.not.i = icmp eq i8 %conv107.sink.i, 0
  br i1 %tobool119.not.i, label %if.then120.i, label %if.end117.i.if.end126.i_crit_edge

if.end117.i.if.end126.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  %index121.i = getelementptr inbounds %struct.xfs_da_state_blk, ptr %59, i32 0, i32 3
  %135 = ptrtoint ptr %index121.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index121.i, align 8
  %sub124.i = sub i32 %136, %conv89.i
  %index125.i = getelementptr inbounds %struct.xfs_da_state_blk, ptr %58, i32 0, i32 3
  %137 = ptrtoint ptr %index125.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub124.i, ptr %index125.i, align 8
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then120.i, %if.end117.i.if.end126.i_crit_edge
  %index127.i = getelementptr inbounds %struct.xfs_da_state_blk, ptr %58, i32 0, i32 3
  %138 = ptrtoint ptr %index127.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %index127.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp128.i = icmp slt i32 %139, 0
  br i1 %cmp128.i, label %if.then130.i, label %if.end126.i.xfs_dir2_leafn_rebalance.exit_crit_edge

if.end126.i.xfs_dir2_leafn_rebalance.exit_crit_edge: ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leafn_rebalance.exit

if.then130.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %inleaf108.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %inleaf108.i, align 8
  %141 = ptrtoint ptr %index127.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %index127.i, align 8
  %142 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %24, align 8
  %index134.i = getelementptr inbounds %struct.xfs_da_state_blk, ptr %59, i32 0, i32 3
  %144 = ptrtoint ptr %index134.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %index134.i, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %143, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.xfs_dir2_leafn_rebalance, i32 noundef %145) #8
  br label %xfs_dir2_leafn_rebalance.exit

xfs_dir2_leafn_rebalance.exit:                    ; preds = %if.then130.i, %if.end126.i.xfs_dir2_leafn_rebalance.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr1.i) #8
  %call12 = call i32 @xfs_da3_blk_link(ptr noundef %state, ptr noundef %oldblk, ptr noundef %newblk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %xfs_dir2_leafn_rebalance.exit.cleanup_crit_edge

xfs_dir2_leafn_rebalance.exit.cleanup_crit_edge:  ; preds = %xfs_dir2_leafn_rebalance.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %xfs_dir2_leafn_rebalance.exit
  %146 = ptrtoint ptr %inleaf108.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %inleaf108.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool16.not = icmp eq i8 %147, 0
  %newblk.oldblk = select i1 %tobool16.not, ptr %newblk, ptr %oldblk
  %148 = ptrtoint ptr %newblk.oldblk to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %newblk.oldblk, align 8
  %index21 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk.oldblk, i32 0, i32 3
  %150 = ptrtoint ptr %index21 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %index21, align 8
  %call22 = call fastcc i32 @xfs_dir2_leafn_add(ptr noundef %149, ptr noundef %2, i32 noundef %151)
  %152 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %oldblk, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr.i) #8
  %154 = call ptr @memset(ptr %leafhdr.i, i32 255, i32 20)
  %155 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %4, align 8
  %b_addr.i69 = getelementptr inbounds %struct.xfs_buf, ptr %153, i32 0, i32 16
  %157 = ptrtoint ptr %b_addr.i69 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %b_addr.i69, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %156, ptr noundef nonnull %leafhdr.i, ptr noundef %158) #8
  %magic.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i, i32 0, i32 2
  %159 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %magic.i, align 4
  %161 = zext i16 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %160, label %cond.false.critedge.i [
    i16 -11521, label %if.end15.cond.end.i70_crit_edge
    i16 15871, label %if.end15.cond.end.i70_crit_edge99
    i16 -11535, label %if.end15.cond.end.i70_crit_edge100
    i16 15857, label %if.end15.cond.end.i70_crit_edge101
  ]

if.end15.cond.end.i70_crit_edge101:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i70

if.end15.cond.end.i70_crit_edge100:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i70

if.end15.cond.end.i70_crit_edge99:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i70

if.end15.cond.end.i70_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i70

cond.false.critedge.i:                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 611) #8
  br label %cond.end.i70

cond.end.i70:                                     ; preds = %cond.false.critedge.i, %if.end15.cond.end.i70_crit_edge, %if.end15.cond.end.i70_crit_edge99, %if.end15.cond.end.i70_crit_edge100, %if.end15.cond.end.i70_crit_edge101
  %count19.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i, i32 0, i32 3
  %162 = ptrtoint ptr %count19.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %count19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool20.not.i = icmp eq i16 %163, 0
  br i1 %tobool20.not.i, label %cond.end.i70.xfs_dir2_leaf_lasthash.exit_crit_edge, label %if.end22.i

cond.end.i70.xfs_dir2_leaf_lasthash.exit_crit_edge: ; preds = %cond.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_lasthash.exit

if.end22.i:                                       ; preds = %cond.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  %ents.i71 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i, i32 0, i32 5
  %164 = ptrtoint ptr %ents.i71 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ents.i71, align 4
  %conv24.i = zext i16 %163 to i32
  %sub.i72 = add nsw i32 %conv24.i, -1
  %arrayidx.i73 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %165, i32 %sub.i72
  %166 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i73, align 4
  br label %xfs_dir2_leaf_lasthash.exit

xfs_dir2_leaf_lasthash.exit:                      ; preds = %if.end22.i, %cond.end.i70.xfs_dir2_leaf_lasthash.exit_crit_edge
  %retval.0.i = phi i32 [ %167, %if.end22.i ], [ 0, %cond.end.i70.xfs_dir2_leaf_lasthash.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr.i) #8
  %hashval = getelementptr inbounds %struct.xfs_da_state_blk, ptr %oldblk, i32 0, i32 4
  %168 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %retval.0.i, ptr %hashval, align 4
  %169 = ptrtoint ptr %newblk to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %newblk, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr.i74) #8
  %171 = call ptr @memset(ptr %leafhdr.i74, i32 255, i32 20)
  %172 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %4, align 8
  %b_addr.i75 = getelementptr inbounds %struct.xfs_buf, ptr %170, i32 0, i32 16
  %174 = ptrtoint ptr %b_addr.i75 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %b_addr.i75, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %173, ptr noundef nonnull %leafhdr.i74, ptr noundef %175) #8
  %magic.i76 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i74, i32 0, i32 2
  %176 = ptrtoint ptr %magic.i76 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %magic.i76, align 4
  %178 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %177, label %cond.false.critedge.i77 [
    i16 -11521, label %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge
    i16 15871, label %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge102
    i16 -11535, label %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge103
    i16 15857, label %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge104
  ]

xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge104: ; preds = %xfs_dir2_leaf_lasthash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i78

xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge103: ; preds = %xfs_dir2_leaf_lasthash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i78

xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge102: ; preds = %xfs_dir2_leaf_lasthash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i78

xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge: ; preds = %xfs_dir2_leaf_lasthash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i78

cond.false.critedge.i77:                          ; preds = %xfs_dir2_leaf_lasthash.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 611) #8
  br label %cond.end.i78

cond.end.i78:                                     ; preds = %cond.false.critedge.i77, %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge, %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge102, %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge103, %xfs_dir2_leaf_lasthash.exit.cond.end.i78_crit_edge104
  %count19.i79 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i74, i32 0, i32 3
  %179 = ptrtoint ptr %count19.i79 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %count19.i79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool20.not.i80 = icmp eq i16 %180, 0
  br i1 %tobool20.not.i80, label %cond.end.i78.xfs_dir2_leaf_lasthash.exit87_crit_edge, label %if.end22.i85

cond.end.i78.xfs_dir2_leaf_lasthash.exit87_crit_edge: ; preds = %cond.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_lasthash.exit87

if.end22.i85:                                     ; preds = %cond.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  %ents.i81 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i74, i32 0, i32 5
  %181 = ptrtoint ptr %ents.i81 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ents.i81, align 4
  %conv24.i82 = zext i16 %180 to i32
  %sub.i83 = add nsw i32 %conv24.i82, -1
  %arrayidx.i84 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %182, i32 %sub.i83
  %183 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i84, align 4
  br label %xfs_dir2_leaf_lasthash.exit87

xfs_dir2_leaf_lasthash.exit87:                    ; preds = %if.end22.i85, %cond.end.i78.xfs_dir2_leaf_lasthash.exit87_crit_edge
  %retval.0.i86 = phi i32 [ %184, %if.end22.i85 ], [ 0, %cond.end.i78.xfs_dir2_leaf_lasthash.exit87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr.i74) #8
  %hashval28 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 4
  %185 = ptrtoint ptr %hashval28 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %retval.0.i86, ptr %hashval28, align 4
  %186 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %oldblk, align 8
  %call.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %4, ptr noundef %187) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %xfs_dir2_leaf_lasthash.exit87.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

xfs_dir2_leaf_lasthash.exit87.xfs_dir3_leaf_check.exit_crit_edge: ; preds = %xfs_dir2_leaf_lasthash.exit87
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %xfs_dir2_leaf_lasthash.exit87
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %4, align 8
  %b_addr.i88 = getelementptr inbounds %struct.xfs_buf, ptr %187, i32 0, i32 16
  %190 = ptrtoint ptr %b_addr.i88 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %b_addr.i88, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %187, i32 0, i32 2
  %192 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %193, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %189, ptr noundef %191, i32 noundef %shl.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %xfs_dir2_leaf_lasthash.exit87.xfs_dir3_leaf_check.exit_crit_edge
  %194 = ptrtoint ptr %newblk to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %newblk, align 8
  %call.i89 = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %4, ptr noundef %195) #8
  %tobool.not.i90 = icmp eq ptr %call.i89, null
  br i1 %tobool.not.i90, label %xfs_dir3_leaf_check.exit.cleanup_crit_edge, label %if.end.i94

xfs_dir3_leaf_check.exit.cleanup_crit_edge:       ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i94:                                       ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %4, align 8
  %b_addr.i91 = getelementptr inbounds %struct.xfs_buf, ptr %195, i32 0, i32 16
  %198 = ptrtoint ptr %b_addr.i91 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %b_addr.i91, align 4
  %b_length.i92 = getelementptr inbounds %struct.xfs_buf, ptr %195, i32 0, i32 2
  %200 = ptrtoint ptr %b_length.i92 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %b_length.i92, align 8
  %shl.i93 = shl i32 %201, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %197, ptr noundef %199, i32 noundef %shl.i93, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i89) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i94, %xfs_dir3_leaf_check.exit.cleanup_crit_edge, %xfs_dir2_leafn_rebalance.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.end.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call12, %xfs_dir2_leafn_rebalance.exit.cleanup_crit_edge ], [ %call22, %xfs_dir3_leaf_check.exit.cleanup_crit_edge ], [ %call22, %if.end.i94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkno) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_grow_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_leaf_get_buf(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_blk_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_leafn_add(ptr noundef %bp, ptr noundef %args, i32 noundef %index) #0 align 64 {
entry:
  %index.addr = alloca i32, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %highstale = alloca i32, align 4
  %lfloghigh = alloca i32, align 4
  %lfloglow = alloca i32, align 4
  %lowstale = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %1 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %highstale) #8
  %6 = ptrtoint ptr %highstale to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %highstale, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfloghigh) #8
  %7 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %lfloghigh, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfloglow) #8
  %8 = ptrtoint ptr %lfloglow to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %lfloglow, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lowstale) #8
  %9 = ptrtoint ptr %lowstale to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %lowstale, align 4
  tail call fastcc void @trace_xfs_dir2_leafn_add(ptr noundef %args, i32 noundef %index)
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %11, ptr noundef nonnull %leafhdr, ptr noundef %5) #8
  %ents2 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %12 = ptrtoint ptr %ents2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ents2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %__here, label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !148
  call void @__xfs_buf_mark_corrupt(ptr noundef %bp, ptr noundef blockaddress(@xfs_dir2_leafn_add, %__here)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count, align 2
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args, align 8
  %leaf_max_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %leaf_max_ents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %leaf_max_ents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp3 = icmp eq i32 %19, %conv
  br i1 %cmp3, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %20 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %if.then5.cleanup_crit_edge, label %if.end7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp10 = icmp ne i16 %21, 1
  %conv11 = zext i1 %cmp10 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.end.if.end12_crit_edge
  %compact.0 = phi i32 [ %conv11, %if.end7 ], [ 0, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp13 = icmp eq i32 %index, 0
  br i1 %cmp13, label %if.end12.cond.end_crit_edge, label %lor.rhs

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.rhs:                                          ; preds = %if.end12
  %sub = add nsw i32 %index, -1
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %13, i32 %sub
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %hashval15 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %24 = ptrtoint ptr %hashval15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hashval15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp16.not = icmp ugt i32 %23, %25
  br i1 %cmp16.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !145

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, i32 noundef 536) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %if.end12.cond.end_crit_edge
  %26 = ptrtoint ptr %index.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.addr, align 4
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count, align 2
  %conv21 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv21)
  %cmp22 = icmp eq i32 %27, %conv21
  br i1 %cmp22, label %cond.end.cond.end39_crit_edge, label %lor.rhs24

cond.end.cond.end39_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end39

lor.rhs24:                                        ; preds = %cond.end
  %arrayidx25 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %13, i32 %27
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx25, align 4
  %hashval27 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %32 = ptrtoint ptr %hashval27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hashval27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp28.not = icmp ult i32 %31, %33
  br i1 %cmp28.not, label %cond.false38, label %lor.rhs24.cond.end39_crit_edge, !prof !145

lor.rhs24.cond.end39_crit_edge:                   ; preds = %lor.rhs24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end39

cond.false38:                                     ; preds = %lor.rhs24
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 538) #8
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %lor.rhs24.cond.end39_crit_edge, %cond.end.cond.end39_crit_edge
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %34 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op_flags, align 8
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end42, label %cond.end39.cleanup_crit_edge

cond.end39.cleanup_crit_edge:                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %cond.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compact.0)
  %tobool43.not = icmp eq i32 %compact.0, 0
  br i1 %tobool43.not, label %if.else45, label %if.then44

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_dir3_leaf_compact_x1(ptr noundef nonnull %leafhdr, ptr noundef %13, ptr noundef nonnull %index.addr, ptr noundef nonnull %lowstale, ptr noundef nonnull %highstale, ptr noundef nonnull %lfloglow, ptr noundef nonnull %lfloghigh) #8
  br label %if.end52

if.else45:                                        ; preds = %if.end42
  %stale46 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %36 = ptrtoint ptr %stale46 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %stale46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool47.not = icmp eq i16 %37, 0
  br i1 %tobool47.not, label %if.else45.if.end52_crit_edge, label %if.then48

if.else45.if.end52_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then48:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %count, align 2
  %conv50 = zext i16 %39 to i32
  %40 = ptrtoint ptr %lfloglow to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv50, ptr %lfloglow, align 4
  %41 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %lfloghigh, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.else45.if.end52_crit_edge, %if.then44
  %42 = ptrtoint ptr %index.addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.addr, align 4
  %44 = ptrtoint ptr %lowstale to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lowstale, align 4
  %46 = ptrtoint ptr %highstale to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %highstale, align 4
  %call = call ptr @xfs_dir3_leaf_find_entry(ptr noundef nonnull %leafhdr, ptr noundef %13, i32 noundef %43, i32 noundef %compact.0, i32 noundef %45, i32 noundef %47, ptr noundef nonnull %lfloglow, ptr noundef nonnull %lfloghigh) #8
  %hashval53 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %48 = ptrtoint ptr %hashval53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hashval53, align 8
  %50 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %call, align 4
  %51 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %args, align 8
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %53 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blkno, align 8
  %index56 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %55 = ptrtoint ptr %index56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index56, align 4
  %conv.i.i = zext i32 %54 to i64
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %58 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %conv2.i.i = zext i32 %56 to i64
  %add.i.i = add i64 %shl.i.i, %conv2.i.i
  %59 = lshr i64 %add.i.i, 3
  %conv.i2.i = trunc i64 %59 to i32
  %address = getelementptr inbounds %struct.xfs_dir2_leaf_entry, ptr %call, i32 0, i32 1
  %60 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i2.i, ptr %address, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 8
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %62, ptr noundef %5, ptr noundef nonnull %leafhdr) #8
  call void @xfs_dir3_leaf_log_header(ptr noundef %args, ptr noundef %bp) #8
  %63 = ptrtoint ptr %lfloglow to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lfloglow, align 4
  %65 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lfloghigh, align 4
  call void @xfs_dir3_leaf_log_ents(ptr noundef %args, ptr noundef nonnull %leafhdr, ptr noundef %bp, i32 noundef %64, i32 noundef %66) #8
  %call.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %3, ptr noundef %bp) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end52.cleanup_crit_edge, label %if.end.i

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 8
  %69 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %71 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %72, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %68, ptr noundef %70, i32 noundef %shl.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end52.cleanup_crit_edge, %cond.end39.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ -28, %if.then5.cleanup_crit_edge ], [ 0, %cond.end39.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lowstale) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfloglow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfloghigh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %highstale) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leafn_toosmall(ptr noundef %state, ptr nocapture noundef writeonly %action) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %rval = alloca i32, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %hdr2 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %1 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp1, align 8
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
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %13, ptr noundef nonnull %leafhdr, ptr noundef %11) #8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 8
  %call.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %5, ptr noundef %15) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

entry.xfs_dir3_leaf_check.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %18 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %21, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %17, ptr noundef %19, i32 noundef %shl.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %entry.xfs_dir3_leaf_check.exit_crit_edge
  %count7 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %22 = ptrtoint ptr %count7 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count7, align 2
  %conv = zext i16 %23 to i32
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %24 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %stale, align 4
  %conv8 = zext i16 %25 to i32
  %sub9 = sub nsw i32 %conv, %conv8
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %leaf_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %leaf_hdr_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %leaf_hdr_size, align 4
  %mul = shl nsw i32 %sub9, 3
  %add = add i32 %31, %mul
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %shr = lshr i32 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr)
  %cmp = icmp ugt i32 %add, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %action, align 4
  br label %cleanup94

if.end:                                           ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp14 = icmp eq i16 %23, %25
  %35 = ptrtoint ptr %leafhdr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %leafhdr, align 4
  br i1 %cmp14, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp17 = icmp ne i32 %36, 0
  %conv18 = zext i1 %cmp17 to i32
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %altpath, ptr %path, i32 168)
  %call = call i32 @xfs_da3_path_shift(ptr noundef %state, ptr noundef %altpath, i32 noundef %conv18, i32 noundef 0, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end22, label %if.then16.cleanup94_crit_edge

if.then16.cleanup94_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

if.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool23.not = icmp eq i32 %39, 0
  %cond = select i1 %tobool23.not, i32 0, i32 2
  %40 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond, ptr %action, align 4
  br label %cleanup94

if.end24:                                         ; preds = %if.end
  %back = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %41 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %back, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %42)
  %cmp26 = icmp ult i32 %36, %42
  %43 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %bp, align 4
  %count59 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2, i32 0, i32 3
  %stale61 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr2) #8
  %44 = call ptr @memset(ptr %hdr2, i32 255, i32 20)
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %leafhdr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %leafhdr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %back, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond33 = phi i32 [ %46, %cond.true ], [ %48, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond33)
  %cmp34 = icmp eq i32 %cond33, 0
  br i1 %cmp34, label %cond.end.for.inc_crit_edge, label %if.end37

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end37:                                         ; preds = %cond.end
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %trans, align 4
  %call39 = call i32 @xfs_dir3_leafn_read(ptr noundef %52, ptr noundef %5, i32 noundef %cond33, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup.thread155_crit_edge

if.end37.cleanup.thread155_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread155

cleanup.thread155:                                ; preds = %if.end37.1.cleanup.thread155_crit_edge, %if.end37.cleanup.thread155_crit_edge
  %call39.lcssa = phi i32 [ %call39, %if.end37.cleanup.thread155_crit_edge ], [ %call39.1, %if.end37.1.cleanup.thread155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2) #8
  br label %cleanup94

if.end42:                                         ; preds = %if.end37
  %53 = ptrtoint ptr %count7 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %count7, align 2
  %conv44 = zext i16 %54 to i32
  %55 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %stale, align 4
  %conv46 = zext i16 %56 to i32
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %shr54 = lshr i32 %62, 2
  %sub55 = sub i32 %62, %shr54
  %63 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bp, align 4
  %b_addr56 = getelementptr inbounds %struct.xfs_buf, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %b_addr56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_addr56, align 4
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %68, ptr noundef nonnull %hdr2, ptr noundef %66) #8
  %69 = ptrtoint ptr %count59 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %count59, align 2
  %conv60 = zext i16 %70 to i32
  %71 = ptrtoint ptr %stale61 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %stale61, align 4
  %conv62 = zext i16 %72 to i32
  %73 = add nuw nsw i32 %conv44, %conv60
  %sub47.neg = sub nsw i32 %conv46, %73
  %add64.neg = add nsw i32 %sub47.neg, %conv62
  %mul65.neg = shl nsw i32 %add64.neg, 3
  %sub66 = add i32 %sub55, %mul65.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub66)
  %cmp67 = icmp sgt i32 %sub66, -1
  br i1 %cmp67, label %if.end42.if.end77_crit_edge, label %if.end70

if.end42.if.end77_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.end70:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %state, align 8
  %trans72 = getelementptr inbounds %struct.xfs_da_args, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %trans72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans72, align 4
  %78 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %77, ptr noundef %79) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end70, %cond.end.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2) #8
  %lnot = xor i1 %cmp26, true
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr2) #8
  %80 = call ptr @memset(ptr %hdr2, i32 255, i32 20)
  br i1 %cmp26, label %cond.false.1, label %cond.true.1

cond.false.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %back, align 4
  br label %cond.end.1

cond.true.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %leafhdr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %leafhdr, align 4
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.true.1, %cond.false.1
  %cond33.1 = phi i32 [ %84, %cond.true.1 ], [ %82, %cond.false.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond33.1)
  %cmp34.1 = icmp eq i32 %cond33.1, 0
  br i1 %cmp34.1, label %cond.end.1.for.inc.1_crit_edge, label %if.end37.1

cond.end.1.for.inc.1_crit_edge:                   ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end37.1:                                       ; preds = %cond.end.1
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state, align 8
  %trans.1 = getelementptr inbounds %struct.xfs_da_args, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %trans.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %trans.1, align 4
  %call39.1 = call i32 @xfs_dir3_leafn_read(ptr noundef %88, ptr noundef %5, i32 noundef %cond33.1, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %tobool40.not.1 = icmp eq i32 %call39.1, 0
  br i1 %tobool40.not.1, label %if.end42.1, label %if.end37.1.cleanup.thread155_crit_edge

if.end37.1.cleanup.thread155_crit_edge:           ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread155

if.end42.1:                                       ; preds = %if.end37.1
  %89 = ptrtoint ptr %count7 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %count7, align 2
  %conv44.1 = zext i16 %90 to i32
  %91 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %stale, align 4
  %conv46.1 = zext i16 %92 to i32
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %shr54.1 = lshr i32 %98, 2
  %sub55.1 = sub i32 %98, %shr54.1
  %99 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bp, align 4
  %b_addr56.1 = getelementptr inbounds %struct.xfs_buf, ptr %100, i32 0, i32 16
  %101 = ptrtoint ptr %b_addr56.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %b_addr56.1, align 4
  %103 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %104, ptr noundef nonnull %hdr2, ptr noundef %102) #8
  %105 = ptrtoint ptr %count59 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %count59, align 2
  %conv60.1 = zext i16 %106 to i32
  %107 = ptrtoint ptr %stale61 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %stale61, align 4
  %conv62.1 = zext i16 %108 to i32
  %109 = add nuw nsw i32 %conv44.1, %conv60.1
  %sub47.neg.1 = sub nsw i32 %conv46.1, %109
  %add64.neg.1 = add nsw i32 %sub47.neg.1, %conv62.1
  %mul65.neg.1 = shl nsw i32 %add64.neg.1, 3
  %sub66.1 = add i32 %sub55.1, %mul65.neg.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub66.1)
  %cmp67.1 = icmp sgt i32 %sub66.1, -1
  br i1 %cmp67.1, label %if.end42.1.if.end77_crit_edge, label %if.end70.1

if.end42.1.if.end77_crit_edge:                    ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.end70.1:                                       ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %state, align 8
  %trans72.1 = getelementptr inbounds %struct.xfs_da_args, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %trans72.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %trans72.1, align 4
  %114 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %113, ptr noundef %115) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end70.1, %cond.end.1.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2) #8
  %116 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %action, align 4
  br label %cleanup94

if.end77:                                         ; preds = %if.end42.1.if.end77_crit_edge, %if.end42.if.end77_crit_edge
  %cond33.lcssa170 = phi i32 [ %cond33, %if.end42.if.end77_crit_edge ], [ %cond33.1, %if.end42.1.if.end77_crit_edge ]
  %forward.0.in164.lcssa168 = phi i1 [ %cmp26, %if.end42.if.end77_crit_edge ], [ %lnot, %if.end42.1.if.end77_crit_edge ]
  %forward.0.le = zext i1 %forward.0.in164.lcssa168 to i32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2) #8
  %altpath78 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %117 = call ptr @memcpy(ptr %altpath78, ptr %path, i32 168)
  %blkno80 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub, i32 1
  %118 = ptrtoint ptr %blkno80 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %blkno80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond33.lcssa170, i32 %119)
  %cmp81 = icmp ult i32 %cond33.lcssa170, %119
  %altpath78.path = select i1 %cmp81, ptr %altpath78, ptr %path
  %call87 = call i32 @xfs_da3_path_shift(ptr noundef %state, ptr noundef %altpath78.path, i32 noundef %forward.0.le, i32 noundef 0, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool89.not = icmp eq i32 %call87, 0
  br i1 %tobool89.not, label %if.end91, label %if.end77.cleanup94_crit_edge

if.end77.cleanup94_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

if.end91:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool92.not = icmp eq i32 %121, 0
  %cond93 = zext i1 %tobool92.not to i32
  %122 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %cond93, ptr %action, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %if.end91, %if.end77.cleanup94_crit_edge, %for.inc.1, %cleanup.thread155, %if.end22, %if.then16.cleanup94_crit_edge, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.end22 ], [ 0, %for.inc.1 ], [ 0, %if.end91 ], [ %call, %if.then16.cleanup94_crit_edge ], [ %call87, %if.end77.cleanup94_crit_edge ], [ %call39.lcssa, %cleanup.thread155 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_path_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_leafn_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_leafn_unbalance(ptr nocapture noundef readonly %state, ptr nocapture noundef %drop_blk, ptr nocapture noundef %save_blk) local_unnamed_addr #0 align 64 {
entry:
  %hdr1.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %hdr2.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %savehdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %drophdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %savehdr) #8
  %0 = call ptr @memset(ptr %savehdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %drophdr) #8
  %1 = call ptr @memset(ptr %drophdr, i32 255, i32 20)
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp2, align 8
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk, i32 0, i32 5
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54015, i32 %7)
  %cmp = icmp eq i32 %7, 54015
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !137

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 1629) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %magic5 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %save_blk, i32 0, i32 5
  %8 = ptrtoint ptr %magic5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54015, i32 %9)
  %cmp6 = icmp eq i32 %9, 54015
  br i1 %cmp6, label %cond.end.cond.end15_crit_edge, label %cond.false14, !prof !137

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 1630) #8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %10 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drop_blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %14 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %save_blk, align 8
  %b_addr17 = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %b_addr17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr17, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %19, ptr noundef nonnull %savehdr, ptr noundef %17) #8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %21, ptr noundef nonnull %drophdr, ptr noundef %13) #8
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %savehdr, i32 0, i32 5
  %22 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ents, align 4
  %ents19 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %drophdr, i32 0, i32 5
  %24 = ptrtoint ptr %ents19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ents19, align 4
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %drophdr, i32 0, i32 4
  %26 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool20.not = icmp eq i16 %27, 0
  br i1 %tobool20.not, label %cond.end15.if.end_crit_edge, label %if.then

cond.end15.if.end_crit_edge:                      ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drop_blk, align 8
  call void @xfs_dir3_leaf_compact(ptr noundef %3, ptr noundef nonnull %drophdr, ptr noundef %29) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end15.if.end_crit_edge
  %stale22 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %savehdr, i32 0, i32 4
  %30 = ptrtoint ptr %stale22 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %stale22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool23.not = icmp eq i16 %31, 0
  br i1 %tobool23.not, label %if.end.if.end26_crit_edge, label %if.then24

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %save_blk, align 8
  call void @xfs_dir3_leaf_compact(ptr noundef %3, ptr noundef nonnull %savehdr, ptr noundef %33) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end.if.end26_crit_edge
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %drophdr, i32 0, i32 3
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count, align 2
  %conv = zext i16 %35 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %25, i32 %sub
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %hashval27 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk, i32 0, i32 4
  %38 = ptrtoint ptr %hashval27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %hashval27, align 4
  %39 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %save_blk, align 8
  %41 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %drop_blk, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %40, i32 0, i32 16
  %43 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_addr.i, align 4
  %b_addr1.i = getelementptr inbounds %struct.xfs_buf, ptr %42, i32 0, i32 16
  %45 = ptrtoint ptr %b_addr1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_addr1.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr1.i) #8
  %47 = call ptr @memset(ptr %hdr1.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr2.i) #8
  %48 = call ptr @memset(ptr %hdr2.i, i32 255, i32 20)
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %50, ptr noundef nonnull %hdr1.i, ptr noundef %44) #8
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %52, ptr noundef nonnull %hdr2.i, ptr noundef %46) #8
  %ents.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1.i, i32 0, i32 5
  %53 = ptrtoint ptr %ents.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ents.i, align 4
  %ents3.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2.i, i32 0, i32 5
  %55 = ptrtoint ptr %ents3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ents3.i, align 4
  %count.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr1.i, i32 0, i32 3
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %count.i, align 2
  %conv.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp.not.i = icmp eq i16 %58, 0
  br i1 %cmp.not.i, label %if.end26.if.else_crit_edge, label %land.lhs.true.i

if.end26.if.else_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end26
  %count5.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr2.i, i32 0, i32 3
  %59 = ptrtoint ptr %count5.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %count5.i, align 2
  %conv6.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp7.not.i = icmp eq i16 %60, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %56, align 4
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp12.i = icmp ult i32 %62, %64
  br i1 %cmp12.i, label %land.lhs.true9.i.if.then31_crit_edge, label %lor.lhs.false.i

land.lhs.true9.i.if.then31_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

lor.lhs.false.i:                                  ; preds = %land.lhs.true9.i
  %sub.i = add nsw i32 %conv6.i, -1
  %arrayidx16.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %56, i32 %sub.i
  %65 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx16.i, align 4
  %sub20.i = add nsw i32 %conv.i, -1
  %arrayidx21.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %54, i32 %sub20.i
  %67 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp23.i = icmp ult i32 %66, %68
  br i1 %cmp23.i, label %lor.lhs.false.i.if.then31_crit_edge, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false.i.if.then31_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.i.if.then31_crit_edge, %land.lhs.true9.i.if.then31_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr1.i) #8
  %69 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %drop_blk, align 8
  %71 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %save_blk, align 8
  %73 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %count, align 2
  %conv35 = zext i16 %74 to i32
  call fastcc void @xfs_dir3_leafn_moveents(ptr noundef %3, ptr noundef %70, ptr noundef nonnull %drophdr, ptr noundef %25, i32 noundef 0, ptr noundef %72, ptr noundef nonnull %savehdr, ptr noundef %23, i32 noundef 0, i32 noundef %conv35)
  br label %if.end42

if.else:                                          ; preds = %lor.lhs.false.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end26.if.else_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr2.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr1.i) #8
  %75 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %drop_blk, align 8
  %77 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %save_blk, align 8
  %count38 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %savehdr, i32 0, i32 3
  %79 = ptrtoint ptr %count38 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %count38, align 2
  %conv39 = zext i16 %80 to i32
  %81 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %count, align 2
  %conv41 = zext i16 %82 to i32
  call fastcc void @xfs_dir3_leafn_moveents(ptr noundef %3, ptr noundef %76, ptr noundef nonnull %drophdr, ptr noundef %25, i32 noundef 0, ptr noundef %78, ptr noundef nonnull %savehdr, ptr noundef %23, i32 noundef %conv39, i32 noundef %conv41)
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then31
  %count43 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %savehdr, i32 0, i32 3
  %83 = ptrtoint ptr %count43 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %count43, align 2
  %conv44 = zext i16 %84 to i32
  %sub45 = add nsw i32 %conv44, -1
  %arrayidx46 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %23, i32 %sub45
  %85 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx46, align 4
  %hashval48 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %save_blk, i32 0, i32 4
  %87 = ptrtoint ptr %hashval48 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %hashval48, align 4
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %89, ptr noundef %17, ptr noundef nonnull %savehdr) #8
  %90 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %5, align 8
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %91, ptr noundef %13, ptr noundef nonnull %drophdr) #8
  %92 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %save_blk, align 8
  call void @xfs_dir3_leaf_log_header(ptr noundef %3, ptr noundef %93) #8
  %94 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %drop_blk, align 8
  call void @xfs_dir3_leaf_log_header(ptr noundef %3, ptr noundef %95) #8
  %96 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %save_blk, align 8
  %call.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %5, ptr noundef %97) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end42.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i90

if.end42.xfs_dir3_leaf_check.exit_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i90:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %5, align 8
  %b_addr.i89 = getelementptr inbounds %struct.xfs_buf, ptr %97, i32 0, i32 16
  %100 = ptrtoint ptr %b_addr.i89 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %b_addr.i89, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %97, i32 0, i32 2
  %102 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %103, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %99, ptr noundef %101, i32 noundef %shl.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i90, %if.end42.xfs_dir3_leaf_check.exit_crit_edge
  %104 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %drop_blk, align 8
  %call.i91 = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %5, ptr noundef %105) #8
  %tobool.not.i92 = icmp eq ptr %call.i91, null
  br i1 %tobool.not.i92, label %xfs_dir3_leaf_check.exit.xfs_dir3_leaf_check.exit97_crit_edge, label %if.end.i96

xfs_dir3_leaf_check.exit.xfs_dir3_leaf_check.exit97_crit_edge: ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit97

if.end.i96:                                       ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %5, align 8
  %b_addr.i93 = getelementptr inbounds %struct.xfs_buf, ptr %105, i32 0, i32 16
  %108 = ptrtoint ptr %b_addr.i93 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %b_addr.i93, align 4
  %b_length.i94 = getelementptr inbounds %struct.xfs_buf, ptr %105, i32 0, i32 2
  %110 = ptrtoint ptr %b_length.i94 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %b_length.i94, align 8
  %shl.i95 = shl i32 %111, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %107, ptr noundef %109, i32 noundef %shl.i95, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i91) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir3_leaf_check.exit97

xfs_dir3_leaf_check.exit97:                       ; preds = %if.end.i96, %xfs_dir3_leaf_check.exit.xfs_dir3_leaf_check.exit97_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %drophdr) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %savehdr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir3_leaf_compact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir3_leafn_moveents(ptr noundef %args, ptr noundef %bp_s, ptr noundef %shdr, ptr nocapture noundef %sents, i32 noundef %start_s, ptr noundef %bp_d, ptr noundef %dhdr, ptr nocapture noundef %dents, i32 noundef %start_d, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_dir2_leafn_moveents(ptr noundef %args, i32 noundef %start_s, i32 noundef %start_d, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %count1 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %dhdr, i32 0, i32 3
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count1, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %start_d)
  %cmp2 = icmp sgt i32 %conv, %start_d
  br i1 %cmp2, label %if.then4, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %count, %start_d
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %dents, i32 %add
  %arrayidx5 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %dents, i32 %start_d
  %sub = sub i32 %conv, %start_d
  %mul = shl i32 %sub, 3
  %2 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx5, i32 %mul)
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count1, align 2
  %conv10 = zext i16 %4 to i32
  %add11 = add i32 %count, -1
  %sub12 = add i32 %add11, %conv10
  tail call void @xfs_dir3_leaf_log_ents(ptr noundef %args, ptr noundef %dhdr, ptr noundef %bp_d, i32 noundef %add, i32 noundef %sub12) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %if.end.if.end13_crit_edge
  %stale14 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %shdr, i32 0, i32 4
  %5 = ptrtoint ptr %stale14 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %stale14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp ne i16 %6, 0
  %.pre = add i32 %count, %start_s
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %start_s)
  %cmp17112 = icmp sgt i32 %.pre, %start_s
  %or.cond = and i1 %tobool.not, %cmp17112
  br i1 %or.cond, label %if.end13.for.body_crit_edge, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.0114 = phi i32 [ %inc24, %for.body.for.body_crit_edge ], [ %start_s, %if.end13.for.body_crit_edge ]
  %stale.0113 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %sents, i32 %i.0114, i32 1
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20 = icmp eq i32 %8, 0
  %inc = zext i1 %cmp20 to i32
  %spec.select = add i32 %stale.0113, %inc
  %inc24 = add nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc24, %.pre
  br i1 %exitcond.not, label %if.end25.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end25.loopexit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = trunc i32 %spec.select to i16
  br label %if.end25

if.end25:                                         ; preds = %if.end25.loopexit, %if.end13.if.end25_crit_edge
  %stale.2 = phi i16 [ %phi.cast, %if.end25.loopexit ], [ 0, %if.end13.if.end25_crit_edge ]
  %arrayidx26 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %dents, i32 %start_d
  %arrayidx27 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %sents, i32 %start_s
  %mul28 = shl i32 %count, 3
  %9 = call ptr @memcpy(ptr %arrayidx26, ptr %arrayidx27, i32 %mul28)
  %add29 = add i32 %count, %start_d
  %sub30 = add i32 %add29, -1
  tail call void @xfs_dir3_leaf_log_ents(ptr noundef %args, ptr noundef %dhdr, ptr noundef %bp_d, i32 noundef %start_d, i32 noundef %sub30) #8
  %count32 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %shdr, i32 0, i32 3
  %10 = ptrtoint ptr %count32 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count32, align 2
  %conv33 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %conv33)
  %cmp34 = icmp slt i32 %.pre, %conv33
  br i1 %cmp34, label %if.then36, label %if.end25.if.end43_crit_edge

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx39 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %sents, i32 %.pre
  %12 = call ptr @memmove(ptr %arrayidx27, ptr %arrayidx39, i32 %mul28)
  %sub42 = add i32 %.pre, -1
  tail call void @xfs_dir3_leaf_log_ents(ptr noundef %args, ptr noundef %shdr, ptr noundef %bp_s, i32 noundef %start_s, i32 noundef %sub42) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.end25.if.end43_crit_edge
  %13 = ptrtoint ptr %count32 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %count32, align 2
  %15 = trunc i32 %count to i16
  %conv47 = sub i16 %14, %15
  store i16 %conv47, ptr %count32, align 2
  %16 = ptrtoint ptr %stale14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %stale14, align 4
  %conv51 = sub i16 %17, %stale.2
  store i16 %conv51, ptr %stale14, align 4
  %18 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count1, align 2
  %conv55 = add i16 %19, %15
  store i16 %conv55, ptr %count1, align 2
  %stale56 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %dhdr, i32 0, i32 4
  %20 = ptrtoint ptr %stale56 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %stale56, align 4
  %conv59 = add i16 %21, %stale.2
  store i16 %conv59, ptr %stale56, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_leaf_hdr_to_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_node_addname(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %fbp.i.i = alloca ptr, align 4
  %fo.i.i = alloca i64, align 8
  %freehdr.i = alloca %struct.xfs_dir3_icfree_hdr, align 4
  %dbp.i = alloca ptr, align 4
  %fbp.i = alloca ptr, align 4
  %dbno.i = alloca i32, align 4
  %findex.i = alloca i32, align 4
  %needlog.i = alloca i32, align 4
  %needscan.i = alloca i32, align 4
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !138
  tail call fastcc void @trace_xfs_dir2_node_addname(ptr noundef %args)
  %call = tail call ptr @xfs_da_state_alloc(ptr noundef %args) #8
  %call1 = call i32 @xfs_da3_node_lookup_int(ptr noundef %call, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.endthread-pre-split, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %rval, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %rval, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then
  %3 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %call1, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp.not = icmp eq i32 %3, -2
  br i1 %cmp.not, label %if.end3, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end3:                                          ; preds = %if.end
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7
  %spec.select = select i1 %tobool4.not, ptr null, ptr %extrablk
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %6 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans.i, align 4
  %dp1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %8 = ptrtoint ptr %dp1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %freehdr.i) #8
  %10 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i, i32 0, i32 4
  %14 = call ptr @memset(ptr %freehdr.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp.i) #8
  %15 = ptrtoint ptr %dbp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbp.i) #8
  %16 = ptrtoint ptr %fbp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %fbp.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbno.i) #8
  %17 = ptrtoint ptr %dbno.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %dbno.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %findex.i) #8
  %18 = ptrtoint ptr %findex.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %findex.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog.i) #8
  %19 = ptrtoint ptr %needlog.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %needlog.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan.i) #8
  %20 = ptrtoint ptr %needscan.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %needscan.i, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %9, align 8
  %namelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %23 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %namelen.i, align 8
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %22, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.i.not.i.i, i32 11, i32 12
  %spec.select.i.i = add i32 %24, -1
  %sub.i.i = add i32 %spec.select.i.i, %spec.select.v.i.i
  %or.i.i = or i32 %sub.i.i, 7
  %add3.i.i = add i32 %or.i.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbp.i.i) #8
  %27 = ptrtoint ptr %fbp.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %fbp.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fo.i.i) #8
  %28 = ptrtoint ptr %fo.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %fo.i.i, align 8, !annotation !138
  %tobool.not.i.i = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i.i, label %if.end3.if.end32.i.i_crit_edge, label %if.then.i.i

if.end3.if.end32.i.i_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %if.end3
  %29 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spec.select, align 8
  %31 = ptrtoint ptr %fbp.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %fbp.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.xfs_da_state_blk, ptr %spec.select, i32 0, i32 3
  %32 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i.i, align 8
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %9, align 8
  %b_addr.i.i = getelementptr inbounds %struct.xfs_buf, ptr %30, i32 0, i32 16
  %36 = ptrtoint ptr %b_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_addr.i.i, align 4
  %m_features.i.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %35, i32 0, i32 61
  %38 = ptrtoint ptr %m_features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 8
  %42 = ptrtoint ptr %freehdr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %freehdr.i, align 4
  %firstdb.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %37, i32 0, i32 1
  %43 = ptrtoint ptr %firstdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %firstdb.i.i.i, align 8
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %10, align 4
  %nvalid.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %37, i32 0, i32 2
  %46 = ptrtoint ptr %nvalid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nvalid.i.i.i, align 4
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %11, align 4
  %nused.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %37, i32 0, i32 3
  %49 = ptrtoint ptr %nused.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nused.i.i.i, align 8
  %51 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %12, align 4
  %bests.i.i.i = getelementptr inbounds %struct.xfs_dir3_free, ptr %37, i32 0, i32 1
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %bests.i.i.i, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %41)
  %cmp.i.i.i = icmp eq i32 %41, 1480869427
  br i1 %cmp.i.i.i, label %if.then.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge, label %cond.false.i.i.i, !prof !137

if.then.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %53 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %37, align 4
  %55 = ptrtoint ptr %freehdr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %freehdr.i, align 4
  %firstdb16.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %37, i32 0, i32 1
  %56 = ptrtoint ptr %firstdb16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %firstdb16.i.i.i, align 4
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %10, align 4
  %nvalid19.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %37, i32 0, i32 2
  %59 = ptrtoint ptr %nvalid19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nvalid19.i.i.i, align 4
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %11, align 4
  %nused22.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %37, i32 0, i32 3
  %62 = ptrtoint ptr %nused22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nused22.i.i.i, align 4
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %12, align 4
  %bests24.i.i.i = getelementptr inbounds %struct.xfs_dir2_free, ptr %37, i32 0, i32 1
  %65 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %bests24.i.i.i, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %54)
  %cmp28.i.i.i = icmp eq i32 %54, 1480864326
  br i1 %cmp28.i.i.i, label %if.else.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge, label %cond.false36.i.i.i, !prof !137

if.else.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

cond.false36.i.i.i:                               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

xfs_dir2_free_hdr_from_disk.exit.i.i:             ; preds = %cond.false36.i.i.i, %if.else.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge, %cond.false.i.i.i, %if.then.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.i = icmp sgt i32 %33, -1
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end.i.i

if.then2.i.i:                                     ; preds = %xfs_dir2_free_hdr_from_disk.exit.i.i
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %67)
  %cmp3.i.i = icmp ult i32 %33, %67
  br i1 %cmp3.i.i, label %if.then2.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !137

if.then2.i.i.cond.end.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 1821) #8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then2.i.i.cond.end.i.i_crit_edge
  %68 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %13, align 4
  %arrayidx.i.i = getelementptr i16, ptr %69, i32 %33
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %71)
  %cmp6.not.i.i = icmp eq i16 %71, -1
  br i1 %cmp6.not.i.i, label %cond.false15.i.i, label %cond.end.i.i.cond.end16.i.i_crit_edge, !prof !145

cond.end.i.i.cond.end16.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16.i.i

cond.false15.i.i:                                 ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 1822) #8
  br label %cond.end16.i.i

cond.end16.i.i:                                   ; preds = %cond.false15.i.i, %cond.end.i.i.cond.end16.i.i_crit_edge
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i.i, align 2
  %conv19.i.i = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %conv19.i.i)
  %cmp20.not.i.i = icmp sgt i32 %add3.i.i, %conv19.i.i
  br i1 %cmp20.not.i.i, label %cond.false29.i.i, label %cond.end16.i.i.found_block.sink.split.i.i_crit_edge, !prof !145

cond.end16.i.i.found_block.sink.split.i.i_crit_edge: ; preds = %cond.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found_block.sink.split.i.i

cond.false29.i.i:                                 ; preds = %cond.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 1823) #8
  br label %found_block.sink.split.i.i

if.end.i.i:                                       ; preds = %xfs_dir2_free_hdr_from_disk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %blkno.i.i = getelementptr inbounds %struct.xfs_da_state_blk, ptr %spec.select, i32 0, i32 1
  %74 = ptrtoint ptr %blkno.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %blkno.i.i, align 4
  %76 = ptrtoint ptr %fbp.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fbp.i.i, align 4
  call void @xfs_trans_brelse(ptr noundef %7, ptr noundef %77) #8
  %78 = ptrtoint ptr %fbp.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %fbp.i.i, align 4
  %79 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %spec.select, align 8
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end.i.i, %if.end3.if.end32.i.i_crit_edge
  %ifbno.0.i.i = phi i32 [ %75, %if.end.i.i ], [ -1, %if.end3.if.end32.i.i_crit_edge ]
  %findex.0.i.i = phi i32 [ %33, %if.end.i.i ], [ 0, %if.end3.if.end32.i.i_crit_edge ]
  %call.i.i = call i32 @xfs_bmap_last_offset(ptr noundef %9, ptr noundef nonnull %fo.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool33.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end35.i.i, label %if.end32.i.i.xfs_dir2_node_find_freeblk.exit.thread.i_crit_edge

if.end32.i.i.xfs_dir2_node_find_freeblk.exit.thread.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_node_find_freeblk.exit.thread.i

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %80 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %args, align 8
  %82 = ptrtoint ptr %fo.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %fo.i.i, align 8
  %conv36.i.i = trunc i64 %83 to i32
  %blklog.i.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %81, i32 0, i32 3
  %84 = ptrtoint ptr %blklog.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %blklog.i.i.i, align 1
  %conv.i.i.i = zext i8 %85 to i32
  %fsblog.i.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %81, i32 0, i32 2
  %86 = ptrtoint ptr %fsblog.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %fsblog.i.i.i, align 4
  %conv1.i.i.i = zext i8 %87 to i32
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv1.i.i.i
  %shr.i.i.i = lshr i32 %conv36.i.i, %sub.i.i.i
  %sh_prom.i.i.i = zext i8 %85 to i64
  %shr.i131164.i.i = lshr i64 68719476736, %sh_prom.i.i.i
  %conv1.i132.i.i = trunc i64 %shr.i131164.i.i to i32
  %fbno.0169.i.i = add i32 %shr.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %fbno.0169.i.i, i32 %conv1.i132.i.i)
  %cmp40.not170.i.i = icmp ult i32 %fbno.0169.i.i, %conv1.i132.i.i
  br i1 %cmp40.not170.i.i, label %if.end35.i.i.if.end.i_crit_edge, label %for.body.i.preheader.i

if.end35.i.i.if.end.i_crit_edge:                  ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.i.preheader.i:                           ; preds = %if.end35.i.i
  %88 = ptrtoint ptr %freehdr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %freehdr.promoted.i = load i32, ptr %freehdr.i, align 4
  %89 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.promoted.i = load i32, ptr %10, align 4
  %90 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.promoted144.i = load i32, ptr %11, align 4
  %91 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.promoted148.i = load i32, ptr %12, align 4
  %92 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.promoted152.i = load ptr, ptr %13, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc77.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %bests.i147.i155.i = phi ptr [ %bests.i147.i154.i, %for.inc77.i.i.for.body.i.i_crit_edge ], [ %.promoted152.i, %for.body.i.preheader.i ]
  %93 = phi i32 [ %136, %for.inc77.i.i.for.body.i.i_crit_edge ], [ %.promoted148.i, %for.body.i.preheader.i ]
  %94 = phi i32 [ %137, %for.inc77.i.i.for.body.i.i_crit_edge ], [ %.promoted144.i, %for.body.i.preheader.i ]
  %95 = phi i32 [ %138, %for.inc77.i.i.for.body.i.i_crit_edge ], [ %.promoted.i, %for.body.i.preheader.i ]
  %96 = phi i32 [ %139, %for.inc77.i.i.for.body.i.i_crit_edge ], [ %freehdr.promoted.i, %for.body.i.preheader.i ]
  %fbno.0172.i.i = phi i32 [ %fbno.0.i.i, %for.inc77.i.i.for.body.i.i_crit_edge ], [ %fbno.0169.i.i, %for.body.i.preheader.i ]
  %findex.1171.i.i = phi i32 [ %findex.3.i.i, %for.inc77.i.i.for.body.i.i_crit_edge ], [ %findex.0.i.i, %for.body.i.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fbno.0172.i.i, i32 %ifbno.0.i.i)
  %cmp42.i.i = icmp eq i32 %fbno.0172.i.i, %ifbno.0.i.i
  br i1 %cmp42.i.i, label %for.body.i.i.for.inc77.i.i_crit_edge, label %if.end45.i.i

for.body.i.i.for.inc77.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.i.i

if.end45.i.i:                                     ; preds = %for.body.i.i
  %97 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %args, align 8
  %blklog.i133.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %blklog.i133.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %blklog.i133.i.i, align 1
  %conv.i134.i.i = zext i8 %100 to i32
  %fsblog.i135.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %98, i32 0, i32 2
  %101 = ptrtoint ptr %fsblog.i135.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %fsblog.i135.i.i, align 4
  %conv1.i136.i.i = zext i8 %102 to i32
  %sub.i137.i.i = sub nsw i32 %conv.i134.i.i, %conv1.i136.i.i
  %shl.i.i.i = shl i32 %fbno.0172.i.i, %sub.i137.i.i
  %call.i.i.i = call fastcc i32 @__xfs_dir3_free_read(ptr noundef %7, ptr noundef %9, i32 noundef %shl.i.i.i, i32 noundef 1, ptr noundef nonnull %fbp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool49.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end51.i.i, label %xfs_dir2_node_find_freeblk.exit.thread.loopexit.i

if.end51.i.i:                                     ; preds = %if.end45.i.i
  %103 = ptrtoint ptr %fbp.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fbp.i.i, align 4
  %tobool52.not.i.i = icmp eq ptr %104, null
  br i1 %tobool52.not.i.i, label %if.end51.i.i.for.inc77.i.i_crit_edge, label %if.end54.i.i

if.end51.i.i.for.inc77.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.i.i

if.end54.i.i:                                     ; preds = %if.end51.i.i
  %105 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %9, align 8
  %b_addr56.i.i = getelementptr inbounds %struct.xfs_buf, ptr %104, i32 0, i32 16
  %107 = ptrtoint ptr %b_addr56.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %b_addr56.i.i, align 4
  %m_features.i.i138.i.i = getelementptr inbounds %struct.xfs_mount, ptr %106, i32 0, i32 61
  %109 = ptrtoint ptr %m_features.i.i138.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %m_features.i.i138.i.i, align 8
  %and.i.i139.i.i = and i64 %110, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i139.i.i)
  %tobool.i.not.i140.i.i = icmp eq i64 %and.i.i139.i.i, 0
  br i1 %tobool.i.not.i140.i.i, label %if.else.i161.i.i, label %if.then.i150.i.i

if.then.i150.i.i:                                 ; preds = %if.end54.i.i
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %108, align 8
  %firstdb.i141.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %108, i32 0, i32 1
  %113 = ptrtoint ptr %firstdb.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %firstdb.i141.i.i, align 8
  %nvalid.i143.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %108, i32 0, i32 2
  %115 = ptrtoint ptr %nvalid.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nvalid.i143.i.i, align 4
  %nused.i145.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %108, i32 0, i32 3
  %117 = ptrtoint ptr %nused.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nused.i145.i.i, align 8
  %bests.i147.i.i = getelementptr inbounds %struct.xfs_dir3_free, ptr %108, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %112)
  %cmp.i149.i.i = icmp eq i32 %112, 1480869427
  br i1 %cmp.i149.i.i, label %if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge, label %cond.false.i151.i.i, !prof !137

if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge: ; preds = %if.then.i150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit163.i.i

cond.false.i151.i.i:                              ; preds = %if.then.i150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit163.i.i

if.else.i161.i.i:                                 ; preds = %if.end54.i.i
  %119 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %108, align 4
  %firstdb16.i152.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %108, i32 0, i32 1
  %121 = ptrtoint ptr %firstdb16.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %firstdb16.i152.i.i, align 4
  %nvalid19.i154.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %108, i32 0, i32 2
  %123 = ptrtoint ptr %nvalid19.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nvalid19.i154.i.i, align 4
  %nused22.i156.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %108, i32 0, i32 3
  %125 = ptrtoint ptr %nused22.i156.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nused22.i156.i.i, align 4
  %bests24.i158.i.i = getelementptr inbounds %struct.xfs_dir2_free, ptr %108, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %120)
  %cmp28.i160.i.i = icmp eq i32 %120, 1480864326
  br i1 %cmp28.i160.i.i, label %if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge, label %cond.false36.i162.i.i, !prof !137

if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge: ; preds = %if.else.i161.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit163.i.i

cond.false36.i162.i.i:                            ; preds = %if.else.i161.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit163.i.i

xfs_dir2_free_hdr_from_disk.exit163.i.i:          ; preds = %cond.false36.i162.i.i, %if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge, %cond.false.i151.i.i, %if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge
  %bests.i147.i153.i = phi ptr [ %bests24.i158.i.i, %cond.false36.i162.i.i ], [ %bests24.i158.i.i, %if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ], [ %bests.i147.i.i, %cond.false.i151.i.i ], [ %bests.i147.i.i, %if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ]
  %127 = phi i32 [ %126, %cond.false36.i162.i.i ], [ %126, %if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ], [ %118, %cond.false.i151.i.i ], [ %118, %if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ]
  %128 = phi i32 [ %124, %cond.false36.i162.i.i ], [ %124, %if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ], [ %116, %cond.false.i151.i.i ], [ %116, %if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ]
  %129 = phi i32 [ %122, %cond.false36.i162.i.i ], [ %122, %if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ], [ %114, %cond.false.i151.i.i ], [ %114, %if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ]
  %130 = phi i32 [ %120, %cond.false36.i162.i.i ], [ 1480864326, %if.else.i161.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ], [ %112, %cond.false.i151.i.i ], [ 1480869427, %if.then.i150.i.i.xfs_dir2_free_hdr_from_disk.exit163.i.i_crit_edge ]
  %131 = add i32 %128, -1
  %smin.i.i = call i32 @llvm.smin.i32(i32 %131, i32 -1) #8
  br label %for.cond59.i.i

for.cond59.i.i:                                   ; preds = %for.body62.i.i.for.cond59.i.i_crit_edge, %xfs_dir2_free_hdr_from_disk.exit163.i.i
  %findex.2.in.i.i = phi i32 [ %128, %xfs_dir2_free_hdr_from_disk.exit163.i.i ], [ %findex.2.i.i, %for.body62.i.i.for.cond59.i.i_crit_edge ]
  %findex.2.i.i = add i32 %findex.2.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %findex.2.i.i)
  %cmp60.i.i = icmp sgt i32 %findex.2.i.i, -1
  br i1 %cmp60.i.i, label %for.body62.i.i, label %for.end.i.i

for.body62.i.i:                                   ; preds = %for.cond59.i.i
  %arrayidx64.i.i = getelementptr i16, ptr %bests.i147.i153.i, i32 %findex.2.i.i
  %132 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx64.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %133)
  %cmp66.not.i.i = icmp eq i16 %133, -1
  %conv65.i.i = zext i16 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %conv65.i.i)
  %cmp71.not.i.i = icmp sgt i32 %add3.i.i, %conv65.i.i
  %or.cond.i.i = or i1 %cmp66.not.i.i, %cmp71.not.i.i
  br i1 %or.cond.i.i, label %for.body62.i.i.for.cond59.i.i_crit_edge, label %found_block.sink.split.i.loopexit.i

for.body62.i.i.for.cond59.i.i_crit_edge:          ; preds = %for.body62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond59.i.i

for.end.i.i:                                      ; preds = %for.cond59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %fbp.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fbp.i.i, align 4
  call void @xfs_trans_brelse(ptr noundef %7, ptr noundef %135) #8
  br label %for.inc77.i.i

for.inc77.i.i:                                    ; preds = %for.end.i.i, %if.end51.i.i.for.inc77.i.i_crit_edge, %for.body.i.i.for.inc77.i.i_crit_edge
  %bests.i147.i154.i = phi ptr [ %bests.i147.i155.i, %for.body.i.i.for.inc77.i.i_crit_edge ], [ %bests.i147.i153.i, %for.end.i.i ], [ %bests.i147.i155.i, %if.end51.i.i.for.inc77.i.i_crit_edge ]
  %136 = phi i32 [ %93, %for.body.i.i.for.inc77.i.i_crit_edge ], [ %127, %for.end.i.i ], [ %93, %if.end51.i.i.for.inc77.i.i_crit_edge ]
  %137 = phi i32 [ %94, %for.body.i.i.for.inc77.i.i_crit_edge ], [ %128, %for.end.i.i ], [ %94, %if.end51.i.i.for.inc77.i.i_crit_edge ]
  %138 = phi i32 [ %95, %for.body.i.i.for.inc77.i.i_crit_edge ], [ %129, %for.end.i.i ], [ %95, %if.end51.i.i.for.inc77.i.i_crit_edge ]
  %139 = phi i32 [ %96, %for.body.i.i.for.inc77.i.i_crit_edge ], [ %130, %for.end.i.i ], [ %96, %if.end51.i.i.for.inc77.i.i_crit_edge ]
  %findex.3.i.i = phi i32 [ %findex.1171.i.i, %for.body.i.i.for.inc77.i.i_crit_edge ], [ %smin.i.i, %for.end.i.i ], [ %findex.1171.i.i, %if.end51.i.i.for.inc77.i.i_crit_edge ]
  %fbno.0.i.i = add i32 %fbno.0172.i.i, -1
  %cmp40.not.i.i = icmp ult i32 %fbno.0.i.i, %conv1.i132.i.i
  br i1 %cmp40.not.i.i, label %if.end.loopexit.i, label %for.inc77.i.i.for.body.i.i_crit_edge

for.inc77.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

found_block.sink.split.i.loopexit.i:              ; preds = %for.body62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %freehdr.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %130, ptr %freehdr.i, align 4
  %141 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %129, ptr %10, align 4
  %142 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %128, ptr %11, align 4
  %143 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %127, ptr %12, align 4
  %144 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %bests.i147.i153.i, ptr %13, align 4
  br label %found_block.sink.split.i.i

found_block.sink.split.i.i:                       ; preds = %found_block.sink.split.i.loopexit.i, %cond.false29.i.i, %cond.end16.i.i.found_block.sink.split.i.i_crit_edge
  %findex.2.lcssa175.sink.i.i = phi i32 [ %33, %cond.false29.i.i ], [ %33, %cond.end16.i.i.found_block.sink.split.i.i_crit_edge ], [ %findex.2.i.i, %found_block.sink.split.i.loopexit.i ]
  %145 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %10, align 4
  %add75.i.i = add i32 %146, %findex.2.lcssa175.sink.i.i
  br label %if.end.i

xfs_dir2_node_find_freeblk.exit.thread.loopexit.i: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %freehdr.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %96, ptr %freehdr.i, align 4
  %148 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %95, ptr %10, align 4
  %149 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %94, ptr %11, align 4
  %150 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %93, ptr %12, align 4
  br label %xfs_dir2_node_find_freeblk.exit.thread.i

xfs_dir2_node_find_freeblk.exit.thread.i:         ; preds = %xfs_dir2_node_find_freeblk.exit.thread.loopexit.i, %if.end32.i.i.xfs_dir2_node_find_freeblk.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end32.i.i.xfs_dir2_node_find_freeblk.exit.thread.i_crit_edge ], [ %call.i.i.i, %xfs_dir2_node_find_freeblk.exit.thread.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i.i) #8
  br label %xfs_dir2_node_addname_int.exit.thread

if.end.loopexit.i:                                ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %freehdr.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %139, ptr %freehdr.i, align 4
  %152 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %138, ptr %10, align 4
  %153 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %137, ptr %11, align 4
  %154 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %136, ptr %12, align 4
  %155 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %bests.i147.i154.i, ptr %13, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.loopexit.i, %found_block.sink.split.i.i, %if.end35.i.i.if.end.i_crit_edge
  %dbno.0.i.i = phi i32 [ -1, %if.end35.i.i.if.end.i_crit_edge ], [ %add75.i.i, %found_block.sink.split.i.i ], [ -1, %if.end.loopexit.i ]
  %findex.4.i.i = phi i32 [ %findex.0.i.i, %if.end35.i.i.if.end.i_crit_edge ], [ %findex.2.lcssa175.sink.i.i, %found_block.sink.split.i.i ], [ %findex.3.i.i, %if.end.loopexit.i ]
  %156 = ptrtoint ptr %dbno.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %dbno.0.i.i, ptr %dbno.i, align 4
  %157 = ptrtoint ptr %fbp.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fbp.i.i, align 4
  %159 = ptrtoint ptr %fbp.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %fbp.i, align 4
  %160 = ptrtoint ptr %findex.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %findex.4.i.i, ptr %findex.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i.i) #8
  %op_flags.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %161 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %op_flags.i, align 8
  %and.i = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dbno.0.i.i)
  %cmp8.i = icmp eq i32 %dbno.0.i.i, -1
  br i1 %tobool3.not.i, label %if.end7.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %cmp8.i, label %if.then4.i.xfs_dir2_node_addname_int.exit.thread_crit_edge, label %if.then4.i.if.end8_crit_edge

if.then4.i.if.end8_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4.i.xfs_dir2_node_addname_int.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_node_addname_int.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = call fastcc i32 @xfs_dir2_node_add_datablk(ptr noundef %args, ptr noundef %spec.select, ptr noundef nonnull %dbno.i, ptr noundef nonnull %dbp.i, ptr noundef nonnull %fbp.i, ptr noundef nonnull %freehdr.i, ptr noundef nonnull %findex.i) #8
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %args, align 8
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %blklog.i.i, align 1
  %conv.i.i = zext i8 %166 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %164, i32 0, i32 2
  %167 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i = zext i8 %168 to i32
  %sub.i132.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %shl.i.i = shl i32 %dbno.0.i.i, %sub.i132.i
  %call12.i = call i32 @xfs_dir3_data_read(ptr noundef %7, ptr noundef %9, i32 noundef %shl.i.i, i32 noundef 0, ptr noundef nonnull %dbp.i) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then9.i
  %error.0.i = phi i32 [ %call10.i, %if.then9.i ], [ %call12.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool14.not.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.xfs_dir2_node_addname_int.exit.thread_crit_edge

if.end13.i.xfs_dir2_node_addname_int.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_node_addname_int.exit.thread

if.end16.i:                                       ; preds = %if.end13.i
  %169 = ptrtoint ptr %dbp.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dbp.i, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %170, i32 0, i32 16
  %171 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %b_addr.i, align 4
  %173 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %9, align 8
  %call18.i = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %174, ptr noundef %172) #8
  %length19.i = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call18.i, i32 0, i32 1
  %175 = ptrtoint ptr %length19.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %length19.i, align 2
  %conv.i = zext i16 %176 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %conv.i)
  %cmp20.not.i = icmp sgt i32 %add3.i.i, %conv.i
  br i1 %cmp20.not.i, label %cond.false.i, label %if.end16.i.cond.end.i_crit_edge, !prof !145

if.end16.i.cond.end.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 1954) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end16.i.cond.end.i_crit_edge
  %177 = ptrtoint ptr %call18.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %call18.i, align 2
  %conv25.i = zext i16 %178 to i32
  %add.ptr.i = getelementptr i8, ptr %172, i32 %conv25.i
  %179 = ptrtoint ptr %dbp.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dbp.i, align 4
  %call26.i = call i32 @xfs_dir2_data_use_free(ptr noundef %args, ptr noundef %180, ptr noundef %add.ptr.i, i32 noundef %conv25.i, i32 noundef %add3.i.i, ptr noundef nonnull %needlog.i, ptr noundef nonnull %needscan.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then28.i

if.then28.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %dbp.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dbp.i, align 4
  call void @xfs_trans_brelse(ptr noundef %7, ptr noundef %182) #8
  br label %xfs_dir2_node_addname_int.exit.thread

if.end29.i:                                       ; preds = %cond.end.i
  %inumber.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %183 = ptrtoint ptr %inumber.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %inumber.i, align 8
  %185 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %184, ptr %add.ptr.i, align 8
  %186 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %namelen.i, align 8
  %conv32.i = trunc i32 %187 to i8
  %namelen33.i = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr.i, i32 0, i32 1
  %188 = ptrtoint ptr %namelen33.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv32.i, ptr %namelen33.i, align 8
  %name.i = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr.i, i32 0, i32 2
  %name34.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %189 = ptrtoint ptr %name34.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %name34.i, align 4
  %conv36.i = and i32 %187, 255
  %191 = call ptr @memcpy(ptr %name.i, ptr %190, i32 %conv36.i)
  %192 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %9, align 8
  %filetype.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %194 = ptrtoint ptr %filetype.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %filetype.i, align 4
  call void @xfs_dir2_data_put_ftype(ptr noundef %193, ptr noundef %add.ptr.i, i8 noundef zeroext %195) #8
  %196 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %9, align 8
  %call39.i = call ptr @xfs_dir2_data_entry_tag_p(ptr noundef %197, ptr noundef %add.ptr.i) #8
  %198 = ptrtoint ptr %call39.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %178, ptr %call39.i, align 2
  %199 = ptrtoint ptr %dbp.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dbp.i, align 4
  call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %200, ptr noundef %add.ptr.i) #8
  %201 = ptrtoint ptr %needscan.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %needscan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool44.not.i = icmp eq i32 %202, 0
  br i1 %tobool44.not.i, label %if.end29.i.if.end47.i_crit_edge, label %if.then45.i

if.end29.i.if.end47.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %9, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %204, ptr noundef %172, ptr noundef nonnull %needlog.i) #8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then45.i, %if.end29.i.if.end47.i_crit_edge
  %205 = ptrtoint ptr %needlog.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %needlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool48.not.i = icmp eq i32 %206, 0
  br i1 %tobool48.not.i, label %if.end47.i.if.end50.i_crit_edge, label %if.then49.i

if.end47.i.if.end50.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %dbp.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dbp.i, align 4
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %208) #8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end47.i.if.end50.i_crit_edge
  %209 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %13, align 4
  %211 = ptrtoint ptr %findex.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %findex.i, align 4
  %arrayidx51.i = getelementptr i16, ptr %210, i32 %212
  %213 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx51.i, align 2
  %215 = ptrtoint ptr %length19.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %length19.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %214, i16 %216)
  %cmp56.not.i = icmp eq i16 %214, %216
  br i1 %cmp56.not.i, label %if.end63.i, label %if.end63.thread.i

if.end63.thread.i:                                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  %217 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %arrayidx51.i, align 2
  br label %if.then65.i

if.end63.i:                                       ; preds = %if.end50.i
  br i1 %cmp8.i, label %if.end63.i.if.then65.i_crit_edge, label %if.end63.i.if.end66.i_crit_edge

if.end63.i.if.end66.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.end63.i.if.then65.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65.i

if.then65.i:                                      ; preds = %if.end63.i.if.then65.i_crit_edge, %if.end63.thread.i
  %218 = ptrtoint ptr %fbp.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %fbp.i, align 4
  call fastcc void @xfs_dir2_free_log_bests(ptr noundef %args, ptr noundef nonnull %freehdr.i, ptr noundef %219, i32 noundef %212, i32 noundef %212) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %if.end63.i.if.end66.i_crit_edge
  %220 = ptrtoint ptr %dbno.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %dbno.i, align 4
  %blkno.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %222 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %blkno.i, align 8
  %223 = ptrtoint ptr %call39.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %call39.i, align 2
  %conv67.i = zext i16 %224 to i32
  %index.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %225 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %conv67.i, ptr %index.i, align 4
  br label %if.end8

xfs_dir2_node_addname_int.exit.thread:            ; preds = %if.then28.i, %if.end13.i.xfs_dir2_node_addname_int.exit.thread_crit_edge, %if.then4.i.xfs_dir2_node_addname_int.exit.thread_crit_edge, %xfs_dir2_node_find_freeblk.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %xfs_dir2_node_find_freeblk.exit.thread.i ], [ %error.0.i, %if.end13.i.xfs_dir2_node_addname_int.exit.thread_crit_edge ], [ %call26.i, %if.then28.i ], [ -28, %if.then4.i.xfs_dir2_node_addname_int.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %findex.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbno.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr.i) #8
  %226 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %retval.0.i.ph, ptr %rval, align 4
  br label %done

if.end8:                                          ; preds = %if.end66.i, %if.then4.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %findex.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbno.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr.i) #8
  %227 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %rval, align 4
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 2
  %228 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %path, align 8
  %sub = add i32 %229, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub
  %magic = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %230 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54015, i32 %231)
  %cmp11 = icmp eq i32 %231, 54015
  br i1 %cmp11, label %if.end8.cond.end17_crit_edge, label %cond.false16, !prof !137

if.end8.cond.end17_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17

cond.false16:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 2039) #8
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %if.end8.cond.end17_crit_edge
  %232 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx, align 8
  %index = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub, i32 3
  %234 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %index, align 8
  %call18 = call fastcc i32 @xfs_dir2_leafn_add(ptr noundef %233, ptr noundef %args, i32 noundef %235)
  %236 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %call18, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %cond.end17
  %237 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %op_flags.i, align 8
  %and = and i32 %238, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then23, label %if.then21.done_crit_edge

if.then21.done_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_da3_fixhashpath(ptr noundef %call, ptr noundef %path) #8
  br label %done

if.else:                                          ; preds = %cond.end17
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %239 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp26 = icmp eq i32 %240, 0
  br i1 %cmp26, label %if.then28, label %if.end40

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call18)
  %cmp29 = icmp eq i32 %call18, -28
  br i1 %cmp29, label %if.then28.done_crit_edge, label %cond.false38, !prof !137

if.then28.done_crit_edge:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

cond.false38:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 2055) #8
  br label %done

if.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = call i32 @xfs_da3_split(ptr noundef %call) #8
  %241 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %call41, ptr %rval, align 4
  br label %done

done:                                             ; preds = %if.end40, %cond.false38, %if.then28.done_crit_edge, %if.then23, %if.then21.done_crit_edge, %xfs_dir2_node_addname_int.exit.thread, %if.end.done_crit_edge
  call void @xfs_da_state_free(ptr noundef %call) #8
  %242 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 %243
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_node_addname(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_addname, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_node_addname, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %call42 = tail call i32 @__traceiter_xfs_dir2_node_addname(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_addname, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_addname, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_node_addname.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_node_addname.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1975, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local ptr @xfs_da_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_node_lookup_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da3_fixhashpath(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_node_lookup(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !138
  tail call fastcc void @trace_xfs_dir2_node_lookup(ptr noundef %args)
  %call = tail call ptr @xfs_da_state_alloc(ptr noundef %args) #8
  %call1 = call i32 @xfs_da3_node_lookup_int(ptr noundef %call, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %rval, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp = icmp eq i32 %3, -2
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.else
  %cmpresult = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %4 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmpresult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %extrablk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extrablk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %index = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %12 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %namelen, align 8
  %conv = zext i8 %13 to i32
  %call5 = call i32 @xfs_dir_cilookup_result(ptr noundef %args, ptr noundef %name, i32 noundef %conv) #8
  %14 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call5, ptr %rval, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true.if.end6_crit_edge, %if.else.if.end6_crit_edge, %if.then
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp748 = icmp sgt i32 %16, 0
  br i1 %cmp748, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans, align 4
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %i.049
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 8
  call void @xfs_trans_brelse(ptr noundef %18, ptr noundef %20) #8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.049, 1
  %22 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %path, align 8
  %cmp7 = icmp slt i32 %inc, %23
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %for.end.if.end27_crit_edge, label %land.lhs.true17

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true17:                                  ; preds = %for.end
  %extrablk18 = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %extrablk18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %extrablk18, align 8
  %tobool20.not = icmp eq ptr %27, null
  br i1 %tobool20.not, label %land.lhs.true17.if.end27_crit_edge, label %if.then21

land.lhs.true17.if.end27_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  %trans22 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %28 = ptrtoint ptr %trans22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans22, align 4
  call void @xfs_trans_brelse(ptr noundef %29, ptr noundef nonnull %27) #8
  %30 = ptrtoint ptr %extrablk18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %extrablk18, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %land.lhs.true17.if.end27_crit_edge, %for.end.if.end27_crit_edge
  call void @xfs_da_state_free(ptr noundef %call) #8
  %31 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 %32
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_node_lookup(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_node_lookup, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !151
  %call42 = tail call i32 @__traceiter_xfs_dir2_node_lookup(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !152
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_node_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_node_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1976, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local i32 @xfs_dir_cilookup_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_node_removename(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %freehdr.i.i = alloca %struct.xfs_dir3_icfree_hdr, align 4
  %needlog.i = alloca i32, align 4
  %needscan.i = alloca i32, align 4
  %leafhdr.i = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %fbp.i = alloca ptr, align 4
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !138
  tail call fastcc void @trace_xfs_dir2_node_removename(ptr noundef %args)
  %call = tail call ptr @xfs_da_state_alloc(ptr noundef %args) #8
  %call1 = call i32 @xfs_da3_node_lookup_int(ptr noundef %call, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_free_crit_edge

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %2)
  %cmp.not = icmp eq i32 %2, -17
  br i1 %cmp.not, label %if.end3, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end3:                                          ; preds = %if.end
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %path, align 8
  %sub = add i32 %4, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub
  %magic = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54015, i32 %6)
  %cmp6 = icmp eq i32 %6, 54015
  br i1 %cmp6, label %if.end3.cond.end_crit_edge, label %cond.false, !prof !137

if.end3.cond.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 2153) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end3.cond.end_crit_edge
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %cond.false17, label %cond.end.cond.end18_crit_edge, !prof !145

cond.end.cond.end18_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 2154) #8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.end.cond.end18_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %index = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub, i32 3
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 8
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog.i) #8
  %15 = ptrtoint ptr %needlog.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %needlog.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan.i) #8
  %16 = ptrtoint ptr %needscan.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %needscan.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr.i) #8
  %17 = call ptr @memset(ptr %leafhdr.i, i32 255, i32 20)
  call fastcc void @trace_xfs_dir2_leafn_remove(ptr noundef %args, i32 noundef %12) #8
  %dp2.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %18 = ptrtoint ptr %dp2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dp2.i, align 8
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %20 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans.i, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 16
  %22 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_addr.i, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %25, ptr noundef nonnull %leafhdr.i, ptr noundef %23) #8
  %ents.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i, i32 0, i32 5
  %26 = ptrtoint ptr %ents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ents.i, align 4
  %address.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %27, i32 %12, i32 1
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address.i, align 4
  %conv.i.i.i = zext i32 %29 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 3
  %blklog.i.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 3
  %30 = ptrtoint ptr %blklog.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %blklog.i.i.i, align 1
  %sh_prom.i.i.i = zext i8 %31 to i64
  %shr.i2.i.i = lshr i64 %shl.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %blkno.i = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blkno.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv1.i.i.i)
  %cmp.i = icmp eq i32 %33, %conv1.i.i.i
  br i1 %cmp.i, label %cond.end18.cond.end.i_crit_edge, label %cond.false.i, !prof !137

cond.end18.cond.end.i_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 1300) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.end18.cond.end.i_crit_edge
  %34 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %address.i, align 4
  %shl.i.i175.i = shl i32 %35, 3
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %14, align 4
  %sub.i.i.i = add i32 %37, -1
  %conv1.i.i176.i = and i32 %sub.i.i.i, %shl.i.i175.i
  %index6.i = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %index6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv1.i.i176.i)
  %cmp7.i = icmp eq i32 %39, %conv1.i.i176.i
  br i1 %cmp7.i, label %cond.end.i.cond.end16.i_crit_edge, label %cond.false15.i, !prof !137

cond.end.i.cond.end16.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16.i

cond.false15.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2, i32 noundef 1302) #8
  br label %cond.end16.i

cond.end16.i:                                     ; preds = %cond.false15.i, %cond.end.i.cond.end16.i_crit_edge
  %stale.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i, i32 0, i32 4
  %40 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %stale.i, align 4
  %inc.i = add i16 %41, 1
  store i16 %inc.i, ptr %stale.i, align 4
  %42 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %19, align 8
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %43, ptr noundef %23, ptr noundef nonnull %leafhdr.i) #8
  call void @xfs_dir3_leaf_log_header(ptr noundef %args, ptr noundef %10) #8
  %44 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %address.i, align 4
  call void @xfs_dir3_leaf_log_ents(ptr noundef %args, ptr noundef nonnull %leafhdr.i, ptr noundef %10, i32 noundef %12, i32 noundef %12) #8
  %45 = ptrtoint ptr %extrablk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %extrablk, align 8
  %b_addr20.i = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %b_addr20.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_addr20.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 %conv1.i.i176.i
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %19, align 8
  %call22.i = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %50, ptr noundef %48) #8
  %length.i = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call22.i, i32 0, i32 1
  %51 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %length.i, align 2
  %53 = ptrtoint ptr %needscan.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %needscan.i, align 4
  %54 = ptrtoint ptr %needlog.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %needlog.i, align 4
  %55 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %19, align 8
  %namelen.i = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr.i, i32 0, i32 1
  %57 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %namelen.i, align 8
  %conv25.i = zext i8 %58 to i32
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %56, i32 0, i32 61
  %59 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %60, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.i.not.i.i, i32 11, i32 12
  %spec.select.i.i = add nsw i32 %conv25.i, -1
  %sub.i.i = add nsw i32 %spec.select.i.i, %spec.select.v.i.i
  %or.i.i = or i32 %sub.i.i, 7
  %add3.i.i = add nsw i32 %or.i.i, 1
  call void @xfs_dir2_data_make_free(ptr noundef %args, ptr noundef %46, i32 noundef %conv1.i.i176.i, i32 noundef %add3.i.i, ptr noundef nonnull %needlog.i, ptr noundef nonnull %needscan.i) #8
  %61 = ptrtoint ptr %needscan.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %needscan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool27.not.i = icmp eq i32 %62, 0
  br i1 %tobool27.not.i, label %cond.end16.i.if.end.i_crit_edge, label %if.then.i

cond.end16.i.if.end.i_crit_edge:                  ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %19, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %64, ptr noundef %48, ptr noundef nonnull %needlog.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end16.i.if.end.i_crit_edge
  %65 = ptrtoint ptr %needlog.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %needlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool29.not.i = icmp eq i32 %66, 0
  br i1 %tobool29.not.i, label %if.end.i.if.end31.i_crit_edge, label %if.then30.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %46) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.end.i.if.end31.i_crit_edge
  call void @xfs_dir3_data_check(ptr noundef %19, ptr noundef %46) #8
  %67 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %68)
  %cmp35.i = icmp ult i16 %52, %68
  br i1 %cmp35.i, label %if.then37.i, label %if.end31.i.if.end87.i_crit_edge

if.end31.i.if.end87.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

if.then37.i:                                      ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbp.i) #8
  %69 = ptrtoint ptr %fbp.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %fbp.i, align 4, !annotation !138
  %70 = ptrtoint ptr %blklog.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %blklog.i.i.i, align 1
  %sh_prom.i.i178.i = zext i8 %71 to i64
  %shr.i2.i179.i = lshr i64 68719476736, %sh_prom.i.i178.i
  %conv1.i.i180.i = trunc i64 %shr.i2.i179.i to i32
  %free_max_bests.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 12
  %72 = ptrtoint ptr %free_max_bests.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %free_max_bests.i.i, align 4
  %div.i.i = udiv i32 %conv1.i.i.i, %73
  %add.i.i = add i32 %div.i.i, %conv1.i.i180.i
  %conv.i.i = zext i8 %71 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 2
  %74 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i = zext i8 %75 to i32
  %sub.i181.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %shl.i.i = shl i32 %add.i.i, %sub.i181.i
  %call.i.i = call fastcc i32 @__xfs_dir3_free_read(ptr noundef %21, ptr noundef %19, i32 noundef %shl.i.i, i32 noundef 0, ptr noundef nonnull %fbp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool41.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.then37.i.cleanup.thread.i_crit_edge

if.then37.i.cleanup.thread.i_crit_edge:           ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.end43.i:                                       ; preds = %if.then37.i
  %76 = ptrtoint ptr %fbp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fbp.i, align 4
  %b_addr44.i = getelementptr inbounds %struct.xfs_buf, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %b_addr44.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_addr44.i, align 4
  %80 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %19, align 8
  %m_features.i.i182.i = getelementptr inbounds %struct.xfs_mount, ptr %81, i32 0, i32 61
  %82 = ptrtoint ptr %m_features.i.i182.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %m_features.i.i182.i, align 8
  %and.i.i183.i = and i64 %83, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i183.i)
  %tobool.i.not.i184.i = icmp eq i64 %and.i.i183.i, 0
  br i1 %tobool.i.not.i184.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end43.i
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %79, align 8
  %firstdb.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %79, i32 0, i32 1
  %86 = ptrtoint ptr %firstdb.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %firstdb.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %85)
  %cmp.i.i = icmp eq i32 %85, 1480869427
  br i1 %cmp.i.i, label %if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge, label %cond.false.i.i, !prof !137

if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i

if.else.i.i:                                      ; preds = %if.end43.i
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %79, align 4
  %firstdb16.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %79, i32 0, i32 1
  %90 = ptrtoint ptr %firstdb16.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %firstdb16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %89)
  %cmp28.i.i = icmp eq i32 %89, 1480864326
  br i1 %cmp28.i.i, label %if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge, label %cond.false36.i.i, !prof !137

if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i

cond.false36.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i

xfs_dir2_free_hdr_from_disk.exit.i:               ; preds = %cond.false36.i.i, %if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge, %cond.false.i.i, %if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge
  %freehdr.sroa.5.0.i = phi i32 [ %91, %if.else.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge ], [ %91, %cond.false36.i.i ], [ %87, %if.then.i.i.xfs_dir2_free_hdr_from_disk.exit.i_crit_edge ], [ %87, %cond.false.i.i ]
  %92 = ptrtoint ptr %free_max_bests.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %free_max_bests.i.i, align 4
  %94 = ptrtoint ptr %blklog.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %blklog.i.i.i, align 1
  %sh_prom.i.i = zext i8 %95 to i64
  %shr.i206.i = lshr i64 68719476736, %sh_prom.i.i
  %conv1.i186.i = trunc i64 %shr.i206.i to i32
  %sub.i = sub i32 %add.i.i, %conv1.i186.i
  %mul.i = mul i32 %sub.i, %93
  call void @__sanitizer_cov_trace_cmp4(i32 %freehdr.sroa.5.0.i, i32 %mul.i)
  %cmp47.i = icmp eq i32 %freehdr.sroa.5.0.i, %mul.i
  br i1 %cmp47.i, label %xfs_dir2_free_hdr_from_disk.exit.i.cond.end57.i_crit_edge, label %cond.false56.i, !prof !137

xfs_dir2_free_hdr_from_disk.exit.i.cond.end57.i_crit_edge: ; preds = %xfs_dir2_free_hdr_from_disk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end57.i

cond.false56.i:                                   ; preds = %xfs_dir2_free_hdr_from_disk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 1364) #8
  br label %cond.end57.i

cond.end57.i:                                     ; preds = %cond.false56.i, %xfs_dir2_free_hdr_from_disk.exit.i.cond.end57.i_crit_edge
  %96 = ptrtoint ptr %free_max_bests.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %free_max_bests.i.i, align 4
  %rem.i.i = urem i32 %conv1.i.i.i, %97
  %98 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %length.i, align 2
  %conv61.i = zext i16 %99 to i32
  %100 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %14, align 4
  %data_entry_offset.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 15
  %102 = ptrtoint ptr %data_entry_offset.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_entry_offset.i, align 4
  %sub62.i = sub i32 %101, %103
  call void @__sanitizer_cov_trace_cmp4(i32 %sub62.i, i32 %conv61.i)
  %cmp63.i = icmp eq i32 %sub62.i, %conv61.i
  br i1 %cmp63.i, label %if.then65.i, label %cond.end57.i.if.end78.i_crit_edge

cond.end57.i.if.end78.i_crit_edge:                ; preds = %cond.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.then65.i:                                      ; preds = %cond.end57.i
  %call66.i = call i32 @xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %conv1.i.i.i, ptr noundef %46) #8
  %104 = zext i32 %call66.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call66.i, label %if.then65.i.cleanup.thread.i_crit_edge [
    i32 0, label %if.then69.i
    i32 -28, label %land.lhs.true.i
  ]

if.then65.i.cleanup.thread.i_crit_edge:           ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then69.i:                                      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %extrablk to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %extrablk, align 8
  br label %if.end78.i

land.lhs.true.i:                                  ; preds = %if.then65.i
  %total.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %106 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %total.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp73.i = icmp eq i32 %107, 0
  br i1 %cmp73.i, label %land.lhs.true.i.if.end78.i_crit_edge, label %land.lhs.true.i.cleanup.thread.i_crit_edge

land.lhs.true.i.cleanup.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

land.lhs.true.i.if.end78.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.end78.i:                                       ; preds = %land.lhs.true.i.if.end78.i_crit_edge, %if.then69.i, %cond.end57.i.if.end78.i_crit_edge
  %hdr.0.i = phi ptr [ null, %if.then69.i ], [ %48, %land.lhs.true.i.if.end78.i_crit_edge ], [ %48, %cond.end57.i.if.end78.i_crit_edge ]
  %108 = ptrtoint ptr %fbp.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fbp.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %freehdr.i.i) #8
  %110 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i.i, i32 0, i32 1
  %111 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i.i, i32 0, i32 2
  %112 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i.i, i32 0, i32 3
  %113 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr.i.i, i32 0, i32 4
  %114 = call ptr @memset(ptr %freehdr.i.i, i32 255, i32 20)
  %115 = ptrtoint ptr %dp2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dp2.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %m_features.i.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %118, i32 0, i32 61
  %119 = ptrtoint ptr %m_features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %m_features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %120, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end78.i
  %121 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %79, align 8
  %123 = ptrtoint ptr %freehdr.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %freehdr.i.i, align 4
  %firstdb.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %79, i32 0, i32 1
  %124 = ptrtoint ptr %firstdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %firstdb.i.i.i, align 8
  %126 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %110, align 4
  %nvalid.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %79, i32 0, i32 2
  %127 = ptrtoint ptr %nvalid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nvalid.i.i.i, align 4
  %129 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %111, align 4
  %nused.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %79, i32 0, i32 3
  %130 = ptrtoint ptr %nused.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nused.i.i.i, align 8
  %132 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %112, align 4
  %bests.i.i.i = getelementptr inbounds %struct.xfs_dir3_free, ptr %79, i32 0, i32 1
  %133 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %bests.i.i.i, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %122)
  %cmp.i.i.i = icmp eq i32 %122, 1480869427
  br i1 %cmp.i.i.i, label %if.then.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge, label %cond.false.i.i.i, !prof !137

if.then.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end78.i
  %134 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %79, align 4
  %136 = ptrtoint ptr %freehdr.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %freehdr.i.i, align 4
  %firstdb16.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %79, i32 0, i32 1
  %137 = ptrtoint ptr %firstdb16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %firstdb16.i.i.i, align 4
  %139 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %110, align 4
  %nvalid19.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %79, i32 0, i32 2
  %140 = ptrtoint ptr %nvalid19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nvalid19.i.i.i, align 4
  %142 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %111, align 4
  %nused22.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %79, i32 0, i32 3
  %143 = ptrtoint ptr %nused22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nused22.i.i.i, align 4
  %145 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %112, align 4
  %bests24.i.i.i = getelementptr inbounds %struct.xfs_dir2_free, ptr %79, i32 0, i32 1
  %146 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %bests24.i.i.i, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %135)
  %cmp28.i.i.i = icmp eq i32 %135, 1480864326
  br i1 %cmp28.i.i.i, label %if.else.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge, label %cond.false36.i.i.i, !prof !137

if.else.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

cond.false36.i.i.i:                               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit.i.i

xfs_dir2_free_hdr_from_disk.exit.i.i:             ; preds = %cond.false36.i.i.i, %if.else.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge, %cond.false.i.i.i, %if.then.i.i.i.xfs_dir2_free_hdr_from_disk.exit.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %hdr.0.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i188.i

if.then.i188.i:                                   ; preds = %xfs_dir2_free_hdr_from_disk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %113, align 4
  %arrayidx.i.i = getelementptr i16, ptr %148, i32 %rem.i.i
  %149 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %99, ptr %arrayidx.i.i, align 2
  br label %cleanup.thread201.sink.split.i

if.end.i.i:                                       ; preds = %xfs_dir2_free_hdr_from_disk.exit.i.i
  %150 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %112, align 4
  %dec.i.i = add i32 %151, -1
  store i32 %dec.i.i, ptr %112, align 4
  %152 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %111, align 4
  %sub.i189.i = add i32 %153, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i189.i, i32 %rem.i.i)
  %cmp.i190.i = icmp eq i32 %sub.i189.i, %rem.i.i
  br i1 %cmp.i190.i, label %for.cond.preheader.i.i, label %if.else.i191.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %154 = add i32 %rem.i.i, -1
  %smin.i.i = call i32 @llvm.smin.i32(i32 %154, i32 -1) #8
  %155 = add nsw i32 %smin.i.i, 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0.in.i.i = phi i32 [ %i.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %rem.i.i, %for.cond.preheader.i.i ]
  %i.0.i.i = add i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i)
  %cmp5.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp5.i.i, label %for.body.i.i, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %156 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %113, align 4
  %arrayidx8.i.i = getelementptr i16, ptr %157, i32 %i.0.i.i
  %158 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx8.i.i, align 2
  %cmp10.not.i.i = icmp eq i16 %159, -1
  br i1 %cmp10.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %i.0.in.lcssa.i.i = phi i32 [ %i.0.in.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %155, %for.cond.i.i.for.end.i.i_crit_edge ]
  %160 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %i.0.in.lcssa.i.i, ptr %111, align 4
  br label %if.end18.i.i

if.else.i191.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %113, align 4
  %arrayidx17.i.i = getelementptr i16, ptr %162, i32 %rem.i.i
  %163 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 -1, ptr %arrayidx17.i.i, align 2
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else.i191.i, %for.end.i.i
  %164 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %116, align 8
  %m_features.i.i63.i.i = getelementptr inbounds %struct.xfs_mount, ptr %165, i32 0, i32 61
  %166 = ptrtoint ptr %m_features.i.i63.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %m_features.i.i63.i.i, align 8
  %and.i.i64.i.i = and i64 %167, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i64.i.i)
  %tobool.i.not.i65.i.i = icmp eq i64 %and.i.i64.i.i, 0
  %168 = ptrtoint ptr %freehdr.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %freehdr.i.i, align 4
  br i1 %tobool.i.not.i65.i.i, label %if.else.i72.i.i, label %if.then.i67.i.i

if.then.i67.i.i:                                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %169)
  %cmp.i66.i.i = icmp eq i32 %169, 1480869427
  br i1 %cmp.i66.i.i, label %if.then.i67.i.i.cond.end.i.i.i_crit_edge, label %cond.false.i68.i.i, !prof !137

if.then.i67.i.i.cond.end.i.i.i_crit_edge:         ; preds = %if.then.i67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i.i

cond.false.i68.i.i:                               ; preds = %if.then.i67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 280) #8
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i68.i.i, %if.then.i67.i.i.cond.end.i.i.i_crit_edge
  %170 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %79, align 8
  %171 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %110, align 4
  %firstdb6.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %79, i32 0, i32 1
  %173 = ptrtoint ptr %firstdb6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %firstdb6.i.i.i, align 8
  %174 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %111, align 4
  %nvalid8.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %79, i32 0, i32 2
  %176 = ptrtoint ptr %nvalid8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %nvalid8.i.i.i, align 4
  %nused10.i.i.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %79, i32 0, i32 3
  %177 = ptrtoint ptr %nused10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %dec.i.i, ptr %nused10.i.i.i, align 8
  br label %xfs_dir2_free_hdr_to_disk.exit.i.i

if.else.i72.i.i:                                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %169)
  %cmp12.i.i.i = icmp eq i32 %169, 1480864326
  br i1 %cmp12.i.i.i, label %if.else.i72.i.i.cond.end21.i.i.i_crit_edge, label %cond.false20.i.i.i, !prof !137

if.else.i72.i.i.cond.end21.i.i.i_crit_edge:       ; preds = %if.else.i72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21.i.i.i

cond.false20.i.i.i:                               ; preds = %if.else.i72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 287) #8
  br label %cond.end21.i.i.i

cond.end21.i.i.i:                                 ; preds = %cond.false20.i.i.i, %if.else.i72.i.i.cond.end21.i.i.i_crit_edge
  %178 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %169, ptr %79, align 4
  %179 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %110, align 4
  %firstdb27.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %79, i32 0, i32 1
  %181 = ptrtoint ptr %firstdb27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %firstdb27.i.i.i, align 4
  %182 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %111, align 4
  %nvalid30.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %79, i32 0, i32 2
  %184 = ptrtoint ptr %nvalid30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %nvalid30.i.i.i, align 4
  %nused33.i.i.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %79, i32 0, i32 3
  %185 = ptrtoint ptr %nused33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %dec.i.i, ptr %nused33.i.i.i, align 4
  br label %xfs_dir2_free_hdr_to_disk.exit.i.i

xfs_dir2_free_hdr_to_disk.exit.i.i:               ; preds = %cond.end21.i.i.i, %cond.end.i.i.i
  %b_addr.i.i.i = getelementptr inbounds %struct.xfs_buf, ptr %109, i32 0, i32 16
  %186 = ptrtoint ptr %b_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %b_addr.i.i.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %190 = zext i32 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %189, label %cond.false.i73.i.i [
    i32 1480869427, label %xfs_dir2_free_hdr_to_disk.exit.i.i.xfs_dir2_free_log_header.exit.i.i_crit_edge
    i32 1480864326, label %xfs_dir2_free_hdr_to_disk.exit.i.i.xfs_dir2_free_log_header.exit.i.i_crit_edge59
  ]

xfs_dir2_free_hdr_to_disk.exit.i.i.xfs_dir2_free_log_header.exit.i.i_crit_edge59: ; preds = %xfs_dir2_free_hdr_to_disk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_log_header.exit.i.i

xfs_dir2_free_hdr_to_disk.exit.i.i.xfs_dir2_free_log_header.exit.i.i_crit_edge: ; preds = %xfs_dir2_free_hdr_to_disk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_log_header.exit.i.i

cond.false.i73.i.i:                               ; preds = %xfs_dir2_free_hdr_to_disk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 393) #8
  br label %xfs_dir2_free_log_header.exit.i.i

xfs_dir2_free_log_header.exit.i.i:                ; preds = %cond.false.i73.i.i, %xfs_dir2_free_hdr_to_disk.exit.i.i.xfs_dir2_free_log_header.exit.i.i_crit_edge, %xfs_dir2_free_hdr_to_disk.exit.i.i.xfs_dir2_free_log_header.exit.i.i_crit_edge59
  %191 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %trans.i, align 4
  %193 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %args, align 8
  %free_hdr_size.i.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %194, i32 0, i32 11
  %195 = ptrtoint ptr %free_hdr_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %free_hdr_size.i.i.i, align 4
  %sub.i.i192.i = add i32 %196, -1
  call void @xfs_trans_log_buf(ptr noundef %192, ptr noundef %109, i32 noundef 0, i32 noundef %sub.i.i192.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool21.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %xfs_dir2_free_log_header.exit.i.i.if.end34.i.i_crit_edge

xfs_dir2_free_log_header.exit.i.i.if.end34.i.i_crit_edge: ; preds = %xfs_dir2_free_log_header.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then22.i.i:                                    ; preds = %xfs_dir2_free_log_header.exit.i.i
  %call.i193.i = call i32 @xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %add.i.i, ptr noundef %109) #8
  %197 = zext i32 %call.i193.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call.i193.i, label %cleanup.i [
    i32 0, label %if.then22.i.i.cleanup.thread201.i_crit_edge
    i32 -28, label %lor.lhs.false.i.i
  ]

if.then22.i.i.cleanup.thread201.i_crit_edge:      ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread201.i

lor.lhs.false.i.i:                                ; preds = %if.then22.i.i
  %total.i.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %198 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %total.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp29.not.i.i = icmp eq i32 %199, 0
  br i1 %cmp29.not.i.i, label %lor.lhs.false.i.i.if.end34.i.i_crit_edge, label %xfs_dir2_leafn_remove.exit.thread54

lor.lhs.false.i.i.if.end34.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

xfs_dir2_leafn_remove.exit.thread54:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog.i) #8
  br label %out_free

if.end34.i.i:                                     ; preds = %lor.lhs.false.i.i.if.end34.i.i_crit_edge, %xfs_dir2_free_log_header.exit.i.i.if.end34.i.i_crit_edge
  br i1 %cmp.i190.i, label %if.end34.i.i.cleanup.thread201.i_crit_edge, label %if.end34.i.i.cleanup.thread201.sink.split.i_crit_edge

if.end34.i.i.cleanup.thread201.sink.split.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread201.sink.split.i

if.end34.i.i.cleanup.thread201.i_crit_edge:       ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread201.i

cleanup.thread.i:                                 ; preds = %land.lhs.true.i.cleanup.thread.i_crit_edge, %if.then65.i.cleanup.thread.i_crit_edge, %if.then37.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ -28, %land.lhs.true.i.cleanup.thread.i_crit_edge ], [ %call66.i, %if.then65.i.cleanup.thread.i_crit_edge ], [ %call.i.i, %if.then37.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i) #8
  br label %xfs_dir2_leafn_remove.exit

cleanup.thread201.sink.split.i:                   ; preds = %if.end34.i.i.cleanup.thread201.sink.split.i_crit_edge, %if.then.i188.i
  call fastcc void @xfs_dir2_free_log_bests(ptr noundef %args, ptr noundef nonnull %freehdr.i.i, ptr noundef %109, i32 noundef %rem.i.i, i32 noundef %rem.i.i) #8
  br label %cleanup.thread201.i

cleanup.thread201.i:                              ; preds = %cleanup.thread201.sink.split.i, %if.end34.i.i.cleanup.thread201.i_crit_edge, %if.then22.i.i.cleanup.thread201.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i) #8
  br label %if.end87.i

cleanup.i:                                        ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp.i) #8
  br label %xfs_dir2_leafn_remove.exit

if.end87.i:                                       ; preds = %cleanup.thread201.i, %if.end31.i.if.end87.i_crit_edge
  %call.i194.i = call fastcc ptr @xfs_dir3_leafn_check(ptr noundef %19, ptr noundef %10) #8
  %tobool.not.i195.i = icmp eq ptr %call.i194.i, null
  br i1 %tobool.not.i195.i, label %if.end87.i.xfs_dir2_leafn_remove.exit.thread_crit_edge, label %if.end.i197.i

if.end87.i.xfs_dir2_leafn_remove.exit.thread_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leafn_remove.exit.thread

if.end.i197.i:                                    ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %19, align 8
  %202 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %b_addr.i, align 4
  %b_length.i.i = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 2
  %204 = ptrtoint ptr %b_length.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %b_length.i.i, align 8
  %shl.i196.i = shl i32 %205, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %201, ptr noundef %203, i32 noundef %shl.i196.i, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull %call.i194.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 92) #8
  br label %xfs_dir2_leafn_remove.exit.thread

xfs_dir2_leafn_remove.exit.thread:                ; preds = %if.end.i197.i, %if.end87.i.xfs_dir2_leafn_remove.exit.thread_crit_edge
  %leaf_hdr_size.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 8
  %206 = ptrtoint ptr %leaf_hdr_size.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %leaf_hdr_size.i, align 4
  %count.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr.i, i32 0, i32 3
  %208 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %count.i, align 2
  %conv88.i = zext i16 %209 to i32
  %210 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %stale.i, align 4
  %conv90.i = zext i16 %211 to i32
  %sub91.i = sub nsw i32 %conv88.i, %conv90.i
  %mul92.i = shl nsw i32 %sub91.i, 2
  %add.i = add i32 %mul92.i, %207
  %magicpct.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 6
  %212 = ptrtoint ptr %magicpct.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %magicpct.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %213)
  %cmp93.i = icmp ult i32 %add.i, %213
  %conv94.i = zext i1 %cmp93.i to i32
  %214 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %conv94.i, ptr %rval, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog.i) #8
  br label %if.end22

xfs_dir2_leafn_remove.exit:                       ; preds = %cleanup.i, %cleanup.thread.i
  %retval.1.i = phi i32 [ %call.i193.i, %cleanup.i ], [ %retval.0.ph.i, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool20.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool20.not, label %xfs_dir2_leafn_remove.exit.if.end22_crit_edge, label %xfs_dir2_leafn_remove.exit.out_free_crit_edge

xfs_dir2_leafn_remove.exit.out_free_crit_edge:    ; preds = %xfs_dir2_leafn_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

xfs_dir2_leafn_remove.exit.if.end22_crit_edge:    ; preds = %xfs_dir2_leafn_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %xfs_dir2_leafn_remove.exit.if.end22_crit_edge, %xfs_dir2_leafn_remove.exit.thread
  call void @xfs_da3_fixhashpath(ptr noundef %call, ptr noundef %path) #8
  %215 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool24.not = icmp eq i32 %216, 0
  br i1 %tobool24.not, label %if.end22.if.then32_crit_edge, label %land.lhs.true

if.end22.if.then32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

land.lhs.true:                                    ; preds = %if.end22
  %217 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %218)
  %cmp27 = icmp sgt i32 %218, 1
  br i1 %cmp27, label %if.end30, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end30:                                         ; preds = %land.lhs.true
  %call29 = call i32 @xfs_da3_join(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %if.end30.if.then32_crit_edge, label %if.end30.out_free_crit_edge

if.end30.out_free_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge, %if.end22.if.then32_crit_edge
  %call33 = call i32 @xfs_dir2_node_to_leaf(ptr noundef %call) #8
  br label %out_free

out_free:                                         ; preds = %if.then32, %if.end30.out_free_crit_edge, %xfs_dir2_leafn_remove.exit.out_free_crit_edge, %xfs_dir2_leafn_remove.exit.thread54, %if.end.out_free_crit_edge, %entry.out_free_crit_edge
  %error.1 = phi i32 [ %call1, %entry.out_free_crit_edge ], [ %retval.1.i, %xfs_dir2_leafn_remove.exit.out_free_crit_edge ], [ %call29, %if.end30.out_free_crit_edge ], [ %call33, %if.then32 ], [ %2, %if.end.out_free_crit_edge ], [ -28, %xfs_dir2_leafn_remove.exit.thread54 ]
  call void @xfs_da_state_free(ptr noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 %error.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_node_removename(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_removename, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_node_removename, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !153
  %call42 = tail call i32 @__traceiter_xfs_dir2_node_removename(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_removename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_removename, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_node_removename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_node_removename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1978, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local i32 @xfs_da3_join(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_node_to_leaf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_node_replace(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %rval = alloca i32, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !138
  tail call fastcc void @trace_xfs_dir2_node_replace(ptr noundef %args)
  %call = tail call ptr @xfs_da_state_alloc(ptr noundef %args) #8
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %1 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %inumber, align 8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %3 = ptrtoint ptr %filetype to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %filetype, align 4
  %call1 = call i32 @xfs_da3_node_lookup_int(ptr noundef %call, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.endthread-pre-split, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %rval, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %rval, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then
  %7 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %call1, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %7)
  %cmp = icmp eq i32 %7, -17
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %8 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %path, align 8
  %sub = add i32 %10, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub
  %magic = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %11 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54015, i32 %12)
  %cmp6 = icmp eq i32 %12, 54015
  br i1 %cmp6, label %if.then3.cond.end_crit_edge, label %cond.false, !prof !137

if.then3.cond.end_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 2231) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then3.cond.end_crit_edge
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %cond.false18, label %cond.end.cond.end19_crit_edge, !prof !145

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 2232) #8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.end.cond.end19_crit_edge
  %mp = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mp, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %16, ptr noundef nonnull %leafhdr, ptr noundef %20) #8
  %extrablk = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %extrablk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extrablk, align 8
  %b_addr21 = getelementptr inbounds %struct.xfs_buf, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %b_addr21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_addr21, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %26, label %cond.false35 [
    i32 1480868915, label %cond.end19.cond.end36_crit_edge
    i32 1480864324, label %cond.end19.cond.end36_crit_edge113
  ]

cond.end19.cond.end36_crit_edge113:               ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.end19.cond.end36_crit_edge:                  ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 2241) #8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end19.cond.end36_crit_edge, %cond.end19.cond.end36_crit_edge113
  %28 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %args, align 8
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %30 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ents, align 4
  %index = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %sub, i32 3
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 8
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %31, i32 %33, i32 1
  %34 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %address, align 4
  %shl.i.i = shl i32 %35, 3
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %29, align 4
  %sub.i.i = add i32 %37, -1
  %conv1.i.i = and i32 %sub.i.i, %shl.i.i
  %add.ptr = getelementptr i8, ptr %24, i32 %conv1.i.i
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %39)
  %cmp40.not = icmp eq i64 %2, %39
  br i1 %cmp40.not, label %cond.false49, label %cond.end36.cond.end50_crit_edge, !prof !145

cond.end36.cond.end50_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end50

cond.false49:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 2246) #8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.end36.cond.end50_crit_edge
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %2, ptr %add.ptr, align 8
  %41 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mp, align 4
  call void @xfs_dir2_data_put_ftype(ptr noundef %42, ptr noundef %add.ptr, i8 noundef zeroext %4) #8
  %43 = ptrtoint ptr %extrablk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %extrablk, align 8
  call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %44, ptr noundef %add.ptr) #8
  %45 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %rval, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  br label %if.end64

if.else:                                          ; preds = %if.end
  %extravalid56 = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 5
  %46 = ptrtoint ptr %extravalid56 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %extravalid56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool57.not = icmp eq i8 %47, 0
  br i1 %tobool57.not, label %if.else.if.end64_crit_edge, label %if.then58

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %48 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trans, align 4
  %extrablk59 = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 7
  %50 = ptrtoint ptr %extrablk59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extrablk59, align 8
  call void @xfs_trans_brelse(ptr noundef %49, ptr noundef %51) #8
  %52 = ptrtoint ptr %extrablk59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %extrablk59, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.else.if.end64_crit_edge, %cond.end50
  %path65 = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 2
  %53 = ptrtoint ptr %path65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %path65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp67111 = icmp sgt i32 %54, 0
  br i1 %cmp67111, label %for.body.lr.ph, label %if.end64.for.end_crit_edge

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end64
  %trans69 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %55 = ptrtoint ptr %trans69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %trans69, align 4
  %arrayidx72 = getelementptr %struct.xfs_da_state, ptr %call, i32 0, i32 2, i32 1, i32 %i.0112
  %57 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx72, align 8
  call void @xfs_trans_brelse(ptr noundef %56, ptr noundef %58) #8
  %59 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx72, align 8
  %inc = add nuw nsw i32 %i.0112, 1
  %60 = ptrtoint ptr %path65 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %path65, align 8
  %cmp67 = icmp slt i32 %inc, %61
  br i1 %cmp67, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end64.for.end_crit_edge
  call void @xfs_da_state_free(ptr noundef %call) #8
  %62 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 %63
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_node_replace(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_replace, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_node_replace, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !155
  %call42 = tail call i32 @__traceiter_xfs_dir2_node_replace(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_replace, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_replace, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_node_replace.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_node_replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1977, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local void @xfs_dir2_data_put_ftype(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_log_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_node_trim_free(ptr noundef %args, i64 noundef %fo, ptr nocapture noundef writeonly %rvalp) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !138
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %1 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %3 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans, align 4
  %5 = ptrtoint ptr %rvalp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rvalp, align 4
  %conv = trunc i64 %fo to i32
  %call.i = call fastcc i32 @__xfs_dir3_free_read(ptr noundef %4, ptr noundef %2, i32 noundef %conv, i32 noundef 1, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bp, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 8
  %nused.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %nused.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nused.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %15)
  %cmp.i = icmp eq i32 %15, 1480869427
  br i1 %cmp.i, label %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, label %cond.false.i, !prof !137

if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %xfs_dir2_free_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.end4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %9, align 4
  %nused22.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %nused22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nused22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %19)
  %cmp28.i = icmp eq i32 %19, 1480864326
  br i1 %cmp28.i, label %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, label %cond.false36.i, !prof !137

if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_free_hdr_from_disk.exit

cond.false36.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %xfs_dir2_free_hdr_from_disk.exit

xfs_dir2_free_hdr_from_disk.exit:                 ; preds = %cond.false36.i, %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge, %cond.false.i, %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge
  %freehdr.sroa.11.0 = phi i32 [ %21, %if.else.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge ], [ %21, %cond.false36.i ], [ %17, %if.then.i.xfs_dir2_free_hdr_from_disk.exit_crit_edge ], [ %17, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freehdr.sroa.11.0)
  %cmp.not = icmp eq i32 %freehdr.sroa.11.0, 0
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %xfs_dir2_free_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %4, ptr noundef %23) #8
  br label %cleanup

if.end7:                                          ; preds = %xfs_dir2_free_hdr_from_disk.exit
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %27 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %29 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shr.i = lshr i32 %conv, %sub.i
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %call10 = call i32 @xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %shr.i, ptr noundef %31) #8
  %32 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call10, label %if.end7.cond.end_crit_edge [
    i32 0, label %if.end17
    i32 -28, label %cond.false
  ], !prof !157

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 2328) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge
  %33 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %4, ptr noundef %34) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rvalp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %rvalp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %cond.end, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ %call10, %cond.end ], [ 0, %if.end17 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_shrink_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_read_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir3_free_header_check(ptr nocapture noundef readonly %dp, i32 noundef %fbno, ptr nocapture noundef readonly %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_dir_geo, align 4
  %free_max_bests = getelementptr inbounds %struct.xfs_da_geometry, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %free_max_bests to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_max_bests, align 4
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %7 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %9 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shr.i = lshr i32 %fbno, %sub.i
  %sh_prom.i = zext i8 %7 to i64
  %shr.i7076 = lshr i64 68719476736, %sh_prom.i
  %conv1.i71 = trunc i64 %shr.i7076 to i32
  %sub = sub i32 %shr.i, %conv1.i71
  %mul = mul i32 %sub, %5
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %b_addr24 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr24, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %firstdb5 = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %firstdb5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %firstdb5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul)
  %cmp.not = icmp eq i32 %15, %mul
  br i1 %cmp.not, label %if.end, label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !158
  br label %cleanup48

if.end:                                           ; preds = %if.then
  %nvalid = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %nvalid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvalid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %5)
  %cmp7 = icmp ugt i32 %17, %5
  br i1 %cmp7, label %__here9, label %if.end11

__here9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !159
  br label %cleanup48

if.end11:                                         ; preds = %if.end
  %nused = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %nused to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nused, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp13 = icmp ult i32 %17, %19
  br i1 %cmp13, label %__here15, label %if.end17

__here15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !160
  br label %cleanup48

if.end17:                                         ; preds = %if.end11
  %owner = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %owner, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %22 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp18.not = icmp eq i64 %21, %23
  br i1 %cmp18.not, label %if.end17.cleanup48_crit_edge, label %__here20

if.end17.cleanup48_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

__here20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !161
  br label %cleanup48

if.else:                                          ; preds = %entry
  %firstdb25 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %firstdb25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %firstdb25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %mul)
  %cmp26.not = icmp eq i32 %25, %mul
  br i1 %cmp26.not, label %if.end30, label %__here28

__here28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !162
  br label %cleanup48

if.end30:                                         ; preds = %if.else
  %nvalid31 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %13, i32 0, i32 2
  %26 = ptrtoint ptr %nvalid31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nvalid31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %5)
  %cmp32 = icmp ugt i32 %27, %5
  br i1 %cmp32, label %__here34, label %if.end36

__here34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !163
  br label %cleanup48

if.end36:                                         ; preds = %if.end30
  %nused38 = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %13, i32 0, i32 3
  %28 = ptrtoint ptr %nused38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nused38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp39 = icmp ult i32 %27, %29
  br i1 %cmp39, label %__here41, label %if.end36.cleanup48_crit_edge

if.end36.cleanup48_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

__here41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !164
  br label %cleanup48

cleanup48:                                        ; preds = %__here41, %if.end36.cleanup48_crit_edge, %__here34, %__here28, %__here20, %if.end17.cleanup48_crit_edge, %__here15, %__here9, %__here
  %retval.2 = phi ptr [ null, %if.end36.cleanup48_crit_edge ], [ null, %if.end17.cleanup48_crit_edge ], [ blockaddress(@xfs_dir3_free_header_check, %__here), %__here ], [ blockaddress(@xfs_dir3_free_header_check, %__here9), %__here9 ], [ blockaddress(@xfs_dir3_free_header_check, %__here15), %__here15 ], [ blockaddress(@xfs_dir3_free_header_check, %__here20), %__here20 ], [ blockaddress(@xfs_dir3_free_header_check, %__here28), %__here28 ], [ blockaddress(@xfs_dir3_free_header_check, %__here34), %__here34 ], [ blockaddress(@xfs_dir3_free_header_check, %__here41), %__here41 ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leaf_to_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_get_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir3_leafn_check(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %bp) #0 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %2 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %3 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %4, ptr noundef nonnull %leafhdr, ptr noundef %1) #8
  %magic = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %magic, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %6, label %__here11 [
    i16 15871, label %if.then
    i16 -11521, label %entry.if.end14_crit_edge
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %blkno = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %blkno, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %12 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_maps.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %15)
  %cmp3.not = icmp eq i64 %11, %15
  br i1 %cmp3.not, label %if.then.if.end14_crit_edge, label %__here

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !165
  br label %cleanup17

__here11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !166
  br label %cleanup17

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %16 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dp, align 8
  %call16 = call ptr @xfs_dir3_leaf_check_int(ptr noundef %17, ptr noundef nonnull %leafhdr, ptr noundef %1, i1 noundef zeroext false) #8
  br label %cleanup17

cleanup17:                                        ; preds = %if.end14, %__here11, %__here
  %retval.1 = phi ptr [ %call16, %if.end14 ], [ blockaddress(@xfs_dir3_leafn_check, %__here11), %__here11 ], [ blockaddress(@xfs_dir3_leafn_check, %__here), %__here ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir3_leaf_check_int(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_search_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir3_data_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_compname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leafn_add(ptr noundef %args, i32 noundef %idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_add, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leafn_add, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !167
  %call42 = tail call i32 @__traceiter_xfs_dir2_leafn_add(ptr noundef null, ptr noundef %args, i32 noundef %idx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_leafn_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leafn_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2120, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local void @xfs_dir3_leaf_compact_x1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir3_leaf_find_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir3_leaf_log_ents(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leafn_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leafn_moveents(ptr noundef %args, i32 noundef %src_idx, i32 noundef %dst_idx, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_moveents, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leafn_moveents, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !169
  %call42 = tail call i32 @__traceiter_xfs_dir2_leafn_moveents(ptr noundef null, ptr noundef %args, i32 noundef %src_idx, i32 noundef %dst_idx, i32 noundef %count) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !170
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_moveents, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_moveents, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_leafn_moveents.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leafn_moveents.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2152, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local i32 @__traceiter_xfs_dir2_leafn_moveents(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_node_addname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_node_add_datablk(ptr noundef %args, ptr noundef %fblk, ptr noundef %dbno, ptr nocapture noundef writeonly %dbpp, ptr nocapture noundef writeonly %fbpp, ptr nocapture noundef %hdr, ptr nocapture noundef %findex) #0 align 64 {
entry:
  %fbno = alloca i32, align 4
  %fbp = alloca ptr, align 4
  %dbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbno) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbp) #8
  %6 = ptrtoint ptr %fbp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fbp, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #8
  %7 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !138
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %8 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @xfs_dir2_grow_inode(ptr noundef %args, i32 noundef 0, ptr noundef %dbno) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %10 = ptrtoint ptr %dbno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbno, align 4
  %call4 = call i32 @xfs_dir3_data_init(ptr noundef %args, i32 noundef %11, ptr noundef nonnull %dbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args, align 8
  %14 = ptrtoint ptr %dbno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dbno, align 4
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %17 to i64
  %shr.i2.i = lshr i64 68719476736, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %free_max_bests.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 12
  %18 = ptrtoint ptr %free_max_bests.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free_max_bests.i, align 4
  %div.i = udiv i32 %15, %19
  %add.i = add i32 %div.i, %conv1.i.i
  %20 = ptrtoint ptr %fbno to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %fbno, align 4
  %conv.i = zext i8 %17 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 2
  %21 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %22 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %add.i, %sub.i
  %call.i = call fastcc i32 @__xfs_dir3_free_read(ptr noundef %3, ptr noundef %1, i32 noundef %shl.i, i32 noundef 1, ptr noundef nonnull %fbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fbp, align 4
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %if.then16, label %if.else43

if.then16:                                        ; preds = %if.end14
  %call17 = call i32 @xfs_dir2_grow_inode(ptr noundef %args, i32 noundef 2, ptr noundef nonnull %fbno) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  %25 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args, align 8
  %27 = ptrtoint ptr %dbno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dbno, align 4
  %blklog.i.i144 = getelementptr inbounds %struct.xfs_da_geometry, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %blklog.i.i144 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %blklog.i.i144, align 1
  %sh_prom.i.i145 = zext i8 %30 to i64
  %shr.i2.i146 = lshr i64 68719476736, %sh_prom.i.i145
  %conv1.i.i147 = trunc i64 %shr.i2.i146 to i32
  %free_max_bests.i148 = getelementptr inbounds %struct.xfs_da_geometry, ptr %26, i32 0, i32 12
  %31 = ptrtoint ptr %free_max_bests.i148 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %free_max_bests.i148, align 4
  %div.i149 = udiv i32 %28, %32
  %add.i150 = add i32 %div.i149, %conv1.i.i147
  %33 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fbno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i150, i32 %34)
  %cmp23.not = icmp eq i32 %add.i150, %34
  br i1 %cmp23.not, label %if.end35, label %__here, !prof !137

__here:                                           ; preds = %if.end20
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !171
  call void @xfs_corruption_error(ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef %5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1728, ptr noundef blockaddress(@xfs_dir2_node_add_datablk, %__here)) #8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ino, align 8
  %37 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %args, align 8
  %39 = ptrtoint ptr %dbno to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dbno, align 4
  %blklog.i.i151 = getelementptr inbounds %struct.xfs_da_geometry, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %blklog.i.i151 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %blklog.i.i151, align 1
  %sh_prom.i.i152 = zext i8 %42 to i64
  %shr.i2.i153 = lshr i64 68719476736, %sh_prom.i.i152
  %conv1.i.i154 = trunc i64 %shr.i2.i153 to i32
  %free_max_bests.i155 = getelementptr inbounds %struct.xfs_da_geometry, ptr %38, i32 0, i32 12
  %43 = ptrtoint ptr %free_max_bests.i155 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %free_max_bests.i155, align 4
  %div.i156 = udiv i32 %40, %44
  %add.i157 = add i32 %div.i156, %conv1.i.i154
  %conv = zext i32 %add.i157 to i64
  %conv29 = zext i32 %40 to i64
  %45 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fbno, align 4
  %conv30 = zext i32 %46 to i64
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %5, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.xfs_dir2_node_add_datablk, i64 noundef %36, i64 noundef %conv, i64 noundef %conv29, i64 noundef %conv30) #8
  %tobool31.not = icmp eq ptr %fblk, null
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %fblk, i32 0, i32 1
  %47 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %blkno, align 4
  %conv33 = zext i32 %48 to i64
  %index = getelementptr inbounds %struct.xfs_da_state_blk, ptr %fblk, i32 0, i32 3
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 8
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %fblk, i32 0, i32 5
  %51 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %magic, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef nonnull %fblk, i64 noundef %conv33, i32 noundef %50, i32 noundef %52) #8
  br label %cleanup

if.else:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %5, ptr noundef nonnull @.str.41) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end20
  %call36 = call fastcc i32 @xfs_dir3_free_get_buf(ptr noundef %args, i32 noundef %add.i150, ptr noundef nonnull %fbp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_free_hdr_from_disk(ptr noundef %5, ptr noundef %hdr, ptr noundef %56)
  %57 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fbno, align 4
  %59 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %args, align 8
  %blklog.i158 = getelementptr inbounds %struct.xfs_da_geometry, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %blklog.i158 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %blklog.i158, align 1
  %sh_prom.i = zext i8 %62 to i64
  %shr.i161 = lshr i64 68719476736, %sh_prom.i
  %conv1.i159 = trunc i64 %shr.i161 to i32
  %sub = sub i32 %58, %conv1.i159
  %free_max_bests = getelementptr inbounds %struct.xfs_da_geometry, ptr %60, i32 0, i32 12
  %63 = ptrtoint ptr %free_max_bests to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %free_max_bests, align 4
  %mul = mul i32 %sub, %64
  %firstdb = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 1
  %65 = ptrtoint ptr %firstdb to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul, ptr %firstdb, align 4
  br label %if.end45

if.else43:                                        ; preds = %if.end14
  %b_addr44 = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 16
  %66 = ptrtoint ptr %b_addr44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_addr44, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %68 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else43
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %67, align 8
  %72 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %hdr, align 4
  %firstdb.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %67, i32 0, i32 1
  %73 = ptrtoint ptr %firstdb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %firstdb.i, align 8
  %firstdb4.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 1
  %75 = ptrtoint ptr %firstdb4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %firstdb4.i, align 4
  %nvalid.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %67, i32 0, i32 2
  %76 = ptrtoint ptr %nvalid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nvalid.i, align 4
  %nvalid6.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 2
  %78 = ptrtoint ptr %nvalid6.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %nvalid6.i, align 4
  %nused.i = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %67, i32 0, i32 3
  %79 = ptrtoint ptr %nused.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nused.i, align 8
  %nused8.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 3
  %81 = ptrtoint ptr %nused8.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %nused8.i, align 4
  %bests.i = getelementptr inbounds %struct.xfs_dir3_free, ptr %67, i32 0, i32 1
  %bests9.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 4
  %82 = ptrtoint ptr %bests9.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %bests.i, ptr %bests9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480869427, i32 %71)
  %cmp.i = icmp eq i32 %71, 1480869427
  br i1 %cmp.i, label %if.then.i.if.end45_crit_edge, label %cond.false.i, !prof !137

if.then.i.if.end45_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %if.end45

if.else.i:                                        ; preds = %if.else43
  %83 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %67, align 4
  %85 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %hdr, align 4
  %firstdb16.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %67, i32 0, i32 1
  %86 = ptrtoint ptr %firstdb16.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %firstdb16.i, align 4
  %firstdb17.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 1
  %88 = ptrtoint ptr %firstdb17.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %firstdb17.i, align 4
  %nvalid19.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %67, i32 0, i32 2
  %89 = ptrtoint ptr %nvalid19.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nvalid19.i, align 4
  %nvalid20.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 2
  %91 = ptrtoint ptr %nvalid20.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %nvalid20.i, align 4
  %nused22.i = getelementptr inbounds %struct.xfs_dir2_free_hdr, ptr %67, i32 0, i32 3
  %92 = ptrtoint ptr %nused22.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nused22.i, align 4
  %nused23.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 3
  %94 = ptrtoint ptr %nused23.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %nused23.i, align 4
  %bests24.i = getelementptr inbounds %struct.xfs_dir2_free, ptr %67, i32 0, i32 1
  %bests26.i = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 4
  %95 = ptrtoint ptr %bests26.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %bests24.i, ptr %bests26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864326, i32 %84)
  %cmp28.i = icmp eq i32 %84, 1480864326
  br i1 %cmp28.i, label %if.else.i.if.end45_crit_edge, label %cond.false36.i, !prof !137

if.else.i.if.end45_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

cond.false36.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 267) #8
  br label %if.end45

if.end45:                                         ; preds = %cond.false36.i, %if.else.i.if.end45_crit_edge, %cond.false.i, %if.then.i.if.end45_crit_edge, %if.end39
  %96 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %args, align 8
  %98 = ptrtoint ptr %dbno to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dbno, align 4
  %free_max_bests.i160 = getelementptr inbounds %struct.xfs_da_geometry, ptr %97, i32 0, i32 12
  %100 = ptrtoint ptr %free_max_bests.i160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %free_max_bests.i160, align 4
  %rem.i = urem i32 %99, %101
  %102 = ptrtoint ptr %findex to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %rem.i, ptr %findex, align 4
  %nvalid = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 2
  %103 = ptrtoint ptr %nvalid to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nvalid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %104)
  %cmp48.not = icmp ult i32 %rem.i, %104
  br i1 %cmp48.not, label %if.end45.if.end64_crit_edge, label %if.then50

if.end45.if.end64_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then50:                                        ; preds = %if.end45
  %105 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %args, align 8
  %free_max_bests52 = getelementptr inbounds %struct.xfs_da_geometry, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %free_max_bests52 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %free_max_bests52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %108)
  %cmp53 = icmp ult i32 %rem.i, %108
  br i1 %cmp53, label %if.then50.cond.end_crit_edge, label %cond.false62, !prof !137

if.then50.cond.end_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false62:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 1764) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false62, %if.then50.cond.end_crit_edge
  %109 = ptrtoint ptr %findex to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %findex, align 4
  %add = add i32 %110, 1
  %111 = ptrtoint ptr %nvalid to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add, ptr %nvalid, align 4
  %bests = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 4
  %112 = ptrtoint ptr %bests to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bests, align 4
  %114 = load i32, ptr %findex, align 4
  %arrayidx = getelementptr i16, ptr %113, i32 %114
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -1, ptr %arrayidx, align 2
  br label %if.end64

if.end64:                                         ; preds = %cond.end, %if.end45.if.end64_crit_edge
  %bests65 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 4
  %116 = ptrtoint ptr %bests65 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bests65, align 4
  %118 = ptrtoint ptr %findex to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %findex, align 4
  %arrayidx66 = getelementptr i16, ptr %117, i32 %119
  %120 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %121)
  %cmp68 = icmp eq i16 %121, -1
  br i1 %cmp68, label %if.then70, label %if.end64.if.end72_crit_edge

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %nused = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %hdr, i32 0, i32 3
  %122 = ptrtoint ptr %nused to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nused, align 4
  %inc = add i32 %123, 1
  store i32 %inc, ptr %nused, align 4
  %124 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fbp, align 4
  %b_addr71 = getelementptr inbounds %struct.xfs_buf, ptr %125, i32 0, i32 16
  %126 = ptrtoint ptr %b_addr71 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %b_addr71, align 4
  call fastcc void @xfs_dir2_free_hdr_to_disk(ptr noundef %5, ptr noundef %127, ptr noundef %hdr)
  %128 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fbp, align 4
  call fastcc void @xfs_dir2_free_log_header(ptr noundef %args, ptr noundef %129)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end64.if.end72_crit_edge
  %130 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dbp, align 4
  %b_addr73 = getelementptr inbounds %struct.xfs_buf, ptr %131, i32 0, i32 16
  %132 = ptrtoint ptr %b_addr73 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %b_addr73, align 4
  %call74 = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %5, ptr noundef %133) #8
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call74, i32 0, i32 1
  %134 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %length, align 2
  %136 = ptrtoint ptr %bests65 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bests65, align 4
  %138 = ptrtoint ptr %findex to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %findex, align 4
  %arrayidx77 = getelementptr i16, ptr %137, i32 %139
  %140 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %135, ptr %arrayidx77, align 2
  %141 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dbp, align 4
  %143 = ptrtoint ptr %dbpp to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %dbpp, align 4
  %144 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %fbp, align 4
  %146 = ptrtoint ptr %fbpp to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %fbpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end35.cleanup_crit_edge, %if.else, %if.then32, %if.then16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -28, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ], [ -117, %if.else ], [ -117, %if.then32 ], [ %call36, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbno) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_bestfree_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_data_use_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_entry_tag_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_freescan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_log_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_last_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_node_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_node_removename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leafn_remove(ptr noundef %args, i32 noundef %idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_remove, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leafn_remove, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !172
  %call42 = tail call i32 @__traceiter_xfs_dir2_leafn_remove(ptr noundef null, ptr noundef %args, i32 noundef %idx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !173
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leafn_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_leafn_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leafn_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 2121, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #8
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
declare dso_local void @xfs_dir2_data_make_free(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leafn_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_node_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109, !110, !112, !114, !116, !118, !119, !121}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 166, i32 10}
!2 = !{ptr @xfs_dir3_free_buf_ops, !3, !"xfs_dir3_free_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 165, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 259, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 267, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 432, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 608, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1433, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1629, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1630, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 2039, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 2055, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 2154, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 2240, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 2246, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 2328, i32 3}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trace.h", i32 1974, i32 1}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!35 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 280, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 287, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 372, i32 2}
!45 = !{ptr @__func__.xfs_dir3_leaf_check, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 89, i32 23}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 92, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 655, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 734, i32 8}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 749, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 586, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 587, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 588, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 903, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1138, i32 2}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1139, i32 2}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1173, i32 2}
!69 = !{ptr @__func__.xfs_dir2_leafn_rebalance, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1174, i32 4}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 536, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 537, i32 2}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_trace.h", i32 2120, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_trace.h", i32 2125, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_trace.h", i32 1975, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1954, i32 2}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1821, i32 4}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1822, i32 4}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1823, i32 4}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1726, i32 7}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1730, i32 1}
!96 = !{ptr @__func__.xfs_dir2_node_add_datablk, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1731, i32 5}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1736, i32 4}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1740, i32 19}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1764, i32 3}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_trace.h", i32 1976, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../fs/xfs/xfs_trace.h", i32 1978, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1300, i32 2}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1302, i32 2}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/xfs/libxfs/xfs_dir2_node.c", i32 1363, i32 3}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../fs/xfs/xfs_trace.h", i32 2121, i32 1}
!118 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../fs/xfs/xfs_trace.h", i32 1977, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2166373131}
!133 = !{i64 2166372467}
!134 = !{i64 2166372558}
!135 = !{i64 2166372704}
!136 = !{i64 2166372848}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{!"auto-init"}
!139 = !{i64 2166378780}
!140 = !{i64 2148307796, i64 2148307801, i64 2148307814, i64 2148307858, i64 2148307892, i64 2148307913}
!141 = !{i64 2161013945}
!142 = !{i64 2161014158}
!143 = !{i64 2150009889}
!144 = !{i64 2150010925}
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{i64 2166383524}
!147 = !{i64 2166384042}
!148 = !{i64 2166379322}
!149 = !{i64 2161030668}
!150 = !{i64 2161030881}
!151 = !{i64 2161047352}
!152 = !{i64 2161047563}
!153 = !{i64 2161084922}
!154 = !{i64 2161085141}
!155 = !{i64 2161064021}
!156 = !{i64 2161064234}
!157 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!158 = !{i64 2166373755}
!159 = !{i64 2166373902}
!160 = !{i64 2166374104}
!161 = !{i64 2166374254}
!162 = !{i64 2166374401}
!163 = !{i64 2166374547}
!164 = !{i64 2166374747}
!165 = !{i64 2166371888}
!166 = !{i64 2166371986}
!167 = !{i64 2162108074}
!168 = !{i64 2162108291}
!169 = !{i64 2162180243}
!170 = !{i64 2162180510}
!171 = !{i64 2166393014}
!172 = !{i64 2162128959}
!173 = !{i64 2162129182}
