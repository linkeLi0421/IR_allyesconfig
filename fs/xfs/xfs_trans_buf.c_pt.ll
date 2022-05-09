; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_trans_buf.c_pt.bc'
source_filename = "../fs/xfs/xfs_trans_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_buf_log_item = type { %struct.xfs_log_item, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.xfs_buf_log_format }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_buf_log_format = type { i16, i16, i16, i16, i64, i32, [17 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xfs_buf_islocked(bp)\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/xfs_trans_buf.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bp->b_transp == tp\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bip != NULL\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"atomic_read(&bip->bli_refcount) > 0\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!bp->b_error\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bp->b_log_item != NULL\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bp->b_flags & XBF_DONE\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bp->b_ops != NULL\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bp->b_ops != NULL || ops == NULL\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bip->bli_item.li_type == XFS_LI_BUF\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!(bip->bli_flags & XFS_BLI_LOGGED)\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!(bip->bli_flags & XFS_BLI_STALE)\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"!(bip->__bli_format.blf_flags & XFS_BLF_CANCEL)\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bip->bli_flags & XFS_BLI_HOLD\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bp->b_flags & XBF_STALE\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"first <= last && last < BBTOB(bp->b_length)\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"!(bip->bli_flags & XFS_BLI_ORDERED)\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"!(bip->bli_flags & (XFS_BLI_LOGGED | XFS_BLI_DIRTY))\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"!(bip->__bli_format.blf_flags & XFS_BLF_INODE_BUF)\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"!(bip->__bli_format.blf_flags & XFS_BLFT_MASK)\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bip->__bli_format.blf_flags & XFS_BLF_CANCEL\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"test_bit(XFS_LI_DIRTY, &bip->bli_item.li_flags)\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tp->t_flags & XFS_TRANS_DIRTY\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"type == XFS_BLF_UDQUOT_BUF || type == XFS_BLF_PDQUOT_BUF || type == XFS_BLF_GDQUOT_BUF\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bp->b_transp == NULL\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_bjoin = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_trans_bjoin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"blip->bli_buf->b_map_count == nmaps\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_get_buf_recur = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_get_buf_recur.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_get_buf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_get_buf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_getsb_recur = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_getsb_recur.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_getsb = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_getsb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_read_buf_shut = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_read_buf_shut.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_read_buf_recur = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_read_buf_recur.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_read_buf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_read_buf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_brelse = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_brelse.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_bhold = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_bhold.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_bhold_release = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_bhold_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_log_buf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_log_buf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_binval = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_binval.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_item_ordered = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_ordered.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"type > XFS_BLFT_UNKNOWN_BUF && type < XFS_BLFT_MAX_BUF\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/xfs/libxfs/xfs_log_format.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 140, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 146, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 148, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 149, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 160, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 239, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 241, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 264, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 284, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 328, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 384, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 410, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 411, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 434, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 471, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 499, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 500, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 558, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 559, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 560, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 561, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 562, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 563, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 745, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 68, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 627, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 108, i32 2 }
@___asan_gen_.122 = private constant [26 x i8] c"../fs/xfs/xfs_trans_buf.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 43, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [34 x i8] c"../fs/xfs/libxfs/xfs_log_format.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 537, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_bjoin(ptr noundef %tp, ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_xfs_trans_bjoin(ptr noundef %tp, ptr noundef %bp, i32 noundef 0)
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  tail call fastcc void @trace_xfs_trans_bjoin(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_xfs_trans_bjoin(ptr noundef %tp, ptr noundef %bp, i32 noundef %reset_recur) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %0 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 68) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %call = tail call i32 @xfs_buf_item_init(ptr noundef %bp, ptr noundef %3) #8
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_log_item, align 4
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bli_flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cond.end.cond.end13_crit_edge, label %cond.false12, !prof !113

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 77) #8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %5, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blf_flags, align 4
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool15.not = icmp eq i16 %10, 0
  br i1 %tobool15.not, label %cond.end13.cond.end26_crit_edge, label %cond.false25, !prof !113

cond.end13.cond.end26_crit_edge:                  ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 78) #8
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.end13.cond.end26_crit_edge
  %11 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bli_flags, align 4
  %and28 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end26.cond.end40_crit_edge, label %cond.false39, !prof !113

cond.end26.cond.end40_crit_edge:                  ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 79) #8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.end26.cond.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_recur)
  %tobool41.not = icmp eq i32 %reset_recur, 0
  br i1 %tobool41.not, label %cond.end40.if.end_crit_edge, label %if.then

cond.end40.if.end_crit_edge:                      ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #10
  %bli_recur = getelementptr inbounds %struct.xfs_buf_log_item, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %bli_recur to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bli_recur, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end40.if.end_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %5, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bli_refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %bli_refcount, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bli_refcount, ptr %bli_refcount, i32 1, ptr elementtype(i32) %bli_refcount) #8, !srcloc !114
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %5) #8
  %15 = ptrtoint ptr %b_transp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tp, ptr %b_transp, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_bjoin(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bjoin, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_bjoin, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %call42 = tail call i32 @__traceiter_xfs_trans_bjoin(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bjoin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bjoin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_bjoin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_bjoin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 627, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define dso_local i32 @xfs_trans_get_buf_map(ptr noundef %tp, ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bpp, align 4
  %tobool.not = icmp eq ptr %tp, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @xfs_buf_get_map(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef %bpp) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @xfs_trans_buf_item_match(ptr noundef nonnull %tp, ptr noundef %target, ptr noundef %map, i32 noundef %nmaps)
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %bp, align 4
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %if.end40, label %if.then2

if.then2:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.xfs_buf, ptr %call1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then2.cond.end_crit_edge, label %cond.false, !prof !113

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 140) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then2.cond.end_crit_edge
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cond.end.if.end8_crit_edge, label %if.then7

cond.end.if.end8_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 4
  tail call void @xfs_buf_stale(ptr noundef %10) #8
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_flags, align 4
  %or = or i32 %12, 32
  store i32 %or, ptr %b_flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %cond.end.if.end8_crit_edge
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_transp, align 8
  %cmp9 = icmp eq ptr %16, %tp
  br i1 %cmp9, label %if.end8.cond.end18_crit_edge, label %cond.false17, !prof !113

if.end8.cond.end18_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18

cond.false17:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 146) #8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %if.end8.cond.end18_crit_edge
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_log_item, align 4
  %cmp19.not = icmp eq ptr %20, null
  br i1 %cmp19.not, label %cond.false27, label %cond.end18.cond.end28_crit_edge, !prof !120

cond.end18.cond.end28_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 148) #8
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end18.cond.end28_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %20, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %21 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp30 = icmp sgt i32 %22, 0
  br i1 %cmp30, label %cond.end28.cond.end39_crit_edge, label %cond.false38, !prof !113

cond.end28.cond.end39_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end39

cond.false38:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 149) #8
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.end28.cond.end39_crit_edge
  %bli_recur = getelementptr inbounds %struct.xfs_buf_log_item, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %bli_recur to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bli_recur, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %bli_recur, align 8
  tail call fastcc void @trace_xfs_trans_get_buf_recur(ptr noundef %20)
  %25 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bp, align 4
  %27 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %bpp, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end
  %call41 = call i32 @xfs_buf_get_map(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %29, i32 0, i32 31
  %30 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool45.not = icmp eq i32 %31, 0
  br i1 %tobool45.not, label %if.end44.cond.end56_crit_edge, label %cond.false55, !prof !113

if.end44.cond.end56_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end56

cond.false55:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 160) #8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %if.end44.cond.end56_crit_edge
  %32 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bp, align 4
  call fastcc void @_xfs_trans_bjoin(ptr noundef nonnull %tp, ptr noundef %33, i32 noundef 1)
  %34 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bp, align 4
  %b_log_item57 = getelementptr inbounds %struct.xfs_buf, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %b_log_item57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_log_item57, align 4
  call fastcc void @trace_xfs_trans_get_buf(ptr noundef %37)
  %38 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bp, align 4
  %40 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end56, %if.end40.cleanup_crit_edge, %cond.end39, %if.then
  %retval.0 = phi i32 [ 0, %cond.end39 ], [ 0, %cond.end56 ], [ %call, %if.then ], [ %call41, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_get_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_trans_buf_item_match(ptr noundef readonly %tp, ptr noundef readnone %target, ptr nocapture noundef readonly %map, i32 noundef %nmaps) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nmaps)
  %cmp42 = icmp sgt i32 %nmaps, 0
  br i1 %cmp42, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.044 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %map, i32 %i.043, i32 1
  %0 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bm_len, align 8
  %add = add i32 %1, %len.044
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %nmaps
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %t_items = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 26
  %2 = ptrtoint ptr %t_items to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn45 = load ptr, ptr %t_items, align 8
  %cmp3.not46 = icmp eq ptr %.pn45, %t_items
  br i1 %cmp3.not46, label %for.end.cleanup_crit_edge, label %for.end.for.body4_crit_edge

for.end.for.body4_crit_edge:                      ; preds = %for.end
  br label %for.body4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body4:                                        ; preds = %for.inc19.for.body4_crit_edge, %for.end.for.body4_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.inc19.for.body4_crit_edge ], [ %.pn45, %for.end.for.body4_crit_edge ]
  %li_type = getelementptr i8, ptr %.pn47, i32 24
  %3 = ptrtoint ptr %li_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %li_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4668, i32 %4)
  %cmp5 = icmp eq i32 %4, 4668
  br i1 %cmp5, label %land.lhs.true, label %for.body4.for.inc19_crit_edge

for.body4.for.inc19_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

land.lhs.true:                                    ; preds = %for.body4
  %bli_buf = getelementptr i8, ptr %.pn47, i32 72
  %5 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bli_buf, align 8
  %b_target = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %b_target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_target, align 8
  %cmp6 = icmp eq ptr %8, %target
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.for.inc19_crit_edge

land.lhs.true.for.inc19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

land.lhs.true7:                                   ; preds = %land.lhs.true
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 24
  %9 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_maps.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %map, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp10 = icmp eq i64 %12, %14
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true7.for.inc19_crit_edge

land.lhs.true7.for.inc19_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %len.0.lcssa)
  %cmp13 = icmp eq i32 %16, %len.0.lcssa
  br i1 %cmp13, label %if.then, label %land.lhs.true11.for.inc19_crit_edge

land.lhs.true11.for.inc19_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

if.then:                                          ; preds = %land.lhs.true11
  %bli_buf.le = getelementptr i8, ptr %.pn47, i32 72
  %b_map_count = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 26
  %17 = ptrtoint ptr %b_map_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %b_map_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %nmaps)
  %cmp15 = icmp eq i32 %18, %nmaps
  br i1 %cmp15, label %if.then.cond.end_crit_edge, label %cond.false, !prof !113

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 43) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %19 = ptrtoint ptr %bli_buf.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bli_buf.le, align 8
  br label %cleanup

for.inc19:                                        ; preds = %land.lhs.true11.for.inc19_crit_edge, %land.lhs.true7.for.inc19_crit_edge, %land.lhs.true.for.inc19_crit_edge, %for.body4.for.inc19_crit_edge
  %21 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn47, align 8
  %cmp3.not = icmp eq ptr %.pn, %t_items
  br i1 %cmp3.not, label %for.inc19.cleanup_crit_edge, label %for.inc19.for.body4_crit_edge

for.inc19.for.body4_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.inc19.cleanup_crit_edge:                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc19.cleanup_crit_edge, %cond.end, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %20, %cond.end ], [ null, %for.end.cleanup_crit_edge ], [ null, %for.inc19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_stale(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_get_buf_recur(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_get_buf_recur, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_get_buf_recur, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %call42 = tail call i32 @__traceiter_xfs_trans_get_buf_recur(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_get_buf_recur, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_get_buf_recur, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_get_buf_recur.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_get_buf_recur.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 620, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define internal fastcc void @trace_xfs_trans_get_buf(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_get_buf, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_get_buf, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %call42 = tail call i32 @__traceiter_xfs_trans_get_buf(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_get_buf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_get_buf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_get_buf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_get_buf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 619, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_trans_getsb(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_sb_bp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_sb_bp, align 16
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %5, %tp
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_log_item, align 4
  %cmp1.not = icmp eq ptr %7, null
  br i1 %cmp1.not, label %cond.false, label %if.then.cond.end_crit_edge, !prof !120

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 184) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %7, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %8 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp sgt i32 %9, 0
  br i1 %cmp3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !113

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 185) #8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %bli_recur = getelementptr inbounds %struct.xfs_buf_log_item, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %bli_recur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bli_recur, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %bli_recur, align 8
  tail call fastcc void @trace_xfs_trans_getsb_recur(ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_buf_lock(ptr noundef %3) #8
  tail call void @xfs_buf_hold(ptr noundef %3) #8
  tail call fastcc void @_xfs_trans_bjoin(ptr noundef %tp, ptr noundef %3, i32 noundef 1)
  %b_log_item13 = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %b_log_item13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_log_item13, align 4
  tail call fastcc void @trace_xfs_trans_getsb(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  ret ptr %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_getsb_recur(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_getsb_recur, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_getsb_recur, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
  %call42 = tail call i32 @__traceiter_xfs_trans_getsb_recur(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_getsb_recur, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_getsb_recur, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_getsb_recur.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_getsb_recur.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 622, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
declare dso_local void @xfs_buf_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_getsb(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_getsb, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_getsb, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %call42 = tail call i32 @__traceiter_xfs_trans_getsb(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_getsb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_getsb, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_getsb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_getsb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 621, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define dso_local i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef %tp, ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr nocapture noundef writeonly %bpp, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bp, align 4
  %1 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bpp, align 4
  %tobool.not = icmp eq ptr %tp, null
  br i1 %tobool.not, label %entry.if.end95_crit_edge, label %if.end

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @xfs_trans_buf_item_match(ptr noundef nonnull %tp, ptr noundef %target, ptr noundef %map, i32 noundef %nmaps)
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bp, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.if.end95_crit_edge, label %if.then2

if.end.if.end95_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then2:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.xfs_buf, ptr %call, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2.cond.end_crit_edge, label %cond.false, !prof !113

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 237) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then2.cond.end_crit_edge
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_transp, align 8
  %cmp5 = icmp eq ptr %8, %tp
  br i1 %cmp5, label %cond.end.cond.end14_crit_edge, label %cond.false13, !prof !113

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 238) #8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_log_item, align 4
  %cmp15.not = icmp eq ptr %12, null
  br i1 %cmp15.not, label %cond.false23, label %cond.end14.cond.end24_crit_edge, !prof !120

cond.end14.cond.end24_crit_edge:                  ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 239) #8
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.end14.cond.end24_crit_edge
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 31
  %15 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %cond.end24.cond.end36_crit_edge, label %cond.false35, !prof !113

cond.end24.cond.end36_crit_edge:                  ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 240) #8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end24.cond.end36_crit_edge
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_flags, align 4
  %and = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %cond.false45, label %cond.end36.cond.end46_crit_edge, !prof !120

cond.end36.cond.end46_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 241) #8
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.end36.cond.end46_crit_edge
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %21 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %m_opstate.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bp, align 4
  br i1 %tobool.i.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call ptr @llvm.returnaddress(i32 0)
  %27 = ptrtoint ptr %26 to i32
  tail call fastcc void @trace_xfs_trans_read_buf_shut(ptr noundef %25, i32 noundef %27)
  br label %cleanup

if.end49:                                         ; preds = %cond.end46
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %25, i32 0, i32 35
  %28 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_ops, align 4
  %cmp50.not = icmp eq ptr %29, null
  br i1 %cmp50.not, label %cond.false58, label %if.end49.cond.end59_crit_edge, !prof !120

if.end49.cond.end59_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end59

cond.false58:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 264) #8
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false58, %if.end49.cond.end59_crit_edge
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %call60 = tail call i32 @xfs_buf_reverify(ptr noundef %31, ptr noundef %ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end70, label %if.then62

if.then62:                                        ; preds = %cond.end59
  %32 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_buf_ioerror_alert(ptr noundef %31, ptr noundef %32) #8
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %33 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %t_flags, align 4
  %and63 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then62.if.end66_crit_edge, label %if.then65

if.then62.if.end66_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %35 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t_mountp, align 4
  tail call void @xfs_do_force_shutdown(ptr noundef %36, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 271) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.then62.if.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call60)
  %cmp67 = icmp eq i32 %call60, -74
  %spec.store.select = select i1 %cmp67, i32 -117, i32 %call60
  br label %cleanup

if.end70:                                         ; preds = %cond.end59
  %b_log_item71 = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 19
  %37 = ptrtoint ptr %b_log_item71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_log_item71, align 4
  %bli_recur = getelementptr inbounds %struct.xfs_buf_log_item, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %bli_recur to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bli_recur, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %bli_recur, align 8
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %38, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %41 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp73 = icmp sgt i32 %42, 0
  br i1 %cmp73, label %if.end70.cond.end82_crit_edge, label %cond.false81, !prof !113

if.end70.cond.end82_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end82

cond.false81:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 282) #8
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false81, %if.end70.cond.end82_crit_edge
  tail call fastcc void @trace_xfs_trans_read_buf_recur(ptr noundef %38)
  %43 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bp, align 4
  %b_ops83 = getelementptr inbounds %struct.xfs_buf, ptr %44, i32 0, i32 35
  %45 = ptrtoint ptr %b_ops83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_ops83, align 4
  %cmp84.not = icmp ne ptr %46, null
  %cmp85 = icmp eq ptr %ops, null
  %spec.select = or i1 %cmp85, %cmp84.not
  br i1 %spec.select, label %cond.end82.cond.end94_crit_edge, label %cond.false93, !prof !113

cond.end82.cond.end94_crit_edge:                  ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end94

cond.false93:                                     ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 284) #8
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %cond.end82.cond.end94_crit_edge
  %47 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bp, align 4
  %49 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %bpp, align 4
  br label %cleanup

if.end95:                                         ; preds = %if.end.if.end95_crit_edge, %entry.if.end95_crit_edge
  %50 = tail call ptr @llvm.returnaddress(i32 0)
  %call96 = call i32 @xfs_buf_read_map(ptr noundef %target, ptr noundef %map, i32 noundef %nmaps, i32 noundef %flags, ptr noundef nonnull %bp, ptr noundef %ops, ptr noundef %50) #8
  %51 = zext i32 %call96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call96, label %sw.default [
    i32 0, label %sw.epilog
    i32 -12, label %if.end95.cleanup_crit_edge
    i32 -11, label %if.end95.cleanup_crit_edge155
  ]

if.end95.cleanup_crit_edge155:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %if.end95
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %land.lhs.true

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.default
  %t_flags98 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %52 = ptrtoint ptr %t_flags98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %t_flags98, align 4
  %and99 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %land.lhs.true.cleanup_crit_edge, label %if.then101

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then101:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %t_mountp102 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %54 = ptrtoint ptr %t_mountp102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %t_mountp102, align 4
  call void @xfs_do_force_shutdown(ptr noundef %55, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 296) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end95
  %m_opstate.i152 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %56 = ptrtoint ptr %m_opstate.i152 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %m_opstate.i152, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i153.not = icmp eq i32 %58, 0
  br i1 %tobool.i153.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %60) #8
  call void @xfs_buf_rele(ptr noundef %60) #8
  %61 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bp, align 4
  %63 = ptrtoint ptr %50 to i32
  call fastcc void @trace_xfs_trans_read_buf_shut(ptr noundef %62, i32 noundef %63)
  br label %cleanup

if.end106:                                        ; preds = %sw.epilog
  br i1 %tobool.not, label %if.end106.if.end110_crit_edge, label %if.then108

if.end106.if.end110_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bp, align 4
  call fastcc void @_xfs_trans_bjoin(ptr noundef nonnull %tp, ptr noundef %65, i32 noundef 1)
  %66 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bp, align 4
  %b_log_item109 = getelementptr inbounds %struct.xfs_buf, ptr %67, i32 0, i32 19
  %68 = ptrtoint ptr %b_log_item109 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_log_item109, align 4
  call fastcc void @trace_xfs_trans_read_buf(ptr noundef %69)
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end106.if.end110_crit_edge
  %70 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bp, align 4
  %b_ops111 = getelementptr inbounds %struct.xfs_buf, ptr %71, i32 0, i32 35
  %72 = ptrtoint ptr %b_ops111 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %b_ops111, align 4
  %cmp112.not = icmp ne ptr %73, null
  %cmp114 = icmp eq ptr %ops, null
  %spec.select151 = or i1 %cmp114, %cmp112.not
  br i1 %spec.select151, label %if.end110.cond.end124_crit_edge, label %cond.false123, !prof !113

if.end110.cond.end124_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end124

cond.false123:                                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 313) #8
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false123, %if.end110.cond.end124_crit_edge
  %74 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bp, align 4
  %76 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end124, %if.then105, %if.then101, %land.lhs.true.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.end95.cleanup_crit_edge155, %cond.end94, %if.end66, %if.then48
  %retval.0 = phi i32 [ -5, %if.then48 ], [ %spec.store.select, %if.end66 ], [ 0, %cond.end94 ], [ -5, %if.then105 ], [ 0, %cond.end124 ], [ %call96, %sw.default.cleanup_crit_edge ], [ %call96, %land.lhs.true.cleanup_crit_edge ], [ %call96, %if.then101 ], [ %call96, %if.end95.cleanup_crit_edge ], [ %call96, %if.end95.cleanup_crit_edge155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_read_buf_shut(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf_shut, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_read_buf_shut, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !129
  %call42 = tail call i32 @__traceiter_xfs_trans_read_buf_shut(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf_shut, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf_shut, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_read_buf_shut.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_read_buf_shut.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 470, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_reverify(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_ioerror_alert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_read_buf_recur(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf_recur, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_read_buf_recur, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !131
  %call42 = tail call i32 @__traceiter_xfs_trans_read_buf_recur(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf_recur, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf_recur, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_read_buf_recur.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_read_buf_recur.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 624, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
declare dso_local i32 @xfs_buf_read_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_read_buf(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_read_buf, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !133
  %call42 = tail call i32 @__traceiter_xfs_trans_read_buf(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_read_buf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_read_buf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_read_buf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 623, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define dso_local zeroext i1 @xfs_trans_buf_is_dirty(ptr nocapture noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %li_type = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %li_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %li_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4668, i32 %3)
  %cmp = icmp eq i32 %3, 4668
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !113

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 328) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %li_flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool4, %cond.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_brelse(ptr noundef readnone %tp, ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 351) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %tobool2.not = icmp eq ptr %tp, null
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_buf_unlock(ptr noundef %bp) #8
  tail call void @xfs_buf_rele(ptr noundef %bp) #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call fastcc void @trace_xfs_trans_brelse(ptr noundef %1)
  %li_type = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %li_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %li_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4668, i32 %5)
  %cmp3 = icmp eq i32 %5, 4668
  br i1 %cmp3, label %if.end.cond.end12_crit_edge, label %cond.false11, !prof !113

if.end.cond.end12_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12

cond.false11:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 359) #8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %if.end.cond.end12_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %6 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13 = icmp sgt i32 %7, 0
  br i1 %cmp13, label %cond.end12.cond.end22_crit_edge, label %cond.false21, !prof !113

cond.end12.cond.end22_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 360) #8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end12.cond.end22_crit_edge
  %bli_recur = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bli_recur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bli_recur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23.not = icmp eq i32 %9, 0
  br i1 %cmp23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %9, -1
  %10 = ptrtoint ptr %bli_recur to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %bli_recur, align 8
  br label %cleanup

if.end26:                                         ; preds = %cond.end22
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %li_flags, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool29.not = icmp eq i32 %13, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bli_flags, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %and36 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.cond.end48_crit_edge, label %cond.false47, !prof !113

if.end34.cond.end48_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end48

cond.false47:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 384) #8
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %if.end34.cond.end48_crit_edge
  tail call void @xfs_trans_del_item(ptr noundef %1) #8
  %16 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bli_flags, align 4
  %and51 = and i32 %17, -2
  store i32 %and51, ptr %bli_flags, align 4
  %call52 = tail call zeroext i1 @xfs_buf_item_put(ptr noundef %1) #8
  %18 = ptrtoint ptr %b_transp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %b_transp, align 8
  tail call void @xfs_buf_unlock(ptr noundef %bp) #8
  tail call void @xfs_buf_rele(ptr noundef %bp) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end48, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then24, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_brelse(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_brelse, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_brelse, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !135
  %call42 = tail call i32 @__traceiter_xfs_trans_brelse(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_brelse, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_brelse, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_brelse.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_brelse.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 626, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
declare dso_local void @xfs_trans_del_item(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_item_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_bhold(ptr noundef readnone %tp, ptr nocapture noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 408) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 409) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bli_flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %cond.end11.cond.end23_crit_edge, label %cond.false22, !prof !113

cond.end11.cond.end23_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 410) #8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.end11.cond.end23_crit_edge
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blf_flags, align 4
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool25.not = icmp eq i16 %8, 0
  br i1 %tobool25.not, label %cond.end23.cond.end36_crit_edge, label %cond.false35, !prof !113

cond.end23.cond.end36_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 411) #8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end23.cond.end36_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %9 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp37 = icmp sgt i32 %10, 0
  br i1 %cmp37, label %cond.end36.cond.end47_crit_edge, label %cond.false46, !prof !113

cond.end36.cond.end47_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 412) #8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end36.cond.end47_crit_edge
  %11 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bli_flags, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %bli_flags, align 4
  tail call fastcc void @trace_xfs_trans_bhold(ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_bhold(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bhold, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_bhold, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %call42 = tail call i32 @__traceiter_xfs_trans_bhold(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bhold, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bhold, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_bhold.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_bhold.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 628, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define dso_local void @xfs_trans_bhold_release(ptr noundef readnone %tp, ptr nocapture noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 429) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 430) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bli_flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %cond.end11.cond.end23_crit_edge, label %cond.false22, !prof !113

cond.end11.cond.end23_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 431) #8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.end11.cond.end23_crit_edge
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blf_flags, align 4
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool25.not = icmp eq i16 %8, 0
  br i1 %tobool25.not, label %cond.end23.cond.end36_crit_edge, label %cond.false35, !prof !113

cond.end23.cond.end36_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 432) #8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end23.cond.end36_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %9 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp37 = icmp sgt i32 %10, 0
  br i1 %cmp37, label %cond.end36.cond.end47_crit_edge, label %cond.false46, !prof !113

cond.end36.cond.end47_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433) #8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end36.cond.end47_crit_edge
  %11 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bli_flags, align 4
  %and49 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %cond.false58, label %cond.end47.cond.end59_crit_edge, !prof !120

cond.end47.cond.end59_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end59

cond.false58:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 434) #8
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false58, %cond.end47.cond.end59_crit_edge
  %13 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bli_flags, align 4
  %and61 = and i32 %14, -2
  store i32 %and61, ptr %bli_flags, align 4
  tail call fastcc void @trace_xfs_trans_bhold_release(ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_bhold_release(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bhold_release, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_bhold_release, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %call42 = tail call i32 @__traceiter_xfs_trans_bhold_release(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bhold_release, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_bhold_release, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_bhold_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_bhold_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 629, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define dso_local void @xfs_trans_dirty_buf(ptr noundef %tp, ptr nocapture noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 450) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 451) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %4 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_flags, align 4
  %or = or i32 %5, 32
  store i32 %or, ptr %b_flags, align 4
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %6 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %cond.end11.cond.end21_crit_edge, label %cond.false20, !prof !113

cond.end11.cond.end21_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 461) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end11.cond.end21_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bli_flags, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %cond.end21.if.end_crit_edge, label %if.then

cond.end21.if.end_crit_edge:                      ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end21
  %and24 = and i32 %9, -5
  %10 = ptrtoint ptr %bli_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and24, ptr %bli_flags, align 4
  %11 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_flags, align 4
  %and26 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %cond.false35, label %if.then.cond.end36_crit_edge, !prof !120

if.then.cond.end36_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.false35:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 471) #8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %if.then.cond.end36_crit_edge
  %13 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_flags, align 4
  %and38 = and i32 %14, -65
  store i32 %and38, ptr %b_flags, align 4
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %blf_flags, align 4
  %17 = and i16 %16, -3
  store i16 %17, ptr %blf_flags, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end36, %cond.end21.if.end_crit_edge
  %18 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bli_flags, align 4
  %or42 = or i32 %19, 10
  store i32 %or42, ptr %bli_flags, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %20 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_flags, align 4
  %or43 = or i32 %21, 1
  store i32 %or43, ptr %t_flags, align 4
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_log_buf(ptr noundef %tp, ptr nocapture noundef %bp, i32 noundef %first, i32 noundef %last) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %first, i32 %last)
  %cmp.not = icmp ugt i32 %first, %last
  br i1 %cmp.not, label %entry.cond.false_crit_edge, label %land.rhs, !prof !120

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %2 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_length, align 8
  %shl = shl i32 %3, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %last)
  %cmp1 = icmp ugt i32 %shl, %last
  br i1 %cmp1, label %land.rhs.cond.end_crit_edge, label %land.rhs.cond.false_crit_edge, !prof !113

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 499) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bli_flags, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.end.cond.end14_crit_edge, label %cond.false13, !prof !113

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 500) #8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  tail call void @xfs_trans_dirty_buf(ptr noundef %tp, ptr noundef %bp)
  tail call fastcc void @trace_xfs_trans_log_buf(ptr noundef %1)
  tail call void @xfs_buf_item_log(ptr noundef %1, i32 noundef %first, i32 noundef %last) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_log_buf(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_log_buf, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_log_buf, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %call42 = tail call i32 @__traceiter_xfs_trans_log_buf(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_log_buf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_log_buf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_log_buf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_log_buf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 625, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
declare dso_local void @xfs_buf_item_log(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_binval(ptr noundef %tp, ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 546) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 547) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %cond.end11.cond.end21_crit_edge, label %cond.false20, !prof !113

cond.end11.cond.end21_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 548) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end11.cond.end21_crit_edge
  tail call fastcc void @trace_xfs_trans_binval(ptr noundef %1)
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bli_flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end21
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %8 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_flags, align 4
  %and23 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.false32, label %if.then.cond.end33_crit_edge, !prof !120

if.then.cond.end33_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end33

cond.false32:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 557) #8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %if.then.cond.end33_crit_edge
  %10 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bli_flags, align 4
  %and35 = and i32 %11, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %cond.end33.cond.end47_crit_edge, label %cond.false46, !prof !113

cond.end33.cond.end47_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 558) #8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end33.cond.end47_crit_edge
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blf_flags, align 4
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool49.not = icmp eq i16 %14, 0
  br i1 %tobool49.not, label %cond.end47.cond.end60_crit_edge, label %cond.false59, !prof !113

cond.end47.cond.end60_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 559) #8
  %15 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %.pr = load i16, ptr %blf_flags, align 4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.end47.cond.end60_crit_edge
  %16 = phi i16 [ %13, %cond.end47.cond.end60_crit_edge ], [ %.pr, %cond.false59 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %tobool65.not = icmp ult i16 %16, 2048
  br i1 %tobool65.not, label %cond.end60.cond.end76_crit_edge, label %cond.false75, !prof !113

cond.end60.cond.end76_crit_edge:                  ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end76

cond.false75:                                     ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 560) #8
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false75, %cond.end60.cond.end76_crit_edge
  %17 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %blf_flags, align 4
  %19 = and i16 %18, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool81.not = icmp eq i16 %19, 0
  br i1 %tobool81.not, label %cond.false89, label %cond.end76.cond.end90_crit_edge, !prof !120

cond.end76.cond.end90_crit_edge:                  ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 561) #8
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.end76.cond.end90_crit_edge
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %li_flags, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool92.not = icmp eq i32 %22, 0
  br i1 %tobool92.not, label %cond.false100, label %cond.end90.cond.end101_crit_edge, !prof !120

cond.end90.cond.end101_crit_edge:                 ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end101

cond.false100:                                    ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 562) #8
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %cond.end90.cond.end101_crit_edge
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %23 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t_flags, align 4
  %and102 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %cond.false111, label %cond.end101.cleanup_crit_edge, !prof !120

cond.end101.cleanup_crit_edge:                    ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false111:                                    ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 563) #8
  br label %cleanup

if.end:                                           ; preds = %cond.end21
  tail call void @xfs_buf_stale(ptr noundef %bp) #8
  %25 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bli_flags, align 4
  %or = and i32 %26, -79
  %and115 = or i32 %or, 4
  store i32 %and115, ptr %bli_flags, align 4
  %blf_flags117 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %blf_flags117 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %blf_flags117, align 4
  %29 = and i16 %28, 2044
  %30 = or i16 %29, 2
  store i16 %30, ptr %blf_flags117, align 4
  %bli_format_count = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp131165 = icmp sgt i32 %32, 0
  br i1 %cmp131165, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %33 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bli_formats, align 4
  %blf_data_map = getelementptr %struct.xfs_buf_log_format, ptr %34, i32 %i.0166, i32 6
  %blf_map_size = getelementptr %struct.xfs_buf_log_format, ptr %34, i32 %i.0166, i32 5
  %35 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blf_map_size, align 8
  %mul = shl i32 %36, 2
  %37 = call ptr @memset(ptr %blf_data_map, i32 0, i32 %mul)
  %inc = add nuw nsw i32 %i.0166, 1
  %38 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bli_format_count, align 8
  %cmp131 = icmp slt i32 %inc, %39
  br i1 %cmp131, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %li_flags136 = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags136) #8
  %t_flags137 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %40 = ptrtoint ptr %t_flags137 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %t_flags137, align 4
  %or138 = or i32 %41, 1
  store i32 %or138, ptr %t_flags137, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cond.false111, %cond.end101.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_binval(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_binval, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_binval, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  %call42 = tail call i32 @__traceiter_xfs_trans_binval(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_binval, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_binval, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_binval.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_binval.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 630, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define dso_local void @xfs_trans_inode_buf(ptr noundef readnone %tp, ptr nocapture noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 600) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 601) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %cond.end11.cond.end21_crit_edge, label %cond.false20, !prof !113

cond.end11.cond.end21_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 602) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end11.cond.end21_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bli_flags, align 4
  %or = or i32 %7, 64
  store i32 %or, ptr %bli_flags, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %8 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_flags, align 4
  %or22 = or i32 %9, 65536
  store i32 %or22, ptr %b_flags, align 4
  %10 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_log_item, align 4
  %tobool.not.i = icmp eq ptr %tp, null
  br i1 %tobool.not.i, label %cond.end21.xfs_trans_buf_set_type.exit_crit_edge, label %if.end.i

cond.end21.xfs_trans_buf_set_type.exit_crit_edge: ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_buf_set_type.exit

if.end.i:                                         ; preds = %cond.end21
  %12 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_transp, align 8
  %cmp.i = icmp eq ptr %13, %tp
  br i1 %cmp.i, label %if.end.i.cond.end.i_crit_edge, label %cond.false.i, !prof !113

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 706) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cmp3.not.i = icmp eq ptr %11, null
  br i1 %cmp3.not.i, label %cond.false11.i, label %cond.end.i.cond.end12.i_crit_edge, !prof !120

cond.end.i.cond.end12.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12.i

cond.false11.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 707) #8
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false11.i, %cond.end.i.cond.end12.i_crit_edge
  %bli_refcount.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %11, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %bli_refcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bli_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.i = icmp sgt i32 %15, 0
  br i1 %cmp13.i, label %cond.end12.i.cond.end22.i_crit_edge, label %cond.false21.i, !prof !113

cond.end12.i.cond.end22.i_crit_edge:              ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end22.i

cond.false21.i:                                   ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 708) #8
  br label %cond.end22.i

cond.end22.i:                                     ; preds = %cond.false21.i, %cond.end12.i.cond.end22.i_crit_edge
  %blf_flags.i.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %11, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %blf_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %blf_flags.i.i, align 4
  %18 = and i16 %17, 2047
  %conv7.i.i = or i16 %18, 16384
  store i16 %conv7.i.i, ptr %blf_flags.i.i, align 4
  br label %xfs_trans_buf_set_type.exit

xfs_trans_buf_set_type.exit:                      ; preds = %cond.end22.i, %cond.end21.xfs_trans_buf_set_type.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_buf_set_type(ptr noundef readnone %tp, ptr nocapture noundef readonly %bp, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %tobool.not = icmp eq ptr %tp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !113

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 706) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !120

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 707) #8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13 = icmp sgt i32 %5, 0
  br i1 %cmp13, label %cond.end12.cond.end22_crit_edge, label %cond.false21, !prof !113

cond.end12.cond.end22_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 708) #8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end12.cond.end22_crit_edge
  %6 = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %7 = icmp ult i32 %6, 31
  br i1 %7, label %cond.end22.xfs_blft_to_flags.exit_crit_edge, label %cond.false.i, !prof !113

cond.end22.xfs_blft_to_flags.exit_crit_edge:      ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_blft_to_flags.exit

cond.false.i:                                     ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 537) #8
  br label %xfs_blft_to_flags.exit

xfs_blft_to_flags.exit:                           ; preds = %cond.false.i, %cond.end22.xfs_blft_to_flags.exit_crit_edge
  %blf_flags.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %blf_flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blf_flags.i, align 4
  %10 = and i16 %9, 2047
  %type.tr.i = trunc i32 %type to i16
  %11 = shl i16 %type.tr.i, 11
  %conv7.i = or i16 %10, %11
  store i16 %conv7.i, ptr %blf_flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_blft_to_flags.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_stale_inode_buf(ptr noundef readnone %tp, ptr nocapture noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 625) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 626) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %cond.end11.cond.end21_crit_edge, label %cond.false20, !prof !113

cond.end11.cond.end21_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 627) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end11.cond.end21_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bli_flags, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %bli_flags, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %8 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_flags, align 4
  %or22 = or i32 %9, 65536
  store i32 %or22, ptr %b_flags, align 4
  %10 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_log_item, align 4
  %tobool.not.i = icmp eq ptr %tp, null
  br i1 %tobool.not.i, label %cond.end21.xfs_trans_buf_set_type.exit_crit_edge, label %if.end.i

cond.end21.xfs_trans_buf_set_type.exit_crit_edge: ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_buf_set_type.exit

if.end.i:                                         ; preds = %cond.end21
  %12 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_transp, align 8
  %cmp.i = icmp eq ptr %13, %tp
  br i1 %cmp.i, label %if.end.i.cond.end.i_crit_edge, label %cond.false.i, !prof !113

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 706) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cmp3.not.i = icmp eq ptr %11, null
  br i1 %cmp3.not.i, label %cond.false11.i, label %cond.end.i.cond.end12.i_crit_edge, !prof !120

cond.end.i.cond.end12.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12.i

cond.false11.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 707) #8
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false11.i, %cond.end.i.cond.end12.i_crit_edge
  %bli_refcount.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %11, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %bli_refcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bli_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.i = icmp sgt i32 %15, 0
  br i1 %cmp13.i, label %cond.end12.i.cond.end22.i_crit_edge, label %cond.false21.i, !prof !113

cond.end12.i.cond.end22.i_crit_edge:              ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end22.i

cond.false21.i:                                   ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 708) #8
  br label %cond.end22.i

cond.end22.i:                                     ; preds = %cond.false21.i, %cond.end12.i.cond.end22.i_crit_edge
  %blf_flags.i.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %11, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %blf_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %blf_flags.i.i, align 4
  %18 = and i16 %17, 2047
  %conv7.i.i = or i16 %18, 16384
  store i16 %conv7.i.i, ptr %blf_flags.i.i, align 4
  br label %xfs_trans_buf_set_type.exit

xfs_trans_buf_set_type.exit:                      ; preds = %cond.end22.i, %cond.end21.xfs_trans_buf_set_type.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_inode_alloc_buf(ptr noundef readnone %tp, ptr nocapture noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 650) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 651) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %cond.end11.cond.end21_crit_edge, label %cond.false20, !prof !113

cond.end11.cond.end21_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 652) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end11.cond.end21_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bli_flags, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %bli_flags, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %8 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_flags, align 4
  %or22 = or i32 %9, 65536
  store i32 %or22, ptr %b_flags, align 4
  %10 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_log_item, align 4
  %tobool.not.i = icmp eq ptr %tp, null
  br i1 %tobool.not.i, label %cond.end21.xfs_trans_buf_set_type.exit_crit_edge, label %if.end.i

cond.end21.xfs_trans_buf_set_type.exit_crit_edge: ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_buf_set_type.exit

if.end.i:                                         ; preds = %cond.end21
  %12 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_transp, align 8
  %cmp.i = icmp eq ptr %13, %tp
  br i1 %cmp.i, label %if.end.i.cond.end.i_crit_edge, label %cond.false.i, !prof !113

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 706) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cmp3.not.i = icmp eq ptr %11, null
  br i1 %cmp3.not.i, label %cond.false11.i, label %cond.end.i.cond.end12.i_crit_edge, !prof !120

cond.end.i.cond.end12.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12.i

cond.false11.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 707) #8
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false11.i, %cond.end.i.cond.end12.i_crit_edge
  %bli_refcount.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %11, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %bli_refcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bli_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.i = icmp sgt i32 %15, 0
  br i1 %cmp13.i, label %cond.end12.i.cond.end22.i_crit_edge, label %cond.false21.i, !prof !113

cond.end12.i.cond.end22.i_crit_edge:              ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end22.i

cond.false21.i:                                   ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 708) #8
  br label %cond.end22.i

cond.end22.i:                                     ; preds = %cond.false21.i, %cond.end12.i.cond.end22.i_crit_edge
  %blf_flags.i.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %11, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %blf_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %blf_flags.i.i, align 4
  %18 = and i16 %17, 2047
  %conv7.i.i = or i16 %18, 16384
  store i16 %conv7.i.i, ptr %blf_flags.i.i, align 4
  br label %xfs_trans_buf_set_type.exit

xfs_trans_buf_set_type.exit:                      ; preds = %cond.end22.i, %cond.end21.xfs_trans_buf_set_type.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_trans_ordered_buf(ptr noundef %tp, ptr nocapture noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %2 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_transp, align 8
  %cmp = icmp eq ptr %3, %tp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !113

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 673) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %cond.false10, label %cond.end.cond.end11_crit_edge, !prof !120

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 674) #8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %cond.end11.cond.end21_crit_edge, label %cond.false20, !prof !113

cond.end11.cond.end21_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 675) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end11.cond.end21_crit_edge
  %call22 = tail call zeroext i1 @xfs_buf_item_dirty_format(ptr noundef %1) #8
  br i1 %call22, label %cond.end21.cleanup_crit_edge, label %if.end

cond.end21.cleanup_crit_edge:                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bli_flags, align 4
  %or = or i32 %7, 128
  store i32 %or, ptr %bli_flags, align 4
  tail call fastcc void @trace_xfs_buf_item_ordered(ptr noundef %1)
  tail call void @xfs_trans_dirty_buf(ptr noundef %tp, ptr noundef %bp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end21.cleanup_crit_edge
  %8 = xor i1 %call22, true
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_item_dirty_format(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_ordered(ptr noundef %bip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_ordered, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_ordered, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %call42 = tail call i32 @__traceiter_xfs_buf_item_ordered(ptr noundef null, ptr noundef %bip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_ordered, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_ordered, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_ordered.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_buf_item_ordered.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 612, ptr noundef nonnull @.str.27) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #8
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
define dso_local void @xfs_trans_buf_copy_type(ptr nocapture noundef readonly %dst_bp, ptr nocapture noundef readonly %src_bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %src_bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_log_item1 = getelementptr inbounds %struct.xfs_buf, ptr %dst_bp, i32 0, i32 19
  %2 = ptrtoint ptr %b_log_item1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_log_item1, align 4
  %blf_flags.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %blf_flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blf_flags.i, align 4
  %6 = lshr i16 %5, 11
  %conv = zext i16 %6 to i32
  %7 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %8 = icmp ult i32 %7, 31
  br i1 %8, label %entry.xfs_blft_to_flags.exit_crit_edge, label %cond.false.i, !prof !113

entry.xfs_blft_to_flags.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_blft_to_flags.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 537) #8
  br label %xfs_blft_to_flags.exit

xfs_blft_to_flags.exit:                           ; preds = %cond.false.i, %entry.xfs_blft_to_flags.exit_crit_edge
  %blf_flags.i3 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %3, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %blf_flags.i3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %blf_flags.i3, align 4
  %11 = and i16 %10, 2047
  %12 = and i16 %5, -2048
  %conv7.i = or i16 %11, %12
  store i16 %conv7.i, ptr %blf_flags.i3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_dquot_buf(ptr noundef %tp, ptr nocapture noundef %bp, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %type, label %cond.false.critedge [
    i32 4, label %entry.cond.end_crit_edge
    i32 8, label %entry.cond.end_crit_edge15
    i32 16, label %entry.cond.end_crit_edge16
  ]

entry.cond.end_crit_edge16:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge15:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 747) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge15, %entry.cond.end_crit_edge16
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %blf_flags, align 4
  %5 = trunc i32 %type to i16
  %conv4 = or i16 %4, %5
  store i16 %conv4, ptr %blf_flags, align 4
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %type, label %sw.default [
    i32 4, label %cond.end.sw.epilog_crit_edge
    i32 8, label %sw.bb5
    i32 16, label %sw.bb6
  ]

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %cond.end.sw.epilog_crit_edge
  %type.addr.0 = phi i32 [ 0, %sw.default ], [ 3, %sw.bb6 ], [ 2, %sw.bb5 ], [ 1, %cond.end.sw.epilog_crit_edge ]
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %7 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_flags, align 4
  %or7 = or i32 %8, 131072
  store i32 %or7, ptr %b_flags, align 4
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %bp, i32 noundef %type.addr.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_item_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_add_item(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_bjoin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_get_buf_recur(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_getsb_recur(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_getsb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_read_buf_shut(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_read_buf_recur(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_read_buf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_bhold_release(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_log_buf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_binval(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_ordered(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_trans_buf.c", i32 140, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_trans_buf.c", i32 146, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_trans_buf.c", i32 148, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_trans_buf.c", i32 149, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_trans_buf.c", i32 160, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_trans_buf.c", i32 239, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_trans_buf.c", i32 241, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_trans_buf.c", i32 264, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_trans_buf.c", i32 284, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trans_buf.c", i32 328, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_trans_buf.c", i32 384, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_trans_buf.c", i32 410, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trans_buf.c", i32 411, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_trans_buf.c", i32 434, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_trans_buf.c", i32 471, i32 3}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trans_buf.c", i32 499, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_trans_buf.c", i32 500, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_trans_buf.c", i32 558, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trans_buf.c", i32 559, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_trans_buf.c", i32 560, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_trans_buf.c", i32 561, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_trans_buf.c", i32 562, i32 3}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_trans_buf.c", i32 563, i32 3}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trans_buf.c", i32 745, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_trans_buf.c", i32 68, i32 2}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_trace.h", i32 627, i32 1}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trans_buf.c", i32 43, i32 4}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_trace.h", i32 620, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_trace.h", i32 619, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_trace.h", i32 622, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_trace.h", i32 621, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_trace.h", i32 470, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/xfs/xfs_trace.h", i32 624, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_trace.h", i32 623, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../fs/xfs/xfs_trace.h", i32 626, i32 1}
!84 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../fs/xfs/xfs_trace.h", i32 628, i32 1}
!87 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../fs/xfs/xfs_trace.h", i32 629, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_trace.h", i32 625, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_trace.h", i32 630, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../fs/xfs/xfs_trace.h", i32 612, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/xfs/libxfs/xfs_log_format.h", i32 537, i32 2}
!102 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
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
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2148635863, i64 2148635889, i64 2148635918, i64 2148635952, i64 2148635983, i64 2148636006}
!115 = !{i64 2148263851, i64 2148263856, i64 2148263869, i64 2148263913, i64 2148263947, i64 2148263968}
!116 = !{i64 2157452058}
!117 = !{i64 2157452257}
!118 = !{i64 2149965944}
!119 = !{i64 2149966980}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2157328025}
!122 = !{i64 2157328240}
!123 = !{i64 2157307326}
!124 = !{i64 2157307529}
!125 = !{i64 2157361127}
!126 = !{i64 2157361338}
!127 = !{i64 2157344675}
!128 = !{i64 2157344874}
!129 = !{i64 2156968620}
!130 = !{i64 2156968855}
!131 = !{i64 2157398578}
!132 = !{i64 2157398795}
!133 = !{i64 2157377786}
!134 = !{i64 2157377991}
!135 = !{i64 2157431725}
!136 = !{i64 2157431926}
!137 = !{i64 2157468276}
!138 = !{i64 2157468475}
!139 = !{i64 2157484806}
!140 = !{i64 2157485021}
!141 = !{i64 2157415360}
!142 = !{i64 2157415563}
!143 = !{i64 2157501495}
!144 = !{i64 2157501696}
!145 = !{i64 2157186880}
!146 = !{i64 2157187089}
