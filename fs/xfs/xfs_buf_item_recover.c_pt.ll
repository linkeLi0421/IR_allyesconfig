; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_buf_item_recover.c_pt.bc'
source_filename = "../fs/xfs/xfs_buf_item_recover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xlog_recover_item_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xlog = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i32, i32, [88 x i8], %struct.wait_queue_head, i32, ptr, %struct.spinlock, i32, i32, i32, i32, [8 x i8], %struct.atomic64_t, [120 x i8], %struct.atomic64_t, [120 x i8], %struct.xlog_grant_head, %struct.xlog_grant_head, %struct.xfs_kobj, [8 x ptr], i64, i32, %struct.rw_semaphore, [52 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.xlog_grant_head = type { %struct.spinlock, %struct.list_head, %struct.atomic64_t, [64 x i8] }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xlog_recover_item = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.xfs_buf_log_format = type { i16, i16, i16, i16, i64, i32, [17 x i32] }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xfs_buf_cancel = type { i64, i32, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.xfs_agf = type { i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, %struct.uuid_t, i32, i32, i32, i32, [14 x i64], i64, i32, i32 }
%struct.xfs_agfl = type <{ i32, i32, %struct.uuid_t, i64, i32 }>
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
%struct.xfs_dsymlink_hdr = type { i32, i32, i32, i32, %struct.uuid_t, i64, i64, i64 }
%struct.xfs_dir3_blk_hdr = type { i32, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_dsb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }

@xlog_buf_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4668, ptr @xlog_recover_buf_reorder, ptr @xlog_recover_buf_ra_pass2, ptr @xlog_recover_buf_commit_pass1, ptr @xlog_recover_buf_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad buffer log item size (%d)\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_buf_not_cancel = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_log_recover_buf_not_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_buf_cancel_add = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_cancel_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_recover_buf_cancel_ref_inc = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_cancel_ref_inc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bp->b_mount == mp\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/xfs_buf_item_recover.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_buf_recover = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_recover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_recover_buf_skip = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_skip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_bnobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_cntbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_inobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_finobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_bmbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_rmapbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_refcountbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad btree block magic!\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad AGF block magic!\00", [43 x i8] zeroinitializer }, align 32
@xfs_agf_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bad AGFL block magic!\00", [42 x i8] zeroinitializer }, align 32
@xfs_agfl_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad AGI block magic!\00", [43 x i8] zeroinitializer }, align 32
@xfs_agi_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad DQUOT block magic!\00", [41 x i8] zeroinitializer }, align 32
@xfs_dquot_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad INODE block magic!\00", [41 x i8] zeroinitializer }, align 32
@xfs_inode_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad symlink block magic!\00", [39 x i8] zeroinitializer }, align 32
@xfs_symlink_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad dir block magic!\00", [43 x i8] zeroinitializer }, align 32
@xfs_dir3_block_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad dir data magic!\00", [44 x i8] zeroinitializer }, align 32
@xfs_dir3_data_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad dir3 free magic!\00", [43 x i8] zeroinitializer }, align 32
@xfs_dir3_free_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad dir leaf1 magic!\00", [43 x i8] zeroinitializer }, align 32
@xfs_dir3_leaf1_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad dir leafn magic!\00", [43 x i8] zeroinitializer }, align 32
@xfs_dir3_leafn_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad da node magic!\00", [45 x i8] zeroinitializer }, align 32
@xfs_da3_node_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad attr leaf magic!\00", [43 x i8] zeroinitializer }, align 32
@xfs_attr3_leaf_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad attr remote magic!\00", [41 x i8] zeroinitializer }, align 32
@xfs_attr3_rmt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad SB block magic!\00", [44 x i8] zeroinitializer }, align 32
@xfs_sb_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_rtbuf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown buffer type %d!\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nbits > 0\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"item->ri_buf[item_index].i_addr != NULL\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(item->ri_buf[item_index].i_len % XFS_BLF_CHUNK) == 0\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(reg_buf_offset + reg_buf_bytes) <= BBTOB(bp->b_length)\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"*logged_nextp == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"Bad inode buffer log record (ptr = %px, bp = %px). Trying to replay bad (0) inode di_next_unlinked field.\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_buf_inode_buf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_inode_buf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_recover_buf_dquot_buf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_dquot_buf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"item->ri_buf[i].i_addr != NULL\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"item->ri_buf[i].i_len % XFS_BLF_CHUNK == 0\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"BBTOB(bp->b_length) >= ((uint)bit << XFS_BLF_SHIFT) + (nbits << XFS_BLF_SHIFT)\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XFS: NULL dquot in %s.\00", [41 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_do_reg_buffer = private unnamed_addr constant [27 x i8] c"xlog_recover_do_reg_buffer\00", align 1
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"XFS: dquot too small (%d) in %s.\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"dquot corrupt at %pS trying to replay into block 0x%llx\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i == item->ri_total\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_recover_buf_reg_buf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_reg_buf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_recover_buf_cancel = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_recover_buf_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 1094857538, i64 1094857539, i64 1094865986, i64 1094865987, i64 1112359219, i64 1112359248, i64 1179206195, i64 1179206228, i64 1229013555, i64 1229013588, i64 1379092035, i64 1380794931, i64 1480672844, i64 1480673094, i64 1480673097, i64 1480675917, i64 1480868403, i64 1480868915, i64 1480869427, i64 1481003842, i64 1481854029]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 16, i64 15342, i64 15857, i64 15871, i64 16062]
@__sancov_gen_cov_switch_values.38 = internal global [22 x i64] [i64 20, i64 5, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.39 = internal global [14 x i64] [i64 12, i64 32, i64 1094857538, i64 1094857539, i64 1094865986, i64 1094865987, i64 1112359219, i64 1112359248, i64 1179206195, i64 1179206228, i64 1229013555, i64 1229013588, i64 1379092035, i64 1380794931]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1480864322, i64 1480868403]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1480864324, i64 1480868915]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1480864326, i64 1480869427]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 15871, i64 54015]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 16062, i64 65214]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 15342, i64 64494]
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"xlog_buf_item_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 989, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 179, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 2327, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 976, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 117, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 258, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 264, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 271, i32 14 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 278, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 288, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 300, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 307, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 315, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 323, i32 14 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 331, i32 14 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 339, i32 14 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 347, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 355, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 363, i32 14 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 370, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 377, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 390, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 629, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 643, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 644, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 645, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 654, i32 7 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 656, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 461, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 462, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 463, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 487, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 492, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 499, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [33 x i8] c"../fs/xfs/xfs_buf_item_recover.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 515, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @xlog_buf_item_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_buf_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xlog_is_buffer_cancelled(ptr nocapture noundef readonly %log, i64 noundef %blkno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %l_buf_cancel_table.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 8
  %0 = ptrtoint ptr %l_buf_cancel_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_buf_cancel_table.i, align 128
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.xlog_find_buffer_cancelled.exit_crit_edge, label %if.end.i

entry.xlog_find_buffer_cancelled.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_find_buffer_cancelled.exit

if.end.i:                                         ; preds = %entry
  %2 = trunc i64 %blkno to i32
  %idx.ext.i = and i32 %2, 63
  %add.ptr.i = getelementptr %struct.list_head, ptr %1, i32 %idx.ext.i
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn20.i = load ptr, ptr %add.ptr.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn20.i, %add.ptr.i
  br i1 %cmp.not22.i, label %if.end.i.xlog_find_buffer_cancelled.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.xlog_find_buffer_cancelled.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_find_buffer_cancelled.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.end.i.for.body.i_crit_edge ]
  %bcp.024.i = getelementptr i8, ptr %.pn23.i, i32 -16
  %4 = ptrtoint ptr %bcp.024.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bcp.024.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %blkno)
  %cmp3.i = icmp eq i64 %5, %blkno
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bc_len.i = getelementptr i8, ptr %.pn23.i, i32 -8
  %6 = ptrtoint ptr %bc_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bc_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %len)
  %cmp4.i = icmp eq i32 %7, %len
  br i1 %cmp4.i, label %xlog_find_buffer_cancelled.exit.loopexit.split.loop.exit1, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %add.ptr.i
  br i1 %cmp.not.i, label %for.inc.i.xlog_find_buffer_cancelled.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.xlog_find_buffer_cancelled.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_find_buffer_cancelled.exit

xlog_find_buffer_cancelled.exit.loopexit.split.loop.exit1: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %bcp.024.i.le = getelementptr i8, ptr %.pn23.i, i32 -16
  %phi.cmp = icmp ne ptr %bcp.024.i.le, null
  br label %xlog_find_buffer_cancelled.exit

xlog_find_buffer_cancelled.exit:                  ; preds = %xlog_find_buffer_cancelled.exit.loopexit.split.loop.exit1, %for.inc.i.xlog_find_buffer_cancelled.exit_crit_edge, %if.end.i.xlog_find_buffer_cancelled.exit_crit_edge, %entry.xlog_find_buffer_cancelled.exit_crit_edge
  %retval.0.i = phi i1 [ false, %entry.xlog_find_buffer_cancelled.exit_crit_edge ], [ false, %if.end.i.xlog_find_buffer_cancelled.exit_crit_edge ], [ %phi.cmp, %xlog_find_buffer_cancelled.exit.loopexit.split.loop.exit1 ], [ false, %for.inc.i.xlog_find_buffer_cancelled.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlog_recover_buf_reorder(ptr nocapture noundef readonly %item) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blf_flags, align 4
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = shl nuw nsw i32 %conv, 1
  %6 = and i32 %and3, 2
  %retval.0 = select i1 %tobool.not, i32 %6, i32 3
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlog_recover_buf_ra_pass2(ptr noundef %log, ptr nocapture noundef readonly %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %blf_blkno = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %blf_blkno to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %blf_blkno, align 8
  %blf_len = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %blf_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blf_len, align 2
  %conv = zext i16 %7 to i32
  tail call void @xlog_buf_readahead(ptr noundef %log, i64 noundef %5, i32 noundef %conv, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_buf_commit_pass1(ptr noundef %log, ptr nocapture noundef readonly %item) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 @xfs_buf_log_check_iovec(ptr noundef %1) #10
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  %6 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ri_buf, align 4
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_len, align 4
  tail call void (ptr, ptr, ...) @xfs_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %blf_flags, align 4
  %12 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xfs_log_recover_buf_not_cancel(ptr noundef %log, ptr noundef %3)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %blf_blkno = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %blf_blkno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %blf_blkno, align 8
  %blf_len = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %blf_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %blf_len, align 2
  %conv6 = zext i16 %16 to i32
  %l_buf_cancel_table.i.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 8
  %17 = ptrtoint ptr %l_buf_cancel_table.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %l_buf_cancel_table.i.i, align 128
  %tobool.not.i.i = icmp eq ptr %18, null
  %.pre.i = trunc i64 %14 to i32
  %.pre20.i = and i32 %.pre.i, 63
  br i1 %tobool.not.i.i, label %if.else.if.end.i_crit_edge, label %if.end.i.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.else
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %18, i32 %.pre20.i
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn20.i.i = load ptr, ptr %add.ptr.i.i, align 4
  %cmp.not22.i.i = icmp eq ptr %.pn20.i.i, %add.ptr.i.i
  br i1 %cmp.not22.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %.pn23.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %bcp.024.i.i = getelementptr i8, ptr %.pn23.i.i, i32 -16
  %20 = ptrtoint ptr %bcp.024.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bcp.024.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %14)
  %cmp3.i.i = icmp eq i64 %21, %14
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %bc_len.i.i = getelementptr i8, ptr %.pn23.i.i, i32 -8
  %22 = ptrtoint ptr %bc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bc_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv6)
  %cmp4.i.i = icmp eq i32 %23, %conv6
  br i1 %cmp4.i.i, label %xlog_find_buffer_cancelled.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %24 = ptrtoint ptr %.pn23.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i.i = load ptr, ptr %.pn23.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

xlog_find_buffer_cancelled.exit.i:                ; preds = %land.lhs.true.i.i
  %bcp.024.i.i.le = getelementptr i8, ptr %.pn23.i.i, i32 -16
  %tobool.not.i = icmp eq ptr %bcp.024.i.i.le, null
  br i1 %tobool.not.i, label %xlog_find_buffer_cancelled.exit.i.if.end.i_crit_edge, label %if.else9

xlog_find_buffer_cancelled.exit.i.if.end.i_crit_edge: ; preds = %xlog_find_buffer_cancelled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %xlog_find_buffer_cancelled.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %call1.i = tail call ptr @kmem_alloc(i32 noundef 24, i32 noundef 0) #10
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %14, ptr %call1.i, align 8
  %bc_len.i = getelementptr inbounds %struct.xfs_buf_cancel, ptr %call1.i, i32 0, i32 1
  %26 = ptrtoint ptr %bc_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv6, ptr %bc_len.i, align 8
  %bc_refcount2.i = getelementptr inbounds %struct.xfs_buf_cancel, ptr %call1.i, i32 0, i32 2
  %27 = ptrtoint ptr %bc_refcount2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %bc_refcount2.i, align 4
  %bc_list.i = getelementptr inbounds %struct.xfs_buf_cancel, ptr %call1.i, i32 0, i32 3
  %28 = ptrtoint ptr %l_buf_cancel_table.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %l_buf_cancel_table.i.i, align 128
  %add.ptr.i = getelementptr %struct.list_head, ptr %29, i32 %.pre20.i
  %prev.i.i = getelementptr %struct.list_head, ptr %29, i32 %.pre20.i, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bc_list.i, ptr noundef %31, ptr noundef %add.ptr.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.then8_crit_edge

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bc_list.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %bc_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %bc_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.xfs_buf_cancel, ptr %call1.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %bc_list.i, ptr %31, align 4
  br label %if.then8

if.then8:                                         ; preds = %if.end.i.i.i, %if.end.i.if.then8_crit_edge
  tail call fastcc void @trace_xfs_log_recover_buf_cancel_add(ptr noundef %log, ptr noundef %3)
  br label %cleanup

if.else9:                                         ; preds = %xlog_find_buffer_cancelled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bc_refcount.i = getelementptr i8, ptr %.pn23.i.i, i32 -4
  %36 = ptrtoint ptr %bc_refcount.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bc_refcount.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %bc_refcount.i, align 4
  tail call fastcc void @trace_xfs_log_recover_buf_cancel_ref_inc(ptr noundef %log, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.else9, %if.then8, %if.then5, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.then8 ], [ 0, %if.else9 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_buf_commit_pass2(ptr noundef %log, ptr noundef %buffer_list, ptr noundef %item, i64 noundef %current_lsn) #2 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #10
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !113
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %blf_flags, align 4
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %blf_blkno3 = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %blf_blkno3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %blf_blkno3, align 8
  %blf_len4 = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %blf_len4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blf_len4, align 2
  %conv5 = zext i16 %13 to i32
  %l_buf_cancel_table.i.i118 = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 8
  %14 = ptrtoint ptr %l_buf_cancel_table.i.i118 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l_buf_cancel_table.i.i118, align 128
  %tobool.not.i.i119 = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i119, label %if.then.xlog_put_buffer_cancelled.exit_crit_edge, label %if.end.i.i

if.then.xlog_put_buffer_cancelled.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_put_buffer_cancelled.exit

if.end.i.i:                                       ; preds = %if.then
  %16 = trunc i64 %11 to i32
  %idx.ext.i.i = and i32 %16, 63
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %15, i32 %idx.ext.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn20.i.i = load ptr, ptr %add.ptr.i.i, align 4
  %cmp.not22.i.i = icmp eq ptr %.pn20.i.i, %add.ptr.i.i
  br i1 %cmp.not22.i.i, label %if.end.i.i.xlog_put_buffer_cancelled.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.xlog_put_buffer_cancelled.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_put_buffer_cancelled.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %.pn23.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %bcp.024.i.i = getelementptr i8, ptr %.pn23.i.i, i32 -16
  %18 = ptrtoint ptr %bcp.024.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bcp.024.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %11)
  %cmp3.i.i = icmp eq i64 %19, %11
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %bc_len.i.i = getelementptr i8, ptr %.pn23.i.i, i32 -8
  %20 = ptrtoint ptr %bc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bc_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv5)
  %cmp4.i.i = icmp eq i32 %21, %conv5
  br i1 %cmp4.i.i, label %xlog_find_buffer_cancelled.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %22 = ptrtoint ptr %.pn23.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn23.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.xlog_put_buffer_cancelled.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.xlog_put_buffer_cancelled.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_put_buffer_cancelled.exit

xlog_find_buffer_cancelled.exit.i:                ; preds = %land.lhs.true.i.i
  %bcp.024.i.i.le = getelementptr i8, ptr %.pn23.i.i, i32 -16
  %tobool.not.i = icmp eq ptr %bcp.024.i.i.le, null
  br i1 %tobool.not.i, label %xlog_find_buffer_cancelled.exit.i.xlog_put_buffer_cancelled.exit_crit_edge, label %if.end.i

xlog_find_buffer_cancelled.exit.i.xlog_put_buffer_cancelled.exit_crit_edge: ; preds = %xlog_find_buffer_cancelled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_put_buffer_cancelled.exit

if.end.i:                                         ; preds = %xlog_find_buffer_cancelled.exit.i
  %bc_refcount.i = getelementptr i8, ptr %.pn23.i.i, i32 -4
  %23 = ptrtoint ptr %bc_refcount.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bc_refcount.i, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %bc_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.cancelled_crit_edge

if.end.i.cancelled_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cancelled

if.then1.i:                                       ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn23.i.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then1.i.list_del.exit.i_crit_edge

if.then1.i.list_del.exit.i_crit_edge:             ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn23.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %.pn23.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn23.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then1.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %.pn23.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn23.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn23.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kvfree(ptr noundef nonnull %bcp.024.i.i.le) #10
  br label %cancelled

xlog_put_buffer_cancelled.exit:                   ; preds = %xlog_find_buffer_cancelled.exit.i.xlog_put_buffer_cancelled.exit_crit_edge, %for.inc.i.i.xlog_put_buffer_cancelled.exit_crit_edge, %if.end.i.i.xlog_put_buffer_cancelled.exit_crit_edge, %if.then.xlog_put_buffer_cancelled.exit_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 117) #10
  br label %if.end9

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i119, label %if.else.if.end9_crit_edge, label %if.end.i.i124

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end.i.i124:                                    ; preds = %if.else
  %33 = trunc i64 %11 to i32
  %idx.ext.i.i120 = and i32 %33, 63
  %add.ptr.i.i121 = getelementptr %struct.list_head, ptr %15, i32 %idx.ext.i.i120
  %34 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn20.i.i122 = load ptr, ptr %add.ptr.i.i121, align 4
  %cmp.not22.i.i123 = icmp eq ptr %.pn20.i.i122, %add.ptr.i.i121
  br i1 %cmp.not22.i.i123, label %if.end.i.i124.if.end9_crit_edge, label %if.end.i.i124.for.body.i.i128_crit_edge

if.end.i.i124.for.body.i.i128_crit_edge:          ; preds = %if.end.i.i124
  br label %for.body.i.i128

if.end.i.i124.if.end9_crit_edge:                  ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.body.i.i128:                                  ; preds = %for.inc.i.i134.for.body.i.i128_crit_edge, %if.end.i.i124.for.body.i.i128_crit_edge
  %.pn23.i.i125 = phi ptr [ %.pn.i.i132, %for.inc.i.i134.for.body.i.i128_crit_edge ], [ %.pn20.i.i122, %if.end.i.i124.for.body.i.i128_crit_edge ]
  %bcp.024.i.i126 = getelementptr i8, ptr %.pn23.i.i125, i32 -16
  %35 = ptrtoint ptr %bcp.024.i.i126 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bcp.024.i.i126, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %11)
  %cmp3.i.i127 = icmp eq i64 %36, %11
  br i1 %cmp3.i.i127, label %land.lhs.true.i.i131, label %for.body.i.i128.for.inc.i.i134_crit_edge

for.body.i.i128.for.inc.i.i134_crit_edge:         ; preds = %for.body.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

land.lhs.true.i.i131:                             ; preds = %for.body.i.i128
  %bc_len.i.i129 = getelementptr i8, ptr %.pn23.i.i125, i32 -8
  %37 = ptrtoint ptr %bc_len.i.i129 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bc_len.i.i129, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv5)
  %cmp4.i.i130 = icmp eq i32 %38, %conv5
  br i1 %cmp4.i.i130, label %xlog_is_buffer_cancelled.exit, label %land.lhs.true.i.i131.for.inc.i.i134_crit_edge

land.lhs.true.i.i131.for.inc.i.i134_crit_edge:    ; preds = %land.lhs.true.i.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

for.inc.i.i134:                                   ; preds = %land.lhs.true.i.i131.for.inc.i.i134_crit_edge, %for.body.i.i128.for.inc.i.i134_crit_edge
  %39 = ptrtoint ptr %.pn23.i.i125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i.i132 = load ptr, ptr %.pn23.i.i125, align 4
  %cmp.not.i.i133 = icmp eq ptr %.pn.i.i132, %add.ptr.i.i121
  br i1 %cmp.not.i.i133, label %for.inc.i.i134.if.end9_crit_edge, label %for.inc.i.i134.for.body.i.i128_crit_edge

for.inc.i.i134.for.body.i.i128_crit_edge:         ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i128

for.inc.i.i134.if.end9_crit_edge:                 ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

xlog_is_buffer_cancelled.exit:                    ; preds = %land.lhs.true.i.i131
  %bcp.024.i.i126.le = getelementptr i8, ptr %.pn23.i.i125, i32 -16
  %phi.cmp.i.not = icmp eq ptr %bcp.024.i.i126.le, null
  br i1 %phi.cmp.i.not, label %xlog_is_buffer_cancelled.exit.if.end9_crit_edge, label %xlog_is_buffer_cancelled.exit.cancelled_crit_edge

xlog_is_buffer_cancelled.exit.cancelled_crit_edge: ; preds = %xlog_is_buffer_cancelled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cancelled

xlog_is_buffer_cancelled.exit.if.end9_crit_edge:  ; preds = %xlog_is_buffer_cancelled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %xlog_is_buffer_cancelled.exit.if.end9_crit_edge, %for.inc.i.i134.if.end9_crit_edge, %if.end.i.i124.if.end9_crit_edge, %if.else.if.end9_crit_edge, %xlog_put_buffer_cancelled.exit
  tail call fastcc void @trace_xfs_log_recover_buf_recover(ptr noundef %log, ptr noundef %3)
  %40 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %blf_flags, align 4
  %42 = zext i16 %41 to i32
  %43 = shl i32 %42, 31
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 13
  %44 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m_ddev_targp, align 8
  %blf_blkno16 = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 4
  %46 = ptrtoint ptr %blf_blkno16 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %blf_blkno16, align 8
  %blf_len17 = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %blf_len17 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %blf_len17, align 2
  %conv18 = zext i16 %49 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #10
  %50 = getelementptr inbounds i8, ptr %map.i, i32 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 -1, ptr %50, align 8
  %52 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %47, ptr %map.i, align 8
  store i32 %conv18, ptr %50, align 8
  %53 = tail call ptr @llvm.returnaddress(i32 0) #10
  %call.i = call i32 @xfs_buf_read_map(ptr noundef %45, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef %43, ptr noundef nonnull %bp, ptr noundef null, ptr noundef %53) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end22, label %if.end9.cleanup72_crit_edge

if.end9.cleanup72_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end22:                                         ; preds = %if.end9
  %54 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_addr.i, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %58 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %59, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end22.if.end31_crit_edge, label %if.end.i137

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end.i137:                                      ; preds = %if.end22
  %60 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %blf_flags, align 4
  %62 = lshr i16 %61, 11
  %call1.off.i = add nsw i16 %62, -19
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call1.off.i)
  %switch.i = icmp ult i16 %call1.off.i, 2
  br i1 %switch.i, label %if.end.i137.if.end31_crit_edge, label %if.end7.i

if.end.i137.if.end31_crit_edge:                   ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end7.i:                                        ; preds = %if.end.i137
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %57, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %if.end7.i.if.end34.i_crit_edge [
    i32 1094857538, label %if.end7.i.sw.bb.i_crit_edge
    i32 1094857539, label %if.end7.i.sw.bb.i_crit_edge166
    i32 1094865986, label %if.end7.i.sw.bb.i_crit_edge167
    i32 1094865987, label %if.end7.i.sw.bb.i_crit_edge168
    i32 1380794931, label %if.end7.i.sw.bb.i_crit_edge169
    i32 1379092035, label %if.end7.i.sw.bb.i_crit_edge170
    i32 1179206195, label %if.end7.i.sw.bb.i_crit_edge171
    i32 1179206228, label %if.end7.i.sw.bb.i_crit_edge172
    i32 1229013555, label %if.end7.i.sw.bb.i_crit_edge173
    i32 1229013588, label %if.end7.i.sw.bb.i_crit_edge174
    i32 1112359219, label %if.end7.i.sw.bb9.i_crit_edge
    i32 1112359248, label %if.end7.i.sw.bb9.i_crit_edge175
    i32 1480673094, label %sw.bb15.i
    i32 1480672844, label %sw.bb16.i
    i32 1480673097, label %sw.bb17.i
    i32 1481854029, label %sw.bb18.i
    i32 1480868403, label %if.end7.i.sw.bb19.i_crit_edge
    i32 1480868915, label %if.end7.i.sw.bb19.i_crit_edge176
    i32 1480869427, label %if.end7.i.sw.bb19.i_crit_edge177
    i32 1480675917, label %if.end7.i.if.end31_crit_edge
    i32 1481003842, label %sw.bb23.i
  ]

if.end7.i.if.end31_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end7.i.sw.bb19.i_crit_edge177:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19.i

if.end7.i.sw.bb19.i_crit_edge176:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19.i

if.end7.i.sw.bb19.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19.i

if.end7.i.sw.bb9.i_crit_edge175:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

if.end7.i.sw.bb9.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

if.end7.i.sw.bb.i_crit_edge174:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge173:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge172:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge171:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge170:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge169:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge168:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge167:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge166:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end7.i.if.end34.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

sw.bb.i:                                          ; preds = %if.end7.i.sw.bb.i_crit_edge, %if.end7.i.sw.bb.i_crit_edge166, %if.end7.i.sw.bb.i_crit_edge167, %if.end7.i.sw.bb.i_crit_edge168, %if.end7.i.sw.bb.i_crit_edge169, %if.end7.i.sw.bb.i_crit_edge170, %if.end7.i.sw.bb.i_crit_edge171, %if.end7.i.sw.bb.i_crit_edge172, %if.end7.i.sw.bb.i_crit_edge173, %if.end7.i.sw.bb.i_crit_edge174
  %bb_lsn.i = getelementptr inbounds %struct.xfs_btree_block, ptr %57, i32 0, i32 3, i32 0, i32 2
  %66 = ptrtoint ptr %bb_lsn.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bb_lsn.i, align 8
  %bb_uuid.i = getelementptr inbounds %struct.xfs_btree_block, ptr %57, i32 0, i32 3, i32 0, i32 3
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end7.i.sw.bb9.i_crit_edge, %if.end7.i.sw.bb9.i_crit_edge175
  %bb_lsn12.i = getelementptr inbounds %struct.xfs_btree_block, ptr %57, i32 0, i32 3, i32 0, i32 3
  %68 = ptrtoint ptr %bb_lsn12.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bb_lsn12.i, align 8
  %bb_uuid14.i = getelementptr inbounds %struct.xfs_btree_block, ptr %57, i32 0, i32 3, i32 0, i32 4
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %agf_lsn.i = getelementptr inbounds %struct.xfs_agf, ptr %57, i32 0, i32 18
  %70 = ptrtoint ptr %agf_lsn.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %agf_lsn.i, align 8
  %agf_uuid.i = getelementptr inbounds %struct.xfs_agf, ptr %57, i32 0, i32 12
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %agfl_lsn.i = getelementptr inbounds %struct.xfs_agfl, ptr %57, i32 0, i32 3
  %72 = ptrtoint ptr %agfl_lsn.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %agfl_lsn.i, align 1
  %agfl_uuid.i = getelementptr inbounds %struct.xfs_agfl, ptr %57, i32 0, i32 2
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %agi_lsn.i = getelementptr inbounds %struct.xfs_agi, ptr %57, i32 0, i32 14
  %74 = ptrtoint ptr %agi_lsn.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %agi_lsn.i, align 8
  %agi_uuid.i = getelementptr inbounds %struct.xfs_agi, ptr %57, i32 0, i32 11
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sl_lsn.i = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %57, i32 0, i32 7
  %76 = ptrtoint ptr %sl_lsn.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %sl_lsn.i, align 8
  %sl_uuid.i = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %57, i32 0, i32 4
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end7.i.sw.bb19.i_crit_edge, %if.end7.i.sw.bb19.i_crit_edge176, %if.end7.i.sw.bb19.i_crit_edge177
  %lsn20.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %57, i32 0, i32 3
  %78 = ptrtoint ptr %lsn20.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %lsn20.i, align 8
  %uuid21.i = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %57, i32 0, i32 4
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end7.i
  %sb_lsn.i = getelementptr inbounds %struct.xfs_dsb, ptr %57, i32 0, i32 53
  %80 = ptrtoint ptr %sb_lsn.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %sb_lsn.i, align 8
  %and.i90.i = and i64 %59, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i90.i)
  %tobool.i91.not.i = icmp eq i64 %and.i90.i, 0
  br i1 %tobool.i91.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  %sb_meta_uuid.i = getelementptr inbounds %struct.xfs_dsb, ptr %57, i32 0, i32 54
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  %sb_uuid.i = getelementptr inbounds %struct.xfs_dsb, ptr %57, i32 0, i32 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else.i, %if.then25.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb9.i, %sw.bb.i
  %uuid.0.i = phi ptr [ %sb_meta_uuid.i, %if.then25.i ], [ %sb_uuid.i, %if.else.i ], [ %uuid21.i, %sw.bb19.i ], [ %sl_uuid.i, %sw.bb18.i ], [ %agi_uuid.i, %sw.bb17.i ], [ %agfl_uuid.i, %sw.bb16.i ], [ %agf_uuid.i, %sw.bb15.i ], [ %bb_uuid14.i, %sw.bb9.i ], [ %bb_uuid.i, %sw.bb.i ]
  %lsn.0.i = phi i64 [ %81, %if.then25.i ], [ %81, %if.else.i ], [ %79, %sw.bb19.i ], [ %77, %sw.bb18.i ], [ %75, %sw.bb17.i ], [ %73, %sw.bb16.i ], [ %71, %sw.bb15.i ], [ %69, %sw.bb9.i ], [ %67, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lsn.0.i)
  %cmp27.not.i = icmp eq i64 %lsn.0.i, -1
  br i1 %cmp27.not.i, label %sw.epilog.i.if.end34.i_crit_edge, label %if.then29.i

sw.epilog.i.if.end34.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then29.i:                                      ; preds = %sw.epilog.i
  %sb_meta_uuid30.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 54
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %sb_meta_uuid30.i, ptr noundef dereferenceable(16) %uuid.0.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.then29.i.xlog_recover_get_buf_lsn.exit_crit_edge, label %if.then29.i.if.end31_crit_edge

if.then29.i.if.end31_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29.i.xlog_recover_get_buf_lsn.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_recover_get_buf_lsn.exit

if.end34.i:                                       ; preds = %sw.epilog.i.if.end34.i_crit_edge, %if.end7.i.if.end34.i_crit_edge
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %57, i32 0, i32 2
  %82 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %magic.i, align 4
  %84 = zext i16 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %83, label %if.end34.i.if.end31_crit_edge [
    i16 15857, label %if.end34.i.sw.epilog40.i_crit_edge
    i16 15871, label %if.end34.i.sw.epilog40.i_crit_edge178
    i16 15342, label %if.end34.i.sw.epilog40.i_crit_edge179
    i16 16062, label %if.end34.i.sw.epilog40.i_crit_edge180
  ]

if.end34.i.sw.epilog40.i_crit_edge180:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.i

if.end34.i.sw.epilog40.i_crit_edge179:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.i

if.end34.i.sw.epilog40.i_crit_edge178:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.i

if.end34.i.sw.epilog40.i_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.i

if.end34.i.if.end31_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

sw.epilog40.i:                                    ; preds = %if.end34.i.sw.epilog40.i_crit_edge, %if.end34.i.sw.epilog40.i_crit_edge178, %if.end34.i.sw.epilog40.i_crit_edge179, %if.end34.i.sw.epilog40.i_crit_edge180
  %lsn37.i = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %57, i32 0, i32 3
  %85 = ptrtoint ptr %lsn37.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %lsn37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %86)
  %cmp41.not.i = icmp eq i64 %86, -1
  br i1 %cmp41.not.i, label %sw.epilog40.i.if.end31_crit_edge, label %if.then43.i

sw.epilog40.i.if.end31_crit_edge:                 ; preds = %sw.epilog40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then43.i:                                      ; preds = %sw.epilog40.i
  %uuid38.i = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %57, i32 0, i32 4
  %sb_meta_uuid45.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 54
  %bcmp.i92.i = call i32 @bcmp(ptr noundef dereferenceable(16) %sb_meta_uuid45.i, ptr noundef dereferenceable(16) %uuid38.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i92.i)
  %cmp.i93.i = icmp eq i32 %bcmp.i92.i, 0
  br i1 %cmp.i93.i, label %if.then43.i.xlog_recover_get_buf_lsn.exit_crit_edge, label %if.then43.i.if.end31_crit_edge

if.then43.i.if.end31_crit_edge:                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then43.i.xlog_recover_get_buf_lsn.exit_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_recover_get_buf_lsn.exit

xlog_recover_get_buf_lsn.exit:                    ; preds = %if.then43.i.xlog_recover_get_buf_lsn.exit_crit_edge, %if.then29.i.xlog_recover_get_buf_lsn.exit_crit_edge
  %retval.0.i = phi i64 [ %lsn.0.i, %if.then29.i.xlog_recover_get_buf_lsn.exit_crit_edge ], [ %86, %if.then43.i.xlog_recover_get_buf_lsn.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %cond = icmp eq i64 %retval.0.i, 0
  br i1 %cond, label %xlog_recover_get_buf_lsn.exit.if.end31_crit_edge, label %land.lhs.true26

xlog_recover_get_buf_lsn.exit.if.end31_crit_edge: ; preds = %xlog_recover_get_buf_lsn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true26:                                  ; preds = %xlog_recover_get_buf_lsn.exit
  %87 = lshr i64 %retval.0.i, 32
  %conv.i = trunc i64 %87 to i32
  %88 = lshr i64 %current_lsn, 32
  %conv2.i = trunc i64 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %conv.i, %conv2.i
  br i1 %cmp.not.i, label %if.end.i139, label %if.then.i138

if.then.i138:                                     ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i, %conv2.i
  br i1 %cmp8.i, label %if.then.i138.if.end31_crit_edge, label %if.then.i138.if.then30_crit_edge

if.then.i138.if.then30_crit_edge:                 ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then.i138.if.end31_crit_edge:                  ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end.i139:                                      ; preds = %land.lhs.true26
  %conv11.i = trunc i64 %retval.0.i to i32
  %conv12.i = trunc i64 %current_lsn to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %cmp18.i = icmp ult i32 %conv11.i, %conv12.i
  br i1 %cmp18.i, label %if.end.i139.if.end31_crit_edge, label %if.end.i139.if.then30_crit_edge

if.end.i139.if.then30_crit_edge:                  ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.end.i139.if.end31_crit_edge:                   ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.end.i139.if.then30_crit_edge, %if.then.i138.if.then30_crit_edge
  call fastcc void @trace_xfs_log_recover_buf_skip(ptr noundef %log, ptr noundef %3)
  %89 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bp, align 4
  call fastcc void @xlog_recover_validate_buf_type(ptr noundef %5, ptr noundef %90, ptr noundef %3, i64 noundef -1)
  br label %out_release

if.end31:                                         ; preds = %if.end.i139.if.end31_crit_edge, %if.then.i138.if.end31_crit_edge, %xlog_recover_get_buf_lsn.exit.if.end31_crit_edge, %if.then43.i.if.end31_crit_edge, %sw.epilog40.i.if.end31_crit_edge, %if.end34.i.if.end31_crit_edge, %if.then29.i.if.end31_crit_edge, %if.end7.i.if.end31_crit_edge, %if.end.i137.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %91 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %blf_flags, align 4
  %conv33 = zext i16 %92 to i32
  %and34 = and i32 %conv33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else41, label %if.then36

if.then36:                                        ; preds = %if.end31
  %call37 = call fastcc i32 @xlog_recover_do_inode_buffer(ptr noundef %5, ptr noundef %item, ptr noundef %55, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end53_crit_edge, label %if.then36.out_release_crit_edge

if.then36.out_release_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_release

if.then36.if.end53_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.else41:                                        ; preds = %if.end31
  %and44 = and i32 %conv33, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else51, label %if.then46

if.then46:                                        ; preds = %if.else41
  %call47 = call fastcc zeroext i1 @xlog_recover_do_dquot_buffer(ptr noundef %5, ptr noundef %log, ptr noundef %item, ptr noundef %55, ptr noundef %3)
  br i1 %call47, label %if.then46.if.end53_crit_edge, label %if.then46.out_release_crit_edge

if.then46.out_release_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_release

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.else51:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @xlog_recover_do_reg_buffer(ptr noundef %5, ptr noundef %item, ptr noundef %55, ptr noundef %3, i64 noundef %current_lsn)
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then46.if.end53_crit_edge, %if.then36.if.end53_crit_edge
  %93 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bp, align 4
  %call54 = call ptr @xfs_buf_offset(ptr noundef %94, i32 noundef 0) #10
  %95 = ptrtoint ptr %call54 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %call54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 18766, i16 %96)
  %cmp56 = icmp eq i16 %96, 18766
  br i1 %cmp56, label %land.lhs.true58, label %if.end53.if.else64_crit_edge

if.end53.if.else64_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else64

land.lhs.true58:                                  ; preds = %if.end53
  %97 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %b_length, align 8
  %shl = shl i32 %100, 9
  %101 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %log, align 128
  %inode_cluster_size = getelementptr inbounds %struct.xfs_mount, ptr %102, i32 0, i32 64, i32 1
  %103 = ptrtoint ptr %inode_cluster_size to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %inode_cluster_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %104)
  %cmp60.not = icmp eq i32 %shl, %104
  br i1 %cmp60.not, label %land.lhs.true58.if.else64_crit_edge, label %if.then62

land.lhs.true58.if.else64_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else64

if.then62:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_buf_stale(ptr noundef %98) #10
  %105 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bp, align 4
  %call63 = call i32 @xfs_bwrite(ptr noundef %106) #10
  br label %out_release

if.else64:                                        ; preds = %land.lhs.true58.if.else64_crit_edge, %if.end53.if.else64_crit_edge
  %107 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bp, align 4
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %108, i32 0, i32 14
  %109 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %b_mount, align 4
  %cmp65 = icmp eq ptr %110, %5
  br i1 %cmp65, label %if.else64.cond.end_crit_edge, label %cond.false, !prof !114

if.else64.cond.end_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 976) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else64.cond.end_crit_edge
  %111 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bp, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %b_flags, align 4
  %or69 = or i32 %114, 262144
  store i32 %or69, ptr %b_flags, align 4
  %call70 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %112, ptr noundef %buffer_list) #10
  br label %out_release

out_release:                                      ; preds = %cond.end, %if.then62, %if.then46.out_release_crit_edge, %if.then36.out_release_crit_edge, %if.then30
  %error.1 = phi i32 [ 0, %if.then30 ], [ %call37, %if.then36.out_release_crit_edge ], [ %call63, %if.then62 ], [ 0, %cond.end ], [ 0, %if.then46.out_release_crit_edge ]
  %115 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %116) #10
  call void @xfs_buf_rele(ptr noundef %116) #10
  br label %cleanup72

cancelled:                                        ; preds = %xlog_is_buffer_cancelled.exit.cancelled_crit_edge, %list_del.exit.i, %if.end.i.cancelled_crit_edge
  tail call fastcc void @trace_xfs_log_recover_buf_cancel(ptr noundef %log, ptr noundef %3)
  br label %cleanup72

cleanup72:                                        ; preds = %cancelled, %out_release, %if.end9.cleanup72_crit_edge
  %retval.0 = phi i32 [ 0, %cancelled ], [ %error.1, %out_release ], [ %call.i, %if.end9.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_buf_readahead(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_log_check_iovec(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_buf_not_cancel(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_not_cancel, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_not_cancel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_not_cancel(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_not_cancel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_not_cancel, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_not_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_not_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2327, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
define internal fastcc void @trace_xfs_log_recover_buf_cancel_add(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel_add, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_cancel_add, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_cancel_add(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel_add, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_cancel_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_cancel_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2329, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
define internal fastcc void @trace_xfs_log_recover_buf_cancel_ref_inc(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel_ref_inc, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_cancel_ref_inc, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_cancel_ref_inc(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel_ref_inc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel_ref_inc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_cancel_ref_inc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_cancel_ref_inc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2330, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_not_cancel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_cancel_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_cancel_ref_inc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_buf_recover(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_recover, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_recover, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !124
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_recover(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_recover, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_recover, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_recover.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_recover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2331, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
define internal fastcc void @trace_xfs_log_recover_buf_skip(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_skip, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_skip, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_skip(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_skip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_skip, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_skip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_skip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2332, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
define internal fastcc void @xlog_recover_validate_buf_type(ptr noundef %mp, ptr noundef %bp, ptr nocapture noundef readonly %buf_f, i64 noundef %current_lsn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = lshr i32 %5, 16
  %7 = trunc i32 %6 to i16
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %magic, align 4
  %blf_flags.i = getelementptr inbounds %struct.xfs_buf_log_format, ptr %buf_f, i32 0, i32 2
  %10 = ptrtoint ptr %blf_flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %blf_flags.i, align 4
  %12 = lshr i16 %11, 11
  %trunc = trunc i16 %12 to i5
  %13 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.38)
  switch i5 %trunc, label %sw.default138 [
    i5 4, label %sw.bb
    i5 5, label %sw.bb17
    i5 6, label %sw.bb22
    i5 7, label %sw.bb28
    i5 1, label %if.end.sw.bb34_crit_edge
    i5 2, label %if.end.sw.bb34_crit_edge213
    i5 3, label %if.end.sw.bb34_crit_edge214
    i5 8, label %sw.bb41
    i5 9, label %sw.bb48
    i5 10, label %sw.bb54
    i5 11, label %sw.bb62
    i5 12, label %sw.bb71
    i5 13, label %sw.bb80
    i5 14, label %sw.bb91
    i5 15, label %sw.bb102
    i5 -16, label %sw.bb113
    i5 -15, label %sw.bb124
    i5 -14, label %sw.bb130
    i5 -13, label %if.end.sw.bb136_crit_edge
    i5 -12, label %if.end.sw.bb136_crit_edge215
  ]

if.end.sw.bb136_crit_edge215:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

if.end.sw.bb136_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

if.end.sw.bb34_crit_edge214:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

if.end.sw.bb34_crit_edge213:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

if.end.sw.bb34_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

sw.bb:                                            ; preds = %if.end
  %14 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %sw.bb.sw.epilog141_crit_edge [
    i32 1094857538, label %sw.bb.sw.bb4_crit_edge
    i32 1094865986, label %sw.bb.sw.bb4_crit_edge216
    i32 1094857539, label %sw.bb.sw.bb5_crit_edge
    i32 1094865987, label %sw.bb.sw.bb5_crit_edge217
    i32 1229013555, label %sw.bb.sw.bb7_crit_edge
    i32 1229013588, label %sw.bb.sw.bb7_crit_edge218
    i32 1179206195, label %sw.bb.sw.bb9_crit_edge
    i32 1179206228, label %sw.bb.sw.bb9_crit_edge219
    i32 1112359219, label %sw.bb.sw.bb11_crit_edge
    i32 1112359248, label %sw.bb.sw.bb11_crit_edge220
    i32 1380794931, label %sw.bb13
    i32 1379092035, label %sw.bb15
  ]

sw.bb.sw.bb11_crit_edge220:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

sw.bb.sw.bb11_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

sw.bb.sw.bb9_crit_edge219:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

sw.bb.sw.bb9_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

sw.bb.sw.bb7_crit_edge218:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

sw.bb.sw.bb5_crit_edge217:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.bb.sw.bb4_crit_edge216:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

sw.bb.sw.bb4_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

sw.bb.sw.epilog141_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

sw.bb4:                                           ; preds = %sw.bb.sw.bb4_crit_edge, %sw.bb.sw.bb4_crit_edge216
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %15 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xfs_bnobt_buf_ops, ptr %b_ops, align 4
  br label %sw.epilog141

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %sw.bb.sw.bb5_crit_edge217
  %b_ops6 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %16 = ptrtoint ptr %b_ops6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xfs_cntbt_buf_ops, ptr %b_ops6, align 4
  br label %sw.epilog141

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %sw.bb.sw.bb7_crit_edge218
  %b_ops8 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %17 = ptrtoint ptr %b_ops8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xfs_inobt_buf_ops, ptr %b_ops8, align 4
  br label %sw.epilog141

sw.bb9:                                           ; preds = %sw.bb.sw.bb9_crit_edge, %sw.bb.sw.bb9_crit_edge219
  %b_ops10 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %18 = ptrtoint ptr %b_ops10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xfs_finobt_buf_ops, ptr %b_ops10, align 4
  br label %sw.epilog141

sw.bb11:                                          ; preds = %sw.bb.sw.bb11_crit_edge, %sw.bb.sw.bb11_crit_edge220
  %b_ops12 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %19 = ptrtoint ptr %b_ops12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xfs_bmbt_buf_ops, ptr %b_ops12, align 4
  br label %sw.epilog141

sw.bb13:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops14 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %20 = ptrtoint ptr %b_ops14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xfs_rmapbt_buf_ops, ptr %b_ops14, align 4
  br label %sw.epilog141

sw.bb15:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops16 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %21 = ptrtoint ptr %b_ops16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xfs_refcountbt_buf_ops, ptr %b_ops16, align 4
  br label %sw.epilog141

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480673094, i32 %5)
  %cmp.not = icmp eq i32 %5, 1480673094
  br i1 %cmp.not, label %if.end20, label %sw.bb17.sw.epilog141_crit_edge

sw.bb17.sw.epilog141_crit_edge:                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end20:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops21 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %22 = ptrtoint ptr %b_ops21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xfs_agf_buf_ops, ptr %b_ops21, align 4
  br label %sw.epilog141

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480672844, i32 %5)
  %cmp23.not = icmp eq i32 %5, 1480672844
  br i1 %cmp23.not, label %if.end26, label %sw.bb22.sw.epilog141_crit_edge

sw.bb22.sw.epilog141_crit_edge:                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end26:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops27 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %23 = ptrtoint ptr %b_ops27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xfs_agfl_buf_ops, ptr %b_ops27, align 4
  br label %sw.epilog141

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480673097, i32 %5)
  %cmp29.not = icmp eq i32 %5, 1480673097
  br i1 %cmp29.not, label %if.end32, label %sw.bb28.sw.epilog141_crit_edge

sw.bb28.sw.epilog141_crit_edge:                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end32:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops33 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %24 = ptrtoint ptr %b_ops33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xfs_agi_buf_ops, ptr %b_ops33, align 4
  br label %sw.epilog141

sw.bb34:                                          ; preds = %if.end.sw.bb34_crit_edge, %if.end.sw.bb34_crit_edge213, %if.end.sw.bb34_crit_edge214
  call void @__sanitizer_cov_trace_const_cmp2(i16 17489, i16 %7)
  %cmp36.not = icmp eq i16 %7, 17489
  br i1 %cmp36.not, label %if.end39, label %sw.bb34.sw.epilog141_crit_edge

sw.bb34.sw.epilog141_crit_edge:                   ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end39:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops40 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %25 = ptrtoint ptr %b_ops40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xfs_dquot_buf_ops, ptr %b_ops40, align 4
  br label %sw.epilog141

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 18766, i16 %7)
  %cmp43.not = icmp eq i16 %7, 18766
  br i1 %cmp43.not, label %if.end46, label %sw.bb41.sw.epilog141_crit_edge

sw.bb41.sw.epilog141_crit_edge:                   ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops47 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %26 = ptrtoint ptr %b_ops47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xfs_inode_buf_ops, ptr %b_ops47, align 4
  br label %sw.epilog141

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1481854029, i32 %5)
  %cmp49.not = icmp eq i32 %5, 1481854029
  br i1 %cmp49.not, label %if.end52, label %sw.bb48.sw.epilog141_crit_edge

sw.bb48.sw.epilog141_crit_edge:                   ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end52:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops53 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %27 = ptrtoint ptr %b_ops53 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xfs_symlink_buf_ops, ptr %b_ops53, align 4
  br label %sw.epilog141

sw.bb54:                                          ; preds = %if.end
  %28 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %5, label %sw.bb54.sw.epilog141_crit_edge [
    i32 1480864322, label %sw.bb54.if.end60_crit_edge
    i32 1480868403, label %sw.bb54.if.end60_crit_edge221
  ]

sw.bb54.if.end60_crit_edge221:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

sw.bb54.if.end60_crit_edge:                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

sw.bb54.sw.epilog141_crit_edge:                   ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end60:                                         ; preds = %sw.bb54.if.end60_crit_edge, %sw.bb54.if.end60_crit_edge221
  %b_ops61 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %29 = ptrtoint ptr %b_ops61 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @xfs_dir3_block_buf_ops, ptr %b_ops61, align 4
  br label %sw.epilog141

sw.bb62:                                          ; preds = %if.end
  %30 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %5, label %sw.bb62.sw.epilog141_crit_edge [
    i32 1480864324, label %sw.bb62.if.end69_crit_edge
    i32 1480868915, label %sw.bb62.if.end69_crit_edge222
  ]

sw.bb62.if.end69_crit_edge222:                    ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

sw.bb62.if.end69_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

sw.bb62.sw.epilog141_crit_edge:                   ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end69:                                         ; preds = %sw.bb62.if.end69_crit_edge, %sw.bb62.if.end69_crit_edge222
  %b_ops70 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %31 = ptrtoint ptr %b_ops70 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xfs_dir3_data_buf_ops, ptr %b_ops70, align 4
  br label %sw.epilog141

sw.bb71:                                          ; preds = %if.end
  %32 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %5, label %sw.bb71.sw.epilog141_crit_edge [
    i32 1480864326, label %sw.bb71.if.end78_crit_edge
    i32 1480869427, label %sw.bb71.if.end78_crit_edge223
  ]

sw.bb71.if.end78_crit_edge223:                    ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

sw.bb71.if.end78_crit_edge:                       ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

sw.bb71.sw.epilog141_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end78:                                         ; preds = %sw.bb71.if.end78_crit_edge, %sw.bb71.if.end78_crit_edge223
  %b_ops79 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %33 = ptrtoint ptr %b_ops79 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @xfs_dir3_free_buf_ops, ptr %b_ops79, align 4
  br label %sw.epilog141

sw.bb80:                                          ; preds = %if.end
  %34 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %9, label %sw.bb80.sw.epilog141_crit_edge [
    i16 -11535, label %sw.bb80.if.end89_crit_edge
    i16 15857, label %sw.bb80.if.end89_crit_edge224
  ]

sw.bb80.if.end89_crit_edge224:                    ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

sw.bb80.if.end89_crit_edge:                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

sw.bb80.sw.epilog141_crit_edge:                   ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end89:                                         ; preds = %sw.bb80.if.end89_crit_edge, %sw.bb80.if.end89_crit_edge224
  %b_ops90 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %35 = ptrtoint ptr %b_ops90 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @xfs_dir3_leaf1_buf_ops, ptr %b_ops90, align 4
  br label %sw.epilog141

sw.bb91:                                          ; preds = %if.end
  %36 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %9, label %sw.bb91.sw.epilog141_crit_edge [
    i16 -11521, label %sw.bb91.if.end100_crit_edge
    i16 15871, label %sw.bb91.if.end100_crit_edge225
  ]

sw.bb91.if.end100_crit_edge225:                   ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

sw.bb91.if.end100_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

sw.bb91.sw.epilog141_crit_edge:                   ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end100:                                        ; preds = %sw.bb91.if.end100_crit_edge, %sw.bb91.if.end100_crit_edge225
  %b_ops101 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %37 = ptrtoint ptr %b_ops101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xfs_dir3_leafn_buf_ops, ptr %b_ops101, align 4
  br label %sw.epilog141

sw.bb102:                                         ; preds = %if.end
  %38 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %9, label %sw.bb102.sw.epilog141_crit_edge [
    i16 -322, label %sw.bb102.if.end111_crit_edge
    i16 16062, label %sw.bb102.if.end111_crit_edge226
  ]

sw.bb102.if.end111_crit_edge226:                  ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

sw.bb102.if.end111_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

sw.bb102.sw.epilog141_crit_edge:                  ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end111:                                        ; preds = %sw.bb102.if.end111_crit_edge, %sw.bb102.if.end111_crit_edge226
  %b_ops112 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %39 = ptrtoint ptr %b_ops112 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xfs_da3_node_buf_ops, ptr %b_ops112, align 4
  br label %sw.epilog141

sw.bb113:                                         ; preds = %if.end
  %40 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %9, label %sw.bb113.sw.epilog141_crit_edge [
    i16 -1042, label %sw.bb113.if.end122_crit_edge
    i16 15342, label %sw.bb113.if.end122_crit_edge227
  ]

sw.bb113.if.end122_crit_edge227:                  ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

sw.bb113.if.end122_crit_edge:                     ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

sw.bb113.sw.epilog141_crit_edge:                  ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end122:                                        ; preds = %sw.bb113.if.end122_crit_edge, %sw.bb113.if.end122_crit_edge227
  %b_ops123 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %41 = ptrtoint ptr %b_ops123 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @xfs_attr3_leaf_buf_ops, ptr %b_ops123, align 4
  br label %sw.epilog141

sw.bb124:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1480675917, i32 %5)
  %cmp125.not = icmp eq i32 %5, 1480675917
  br i1 %cmp125.not, label %if.end128, label %sw.bb124.sw.epilog141_crit_edge

sw.bb124.sw.epilog141_crit_edge:                  ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end128:                                        ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops129 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %42 = ptrtoint ptr %b_ops129 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @xfs_attr3_rmt_buf_ops, ptr %b_ops129, align 4
  br label %sw.epilog141

sw.bb130:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1481003842, i32 %5)
  %cmp131.not = icmp eq i32 %5, 1481003842
  br i1 %cmp131.not, label %if.end134, label %sw.bb130.sw.epilog141_crit_edge

sw.bb130.sw.epilog141_crit_edge:                  ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.end134:                                        ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops135 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %43 = ptrtoint ptr %b_ops135 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @xfs_sb_buf_ops, ptr %b_ops135, align 4
  br label %sw.epilog141

sw.bb136:                                         ; preds = %if.end.sw.bb136_crit_edge, %if.end.sw.bb136_crit_edge215
  %b_ops137 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %44 = ptrtoint ptr %b_ops137 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @xfs_rtbuf_ops, ptr %b_ops137, align 4
  br label %sw.epilog141

sw.default138:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv140 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.23, i32 noundef %conv140) #10
  br label %sw.epilog141

sw.epilog141:                                     ; preds = %sw.default138, %sw.bb136, %if.end134, %sw.bb130.sw.epilog141_crit_edge, %if.end128, %sw.bb124.sw.epilog141_crit_edge, %if.end122, %sw.bb113.sw.epilog141_crit_edge, %if.end111, %sw.bb102.sw.epilog141_crit_edge, %if.end100, %sw.bb91.sw.epilog141_crit_edge, %if.end89, %sw.bb80.sw.epilog141_crit_edge, %if.end78, %sw.bb71.sw.epilog141_crit_edge, %if.end69, %sw.bb62.sw.epilog141_crit_edge, %if.end60, %sw.bb54.sw.epilog141_crit_edge, %if.end52, %sw.bb48.sw.epilog141_crit_edge, %if.end46, %sw.bb41.sw.epilog141_crit_edge, %if.end39, %sw.bb34.sw.epilog141_crit_edge, %if.end32, %sw.bb28.sw.epilog141_crit_edge, %if.end26, %sw.bb22.sw.epilog141_crit_edge, %if.end20, %sw.bb17.sw.epilog141_crit_edge, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb.sw.epilog141_crit_edge
  %tobool.not = phi i1 [ true, %sw.bb4 ], [ true, %sw.bb5 ], [ true, %sw.bb7 ], [ true, %sw.bb9 ], [ true, %sw.bb11 ], [ true, %sw.bb13 ], [ true, %sw.bb15 ], [ true, %sw.default138 ], [ true, %sw.bb136 ], [ true, %if.end134 ], [ true, %if.end128 ], [ true, %if.end122 ], [ true, %if.end111 ], [ true, %if.end100 ], [ true, %if.end89 ], [ true, %if.end78 ], [ true, %if.end69 ], [ true, %if.end60 ], [ true, %if.end52 ], [ true, %if.end46 ], [ true, %if.end39 ], [ true, %if.end32 ], [ true, %if.end26 ], [ true, %if.end20 ], [ false, %sw.bb.sw.epilog141_crit_edge ], [ false, %sw.bb17.sw.epilog141_crit_edge ], [ false, %sw.bb22.sw.epilog141_crit_edge ], [ false, %sw.bb28.sw.epilog141_crit_edge ], [ false, %sw.bb34.sw.epilog141_crit_edge ], [ false, %sw.bb41.sw.epilog141_crit_edge ], [ false, %sw.bb48.sw.epilog141_crit_edge ], [ false, %sw.bb54.sw.epilog141_crit_edge ], [ false, %sw.bb62.sw.epilog141_crit_edge ], [ false, %sw.bb71.sw.epilog141_crit_edge ], [ false, %sw.bb80.sw.epilog141_crit_edge ], [ false, %sw.bb91.sw.epilog141_crit_edge ], [ false, %sw.bb102.sw.epilog141_crit_edge ], [ false, %sw.bb113.sw.epilog141_crit_edge ], [ false, %sw.bb124.sw.epilog141_crit_edge ], [ false, %sw.bb130.sw.epilog141_crit_edge ]
  %warnmsg.0 = phi ptr [ null, %sw.bb4 ], [ null, %sw.bb5 ], [ null, %sw.bb7 ], [ null, %sw.bb9 ], [ null, %sw.bb11 ], [ null, %sw.bb13 ], [ null, %sw.bb15 ], [ null, %sw.default138 ], [ null, %sw.bb136 ], [ null, %if.end134 ], [ null, %if.end128 ], [ null, %if.end122 ], [ null, %if.end111 ], [ null, %if.end100 ], [ null, %if.end89 ], [ null, %if.end78 ], [ null, %if.end69 ], [ null, %if.end60 ], [ null, %if.end52 ], [ null, %if.end46 ], [ null, %if.end39 ], [ null, %if.end32 ], [ null, %if.end26 ], [ null, %if.end20 ], [ @.str.7, %sw.bb.sw.epilog141_crit_edge ], [ @.str.8, %sw.bb17.sw.epilog141_crit_edge ], [ @.str.9, %sw.bb22.sw.epilog141_crit_edge ], [ @.str.10, %sw.bb28.sw.epilog141_crit_edge ], [ @.str.11, %sw.bb34.sw.epilog141_crit_edge ], [ @.str.12, %sw.bb41.sw.epilog141_crit_edge ], [ @.str.13, %sw.bb48.sw.epilog141_crit_edge ], [ @.str.14, %sw.bb54.sw.epilog141_crit_edge ], [ @.str.15, %sw.bb62.sw.epilog141_crit_edge ], [ @.str.16, %sw.bb71.sw.epilog141_crit_edge ], [ @.str.17, %sw.bb80.sw.epilog141_crit_edge ], [ @.str.18, %sw.bb91.sw.epilog141_crit_edge ], [ @.str.19, %sw.bb102.sw.epilog141_crit_edge ], [ @.str.20, %sw.bb113.sw.epilog141_crit_edge ], [ @.str.21, %sw.bb124.sw.epilog141_crit_edge ], [ @.str.22, %sw.bb130.sw.epilog141_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %current_lsn)
  %cmp142 = icmp eq i64 %current_lsn, -1
  br i1 %cmp142, label %sw.epilog141.cleanup_crit_edge, label %if.end145

sw.epilog141.cleanup_crit_edge:                   ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end145:                                        ; preds = %sw.epilog141
  br i1 %tobool.not, label %if.end145.if.end147_crit_edge, label %if.then146

if.end145.if.end147_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then146:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef %warnmsg.0) #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 405) #10
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.end145.if.end147_crit_edge
  %b_ops148 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %45 = ptrtoint ptr %b_ops148 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_ops148, align 4
  %tobool149.not = icmp eq ptr %46, null
  br i1 %tobool149.not, label %if.end147.cleanup_crit_edge, label %if.then150

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %47 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %b_flags, align 4
  %or = or i32 %48, 262144
  store i32 %or, ptr %b_flags, align 4
  %call151 = tail call i32 @xfs_buf_item_init(ptr noundef %bp, ptr noundef %mp) #10
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %49 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_log_item, align 4
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %li_lsn to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %current_lsn, ptr %li_lsn, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then150, %if.end147.cleanup_crit_edge, %sw.epilog141.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlog_recover_do_inode_buffer(ptr noundef %mp, ptr noundef %item, ptr noundef %bp, ptr noundef %buf_f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 8
  %0 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_log, align 4
  tail call fastcc void @trace_xfs_log_recover_buf_inode_buf(ptr noundef %1, ptr noundef %buf_f)
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %4 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xfs_inode_buf_ops, ptr %b_ops, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %5 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_length, align 8
  %shl = shl i32 %6, 9
  %sb_inodelog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 22
  %7 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sb_inodelog, align 2
  %conv = zext i8 %8 to i32
  %shr = ashr i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp154 = icmp sgt i32 %shr, 0
  br i1 %cmp154, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %blf_data_map = getelementptr inbounds %struct.xfs_buf_log_format, ptr %buf_f, i32 0, i32 6
  %blf_map_size = getelementptr inbounds %struct.xfs_buf_log_format, ptr %buf_f, i32 0, i32 5
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %reg_buf_bytes.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %reg_buf_bytes.1.lcssa, %for.inc.for.body_crit_edge ]
  %reg_buf_offset.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %reg_buf_offset.1.lcssa, %for.inc.for.body_crit_edge ]
  %nbits.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %nbits.1.lcssa, %for.inc.for.body_crit_edge ]
  %bit.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %bit.1.lcssa, %for.inc.for.body_crit_edge ]
  %item_index.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %item_index.1.lcssa, %for.inc.for.body_crit_edge ]
  %i.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %inc86, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sb_inodesize, align 8
  %conv3 = zext i16 %10 to i32
  %mul = mul i32 %i.0155, %conv3
  %add = add i32 %mul, 96
  %add4144 = add i32 %reg_buf_bytes.0160, %reg_buf_offset.0159
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add4144)
  %cmp5.not145 = icmp slt i32 %add, %add4144
  br i1 %cmp5.not145, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %cond.end.while.body_crit_edge, %for.body.while.body_crit_edge
  %nbits.1148 = phi i32 [ %call16, %cond.end.while.body_crit_edge ], [ %nbits.0158, %for.body.while.body_crit_edge ]
  %bit.1147 = phi i32 [ %call8, %cond.end.while.body_crit_edge ], [ %bit.0157, %for.body.while.body_crit_edge ]
  %item_index.1146 = phi i32 [ %inc, %cond.end.while.body_crit_edge ], [ %item_index.0156, %for.body.while.body_crit_edge ]
  %add7 = add i32 %nbits.1148, %bit.1147
  %11 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blf_map_size, align 8
  %call8 = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map, i32 noundef %12, i32 noundef %add7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %while.body.cleanup_crit_edge, label %if.end12

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %while.body
  %13 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blf_map_size, align 8
  %call16 = tail call i32 @xfs_contig_bits(ptr noundef %blf_data_map, i32 noundef %14, i32 noundef %call8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %if.end12.cond.end_crit_edge, label %cond.false, !prof !114

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.5, i32 noundef 629) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end12.cond.end_crit_edge
  %shl20 = shl i32 %call8, 7
  %shl21 = shl i32 %call16, 7
  %inc = add i32 %item_index.1146, 1
  %add4 = add i32 %shl21, %shl20
  %cmp5.not = icmp slt i32 %add, %add4
  br i1 %cmp5.not, label %cond.end.while.end_crit_edge, label %cond.end.while.body_crit_edge

cond.end.while.body_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cond.end.while.end_crit_edge, %for.body.while.end_crit_edge
  %item_index.1.lcssa = phi i32 [ %item_index.0156, %for.body.while.end_crit_edge ], [ %inc, %cond.end.while.end_crit_edge ]
  %bit.1.lcssa = phi i32 [ %bit.0157, %for.body.while.end_crit_edge ], [ %call8, %cond.end.while.end_crit_edge ]
  %nbits.1.lcssa = phi i32 [ %nbits.0158, %for.body.while.end_crit_edge ], [ %call16, %cond.end.while.end_crit_edge ]
  %reg_buf_offset.1.lcssa = phi i32 [ %reg_buf_offset.0159, %for.body.while.end_crit_edge ], [ %shl20, %cond.end.while.end_crit_edge ]
  %reg_buf_bytes.1.lcssa = phi i32 [ %reg_buf_bytes.0160, %for.body.while.end_crit_edge ], [ %shl21, %cond.end.while.end_crit_edge ]
  %add4.lcssa = phi i32 [ %add4144, %for.body.while.end_crit_edge ], [ %add4, %cond.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg_buf_offset.1.lcssa)
  %cmp22 = icmp slt i32 %add, %reg_buf_offset.1.lcssa
  br i1 %cmp22, label %while.end.for.inc_crit_edge, label %if.end25

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end25:                                         ; preds = %while.end
  %15 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ri_buf, align 4
  %arrayidx = getelementptr %struct.xfs_log_iovec, ptr %16, i32 %item_index.1.lcssa
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %cmp26.not = icmp eq ptr %18, null
  br i1 %cmp26.not, label %cond.false35, label %if.end25.cond.end36_crit_edge, !prof !128

if.end25.cond.end36_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36

cond.false35:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 643) #10
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %if.end25.cond.end36_crit_edge
  %19 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ri_buf, align 4
  %i_len = getelementptr %struct.xfs_log_iovec, ptr %20, i32 %item_index.1.lcssa, i32 1
  %21 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_len, align 4
  %23 = and i32 %22, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp39 = icmp eq i32 %23, 0
  br i1 %cmp39, label %cond.end36.cond.end49_crit_edge, label %cond.false48, !prof !114

cond.end36.cond.end49_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end49

cond.false48:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.5, i32 noundef 644) #10
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %cond.end36.cond.end49_crit_edge
  %24 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %b_length, align 8
  %shl52 = shl i32 %25, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.lcssa, i32 %shl52)
  %cmp53.not = icmp sgt i32 %add4.lcssa, %shl52
  br i1 %cmp53.not, label %cond.false62, label %cond.end49.cond.end63_crit_edge, !prof !128

cond.end49.cond.end63_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end63

cond.false62:                                     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.5, i32 noundef 645) #10
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.end49.cond.end63_crit_edge
  %26 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ri_buf, align 4
  %arrayidx65 = getelementptr %struct.xfs_log_iovec, ptr %27, i32 %item_index.1.lcssa
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx65, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %add
  %idx.neg = sub i32 0, %reg_buf_offset.1.lcssa
  %add.ptr67 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %30 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp68 = icmp eq i32 %31, 0
  br i1 %cmp68, label %__here, label %if.end79, !prof !128

__here:                                           ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !129
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 654, ptr noundef blockaddress(@xlog_recover_do_inode_buffer, %__here)) #10
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.29, ptr noundef %item, ptr noundef %bp) #10
  br label %cleanup

if.end79:                                         ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #12
  %call80 = tail call ptr @xfs_buf_offset(ptr noundef %bp, i32 noundef %add) #10
  %32 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr67, align 4
  %34 = ptrtoint ptr %call80 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %call80, align 4
  %35 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sb_inodesize, align 8
  %conv83 = zext i16 %36 to i32
  %mul84 = mul i32 %i.0155, %conv83
  %call85 = tail call ptr @xfs_buf_offset(ptr noundef %bp, i32 noundef %mul84) #10
  tail call void @xfs_dinode_calc_crc(ptr noundef %mp, ptr noundef %call85) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end79, %while.end.for.inc_crit_edge
  %inc86 = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc86, %shr
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %__here, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xlog_recover_do_dquot_buffer(ptr noundef %mp, ptr noundef %log, ptr nocapture noundef readonly %item, ptr noundef %bp, ptr noundef %buf_f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_log_recover_buf_dquot_buf(ptr noundef %log, ptr noundef %buf_f)
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %0 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_qflags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_format, ptr %buf_f, i32 0, i32 2
  %2 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %blf_flags, align 4
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 7
  %6 = zext i16 %5 to i32
  %l_quotaoffs_flag = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 7
  %7 = ptrtoint ptr %l_quotaoffs_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_quotaoffs_flag, align 4
  %and18 = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xlog_recover_do_reg_buffer(ptr noundef %mp, ptr noundef %item, ptr noundef %bp, ptr noundef %buf_f, i64 noundef -1)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end21 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_recover_do_reg_buffer(ptr noundef %mp, ptr nocapture noundef readonly %item, ptr noundef %bp, ptr noundef %buf_f, i64 noundef %current_lsn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 8
  %0 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_log, align 4
  tail call fastcc void @trace_xfs_log_recover_buf_reg_buf(ptr noundef %1, ptr noundef %buf_f)
  %blf_data_map = getelementptr inbounds %struct.xfs_buf_log_format, ptr %buf_f, i32 0, i32 6
  %blf_map_size = getelementptr inbounds %struct.xfs_buf_log_format, ptr %buf_f, i32 0, i32 5
  %2 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blf_map_size, align 8
  %call142 = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map, i32 noundef %3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call142)
  %cmp143 = icmp eq i32 %call142, -1
  br i1 %cmp143, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_format, ptr %buf_f, i32 0, i32 2
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  br label %if.end

if.end:                                           ; preds = %next.if.end_crit_edge, %if.end.lr.ph
  %call146 = phi i32 [ %call142, %if.end.lr.ph ], [ %call, %next.if.end_crit_edge ]
  %i.0144 = phi i32 [ 1, %if.end.lr.ph ], [ %inc, %next.if.end_crit_edge ]
  %4 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blf_map_size, align 8
  %call4 = tail call i32 @xfs_contig_bits(ptr noundef %blf_data_map, i32 noundef %5, i32 noundef %call146) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.end.cond.end_crit_edge, label %cond.false, !prof !114

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.5, i32 noundef 460) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %6 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ri_buf, align 4
  %arrayidx = getelementptr %struct.xfs_log_iovec, ptr %7, i32 %i.0144
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp7.not = icmp eq ptr %9, null
  br i1 %cmp7.not, label %cond.false15, label %cond.end.cond.end16_crit_edge, !prof !128

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, i32 noundef 461) #10
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.end.cond.end16_crit_edge
  %10 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ri_buf, align 4
  %i_len = getelementptr %struct.xfs_log_iovec, ptr %11, i32 %i.0144, i32 1
  %12 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_len, align 4
  %14 = and i32 %13, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19 = icmp eq i32 %14, 0
  br i1 %cmp19, label %cond.end16.cond.end28_crit_edge, label %cond.false27, !prof !114

cond.end16.cond.end28_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5, i32 noundef 462) #10
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end16.cond.end28_crit_edge
  %15 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_length, align 8
  %shl = shl i32 %16, 9
  %shl29 = shl i32 %call146, 7
  %shl30 = shl i32 %call4, 7
  %add = add i32 %shl30, %shl29
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %add)
  %cmp31.not = icmp ult i32 %shl, %add
  br i1 %cmp31.not, label %cond.false39, label %cond.end28.cond.end40_crit_edge, !prof !128

cond.end28.cond.end40_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.5, i32 noundef 464) #10
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.end28.cond.end40_crit_edge
  %17 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ri_buf, align 4
  %i_len43 = getelementptr %struct.xfs_log_iovec, ptr %18, i32 %i.0144, i32 1
  %19 = ptrtoint ptr %i_len43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_len43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %shl30)
  %cmp45 = icmp slt i32 %20, %shl30
  %shr = ashr i32 %20, 7
  %spec.select = select i1 %cmp45, i32 %shr, i32 %call4
  %21 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %blf_flags, align 4
  %23 = and i16 %22, 28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool51.not = icmp eq i16 %23, 0
  br i1 %tobool51.not, label %cond.end40.if.end78_crit_edge, label %if.then52

cond.end40.if.end78_crit_edge:                    ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then52:                                        ; preds = %cond.end40
  %arrayidx54 = getelementptr %struct.xfs_log_iovec, ptr %18, i32 %i.0144
  %24 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx54, align 4
  %cmp56 = icmp eq ptr %25, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.xlog_recover_do_reg_buffer) #10
  br label %next

if.end59:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %20)
  %cmp63 = icmp ult i32 %20, 104
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.34, i32 noundef %20, ptr noundef nonnull @__func__.xlog_recover_do_reg_buffer) #10
  br label %next

if.end69:                                         ; preds = %if.end59
  %call73 = tail call ptr @xfs_dquot_verify(ptr noundef %mp, ptr noundef nonnull %25, i32 noundef -1) #10
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end69.if.end78_crit_edge, label %if.then75

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_maps.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.35, ptr noundef nonnull %call73, i64 noundef %29) #10
  br label %next

if.end78:                                         ; preds = %if.end69.if.end78_crit_edge, %cond.end40.if.end78_crit_edge
  %call80 = tail call ptr @xfs_buf_offset(ptr noundef %bp, i32 noundef %shl29) #10
  %30 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ri_buf, align 4
  %arrayidx82 = getelementptr %struct.xfs_log_iovec, ptr %31, i32 %i.0144
  %32 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx82, align 4
  %shl84 = shl i32 %spec.select, 7
  %34 = call ptr @memcpy(ptr %call80, ptr %33, i32 %shl84)
  br label %next

next:                                             ; preds = %if.end78, %if.then75, %if.then65, %if.then58
  %inc = add i32 %i.0144, 1
  %add85 = add i32 %spec.select, %call146
  %35 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blf_map_size, align 8
  %call = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map, i32 noundef %36, i32 noundef %add85) #10
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %next.while.end_crit_edge, label %next.if.end_crit_edge

next.if.end_crit_edge:                            ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

next.while.end_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %next.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %entry.while.end_crit_edge ], [ %inc, %next.while.end_crit_edge ]
  %ri_total = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 2
  %37 = ptrtoint ptr %ri_total to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ri_total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %38)
  %cmp86 = icmp eq i32 %i.0.lcssa, %38
  br i1 %cmp86, label %while.end.cond.end96_crit_edge, label %cond.false95, !prof !114

while.end.cond.end96_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end96

cond.false95:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5, i32 noundef 515) #10
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false95, %while.end.cond.end96_crit_edge
  tail call fastcc void @xlog_recover_validate_buf_type(ptr noundef %mp, ptr noundef %bp, ptr noundef %buf_f, i64 noundef %current_lsn)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_stale(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bwrite(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_buf_cancel(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_cancel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !130
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_cancel(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_cancel, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2328, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_recover(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_read_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_skip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_item_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_buf_inode_buf(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_inode_buf, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_inode_buf, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !132
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_inode_buf(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !133
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_inode_buf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_inode_buf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_inode_buf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_inode_buf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2333, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
declare dso_local i32 @xfs_next_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_contig_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dinode_calc_crc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_inode_buf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_buf_dquot_buf(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_dquot_buf, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_dquot_buf, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_dquot_buf(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_dquot_buf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_dquot_buf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_dquot_buf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_dquot_buf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2335, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
declare dso_local i32 @__traceiter_xfs_log_recover_buf_dquot_buf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_recover_buf_reg_buf(ptr noundef %log, ptr noundef %buf_f) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_reg_buf, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_recover_buf_reg_buf, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !114

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  %call42 = tail call i32 @__traceiter_xfs_log_recover_buf_reg_buf(ptr noundef null, ptr noundef %log, ptr noundef %buf_f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !114

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_reg_buf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_recover_buf_reg_buf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_recover_buf_reg_buf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_log_recover_buf_reg_buf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2334, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #10
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
declare dso_local ptr @xfs_dquot_verify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_reg_buf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_recover_buf_cancel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !102}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @xlog_buf_item_ops, !1, !"xlog_buf_item_ops", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 989, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 179, i32 22}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_trace.h", i32 2327, i32 1}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_trace.h", i32 2329, i32 1}
!14 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_trace.h", i32 2330, i32 1}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 976, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 117, i32 3}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_trace.h", i32 2331, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_trace.h", i32 2332, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 258, i32 14}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 264, i32 14}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 271, i32 14}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 278, i32 14}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 288, i32 14}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 300, i32 14}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 307, i32 14}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 315, i32 14}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 323, i32 14}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 331, i32 14}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 339, i32 14}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 347, i32 14}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 355, i32 14}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 363, i32 14}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 370, i32 14}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 377, i32 14}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 390, i32 16}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 629, i32 4}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 643, i32 3}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 644, i32 3}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 645, i32 3}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 654, i32 7}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 656, i32 3}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_trace.h", i32 2333, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_trace.h", i32 2335, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 461, i32 3}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 462, i32 3}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 463, i32 3}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 487, i32 6}
!89 = !{ptr @__func__.xlog_recover_do_reg_buffer, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 487, i32 32}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 492, i32 6}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 499, i32 2}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/xfs/xfs_buf_item_recover.c", i32 515, i32 2}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../fs/xfs/xfs_trace.h", i32 2334, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/xfs/xfs_trace.h", i32 2328, i32 1}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2148272162, i64 2148272167, i64 2148272180, i64 2148272224, i64 2148272258, i64 2148272279}
!116 = !{i64 2162267533}
!117 = !{i64 2162267776}
!118 = !{i64 2149974255}
!119 = !{i64 2149975291}
!120 = !{i64 2162303441}
!121 = !{i64 2162303684}
!122 = !{i64 2162325798}
!123 = !{i64 2162326049}
!124 = !{i64 2162344037}
!125 = !{i64 2162344274}
!126 = !{i64 2162361781}
!127 = !{i64 2162362012}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 2166395588}
!130 = !{i64 2162285517}
!131 = !{i64 2162285752}
!132 = !{i64 2162383619}
!133 = !{i64 2162383860}
!134 = !{i64 2162419527}
!135 = !{i64 2162419768}
!136 = !{i64 2162401588}
!137 = !{i64 2162401825}
