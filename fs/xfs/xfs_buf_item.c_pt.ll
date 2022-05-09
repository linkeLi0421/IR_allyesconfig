; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_buf_item.c_pt.bc'
source_filename = "../fs/xfs/xfs_buf_item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xfs_buf_log_format = type { i16, i16, i16, i16, i64, i32, [17 x i32] }
%struct.xfs_buf_log_item = type { %struct.xfs_log_item, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.xfs_buf_log_format }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.list_head = type { ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
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
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_log_vec = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bp->b_mount == mp\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/xfs_buf_item.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bip->bli_item.li_type == XFS_LI_BUF\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"!bp->b_transp\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bip->bli_buf == bp\00", [45 x i8] zeroinitializer }, align 32
@xfs_buf_item_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@xfs_buf_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 0, ptr @xfs_buf_item_size, ptr @xfs_buf_item_format, ptr @xfs_buf_item_pin, ptr @xfs_buf_item_unpin, ptr @xfs_buf_item_push, ptr @xfs_buf_item_committing, ptr @xfs_buf_item_release, ptr @xfs_buf_item_committed, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"buffer item dirty bitmap (%u uints) too small to reflect %u bytes!\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"!test_bit(XFS_LI_IN_AIL, &bip->bli_item.li_flags)\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"atomic_read(&bip->bli_refcount) > 0\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bip->__bli_format.blf_flags & XFS_BLF_CANCEL\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bip->bli_flags & XFS_BLI_LOGGED\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_size_stale = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_buf_item_size_stale.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_size_ordered = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_size_ordered.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nbits > 0\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_size = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"(bip->bli_flags & XFS_BLI_LOGGED) || (bip->bli_flags & XFS_BLI_STALE)\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [163 x i8], [61 x i8] } { [163 x i8] c"(bip->bli_flags & XFS_BLI_STALE) || (xfs_blft_from_flags(&bip->__bli_format) > XFS_BLFT_UNKNOWN_BUF && xfs_blft_from_flags(&bip->__bli_format) < XFS_BLFT_MAX_BUF)\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"!(bip->bli_flags & XFS_BLI_ORDERED) || (bip->bli_flags & XFS_BLI_STALE)\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"blfp->blf_flags & XFS_BLF_CANCEL\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"first_bit >= 0\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bp->b_addr == NULL\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vec - lv->lv_iovecp < lv->lv_niovecs\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/xfs/xfs_log.h\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IS_ALIGNED((unsigned long)vec->i_addr, sizeof(uint64_t))\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_format_stale = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_format_stale.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_item_format = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_format.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"(bip->bli_flags & XFS_BLI_LOGGED) || (bip->bli_flags & XFS_BLI_ORDERED) || (bip->bli_flags & XFS_BLI_STALE)\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_pin = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_pin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bp->b_log_item == bip\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bip->bli_flags & XFS_BLI_STALE\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xfs_buf_islocked(bp)\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bp->b_flags & XBF_STALE\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty(&lip->li_trans)\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty(&bp->b_li_list)\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bp->b_log_item == NULL\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_unpin = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_unpin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_item_unpin_stale = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_unpin_stale.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!(bip->bli_flags & XFS_BLI_STALE)\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"XFS: Failing async write\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failing async write on buffer block 0x%llx. Retrying async write.\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_push = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_push.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"(!ordered && dirty == xfs_buf_item_dirty_format(bip)) || (ordered && dirty && !xfs_buf_item_dirty_format(bip))\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"!stale || (bip->__bli_format.blf_flags & XFS_BLF_CANCEL)\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"!stale || aborted\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_release = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_buf_item_committed = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_committed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bip->bli_formats == NULL\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"first < XFS_BLF_DATAMAP_SIZE * XFS_BLF_CHUNK * NBWORD\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"last < XFS_BLF_DATAMAP_SIZE * XFS_BLF_CHUNK * NBWORD\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_buf_item_relse = external dso_local global %struct.tracepoint, align 4
@trace_xfs_buf_item_relse.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 799, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 801, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 802, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 803, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"xfs_buf_item_cache\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 26, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"xfs_buf_item_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 741, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 830, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1018, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 198, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 206, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 214, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 609, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 108, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 108, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 407, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 409, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 412, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 311, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 320, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 350, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 31, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"../fs/xfs/xfs_log.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 40, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 466, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 490, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 515, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 516, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 517, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 519, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 533, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 537, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 576, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 582, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 583, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 677, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 679, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 697, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 757, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 868, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [25 x i8] c"../fs/xfs/xfs_buf_item.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 869, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xfs_buf_item_cache, ptr @xfs_buf_item_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_item_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buf_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 163, i32 224, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_buf_log_check_iovec(ptr nocapture noundef readonly %iovec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %iovec, i32 0, i32 1
  %0 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp ult i32 %1, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %iovec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iovec, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %1
  %blf_map_size = getelementptr inbounds %struct.xfs_buf_log_format, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blf_map_size, align 8
  %arrayidx = getelementptr %struct.xfs_buf_log_format, ptr %3, i32 0, i32 6, i32 %5
  %cmp3 = icmp ule ptr %arrayidx, %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp3, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_buf_item_put(ptr noundef %bip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bli_refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %bli_refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bli_refcount, ptr %bli_refcount, i32 1, ptr elementtype(i32) %bli_refcount) #10, !srcloc !128
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %bip, i32 0, i32 6
  %1 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %li_flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.end, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.end:                                          ; preds = %if.end
  %li_mountp = getelementptr inbounds %struct.xfs_log_item, ptr %bip, i32 0, i32 3
  %4 = ptrtoint ptr %li_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %li_mountp, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp ne i32 %8, 0
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 2
  %9 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bli_flags, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool3.not, i1 true, i1 %tobool.i
  br i1 %brmerge, label %if.end8, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lor.end
  br i1 %tobool.i, label %if.end8.if.then10_crit_edge, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end.if.then10_crit_edge
  tail call void @xfs_trans_ail_delete(ptr noundef %bip, i32 noundef 0) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 1
  %11 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bli_buf, align 8
  %b_log_item.i = getelementptr inbounds %struct.xfs_buf, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %b_log_item.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_log_item.i, align 4
  %15 = tail call ptr @llvm.returnaddress(i32 0) #10
  %16 = ptrtoint ptr %15 to i32
  tail call fastcc void @trace_xfs_buf_item_relse(ptr noundef %12, i32 noundef %16) #10
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %li_flags.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end11.xfs_buf_item_relse.exit_crit_edge, label %cond.false.i, !prof !130

if.end11.xfs_buf_item_relse.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_relse.exit

cond.false.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1018) #10
  br label %xfs_buf_item_relse.exit

xfs_buf_item_relse.exit:                          ; preds = %cond.false.i, %if.end11.xfs_buf_item_relse.exit_crit_edge
  %19 = ptrtoint ptr %b_log_item.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %b_log_item.i, align 4
  tail call void @xfs_buf_rele(ptr noundef %12) #10
  tail call fastcc void @xfs_buf_item_free(ptr noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %xfs_buf_item_relse.exit, %lor.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %xfs_buf_item_relse.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_item_relse(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_buf_item_relse(ptr noundef %bp, i32 noundef %3)
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %li_flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !130

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1018) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %6 = ptrtoint ptr %b_log_item to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %b_log_item, align 4
  tail call void @xfs_buf_rele(ptr noundef %bp) #10
  tail call fastcc void @xfs_buf_item_free(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_buf_item_init(ptr noundef %bp, ptr noundef %mp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %2 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_mount, align 4
  %cmp = icmp eq ptr %3, %mp
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !130

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 799) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %li_type = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %li_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %li_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4668, i32 %5)
  %cmp3 = icmp eq i32 %5, 4668
  br i1 %cmp3, label %if.then.cond.end12_crit_edge, label %cond.false11, !prof !130

if.then.cond.end12_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.false11:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 801) #10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %if.then.cond.end12_crit_edge
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 21
  %6 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_transp, align 8
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %cond.end12.cond.end24_crit_edge, label %cond.false23, !prof !130

cond.end12.cond.end24_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 802) #10
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.end12.cond.end24_crit_edge
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bli_buf, align 8
  %cmp25 = icmp eq ptr %9, %bp
  br i1 %cmp25, label %cond.end24.cleanup_crit_edge, label %cond.false33, !prof !130

cond.end24.cleanup_crit_edge:                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false33:                                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 803) #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %10 = load ptr, ptr @xfs_buf_item_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 36288) #10
  tail call void @xfs_log_item_init(ptr noundef %mp, ptr noundef %call.i, i32 noundef 4668, ptr noundef nonnull @xfs_buf_item_ops) #10
  %bli_buf36 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %bli_buf36 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bp, ptr %bli_buf36, align 8
  %b_map_count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 26
  %12 = ptrtoint ptr %b_map_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_map_count, align 8
  tail call fastcc void @xfs_buf_item_get_format(ptr noundef %call.i, i32 noundef %13)
  %bli_format_count = getelementptr inbounds %struct.xfs_buf_log_item, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37102 = icmp sgt i32 %15, 0
  br i1 %cmp37102, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %b_maps = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %call.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end47.for.body_crit_edge ]
  %16 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_maps, align 8
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %17, i32 %i.0103, i32 1
  %18 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bm_len, align 8
  %shl = shl i32 %19, 9
  %sub = or i32 %shl, 127
  %div = sdiv i32 %sub, 128
  %sub39 = add nsw i32 %div, 31
  %div40100 = lshr i32 %sub39, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 575, i32 %sub39)
  %cmp41 = icmp ugt i32 %sub39, 575
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = load ptr, ptr @xfs_buf_item_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %call.i) #10
  %21 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_maps, align 8
  %bm_len45 = getelementptr %struct.xfs_buf_map, ptr %22, i32 %i.0103, i32 1
  %23 = ptrtoint ptr %bm_len45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bm_len45, align 8
  %shl46 = shl i32 %24, 9
  tail call void (ptr, ptr, ...) @xfs_err(ptr noundef %mp, ptr noundef nonnull @.str.5, i32 noundef %div40100, i32 noundef %shl46) #10
  br label %cleanup

if.end47:                                         ; preds = %for.body
  %25 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bli_formats, align 4
  %arrayidx48 = getelementptr %struct.xfs_buf_log_format, ptr %26, i32 %i.0103
  %27 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4668, ptr %arrayidx48, align 8
  %28 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_maps, align 8
  %arrayidx50 = getelementptr %struct.xfs_buf_map, ptr %29, i32 %i.0103
  %30 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx50, align 8
  %32 = load ptr, ptr %bli_formats, align 4
  %blf_blkno = getelementptr %struct.xfs_buf_log_format, ptr %32, i32 %i.0103, i32 4
  %33 = ptrtoint ptr %blf_blkno to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %31, ptr %blf_blkno, align 8
  %34 = load ptr, ptr %b_maps, align 8
  %bm_len55 = getelementptr %struct.xfs_buf_map, ptr %34, i32 %i.0103, i32 1
  %35 = ptrtoint ptr %bm_len55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bm_len55, align 8
  %conv = trunc i32 %36 to i16
  %37 = load ptr, ptr %bli_formats, align 4
  %blf_len = getelementptr %struct.xfs_buf_log_format, ptr %37, i32 %i.0103, i32 3
  %38 = ptrtoint ptr %blf_len to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %blf_len, align 2
  %39 = load ptr, ptr %bli_formats, align 4
  %blf_map_size = getelementptr %struct.xfs_buf_log_format, ptr %39, i32 %i.0103, i32 5
  %40 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div40100, ptr %blf_map_size, align 8
  %inc = add nuw nsw i32 %i.0103, 1
  %41 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bli_format_count, align 8
  %cmp37 = icmp slt i32 %inc, %42
  br i1 %cmp37, label %if.end47.for.body_crit_edge, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end47.for.end_crit_edge, %if.end.for.end_crit_edge
  %43 = ptrtoint ptr %b_log_item to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %b_log_item, align 4
  tail call void @xfs_buf_hold(ptr noundef %bp) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then42, %cond.false33, %cond.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then42 ], [ 0, %for.end ], [ 0, %cond.end24.cleanup_crit_edge ], [ 0, %cond.false33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_item_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_item_get_format(ptr noundef %bip, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 6
  %0 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_formats, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !130

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 757) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bli_format_count = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 5
  %2 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %count, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp2 = icmp eq i32 %count, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %__bli_format = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 7
  br label %return

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %count, 88
  %call.i = tail call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 16) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ %call.i, %if.end ], [ %__bli_format, %if.then ]
  %3 = ptrtoint ptr %bli_formats to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge, ptr %bli_formats, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_item_log(ptr nocapture noundef readonly %bip, i32 noundef %first, i32 noundef %last) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_format_count = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 5
  %0 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp47 = icmp slt i32 %1, 1
  br i1 %cmp47, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 1
  %2 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bli_buf, align 8
  %b_maps = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 24
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %start.051 = phi i32 [ 0, %if.end.lr.ph ], [ %start.1, %for.inc.if.end_crit_edge ]
  %i.049 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %for.inc.if.end_crit_edge ]
  %first.addr.048 = phi i32 [ %first, %if.end.lr.ph ], [ %first.addr.2, %for.inc.if.end_crit_edge ]
  %4 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_maps, align 8
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %5, i32 %i.049, i32 1
  %6 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bm_len, align 8
  %shl = shl i32 %7, 9
  %add = add i32 %shl, %start.051
  %sub = add i32 %add, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %first.addr.048, i32 %sub)
  %cmp2 = icmp ugt i32 %first.addr.048, %sub
  br i1 %cmp2, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.umax.i32(i32 %first.addr.048, i32 %start.051)
  %9 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %last)
  %sub16 = sub i32 %8, %start.051
  %sub17 = sub i32 %9, %start.051
  %10 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bli_formats, align 4
  %blf_data_map = getelementptr %struct.xfs_buf_log_format, ptr %11, i32 %i.049, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 69632, i32 %sub16)
  %cmp.i = icmp ult i32 %sub16, 69632
  br i1 %cmp.i, label %if.end9.cond.end.i_crit_edge, label %cond.false.i, !prof !130

if.end9.cond.end.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 868) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end9.cond.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 69632, i32 %sub17)
  %cmp2.i = icmp ult i32 %sub17, 69632
  br i1 %cmp2.i, label %cond.end.i.cond.end11.i_crit_edge, label %cond.false10.i, !prof !130

cond.end.i.cond.end11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end11.i

cond.false10.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 869) #10
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false10.i, %cond.end.i.cond.end11.i_crit_edge
  %shr.i = lshr i32 %sub16, 7
  %shr12.i = lshr i32 %sub17, 7
  %sub.i = sub nsw i32 %shr12.i, %shr.i
  %add.i = add nsw i32 %sub.i, 1
  %shr13.i = lshr i32 %sub16, 12
  %arrayidx.i = getelementptr i32, ptr %blf_data_map, i32 %shr13.i
  %and.i = and i32 %shr.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %cond.end11.i.if.end.i_crit_edge, label %if.then.i

cond.end11.i.if.end.i_crit_edge:                  ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add15.i = add nsw i32 %add.i, %and.i
  %12 = tail call i32 @llvm.umin.i32(i32 %add15.i, i32 32) #10
  %sub20.i = sub nsw i32 %12, %and.i
  %notmask57.i = shl nsw i32 -1, %sub20.i
  %sub21.i = xor i32 %notmask57.i, -1
  %shl22.i = shl i32 %sub21.i, %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %14, %shl22.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end11.i.if.end.i_crit_edge
  %bits_set.0.i = phi i32 [ %sub20.i, %if.then.i ], [ 0, %cond.end11.i.if.end.i_crit_edge ]
  %wordp.0.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %arrayidx.i, %cond.end11.i.if.end.i_crit_edge ]
  %sub2458.i = sub nsw i32 %add.i, %bits_set.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub2458.i)
  %cmp2559.i = icmp ugt i32 %sub2458.i, 31
  br i1 %cmp2559.i, label %while.body.preheader.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = add nsw i32 %shr12.i, -31
  %16 = add nsw i32 %shr.i, %bits_set.0.i
  %17 = sub nsw i32 %15, %16
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 536870908
  %20 = add nuw nsw i32 %19, 4
  %21 = call ptr @memset(ptr %wordp.0.i, i32 255, i32 %20)
  %22 = and i32 %17, -32
  %23 = add nsw i32 %bits_set.0.i, 32
  %24 = add nsw i32 %23, %22
  %uglygep.i = getelementptr i8, ptr %wordp.0.i, i32 %20
  %25 = and i32 %17, 31
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.preheader.i, %if.end.i.while.end.i_crit_edge
  %bits_set.1.lcssa.i = phi i32 [ %bits_set.0.i, %if.end.i.while.end.i_crit_edge ], [ %24, %while.body.preheader.i ]
  %wordp.1.lcssa.i = phi ptr [ %wordp.0.i, %if.end.i.while.end.i_crit_edge ], [ %uglygep.i, %while.body.preheader.i ]
  %sub24.lcssa.i = phi i32 [ %sub2458.i, %if.end.i.while.end.i_crit_edge ], [ %25, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %bits_set.1.lcssa.i)
  %tobool29.not.i = icmp eq i32 %add.i, %bits_set.1.lcssa.i
  br i1 %tobool29.not.i, label %while.end.i.xfs_buf_item_log_segment.exit_crit_edge, label %if.then30.i

while.end.i.xfs_buf_item_log_segment.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_log_segment.exit

if.then30.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %notmask.i = shl nsw i32 -1, %sub24.lcssa.i
  %sub32.i = xor i32 %notmask.i, -1
  %26 = ptrtoint ptr %wordp.1.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wordp.1.lcssa.i, align 4
  %or33.i = or i32 %27, %sub32.i
  store i32 %or33.i, ptr %wordp.1.lcssa.i, align 4
  br label %xfs_buf_item_log_segment.exit

xfs_buf_item_log_segment.exit:                    ; preds = %if.then30.i, %while.end.i.xfs_buf_item_log_segment.exit_crit_edge
  %28 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_maps, align 8
  %bm_len22 = getelementptr %struct.xfs_buf_map, ptr %29, i32 %i.049, i32 1
  %30 = ptrtoint ptr %bm_len22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bm_len22, align 8
  %shl23 = shl i32 %31, 9
  %add24 = add i32 %shl23, %start.051
  br label %for.inc

for.inc:                                          ; preds = %xfs_buf_item_log_segment.exit, %if.end.for.inc_crit_edge
  %first.addr.2 = phi i32 [ %8, %xfs_buf_item_log_segment.exit ], [ %first.addr.048, %if.end.for.inc_crit_edge ]
  %start.1 = phi i32 [ %add24, %xfs_buf_item_log_segment.exit ], [ %add, %if.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.049, 1
  %32 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %33)
  %cmp = icmp sge i32 %inc, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %start.1, i32 %last)
  %cmp1 = icmp ugt i32 %start.1, %last
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_buf_item_dirty_format(ptr nocapture noundef readonly %bip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 6
  %bli_format_count = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 5
  %0 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.09, 1
  %2 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bli_format_count, align 8
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bli_formats, align 4
  %blf_data_map = getelementptr %struct.xfs_buf_log_format, ptr %5, i32 %i.09, i32 6
  %blf_map_size = getelementptr %struct.xfs_buf_log_format, ptr %5, i32 %i.09, i32 5
  %6 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blf_map_size, align 8
  %call = tail call i32 @xfs_bitmap_empty(ptr noundef %blf_data_map, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not, %for.cond.cleanup_crit_edge ], [ %tobool.not, %for.body.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bitmap_empty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_relse(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_relse, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_relse, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !132
  %call42 = tail call i32 @__traceiter_xfs_buf_item_relse(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !133
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_relse, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_relse, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_relse.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_relse.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 466, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_item_free(ptr noundef %bip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_buf_item_free_format(ptr noundef %bip)
  %li_lv_shadow = getelementptr inbounds %struct.xfs_log_item, ptr %bip, i32 0, i32 12
  %0 = ptrtoint ptr %li_lv_shadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_lv_shadow, align 4
  tail call void @kvfree(ptr noundef %1) #10
  %2 = load ptr, ptr @xfs_buf_item_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %bip) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_item_done(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_log_item, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %and = lshr i32 %3, 15
  %4 = and i32 %and, 8
  %5 = xor i32 %4, 8
  tail call void @xfs_trans_ail_delete(ptr noundef %1, i32 noundef %5) #10
  %6 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_log_item, align 4
  %8 = tail call ptr @llvm.returnaddress(i32 0) #10
  %9 = ptrtoint ptr %8 to i32
  tail call fastcc void @trace_xfs_buf_item_relse(ptr noundef %bp, i32 noundef %9) #10
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %li_flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.xfs_buf_item_relse.exit_crit_edge, label %cond.false.i, !prof !130

entry.xfs_buf_item_relse.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_relse.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1018) #10
  br label %xfs_buf_item_relse.exit

xfs_buf_item_relse.exit:                          ; preds = %cond.false.i, %entry.xfs_buf_item_relse.exit_crit_edge
  %12 = ptrtoint ptr %b_log_item to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %b_log_item, align 4
  tail call void @xfs_buf_rele(ptr noundef %bp) #10
  tail call fastcc void @xfs_buf_item_free(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_item_size(ptr noundef %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #4 align 64 {
entry:
  %bytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_buf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes) #10
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #10
  %2 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !130

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 198) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 2
  %4 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bli_flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  tail call fastcc void @trace_xfs_buf_item_size_stale(ptr noundef %lip)
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blf_flags, align 4
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  br i1 %tobool5.not, label %cond.false13, label %if.then.cond.end14_crit_edge, !prof !136

if.then.cond.end14_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end14

cond.false13:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 206) #10
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %if.then.cond.end14_crit_edge
  %bli_format_count = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 5
  %9 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bli_format_count, align 8
  %11 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nvecs, align 4
  %add = add i32 %12, %10
  store i32 %add, ptr %nvecs, align 4
  %13 = load i32, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1678 = icmp sgt i32 %13, 0
  br i1 %cmp1678, label %for.body.lr.ph, label %cond.end14.cleanup_crit_edge

cond.end14.cleanup_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end14
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bli_formats, align 4
  %blf_map_size.i = getelementptr %struct.xfs_buf_log_format, ptr %15, i32 %i.079, i32 5
  %16 = ptrtoint ptr %blf_map_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blf_map_size.i, align 8
  %mul.i = shl i32 %17, 2
  %add.i = add i32 %mul.i, 20
  %18 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes, align 4
  %add19 = add i32 %add.i, %19
  store i32 %add19, ptr %nbytes, align 4
  %inc = add nuw nsw i32 %i.079, 1
  %20 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bli_format_count, align 8
  %cmp16 = icmp slt i32 %inc, %21
  br i1 %cmp16, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %cond.end
  %and21 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.false30, label %if.end.cond.end31_crit_edge, !prof !136

if.end.cond.end31_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end31

cond.false30:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 214) #10
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %if.end.cond.end31_crit_edge
  %22 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bli_flags, align 4
  %and33 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xfs_buf_item_size_ordered(ptr noundef %lip)
  %24 = ptrtoint ptr %nvecs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %nvecs, align 4
  br label %cleanup

if.end36:                                         ; preds = %cond.end31
  %25 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bytes, align 4
  %bli_format_count38 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 5
  %26 = ptrtoint ptr %bli_format_count38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bli_format_count38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3980 = icmp sgt i32 %27, 0
  br i1 %cmp3980, label %for.body41.lr.ph, label %if.end36.for.end48_crit_edge

if.end36.for.end48_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.body41.lr.ph:                                 ; preds = %if.end36
  %bli_formats42 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 6
  %b_maps = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 24
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.lr.ph
  %offset.082 = phi i32 [ 0, %for.body41.lr.ph ], [ %add45, %for.body41.for.body41_crit_edge ]
  %i.181 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc47, %for.body41.for.body41_crit_edge ]
  %28 = ptrtoint ptr %bli_formats42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bli_formats42, align 4
  %arrayidx43 = getelementptr %struct.xfs_buf_log_format, ptr %29, i32 %i.181
  call fastcc void @xfs_buf_item_size_segment(ptr noundef %lip, ptr noundef %arrayidx43, i32 noundef %offset.082, ptr noundef %nvecs, ptr noundef nonnull %bytes)
  %30 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_maps, align 8
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %31, i32 %i.181, i32 1
  %32 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bm_len, align 8
  %shl = shl i32 %33, 9
  %add45 = add i32 %shl, %offset.082
  %inc47 = add nuw nsw i32 %i.181, 1
  %34 = ptrtoint ptr %bli_format_count38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bli_format_count38, align 8
  %cmp39 = icmp slt i32 %inc47, %35
  br i1 %cmp39, label %for.body41.for.body41_crit_edge, label %for.body41.for.end48_crit_edge

for.body41.for.end48_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41

for.end48:                                        ; preds = %for.body41.for.end48_crit_edge, %if.end36.for.end48_crit_edge
  %36 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytes, align 4
  %sub = add i32 %37, -1
  %or = or i32 %sub, 511
  %add49 = add i32 %or, 1
  %38 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add49, ptr %nbytes, align 4
  tail call fastcc void @trace_xfs_buf_item_size(ptr noundef %lip)
  br label %cleanup

cleanup:                                          ; preds = %for.end48, %if.then35, %for.body.cleanup_crit_edge, %cond.end14.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_item_format(ptr noundef %lip, ptr nocapture noundef %lv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_buf, align 8
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #10
  %2 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !130

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 406) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 2
  %4 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bli_flags, align 4
  %6 = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %cond.false14, label %cond.end.cond.end15_crit_edge, !prof !136

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 408) #10
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %7 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bli_flags, align 4
  %and17 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.rhs19, label %cond.end15.cond.end37_crit_edge

cond.end15.cond.end37_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

lor.rhs19:                                        ; preds = %cond.end15
  %blf_flags.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %blf_flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %blf_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %10)
  %cmp21.not = icmp ult i16 %10, 2048
  br i1 %cmp21.not, label %cond.false36.critedge, label %lor.rhs19.cond.end37_crit_edge

lor.rhs19.cond.end37_crit_edge:                   ; preds = %lor.rhs19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

cond.false36.critedge:                            ; preds = %lor.rhs19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 411) #10
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36.critedge, %lor.rhs19.cond.end37_crit_edge, %cond.end15.cond.end37_crit_edge
  %11 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bli_flags, align 4
  %13 = and i32 %12, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %13)
  %.not108 = icmp eq i32 %13, 128
  br i1 %.not108, label %cond.false53, label %cond.end37.cond.end54_crit_edge, !prof !136

cond.end37.cond.end54_crit_edge:                  ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end54

cond.false53:                                     ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 413) #10
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.end37.cond.end54_crit_edge
  %14 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bli_flags, align 4
  %and56 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %cond.end54.if.end71_crit_edge, label %if.then

cond.end54.if.end71_crit_edge:                    ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then:                                          ; preds = %cond.end54
  %li_mountp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 3
  %16 = ptrtoint ptr %li_mountp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %li_mountp, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  %and61 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %or.cond = select i1 %tobool.i, i1 true, i1 %tobool62.not
  br i1 %or.cond, label %if.then.if.then65_crit_edge, label %land.lhs.true

if.then.if.then65_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

land.lhs.true:                                    ; preds = %if.then
  %call63 = tail call zeroext i1 @xfs_log_item_in_current_chkpt(ptr noundef %lip) #10
  br i1 %call63, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then65_crit_edge

land.lhs.true.if.then65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then65:                                        ; preds = %land.lhs.true.if.then65_crit_edge, %if.then.if.then65_crit_edge
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %blf_flags, align 4
  %22 = or i16 %21, 1
  store i16 %22, ptr %blf_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then65, %land.lhs.true.if.end_crit_edge
  %23 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bli_flags, align 4
  %and70 = and i32 %24, -65
  store i32 %and70, ptr %bli_flags, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end, %cond.end54.if.end71_crit_edge
  %bli_format_count = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 5
  %25 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bli_format_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp72111 = icmp sgt i32 %26, 0
  br i1 %cmp72111, label %for.body.lr.ph, label %if.end71.for.end_crit_edge

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end71
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 6
  %blf_flags.i98 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 7, i32 2
  %lv_iovecp3.i.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %lv_niovecs.i.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %lv_buf.i.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %lv_buf_len.i.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %lv_bytes.i.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %b_maps = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %xfs_buf_item_format_segment.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xfs_buf_item_format_segment.exit.for.body_crit_edge ]
  %offset.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %xfs_buf_item_format_segment.exit.for.body_crit_edge ]
  %vecp.0112 = phi ptr [ null, %for.body.lr.ph ], [ %vecp.5, %xfs_buf_item_format_segment.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bli_formats, align 4
  %arrayidx = getelementptr %struct.xfs_buf_log_format, ptr %28, i32 %i.0116
  %29 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bli_buf, align 8
  %31 = ptrtoint ptr %blf_flags.i98 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %blf_flags.i98, align 4
  %blf_flags1.i = getelementptr %struct.xfs_buf_log_format, ptr %28, i32 %i.0116, i32 2
  %33 = ptrtoint ptr %blf_flags1.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %blf_flags1.i, align 4
  %blf_map_size.i.i = getelementptr %struct.xfs_buf_log_format, ptr %28, i32 %i.0116, i32 5
  %34 = ptrtoint ptr %blf_map_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blf_map_size.i.i, align 8
  %mul.i.i = shl i32 %35, 2
  %add.i.i = add i32 %mul.i.i, 20
  %blf_data_map.i = getelementptr %struct.xfs_buf_log_format, ptr %28, i32 %i.0116, i32 6
  %call2.i = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map.i, i32 noundef %35, i32 noundef 0) #10
  %36 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bli_flags, align 4
  %and.i99 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i = icmp eq i32 %and.i99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, -1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.xfs_buf_item_format_segment.exit_crit_edge, label %if.end.i

for.body.xfs_buf_item_format_segment.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_format_segment.exit

if.end.i:                                         ; preds = %for.body
  %tobool.not.i.i.i = icmp eq ptr %vecp.0112, null
  %38 = ptrtoint ptr %lv_iovecp3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lv_iovecp3.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.end.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end.i.if.end.i.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %vecp.0112 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 12
  %40 = ptrtoint ptr %lv_niovecs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lv_niovecs.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i, i32 %41)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.div.i.i.i, %41
  br i1 %cmp.i.i.i, label %if.then.i.i.i.cond.end.i.i.i_crit_edge, label %cond.false.i.i.i, !prof !130

if.then.i.i.i.cond.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 31) #10
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %if.then.i.i.i.cond.end.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.xfs_log_iovec, ptr %vecp.0112, i32 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i, %if.end.i.if.end.i.i.i_crit_edge
  %vec.0.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %cond.end.i.i.i ], [ %39, %if.end.i.if.end.i.i.i_crit_edge ]
  %i_type.i.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %i_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %i_type.i.i.i, align 4
  %43 = ptrtoint ptr %lv_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lv_buf.i.i.i, align 4
  %45 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 %46
  %47 = ptrtoint ptr %vec.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i.i.i, ptr %vec.0.i.i.i, align 4
  %48 = ptrtoint ptr %add.ptr.i.i.i to i32
  %and.i.i.i = and i32 %48, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.end.i.i.i.xlog_copy_iovec.exit.i_crit_edge, label %cond.false13.i.i.i, !prof !130

if.end.i.i.i.xlog_copy_iovec.exit.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlog_copy_iovec.exit.i

cond.false13.i.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 40) #10
  br label %xlog_copy_iovec.exit.i

xlog_copy_iovec.exit.i:                           ; preds = %cond.false13.i.i.i, %if.end.i.i.i.xlog_copy_iovec.exit.i_crit_edge
  %49 = ptrtoint ptr %vec.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vec.0.i.i.i, align 4
  %51 = call ptr @memcpy(ptr %50, ptr %arrayidx, i32 %add.i.i)
  %sub.i.i.i = add i32 %mul.i.i, 19
  %or.i.i.i = or i32 %sub.i.i.i, 7
  %add.i.i.i = add i32 %or.i.i.i, 1
  %52 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add1.i.i.i = add i32 %add.i.i.i, %53
  store i32 %add1.i.i.i, ptr %lv_buf_len.i.i.i, align 4
  %54 = ptrtoint ptr %lv_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lv_bytes.i.i.i, align 4
  %add2.i.i.i = add i32 %55, %add.i.i
  store i32 %add2.i.i.i, ptr %lv_bytes.i.i.i, align 4
  %i_len.i.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %i_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i.i, ptr %i_len.i.i.i, align 4
  %blf_size.i = getelementptr inbounds %struct.xfs_buf_log_format, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %blf_size.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %blf_size.i, align 2
  %58 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bli_flags, align 4
  %and5.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.preheader.i, label %if.then7.i

do.body.preheader.i:                              ; preds = %xlog_copy_iovec.exit.i
  %blf_data_map25.i = getelementptr inbounds %struct.xfs_buf_log_format, ptr %50, i32 0, i32 6
  %blf_map_size27.i = getelementptr inbounds %struct.xfs_buf_log_format, ptr %50, i32 0, i32 5
  br label %do.body.i

if.then7.i:                                       ; preds = %xlog_copy_iovec.exit.i
  tail call fastcc void @trace_xfs_buf_item_format_stale(ptr noundef %lip) #10
  %blf_flags8.i = getelementptr inbounds %struct.xfs_buf_log_format, ptr %50, i32 0, i32 2
  %60 = ptrtoint ptr %blf_flags8.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %blf_flags8.i, align 4
  %62 = and i16 %61, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool10.not.i = icmp eq i16 %62, 0
  br i1 %tobool10.not.i, label %cond.false.i, label %if.then7.i.xfs_buf_item_format_segment.exit_crit_edge, !prof !136

if.then7.i.xfs_buf_item_format_segment.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_format_segment.exit

cond.false.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 311) #10
  br label %xfs_buf_item_format_segment.exit

do.body.i:                                        ; preds = %xfs_buf_item_copy_iovec.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %vecp.1 = phi ptr [ %vec.0.i.i.i, %do.body.preheader.i ], [ %vec.0.i.i.i.i, %xfs_buf_item_copy_iovec.exit.i.do.body.i_crit_edge ]
  %first_bit.0.i = phi i32 [ %call2.i, %do.body.preheader.i ], [ %call52.i, %xfs_buf_item_copy_iovec.exit.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_bit.0.i)
  %cmp14.i = icmp sgt i32 %first_bit.0.i, -1
  br i1 %cmp14.i, label %do.body.i.cond.end24.i_crit_edge, label %cond.false23.i, !prof !130

do.body.i.cond.end24.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end24.i

cond.false23.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 320) #10
  br label %cond.end24.i

cond.end24.i:                                     ; preds = %cond.false23.i, %do.body.i.cond.end24.i_crit_edge
  %63 = ptrtoint ptr %blf_map_size27.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blf_map_size27.i, align 8
  %call28.i = tail call i32 @xfs_contig_bits(ptr noundef %blf_data_map25.i, i32 noundef %64, i32 noundef %first_bit.0.i) #10
  %65 = zext i32 %call28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28.i, label %land.lhs.true42.i [
    i32 0, label %cond.end39.thread.i
    i32 1, label %cond.end24.i.if.end46.i_crit_edge
  ], !prof !137

cond.end24.i.if.end46.i_crit_edge:                ; preds = %cond.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

cond.end39.thread.i:                              ; preds = %cond.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 323) #10
  br label %if.end46.i

land.lhs.true42.i:                                ; preds = %cond.end24.i
  %shl.i.i = shl i32 %first_bit.0.i, 7
  %add.i151.i = add i32 %shl.i.i, %offset.0113
  %call.i.i100 = tail call ptr @xfs_buf_offset(ptr noundef %30, i32 noundef %add.i151.i) #10
  %add1.i.i = add i32 %call28.i, %first_bit.0.i
  %shl2.i.i = shl i32 %add1.i.i, 7
  %add3.i.i = add i32 %shl2.i.i, %offset.0113
  %call4.i.i = tail call ptr @xfs_buf_offset(ptr noundef %30, i32 noundef %add3.i.i) #10
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call4.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call.i.i100 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %mul.i152.i = shl i32 %call28.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %mul.i152.i)
  %cmp.not.i.not.i = icmp eq i32 %sub.ptr.sub.i.i, %mul.i152.i
  br i1 %cmp.not.i.not.i, label %land.lhs.true42.i.if.end46.i_crit_edge, label %slow_scan.i

land.lhs.true42.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.end46.i:                                       ; preds = %land.lhs.true42.i.if.end46.i_crit_edge, %cond.end39.thread.i, %cond.end24.i.if.end46.i_crit_edge
  %mul.i153.i = shl i32 %first_bit.0.i, 7
  %add.i154.i = add i32 %mul.i153.i, %offset.0113
  %call.i155.i = tail call ptr @xfs_buf_offset(ptr noundef %30, i32 noundef %add.i154.i) #10
  %tobool.not.i.i.i.i = icmp eq ptr %vecp.1, null
  %66 = ptrtoint ptr %lv_iovecp3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lv_iovecp3.i.i.i, align 4
  br i1 %tobool.not.i.i.i.i, label %if.end46.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end46.i.if.end.i.i.i.i_crit_edge:              ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end46.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %vecp.1 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 12
  %68 = ptrtoint ptr %lv_niovecs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lv_niovecs.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i.i, i32 %69)
  %cmp.i.i.i.i = icmp slt i32 %sub.ptr.div.i.i.i.i, %69
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i.cond.end.i.i.i.i_crit_edge, label %cond.false.i.i.i.i, !prof !130

if.then.i.i.i.i.cond.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 31) #10
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.false.i.i.i.i, %if.then.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.xfs_log_iovec, ptr %vecp.1, i32 1
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %cond.end.i.i.i.i, %if.end46.i.if.end.i.i.i.i_crit_edge
  %vec.0.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %cond.end.i.i.i.i ], [ %67, %if.end46.i.if.end.i.i.i.i_crit_edge ]
  %i_type.i.i.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %i_type.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %i_type.i.i.i.i, align 4
  %71 = ptrtoint ptr %lv_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lv_buf.i.i.i, align 4
  %73 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %72, i32 %74
  %75 = ptrtoint ptr %vec.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.i.i.i.i, ptr %vec.0.i.i.i.i, align 4
  %76 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %and.i.i.i.i = and i32 %76, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp5.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp5.i.i.i.i, label %if.end.i.i.i.i.xfs_buf_item_copy_iovec.exit.i_crit_edge, label %cond.false13.i.i.i.i, !prof !130

if.end.i.i.i.i.xfs_buf_item_copy_iovec.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_copy_iovec.exit.i

cond.false13.i.i.i.i:                             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 40) #10
  br label %xfs_buf_item_copy_iovec.exit.i

xfs_buf_item_copy_iovec.exit.i:                   ; preds = %cond.false13.i.i.i.i, %if.end.i.i.i.i.xfs_buf_item_copy_iovec.exit.i_crit_edge
  %mul1.i.i = shl i32 %call28.i, 7
  %77 = ptrtoint ptr %vec.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vec.0.i.i.i.i, align 4
  %79 = call ptr @memcpy(ptr %78, ptr %call.i155.i, i32 %mul1.i.i)
  %80 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add1.i.i.i.i = add i32 %81, %mul1.i.i
  store i32 %add1.i.i.i.i, ptr %lv_buf_len.i.i.i, align 4
  %82 = ptrtoint ptr %lv_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lv_bytes.i.i.i, align 4
  %add2.i.i.i.i = add i32 %83, %mul1.i.i
  store i32 %add2.i.i.i.i, ptr %lv_bytes.i.i.i, align 4
  %i_len.i.i.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %i_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul1.i.i, ptr %i_len.i.i.i.i, align 4
  %85 = ptrtoint ptr %blf_size.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %blf_size.i, align 2
  %inc.i = add i16 %86, 1
  store i16 %inc.i, ptr %blf_size.i, align 2
  %87 = ptrtoint ptr %blf_map_size27.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blf_map_size27.i, align 8
  %add.i = add i32 %first_bit.0.i, 1
  %add51.i = add i32 %add.i, %call28.i
  %call52.i = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map25.i, i32 noundef %88, i32 noundef %add51.i) #10
  %cmp53.not.i = icmp eq i32 %call52.i, -1
  br i1 %cmp53.not.i, label %xfs_buf_item_copy_iovec.exit.i.xfs_buf_item_format_segment.exit_crit_edge, label %xfs_buf_item_copy_iovec.exit.i.do.body.i_crit_edge

xfs_buf_item_copy_iovec.exit.i.do.body.i_crit_edge: ; preds = %xfs_buf_item_copy_iovec.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

xfs_buf_item_copy_iovec.exit.i.xfs_buf_item_format_segment.exit_crit_edge: ; preds = %xfs_buf_item_copy_iovec.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_format_segment.exit

slow_scan.i:                                      ; preds = %land.lhs.true42.i
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %30, i32 0, i32 16
  %89 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_addr.i, align 4
  %cmp55.i = icmp eq ptr %90, null
  br i1 %cmp55.i, label %slow_scan.i.cond.end65.i_crit_edge, label %cond.false64.i, !prof !130

slow_scan.i.cond.end65.i_crit_edge:               ; preds = %slow_scan.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end65.i

cond.false64.i:                                   ; preds = %slow_scan.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 350) #10
  br label %cond.end65.i

cond.end65.i:                                     ; preds = %cond.false64.i, %slow_scan.i.cond.end65.i_crit_edge
  %91 = ptrtoint ptr %blf_map_size27.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %blf_map_size27.i, align 8
  %add69232.i = add i32 %first_bit.0.i, 1
  %call70233.i = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map25.i, i32 noundef %92, i32 noundef %add69232.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call70233.i)
  %cmp71234.i = icmp eq i32 %call70233.i, -1
  br i1 %cmp71234.i, label %cond.end65.i.if.then73.i_crit_edge, label %cond.end65.i.if.else.i_crit_edge

cond.end65.i.if.else.i_crit_edge:                 ; preds = %cond.end65.i
  br label %if.else.i

cond.end65.i.if.then73.i_crit_edge:               ; preds = %cond.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

if.then73.loopexit.i:                             ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = shl i32 %first_bit.2.i, 7
  %.pre241.i = add i32 %.pre.i, %offset.0113
  br label %if.then73.i

if.then73.i:                                      ; preds = %if.then73.loopexit.i, %cond.end65.i.if.then73.i_crit_edge
  %vecp.2 = phi ptr [ %vecp.1, %cond.end65.i.if.then73.i_crit_edge ], [ %vecp.4, %if.then73.loopexit.i ]
  %add.i157.pre-phi.i = phi i32 [ %add.i151.i, %cond.end65.i.if.then73.i_crit_edge ], [ %.pre241.i, %if.then73.loopexit.i ]
  %nbits.0.lcssa.i = phi i32 [ 1, %cond.end65.i.if.then73.i_crit_edge ], [ %nbits.1.i, %if.then73.loopexit.i ]
  %call.i158.i = tail call ptr @xfs_buf_offset(ptr noundef %30, i32 noundef %add.i157.pre-phi.i) #10
  %tobool.not.i.i.i159.i = icmp eq ptr %vecp.2, null
  %93 = ptrtoint ptr %lv_iovecp3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lv_iovecp3.i.i.i, align 4
  br i1 %tobool.not.i.i.i159.i, label %if.then73.i.if.end.i.i.i178.i_crit_edge, label %if.then.i.i.i167.i

if.then73.i.if.end.i.i.i178.i_crit_edge:          ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i178.i

if.then.i.i.i167.i:                               ; preds = %if.then73.i
  %sub.ptr.lhs.cast.i.i.i161.i = ptrtoint ptr %vecp.2 to i32
  %sub.ptr.rhs.cast.i.i.i162.i = ptrtoint ptr %94 to i32
  %sub.ptr.sub.i.i.i163.i = sub i32 %sub.ptr.lhs.cast.i.i.i161.i, %sub.ptr.rhs.cast.i.i.i162.i
  %sub.ptr.div.i.i.i164.i = sdiv exact i32 %sub.ptr.sub.i.i.i163.i, 12
  %95 = ptrtoint ptr %lv_niovecs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lv_niovecs.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i164.i, i32 %96)
  %cmp.i.i.i166.i = icmp slt i32 %sub.ptr.div.i.i.i164.i, %96
  br i1 %cmp.i.i.i166.i, label %if.then.i.i.i167.i.cond.end.i.i.i170.i_crit_edge, label %cond.false.i.i.i168.i, !prof !130

if.then.i.i.i167.i.cond.end.i.i.i170.i_crit_edge: ; preds = %if.then.i.i.i167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i170.i

cond.false.i.i.i168.i:                            ; preds = %if.then.i.i.i167.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 31) #10
  br label %cond.end.i.i.i170.i

cond.end.i.i.i170.i:                              ; preds = %cond.false.i.i.i168.i, %if.then.i.i.i167.i.cond.end.i.i.i170.i_crit_edge
  %incdec.ptr.i.i.i169.i = getelementptr %struct.xfs_log_iovec, ptr %vecp.2, i32 1
  br label %if.end.i.i.i178.i

if.end.i.i.i178.i:                                ; preds = %cond.end.i.i.i170.i, %if.then73.i.if.end.i.i.i178.i_crit_edge
  %vec.0.i.i.i171.i = phi ptr [ %incdec.ptr.i.i.i169.i, %cond.end.i.i.i170.i ], [ %94, %if.then73.i.if.end.i.i.i178.i_crit_edge ]
  %i_type.i.i.i172.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i171.i, i32 0, i32 2
  %97 = ptrtoint ptr %i_type.i.i.i172.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %i_type.i.i.i172.i, align 4
  %98 = ptrtoint ptr %lv_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lv_buf.i.i.i, align 4
  %100 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add.ptr.i.i.i175.i = getelementptr i8, ptr %99, i32 %101
  %102 = ptrtoint ptr %vec.0.i.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i.i.i175.i, ptr %vec.0.i.i.i171.i, align 4
  %103 = ptrtoint ptr %add.ptr.i.i.i175.i to i32
  %and.i.i.i176.i = and i32 %103, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i176.i)
  %cmp5.i.i.i177.i = icmp eq i32 %and.i.i.i176.i, 0
  br i1 %cmp5.i.i.i177.i, label %if.end.i.i.i178.i.xfs_buf_item_copy_iovec.exit185.i_crit_edge, label %cond.false13.i.i.i179.i, !prof !130

if.end.i.i.i178.i.xfs_buf_item_copy_iovec.exit185.i_crit_edge: ; preds = %if.end.i.i.i178.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_copy_iovec.exit185.i

cond.false13.i.i.i179.i:                          ; preds = %if.end.i.i.i178.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 40) #10
  br label %xfs_buf_item_copy_iovec.exit185.i

xfs_buf_item_copy_iovec.exit185.i:                ; preds = %cond.false13.i.i.i179.i, %if.end.i.i.i178.i.xfs_buf_item_copy_iovec.exit185.i_crit_edge
  %mul1.i180.i = shl i32 %nbits.0.lcssa.i, 7
  %104 = ptrtoint ptr %vec.0.i.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vec.0.i.i.i171.i, align 4
  %106 = call ptr @memcpy(ptr %105, ptr %call.i158.i, i32 %mul1.i180.i)
  %107 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add1.i.i.i181.i = add i32 %108, %mul1.i180.i
  store i32 %add1.i.i.i181.i, ptr %lv_buf_len.i.i.i, align 4
  %109 = ptrtoint ptr %lv_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lv_bytes.i.i.i, align 4
  %add2.i.i.i183.i = add i32 %110, %mul1.i180.i
  store i32 %add2.i.i.i183.i, ptr %lv_bytes.i.i.i, align 4
  %i_len.i.i.i184.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i171.i, i32 0, i32 1
  %111 = ptrtoint ptr %i_len.i.i.i184.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %mul1.i180.i, ptr %i_len.i.i.i184.i, align 4
  %112 = ptrtoint ptr %blf_size.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %blf_size.i, align 2
  %inc75.i = add i16 %113, 1
  store i16 %inc75.i, ptr %blf_size.i, align 2
  br label %xfs_buf_item_format_segment.exit

if.else.i:                                        ; preds = %if.end88.i.if.else.i_crit_edge, %cond.end65.i.if.else.i_crit_edge
  %vecp.3 = phi ptr [ %vecp.4, %if.end88.i.if.else.i_crit_edge ], [ %vecp.1, %cond.end65.i.if.else.i_crit_edge ]
  %call70238.i = phi i32 [ %call70.i, %if.end88.i.if.else.i_crit_edge ], [ %call70233.i, %cond.end65.i.if.else.i_crit_edge ]
  %add69237.i = phi i32 [ %add69.i, %if.end88.i.if.else.i_crit_edge ], [ %add69232.i, %cond.end65.i.if.else.i_crit_edge ]
  %nbits.0236.i = phi i32 [ %nbits.1.i, %if.end88.i.if.else.i_crit_edge ], [ 1, %cond.end65.i.if.else.i_crit_edge ]
  %first_bit.1235.i = phi i32 [ %first_bit.2.i, %if.end88.i.if.else.i_crit_edge ], [ %first_bit.0.i, %cond.end65.i.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call70238.i, i32 %add69237.i)
  %cmp77.not.i = icmp eq i32 %call70238.i, %add69237.i
  %shl.i186.i = shl i32 %first_bit.1235.i, 7
  %add.i187.i = add i32 %shl.i186.i, %offset.0113
  br i1 %cmp77.not.i, label %lor.lhs.false.i, label %if.else.i.if.then81.i_crit_edge

if.else.i.if.then81.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %call.i188.i = tail call ptr @xfs_buf_offset(ptr noundef %30, i32 noundef %add.i187.i) #10
  %add1.i189.i = add i32 %first_bit.1235.i, %nbits.0236.i
  %shl2.i190.i = shl i32 %add1.i189.i, 7
  %add3.i191.i = add i32 %shl2.i190.i, %offset.0113
  %call4.i192.i = tail call ptr @xfs_buf_offset(ptr noundef %30, i32 noundef %add3.i191.i) #10
  %sub.ptr.lhs.cast.i193.i = ptrtoint ptr %call4.i192.i to i32
  %sub.ptr.rhs.cast.i194.i = ptrtoint ptr %call.i188.i to i32
  %sub.ptr.sub.i195.i = sub i32 %sub.ptr.lhs.cast.i193.i, %sub.ptr.rhs.cast.i194.i
  %mul.i196.i = shl i32 %nbits.0236.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i195.i, i32 %mul.i196.i)
  %cmp.not.i197.not.i = icmp eq i32 %sub.ptr.sub.i195.i, %mul.i196.i
  br i1 %cmp.not.i197.not.i, label %if.else84.i, label %lor.lhs.false.i.if.then81.i_crit_edge

lor.lhs.false.i.if.then81.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81.i

if.then81.i:                                      ; preds = %lor.lhs.false.i.if.then81.i_crit_edge, %if.else.i.if.then81.i_crit_edge
  %call.i200.i = tail call ptr @xfs_buf_offset(ptr noundef %30, i32 noundef %add.i187.i) #10
  %tobool.not.i.i.i201.i = icmp eq ptr %vecp.3, null
  %114 = ptrtoint ptr %lv_iovecp3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %lv_iovecp3.i.i.i, align 4
  br i1 %tobool.not.i.i.i201.i, label %if.then81.i.if.end.i.i.i220.i_crit_edge, label %if.then.i.i.i209.i

if.then81.i.if.end.i.i.i220.i_crit_edge:          ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i220.i

if.then.i.i.i209.i:                               ; preds = %if.then81.i
  %sub.ptr.lhs.cast.i.i.i203.i = ptrtoint ptr %vecp.3 to i32
  %sub.ptr.rhs.cast.i.i.i204.i = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i.i.i205.i = sub i32 %sub.ptr.lhs.cast.i.i.i203.i, %sub.ptr.rhs.cast.i.i.i204.i
  %sub.ptr.div.i.i.i206.i = sdiv exact i32 %sub.ptr.sub.i.i.i205.i, 12
  %116 = ptrtoint ptr %lv_niovecs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lv_niovecs.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i206.i, i32 %117)
  %cmp.i.i.i208.i = icmp slt i32 %sub.ptr.div.i.i.i206.i, %117
  br i1 %cmp.i.i.i208.i, label %if.then.i.i.i209.i.cond.end.i.i.i212.i_crit_edge, label %cond.false.i.i.i210.i, !prof !130

if.then.i.i.i209.i.cond.end.i.i.i212.i_crit_edge: ; preds = %if.then.i.i.i209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i212.i

cond.false.i.i.i210.i:                            ; preds = %if.then.i.i.i209.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 31) #10
  br label %cond.end.i.i.i212.i

cond.end.i.i.i212.i:                              ; preds = %cond.false.i.i.i210.i, %if.then.i.i.i209.i.cond.end.i.i.i212.i_crit_edge
  %incdec.ptr.i.i.i211.i = getelementptr %struct.xfs_log_iovec, ptr %vecp.3, i32 1
  br label %if.end.i.i.i220.i

if.end.i.i.i220.i:                                ; preds = %cond.end.i.i.i212.i, %if.then81.i.if.end.i.i.i220.i_crit_edge
  %vec.0.i.i.i213.i = phi ptr [ %incdec.ptr.i.i.i211.i, %cond.end.i.i.i212.i ], [ %115, %if.then81.i.if.end.i.i.i220.i_crit_edge ]
  %i_type.i.i.i214.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i213.i, i32 0, i32 2
  %118 = ptrtoint ptr %i_type.i.i.i214.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %i_type.i.i.i214.i, align 4
  %119 = ptrtoint ptr %lv_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lv_buf.i.i.i, align 4
  %121 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add.ptr.i.i.i217.i = getelementptr i8, ptr %120, i32 %122
  %123 = ptrtoint ptr %vec.0.i.i.i213.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr.i.i.i217.i, ptr %vec.0.i.i.i213.i, align 4
  %124 = ptrtoint ptr %add.ptr.i.i.i217.i to i32
  %and.i.i.i218.i = and i32 %124, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i218.i)
  %cmp5.i.i.i219.i = icmp eq i32 %and.i.i.i218.i, 0
  br i1 %cmp5.i.i.i219.i, label %if.end.i.i.i220.i.xfs_buf_item_copy_iovec.exit227.i_crit_edge, label %cond.false13.i.i.i221.i, !prof !130

if.end.i.i.i220.i.xfs_buf_item_copy_iovec.exit227.i_crit_edge: ; preds = %if.end.i.i.i220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_copy_iovec.exit227.i

cond.false13.i.i.i221.i:                          ; preds = %if.end.i.i.i220.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 40) #10
  br label %xfs_buf_item_copy_iovec.exit227.i

xfs_buf_item_copy_iovec.exit227.i:                ; preds = %cond.false13.i.i.i221.i, %if.end.i.i.i220.i.xfs_buf_item_copy_iovec.exit227.i_crit_edge
  %mul1.i222.i = shl i32 %nbits.0236.i, 7
  %125 = ptrtoint ptr %vec.0.i.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %vec.0.i.i.i213.i, align 4
  %127 = call ptr @memcpy(ptr %126, ptr %call.i200.i, i32 %mul1.i222.i)
  %128 = ptrtoint ptr %lv_buf_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %lv_buf_len.i.i.i, align 4
  %add1.i.i.i223.i = add i32 %129, %mul1.i222.i
  store i32 %add1.i.i.i223.i, ptr %lv_buf_len.i.i.i, align 4
  %130 = ptrtoint ptr %lv_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %lv_bytes.i.i.i, align 4
  %add2.i.i.i225.i = add i32 %131, %mul1.i222.i
  store i32 %add2.i.i.i225.i, ptr %lv_bytes.i.i.i, align 4
  %i_len.i.i.i226.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i.i213.i, i32 0, i32 1
  %132 = ptrtoint ptr %i_len.i.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %mul1.i222.i, ptr %i_len.i.i.i226.i, align 4
  %133 = ptrtoint ptr %blf_size.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %blf_size.i, align 2
  %inc83.i = add i16 %134, 1
  store i16 %inc83.i, ptr %blf_size.i, align 2
  br label %if.end88.i

if.else84.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc86.i = add i32 %nbits.0236.i, 1
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else84.i, %xfs_buf_item_copy_iovec.exit227.i
  %vecp.4 = phi ptr [ %vecp.3, %if.else84.i ], [ %vec.0.i.i.i213.i, %xfs_buf_item_copy_iovec.exit227.i ]
  %first_bit.2.i = phi i32 [ %first_bit.1235.i, %if.else84.i ], [ %call70238.i, %xfs_buf_item_copy_iovec.exit227.i ]
  %nbits.1.i = phi i32 [ %inc86.i, %if.else84.i ], [ 1, %xfs_buf_item_copy_iovec.exit227.i ]
  %135 = ptrtoint ptr %blf_map_size27.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %blf_map_size27.i, align 8
  %add69.i = add nuw i32 %call70238.i, 1
  %call70.i = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map25.i, i32 noundef %136, i32 noundef %add69.i) #10
  %cmp71.i = icmp eq i32 %call70.i, -1
  br i1 %cmp71.i, label %if.then73.loopexit.i, label %if.end88.i.if.else.i_crit_edge

if.end88.i.if.else.i_crit_edge:                   ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

xfs_buf_item_format_segment.exit:                 ; preds = %xfs_buf_item_copy_iovec.exit185.i, %xfs_buf_item_copy_iovec.exit.i.xfs_buf_item_format_segment.exit_crit_edge, %cond.false.i, %if.then7.i.xfs_buf_item_format_segment.exit_crit_edge, %for.body.xfs_buf_item_format_segment.exit_crit_edge
  %vecp.5 = phi ptr [ %vecp.0112, %for.body.xfs_buf_item_format_segment.exit_crit_edge ], [ %vec.0.i.i.i171.i, %xfs_buf_item_copy_iovec.exit185.i ], [ %vec.0.i.i.i, %cond.false.i ], [ %vec.0.i.i.i, %if.then7.i.xfs_buf_item_format_segment.exit_crit_edge ], [ %vec.0.i.i.i.i, %xfs_buf_item_copy_iovec.exit.i.xfs_buf_item_format_segment.exit_crit_edge ]
  %137 = ptrtoint ptr %b_maps to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %b_maps, align 8
  %bm_len = getelementptr %struct.xfs_buf_map, ptr %138, i32 %i.0116, i32 1
  %139 = ptrtoint ptr %bm_len to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bm_len, align 8
  %shl = shl i32 %140, 9
  %add = add i32 %shl, %offset.0113
  %inc = add nuw nsw i32 %i.0116, 1
  %141 = ptrtoint ptr %bli_format_count to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bli_format_count, align 8
  %cmp72 = icmp slt i32 %inc, %142
  br i1 %cmp72, label %xfs_buf_item_format_segment.exit.for.body_crit_edge, label %xfs_buf_item_format_segment.exit.for.end_crit_edge

xfs_buf_item_format_segment.exit.for.end_crit_edge: ; preds = %xfs_buf_item_format_segment.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

xfs_buf_item_format_segment.exit.for.body_crit_edge: ; preds = %xfs_buf_item_format_segment.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %xfs_buf_item_format_segment.exit.for.end_crit_edge, %if.end71.for.end_crit_edge
  tail call fastcc void @trace_xfs_buf_item_format(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_item_pin(ptr noundef %lip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #10
  %0 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !130

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 465) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 2
  %2 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bli_flags, align 4
  %4 = and i32 %3, 140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %cond.false17, label %cond.end.cond.end18_crit_edge, !prof !138

cond.end.cond.end18_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 468) #10
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.end.cond.end18_crit_edge
  tail call fastcc void @trace_xfs_buf_item_pin(ptr noundef %lip)
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bli_refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %bli_refcount, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bli_refcount, ptr %bli_refcount, i32 1, ptr elementtype(i32) %bli_refcount) #10, !srcloc !139
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 1
  %6 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bli_buf, align 8
  %b_pin_count = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 27
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_pin_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_pin_count, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_pin_count, ptr %b_pin_count, i32 1, ptr elementtype(i32) %b_pin_count) #10, !srcloc !139
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_item_unpin(ptr noundef %lip, i32 noundef %remove) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_buf, align 8
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 2
  %2 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bli_flags, align 4
  %and = and i32 %3, 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_log_item, align 4
  %cmp = icmp eq ptr %5, %lip
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !130

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 490) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bli_refcount = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bli_refcount, i32 noundef 4) #10
  %6 = ptrtoint ptr %bli_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bli_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !130

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 491) #10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  tail call fastcc void @trace_xfs_buf_item_unpin(ptr noundef %lip)
  %call.i.i163 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bli_refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %bli_refcount, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bli_refcount, ptr %bli_refcount, i32 1, ptr elementtype(i32) %bli_refcount) #10, !srcloc !128
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp.i.i, i1 %tobool16.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remove)
  %tobool18.not = icmp eq i32 %remove, 0
  %or.cond162 = or i1 %tobool18.not, %or.cond.not
  br i1 %or.cond162, label %cond.end12.if.end_crit_edge, label %if.then

cond.end12.if.end_crit_edge:                      ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xfs_buf_hold(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end12.if.end_crit_edge
  %b_pin_count = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 27
  %call.i.i164 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_pin_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %b_pin_count, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_pin_count, ptr %b_pin_count, i32 1, ptr elementtype(i32) %b_pin_count) #10, !srcloc !128
  %asmresult.i.i.i.i.i165 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i165)
  %cmp.i.i166 = icmp eq i32 %asmresult.i.i.i.i.i165, 0
  br i1 %cmp.i.i166, label %if.then20, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %b_waiters = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %b_waiters, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  br i1 %cmp.i.i, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  br i1 %tobool16.not, label %if.else124, label %if.then26

if.then26:                                        ; preds = %if.end24
  %10 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bli_flags, align 4
  %and28 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.false37, label %if.then26.cond.end38_crit_edge, !prof !136

if.then26.cond.end38_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end38

cond.false37:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 515) #10
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %if.then26.cond.end38_crit_edge
  %count = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp39 = icmp eq i32 %13, 0
  br i1 %cmp39, label %cond.end38.cond.end49_crit_edge, label %cond.false48, !prof !130

cond.end38.cond.end49_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end49

cond.false48:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 516) #10
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %cond.end38.cond.end49_crit_edge
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_flags, align 4
  %and50 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %cond.false59, label %cond.end49.cond.end60_crit_edge, !prof !136

cond.end49.cond.end60_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 517) #10
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.end49.cond.end60_crit_edge
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %blf_flags, align 4
  %18 = and i16 %17, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool63.not = icmp eq i16 %18, 0
  br i1 %tobool63.not, label %cond.false71, label %cond.end60.cond.end72_crit_edge, !prof !136

cond.end60.cond.end72_crit_edge:                  ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end72

cond.false71:                                     ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 518) #10
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %cond.end60.cond.end72_crit_edge
  %li_trans = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 1
  %19 = ptrtoint ptr %li_trans to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %li_trans, align 4
  %cmp.i.not = icmp eq ptr %20, %li_trans
  br i1 %cmp.i.not, label %cond.end72.cond.end83_crit_edge, label %cond.false82, !prof !130

cond.end72.cond.end83_crit_edge:                  ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end83

cond.false82:                                     ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 519) #10
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false82, %cond.end72.cond.end83_crit_edge
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 21
  %21 = ptrtoint ptr %b_transp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_transp, align 8
  %tobool84.not = icmp eq ptr %22, null
  br i1 %tobool84.not, label %cond.end83.cond.end95_crit_edge, label %cond.false94, !prof !130

cond.end83.cond.end95_crit_edge:                  ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end95

cond.false94:                                     ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 520) #10
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false94, %cond.end83.cond.end95_crit_edge
  tail call fastcc void @trace_xfs_buf_item_unpin_stale(ptr noundef %lip)
  %23 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bli_flags, align 4
  %and97 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else, label %if.then99

if.then99:                                        ; preds = %cond.end95
  tail call void @xfs_buf_item_done(ptr noundef %1)
  tail call void @xfs_buf_inode_iodone(ptr noundef %1) #10
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 20
  %25 = ptrtoint ptr %b_li_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %b_li_list, align 4
  %cmp.i167.not = icmp eq ptr %26, %b_li_list
  br i1 %cmp.i167.not, label %if.then99.if.end123_crit_edge, label %cond.false109, !prof !130

if.then99.if.end123_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

cond.false109:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 533) #10
  br label %if.end123

if.else:                                          ; preds = %cond.end95
  tail call void @xfs_trans_ail_delete(ptr noundef %lip, i32 noundef 2) #10
  %27 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_log_item, align 4
  %29 = tail call ptr @llvm.returnaddress(i32 0) #10
  %30 = ptrtoint ptr %29 to i32
  tail call fastcc void @trace_xfs_buf_item_relse(ptr noundef %1, i32 noundef %30) #10
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %28, i32 0, i32 6
  %31 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %li_flags.i, align 4
  %and1.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.else.xfs_buf_item_relse.exit_crit_edge, label %cond.false.i, !prof !130

if.else.xfs_buf_item_relse.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_relse.exit

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1018) #10
  br label %xfs_buf_item_relse.exit

xfs_buf_item_relse.exit:                          ; preds = %cond.false.i, %if.else.xfs_buf_item_relse.exit_crit_edge
  %33 = ptrtoint ptr %b_log_item to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %b_log_item, align 4
  tail call void @xfs_buf_rele(ptr noundef %1) #10
  tail call fastcc void @xfs_buf_item_free(ptr noundef %28) #10
  %34 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_log_item, align 4
  %cmp112 = icmp eq ptr %35, null
  br i1 %cmp112, label %xfs_buf_item_relse.exit.if.end123_crit_edge, label %cond.false121, !prof !130

xfs_buf_item_relse.exit.if.end123_crit_edge:      ; preds = %xfs_buf_item_relse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

cond.false121:                                    ; preds = %xfs_buf_item_relse.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 537) #10
  br label %if.end123

if.end123:                                        ; preds = %cond.false121, %xfs_buf_item_relse.exit.if.end123_crit_edge, %cond.false109, %if.then99.if.end123_crit_edge
  tail call void @xfs_buf_unlock(ptr noundef %1) #10
  tail call void @xfs_buf_rele(ptr noundef %1) #10
  br label %cleanup

if.else124:                                       ; preds = %if.end24
  br i1 %tobool18.not, label %if.else124.cleanup_crit_edge, label %if.then126

if.else124.cleanup_crit_edge:                     ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then126:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xfs_buf_lock(ptr noundef %1) #10
  %b_flags127 = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %b_flags127 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_flags127, align 4
  %or = or i32 %37, 16
  store i32 %or, ptr %b_flags127, align 4
  tail call void @xfs_buf_ioend_fail(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %if.else124.cleanup_crit_edge, %if.end123, %if.end21.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_buf_item_push(ptr noundef %lip, ptr noundef %buffer_list) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_buf, align 8
  %b_pin_count.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 27
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfs_buf_trylock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %. = select i1 %tobool6.not, i32 2, i32 1
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 2
  %6 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bli_flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.cond.end_crit_edge, label %cond.false, !prof !130

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 576) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end9.cond.end_crit_edge
  tail call fastcc void @trace_xfs_buf_item_push(ptr noundef %lip)
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_flags, align 4
  %and14 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %cond.end.if.end18_crit_edge, label %if.then16

cond.end.if.end18_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_maps.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  tail call void (ptr, ptr, ptr, ...) @xfs_buf_alert_ratelimited(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i64 noundef %13) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %cond.end.if.end18_crit_edge
  %call19 = tail call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %1, ptr noundef %buffer_list) #10
  %spec.select = select i1 %call19, i32 0, i32 3
  tail call void @xfs_buf_unlock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end18 ], [ 1, %entry.cleanup_crit_edge ], [ %., %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_item_committing(ptr noundef %lip, i64 noundef %seq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xfs_buf_item_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_buf_item_release(ptr noundef %lip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_buf, align 8
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 2
  %2 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bli_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and6 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %3, 2
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 6
  %4 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %li_flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14 = icmp ne i32 %6, 0
  tail call fastcc void @trace_xfs_buf_item_release(ptr noundef %lip)
  br i1 %tobool7.not, label %land.lhs.true, label %land.lhs.true23.critedge

land.lhs.true:                                    ; preds = %entry
  %and10.lobit = lshr exact i32 %and10, 1
  %bli_formats.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 6
  %bli_format_count.i = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 5
  %7 = ptrtoint ptr %bli_format_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bli_format_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.i = icmp sgt i32 %8, 0
  br i1 %cmp8.i, label %land.lhs.true.for.body.i_crit_edge, label %land.lhs.true.xfs_buf_item_dirty_format.exit_crit_edge

land.lhs.true.xfs_buf_item_dirty_format.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_dirty_format.exit

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %9 = ptrtoint ptr %bli_format_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bli_format_count.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.xfs_buf_item_dirty_format.exit_crit_edge

for.cond.i.xfs_buf_item_dirty_format.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_dirty_format.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %bli_formats.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bli_formats.i, align 4
  %blf_data_map.i = getelementptr %struct.xfs_buf_log_format, ptr %12, i32 %i.09.i, i32 6
  %blf_map_size.i = getelementptr %struct.xfs_buf_log_format, ptr %12, i32 %i.09.i, i32 5
  %13 = ptrtoint ptr %blf_map_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blf_map_size.i, align 8
  %call.i = tail call i32 @xfs_bitmap_empty(ptr noundef %blf_data_map.i, i32 noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.xfs_buf_item_dirty_format.exit_crit_edge, label %for.cond.i

for.body.i.xfs_buf_item_dirty_format.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_buf_item_dirty_format.exit

xfs_buf_item_dirty_format.exit:                   ; preds = %for.body.i.xfs_buf_item_dirty_format.exit_crit_edge, %for.cond.i.xfs_buf_item_dirty_format.exit_crit_edge, %land.lhs.true.xfs_buf_item_dirty_format.exit_crit_edge
  %cmp.lcssa.i = phi i32 [ 0, %land.lhs.true.xfs_buf_item_dirty_format.exit_crit_edge ], [ 0, %for.cond.i.xfs_buf_item_dirty_format.exit_crit_edge ], [ 1, %for.body.i.xfs_buf_item_dirty_format.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and10.lobit, i32 %cmp.lcssa.i)
  %cmp = icmp eq i32 %and10.lobit, %cmp.lcssa.i
  br i1 %cmp, label %xfs_buf_item_dirty_format.exit.cond.end_crit_edge, label %xfs_buf_item_dirty_format.exit.cond.false_crit_edge

xfs_buf_item_dirty_format.exit.cond.false_crit_edge: ; preds = %xfs_buf_item_dirty_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

xfs_buf_item_dirty_format.exit.cond.end_crit_edge: ; preds = %xfs_buf_item_dirty_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.lhs.true23.critedge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true23.critedge.cond.false_crit_edge, label %land.rhs

land.lhs.true23.critedge.cond.false_crit_edge:    ; preds = %land.lhs.true23.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.rhs:                                         ; preds = %land.lhs.true23.critedge
  %bli_formats.i93 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 6
  %bli_format_count.i94 = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 5
  %15 = ptrtoint ptr %bli_format_count.i94 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bli_format_count.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp8.i95 = icmp sgt i32 %16, 0
  br i1 %cmp8.i95, label %land.rhs.for.body.i104_crit_edge, label %land.rhs.cond.end_crit_edge

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.rhs.for.body.i104_crit_edge:                 ; preds = %land.rhs
  br label %for.body.i104

for.cond.i98:                                     ; preds = %for.body.i104
  %inc.i96 = add nuw nsw i32 %i.09.i99, 1
  %17 = ptrtoint ptr %bli_format_count.i94 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bli_format_count.i94, align 8
  %cmp.i97 = icmp slt i32 %inc.i96, %18
  br i1 %cmp.i97, label %for.cond.i98.for.body.i104_crit_edge, label %for.cond.i98.cond.end_crit_edge

for.cond.i98.cond.end_crit_edge:                  ; preds = %for.cond.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.cond.i98.for.body.i104_crit_edge:             ; preds = %for.cond.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.cond.i98.for.body.i104_crit_edge, %land.rhs.for.body.i104_crit_edge
  %i.09.i99 = phi i32 [ %inc.i96, %for.cond.i98.for.body.i104_crit_edge ], [ 0, %land.rhs.for.body.i104_crit_edge ]
  %19 = ptrtoint ptr %bli_formats.i93 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bli_formats.i93, align 4
  %blf_data_map.i100 = getelementptr %struct.xfs_buf_log_format, ptr %20, i32 %i.09.i99, i32 6
  %blf_map_size.i101 = getelementptr %struct.xfs_buf_log_format, ptr %20, i32 %i.09.i99, i32 5
  %21 = ptrtoint ptr %blf_map_size.i101 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blf_map_size.i101, align 8
  %call.i102 = tail call i32 @xfs_bitmap_empty(ptr noundef %blf_data_map.i100, i32 noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %for.body.i104.cond.false_crit_edge, label %for.cond.i98

for.body.i104.cond.false_crit_edge:               ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %for.body.i104.cond.false_crit_edge, %land.lhs.true23.critedge.cond.false_crit_edge, %xfs_buf_item_dirty_format.exit.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 678) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.cond.i98.cond.end_crit_edge, %land.rhs.cond.end_crit_edge, %xfs_buf_item_dirty_format.exit.cond.end_crit_edge
  br i1 %tobool3.not, label %cond.end.cond.end44_crit_edge, label %lor.rhs31

cond.end.cond.end44_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end44

lor.rhs31:                                        ; preds = %cond.end
  %blf_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %blf_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %blf_flags, align 4
  %25 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool34.not = icmp eq i16 %25, 0
  br i1 %tobool34.not, label %cond.false43, label %lor.rhs31.cond.end44_crit_edge, !prof !136

lor.rhs31.cond.end44_crit_edge:                   ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end44

cond.false43:                                     ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 679) #10
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %lor.rhs31.cond.end44_crit_edge, %cond.end.cond.end44_crit_edge
  %b_transp = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %b_transp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %b_transp, align 8
  %27 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bli_flags, align 4
  %and46 = and i32 %28, -138
  store i32 %and46, ptr %bli_flags, align 4
  %call47 = tail call zeroext i1 @xfs_buf_item_put(ptr noundef %lip)
  %brmerge = select i1 %tobool3.not, i1 true, i1 %call47
  %or.cond = select i1 %tobool.not, i1 %brmerge, i1 false
  br i1 %or.cond, label %if.end, label %cond.end44.cleanup_crit_edge

cond.end44.cleanup_crit_edge:                     ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end44
  %spec.select = select i1 %tobool3.not, i1 true, i1 %tobool14
  br i1 %spec.select, label %if.end.cond.end68_crit_edge, label %cond.false67, !prof !130

if.end.cond.end68_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end68

cond.false67:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 697) #10
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %if.end.cond.end68_crit_edge
  tail call void @xfs_buf_unlock(ptr noundef %1) #10
  tail call void @xfs_buf_rele(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end68, %cond.end44.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xfs_buf_item_committed(ptr noundef %lip, i64 noundef %lsn) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_buf_item_committed(ptr noundef %lip)
  %bli_flags = getelementptr inbounds %struct.xfs_buf_log_item, ptr %lip, i32 0, i32 2
  %0 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bli_flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 2
  %2 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %li_lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i64 [ %lsn, %if.end ], [ %3, %land.lhs.true.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_size_stale(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size_stale, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_size_stale, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !140
  %call42 = tail call i32 @__traceiter_xfs_buf_item_size_stale(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size_stale, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size_stale, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_size_stale.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_size_stale.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 609, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
define internal fastcc void @trace_xfs_buf_item_size_ordered(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size_ordered, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_size_ordered, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !142
  %call42 = tail call i32 @__traceiter_xfs_buf_item_size_ordered(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !143
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size_ordered, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size_ordered, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_size_ordered.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_size_ordered.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 608, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
define internal fastcc void @xfs_buf_item_size_segment(ptr nocapture noundef readonly %bip, ptr noundef %blfp, i32 noundef %offset, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_buf = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 1
  %0 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_buf, align 8
  %blf_data_map = getelementptr inbounds %struct.xfs_buf_log_format, ptr %blfp, i32 0, i32 6
  %blf_map_size = getelementptr inbounds %struct.xfs_buf_log_format, ptr %blfp, i32 0, i32 5
  %2 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blf_map_size, align 8
  %call = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map, i32 noundef %3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nvecs, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %nvecs, align 4
  %6 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blf_map_size, align 8
  %mul.i = shl i32 %7, 2
  %add.i = add i32 %mul.i, 20
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 4
  %add = add i32 %add.i, %9
  store i32 %add, ptr %nbytes, align 4
  br label %do.body

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %if.end
  %first_bit.0 = phi i32 [ %call, %if.end ], [ %call19, %if.end11.do.body_crit_edge ]
  %10 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blf_map_size, align 8
  %call5 = tail call i32 @xfs_contig_bits(ptr noundef %blf_data_map, i32 noundef %11, i32 noundef %first_bit.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %cond.end, label %cond.end.thread, !prof !130

cond.end.thread:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 108) #10
  br label %if.end11

cond.end:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp8.not = icmp eq i32 %call5, 1
  br i1 %cmp8.not, label %cond.end.if.end11_crit_edge, label %land.lhs.true

cond.end.if.end11_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %cond.end
  %shl.i = shl i32 %first_bit.0, 7
  %add.i80 = add i32 %shl.i, %offset
  %call.i = tail call ptr @xfs_buf_offset(ptr noundef %1, i32 noundef %add.i80) #10
  %add1.i = add i32 %call5, %first_bit.0
  %shl2.i = shl i32 %add1.i, 7
  %add3.i = add i32 %shl2.i, %offset
  %call4.i = tail call ptr @xfs_buf_offset(ptr noundef %1, i32 noundef %add3.i) #10
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call4.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %mul.i81 = shl i32 %call5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %mul.i81)
  %cmp.not.i.not = icmp eq i32 %sub.ptr.sub.i, %mul.i81
  br i1 %cmp.not.i.not, label %land.lhs.true.if.end11_crit_edge, label %slow_scan

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %cond.end.if.end11_crit_edge, %cond.end.thread
  %12 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nvecs, align 4
  %inc12 = add i32 %13, 1
  store i32 %inc12, ptr %nvecs, align 4
  %mul = shl i32 %call5, 7
  %14 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes, align 4
  %add13 = add i32 %15, %mul
  store i32 %add13, ptr %nbytes, align 4
  %16 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blf_map_size, align 8
  %add17 = add i32 %call5, %first_bit.0
  %add18 = add i32 %add17, 1
  %call19 = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map, i32 noundef %17, i32 noundef %add18) #10
  %cmp20.not = icmp eq i32 %call19, -1
  br i1 %cmp20.not, label %if.end11.cleanup_crit_edge, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

slow_scan:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nvecs, align 4
  %inc21 = add i32 %19, 1
  store i32 %inc21, ptr %nvecs, align 4
  %20 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %storemerge.in98 = load i32, ptr %nbytes, align 4
  %storemerge99 = add i32 %storemerge.in98, 128
  store i32 %storemerge99, ptr %nbytes, align 4
  %21 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blf_map_size, align 8
  %add27100 = add nuw i32 %first_bit.0, 1
  %call28101 = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map, i32 noundef %22, i32 noundef %add27100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28101)
  %cmp29102 = icmp eq i32 %call28101, -1
  br i1 %cmp29102, label %slow_scan.cleanup_crit_edge, label %slow_scan.if.else_crit_edge

slow_scan.if.else_crit_edge:                      ; preds = %slow_scan
  br label %if.else

slow_scan.cleanup_crit_edge:                      ; preds = %slow_scan
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end40.if.else_crit_edge, %slow_scan.if.else_crit_edge
  %call28106 = phi i32 [ %call28, %if.end40.if.else_crit_edge ], [ %call28101, %slow_scan.if.else_crit_edge ]
  %add27105 = phi i32 [ %add27, %if.end40.if.else_crit_edge ], [ %add27100, %slow_scan.if.else_crit_edge ]
  %nbits.0104 = phi i32 [ %nbits.1, %if.end40.if.else_crit_edge ], [ %call5, %slow_scan.if.else_crit_edge ]
  %first_bit.1103 = phi i32 [ %first_bit.2, %if.end40.if.else_crit_edge ], [ %first_bit.0, %slow_scan.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call28106, i32 %add27105)
  %cmp32.not = icmp eq i32 %call28106, %add27105
  br i1 %cmp32.not, label %lor.lhs.false, label %if.else.if.then34_crit_edge

if.else.if.then34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

lor.lhs.false:                                    ; preds = %if.else
  %shl.i82 = shl i32 %first_bit.1103, 7
  %add.i83 = add i32 %shl.i82, %offset
  %call.i84 = tail call ptr @xfs_buf_offset(ptr noundef %1, i32 noundef %add.i83) #10
  %add1.i85 = add i32 %nbits.0104, %first_bit.1103
  %shl2.i86 = shl i32 %add1.i85, 7
  %add3.i87 = add i32 %shl2.i86, %offset
  %call4.i88 = tail call ptr @xfs_buf_offset(ptr noundef %1, i32 noundef %add3.i87) #10
  %sub.ptr.lhs.cast.i89 = ptrtoint ptr %call4.i88 to i32
  %sub.ptr.rhs.cast.i90 = ptrtoint ptr %call.i84 to i32
  %sub.ptr.sub.i91 = sub i32 %sub.ptr.lhs.cast.i89, %sub.ptr.rhs.cast.i90
  %mul.i92 = shl i32 %nbits.0104, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i91, i32 %mul.i92)
  %cmp.not.i93.not = icmp eq i32 %sub.ptr.sub.i91, %mul.i92
  br i1 %cmp.not.i93.not, label %if.else36, label %lor.lhs.false.if.then34_crit_edge

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false.if.then34_crit_edge, %if.else.if.then34_crit_edge
  %23 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nvecs, align 4
  %inc35 = add i32 %24, 1
  store i32 %inc35, ptr %nvecs, align 4
  br label %if.end40

if.else36:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %inc38 = add i32 %nbits.0104, 1
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then34
  %first_bit.2 = phi i32 [ %call28106, %if.then34 ], [ %first_bit.1103, %if.else36 ]
  %nbits.1 = phi i32 [ 1, %if.then34 ], [ %inc38, %if.else36 ]
  %25 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %storemerge.in = load i32, ptr %nbytes, align 4
  %storemerge = add i32 %storemerge.in, 128
  store i32 %storemerge, ptr %nbytes, align 4
  %26 = ptrtoint ptr %blf_map_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blf_map_size, align 8
  %add27 = add nuw i32 %call28106, 1
  %call28 = tail call i32 @xfs_next_bit(ptr noundef %blf_data_map, i32 noundef %27, i32 noundef %add27) #10
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.end40.cleanup_crit_edge, label %if.end40.if.else_crit_edge

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40.cleanup_crit_edge, %slow_scan.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_size(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_size, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %call42 = tail call i32 @__traceiter_xfs_buf_item_size(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !145
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_size, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_size.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 607, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_size_stale(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_size_ordered(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_next_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_contig_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_item_in_current_chkpt(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_format(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_format, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_format, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !146
  %call42 = tail call i32 @__traceiter_xfs_buf_item_format(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_format, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_format, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_format.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_format.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 610, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
define internal fastcc void @trace_xfs_buf_item_format_stale(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_format_stale, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_format_stale, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !148
  %call42 = tail call i32 @__traceiter_xfs_buf_item_format_stale(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_format_stale, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_format_stale, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_format_stale.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_format_stale.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 611, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local i32 @__traceiter_xfs_buf_item_format_stale(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_pin(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_pin, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_pin, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !150
  %call42 = tail call i32 @__traceiter_xfs_buf_item_pin(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !151
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_pin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_pin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_pin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_pin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 613, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local i32 @__traceiter_xfs_buf_item_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_unpin(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_unpin, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_unpin, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !152
  %call42 = tail call i32 @__traceiter_xfs_buf_item_unpin(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !153
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_unpin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_unpin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_unpin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_unpin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 614, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_unpin_stale(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_unpin_stale, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_unpin_stale, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %call42 = tail call i32 @__traceiter_xfs_buf_item_unpin_stale(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_unpin_stale, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_unpin_stale, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_unpin_stale.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_unpin_stale.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 615, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local void @xfs_buf_inode_iodone(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_ioend_fail(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_unpin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_unpin_stale(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_push(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_push, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_push, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %call42 = tail call i32 @__traceiter_xfs_buf_item_push(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !157
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_push, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_push, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_push.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_push.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 618, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local void @xfs_buf_alert_ratelimited(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_release(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_release, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_release, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !158
  %call42 = tail call i32 @__traceiter_xfs_buf_item_release(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_release, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_release, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 616, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local i32 @__traceiter_xfs_buf_item_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_buf_item_committed(ptr noundef %bip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_committed, i32 0, i32 1), ptr blockaddress(@trace_xfs_buf_item_committed, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !160
  %call42 = tail call i32 @__traceiter_xfs_buf_item_committed(ptr noundef null, ptr noundef %bip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_committed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_buf_item_committed, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_buf_item_committed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_buf_item_committed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 617, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local i32 @__traceiter_xfs_buf_item_committed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_buf_item_relse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_buf_item_free_format(ptr noundef %bip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bli_formats = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 6
  %0 = ptrtoint ptr %bli_formats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bli_formats, align 4
  %__bli_format = getelementptr inbounds %struct.xfs_buf_log_item, ptr %bip, i32 0, i32 7
  %cmp.not = icmp eq ptr %1, %__bli_format
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %bli_formats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bli_formats, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !59, !61, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !87, !89, !91, !93, !95, !96, !98, !100, !102, !104, !105, !107, !108, !110, !112, !114, !116}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_buf_item.c", i32 799, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_buf_item.c", i32 801, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_buf_item.c", i32 802, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_buf_item.c", i32 803, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_buf_item.c", i32 830, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_buf_item.c", i32 1018, i32 2}
!13 = !{ptr @xfs_buf_item_cache, !14, !"xfs_buf_item_cache", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_buf_item.c", i32 26, i32 20}
!15 = !{ptr @xfs_buf_item_ops, !16, !"xfs_buf_item_ops", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_buf_item.c", i32 741, i32 34}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_buf_item.c", i32 198, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_buf_item.c", i32 206, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_buf_item.c", i32 214, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_trace.h", i32 609, i32 1}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!27 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trace.h", i32 608, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_buf_item.c", i32 108, i32 3}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_trace.h", i32 607, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_buf_item.c", i32 407, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_buf_item.c", i32 409, i32 2}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_buf_item.c", i32 412, i32 2}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_buf_item.c", i32 311, i32 3}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_buf_item.c", i32 320, i32 3}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_buf_item.c", i32 350, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_log.h", i32 31, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_log.h", i32 40, i32 2}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_trace.h", i32 611, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trace.h", i32 610, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_buf_item.c", i32 466, i32 2}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_trace.h", i32 613, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_buf_item.c", i32 490, i32 2}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_buf_item.c", i32 515, i32 3}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_buf_item.c", i32 516, i32 3}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_buf_item.c", i32 517, i32 3}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_buf_item.c", i32 519, i32 3}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_buf_item.c", i32 533, i32 4}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_buf_item.c", i32 537, i32 4}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_trace.h", i32 614, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/xfs/xfs_trace.h", i32 615, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_buf_item.c", i32 576, i32 2}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/xfs/xfs_buf_item.c", i32 582, i32 33}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_buf_item.c", i32 583, i32 6}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../fs/xfs/xfs_trace.h", i32 618, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/xfs/xfs_buf_item.c", i32 677, i32 2}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/xfs/xfs_buf_item.c", i32 679, i32 2}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/xfs/xfs_buf_item.c", i32 697, i32 2}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../fs/xfs/xfs_trace.h", i32 616, i32 1}
!104 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../fs/xfs/xfs_trace.h", i32 617, i32 1}
!107 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/xfs/xfs_buf_item.c", i32 757, i32 2}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/xfs/xfs_buf_item.c", i32 868, i32 2}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/xfs/xfs_buf_item.c", i32 869, i32 2}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../fs/xfs/xfs_trace.h", i32 466, i32 1}
!116 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148732894}
!128 = !{i64 2148647603, i64 2148647635, i64 2148647664, i64 2148647698, i64 2148647729, i64 2148647752}
!129 = !{i64 2148733123}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2148272406, i64 2148272411, i64 2148272424, i64 2148272468, i64 2148272502, i64 2148272523}
!132 = !{i64 2156963071}
!133 = !{i64 2156963296}
!134 = !{i64 2149974499}
!135 = !{i64 2149975535}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!138 = !{!"branch_weights", i32 1, i32 4001}
!139 = !{i64 2148644418, i64 2148644444, i64 2148644473, i64 2148644507, i64 2148644538, i64 2148644561}
!140 = !{i64 2157199209}
!141 = !{i64 2157199424}
!142 = !{i64 2157178078}
!143 = !{i64 2157178297}
!144 = !{i64 2157161362}
!145 = !{i64 2157161565}
!146 = !{i64 2157216015}
!147 = !{i64 2157216222}
!148 = !{i64 2157232839}
!149 = !{i64 2157233058}
!150 = !{i64 2157270380}
!151 = !{i64 2157270581}
!152 = !{i64 2157286769}
!153 = !{i64 2157286974}
!154 = !{i64 2157303500}
!155 = !{i64 2157303717}
!156 = !{i64 2157357895}
!157 = !{i64 2157358098}
!158 = !{i64 2157324460}
!159 = !{i64 2157324669}
!160 = !{i64 2157341221}
!161 = !{i64 2157341434}
