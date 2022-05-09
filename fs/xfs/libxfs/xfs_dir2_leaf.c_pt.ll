; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_dir2_leaf.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_dir2_leaf.c"
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
%struct.xfs_dir3_icleaf_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_dir3_leaf_hdr = type { %struct.xfs_da3_blkinfo, i16, i16, i32 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_dir3_leaf = type { %struct.xfs_dir3_leaf_hdr, [0 x %struct.xfs_dir2_leaf_entry] }
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
%struct.xfs_dir2_leaf_hdr = type { %struct.xfs_da_blkinfo, i16, i16 }
%struct.xfs_dir2_leaf = type { %struct.xfs_dir2_leaf_hdr, [0 x %struct.xfs_dir2_leaf_entry] }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
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
%struct.xfs_dir2_block_tail = type { i32, i32 }
%struct.xfs_dir2_data_free = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_dir2_data_entry = type { i64, i8, [0 x i8] }
%struct.xfs_dir3_icfree_hdr = type { i32, i32, i32, i32, ptr }
%struct.xfs_da_state = type { ptr, ptr, %struct.xfs_da_state_path, %struct.xfs_da_state_path, i8, i8, i8, %struct.xfs_da_state_blk }
%struct.xfs_da_state_path = type { i32, [5 x %struct.xfs_da_state_blk] }
%struct.xfs_da_state_blk = type { ptr, i32, i64, i32, i32, i32 }

@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"to->magic == XFS_DIR3_LEAF1_MAGIC || to->magic == XFS_DIR3_LEAFN_MAGIC\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/libxfs/xfs_dir2_leaf.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"to->magic == XFS_DIR2_LEAF1_MAGIC || to->magic == XFS_DIR2_LEAFN_MAGIC\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"from->magic == XFS_DIR3_LEAF1_MAGIC || from->magic == XFS_DIR3_LEAFN_MAGIC\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"from->magic == XFS_DIR2_LEAF1_MAGIC || from->magic == XFS_DIR2_LEAFN_MAGIC\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs_dir3_leaf1\00", [17 x i8] zeroinitializer }, align 32
@xfs_dir3_leaf1_buf_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str.5, { [2 x i16], [4 x i8] } { [2 x i16] [i16 -11535, i16 15857], [4 x i8] undef }, ptr @xfs_dir3_leaf_read_verify, ptr @xfs_dir3_leaf_write_verify, ptr @xfs_dir3_leaf_verify }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs_dir3_leafn\00", [17 x i8] zeroinitializer }, align 32
@xfs_dir3_leafn_buf_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str.6, { [2 x i16], [4 x i8] } { [2 x i16] [i16 -11521, i16 15871], [4 x i8] undef }, ptr @xfs_dir3_leaf_read_verify, ptr @xfs_dir3_leaf_write_verify, ptr @xfs_dir3_leaf_verify }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"magic == XFS_DIR2_LEAF1_MAGIC || magic == XFS_DIR2_LEAFN_MAGIC\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"bno >= xfs_dir2_byte_to_db(args->geo, XFS_DIR2_LEAF_OFFSET) && bno < xfs_dir2_byte_to_db(args->geo, XFS_DIR2_FREE_OFFSET)\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ldb == xfs_dir2_byte_to_db(args->geo, XFS_DIR2_LEAF_OFFSET)\00", [36 x i8] zeroinitializer }, align 32
@xfs_dir3_data_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"index - lowstale - 1 >= 0\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ents[lowstale].address == cpu_to_be32(XFS_DIR2_NULL_DATAPTR)\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"highstale - index >= 0\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ents[highstale].address == cpu_to_be32(XFS_DIR2_NULL_DATAPTR)\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i < be32_to_cpu(ltp->bestcount)\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bestsp[i] != cpu_to_be16(NULLDATAOFF)\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"leafhdr->stale == from - to\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"leafhdr->stale > 1\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"from > to\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [241 x i8], [47 x i8] } { [241 x i8] c"leaf->hdr.info.magic == cpu_to_be16(XFS_DIR2_LEAF1_MAGIC) || leaf->hdr.info.magic == cpu_to_be16(XFS_DIR3_LEAF1_MAGIC) || leaf->hdr.info.magic == cpu_to_be16(XFS_DIR2_LEAFN_MAGIC) || leaf->hdr.info.magic == cpu_to_be16(XFS_DIR3_LEAFN_MAGIC)\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"db != geo->datablk\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"args->inumber != be64_to_cpu(dep->inumber)\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC)\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"be16_to_cpu(bf[0].length) == geo->blksize - geo->data_entry_offset\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"db == be32_to_cpu(ltp->bestcount) - 1\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOSPC\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"leafhdr.magic == XFS_DIR2_LEAFN_MAGIC || leafhdr.magic == XFS_DIR3_LEAFN_MAGIC\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"!freehdr.firstdb\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"type == XFS_DIR2_LEAF1_MAGIC || type == XFS_DIR2_LEAFN_MAGIC\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_block_to_leaf = external dso_local global %struct.tracepoint, align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_dir2_block_to_leaf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.xfs_dir3_leaf_check = private unnamed_addr constant [20 x i8] c"xfs_dir3_leaf_check\00", align 1
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_leaf_addname = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leaf_addname.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"leaf->hdr.info.magic == cpu_to_be16(XFS_DIR2_LEAF1_MAGIC) || leaf->hdr.info.magic == cpu_to_be16(XFS_DIR3_LEAF1_MAGIC)\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_leaf_lookup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leaf_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"args->op_flags & XFS_DA_OP_OKNOENT\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cidb != -1\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cidb == -1\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_leaf_removename = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leaf_removename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_leaf_replace = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_leaf_replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_node_to_leaf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_node_to_leaf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 16, i64 15857, i64 15871, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1480864324, i64 1480868915]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 15871, i64 54015]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 15871]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 50, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 60, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 74, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 83, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 247, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"xfs_dir3_leaf1_buf_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 246, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 256, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"xfs_dir3_leafn_buf_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 255, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 357, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 358, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 412, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 566, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 567, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 588, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 589, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 674, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 675, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 950, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 986, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1028, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1095, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1432, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1521, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1622, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1624, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1626, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1634, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1742, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1753, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 309, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1968, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 108, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 132, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1069, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1305, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1312, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [33 x i8] c"../fs/xfs/libxfs/xfs_dir2_leaf.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1329, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xfs_dir3_leaf1_buf_ops, ptr @.str.6, ptr @xfs_dir3_leafn_buf_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir3_leaf1_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir3_leafn_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 241, i32 288, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_leaf_hdr_from_disk(ptr nocapture noundef readonly %mp, ptr nocapture noundef %to, ptr noundef %from) local_unnamed_addr #0 align 64 {
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
  %back = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %back, align 4
  %back6 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 1
  %7 = ptrtoint ptr %back6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %back6, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 2
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %magic, align 8
  %magic10 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 2
  %10 = ptrtoint ptr %magic10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %magic10, align 4
  %count = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %from, i32 0, i32 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 8
  %count12 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 3
  %13 = ptrtoint ptr %count12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %count12, align 2
  %stale = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %from, i32 0, i32 2
  %14 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %stale, align 2
  %stale14 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 4
  %16 = ptrtoint ptr %stale14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %stale14, align 4
  %__ents = getelementptr inbounds %struct.xfs_dir3_leaf, ptr %from, i32 0, i32 1
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 5
  %17 = ptrtoint ptr %ents to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %__ents, ptr %ents, align 4
  %18 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %cond.false [
    i16 15871, label %if.then.if.end_crit_edge
    i16 15857, label %if.then.if.end_crit_edge89
  ]

if.then.if.end_crit_edge89:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %from, align 4
  %21 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %to, align 4
  %back28 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 1
  %22 = ptrtoint ptr %back28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %back28, align 4
  %back29 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 1
  %24 = ptrtoint ptr %back29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %back29, align 4
  %magic32 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 2
  %25 = ptrtoint ptr %magic32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %magic32, align 4
  %magic33 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 2
  %27 = ptrtoint ptr %magic33 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %magic33, align 4
  %count35 = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %from, i32 0, i32 1
  %28 = ptrtoint ptr %count35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count35, align 4
  %count36 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 3
  %30 = ptrtoint ptr %count36 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %count36, align 2
  %stale38 = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %from, i32 0, i32 2
  %31 = ptrtoint ptr %stale38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %stale38, align 2
  %stale39 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 4
  %33 = ptrtoint ptr %stale39 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %stale39, align 4
  %__ents40 = getelementptr inbounds %struct.xfs_dir2_leaf, ptr %from, i32 0, i32 1
  %ents42 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %to, i32 0, i32 5
  %34 = ptrtoint ptr %ents42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %__ents40, ptr %ents42, align 4
  %35 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %26, label %cond.false60 [
    i16 -11521, label %if.else.if.end_crit_edge
    i16 -11535, label %if.else.if.end_crit_edge90
  ]

if.else.if.end_crit_edge90:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false60:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 61) #8
  br label %if.end

if.end:                                           ; preds = %cond.false60, %if.else.if.end_crit_edge, %if.else.if.end_crit_edge90, %cond.false, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge89
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_leaf_hdr_to_disk(ptr nocapture noundef readonly %mp, ptr nocapture noundef writeonly %to, ptr nocapture noundef readonly %from) local_unnamed_addr #0 align 64 {
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
  %magic22 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %from, i32 0, i32 2
  %2 = ptrtoint ptr %magic22 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic22, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %3, label %cond.false [
    i16 15871, label %if.then.cond.end_crit_edge
    i16 15857, label %if.then.cond.end_crit_edge82
  ]

if.then.cond.end_crit_edge82:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 75) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge, %if.then.cond.end_crit_edge82
  %5 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %from, align 4
  %7 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %to, align 8
  %back = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %from, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %back, align 4
  %back12 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 1
  %10 = ptrtoint ptr %back12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %back12, align 4
  %11 = ptrtoint ptr %magic22 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %magic22, align 4
  %magic17 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 2
  %13 = ptrtoint ptr %magic17 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %magic17, align 8
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %from, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count, align 2
  %count19 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %to, i32 0, i32 1
  %16 = ptrtoint ptr %count19 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %count19, align 8
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %from, i32 0, i32 4
  %17 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %stale, align 4
  %stale21 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %to, i32 0, i32 2
  %19 = ptrtoint ptr %stale21 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %stale21, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %3, label %cond.false39 [
    i16 -11521, label %if.else.cond.end40_crit_edge
    i16 -11535, label %if.else.cond.end40_crit_edge83
  ]

if.else.cond.end40_crit_edge83:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40

if.else.cond.end40_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40

cond.false39:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 84) #8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %if.else.cond.end40_crit_edge, %if.else.cond.end40_crit_edge83
  %21 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %from, align 4
  %23 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %to, align 4
  %back45 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %from, i32 0, i32 1
  %24 = ptrtoint ptr %back45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %back45, align 4
  %back48 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 1
  %26 = ptrtoint ptr %back48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %back48, align 4
  %27 = ptrtoint ptr %magic22 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %magic22, align 4
  %magic52 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 2
  %29 = ptrtoint ptr %magic52 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %magic52, align 4
  %count53 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %from, i32 0, i32 3
  %30 = ptrtoint ptr %count53 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %count53, align 2
  %count55 = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %to, i32 0, i32 1
  %32 = ptrtoint ptr %count55 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %count55, align 4
  %stale56 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %from, i32 0, i32 4
  %33 = ptrtoint ptr %stale56 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %stale56, align 4
  %stale58 = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %to, i32 0, i32 2
  %35 = ptrtoint ptr %stale58 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %stale58, align 2
  br label %if.end

if.end:                                           ; preds = %cond.end40, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dir3_leaf_check_int(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %hdr, ptr noundef readonly %leaf, i1 noundef zeroext %expensive_checking) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_dir_geo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %leaf, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  %conv = zext i16 %5 to i32
  %leaf_max_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %leaf_max_ents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leaf_max_ents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ult i32 %7, %conv
  br i1 %cmp, label %__here, label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !106
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr, i32 0, i32 2
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %magic, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %9, label %if.end.if.end16_crit_edge [
    i16 -11535, label %if.end.land.lhs.true_crit_edge
    i16 15857, label %if.end.land.lhs.true_crit_edge81
  ]

if.end.land.lhs.true_crit_edge81:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge81
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr, i32 0, i32 5
  %11 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ents, align 4
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %12, i32 %conv
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %14
  %add.ptr.i76 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %cmp11 = icmp ugt ptr %arrayidx, %add.ptr.i76
  br i1 %cmp11, label %__here14, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

__here14:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !107
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  br i1 %expensive_checking, label %for.cond.preheader, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp2178.not = icmp eq i16 %5, 0
  br i1 %cmp2178.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ents28 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %stale.080 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end40.for.body_crit_edge ]
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end40.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.079, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp25 = icmp ult i32 %add, %conv
  br i1 %cmp25, label %if.then27, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then27:                                        ; preds = %for.body
  %15 = ptrtoint ptr %ents28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ents28, align 4
  %arrayidx29 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %16, i32 %i.079
  %17 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %16, i32 %add
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp34 = icmp ugt i32 %18, %20
  br i1 %cmp34, label %__here37, label %if.then27.if.end40_crit_edge

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

__here37:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !108
  br label %cleanup

if.end40:                                         ; preds = %if.then27.if.end40_crit_edge, %for.body.if.end40_crit_edge
  %21 = ptrtoint ptr %ents28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ents28, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %22, i32 %i.079, i32 1
  %23 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp43 = icmp eq i32 %24, 0
  %inc = zext i1 %cmp43 to i32
  %spec.select = add i32 %stale.080, %inc
  %exitcond.not = icmp eq i32 %add, %conv
  br i1 %exitcond.not, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %stale.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %spec.select, %if.end40.for.end_crit_edge ]
  %stale48 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr, i32 0, i32 4
  %25 = ptrtoint ptr %stale48 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %stale48, align 4
  %conv49 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %stale.0.lcssa, i32 %conv49)
  %cmp50.not = icmp eq i32 %stale.0.lcssa, %conv49
  br i1 %cmp50.not, label %for.end.cleanup_crit_edge, label %__here53

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__here53:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %__here53, %for.end.cleanup_crit_edge, %__here37, %if.end16.cleanup_crit_edge, %__here14, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dir3_leaf_check_int, %__here), %__here ], [ blockaddress(@xfs_dir3_leaf_check_int, %__here14), %__here14 ], [ blockaddress(@xfs_dir3_leaf_check_int, %__here37), %__here37 ], [ blockaddress(@xfs_dir3_leaf_check_int, %__here53), %__here53 ], [ null, %if.end16.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_leaf_read_verify(ptr noundef %bp) #0 align 64 {
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
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %5, i32 noundef 12) #8
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #8
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 16
  %sub.i.i.i = add i32 %shl.i, -16
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 12
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
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_dir3_leaf_read_verify, %__here)) #8
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = call ptr @xfs_dir3_leaf_verify(ptr noundef %bp)
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
define internal void @xfs_dir3_leaf_write_verify(ptr noundef %bp) #0 align 64 {
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
  %call = tail call ptr @xfs_dir3_leaf_verify(ptr noundef %bp)
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
define internal ptr @xfs_dir3_leaf_verify(ptr noundef %bp) #0 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %2 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %call = tail call ptr @xfs_da3_blkinfo_verify(ptr noundef %bp, ptr noundef %4) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %7 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %11 = ptrtoint ptr %leafhdr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %leafhdr, align 4
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %back.i, align 4
  %back6.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %14 = ptrtoint ptr %back6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %back6.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %magic.i, align 8
  %magic10.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %17 = ptrtoint ptr %magic10.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %magic10.i, align 4
  %count.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count.i, align 8
  %count12.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %20 = ptrtoint ptr %count12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %count12.i, align 2
  %stale.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %6, i32 0, i32 2
  %21 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %stale.i, align 2
  %stale14.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %23 = ptrtoint ptr %stale14.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %stale14.i, align 4
  %__ents.i = getelementptr inbounds %struct.xfs_dir3_leaf, ptr %6, i32 0, i32 1
  %ents.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %24 = ptrtoint ptr %ents.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %__ents.i, ptr %ents.i, align 4
  %25 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %16, label %cond.false.i [
    i16 15871, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 15857, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge12
  ]

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge12: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.end
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 4
  %28 = ptrtoint ptr %leafhdr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %leafhdr, align 4
  %back28.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 1
  %29 = ptrtoint ptr %back28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %back28.i, align 4
  %back29.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %31 = ptrtoint ptr %back29.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %back29.i, align 4
  %magic32.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 2
  %32 = ptrtoint ptr %magic32.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %magic32.i, align 4
  %magic33.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %34 = ptrtoint ptr %magic33.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %magic33.i, align 4
  %count35.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %6, i32 0, i32 1
  %35 = ptrtoint ptr %count35.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %count35.i, align 4
  %count36.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %37 = ptrtoint ptr %count36.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %count36.i, align 2
  %stale38.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %6, i32 0, i32 2
  %38 = ptrtoint ptr %stale38.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %stale38.i, align 2
  %stale39.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %40 = ptrtoint ptr %stale39.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %stale39.i, align 4
  %__ents40.i = getelementptr inbounds %struct.xfs_dir2_leaf, ptr %6, i32 0, i32 1
  %ents42.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %41 = ptrtoint ptr %ents42.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %__ents40.i, ptr %ents42.i, align 4
  %42 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %33, label %cond.false60.i [
    i16 -11521, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 -11535, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge13
  ]

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge13: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false60.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 61) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

xfs_dir2_leaf_hdr_from_disk.exit:                 ; preds = %cond.false60.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge13, %cond.false.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge12
  %43 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_addr, align 4
  %call3 = call ptr @xfs_dir3_leaf_check_int(ptr noundef %1, ptr noundef nonnull %leafhdr, ptr noundef %44, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir2_leaf_hdr_from_disk.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %xfs_dir2_leaf_hdr_from_disk.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir3_leaf_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, i32 noundef 0, ptr noundef %bpp, i32 noundef 0, ptr noundef nonnull @xfs_dir3_leaf1_buf_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq ptr %tp, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpp, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_trans_buf_set_type(ptr noundef nonnull %tp, ptr noundef nonnull %1, i32 noundef 13) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_read_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir3_leafn_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %fbno, i32 noundef 0, ptr noundef %bpp, i32 noundef 0, ptr noundef nonnull @xfs_dir3_leafn_buf_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq ptr %tp, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpp, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_trans_buf_set_type(ptr noundef nonnull %tp, ptr noundef nonnull %1, i32 noundef 14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir3_leaf_get_buf(ptr nocapture noundef readonly %args, i32 noundef %bno, ptr nocapture noundef writeonly %bpp, i16 noundef zeroext %magic) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !111
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11535, i16 %magic)
  %cmp = icmp eq i16 %magic, -11535
  %7 = zext i16 %magic to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %magic, label %cond.false [
    i16 -11521, label %entry.cond.end_crit_edge
    i16 -11535, label %entry.cond.end_crit_edge62
  ]

entry.cond.end_crit_edge62:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 357) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge62
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %blklog.i, align 1
  %sh_prom.i = zext i8 %11 to i64
  %shr.i60 = lshr i64 34359738368, %sh_prom.i
  %conv1.i = trunc i64 %shr.i60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bno)
  %cmp7.not = icmp ule i32 %conv1.i, %bno
  %shr.i5261 = lshr i64 68719476736, %sh_prom.i
  %conv1.i53 = trunc i64 %shr.i5261 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i53, i32 %bno)
  %cmp11 = icmp ugt i32 %conv1.i53, %bno
  %or.cond = select i1 %cmp7.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %cond.end.cond.end21_crit_edge, label %cond.false20, !prof !112

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 359) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end.cond.end21_crit_edge
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args, align 8
  %blklog.i54 = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %blklog.i54 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %blklog.i54, align 1
  %conv.i = zext i8 %15 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fsblog.i, align 4
  %conv1.i55 = zext i8 %17 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i55
  %shl.i = shl i32 %bno, %sub.i
  %call24 = call i32 @xfs_da_get_buf(ptr noundef %3, ptr noundef %1, i32 noundef %shl.i, ptr noundef nonnull %bp, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end, label %cond.end21.cleanup_crit_edge

cond.end21.cleanup_crit_edge:                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end21
  %18 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_ino, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %19, i32 0, i32 16
  %22 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_addr.i, align 4
  %24 = zext i16 %magic to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %magic, label %cond.false.i [
    i16 -11521, label %if.end.cond.end.i_crit_edge
    i16 -11535, label %if.end.cond.end.i_crit_edge63
  ]

if.end.cond.end.i_crit_edge63:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 309) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.cond.end.i_crit_edge, %if.end.cond.end.i_crit_edge63
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_addr.i, align 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 64)
  %conv10.i = select i1 %cmp, i16 15857, i16 15871
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %28, i32 0, i32 2
  %30 = ptrtoint ptr %magic.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv10.i, ptr %magic.i, align 8
  %b_maps.i.i = getelementptr inbounds %struct.xfs_buf, ptr %19, i32 0, i32 24
  %31 = ptrtoint ptr %b_maps.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_maps.i.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %blkno.i = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %28, i32 0, i32 2
  %35 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %blkno.i, align 8
  %owner14.i = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %28, i32 0, i32 5
  %36 = ptrtoint ptr %owner14.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %21, ptr %owner14.i, align 8
  %uuid.i = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %28, i32 0, i32 4
  %sb_meta_uuid.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 54
  %37 = call ptr @memcpy(ptr %uuid.i, ptr %sb_meta_uuid.i, i32 16)
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = call ptr @memset(ptr %23, i32 0, i32 16)
  %magic18.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %23, i32 0, i32 2
  %39 = ptrtoint ptr %magic18.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %magic, ptr %magic18.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  br i1 %cmp, label %if.then22.i, label %if.end.i.xfs_dir3_leaf_init.exit_crit_edge

if.end.i.xfs_dir3_leaf_init.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_init.exit

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %m_dir_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 6
  %40 = ptrtoint ptr %m_dir_geo.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m_dir_geo.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %43
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %44 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %add.ptr1.i.i, align 4
  br label %xfs_dir3_leaf_init.exit

xfs_dir3_leaf_init.exit:                          ; preds = %if.then22.i, %if.end.i.xfs_dir3_leaf_init.exit_crit_edge
  %xfs_dir3_leafn_buf_ops.sink.i = phi ptr [ @xfs_dir3_leaf1_buf_ops, %if.then22.i ], [ @xfs_dir3_leafn_buf_ops, %if.end.i.xfs_dir3_leaf_init.exit_crit_edge ]
  %.sink.i = phi i32 [ 13, %if.then22.i ], [ 14, %if.end.i.xfs_dir3_leaf_init.exit_crit_edge ]
  %b_ops25.i = getelementptr inbounds %struct.xfs_buf, ptr %19, i32 0, i32 35
  %45 = ptrtoint ptr %b_ops25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %xfs_dir3_leafn_buf_ops.sink.i, ptr %b_ops25.i, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %3, ptr noundef %19, i32 noundef %.sink.i) #8
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bp, align 4
  %b_addr.i56 = getelementptr inbounds %struct.xfs_buf, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %b_addr.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_addr.i56, align 4
  %magic.i57 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %magic.i57 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %magic.i57, align 4
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %51, label %cond.false.critedge.i [
    i16 -11535, label %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge
    i16 15857, label %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge64
    i16 -11521, label %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge65
    i16 15871, label %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge66
  ]

xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge66: ; preds = %xfs_dir3_leaf_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge65: ; preds = %xfs_dir3_leaf_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge64: ; preds = %xfs_dir3_leaf_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge: ; preds = %xfs_dir3_leaf_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

cond.false.critedge.i:                            ; preds = %xfs_dir3_leaf_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1120) #8
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir3_leaf_log_header.exit:                    ; preds = %cond.false.critedge.i, %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge, %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge64, %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge65, %xfs_dir3_leaf_init.exit.xfs_dir3_leaf_log_header.exit_crit_edge66
  %53 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trans, align 4
  %55 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %args, align 8
  %leaf_hdr_size.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %leaf_hdr_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %leaf_hdr_size.i, align 4
  %sub.i58 = add i32 %58, -1
  call void @xfs_trans_log_buf(ptr noundef %54, ptr noundef %47, i32 noundef 0, i32 noundef %sub.i58) #8
  br i1 %cmp, label %if.then29, label %xfs_dir3_leaf_log_header.exit.if.end30_crit_edge

xfs_dir3_leaf_log_header.exit.if.end30_crit_edge: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bp, align 4
  call fastcc void @xfs_dir3_leaf_log_tail(ptr noundef %args, ptr noundef %60)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %xfs_dir3_leaf_log_header.exit.if.end30_crit_edge
  %61 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bp, align 4
  %63 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %cond.end21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_get_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir3_leaf_log_header(ptr nocapture noundef readonly %args, ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %3, label %cond.false.critedge [
    i16 -11535, label %entry.cond.end_crit_edge
    i16 15857, label %entry.cond.end_crit_edge30
    i16 -11521, label %entry.cond.end_crit_edge31
    i16 15871, label %entry.cond.end_crit_edge32
  ]

entry.cond.end_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1120) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge30, %entry.cond.end_crit_edge31, %entry.cond.end_crit_edge32
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %leaf_hdr_size = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %leaf_hdr_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %leaf_hdr_size, align 4
  %sub = add i32 %10, -1
  tail call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %bp, i32 noundef 0, i32 noundef %sub) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir3_leaf_log_tail(ptr nocapture noundef readonly %args, ptr noundef %bp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %3, label %cond.false.critedge [
    i16 -11535, label %entry.cond.end_crit_edge
    i16 15857, label %entry.cond.end_crit_edge31
    i16 -11521, label %entry.cond.end_crit_edge32
    i16 15871, label %entry.cond.end_crit_edge33
  ]

entry.cond.end_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1141) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge31, %entry.cond.end_crit_edge32, %entry.cond.end_crit_edge33
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %9 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %8, -1
  tail call void @xfs_trans_log_buf(ptr noundef %10, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_block_to_leaf(ptr noundef %args, ptr noundef %dbp) local_unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i32, align 4
  %lbp = alloca ptr, align 4
  %needlog = alloca i32, align 4
  %needscan = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blkno) #8
  %0 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %blkno, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lbp) #8
  %1 = ptrtoint ptr %lbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %lbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan) #8
  tail call fastcc void @trace_xfs_dir2_block_to_leaf(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %call = call i32 @xfs_da_grow_inode(ptr noundef %args, ptr noundef nonnull %blkno) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 8
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blkno, align 4
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %11 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %13 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shr.i = lshr i32 %9, %sub.i
  %sh_prom.i = zext i8 %11 to i64
  %shr.i105150 = lshr i64 34359738368, %sh_prom.i
  %conv1.i106 = trunc i64 %shr.i105150 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv1.i106)
  %cmp = icmp eq i32 %shr.i, %conv1.i106
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !113

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 412) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %call7 = call i32 @xfs_dir3_leaf_get_buf(ptr noundef %args, i32 noundef %shr.i, ptr noundef nonnull %lbp, i16 noundef zeroext -11535)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %cond.end
  %14 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr, align 4
  %b_addr11 = getelementptr inbounds %struct.xfs_buf, ptr %dbp, i32 0, i32 16
  %18 = ptrtoint ptr %b_addr11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr11, align 4
  call void @xfs_dir3_data_check(ptr noundef %3, ptr noundef %dbp) #8
  %20 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %23
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %25
  %add.ptr.i107 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %call15 = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %27, ptr noundef %19) #8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %29, i32 0, i32 61
  %30 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %17, align 8
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 1
  %34 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %back.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 2
  %36 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %magic.i, align 8
  %__ents.i = getelementptr inbounds %struct.xfs_dir3_leaf, ptr %17, i32 0, i32 1
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %37, label %cond.false.i [
    i16 15871, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 15857, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge151
  ]

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge151: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.end10
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %17, align 4
  %back28.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 1
  %41 = ptrtoint ptr %back28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %back28.i, align 4
  %magic32.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 2
  %43 = ptrtoint ptr %magic32.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %magic32.i, align 4
  %__ents40.i = getelementptr inbounds %struct.xfs_dir2_leaf, ptr %17, i32 0, i32 1
  %45 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %44, label %cond.false60.i [
    i16 -11521, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 -11535, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge152
  ]

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge152: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false60.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 61) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

xfs_dir2_leaf_hdr_from_disk.exit:                 ; preds = %cond.false60.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge152, %cond.false.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge151
  %leafhdr.sroa.27148.0 = phi ptr [ %__ents40.i, %cond.false60.i ], [ %__ents40.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %__ents40.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge152 ], [ %__ents.i, %cond.false.i ], [ %__ents.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %__ents.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge151 ]
  %leafhdr.sroa.11.0 = phi i16 [ %44, %cond.false60.i ], [ %44, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %44, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge152 ], [ %37, %cond.false.i ], [ %37, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %37, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge151 ]
  %leafhdr.sroa.7.0 = phi i32 [ %42, %cond.false60.i ], [ %42, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %42, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge152 ], [ %35, %cond.false.i ], [ %35, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %35, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge151 ]
  %leafhdr.sroa.0.0 = phi i32 [ %40, %cond.false60.i ], [ %40, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %40, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge152 ], [ %33, %cond.false.i ], [ %33, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %33, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge151 ]
  %46 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr1.i, align 4
  %conv = trunc i32 %47 to i16
  %stale = getelementptr inbounds %struct.xfs_dir2_block_tail, ptr %add.ptr1.i, i32 0, i32 1
  %48 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stale, align 4
  %conv18 = trunc i32 %49 to i16
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %m_features.i.i108 = getelementptr inbounds %struct.xfs_mount, ptr %51, i32 0, i32 61
  %52 = ptrtoint ptr %m_features.i.i108 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %m_features.i.i108, align 8
  %and.i.i109 = and i64 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i109)
  %tobool.i.not.i110 = icmp eq i64 %and.i.i109, 0
  br i1 %tobool.i.not.i110, label %if.else.i116, label %if.then.i111

if.then.i111:                                     ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  %54 = zext i16 %leafhdr.sroa.11.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %leafhdr.sroa.11.0, label %cond.false.i112 [
    i16 15871, label %if.then.i111.cond.end.i_crit_edge
    i16 15857, label %if.then.i111.cond.end.i_crit_edge153
  ]

if.then.i111.cond.end.i_crit_edge153:             ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.then.i111.cond.end.i_crit_edge:                ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i112:                                  ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 75) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i112, %if.then.i111.cond.end.i_crit_edge, %if.then.i111.cond.end.i_crit_edge153
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %leafhdr.sroa.0.0, ptr %17, align 8
  %back12.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 1
  %56 = ptrtoint ptr %back12.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %leafhdr.sroa.7.0, ptr %back12.i, align 4
  %magic17.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 2
  %57 = ptrtoint ptr %magic17.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %leafhdr.sroa.11.0, ptr %magic17.i, align 8
  %count19.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %17, i32 0, i32 1
  %58 = ptrtoint ptr %count19.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv, ptr %count19.i, align 8
  %stale21.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %17, i32 0, i32 2
  br label %xfs_dir2_leaf_hdr_to_disk.exit

if.else.i116:                                     ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  %59 = zext i16 %leafhdr.sroa.11.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %leafhdr.sroa.11.0, label %cond.false39.i [
    i16 -11521, label %if.else.i116.cond.end40.i_crit_edge
    i16 -11535, label %if.else.i116.cond.end40.i_crit_edge154
  ]

if.else.i116.cond.end40.i_crit_edge154:           ; preds = %if.else.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40.i

if.else.i116.cond.end40.i_crit_edge:              ; preds = %if.else.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40.i

cond.false39.i:                                   ; preds = %if.else.i116
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 84) #8
  br label %cond.end40.i

cond.end40.i:                                     ; preds = %cond.false39.i, %if.else.i116.cond.end40.i_crit_edge, %if.else.i116.cond.end40.i_crit_edge154
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %leafhdr.sroa.0.0, ptr %17, align 4
  %back48.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 1
  %61 = ptrtoint ptr %back48.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %leafhdr.sroa.7.0, ptr %back48.i, align 4
  %magic52.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 2
  %62 = ptrtoint ptr %magic52.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %leafhdr.sroa.11.0, ptr %magic52.i, align 4
  %count55.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %17, i32 0, i32 1
  %63 = ptrtoint ptr %count55.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv, ptr %count55.i, align 4
  %stale58.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %17, i32 0, i32 2
  br label %xfs_dir2_leaf_hdr_to_disk.exit

xfs_dir2_leaf_hdr_to_disk.exit:                   ; preds = %cond.end40.i, %cond.end.i
  %stale21.i.sink = phi ptr [ %stale21.i, %cond.end.i ], [ %stale58.i, %cond.end40.i ]
  %64 = ptrtoint ptr %stale21.i.sink to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv18, ptr %stale21.i.sink, align 2
  %65 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_addr, align 4
  %magic.i117 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %magic.i117 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %magic.i117, align 4
  %69 = zext i16 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %68, label %cond.false.critedge.i [
    i16 -11535, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge
    i16 15857, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge155
    i16 -11521, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge156
    i16 15871, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge157
  ]

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge157: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge156: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge155: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

cond.false.critedge.i:                            ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1120) #8
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir3_leaf_log_header.exit:                    ; preds = %cond.false.critedge.i, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge155, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge156, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge157
  %70 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trans, align 4
  %72 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %args, align 8
  %leaf_hdr_size.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %leaf_hdr_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %leaf_hdr_size.i, align 4
  %sub.i118 = add i32 %75, -1
  call void @xfs_trans_log_buf(ptr noundef %71, ptr noundef %15, i32 noundef 0, i32 noundef %sub.i118) #8
  %76 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr1.i, align 4
  %mul = shl i32 %77, 3
  %78 = call ptr @memcpy(ptr %leafhdr.sroa.27148.0, ptr %add.ptr.i107, i32 %mul)
  %conv23 = and i32 %47, 65535
  %sub = add nsw i32 %conv23, -1
  %79 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %b_addr, align 4
  %magic.i121 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %magic.i121 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %magic.i121, align 4
  %83 = zext i16 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %82, label %cond.false.critedge.i122 [
    i16 -11535, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge
    i16 15857, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge158
    i16 -11521, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge159
    i16 15871, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge160
  ]

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge160: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge159: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge158: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

cond.false.critedge.i122:                         ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1098) #8
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_ents.exit:                      ; preds = %cond.false.critedge.i122, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge158, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge159, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge160
  %arrayidx24.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %leafhdr.sroa.27148.0, i32 %sub
  %84 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %leafhdr.sroa.27148.0 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.lhs.cast25.i = ptrtoint ptr %arrayidx24.i to i32
  %sub.ptr.sub27.i = add i32 %sub.ptr.lhs.cast25.i, 7
  %sub.i125 = sub i32 %sub.ptr.sub27.i, %sub.ptr.rhs.cast.i
  call void @xfs_trans_log_buf(ptr noundef %85, ptr noundef %15, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i125) #8
  %86 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %needscan, align 4
  %87 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %needlog, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i107 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %88 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %args, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %91
  %sub.ptr.lhs.cast25 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub27 = sub i32 %sub.ptr.lhs.cast25, %sub.ptr.lhs.cast
  call void @xfs_dir2_data_make_free(ptr noundef %args, ptr noundef %dbp, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub27, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %dbp, i32 0, i32 35
  %92 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @xfs_dir3_data_buf_ops, ptr %b_ops, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %5, ptr noundef %dbp, i32 noundef 11) #8
  %93 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480864322, i32 %94)
  %cmp28 = icmp eq i32 %94, 1480864322
  %. = select i1 %cmp28, i32 1480864324, i32 1480868915
  %95 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %., ptr %19, align 4
  %96 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool34.not = icmp eq i32 %97, 0
  br i1 %tobool34.not, label %xfs_dir3_leaf_log_ents.exit.if.end37_crit_edge, label %if.then35

xfs_dir3_leaf_log_ents.exit.if.end37_crit_edge:   ; preds = %xfs_dir3_leaf_log_ents.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %xfs_dir3_leaf_log_ents.exit
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %3, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %99, ptr noundef %19, ptr noundef nonnull %needlog) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %xfs_dir3_leaf_log_ents.exit.if.end37_crit_edge
  %100 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %args, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add.ptr.i127 = getelementptr i8, ptr %17, i32 %103
  %add.ptr1.i128 = getelementptr i8, ptr %add.ptr.i127, i32 -4
  %104 = ptrtoint ptr %add.ptr1.i128 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %add.ptr1.i128, align 4
  %add.ptr.i130 = getelementptr i16, ptr %add.ptr1.i128, i32 -1
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call15, i32 0, i32 1
  %105 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %length, align 2
  %107 = ptrtoint ptr %add.ptr.i130 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %add.ptr.i130, align 2
  %108 = ptrtoint ptr %needlog to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %needlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool42.not = icmp eq i32 %109, 0
  br i1 %tobool42.not, label %if.end37.if.end44_crit_edge, label %if.then43

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %dbp) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end37.if.end44_crit_edge
  %call.i = call fastcc ptr @xfs_dir3_leaf1_check(ptr noundef %3, ptr noundef %15) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end44.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

if.end44.xfs_dir3_leaf_check.exit_crit_edge:      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %3, align 8
  %112 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 2
  %114 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %115, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %111, ptr noundef %113, i32 noundef %shl.i, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 132) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %if.end44.xfs_dir3_leaf_check.exit_crit_edge
  call void @xfs_dir3_data_check(ptr noundef %3, ptr noundef %dbp) #8
  %116 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %b_addr, align 4
  %magic.i133 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %magic.i133 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %magic.i133, align 4
  %120 = zext i16 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %119, label %cond.false.i134 [
    i16 -11535, label %xfs_dir3_leaf_check.exit.xfs_dir3_leaf_log_bests.exit_crit_edge
    i16 15857, label %xfs_dir3_leaf_check.exit.xfs_dir3_leaf_log_bests.exit_crit_edge161
  ]

xfs_dir3_leaf_check.exit.xfs_dir3_leaf_log_bests.exit_crit_edge161: ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_bests.exit

xfs_dir3_leaf_check.exit.xfs_dir3_leaf_log_bests.exit_crit_edge: ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_bests.exit

cond.false.i134:                                  ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1070) #8
  br label %xfs_dir3_leaf_log_bests.exit

xfs_dir3_leaf_log_bests.exit:                     ; preds = %cond.false.i134, %xfs_dir3_leaf_check.exit.xfs_dir3_leaf_log_bests.exit_crit_edge, %xfs_dir3_leaf_check.exit.xfs_dir3_leaf_log_bests.exit_crit_edge161
  %121 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %args, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 %124
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %125 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr1.i.i, align 4
  %idx.neg.i.i = sub i32 0, %126
  %add.ptr.i22.i = getelementptr i16, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %127 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast.i136 = ptrtoint ptr %add.ptr.i22.i to i32
  %sub.ptr.rhs.cast.i137 = ptrtoint ptr %117 to i32
  %sub.ptr.sub.i138 = sub i32 %sub.ptr.lhs.cast.i136, %sub.ptr.rhs.cast.i137
  %sub.ptr.sub14.i = sub i32 1, %sub.ptr.rhs.cast.i137
  %sub.i139 = add i32 %sub.ptr.sub14.i, %sub.ptr.lhs.cast.i136
  call void @xfs_trans_log_buf(ptr noundef %128, ptr noundef %15, i32 noundef %sub.ptr.sub.i138, i32 noundef %sub.i139) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir3_leaf_log_bests.exit, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_dir3_leaf_log_bests.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkno) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_block_to_leaf(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_to_leaf, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_block_to_leaf, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %call42 = tail call i32 @__traceiter_xfs_dir2_block_to_leaf(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !113

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_to_leaf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_to_leaf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_block_to_leaf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_block_to_leaf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1968, ptr noundef nonnull @.str.30) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
declare dso_local i32 @xfs_da_grow_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir3_data_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_bestfree_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir3_leaf_log_ents(ptr nocapture noundef readonly %args, ptr nocapture noundef readonly %hdr, ptr noundef %bp, i32 noundef %first, i32 noundef %last) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %3, label %cond.false.critedge [
    i16 -11535, label %entry.cond.end_crit_edge
    i16 15857, label %entry.cond.end_crit_edge35
    i16 -11521, label %entry.cond.end_crit_edge36
    i16 15871, label %entry.cond.end_crit_edge37
  ]

entry.cond.end_crit_edge37:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge36:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge35:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1098) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge35, %entry.cond.end_crit_edge36, %entry.cond.end_crit_edge37
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr, i32 0, i32 5
  %5 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ents, align 4
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %6, i32 %first
  %arrayidx24 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %6, i32 %last
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.lhs.cast25 = ptrtoint ptr %arrayidx24 to i32
  %sub.ptr.sub27 = sub i32 7, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub27, %sub.ptr.lhs.cast25
  tail call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_make_free(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_freescan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_log_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir3_leaf_check(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %bp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc ptr @xfs_dir3_leaf1_check(ptr noundef %dp, ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %4 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_length, align 8
  %shl = shl i32 %5, 9
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %1, ptr noundef %3, i32 noundef %shl, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull %call) #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 132) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir3_leaf_log_bests(ptr nocapture noundef readonly %args, ptr noundef %bp, i32 noundef %first, i32 noundef %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %3, label %cond.false [
    i16 -11535, label %entry.cond.end_crit_edge
    i16 15857, label %entry.cond.end_crit_edge25
  ]

entry.cond.end_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1070) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge25
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %10
  %add.ptr.i22 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %add.ptr = getelementptr i16, ptr %add.ptr.i22, i32 %first
  %add.ptr11 = getelementptr i16, ptr %add.ptr.i22, i32 %last
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %11 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.lhs.cast12 = ptrtoint ptr %add.ptr11 to i32
  %sub.ptr.sub14 = sub i32 1, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub14, %sub.ptr.lhs.cast12
  tail call void @xfs_trans_log_buf(ptr noundef %12, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dir3_leaf_find_entry(ptr nocapture noundef %leafhdr, ptr noundef %ents, i32 noundef %index, i32 noundef %compact, i32 noundef %lowstale, i32 noundef %highstale, ptr nocapture noundef %lfloglow, ptr nocapture noundef %lfloghigh) local_unnamed_addr #0 align 64 {
entry:
  %lowstale.addr = alloca i32, align 4
  %highstale.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lowstale.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %lowstale, ptr %lowstale.addr, align 4
  %1 = ptrtoint ptr %highstale.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %highstale, ptr %highstale.addr, align 4
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %2 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %index
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp = icmp sgt i32 %conv, %index
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.xfs_dir2_leaf_entry, ptr %arrayidx, i32 1
  %sub = sub i32 %conv, %index
  %mul = shl i32 %sub, 3
  %6 = call ptr @memmove(ptr %add.ptr, ptr %arrayidx, i32 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %lfloglow to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %index, ptr %lfloglow, align 4
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %count, align 2
  %conv6 = zext i16 %9 to i32
  %10 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %lfloghigh, align 4
  br label %return

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compact)
  %cmp8 = icmp eq i32 %compact, 0
  br i1 %cmp8, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @xfs_dir3_leaf_find_stale(ptr noundef %leafhdr, ptr noundef %ents, i32 noundef %index, ptr noundef nonnull %lowstale.addr, ptr noundef nonnull %highstale.addr)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %11 = ptrtoint ptr %lowstale.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lowstale.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp12 = icmp sgt i32 %12, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.end69_crit_edge

if.end11.if.end69_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end11
  %13 = ptrtoint ptr %highstale.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %highstale.addr, align 4
  %count14 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %15 = ptrtoint ptr %count14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count14, align 2
  %conv15 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv15)
  %cmp16 = icmp eq i32 %14, %conv15
  %.pre = xor i32 %12, -1
  %.pre181 = add i32 %.pre, %index
  %sub20 = sub i32 %14, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre181, i32 %sub20)
  %cmp21 = icmp slt i32 %.pre181, %sub20
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp21
  br i1 %or.cond, label %if.then23, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pre181)
  %cmp26 = icmp sgt i32 %.pre181, -1
  br i1 %cmp26, label %if.then23.cond.end_crit_edge, label %cond.false, !prof !113

if.then23.cond.end_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 566) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then23.cond.end_crit_edge
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %12, i32 1
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp31 = icmp eq i32 %18, 0
  br i1 %cmp31, label %cond.end.cond.end41_crit_edge, label %cond.false40, !prof !113

cond.end.cond.end41_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end41

cond.false40:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 568) #8
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %cond.end.cond.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre181)
  %cmp44 = icmp sgt i32 %.pre181, 0
  br i1 %cmp44, label %if.then46, label %cond.end41.if.end52_crit_edge

cond.end41.if.end52_crit_edge:                    ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then46:                                        ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx47 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %12
  %add = add nuw i32 %12, 1
  %arrayidx48 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %add
  %mul51 = shl i32 %.pre181, 3
  %19 = call ptr @memmove(ptr %arrayidx47, ptr %arrayidx48, i32 %mul51)
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %cond.end41.if.end52_crit_edge
  %20 = ptrtoint ptr %lfloglow to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lfloglow, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %12, i32 %21)
  %23 = ptrtoint ptr %lfloglow to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lfloglow, align 4
  %sub58 = add i32 %index, -1
  %24 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lfloghigh, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %sub58, i32 %25)
  %27 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %lfloghigh, align 4
  %28 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %stale, align 4
  %dec = add i16 %29, -1
  store i16 %dec, ptr %stale, align 4
  %arrayidx68 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %sub58
  br label %return

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %if.end11.if.end69_crit_edge
  %30 = ptrtoint ptr %highstale.addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %highstale.addr, align 4
  %sub70 = sub i32 %31, %index
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub70)
  %cmp71 = icmp sgt i32 %sub70, -1
  br i1 %cmp71, label %if.end69.cond.end81_crit_edge, label %cond.false80, !prof !113

if.end69.cond.end81_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end81

cond.false80:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 588) #8
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %if.end69.cond.end81_crit_edge
  %address83 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %31, i32 1
  %32 = ptrtoint ptr %address83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %address83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp84 = icmp eq i32 %33, 0
  br i1 %cmp84, label %cond.end81.cond.end94_crit_edge, label %cond.false93, !prof !113

cond.end81.cond.end94_crit_edge:                  ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end94

cond.false93:                                     ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 589) #8
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %cond.end81.cond.end94_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub70)
  %cmp96 = icmp sgt i32 %sub70, 0
  br i1 %cmp96, label %if.then98, label %cond.end94.if.end104_crit_edge

cond.end94.if.end104_crit_edge:                   ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then98:                                        ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #10
  %add99 = add i32 %index, 1
  %arrayidx100 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %add99
  %arrayidx101 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %index
  %mul103 = shl i32 %sub70, 3
  %34 = call ptr @memmove(ptr %arrayidx100, ptr %arrayidx101, i32 %mul103)
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %cond.end94.if.end104_crit_edge
  %35 = ptrtoint ptr %lfloglow to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lfloglow, align 4
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %index)
  %38 = ptrtoint ptr %lfloglow to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %lfloglow, align 4
  %39 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lfloghigh, align 4
  %41 = tail call i32 @llvm.smax.i32(i32 %31, i32 %40)
  %42 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %lfloghigh, align 4
  %43 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %stale, align 4
  %dec120 = add i16 %44, -1
  store i16 %dec120, ptr %stale, align 4
  %arrayidx121 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %index
  br label %return

return:                                           ; preds = %if.end104, %if.end52, %if.end
  %retval.0 = phi ptr [ %arrayidx68, %if.end52 ], [ %arrayidx121, %if.end104 ], [ %arrayidx, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir3_leaf_find_stale(ptr nocapture noundef readonly %leafhdr, ptr nocapture noundef readonly %ents, i32 noundef %index, ptr nocapture noundef %lowstale, ptr nocapture noundef %highstale) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %storemerge.in = phi i32 [ %index, %entry ], [ %storemerge, %for.body.for.cond_crit_edge ]
  %storemerge = add i32 %storemerge.in, -1
  %0 = ptrtoint ptr %lowstale to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %storemerge, ptr %lowstale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %storemerge)
  %cmp = icmp sgt i32 %storemerge, -1
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %storemerge, i32 1
  %1 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %address, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %3 = ptrtoint ptr %highstale to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %index, ptr %highstale, align 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  %conv38 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %index)
  %cmp339 = icmp sgt i32 %conv38, %index
  br i1 %cmp339, label %for.end.for.body5_crit_edge, label %for.end.for.end21_crit_edge

for.end.for.end21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.end.for.body5_crit_edge:                      ; preds = %for.end
  br label %for.body5

for.body5:                                        ; preds = %for.inc20.for.body5_crit_edge, %for.end.for.body5_crit_edge
  %storemerge3740 = phi i32 [ %inc, %for.inc20.for.body5_crit_edge ], [ %index, %for.end.for.body5_crit_edge ]
  %address7 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %storemerge3740, i32 1
  %6 = ptrtoint ptr %address7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %for.body5.for.end21_crit_edge, label %if.end11

for.body5.for.end21_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

if.end11:                                         ; preds = %for.body5
  %8 = ptrtoint ptr %lowstale to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lowstale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp12 = icmp sgt i32 %9, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end11.for.inc20_crit_edge

if.end11.for.inc20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20

land.lhs.true:                                    ; preds = %if.end11
  %sub14 = sub i32 %index, %9
  %sub15 = sub i32 %storemerge3740, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %sub15)
  %cmp16.not = icmp sgt i32 %sub14, %sub15
  br i1 %cmp16.not, label %land.lhs.true.for.inc20_crit_edge, label %land.lhs.true.for.end21_crit_edge

land.lhs.true.for.end21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

land.lhs.true.for.inc20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20

for.inc20:                                        ; preds = %land.lhs.true.for.inc20_crit_edge, %if.end11.for.inc20_crit_edge
  %inc = add nsw i32 %storemerge3740, 1
  %10 = ptrtoint ptr %highstale to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %highstale, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 2
  %conv = zext i16 %12 to i32
  %cmp3 = icmp slt i32 %inc, %conv
  br i1 %cmp3, label %for.inc20.for.body5_crit_edge, label %for.inc20.for.end21_crit_edge

for.inc20.for.end21_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.inc20.for.body5_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.end21:                                        ; preds = %for.inc20.for.end21_crit_edge, %land.lhs.true.for.end21_crit_edge, %for.body5.for.end21_crit_edge, %for.end.for.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leaf_addname(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %dbp = alloca ptr, align 4
  %lbp = alloca ptr, align 4
  %highstale = alloca i32, align 4
  %index = alloca i32, align 4
  %lfloglow = alloca i32, align 4
  %lfloghigh = alloca i32, align 4
  %lowstale = alloca i32, align 4
  %needlog = alloca i32, align 4
  %needscan = alloca i32, align 4
  %use_block = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %0 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %1 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #8
  %3 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lbp) #8
  %4 = ptrtoint ptr %lbp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %lbp, align 4, !annotation !111
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %5 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %highstale) #8
  %7 = ptrtoint ptr %highstale to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %highstale, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfloglow) #8
  %8 = ptrtoint ptr %lfloglow to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %lfloglow, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfloghigh) #8
  %9 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %lfloghigh, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lowstale) #8
  %10 = ptrtoint ptr %lowstale to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lowstale, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog) #8
  %11 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %needlog, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan) #8
  %12 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %needscan, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %use_block) #8
  %13 = ptrtoint ptr %use_block to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %use_block, align 4, !annotation !111
  tail call fastcc void @trace_xfs_dir2_leaf_addname(ptr noundef %args)
  %14 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leafblk, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %2, ptr noundef %6, i32 noundef %17, i32 noundef 0, ptr noundef nonnull %lbp, i32 noundef 0, ptr noundef nonnull @xfs_dir3_leaf1_buf_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %2, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %xfs_dir3_leaf_read.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %entry
  %18 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lbp, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %if.then.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %2, ptr noundef nonnull %19, i32 noundef 13) #8
  br label %if.end

xfs_dir3_leaf_read.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %xfs_dir3_leaf_read.exit.if.end_crit_edge, label %xfs_dir3_leaf_read.exit.cleanup_crit_edge

xfs_dir3_leaf_read.exit.cleanup_crit_edge:        ; preds = %xfs_dir3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xfs_dir3_leaf_read.exit.if.end_crit_edge:         ; preds = %xfs_dir3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %xfs_dir3_leaf_read.exit.if.end_crit_edge, %if.then.i, %land.lhs.true2.i.if.end_crit_edge
  %20 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lbp, align 4
  %call2 = call i32 @xfs_dir2_leaf_search_hash(ptr noundef %args, ptr noundef %21)
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call2, ptr %index, align 4
  %23 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_addr, align 4
  %27 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %30
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %6, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %32, i32 0, i32 61
  %33 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i391

if.then.i391:                                     ; preds = %if.end
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %26, align 8
  %37 = ptrtoint ptr %leafhdr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %leafhdr, align 4
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %26, i32 0, i32 1
  %38 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %back.i, align 4
  %back6.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %40 = ptrtoint ptr %back6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %back6.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %26, i32 0, i32 2
  %41 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %magic.i, align 8
  %magic10.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %43 = ptrtoint ptr %magic10.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %magic10.i, align 4
  %count.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %26, i32 0, i32 1
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %count.i, align 8
  %count12.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %46 = ptrtoint ptr %count12.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %count12.i, align 2
  %stale.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %26, i32 0, i32 2
  %47 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %stale.i, align 2
  %stale14.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %49 = ptrtoint ptr %stale14.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %stale14.i, align 4
  %__ents.i = getelementptr inbounds %struct.xfs_dir3_leaf, ptr %26, i32 0, i32 1
  %ents.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %50 = ptrtoint ptr %ents.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %__ents.i, ptr %ents.i, align 4
  %51 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %42, label %cond.false.i [
    i16 15871, label %if.then.i391.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 15857, label %if.then.i391.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge438
  ]

if.then.i391.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge438: ; preds = %if.then.i391
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.then.i391.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i391
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i391
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i:                                        ; preds = %if.end
  %52 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %26, align 4
  %54 = ptrtoint ptr %leafhdr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %leafhdr, align 4
  %back28.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %26, i32 0, i32 1
  %55 = ptrtoint ptr %back28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %back28.i, align 4
  %back29.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %57 = ptrtoint ptr %back29.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %back29.i, align 4
  %magic32.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %26, i32 0, i32 2
  %58 = ptrtoint ptr %magic32.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %magic32.i, align 4
  %magic33.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %60 = ptrtoint ptr %magic33.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %magic33.i, align 4
  %count35.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %26, i32 0, i32 1
  %61 = ptrtoint ptr %count35.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %count35.i, align 4
  %count36.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %63 = ptrtoint ptr %count36.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %count36.i, align 2
  %stale38.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %26, i32 0, i32 2
  %64 = ptrtoint ptr %stale38.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %stale38.i, align 2
  %stale39.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %66 = ptrtoint ptr %stale39.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %stale39.i, align 4
  %__ents40.i = getelementptr inbounds %struct.xfs_dir2_leaf, ptr %26, i32 0, i32 1
  %ents42.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %67 = ptrtoint ptr %ents42.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %__ents40.i, ptr %ents42.i, align 4
  %68 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %59, label %cond.false60.i [
    i16 -11521, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 -11535, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge439
  ]

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge439: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false60.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 61) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

xfs_dir2_leaf_hdr_from_disk.exit:                 ; preds = %cond.false60.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge439, %cond.false.i, %if.then.i391.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.then.i391.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge438
  %ents5 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %69 = ptrtoint ptr %ents5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ents5, align 4
  %71 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %72
  %add.ptr.i392 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %6, align 8
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %75 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %namelen, align 8
  %m_features.i.i393 = getelementptr inbounds %struct.xfs_mount, ptr %74, i32 0, i32 61
  %77 = ptrtoint ptr %m_features.i.i393 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %m_features.i.i393, align 8
  %and.i.i394 = and i64 %78, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i394)
  %tobool.i.not.i395 = icmp eq i64 %and.i.i394, 0
  %spec.select.v.i = select i1 %tobool.i.not.i395, i32 11, i32 12
  %spec.select.i = add i32 %76, -1
  %sub.i = add i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add i32 %or.i, 1
  %79 = ptrtoint ptr %use_block to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %use_block, align 4
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %80 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %80)
  %index.promoted = load i32, ptr %index, align 4
  %81 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %count, align 2
  %conv419 = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %index.promoted, i32 %conv419)
  %cmp420 = icmp slt i32 %index.promoted, %conv419
  br i1 %cmp420, label %land.rhs.lr.ph, label %xfs_dir2_leaf_hdr_from_disk.exit.for.endthread-pre-split_crit_edge

xfs_dir2_leaf_hdr_from_disk.exit.for.endthread-pre-split_crit_edge: ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

land.rhs.lr.ph:                                   ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %70, i32 %call2
  %hashval10 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %lep.0423 = phi ptr [ %arrayidx, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc.land.rhs_crit_edge ]
  %inc417421 = phi i32 [ %index.promoted, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %83 = ptrtoint ptr %lep.0423 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lep.0423, align 4
  %85 = ptrtoint ptr %hashval10 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hashval10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp11 = icmp eq i32 %84, %86
  br i1 %cmp11, label %for.body, label %land.rhs.for.endthread-pre-split_crit_edge

land.rhs.for.endthread-pre-split_crit_edge:       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.body:                                         ; preds = %land.rhs
  %address = getelementptr inbounds %struct.xfs_dir2_leaf_entry, ptr %lep.0423, i32 0, i32 1
  %87 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp13 = icmp eq i32 %88, 0
  br i1 %cmp13, label %for.body.for.inc_crit_edge, label %if.end16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %89 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %args, align 8
  %conv.i.i = zext i32 %88 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 3
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %92 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %93 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %conv1.i.i)
  %cmp20 = icmp ugt i32 %94, %conv1.i.i
  br i1 %cmp20, label %if.end16.cond.end_crit_edge, label %cond.false, !prof !113

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 674) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end16.cond.end_crit_edge
  %arrayidx24 = getelementptr i16, ptr %add.ptr.i392, i32 %conv1.i.i
  %95 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %96)
  %cmp26.not = icmp eq i16 %96, -1
  br i1 %cmp26.not, label %cond.false35, label %cond.end.cond.end36_crit_edge, !prof !119

cond.end.cond.end36_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 675) #8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end.cond.end36_crit_edge
  %97 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx24, align 2
  %conv38 = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %conv38)
  %cmp39.not = icmp sgt i32 %add3.i, %conv38
  br i1 %cmp39.not, label %cond.end36.for.inc_crit_edge, label %if.then41

cond.end36.for.inc_crit_edge:                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then41:                                        ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.le = trunc i64 %shr.i2.i to i32
  %99 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %inc417421, ptr %index, align 4
  %100 = ptrtoint ptr %use_block to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv1.i.i.le, ptr %use_block, align 4
  br label %for.end

for.inc:                                          ; preds = %cond.end36.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nsw i32 %inc417421, 1
  %incdec.ptr = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0423, i32 1
  %101 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %count, align 2
  %conv = zext i16 %102 to i32
  %cmp = icmp slt i32 %inc, %conv
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.endthread-pre-split_crit_edge

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %land.rhs.for.endthread-pre-split_crit_edge, %xfs_dir2_leaf_hdr_from_disk.exit.for.endthread-pre-split_crit_edge
  %inc417.lcssa = phi i32 [ %index.promoted, %xfs_dir2_leaf_hdr_from_disk.exit.for.endthread-pre-split_crit_edge ], [ %inc417421, %land.rhs.for.endthread-pre-split_crit_edge ], [ %inc, %for.inc.for.endthread-pre-split_crit_edge ]
  %103 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %inc417.lcssa, ptr %index, align 4
  %104 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr = load i32, ptr %use_block, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then41
  %105 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %conv1.i.i.le, %if.then41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp43 = icmp eq i32 %105, -1
  br i1 %cmp43, label %for.cond46.preheader, label %for.end.if.end68_crit_edge

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.cond46.preheader:                             ; preds = %for.end
  %106 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp48425.not = icmp eq i32 %107, 0
  br i1 %cmp48425.not, label %for.cond46.preheader.if.end68_crit_edge, label %for.cond46.preheader.for.body50_crit_edge

for.cond46.preheader.for.body50_crit_edge:        ; preds = %for.cond46.preheader
  br label %for.body50

for.cond46.preheader.if.end68_crit_edge:          ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.body50:                                       ; preds = %for.inc65.for.body50_crit_edge, %for.cond46.preheader.for.body50_crit_edge
  %i.0426 = phi i32 [ %inc66, %for.inc65.for.body50_crit_edge ], [ 0, %for.cond46.preheader.for.body50_crit_edge ]
  %arrayidx51 = getelementptr i16, ptr %add.ptr.i392, i32 %i.0426
  %108 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %109)
  %cmp53 = icmp eq i16 %109, -1
  br i1 %cmp53, label %land.lhs.true, label %for.body50.if.else_crit_edge

for.body50.if.else_crit_edge:                     ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %for.body50
  %110 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %use_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %cmp55 = icmp eq i32 %111, -1
  br i1 %cmp55, label %if.then57, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %use_block to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %i.0426, ptr %use_block, align 4
  br label %for.inc65

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body50.if.else_crit_edge
  %conv59 = zext i16 %109 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %conv59)
  %cmp60.not = icmp sgt i32 %add3.i, %conv59
  br i1 %cmp60.not, label %if.else.for.inc65_crit_edge, label %if.end68.thread

if.else.for.inc65_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

if.end68.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %use_block to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %i.0426, ptr %use_block, align 4
  %stale403 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %114 = ptrtoint ptr %stale403 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %stale403, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool69.not404 = icmp eq i16 %115, 0
  %spec.select405 = select i1 %tobool69.not404, i32 8, i32 0
  br label %land.lhs.true79

for.inc65:                                        ; preds = %if.else.for.inc65_crit_edge, %if.then57
  %inc66 = add nuw i32 %i.0426, 1
  %116 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr1.i, align 4
  %cmp48 = icmp ult i32 %inc66, %117
  br i1 %cmp48, label %for.inc65.for.body50_crit_edge, label %for.inc65.if.end68_crit_edge

for.inc65.if.end68_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.inc65.for.body50_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

if.end68:                                         ; preds = %for.inc65.if.end68_crit_edge, %for.cond46.preheader.if.end68_crit_edge, %for.end.if.end68_crit_edge
  %118 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr402 = load i32, ptr %use_block, align 4
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %119 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool69.not = icmp eq i16 %120, 0
  %spec.select = select i1 %tobool69.not, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr402)
  %cmp72 = icmp eq i32 %.pr402, -1
  %add75 = or i32 %spec.select, 2
  br i1 %cmp72, label %if.end68.if.end85_crit_edge, label %if.end68.land.lhs.true79_crit_edge

if.end68.land.lhs.true79_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true79

if.end68.if.end85_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true79:                                  ; preds = %if.end68.land.lhs.true79_crit_edge, %if.end68.thread
  %needbytes.1411 = phi i32 [ %spec.select405, %if.end68.thread ], [ %spec.select, %if.end68.land.lhs.true79_crit_edge ]
  %tobool69.not409 = phi i1 [ %tobool69.not404, %if.end68.thread ], [ %tobool69.not, %if.end68.land.lhs.true79_crit_edge ]
  %121 = phi i16 [ %115, %if.end68.thread ], [ %120, %if.end68.land.lhs.true79_crit_edge ]
  %122 = phi i32 [ %i.0426, %if.end68.thread ], [ %.pr402, %if.end68.land.lhs.true79_crit_edge ]
  %arrayidx80 = getelementptr i16, ptr %add.ptr.i392, i32 %122
  %123 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %124)
  %cmp82 = icmp eq i16 %124, -1
  br i1 %cmp82, label %if.then84, label %land.lhs.true79.if.end85_crit_edge

land.lhs.true79.if.end85_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then84:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %use_block to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %use_block, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %land.lhs.true79.if.end85_crit_edge, %if.end68.if.end85_crit_edge
  %needbytes.1412 = phi i32 [ %needbytes.1411, %if.then84 ], [ %needbytes.1411, %land.lhs.true79.if.end85_crit_edge ], [ %add75, %if.end68.if.end85_crit_edge ]
  %tobool69.not410 = phi i1 [ %tobool69.not409, %if.then84 ], [ %tobool69.not409, %land.lhs.true79.if.end85_crit_edge ], [ %tobool69.not, %if.end68.if.end85_crit_edge ]
  %126 = phi i16 [ %121, %if.then84 ], [ %121, %land.lhs.true79.if.end85_crit_edge ], [ %120, %if.end68.if.end85_crit_edge ]
  %127 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %count, align 2
  %idxprom = zext i16 %128 to i32
  %arrayidx87 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %70, i32 %idxprom
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i392 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx87 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %needbytes.1412)
  %cmp88 = icmp slt i32 %sub.ptr.sub, %needbytes.1412
  br i1 %cmp88, label %land.lhs.true90, label %if.end85.if.end118_crit_edge

if.end85.if.end118_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

land.lhs.true90:                                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %126)
  %cmp93 = icmp ugt i16 %126, 1
  br i1 %cmp93, label %land.lhs.true90.if.end118_crit_edge, label %if.then105

land.lhs.true90.if.end118_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then105:                                       ; preds = %land.lhs.true90
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %129 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %op_flags, align 8
  %and = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool106.not = icmp eq i32 %and, 0
  br i1 %tobool106.not, label %lor.lhs.false, label %if.then105.if.then109_crit_edge

if.then105.if.then109_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

lor.lhs.false:                                    ; preds = %if.then105
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %131 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp107 = icmp eq i32 %132, 0
  br i1 %cmp107, label %lor.lhs.false.if.then109_crit_edge, label %if.end110

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false.if.then109_crit_edge, %if.then105.if.then109_crit_edge
  %133 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %2, ptr noundef %134) #8
  br label %cleanup

if.end110:                                        ; preds = %lor.lhs.false
  %135 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lbp, align 4
  %call111 = call i32 @xfs_dir2_leaf_to_node(ptr noundef %args, ptr noundef %136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end114:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = call i32 @xfs_dir2_node_addname(ptr noundef %args) #8
  br label %cleanup

if.end118:                                        ; preds = %land.lhs.true90.if.end118_crit_edge, %if.end85.if.end118_crit_edge
  %compact.0 = phi i32 [ 1, %land.lhs.true90.if.end118_crit_edge ], [ 0, %if.end85.if.end118_crit_edge ]
  %op_flags119 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %137 = ptrtoint ptr %op_flags119 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %op_flags119, align 8
  %and120 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end125, label %if.then122

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %2, ptr noundef %140) #8
  %141 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %use_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp123 = icmp eq i32 %142, -1
  %cond = select i1 %cmp123, i32 -28, i32 0
  br label %cleanup

if.end125:                                        ; preds = %if.end118
  %total126 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %143 = ptrtoint ptr %total126 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %total126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp127 = icmp eq i32 %144, 0
  br i1 %cmp127, label %land.lhs.true129, label %if.end125.if.end133_crit_edge

if.end125.if.end133_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

land.lhs.true129:                                 ; preds = %if.end125
  %145 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %use_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %cmp130 = icmp eq i32 %146, -1
  br i1 %cmp130, label %if.then132, label %land.lhs.true129.if.end133_crit_edge

land.lhs.true129.if.end133_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then132:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %2, ptr noundef %148) #8
  br label %cleanup

if.end133:                                        ; preds = %land.lhs.true129.if.end133_crit_edge, %if.end125.if.end133_crit_edge
  br i1 %cmp88, label %if.then135, label %if.else136

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_dir3_leaf_compact_x1(ptr noundef nonnull %leafhdr, ptr noundef %70, ptr noundef nonnull %index, ptr noundef nonnull %lowstale, ptr noundef nonnull %highstale, ptr noundef nonnull %lfloglow, ptr noundef nonnull %lfloghigh)
  br label %if.end143

if.else136:                                       ; preds = %if.end133
  br i1 %tobool69.not410, label %if.else136.if.end143_crit_edge, label %if.then139

if.else136.if.end143_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then139:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %lfloglow to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %idxprom, ptr %lfloglow, align 4
  %150 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -1, ptr %lfloghigh, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %if.else136.if.end143_crit_edge, %if.then135
  %151 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %use_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %cmp144 = icmp eq i32 %152, -1
  br i1 %cmp144, label %if.then146, label %if.else173

if.then146:                                       ; preds = %if.end143
  %call147 = call i32 @xfs_dir2_grow_inode(ptr noundef %args, i32 noundef 0, ptr noundef nonnull %use_block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.then149

if.then149:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %2, ptr noundef %154) #8
  br label %cleanup

if.end150:                                        ; preds = %if.then146
  %155 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %use_block, align 4
  %call151 = call i32 @xfs_dir3_data_init(ptr noundef %args, i32 noundef %156, ptr noundef nonnull %dbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.then153

if.then153:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %2, ptr noundef %158) #8
  br label %cleanup

if.end154:                                        ; preds = %if.end150
  %159 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %use_block, align 4
  %161 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %162)
  %cmp156.not = icmp ult i32 %160, %162
  br i1 %cmp156.not, label %if.else165, label %if.then158

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr159 = getelementptr i16, ptr %add.ptr.i392, i32 -1
  %mul = shl i32 %162, 1
  %163 = call ptr @memmove(ptr %incdec.ptr159, ptr %add.ptr.i392, i32 %mul)
  %164 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr1.i, align 4
  %add.i = add i32 %165, 1
  store i32 %add.i, ptr %add.ptr1.i, align 4
  %166 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %lbp, align 4
  call fastcc void @xfs_dir3_leaf_log_tail(ptr noundef %args, ptr noundef %167)
  %168 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %lbp, align 4
  %170 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr1.i, align 4
  %sub = add i32 %171, -1
  call fastcc void @xfs_dir3_leaf_log_bests(ptr noundef %args, ptr noundef %169, i32 noundef 0, i32 noundef %sub)
  br label %if.end166

if.else165:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %lbp, align 4
  call fastcc void @xfs_dir3_leaf_log_bests(ptr noundef %args, ptr noundef %173, i32 noundef %160, i32 noundef %160)
  br label %if.end166

if.end166:                                        ; preds = %if.else165, %if.then158
  %bestsp.0 = phi ptr [ %incdec.ptr159, %if.then158 ], [ %add.ptr.i392, %if.else165 ]
  %174 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dbp, align 4
  %b_addr167 = getelementptr inbounds %struct.xfs_buf, ptr %175, i32 0, i32 16
  %176 = ptrtoint ptr %b_addr167 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %b_addr167, align 4
  %178 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %6, align 8
  %call169 = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %179, ptr noundef %177) #8
  %length171 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call169, i32 0, i32 1
  %180 = ptrtoint ptr %length171 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %length171, align 2
  %182 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %use_block, align 4
  %arrayidx172 = getelementptr i16, ptr %bestsp.0, i32 %183
  %184 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %181, ptr %arrayidx172, align 2
  br label %if.end183

if.else173:                                       ; preds = %if.end143
  %185 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %188 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %186, i32 0, i32 2
  %189 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %190 to i32
  %sub.i396 = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %152, %sub.i396
  %call176 = call i32 @xfs_dir3_data_read(ptr noundef %2, ptr noundef %6, i32 noundef %shl.i, i32 noundef 0, ptr noundef nonnull %dbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %if.then178

if.then178:                                       ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %2, ptr noundef %192) #8
  br label %cleanup

if.end179:                                        ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dbp, align 4
  %b_addr180 = getelementptr inbounds %struct.xfs_buf, ptr %194, i32 0, i32 16
  %195 = ptrtoint ptr %b_addr180 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %b_addr180, align 4
  %197 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %6, align 8
  %call182 = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %198, ptr noundef %196) #8
  br label %if.end183

if.end183:                                        ; preds = %if.end179, %if.end166
  %bestsp.1 = phi ptr [ %bestsp.0, %if.end166 ], [ %add.ptr.i392, %if.end179 ]
  %hdr.0 = phi ptr [ %177, %if.end166 ], [ %196, %if.end179 ]
  %bf.0 = phi ptr [ %call169, %if.end166 ], [ %call182, %if.end179 ]
  %199 = ptrtoint ptr %bf.0 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %bf.0, align 2
  %conv185 = zext i16 %200 to i32
  %add.ptr = getelementptr i8, ptr %hdr.0, i32 %conv185
  %201 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %needlog, align 4
  %202 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %needscan, align 4
  %203 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dbp, align 4
  %call189 = call i32 @xfs_dir2_data_use_free(ptr noundef %args, ptr noundef %204, ptr noundef %add.ptr, i32 noundef %conv185, i32 noundef %add3.i, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %if.then191

if.then191:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %2, ptr noundef %206) #8
  br label %cleanup

if.end192:                                        ; preds = %if.end183
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %207 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %inumber, align 8
  %209 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %add.ptr, align 8
  %210 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %namelen, align 8
  %conv195 = trunc i32 %211 to i8
  %namelen196 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %212 = ptrtoint ptr %namelen196 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv195, ptr %namelen196, align 8
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %name197 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %213 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %name197, align 4
  %conv199 = and i32 %211, 255
  %215 = call ptr @memcpy(ptr %name, ptr %214, i32 %conv199)
  %216 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %6, align 8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %218 = ptrtoint ptr %filetype to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %filetype, align 4
  call void @xfs_dir2_data_put_ftype(ptr noundef %217, ptr noundef %add.ptr, i8 noundef zeroext %219) #8
  %220 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %6, align 8
  %call202 = call ptr @xfs_dir2_data_entry_tag_p(ptr noundef %221, ptr noundef %add.ptr) #8
  %222 = ptrtoint ptr %call202 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %200, ptr %call202, align 2
  %223 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool207.not = icmp eq i32 %224, 0
  br i1 %tobool207.not, label %if.end192.if.end210_crit_edge, label %if.then208

if.end192.if.end210_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.then208:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  %225 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %6, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %226, ptr noundef %hdr.0, ptr noundef nonnull %needlog) #8
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.end192.if.end210_crit_edge
  %227 = ptrtoint ptr %needlog to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %needlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool211.not = icmp eq i32 %228, 0
  br i1 %tobool211.not, label %if.end210.if.end213_crit_edge, label %if.then212

if.end210.if.end213_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

if.then212:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dbp, align 4
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %230) #8
  br label %if.end213

if.end213:                                        ; preds = %if.then212, %if.end210.if.end213_crit_edge
  %231 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dbp, align 4
  call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %232, ptr noundef %add.ptr) #8
  %233 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %use_block, align 4
  %arrayidx214 = getelementptr i16, ptr %bestsp.1, i32 %234
  %235 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %arrayidx214, align 2
  %length217 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %bf.0, i32 0, i32 1
  %237 = ptrtoint ptr %length217 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %length217, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %236, i16 %238)
  %cmp219.not = icmp eq i16 %236, %238
  br i1 %cmp219.not, label %if.end213.if.end228_crit_edge, label %if.then221

if.end213.if.end228_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228

if.then221:                                       ; preds = %if.end213
  %239 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %238, ptr %arrayidx214, align 2
  br i1 %cmp144, label %if.then221.if.end228_crit_edge, label %if.then226

if.then221.if.end228_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228

if.then226:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %lbp, align 4
  %242 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %use_block, align 4
  call fastcc void @xfs_dir3_leaf_log_bests(ptr noundef %args, ptr noundef %241, i32 noundef %243, i32 noundef %243)
  br label %if.end228

if.end228:                                        ; preds = %if.then226, %if.then221.if.end228_crit_edge, %if.end213.if.end228_crit_edge
  %244 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %index, align 4
  %246 = ptrtoint ptr %lowstale to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %lowstale, align 4
  %248 = ptrtoint ptr %highstale to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %highstale, align 4
  %call229 = call ptr @xfs_dir3_leaf_find_entry(ptr noundef nonnull %leafhdr, ptr noundef %70, i32 noundef %245, i32 noundef %compact.0, i32 noundef %247, i32 noundef %249, ptr noundef nonnull %lfloglow, ptr noundef nonnull %lfloghigh)
  %hashval230 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %250 = ptrtoint ptr %hashval230 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %hashval230, align 8
  %252 = ptrtoint ptr %call229 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %call229, align 4
  %253 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %args, align 8
  %255 = ptrtoint ptr %use_block to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %use_block, align 4
  %257 = ptrtoint ptr %call202 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %call202, align 2
  %conv.i.i397 = zext i32 %256 to i64
  %blklog.i.i398 = getelementptr inbounds %struct.xfs_da_geometry, ptr %254, i32 0, i32 3
  %259 = ptrtoint ptr %blklog.i.i398 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %blklog.i.i398, align 1
  %sh_prom.i.i399 = zext i8 %260 to i64
  %shl.i.i400 = shl i64 %conv.i.i397, %sh_prom.i.i399
  %conv2.i.i = zext i16 %258 to i64
  %add.i.i = add i64 %shl.i.i400, %conv2.i.i
  %261 = lshr i64 %add.i.i, 3
  %conv.i2.i = trunc i64 %261 to i32
  %address235 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, ptr %call229, i32 0, i32 1
  %262 = ptrtoint ptr %address235 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %conv.i2.i, ptr %address235, align 4
  %263 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %6, align 8
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %264, ptr noundef %26, ptr noundef nonnull %leafhdr)
  %265 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %lbp, align 4
  call void @xfs_dir3_leaf_log_header(ptr noundef %args, ptr noundef %266)
  %267 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %lbp, align 4
  %269 = ptrtoint ptr %lfloglow to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %lfloglow, align 4
  %271 = ptrtoint ptr %lfloghigh to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %lfloghigh, align 4
  call void @xfs_dir3_leaf_log_ents(ptr noundef %args, ptr noundef nonnull %leafhdr, ptr noundef %268, i32 noundef %270, i32 noundef %272)
  %273 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %lbp, align 4
  call fastcc void @xfs_dir3_leaf_check(ptr noundef %6, ptr noundef %274)
  %275 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dbp, align 4
  call void @xfs_dir3_data_check(ptr noundef %6, ptr noundef %276) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end228, %if.then191, %if.then178, %if.then153, %if.then149, %if.then132, %if.then122, %if.end114, %if.end110.cleanup_crit_edge, %if.then109, %xfs_dir3_leaf_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then122 ], [ -28, %if.then132 ], [ %call147, %if.then149 ], [ %call151, %if.then153 ], [ %call189, %if.then191 ], [ 0, %if.end228 ], [ %call176, %if.then178 ], [ -28, %if.then109 ], [ %call115, %if.end114 ], [ %call.i, %xfs_dir3_leaf_read.exit.cleanup_crit_edge ], [ %call111, %if.end110.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %use_block) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lowstale) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfloghigh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfloglow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %highstale) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leaf_addname(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_addname, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leaf_addname, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %call42 = tail call i32 @__traceiter_xfs_dir2_leaf_addname(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !113

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_addname, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_addname, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_leaf_addname.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leaf_addname.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1969, ptr noundef nonnull @.str.30) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
define dso_local i32 @xfs_dir2_leaf_search_hash(ptr nocapture noundef readonly %args, ptr nocapture noundef readonly %lbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %lbp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %magic32.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %5, i32 0, i32 2
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %magic32.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %magic32.i, align 8
  %count.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count.i, align 8
  %__ents.i = getelementptr inbounds %struct.xfs_dir3_leaf, ptr %5, i32 0, i32 1
  %12 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %9, label %cond.false.i [
    i16 15871, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 15857, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge65
  ]

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge65: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %magic32.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %magic32.i, align 4
  %count35.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %count35.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count35.i, align 4
  %__ents40.i = getelementptr inbounds %struct.xfs_dir2_leaf, ptr %5, i32 0, i32 1
  %17 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %14, label %cond.false60.i [
    i16 -11521, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 -11535, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge66
  ]

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge66: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false60.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 61) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

xfs_dir2_leaf_hdr_from_disk.exit:                 ; preds = %cond.false60.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge66, %cond.false.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge65
  %leafhdr.sroa.1446.0 = phi ptr [ %__ents40.i, %cond.false60.i ], [ %__ents40.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %__ents40.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge66 ], [ %__ents.i, %cond.false.i ], [ %__ents.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %__ents.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge65 ]
  %leafhdr.sroa.9.0 = phi i16 [ %16, %cond.false60.i ], [ %16, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %16, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge66 ], [ %11, %cond.false.i ], [ %11, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge ], [ %11, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge65 ]
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %18 = ptrtoint ptr %hashval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hashval, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %leafhdr.sroa.9.0)
  %cmp.not47 = icmp eq i16 %leafhdr.sroa.9.0, 0
  br i1 %cmp.not47, label %xfs_dir2_leaf_hdr_from_disk.exit.for.end_crit_edge, label %for.body.preheader

xfs_dir2_leaf_hdr_from_disk.exit.for.end_crit_edge: ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  %conv = zext i16 %leafhdr.sroa.9.0 to i32
  %sub = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %low.049 = phi i32 [ %low.1, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %high.048 = phi i32 [ %high.1, %if.end.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %add = add i32 %low.049, %high.048
  %shr = ashr i32 %add, 1
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %leafhdr.sroa.1446.0, i32 %shr
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp3 = icmp eq i32 %21, %19
  br i1 %cmp3, label %for.body.while.cond.preheader_crit_edge, label %if.end

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp5 = icmp ult i32 %21, %19
  %add8 = add nsw i32 %shr, 1
  %sub9 = add nsw i32 %shr, -1
  %high.1 = select i1 %cmp5, i32 %high.048, i32 %sub9
  %low.1 = select i1 %cmp5, i32 %add8, i32 %low.049
  %cmp.not = icmp sgt i32 %low.1, %high.1
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %xfs_dir2_leaf_hdr_from_disk.exit.for.end_crit_edge
  %hash.1 = phi i32 [ 0, %xfs_dir2_leaf_hdr_from_disk.exit.for.end_crit_edge ], [ %21, %if.end.for.end_crit_edge ]
  %mid.1 = phi i32 [ 0, %xfs_dir2_leaf_hdr_from_disk.exit.for.end_crit_edge ], [ %shr, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hash.1, i32 %19)
  %cmp11 = icmp eq i32 %hash.1, %19
  br i1 %cmp11, label %for.end.while.cond.preheader_crit_edge, label %if.else21

for.end.while.cond.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end.while.cond.preheader_crit_edge, %for.body.while.cond.preheader_crit_edge
  %mid.156 = phi i32 [ %mid.1, %for.end.while.cond.preheader_crit_edge ], [ %shr, %for.body.while.cond.preheader_crit_edge ]
  %smin = call i32 @llvm.smin.i32(i32 %mid.156, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %mid.2 = phi i32 [ %sub16, %land.rhs.while.cond_crit_edge ], [ %mid.156, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mid.2)
  %cmp14 = icmp sgt i32 %mid.2, 0
  br i1 %cmp14, label %land.rhs, label %while.cond.if.end26_crit_edge

while.cond.if.end26_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.rhs:                                         ; preds = %while.cond
  %sub16 = add nsw i32 %mid.2, -1
  %arrayidx17 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %leafhdr.sroa.1446.0, i32 %sub16
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  %cmp19 = icmp eq i32 %23, %19
  br i1 %cmp19, label %land.rhs.while.cond_crit_edge, label %land.rhs.if.end26_crit_edge

land.rhs.if.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.else21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %hash.1, i32 %19)
  %cmp22 = icmp ult i32 %hash.1, %19
  %inc = zext i1 %cmp22 to i32
  %spec.select = add nsw i32 %mid.1, %inc
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %land.rhs.if.end26_crit_edge, %while.cond.if.end26_crit_edge
  %mid.3 = phi i32 [ %spec.select, %if.else21 ], [ %mid.2, %land.rhs.if.end26_crit_edge ], [ %smin, %while.cond.if.end26_crit_edge ]
  ret i32 %mid.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_to_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_node_addname(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir3_leaf_compact_x1(ptr nocapture noundef %leafhdr, ptr nocapture noundef %ents, ptr nocapture noundef %indexp, ptr nocapture noundef writeonly %lowstalep, ptr nocapture noundef writeonly %highstalep, ptr nocapture noundef writeonly %lowlogp, ptr nocapture noundef writeonly %highlogp) local_unnamed_addr #0 align 64 {
entry:
  %highstale = alloca i32, align 4
  %lowstale = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %highstale) #8
  %0 = ptrtoint ptr %highstale to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %highstale, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lowstale) #8
  %1 = ptrtoint ptr %lowstale to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lowstale, align 4, !annotation !111
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %2 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp ugt i16 %3, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 986) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %indexp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %indexp, align 4
  call fastcc void @xfs_dir3_leaf_find_stale(ptr noundef %leafhdr, ptr noundef %ents, i32 noundef %5, ptr noundef nonnull %lowstale, ptr noundef nonnull %highstale)
  %6 = ptrtoint ptr %lowstale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lowstale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp3 = icmp sgt i32 %7, -1
  br i1 %cmp3, label %land.lhs.true, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %8 = ptrtoint ptr %highstale to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %highstale, align 4
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count, align 2
  %conv5 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv5)
  %cmp6 = icmp eq i32 %9, %conv5
  br i1 %cmp6, label %land.lhs.true.if.end_crit_edge, label %lor.lhs.false

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sub = sub i32 %5, %7
  %sub8 = sub i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub8)
  %cmp9.not = icmp sgt i32 %sub, %sub8
  br i1 %cmp9.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %cond.end.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %keepstale.0.in = phi ptr [ %highstale, %if.else ], [ %lowstale, %lor.lhs.false.if.end_crit_edge ], [ %lowstale, %land.lhs.true.if.end_crit_edge ]
  %12 = ptrtoint ptr %keepstale.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %keepstale.0 = load i32, ptr %keepstale.0.in, align 4
  %count11 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %13 = ptrtoint ptr %count11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %count11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp13118.not = icmp eq i16 %14, 0
  br i1 %cmp13118.not, label %if.end.cond.false50_crit_edge, label %for.body.preheader

if.end.cond.false50_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

for.body.preheader:                               ; preds = %if.end
  %15 = ptrtoint ptr %lowstale to i32
  call void @__asan_load4_noabort(i32 %15)
  %lowstale.promoted = load i32, ptr %lowstale, align 4
  %16 = ptrtoint ptr %highstale to i32
  call void @__asan_load4_noabort(i32 %16)
  %highstale.promoted = load i32, ptr %highstale, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %to.0126 = phi i32 [ %to.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %newindex.0125 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %from.0121 = phi i32 [ %inc40, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %to.0113120 = phi i32 [ %to.0111, %for.inc.for.body_crit_edge ], [ %highstale.promoted, %for.body.preheader ]
  %to.0116119 = phi i32 [ %to.0114, %for.inc.for.body_crit_edge ], [ %lowstale.promoted, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %from.0121)
  %cmp15 = icmp eq i32 %5, %from.0121
  %spec.select = select i1 %cmp15, i32 %to.0126, i32 %newindex.0125
  call void @__sanitizer_cov_trace_cmp4(i32 %from.0121, i32 %keepstale.0)
  %cmp19.not = icmp eq i32 %from.0121, %keepstale.0
  br i1 %cmp19.not, label %for.body.if.end33_crit_edge, label %land.lhs.true21

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true21:                                  ; preds = %for.body
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %from.0121, i32 1
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22 = icmp eq i32 %18, 0
  br i1 %cmp22, label %if.then24, label %land.lhs.true21.if.end33_crit_edge

land.lhs.true21.if.end33_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_cmp4(i32 %to.0126, i32 %from.0121)
  %cmp25 = icmp eq i32 %to.0126, %from.0121
  br i1 %cmp25, label %if.then27, label %if.then24.for.inc_crit_edge

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %lowlogp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %to.0126, ptr %lowlogp, align 4
  br label %for.inc

if.end33:                                         ; preds = %land.lhs.true21.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %to.0115 = phi i32 [ %to.0116119, %land.lhs.true21.if.end33_crit_edge ], [ %to.0126, %for.body.if.end33_crit_edge ]
  %to.0112 = phi i32 [ %to.0113120, %land.lhs.true21.if.end33_crit_edge ], [ %to.0126, %for.body.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %to.0126, i32 %from.0121)
  %cmp34 = icmp slt i32 %to.0126, %from.0121
  br i1 %cmp34, label %if.then36, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %to.0126
  %arrayidx38 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %ents, i32 %from.0121
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %arrayidx38, align 4
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %arrayidx37, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %inc = add i32 %to.0126, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %if.then27, %if.then24.for.inc_crit_edge
  %to.0114 = phi i32 [ %to.0116119, %if.then27 ], [ %to.0116119, %if.then24.for.inc_crit_edge ], [ %to.0115, %if.end39 ]
  %to.0111 = phi i32 [ %to.0113120, %if.then27 ], [ %to.0113120, %if.then24.for.inc_crit_edge ], [ %to.0112, %if.end39 ]
  %to.1 = phi i32 [ %to.0126, %if.then27 ], [ %to.0126, %if.then24.for.inc_crit_edge ], [ %inc, %if.end39 ]
  %inc40 = add nuw nsw i32 %from.0121, 1
  %23 = ptrtoint ptr %count11 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %count11, align 2
  %conv12 = zext i16 %24 to i32
  %cmp13 = icmp ult i32 %inc40, %conv12
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %25 = ptrtoint ptr %highstale to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %to.0111, ptr %highstale, align 4
  %26 = ptrtoint ptr %lowstale to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %to.0114, ptr %lowstale, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %to.1, i32 %from.0121)
  %cmp41.not = icmp sgt i32 %to.1, %from.0121
  br i1 %cmp41.not, label %for.end.cond.false50_crit_edge, label %for.end.cond.end51_crit_edge, !prof !119

for.end.cond.end51_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end51

for.end.cond.false50_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

cond.false50:                                     ; preds = %for.end.cond.false50_crit_edge, %if.end.cond.false50_crit_edge
  %to.0.lcssa143 = phi i32 [ %to.1, %for.end.cond.false50_crit_edge ], [ 0, %if.end.cond.false50_crit_edge ]
  %newindex.0.lcssa141 = phi i32 [ %spec.select, %for.end.cond.false50_crit_edge ], [ 0, %if.end.cond.false50_crit_edge ]
  %from.0.lcssa139 = phi i32 [ %inc40, %for.end.cond.false50_crit_edge ], [ 0, %if.end.cond.false50_crit_edge ]
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1028) #8
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %for.end.cond.end51_crit_edge
  %to.0.lcssa144 = phi i32 [ %to.1, %for.end.cond.end51_crit_edge ], [ %to.0.lcssa143, %cond.false50 ]
  %newindex.0.lcssa142 = phi i32 [ %spec.select, %for.end.cond.end51_crit_edge ], [ %newindex.0.lcssa141, %cond.false50 ]
  %from.0.lcssa140 = phi i32 [ %inc40, %for.end.cond.end51_crit_edge ], [ %from.0.lcssa139, %cond.false50 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %from.0.lcssa140)
  %cmp52 = icmp eq i32 %5, %from.0.lcssa140
  %spec.select110 = select i1 %cmp52, i32 %to.0.lcssa144, i32 %newindex.0.lcssa142
  %27 = ptrtoint ptr %indexp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select110, ptr %indexp, align 4
  %sub56.neg = sub i32 %to.0.lcssa144, %from.0.lcssa140
  %28 = ptrtoint ptr %count11 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count11, align 2
  %30 = trunc i32 %sub56.neg to i16
  %conv60 = add i16 %29, %30
  store i16 %conv60, ptr %count11, align 2
  %31 = ptrtoint ptr %stale to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %stale, align 4
  %32 = ptrtoint ptr %lowstale to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lowstale, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %spec.select110)
  %cmp62.not = icmp slt i32 %33, %spec.select110
  br i1 %cmp62.not, label %if.else65, label %if.then64

if.then64:                                        ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %lowstale to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %lowstale, align 4
  %.pre = zext i16 %conv60 to i32
  br label %if.end68

if.else65:                                        ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #10
  %conv67 = zext i16 %conv60 to i32
  %35 = ptrtoint ptr %highstale to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv67, ptr %highstale, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then64
  %conv70.pre-phi = phi i32 [ %conv67, %if.else65 ], [ %.pre, %if.then64 ]
  %sub71 = add nsw i32 %conv70.pre-phi, -1
  %36 = ptrtoint ptr %highlogp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub71, ptr %highlogp, align 4
  %37 = ptrtoint ptr %lowstale to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lowstale, align 4
  %39 = ptrtoint ptr %lowstalep to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %lowstalep, align 4
  %40 = ptrtoint ptr %highstale to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %highstale, align 4
  %42 = ptrtoint ptr %highstalep to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %highstalep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lowstale) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %highstale) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_grow_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_data_use_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_put_ftype(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_entry_tag_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_data_log_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir3_leaf_compact(ptr nocapture noundef readonly %args, ptr nocapture noundef %leafhdr, ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %4 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp74.not = icmp eq i16 %7, 0
  br i1 %cmp74.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %to.079 = phi i32 [ 0, %for.body.lr.ph ], [ %to.1, %for.inc.for.body_crit_edge ]
  %loglow.078 = phi i32 [ -1, %for.body.lr.ph ], [ %loglow.3, %for.inc.for.body_crit_edge ]
  %from.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc19, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ents, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %9, i32 %from.075, i32 1
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %from.075, i32 %to.079)
  %cmp7 = icmp sgt i32 %from.075, %to.079
  br i1 %cmp7, label %if.then9, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %loglow.078)
  %cmp10 = icmp eq i32 %loglow.078, -1
  %spec.select = select i1 %cmp10, i32 %to.079, i32 %loglow.078
  %arrayidx15 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %9, i32 %to.079
  %arrayidx17 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %9, i32 %from.075
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %arrayidx17, align 4
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx15, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end6.if.end18_crit_edge
  %loglow.2 = phi i32 [ %spec.select, %if.then9 ], [ %loglow.078, %if.end6.if.end18_crit_edge ]
  %inc = add i32 %to.079, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.for.inc_crit_edge
  %loglow.3 = phi i32 [ %loglow.078, %for.body.for.inc_crit_edge ], [ %loglow.2, %if.end18 ]
  %to.1 = phi i32 [ %to.079, %for.body.for.inc_crit_edge ], [ %inc, %if.end18 ]
  %inc19 = add nuw nsw i32 %from.075, 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count, align 2
  %conv = zext i16 %16 to i32
  %cmp = icmp ult i32 %inc19, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %from.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc19, %for.inc.for.end_crit_edge ]
  %loglow.0.lcssa = phi i32 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %loglow.3, %for.inc.for.end_crit_edge ]
  %to.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %to.1, %for.inc.for.end_crit_edge ]
  %17 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %stale, align 4
  %conv21 = zext i16 %18 to i32
  %sub = sub i32 %from.0.lcssa, %to.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv21)
  %cmp22 = icmp eq i32 %sub, %conv21
  br i1 %cmp22, label %for.end.cond.end_crit_edge, label %cond.false, !prof !113

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 950) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %19 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %stale, align 4
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %count, align 2
  %sub30 = sub i16 %22, %20
  store i16 %sub30, ptr %count, align 2
  store i16 0, ptr %stale, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  tail call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %24, ptr noundef %3, ptr noundef %leafhdr)
  %25 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %magic.i, align 4
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %28, label %cond.false.critedge.i [
    i16 -11535, label %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge
    i16 15857, label %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge83
    i16 -11521, label %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge84
    i16 15871, label %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge85
  ]

cond.end.xfs_dir3_leaf_log_header.exit_crit_edge85: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

cond.end.xfs_dir3_leaf_log_header.exit_crit_edge84: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

cond.end.xfs_dir3_leaf_log_header.exit_crit_edge83: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

cond.end.xfs_dir3_leaf_log_header.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

cond.false.critedge.i:                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1120) #8
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir3_leaf_log_header.exit:                    ; preds = %cond.false.critedge.i, %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge, %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge83, %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge84, %cond.end.xfs_dir3_leaf_log_header.exit_crit_edge85
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %30 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans.i, align 4
  %32 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %args, align 8
  %leaf_hdr_size.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %leaf_hdr_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leaf_hdr_size.i, align 4
  %sub.i = add i32 %35, -1
  tail call void @xfs_trans_log_buf(ptr noundef %31, ptr noundef %bp, i32 noundef 0, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %loglow.0.lcssa)
  %cmp33.not = icmp eq i32 %loglow.0.lcssa, -1
  br i1 %cmp33.not, label %xfs_dir3_leaf_log_header.exit.cleanup_crit_edge, label %if.then35

xfs_dir3_leaf_log_header.exit.cleanup_crit_edge:  ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %xfs_dir3_leaf_log_header.exit
  %sub36 = add i32 %to.0.lcssa, -1
  %36 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_addr, align 4
  %magic.i69 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %magic.i69 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %magic.i69, align 4
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %39, label %cond.false.critedge.i70 [
    i16 -11535, label %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge
    i16 15857, label %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge86
    i16 -11521, label %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge87
    i16 15871, label %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge88
  ]

if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge88: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge87: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge86: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge:  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

cond.false.critedge.i70:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1098) #8
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_ents.exit:                      ; preds = %cond.false.critedge.i70, %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge, %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge86, %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge87, %if.then35.xfs_dir3_leaf_log_ents.exit_crit_edge88
  %ents.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %41 = ptrtoint ptr %ents.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ents.i, align 4
  %arrayidx.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %42, i32 %loglow.0.lcssa
  %arrayidx24.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %42, i32 %sub36
  %43 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trans.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.lhs.cast25.i = ptrtoint ptr %arrayidx24.i to i32
  %sub.ptr.sub27.i = sub i32 7, %sub.ptr.rhs.cast.i
  %sub.i72 = add i32 %sub.ptr.sub27.i, %sub.ptr.lhs.cast25.i
  tail call void @xfs_trans_log_buf(ptr noundef %44, ptr noundef %bp, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i72) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir3_leaf_log_ents.exit, %xfs_dir3_leaf_log_header.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leaf_lookup(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %dbp = alloca ptr, align 4
  %index = alloca i32, align 4
  %lbp = alloca ptr, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #8
  %0 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lbp) #8
  %2 = ptrtoint ptr %lbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %lbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %3 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  tail call fastcc void @trace_xfs_dir2_leaf_lookup(ptr noundef %args)
  %call = call fastcc i32 @xfs_dir2_leaf_lookup_int(ptr noundef %args, ptr noundef nonnull %lbp, ptr noundef nonnull %index, ptr noundef nonnull %dbp, ptr noundef nonnull %leafhdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %6 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp1, align 8
  %8 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lbp, align 4
  %call.i = tail call fastcc ptr @xfs_dir3_leaf1_check(ptr noundef %7, ptr noundef %9) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

if.end.xfs_dir3_leaf_check.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %15, 9
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %11, ptr noundef %13, i32 noundef %shl.i, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull %call.i) #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 132) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %if.end.xfs_dir3_leaf_check.exit_crit_edge
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %16 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ents, align 4
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %20 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_addr, align 4
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args, align 8
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %17, i32 %19, i32 1
  %26 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %address, align 4
  %shl.i.i = shl i32 %27, 3
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 4
  %sub.i.i = add i32 %29, -1
  %conv1.i.i = and i32 %sub.i.i, %shl.i.i
  %add.ptr = getelementptr i8, ptr %23, i32 %conv1.i.i
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr, align 8
  %inumber3 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %32 = ptrtoint ptr %inumber3 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %inumber3, align 8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 8
  %call4 = tail call zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef %34, ptr noundef %add.ptr) #8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %35 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %call4, ptr %filetype, align 4
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %36 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %namelen, align 8
  %conv = zext i8 %37 to i32
  %call5 = tail call i32 @xfs_dir_cilookup_result(ptr noundef %args, ptr noundef %name, i32 noundef %conv) #8
  tail call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %21) #8
  tail call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir3_leaf_check.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %xfs_dir3_leaf_check.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leaf_lookup(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leaf_lookup, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !122
  %call42 = tail call i32 @__traceiter_xfs_dir2_leaf_lookup(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !113

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_lookup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_leaf_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leaf_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1970, ptr noundef nonnull @.str.30) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
define internal fastcc i32 @xfs_dir2_leaf_lookup_int(ptr noundef %args, ptr nocapture noundef writeonly %lbpp, ptr nocapture noundef writeonly %indexp, ptr nocapture noundef writeonly %dbpp, ptr nocapture noundef %leafhdr) unnamed_addr #0 align 64 {
entry:
  %dbp = alloca ptr, align 4
  %lbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #8
  %0 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dbp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lbp) #8
  %1 = ptrtoint ptr %lbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %lbp, align 4, !annotation !111
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
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leafblk, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %5, ptr noundef %3, i32 noundef %11, i32 noundef 0, ptr noundef nonnull %lbp, i32 noundef 0, ptr noundef nonnull @xfs_dir3_leaf1_buf_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %xfs_dir3_leaf_read.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %entry
  %12 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lbp, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %if.then.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %5, ptr noundef nonnull %13, i32 noundef 13) #8
  br label %if.end

xfs_dir3_leaf_read.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %xfs_dir3_leaf_read.exit.if.end_crit_edge, label %xfs_dir3_leaf_read.exit.cleanup_crit_edge

xfs_dir3_leaf_read.exit.cleanup_crit_edge:        ; preds = %xfs_dir3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xfs_dir3_leaf_read.exit.if.end_crit_edge:         ; preds = %xfs_dir3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %xfs_dir3_leaf_read.exit.if.end_crit_edge, %if.then.i, %land.lhs.true2.i.if.end_crit_edge
  %14 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lbp, align 4
  %16 = ptrtoint ptr %lbpp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %lbpp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %17 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_addr, align 4
  %call.i154 = call fastcc ptr @xfs_dir3_leaf1_check(ptr noundef %3, ptr noundef %15) #8
  %tobool.not.i155 = icmp eq ptr %call.i154, null
  br i1 %tobool.not.i155, label %if.end.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

if.end.xfs_dir3_leaf_check.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %21 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 2
  %23 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %24, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %20, ptr noundef %22, i32 noundef %shl.i, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull %call.i154) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 132) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %if.end.xfs_dir3_leaf_check.exit_crit_edge
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %7, ptr noundef %leafhdr, ptr noundef %18)
  %25 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lbp, align 4
  %call2 = call i32 @xfs_dir2_leaf_search_hash(ptr noundef %args, ptr noundef %26)
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %count, align 2
  %conv170 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv170)
  %cmp3171 = icmp slt i32 %call2, %conv170
  br i1 %cmp3171, label %land.rhs.lr.ph, label %xfs_dir3_leaf_check.exit.for.end_crit_edge

xfs_dir3_leaf_check.exit.for.end_crit_edge:       ; preds = %xfs_dir3_leaf_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %xfs_dir3_leaf_check.exit
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %29 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ents, align 4
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %30, i32 %call2
  %hashval5 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %cmpresult = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %cidb.0175 = phi i32 [ -1, %land.rhs.lr.ph ], [ %cidb.1, %for.inc.land.rhs_crit_edge ]
  %lep.0174 = phi ptr [ %arrayidx, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc.land.rhs_crit_edge ]
  %index.0173 = phi i32 [ %call2, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %curdb.0172 = phi i32 [ -1, %land.rhs.lr.ph ], [ %curdb.2, %for.inc.land.rhs_crit_edge ]
  %31 = ptrtoint ptr %lep.0174 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lep.0174, align 4
  %33 = ptrtoint ptr %hashval5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hashval5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp6 = icmp eq i32 %32, %34
  br i1 %cmp6, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %address = getelementptr inbounds %struct.xfs_dir2_leaf_entry, ptr %lep.0174, i32 0, i32 1
  %35 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp8 = icmp eq i32 %36, 0
  br i1 %cmp8, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %37 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %args, align 8
  %conv.i.i = zext i32 %36 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 3
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %40 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %curdb.0172, i32 %conv1.i.i)
  %cmp15.not = icmp eq i32 %curdb.0172, %conv1.i.i
  br i1 %cmp15.not, label %if.end11.if.end27_crit_edge, label %if.then17

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then17:                                        ; preds = %if.end11
  %41 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dbp, align 4
  %tobool18.not = icmp eq ptr %42, null
  br i1 %tobool18.not, label %if.then17.if.end20_crit_edge, label %if.then19

if.then17.if.end20_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef nonnull %42) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17.if.end20_crit_edge
  %43 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %46 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %48 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i156 = shl i32 %conv1.i.i, %sub.i
  %call23 = call i32 @xfs_dir3_data_read(ptr noundef %5, ptr noundef %3, i32 noundef %shl.i156, i32 noundef 0, ptr noundef nonnull %dbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end20.if.end27_crit_edge, label %if.then25

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %50) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end20.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  %curdb.1 = phi i32 [ %curdb.0172, %if.end11.if.end27_crit_edge ], [ %conv1.i.i, %if.end20.if.end27_crit_edge ]
  %51 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dbp, align 4
  %b_addr28 = getelementptr inbounds %struct.xfs_buf, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %b_addr28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_addr28, align 4
  %55 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %args, align 8
  %57 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %address, align 4
  %shl.i.i157 = shl i32 %58, 3
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 4
  %sub.i.i = add i32 %60, -1
  %conv1.i.i158 = and i32 %sub.i.i, %shl.i.i157
  %add.ptr = getelementptr i8, ptr %54, i32 %conv1.i.i158
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %61 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %namelen, align 8
  %conv32 = zext i8 %62 to i32
  %call33 = call i32 @xfs_dir2_compname(ptr noundef %args, ptr noundef %name, i32 noundef %conv32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end27.for.inc_crit_edge, label %land.lhs.true

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end27
  %63 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmpresult, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %64)
  %cmp36.not = icmp eq i32 %call33, %64
  br i1 %cmp36.not, label %land.lhs.true.for.inc_crit_edge, label %if.then38

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true
  %65 = ptrtoint ptr %cmpresult to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call33, ptr %cmpresult, align 4
  %66 = ptrtoint ptr %indexp to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %index.0173, ptr %indexp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp40 = icmp eq i32 %call33, 1
  br i1 %cmp40, label %if.then42, label %if.then38.for.inc_crit_edge

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dbp, align 4
  %69 = ptrtoint ptr %dbpp to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %dbpp, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.then38.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %curdb.2 = phi i32 [ %curdb.0172, %for.body.for.inc_crit_edge ], [ %curdb.1, %land.lhs.true.for.inc_crit_edge ], [ %curdb.1, %if.end27.for.inc_crit_edge ], [ %curdb.1, %if.then38.for.inc_crit_edge ]
  %cidb.1 = phi i32 [ %cidb.0175, %for.body.for.inc_crit_edge ], [ %cidb.0175, %land.lhs.true.for.inc_crit_edge ], [ %cidb.0175, %if.end27.for.inc_crit_edge ], [ %curdb.1, %if.then38.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0174, i32 1
  %inc = add nsw i32 %index.0173, 1
  %70 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %count, align 2
  %conv = zext i16 %71 to i32
  %cmp3 = icmp slt i32 %inc, %conv
  br i1 %cmp3, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %xfs_dir3_leaf_check.exit.for.end_crit_edge
  %curdb.0.lcssa = phi i32 [ -1, %xfs_dir3_leaf_check.exit.for.end_crit_edge ], [ %curdb.2, %for.inc.for.end_crit_edge ], [ %curdb.0172, %land.rhs.for.end_crit_edge ]
  %cidb.0.lcssa = phi i32 [ -1, %xfs_dir3_leaf_check.exit.for.end_crit_edge ], [ %cidb.1, %for.inc.for.end_crit_edge ], [ %cidb.0175, %land.rhs.for.end_crit_edge ]
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %72 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %op_flags, align 8
  %and = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %cond.false, label %for.end.cond.end_crit_edge, !prof !119

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1305) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %cmpresult48 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %74 = ptrtoint ptr %cmpresult48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cmpresult48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp49 = icmp eq i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cidb.0.lcssa)
  %cmp52.not = icmp eq i32 %cidb.0.lcssa, -1
  br i1 %cmp49, label %if.then51, label %if.end73

if.then51:                                        ; preds = %cond.end
  br i1 %cmp52.not, label %cond.false61, label %if.then51.cond.end62_crit_edge, !prof !119

if.then51.cond.end62_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end62

cond.false61:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 1312) #8
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %if.then51.cond.end62_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cidb.0.lcssa, i32 %curdb.0.lcssa)
  %cmp63.not = icmp eq i32 %cidb.0.lcssa, %curdb.0.lcssa
  br i1 %cmp63.not, label %cond.end62.if.end72_crit_edge, label %if.then65

cond.end62.if.end72_crit_edge:                    ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then65:                                        ; preds = %cond.end62
  %76 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dbp, align 4
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %77) #8
  %78 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %args, align 8
  %blklog.i159 = getelementptr inbounds %struct.xfs_da_geometry, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %blklog.i159 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %blklog.i159, align 1
  %conv.i160 = zext i8 %81 to i32
  %fsblog.i161 = getelementptr inbounds %struct.xfs_da_geometry, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %fsblog.i161 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fsblog.i161, align 4
  %conv1.i162 = zext i8 %83 to i32
  %sub.i163 = sub nsw i32 %conv.i160, %conv1.i162
  %shl.i164 = shl i32 %cidb.0.lcssa, %sub.i163
  %call68 = call i32 @xfs_dir3_data_read(ptr noundef %5, ptr noundef %3, i32 noundef %shl.i164, i32 noundef 0, ptr noundef nonnull %dbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then65.if.end72_crit_edge, label %if.then70

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %85) #8
  br label %cleanup

if.end72:                                         ; preds = %if.then65.if.end72_crit_edge, %cond.end62.if.end72_crit_edge
  %86 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dbp, align 4
  %88 = ptrtoint ptr %dbpp to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %dbpp, align 4
  br label %cleanup

if.end73:                                         ; preds = %cond.end
  br i1 %cmp52.not, label %if.end73.cond.end84_crit_edge, label %cond.false83, !prof !113

if.end73.cond.end84_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end84

cond.false83:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 1329) #8
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %if.end73.cond.end84_crit_edge
  %89 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dbp, align 4
  %tobool85.not = icmp eq ptr %90, null
  br i1 %tobool85.not, label %cond.end84.if.end87_crit_edge, label %if.then86

cond.end84.if.end87_crit_edge:                    ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then86:                                        ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef nonnull %90) #8
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %cond.end84.if.end87_crit_edge
  %91 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lbp, align 4
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %92) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end72, %if.then70, %if.then42, %if.then25, %xfs_dir3_leaf_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then25 ], [ 0, %if.then42 ], [ %call68, %if.then70 ], [ 0, %if.end72 ], [ -2, %if.end87 ], [ %call.i, %xfs_dir3_leaf_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_cilookup_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leaf_removename(ptr noundef %args) #0 align 64 {
entry:
  %dbp = alloca ptr, align 4
  %index = alloca i32, align 4
  %lbp = alloca ptr, align 4
  %needlog = alloca i32, align 4
  %needscan = alloca i32, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #8
  %2 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lbp) #8
  %4 = ptrtoint ptr %lbp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %lbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needlog) #8
  %5 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %needlog, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needscan) #8
  %6 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %needscan, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %7 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  tail call fastcc void @trace_xfs_dir2_leaf_removename(ptr noundef %args)
  %call = call fastcc i32 @xfs_dir2_leaf_lookup_int(ptr noundef %args, ptr noundef nonnull %lbp, ptr noundef nonnull %index, ptr noundef nonnull %dbp, ptr noundef nonnull %leafhdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %8 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dp2, align 8
  %10 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %14 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbp, align 4
  %b_addr3 = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %b_addr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr3, align 4
  tail call void @xfs_dir3_data_check(ptr noundef %9, ptr noundef %15) #8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 8
  %call4 = tail call ptr @xfs_dir2_data_bestfree_p(ptr noundef %19, ptr noundef %17) #8
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %20 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ents, align 4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %21, i32 %23, i32 1
  %24 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %address, align 4
  %conv.i.i = zext i32 %25 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 3
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %27 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = ptrtoint ptr %needlog to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %needlog, align 4
  %31 = ptrtoint ptr %needscan to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %needscan, align 4
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call4, i32 0, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length, align 2
  %34 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %34
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %35 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %36
  %add.ptr.i178 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %arrayidx11 = getelementptr i16, ptr %add.ptr.i178, i32 %conv1.i.i
  %37 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %33)
  %cmp.not = icmp eq i16 %38, %33
  br i1 %cmp.not, label %if.end15, label %__here

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !124
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %11, ptr noundef blockaddress(@xfs_dir2_leaf_removename, %__here)) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %sub.i.i = add i32 %29, -1
  %shl.i.i176 = shl i32 %25, 3
  %conv1.i.i177 = and i32 %sub.i.i, %shl.i.i176
  %add.ptr = getelementptr i8, ptr %17, i32 %conv1.i.i177
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %9, align 8
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %41 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %namelen, align 8
  %conv17 = zext i8 %42 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %40, i32 0, i32 61
  %43 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %44, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv17, -1
  %sub.i = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add nsw i32 %or.i, 1
  call void @xfs_dir2_data_make_free(ptr noundef %args, ptr noundef %15, i32 noundef %conv1.i.i177, i32 noundef %add3.i, ptr noundef nonnull %needlog, ptr noundef nonnull %needscan) #8
  %stale = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %45 = ptrtoint ptr %stale to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %stale, align 4
  %inc = add i16 %46, 1
  store i16 %inc, ptr %stale, align 4
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %9, align 8
  %m_features.i.i179 = getelementptr inbounds %struct.xfs_mount, ptr %48, i32 0, i32 61
  %49 = ptrtoint ptr %m_features.i.i179 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %m_features.i.i179, align 8
  %and.i.i180 = and i64 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i180)
  %tobool.i.not.i181 = icmp eq i64 %and.i.i180, 0
  %magic22.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %51 = ptrtoint ptr %magic22.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %magic22.i, align 4
  br i1 %tobool.i.not.i181, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %52, label %cond.false.i [
    i16 15871, label %if.then.i.cond.end.i_crit_edge
    i16 15857, label %if.then.i.cond.end.i_crit_edge208
  ]

if.then.i.cond.end.i_crit_edge208:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 75) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge, %if.then.i.cond.end.i_crit_edge208
  %54 = ptrtoint ptr %leafhdr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %leafhdr, align 4
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %13, align 8
  %back.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %57 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %back.i, align 4
  %back12.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %13, i32 0, i32 1
  %59 = ptrtoint ptr %back12.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %back12.i, align 4
  %magic17.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %13, i32 0, i32 2
  %60 = ptrtoint ptr %magic17.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %52, ptr %magic17.i, align 8
  %count.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %61 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %count.i, align 2
  %count19.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %13, i32 0, i32 1
  %63 = ptrtoint ptr %count19.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %count19.i, align 8
  %stale21.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %13, i32 0, i32 2
  br label %xfs_dir2_leaf_hdr_to_disk.exit

if.else.i:                                        ; preds = %if.end15
  %64 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %52, label %cond.false39.i [
    i16 -11521, label %if.else.i.cond.end40.i_crit_edge
    i16 -11535, label %if.else.i.cond.end40.i_crit_edge209
  ]

if.else.i.cond.end40.i_crit_edge209:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40.i

if.else.i.cond.end40.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40.i

cond.false39.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 84) #8
  br label %cond.end40.i

cond.end40.i:                                     ; preds = %cond.false39.i, %if.else.i.cond.end40.i_crit_edge, %if.else.i.cond.end40.i_crit_edge209
  %65 = ptrtoint ptr %leafhdr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %leafhdr, align 4
  %67 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %13, align 4
  %back45.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %68 = ptrtoint ptr %back45.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %back45.i, align 4
  %back48.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %13, i32 0, i32 1
  %70 = ptrtoint ptr %back48.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %back48.i, align 4
  %magic52.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %13, i32 0, i32 2
  %71 = ptrtoint ptr %magic52.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %52, ptr %magic52.i, align 4
  %count53.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %72 = ptrtoint ptr %count53.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %count53.i, align 2
  %count55.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %13, i32 0, i32 1
  %74 = ptrtoint ptr %count55.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %count55.i, align 4
  %stale58.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %13, i32 0, i32 2
  br label %xfs_dir2_leaf_hdr_to_disk.exit

xfs_dir2_leaf_hdr_to_disk.exit:                   ; preds = %cond.end40.i, %cond.end.i
  %stale21.i.sink = phi ptr [ %stale21.i, %cond.end.i ], [ %stale58.i, %cond.end40.i ]
  %75 = ptrtoint ptr %stale21.i.sink to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %inc, ptr %stale21.i.sink, align 2
  %76 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %magic.i, align 4
  %80 = zext i16 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %79, label %cond.false.critedge.i [
    i16 -11535, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge
    i16 15857, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge210
    i16 -11521, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge211
    i16 15871, label %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge212
  ]

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge212: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge211: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge210: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge: ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_header.exit

cond.false.critedge.i:                            ; preds = %xfs_dir2_leaf_hdr_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1120) #8
  br label %xfs_dir3_leaf_log_header.exit

xfs_dir3_leaf_log_header.exit:                    ; preds = %cond.false.critedge.i, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge210, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge211, %xfs_dir2_leaf_hdr_to_disk.exit.xfs_dir3_leaf_log_header.exit_crit_edge212
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %81 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %trans.i, align 4
  %83 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %args, align 8
  %leaf_hdr_size.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %leaf_hdr_size.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %leaf_hdr_size.i, align 4
  %sub.i182 = add i32 %86, -1
  call void @xfs_trans_log_buf(ptr noundef %82, ptr noundef %11, i32 noundef 0, i32 noundef %sub.i182) #8
  %87 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %address, align 4
  %88 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_addr, align 4
  %magic.i185 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %magic.i185 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %magic.i185, align 4
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %91, label %cond.false.critedge.i186 [
    i16 -11535, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge
    i16 15857, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge213
    i16 -11521, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge214
    i16 15871, label %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge215
  ]

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge215: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge214: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge213: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge: ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_ents.exit

cond.false.critedge.i186:                         ; preds = %xfs_dir3_leaf_log_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1098) #8
  br label %xfs_dir3_leaf_log_ents.exit

xfs_dir3_leaf_log_ents.exit:                      ; preds = %cond.false.critedge.i186, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge213, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge214, %xfs_dir3_leaf_log_header.exit.xfs_dir3_leaf_log_ents.exit_crit_edge215
  %arrayidx.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %21, i32 %23
  %93 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %trans.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %89 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.sub27.i = add i32 %sub.ptr.lhs.cast.i, 7
  %sub.i188 = sub i32 %sub.ptr.sub27.i, %sub.ptr.rhs.cast.i
  call void @xfs_trans_log_buf(ptr noundef %94, ptr noundef %11, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i188) #8
  %95 = ptrtoint ptr %needscan to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %needscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool21.not = icmp eq i32 %96, 0
  br i1 %tobool21.not, label %xfs_dir3_leaf_log_ents.exit.if.end24_crit_edge, label %if.then22

xfs_dir3_leaf_log_ents.exit.if.end24_crit_edge:   ; preds = %xfs_dir3_leaf_log_ents.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %xfs_dir3_leaf_log_ents.exit
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %9, align 8
  call void @xfs_dir2_data_freescan(ptr noundef %98, ptr noundef %17, ptr noundef nonnull %needlog) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %xfs_dir3_leaf_log_ents.exit.if.end24_crit_edge
  %99 = ptrtoint ptr %needlog to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %needlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool25.not = icmp eq i32 %100, 0
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_dir2_data_log_header(ptr noundef %args, ptr noundef %15) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %101 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %33)
  %cmp32.not = icmp eq i16 %102, %33
  br i1 %cmp32.not, label %if.end27.if.end38_crit_edge, label %if.then34

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %if.end27
  %103 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %arrayidx11, align 2
  %104 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %b_addr, align 4
  %magic.i191 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %magic.i191 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %magic.i191, align 4
  %108 = zext i16 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %107, label %cond.false.i192 [
    i16 -11535, label %if.then34.xfs_dir3_leaf_log_bests.exit_crit_edge
    i16 15857, label %if.then34.xfs_dir3_leaf_log_bests.exit_crit_edge216
  ]

if.then34.xfs_dir3_leaf_log_bests.exit_crit_edge216: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_bests.exit

if.then34.xfs_dir3_leaf_log_bests.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_bests.exit

cond.false.i192:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1070) #8
  br label %xfs_dir3_leaf_log_bests.exit

xfs_dir3_leaf_log_bests.exit:                     ; preds = %cond.false.i192, %if.then34.xfs_dir3_leaf_log_bests.exit_crit_edge, %if.then34.xfs_dir3_leaf_log_bests.exit_crit_edge216
  %109 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %args, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add.ptr.i.i = getelementptr i8, ptr %105, i32 %112
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %113 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr1.i.i, align 4
  %idx.neg.i.i = sub i32 0, %114
  %add.ptr.i22.i = getelementptr i16, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %add.ptr.i193 = getelementptr i16, ptr %add.ptr.i22.i, i32 %conv1.i.i
  %115 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %trans.i, align 4
  %sub.ptr.lhs.cast.i195 = ptrtoint ptr %add.ptr.i193 to i32
  %sub.ptr.rhs.cast.i196 = ptrtoint ptr %105 to i32
  %sub.ptr.sub.i197 = sub i32 %sub.ptr.lhs.cast.i195, %sub.ptr.rhs.cast.i196
  %sub.ptr.sub14.i = sub i32 1, %sub.ptr.rhs.cast.i196
  %sub.i198 = add i32 %sub.ptr.sub14.i, %sub.ptr.lhs.cast.i195
  call void @xfs_trans_log_buf(ptr noundef %116, ptr noundef %11, i32 noundef %sub.ptr.sub.i197, i32 noundef %sub.i198) #8
  br label %if.end38

if.end38:                                         ; preds = %xfs_dir3_leaf_log_bests.exit, %if.end27.if.end38_crit_edge
  call void @xfs_dir3_data_check(ptr noundef %9, ptr noundef %15) #8
  %117 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %length, align 2
  %conv41 = zext i16 %118 to i32
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %1, align 4
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 15
  %121 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %data_entry_offset, align 4
  %sub = sub i32 %120, %122
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv41)
  %cmp42 = icmp eq i32 %sub, %conv41
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 7
  %123 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %datablk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv1.i.i)
  %cmp45.not = icmp eq i32 %124, %conv1.i.i
  br i1 %cmp42, label %if.then44, label %if.else84

if.then44:                                        ; preds = %if.end38
  br i1 %cmp45.not, label %cond.false, label %if.then44.cond.end_crit_edge, !prof !119

if.then44.cond.end_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1432) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then44.cond.end_crit_edge
  %call49 = call i32 @xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %conv1.i.i, ptr noundef %15) #8
  %125 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call49, label %cond.end.if.end57_crit_edge [
    i32 0, label %if.end58
    i32 -28, label %land.lhs.true
  ]

cond.end.if.end57_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %126 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp54 = icmp eq i32 %127, 0
  %spec.select = select i1 %cmp54, i32 0, i32 -28
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true, %cond.end.if.end57_crit_edge
  %error.0 = phi i32 [ %call49, %cond.end.if.end57_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call.i = call fastcc ptr @xfs_dir3_leaf1_check(ptr noundef %9, ptr noundef %11) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end57.cleanup_crit_edge, label %if.end.i

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %9, align 8
  %130 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 2
  %132 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %133, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %129, ptr noundef %131, i32 noundef %shl.i, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull %call.i) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 132) #8
  br label %cleanup

if.end58:                                         ; preds = %cond.end
  %134 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %dbp, align 4
  %135 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr1.i, align 4
  %sub59 = add i32 %136, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub59, i32 %conv1.i.i)
  %cmp60 = icmp eq i32 %sub59, %conv1.i.i
  br i1 %cmp60, label %if.end58.for.cond_crit_edge, label %if.else

if.end58.for.cond_crit_edge:                      ; preds = %if.end58
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end58.for.cond_crit_edge
  %i.0.in = phi i32 [ %i.0, %for.body.for.cond_crit_edge ], [ %conv1.i.i, %if.end58.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp64.not = icmp eq i32 %i.0, 0
  br i1 %cmp64.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx66 = getelementptr i16, ptr %add.ptr.i178, i32 %i.0
  %137 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx66, align 2
  %cmp68.not = icmp eq i16 %138, -1
  br i1 %cmp68.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %sub72 = sub i32 %conv1.i.i, %i.0
  %arrayidx73 = getelementptr i16, ptr %add.ptr.i178, i32 %sub72
  %sub76 = sub i32 %136, %sub72
  %mul = shl i32 %sub76, 1
  %139 = call ptr @memmove(ptr %arrayidx73, ptr %add.ptr.i178, i32 %mul)
  %140 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr1.i, align 4
  %add.i = sub i32 %141, %sub72
  store i32 %add.i, ptr %add.ptr1.i, align 4
  call fastcc void @xfs_dir3_leaf_log_tail(ptr noundef %args, ptr noundef %11)
  %142 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr1.i, align 4
  %sub81 = add i32 %143, -1
  call fastcc void @xfs_dir3_leaf_log_bests(ptr noundef %args, ptr noundef %11, i32 noundef 0, i32 noundef %sub81)
  br label %if.end90

if.else:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %arrayidx11, align 2
  br label %if.end90

if.else84:                                        ; preds = %if.end38
  br i1 %cmp45.not, label %if.else84.if.end90_crit_edge, label %if.then88

if.else84.if.end90_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then88:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %dbp, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.else84.if.end90_crit_edge, %if.else, %for.end
  %call.i201 = call fastcc ptr @xfs_dir3_leaf1_check(ptr noundef %9, ptr noundef %11) #8
  %tobool.not.i202 = icmp eq ptr %call.i201, null
  br i1 %tobool.not.i202, label %if.end90.xfs_dir3_leaf_check.exit207_crit_edge, label %if.end.i206

if.end90.xfs_dir3_leaf_check.exit207_crit_edge:   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit207

if.end.i206:                                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %9, align 8
  %148 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %b_addr, align 4
  %b_length.i204 = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 2
  %150 = ptrtoint ptr %b_length.i204 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %b_length.i204, align 8
  %shl.i205 = shl i32 %151, 9
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %147, ptr noundef %149, i32 noundef %shl.i205, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull %call.i201) #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 132) #8
  br label %xfs_dir3_leaf_check.exit207

xfs_dir3_leaf_check.exit207:                      ; preds = %if.end.i206, %if.end90.xfs_dir3_leaf_check.exit207_crit_edge
  %152 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dbp, align 4
  %call91 = call i32 @xfs_dir2_leaf_to_block(ptr noundef %args, ptr noundef %11, ptr noundef %153) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir3_leaf_check.exit207, %if.end.i, %if.end57.cleanup_crit_edge, %__here, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ %call91, %xfs_dir3_leaf_check.exit207 ], [ %call, %entry.cleanup_crit_edge ], [ %error.0, %if.end57.cleanup_crit_edge ], [ %error.0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needscan) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needlog) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leaf_removename(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_removename, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leaf_removename, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
  %call42 = tail call i32 @__traceiter_xfs_dir2_leaf_removename(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !113

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_removename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_removename, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_leaf_removename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leaf_removename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1972, ptr noundef nonnull @.str.30) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_shrink_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_to_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_leaf_replace(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %dbp = alloca ptr, align 4
  %index = alloca i32, align 4
  %lbp = alloca ptr, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #8
  %0 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lbp) #8
  %2 = ptrtoint ptr %lbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %lbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %3 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  tail call fastcc void @trace_xfs_dir2_leaf_replace(ptr noundef %args)
  %call = call fastcc i32 @xfs_dir2_leaf_lookup_int(ptr noundef %args, ptr noundef nonnull %lbp, ptr noundef nonnull %index, ptr noundef nonnull %dbp, ptr noundef nonnull %leafhdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %4 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp1, align 8
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %6 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ents, align 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %10 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %14 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args, align 8
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %7, i32 %9, i32 1
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %shl.i.i = shl i32 %17, 3
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %sub.i.i = add i32 %19, -1
  %conv1.i.i = and i32 %sub.i.i, %shl.i.i
  %add.ptr = getelementptr i8, ptr %13, i32 %conv1.i.i
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %20 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %inumber, align 8
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp.not = icmp eq i64 %21, %23
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !119

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1521) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %24 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %inumber, align 8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %add.ptr, align 8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %29 = ptrtoint ptr %filetype to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %filetype, align 4
  tail call void @xfs_dir2_data_put_ftype(ptr noundef %28, ptr noundef %add.ptr, i8 noundef zeroext %30) #8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %31 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans, align 4
  tail call void @xfs_dir2_data_log_entry(ptr noundef %args, ptr noundef %11, ptr noundef %add.ptr) #8
  %33 = ptrtoint ptr %lbp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lbp, align 4
  %call.i = tail call fastcc ptr @xfs_dir3_leaf1_check(ptr noundef %5, ptr noundef %34) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end.xfs_dir3_leaf_check.exit_crit_edge, label %if.end.i

cond.end.xfs_dir3_leaf_check.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_check.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %34, i32 0, i32 16
  %37 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %40, 9
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_leaf_check, i32 noundef 1, ptr noundef %36, ptr noundef %38, i32 noundef %shl.i, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull %call.i) #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 132) #8
  br label %xfs_dir3_leaf_check.exit

xfs_dir3_leaf_check.exit:                         ; preds = %if.end.i, %cond.end.xfs_dir3_leaf_check.exit_crit_edge
  tail call void @xfs_trans_brelse(ptr noundef %32, ptr noundef %34) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir3_leaf_check.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lbp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #8
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_leaf_replace(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_replace, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_leaf_replace, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %call42 = tail call i32 @__traceiter_xfs_dir2_leaf_replace(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !113

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_replace, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_leaf_replace, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_leaf_replace.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_leaf_replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1971, ptr noundef nonnull @.str.30) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
define dso_local i32 @xfs_dir2_leaf_trim_data(ptr noundef %args, ptr noundef %lbp, i32 noundef %db) local_unnamed_addr #0 align 64 {
entry:
  %dbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #8
  %2 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !111
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %3 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp2, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %8 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %10 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %db, %sub.i
  %call3 = call i32 @xfs_dir3_data_read(ptr noundef %6, ptr noundef %4, i32 noundef %shl.i, i32 noundef 0, ptr noundef nonnull %dbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %lbp, i32 0, i32 16
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %14
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %15 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dbp, align 4
  %b_addr5 = getelementptr inbounds %struct.xfs_buf, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %b_addr5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_addr5, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 8
  %call6 = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %20, ptr noundef %18) #8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %22, label %cond.false [
    i32 1480868915, label %if.end.cond.end_crit_edge
    i32 1480864324, label %if.end.cond.end_crit_edge89
  ]

if.end.cond.end_crit_edge89:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1623) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge, %if.end.cond.end_crit_edge89
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call6, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %length, align 2
  %conv = zext i16 %25 to i32
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_entry_offset, align 4
  %sub = sub i32 %27, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp11 = icmp eq i32 %sub, %conv
  br i1 %cmp11, label %cond.end.cond.end21_crit_edge, label %cond.false20, !prof !113

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1625) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end.cond.end21_crit_edge
  %30 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr1.i, align 4
  %sub22 = add i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %db)
  %cmp23 = icmp eq i32 %sub22, %db
  br i1 %cmp23, label %cond.end21.cond.end33_crit_edge, label %cond.false32, !prof !113

cond.end21.cond.end33_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1626) #8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.end21.cond.end33_crit_edge
  %32 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dbp, align 4
  %call34 = call i32 @xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %db, ptr noundef %33) #8
  %34 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call34, label %cond.end33.cond.end47_crit_edge [
    i32 0, label %if.end48
    i32 -28, label %cond.false46
  ], !prof !129

cond.end33.cond.end47_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1634) #8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end33.cond.end47_crit_edge
  %35 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dbp, align 4
  call void @xfs_trans_brelse(ptr noundef %6, ptr noundef %36) #8
  br label %cleanup

if.end48:                                         ; preds = %cond.end33
  %37 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %38
  %add.ptr.i87 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %add.i = add i32 %38, -1
  store i32 %add.i, ptr %add.ptr1.i, align 4
  %arrayidx51 = getelementptr i16, ptr %add.ptr.i87, i32 1
  %mul = shl i32 %add.i, 1
  %39 = call ptr @memmove(ptr %arrayidx51, ptr %add.ptr.i87, i32 %mul)
  call fastcc void @xfs_dir3_leaf_log_tail(ptr noundef %args, ptr noundef %lbp)
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr1.i, align 4
  %sub55 = add i32 %41, -1
  %42 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %magic.i, align 4
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %45, label %cond.false.i [
    i16 -11535, label %if.end48.xfs_dir3_leaf_log_bests.exit_crit_edge
    i16 15857, label %if.end48.xfs_dir3_leaf_log_bests.exit_crit_edge90
  ]

if.end48.xfs_dir3_leaf_log_bests.exit_crit_edge90: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_bests.exit

if.end48.xfs_dir3_leaf_log_bests.exit_crit_edge:  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_leaf_log_bests.exit

cond.false.i:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1070) #8
  br label %xfs_dir3_leaf_log_bests.exit

xfs_dir3_leaf_log_bests.exit:                     ; preds = %cond.false.i, %if.end48.xfs_dir3_leaf_log_bests.exit_crit_edge, %if.end48.xfs_dir3_leaf_log_bests.exit_crit_edge90
  %47 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %args, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %50
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %51 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr1.i.i, align 4
  %idx.neg.i.i = sub i32 0, %52
  %add.ptr.i22.i = getelementptr i16, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %add.ptr11.i = getelementptr i16, ptr %add.ptr.i22.i, i32 %sub55
  %53 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i22.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.lhs.cast12.i = ptrtoint ptr %add.ptr11.i to i32
  %sub.ptr.sub14.i = sub i32 1, %sub.ptr.rhs.cast.i
  %sub.i88 = add i32 %sub.ptr.sub14.i, %sub.ptr.lhs.cast12.i
  call void @xfs_trans_log_buf(ptr noundef %54, ptr noundef %lbp, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i88) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir3_leaf_log_bests.exit, %cond.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %cond.end47 ], [ 0, %xfs_dir3_leaf_log_bests.exit ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_node_to_leaf(ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %fbp = alloca ptr, align 4
  %fo = alloca i64, align 8
  %rval = alloca i32, align 4
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %freehdr = alloca %struct.xfs_dir3_icfree_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbp) #8
  %0 = ptrtoint ptr %fbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fbp, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fo) #8
  %1 = ptrtoint ptr %fo to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %fo, align 8, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %2 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rval, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #8
  %3 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %freehdr) #8
  %4 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 4
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %7 = call ptr @memset(ptr %freehdr, i32 255, i32 20)
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_dir2_node_to_leaf(ptr noundef %11)
  %mp2 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %mp2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mp2, align 4
  %dp3 = getelementptr inbounds %struct.xfs_da_args, ptr %11, i32 0, i32 10
  %14 = ptrtoint ptr %dp3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp3, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans, align 4
  %call = call i32 @xfs_bmap_last_offset(ptr noundef %15, ptr noundef nonnull %fo, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fsbcount, align 4
  %conv = zext i32 %21 to i64
  %22 = ptrtoint ptr %fo to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fo, align 8
  %sub = sub i64 %23, %conv
  store i64 %sub, ptr %fo, align 8
  %24 = load ptr, ptr %11, align 8
  %freeblk171 = getelementptr inbounds %struct.xfs_da_geometry, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %freeblk171 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %freeblk171, align 4
  %conv7172 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv7172)
  %cmp8173 = icmp ugt i64 %sub, %conv7172
  br i1 %cmp8173, label %if.end5.while.body_crit_edge, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

while.body:                                       ; preds = %if.then15.while.body_crit_edge, %if.end5.while.body_crit_edge
  %storemerge174 = phi i64 [ %sub19, %if.then15.while.body_crit_edge ], [ %sub, %if.end5.while.body_crit_edge ]
  %call10 = call i32 @xfs_dir2_node_trim_free(ptr noundef %11, i64 noundef %storemerge174, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %27 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 8
  %fsbcount17 = getelementptr inbounds %struct.xfs_da_geometry, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %fsbcount17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fsbcount17, align 4
  %conv18 = zext i32 %32 to i64
  %33 = ptrtoint ptr %fo to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fo, align 8
  %sub19 = sub i64 %34, %conv18
  store i64 %sub19, ptr %fo, align 8
  %35 = load ptr, ptr %11, align 8
  %freeblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %freeblk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %freeblk, align 4
  %conv7 = zext i32 %37 to i64
  %cmp8 = icmp ugt i64 %sub19, %conv7
  br i1 %cmp8, label %if.then15.while.body_crit_edge, label %if.then15.while.end_crit_edge

if.then15.while.end_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then15.while.body_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.then15.while.end_crit_edge, %if.end5.while.end_crit_edge
  %call21 = call i32 @xfs_bmap_last_before(ptr noundef %17, ptr noundef %15, ptr noundef nonnull %fo, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %while.end
  %38 = ptrtoint ptr %fo to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %fo, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %13, i32 0, i32 20
  %40 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %41 to i64
  %shl = shl i64 %39, %sh_prom
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %11, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %conv27 = zext i32 %45 to i64
  %add = or i64 %conv27, 34359738368
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %add)
  %cmp28 = icmp ugt i64 %shl, %add
  br i1 %cmp28, label %if.end24.cleanup_crit_edge, label %if.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %blk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %blk, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %13, ptr noundef nonnull %leafhdr, ptr noundef %49)
  %magic = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %50 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %magic, align 4
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %51, label %cond.false [
    i16 -11521, label %if.end31.cond.end_crit_edge
    i16 15871, label %if.end31.cond.end_crit_edge175
  ]

if.end31.cond.end_crit_edge175:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end31.cond.end_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1743) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end31.cond.end_crit_edge, %if.end31.cond.end_crit_edge175
  %53 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %11, align 8
  %freeblk43 = getelementptr inbounds %struct.xfs_da_geometry, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %freeblk43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %freeblk43, align 4
  %call44 = call i32 @xfs_dir2_free_read(ptr noundef %17, ptr noundef %15, i32 noundef %56, ptr noundef nonnull %fbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %cond.end
  %57 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fbp, align 4
  %b_addr48 = getelementptr inbounds %struct.xfs_buf, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %b_addr48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_addr48, align 4
  call void @xfs_dir2_free_hdr_from_disk(ptr noundef %13, ptr noundef nonnull %freehdr, ptr noundef %60) #8
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool49.not = icmp eq i32 %62, 0
  br i1 %tobool49.not, label %if.end47.cond.end60_crit_edge, label %cond.false59, !prof !113

if.end47.cond.end60_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end60

cond.false59:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 1753) #8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %if.end47.cond.end60_crit_edge
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %5, align 4
  %count.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %65 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %count.i, align 2
  %stale.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %67 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %stale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11535, i16 %51)
  %switch.selectcmp.case1.i = icmp eq i16 %51, -11535
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11521, i16 %51)
  %switch.selectcmp.case2.i = icmp eq i16 %51, -11521
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %conv.i = zext i16 %66 to i32
  %conv1.i = zext i16 %68 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %mul.i = shl nsw i32 %sub.i, 3
  %mul8.i = shl i32 %64, 1
  %add.i = select i1 %switch.selectcmp.i, i32 20, i32 68
  %add9.i = add i32 %add.i, %mul8.i
  %add10.i = add i32 %add9.i, %mul.i
  %69 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %11, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %72)
  %cmp64 = icmp ugt i32 %add10.i, %72
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fbp, align 4
  call void @xfs_trans_brelse(ptr noundef %17, ptr noundef %74) #8
  br label %cleanup

if.end67:                                         ; preds = %cond.end60
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool68.not = icmp eq i16 %68, 0
  br i1 %tobool68.not, label %if.end67.if.end70_crit_edge, label %if.then69

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_dir3_leaf_compact(ptr noundef %11, ptr noundef nonnull %leafhdr, ptr noundef %47)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67.if.end70_crit_edge
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %47, i32 0, i32 35
  %75 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @xfs_dir3_leaf1_buf_ops, ptr %b_ops, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %17, ptr noundef %47, i32 noundef 13) #8
  %76 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11521, i16 %77)
  %cmp73 = icmp eq i16 %77, -11521
  %conv75 = select i1 %cmp73, i16 -11535, i16 15857
  %78 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv75, ptr %magic, align 4
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %11, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 %82
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %5, align 4
  %85 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %84
  %add.ptr.i168 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %6, align 4
  %88 = load i32, ptr %5, align 4
  %mul = shl i32 %88, 1
  %89 = call ptr @memcpy(ptr %add.ptr.i168, ptr %87, i32 %mul)
  call void @xfs_dir2_leaf_hdr_to_disk(ptr noundef %13, ptr noundef %49, ptr noundef nonnull %leafhdr)
  call void @xfs_dir3_leaf_log_header(ptr noundef %11, ptr noundef %47)
  %90 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr1.i, align 4
  %sub83 = add i32 %91, -1
  call fastcc void @xfs_dir3_leaf_log_bests(ptr noundef %11, ptr noundef %47, i32 noundef 0, i32 noundef %sub83)
  call fastcc void @xfs_dir3_leaf_log_tail(ptr noundef %11, ptr noundef %47)
  call fastcc void @xfs_dir3_leaf_check(ptr noundef %15, ptr noundef %47)
  %92 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %11, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %blklog.i, align 1
  %sh_prom.i = zext i8 %95 to i64
  %shr.i170 = lshr i64 68719476736, %sh_prom.i
  %conv1.i169 = trunc i64 %shr.i170 to i32
  %96 = ptrtoint ptr %fbp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fbp, align 4
  %call86 = call i32 @xfs_dir2_shrink_inode(ptr noundef %11, i32 noundef %conv1.i169, ptr noundef %97) #8
  %98 = zext i32 %call86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call86, label %if.end70.cleanup_crit_edge [
    i32 0, label %if.end100
    i32 -28, label %cond.false98
  ], !prof !129

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false98:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1806) #8
  br label %cleanup

if.end100:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %fbp to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %fbp, align 4
  %call101 = call i32 @xfs_dir2_leaf_to_block(ptr noundef %11, ptr noundef %47, ptr noundef null) #8
  %100 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %blk, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %cond.false98, %if.end70.cleanup_crit_edge, %if.then66, %cond.end.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then66 ], [ %call101, %if.end100 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call21, %while.end.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %call44, %cond.end.cleanup_crit_edge ], [ %call86, %if.end70.cleanup_crit_edge ], [ -28, %cond.false98 ], [ 0, %if.end13.cleanup_crit_edge ], [ %call10, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fo) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_node_to_leaf(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_to_leaf, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_node_to_leaf, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !130
  %call42 = tail call i32 @__traceiter_xfs_dir2_node_to_leaf(ptr noundef null, ptr noundef %args) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !113

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_to_leaf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_node_to_leaf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_node_to_leaf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dir2_node_to_leaf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1979, ptr noundef nonnull @.str.30) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
declare dso_local i32 @xfs_bmap_last_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_node_trim_free(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_last_before(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_free_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_free_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_da3_blkinfo_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_block_to_leaf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir3_leaf1_check(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %bp) #0 align 64 {
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
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 61
  %5 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %9 = ptrtoint ptr %leafhdr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %leafhdr, align 4
  %back.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %back.i, align 4
  %back6.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %12 = ptrtoint ptr %back6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %back6.i, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %magic.i, align 8
  %magic10.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %15 = ptrtoint ptr %magic10.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %magic10.i, align 4
  %count.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count.i, align 8
  %count12.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %18 = ptrtoint ptr %count12.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %count12.i, align 2
  %stale.i = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %stale.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %stale.i, align 2
  %stale14.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %21 = ptrtoint ptr %stale14.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %stale14.i, align 4
  %__ents.i = getelementptr inbounds %struct.xfs_dir3_leaf, ptr %1, i32 0, i32 1
  %ents.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %22 = ptrtoint ptr %ents.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %__ents.i, ptr %ents.i, align 4
  %23 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %14, label %cond.false.i [
    i16 15871, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 15857, label %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge23
  ]

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge23: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i:                                        ; preds = %entry
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %26 = ptrtoint ptr %leafhdr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %leafhdr, align 4
  %back28.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %back28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %back28.i, align 4
  %back29.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 1
  %29 = ptrtoint ptr %back29.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %back29.i, align 4
  %magic32.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %magic32.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %magic32.i, align 4
  %magic33.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %32 = ptrtoint ptr %magic33.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %magic33.i, align 4
  %count35.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %count35.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count35.i, align 4
  %count36.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %35 = ptrtoint ptr %count36.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %count36.i, align 2
  %stale38.i = getelementptr inbounds %struct.xfs_dir2_leaf_hdr, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %stale38.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %stale38.i, align 2
  %stale39.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %38 = ptrtoint ptr %stale39.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %stale39.i, align 4
  %__ents40.i = getelementptr inbounds %struct.xfs_dir2_leaf, ptr %1, i32 0, i32 1
  %ents42.i = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %39 = ptrtoint ptr %ents42.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %__ents40.i, ptr %ents42.i, align 4
  %40 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %31, label %cond.false60.i [
    i16 -11521, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge
    i16 -11535, label %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge24
  ]

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge24: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir2_leaf_hdr_from_disk.exit

cond.false60.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 61) #8
  br label %xfs_dir2_leaf_hdr_from_disk.exit

xfs_dir2_leaf_hdr_from_disk.exit:                 ; preds = %cond.false60.i, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.else.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge24, %cond.false.i, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge, %if.then.i.xfs_dir2_leaf_hdr_from_disk.exit_crit_edge23
  %magic = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 2
  %41 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %magic, align 4
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %42, label %__here11 [
    i16 15857, label %if.then
    i16 -11535, label %xfs_dir2_leaf_hdr_from_disk.exit.if.end14_crit_edge
  ]

xfs_dir2_leaf_hdr_from_disk.exit.if.end14_crit_edge: ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  %44 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_addr, align 4
  %blkno = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %blkno, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %48 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_maps.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %51)
  %cmp3.not = icmp eq i64 %47, %51
  br i1 %cmp3.not, label %if.then.if.end14_crit_edge, label %__here

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !132
  br label %cleanup17

__here11:                                         ; preds = %xfs_dir2_leaf_hdr_from_disk.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !133
  br label %cleanup17

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %xfs_dir2_leaf_hdr_from_disk.exit.if.end14_crit_edge
  %52 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dp, align 8
  %call16 = call ptr @xfs_dir3_leaf_check_int(ptr noundef %53, ptr noundef nonnull %leafhdr, ptr noundef %1, i1 noundef zeroext false)
  br label %cleanup17

cleanup17:                                        ; preds = %if.end14, %__here11, %__here
  %retval.1 = phi ptr [ %call16, %if.end14 ], [ blockaddress(@xfs_dir3_leaf1_check, %__here11), %__here11 ], [ blockaddress(@xfs_dir3_leaf1_check, %__here), %__here ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #8
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leaf_addname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leaf_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_compname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leaf_removename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_leaf_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_node_to_leaf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !71, !73, !75, !76, !78, !80, !81, !83, !85, !87, !89, !90, !92, !93, !95}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 50, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 60, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 74, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 83, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 247, i32 10}
!11 = !{ptr @xfs_dir3_leaf1_buf_ops, !12, !"xfs_dir3_leaf1_buf_ops", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 246, i32 26}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 256, i32 10}
!15 = !{ptr @xfs_dir3_leafn_buf_ops, !16, !"xfs_dir3_leafn_buf_ops", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 255, i32 26}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 357, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 358, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 412, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 566, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 567, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 588, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 589, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 674, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 675, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 950, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 986, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1028, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1095, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1432, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1521, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1622, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1624, i32 2}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1626, i32 2}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1634, i32 3}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1742, i32 2}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1753, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 309, i32 2}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_trace.h", i32 1968, i32 1}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!65 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__func__.xfs_dir3_leaf_check, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 129, i32 23}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 132, i32 2}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_trace.h", i32 1969, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1069, i32 2}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_trace.h", i32 1970, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1305, i32 2}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1312, i32 3}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/xfs/libxfs/xfs_dir2_leaf.c", i32 1329, i32 2}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_trace.h", i32 1972, i32 1}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_trace.h", i32 1971, i32 1}
!92 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../fs/xfs/xfs_trace.h", i32 1979, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2166355366}
!107 = !{i64 2166355471}
!108 = !{i64 2166355706}
!109 = !{i64 2166355888}
!110 = !{i64 2166356174}
!111 = !{!"auto-init"}
!112 = !{!"branch_weights", i32 4000000, i32 4001}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2148294230, i64 2148294235, i64 2148294248, i64 2148294292, i64 2148294326, i64 2148294347}
!115 = !{i64 2160891586}
!116 = !{i64 2160891801}
!117 = !{i64 2149996323}
!118 = !{i64 2149997359}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 2160908363}
!121 = !{i64 2160908576}
!122 = !{i64 2160925047}
!123 = !{i64 2160925258}
!124 = !{i64 2166378588}
!125 = !{i64 2160962617}
!126 = !{i64 2160962836}
!127 = !{i64 2160945777}
!128 = !{i64 2160945990}
!129 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!130 = !{i64 2161088241}
!131 = !{i64 2161088454}
!132 = !{i64 2166354785}
!133 = !{i64 2166354883}
