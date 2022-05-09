; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_extfree_item.c_pt.bc'
source_filename = "../fs/xfs/xfs_extfree_item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_defer_op_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xlog_recover_item_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfs_extent_free_item = type { %struct.list_head, i64, i64, i32, i32 }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_efd_log_item = type { %struct.xfs_log_item, ptr, i32, %struct.xfs_efd_log_format }
%struct.xfs_efd_log_format = type { i16, i16, i32, i64, [1 x %struct.xfs_extent] }
%struct.xfs_extent = type { i64, i32 }
%struct.xlog_recover_item = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.xfs_efi_log_format = type { i16, i16, i32, i64, [1 x %struct.xfs_extent] }
%struct.xfs_efi_log_item = type { %struct.xfs_log_item, %struct.atomic_t, %struct.atomic_t, %struct.xfs_efi_log_format }
%struct.xlog = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i32, i32, [88 x i8], %struct.wait_queue_head, i32, ptr, %struct.spinlock, i32, i32, i32, i32, [8 x i8], %struct.atomic64_t, [120 x i8], %struct.atomic64_t, [120 x i8], %struct.xlog_grant_head, %struct.xlog_grant_head, %struct.xfs_kobj, [8 x ptr], i64, i32, %struct.rw_semaphore, [52 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xfs_log_vec = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_efi_log_format_32 = type <{ i16, i16, i32, i64, [1 x %struct.xfs_extent_32] }>
%struct.xfs_extent_32 = type <{ i64, i32 }>

@xfs_extent_free_defer_type = dso_local constant { %struct.xfs_defer_op_type, [36 x i8] } { %struct.xfs_defer_op_type { ptr @xfs_extent_free_create_intent, ptr @xfs_extent_free_abort_intent, ptr @xfs_extent_free_create_done, ptr @xfs_extent_free_finish_item, ptr null, ptr @xfs_extent_free_cancel_item, i32 16 }, [36 x i8] zeroinitializer }, align 32
@xfs_agfl_free_defer_type = dso_local constant { %struct.xfs_defer_op_type, [36 x i8] } { %struct.xfs_defer_op_type { ptr @xfs_extent_free_create_intent, ptr @xfs_extent_free_abort_intent, ptr @xfs_extent_free_create_done, ptr @xfs_agfl_free_finish_item, ptr null, ptr @xfs_extent_free_cancel_item, i32 16 }, [36 x i8] zeroinitializer }, align 32
@xlog_efi_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4662, ptr null, ptr null, ptr null, ptr @xlog_recover_efi_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xlog_efd_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4663, ptr null, ptr null, ptr null, ptr @xlog_recover_efd_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xfs_efi_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@xfs_efd_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"count > 0\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/xfs/xfs_extfree_item.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nextents > 0\00", [19 x i8] zeroinitializer }, align 32
@xfs_efi_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 0, ptr @xfs_efi_item_size, ptr @xfs_efi_item_format, ptr null, ptr @xfs_efi_item_unpin, ptr null, ptr null, ptr @xfs_efi_item_release, ptr null, ptr @xfs_efi_item_recover, ptr @xfs_efi_item_match, ptr @xfs_efi_item_relog }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"atomic_read(&efip->efi_next_extent) == efip->efi_format.efi_nextents\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/xfs/xfs_log.h\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IS_ALIGNED((unsigned long)vec->i_addr, sizeof(uint64_t))\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"atomic_read(&efip->efi_refcount) > 0\00", [59 x i8] zeroinitializer }, align 32
@__func__.xfs_efi_item_recover = private unnamed_addr constant [21 x i8] c"xfs_efi_item_recover\00", align 1
@XFS_RMAP_OINFO_ANY_OWNER = external dso_local constant %struct.xfs_owner_info, align 8
@xfs_efd_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 1, ptr @xfs_efd_item_size, ptr @xfs_efd_item_format, ptr null, ptr null, ptr null, ptr null, ptr @xfs_efd_item_release, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"efdp->efd_next_extent == efdp->efd_format.efd_nextents\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"next_extent < efdp->efd_format.efd_nextents\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_bmap_free_deferred = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_bmap_free_deferred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"next_extent < efip->efi_format.efi_nextents\00", [52 x i8] zeroinitializer }, align 32
@xfs_extfree_item_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"free->xefi_blockcount == 1\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_agfl_free_deferred = external dso_local global %struct.tracepoint, align 4
@trace_xfs_agfl_free_deferred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.xfs_efi_copy_format = private unnamed_addr constant [20 x i8] c"xfs_efi_copy_format\00", align 1
@.str.15 = internal constant { [249 x i8], [39 x i8] } { [249 x i8] c"(item->ri_buf[0].i_len == (sizeof(xfs_efd_log_format_32_t) + ((efd_formatp->efd_nextents - 1) * sizeof(xfs_extent_32_t)))) || (item->ri_buf[0].i_len == (sizeof(xfs_efd_log_format_64_t) + ((efd_formatp->efd_nextents - 1) * sizeof(xfs_extent_64_t))))\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"xfs_extent_free_defer_type\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 514, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"xfs_agfl_free_defer_type\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 579, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"xlog_efi_item_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 737, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"xlog_efd_item_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 768, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"xfs_efi_cache\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 28, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"xfs_efd_cache\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 29, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 449, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 158, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"xfs_efi_item_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 690, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 105, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 31, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"../fs/xfs/xfs_log.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 40, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 60, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"xfs_efd_item_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 309, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 285, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 387, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 2683, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 432, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 546, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [29 x i8] c"../fs/xfs/xfs_extfree_item.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 759, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @xfs_extent_free_defer_type, ptr @xfs_agfl_free_defer_type, ptr @xlog_efi_item_ops, ptr @xlog_efd_item_ops, ptr @xfs_efi_cache, ptr @xfs_efd_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xfs_efi_item_ops, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xfs_efd_item_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_extent_free_defer_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_agfl_free_defer_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_efi_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_efd_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_efi_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_efd_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_efi_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_efd_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 249, i32 288, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_extent_free_create_intent(ptr noundef %tp, ptr noundef %items, i32 noundef %count, i1 noundef zeroext %sort) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %call = tail call fastcc ptr @xfs_efi_init(ptr noundef %1, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !65

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 449) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call) #11
  br i1 %sort, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @list_sort(ptr noundef %1, ptr noundef %items, ptr noundef nonnull @xfs_extent_free_diff_items) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %free.022 = load ptr, ptr %items, align 4
  %cmp3.not23 = icmp eq ptr %free.022, %items
  br i1 %cmp3.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %free.024 = phi ptr [ %free.0, %for.body.for.body_crit_edge ], [ %free.022, %if.end.for.body_crit_edge ]
  tail call fastcc void @xfs_extent_free_log_item(ptr noundef %tp, ptr noundef %call, ptr noundef %free.024)
  %3 = ptrtoint ptr %free.024 to i32
  call void @__asan_load4_noabort(i32 %3)
  %free.0 = load ptr, ptr %free.024, align 4
  %cmp3.not = icmp eq ptr %free.0, %items
  br i1 %cmp3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret ptr %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_extent_free_abort_intent(ptr noundef %intent) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_efi_release(ptr noundef %intent)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_extent_free_create_done(ptr noundef %tp, ptr noundef %intent, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc ptr @xfs_trans_get_efd(ptr noundef %tp, ptr noundef %intent, i32 noundef %count)
  ret ptr %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_extent_free_finish_item(ptr noundef %tp, ptr noundef %done, ptr noundef %item, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  %oinfo = alloca %struct.xfs_owner_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oinfo) #11
  %0 = getelementptr inbounds i8, ptr %oinfo, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %xefi_owner = getelementptr inbounds %struct.xfs_extent_free_item, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %xefi_owner to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %xefi_owner, align 8
  %4 = ptrtoint ptr %oinfo to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %oinfo, align 8
  %xefi_flags = getelementptr inbounds %struct.xfs_extent_free_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %xefi_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xefi_flags, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %oi_flags = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %7 = ptrtoint ptr %oi_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oi_flags, align 8
  %or = or i32 %8, 1
  store i32 %or, ptr %oi_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %oi_flags5 = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %9 = ptrtoint ptr %oi_flags5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oi_flags5, align 8
  %or6 = or i32 %10, 2
  store i32 %or6, ptr %oi_flags5, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %xefi_startblock = getelementptr inbounds %struct.xfs_extent_free_item, ptr %item, i32 0, i32 2
  %11 = ptrtoint ptr %xefi_startblock to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %xefi_startblock, align 8
  %xefi_blockcount = getelementptr inbounds %struct.xfs_extent_free_item, ptr %item, i32 0, i32 3
  %13 = ptrtoint ptr %xefi_blockcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xefi_blockcount, align 8
  %and9 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10 = icmp ne i32 %and9, 0
  %call11 = call fastcc i32 @xfs_trans_free_extent(ptr noundef %tp, ptr noundef %done, i64 noundef %12, i32 noundef %14, ptr noundef nonnull %oinfo, i1 noundef zeroext %tobool10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_extfree_item_cache to i32))
  %15 = load ptr, ptr @xfs_extfree_item_cache, align 4
  call void @kmem_cache_free(ptr noundef %15, ptr noundef %item) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oinfo) #11
  ret i32 %call11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_extent_free_cancel_item(ptr noundef %item) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_extfree_item_cache to i32))
  %0 = load ptr, ptr @xfs_extfree_item_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %item) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_agfl_free_finish_item(ptr noundef %tp, ptr noundef %done, ptr noundef %item, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  %oinfo = alloca %struct.xfs_owner_info, align 8
  %agbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oinfo) #11
  %0 = getelementptr inbounds i8, ptr %oinfo, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #11
  %4 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp, align 4, !annotation !66
  %xefi_blockcount = getelementptr inbounds %struct.xfs_extent_free_item, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %xefi_blockcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xefi_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !67

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 546) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %xefi_startblock = getelementptr inbounds %struct.xfs_extent_free_item, ptr %item, i32 0, i32 2
  %7 = ptrtoint ptr %xefi_startblock to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %xefi_startblock, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 24
  %9 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %10 to i32
  %sh_prom = zext i8 %10 to i64
  %shr = lshr i64 %8, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %11 = trunc i64 %8 to i32
  %conv9 = and i32 %sub.i, %11
  %xefi_owner = getelementptr inbounds %struct.xfs_extent_free_item, ptr %item, i32 0, i32 1
  %12 = ptrtoint ptr %xefi_owner to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %xefi_owner, align 8
  %14 = ptrtoint ptr %oinfo to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %oinfo, align 8
  %15 = ptrtoint ptr %xefi_blockcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xefi_blockcount, align 8
  tail call fastcc void @trace_xfs_agfl_free_deferred(ptr noundef %3, i32 noundef %conv2, i32 noundef %conv9, i32 noundef %16)
  %call11 = call i32 @xfs_alloc_read_agf(ptr noundef %3, ptr noundef %tp, i32 noundef %conv2, i32 noundef 0, ptr noundef nonnull %agbp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agbp, align 4
  %call13 = call i32 @xfs_free_agfl_block(ptr noundef %tp, i32 noundef %conv2, i32 noundef %conv9, ptr noundef %18, ptr noundef nonnull %oinfo) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %error.0 = phi i32 [ %call11, %cond.end.if.end_crit_edge ], [ %call13, %if.then ]
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %19 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t_flags, align 4
  %or = or i32 %20, 1
  store i32 %or, ptr %t_flags, align 4
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %done, i32 0, i32 6
  call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #11
  %efd_next_extent = getelementptr inbounds %struct.xfs_efd_log_item, ptr %done, i32 0, i32 2
  %21 = ptrtoint ptr %efd_next_extent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %efd_next_extent, align 4
  %efd_nextents = getelementptr inbounds %struct.xfs_efd_log_item, ptr %done, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %efd_nextents to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %efd_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp14 = icmp ult i32 %22, %24
  br i1 %cmp14, label %if.end.cond.end24_crit_edge, label %cond.false23, !prof !67

if.end.cond.end24_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end24

cond.false23:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 568) #11
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %if.end.cond.end24_crit_edge
  %arrayidx = getelementptr %struct.xfs_efd_log_item, ptr %done, i32 0, i32 3, i32 4, i32 %22
  %25 = ptrtoint ptr %xefi_startblock to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %xefi_startblock, align 8
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %xefi_blockcount to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xefi_blockcount, align 8
  %ext_len = getelementptr %struct.xfs_efd_log_item, ptr %done, i32 0, i32 3, i32 4, i32 %22, i32 1
  %30 = ptrtoint ptr %ext_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ext_len, align 8
  %31 = ptrtoint ptr %efd_next_extent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %efd_next_extent, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %efd_next_extent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_extfree_item_cache to i32))
  %33 = load ptr, ptr @xfs_extfree_item_cache, align 4
  call void @kmem_cache_free(ptr noundef %33, ptr noundef %item) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oinfo) #11
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_efi_commit_pass2(ptr nocapture noundef readonly %log, ptr nocapture noundef readnone %buffer_list, ptr nocapture noundef readonly %item, i64 noundef %lsn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ri_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_format, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %efi_nextents, align 4
  %call = tail call fastcc ptr @xfs_efi_init(ptr noundef %1, i32 noundef %7)
  %8 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ri_buf, align 4
  %efi_format = getelementptr inbounds %struct.xfs_efi_log_item, ptr %call, i32 0, i32 3
  %call3 = tail call fastcc i32 @xfs_efi_copy_format(ptr noundef %9, ptr noundef %efi_format)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @xfs_efi_item_free(ptr noundef %call)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %efi_next_extent = getelementptr inbounds %struct.xfs_efi_log_item, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %efi_nextents, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %efi_next_extent, i32 noundef 4) #11
  %12 = ptrtoint ptr %efi_next_extent to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %11, ptr %efi_next_extent, align 4
  %l_ailp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 1
  %13 = ptrtoint ptr %l_ailp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l_ailp, align 4
  tail call void @xfs_trans_ail_insert(ptr noundef %14, ptr noundef %call, i64 noundef %lsn) #11
  tail call fastcc void @xfs_efi_release(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_efd_commit_pass2(ptr noundef %log, ptr nocapture noundef readnone %buffer_list, ptr nocapture noundef readonly %item, i64 noundef %lsn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_len, align 4
  %efd_nextents = getelementptr inbounds %struct.xfs_efd_log_format, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %efd_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %efd_nextents, align 4
  %sub = add i32 %7, -1
  %mul = mul i32 %sub, 12
  %add = add i32 %mul, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp = icmp eq i32 %5, %add
  %mul8 = shl i32 %sub, 4
  %add9 = add i32 %mul8, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add9)
  %cmp10 = icmp eq i32 %5, %add9
  %8 = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %8, label %entry.cond.end_crit_edge, label %cond.false, !prof !67

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 762) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %efd_efi_id = getelementptr inbounds %struct.xfs_efd_log_format, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %efd_efi_id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %efd_efi_id, align 8
  tail call void @xlog_recover_release_intent(ptr noundef %log, i16 noundef zeroext 4662, i64 noundef %10) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_efi_init(ptr noundef %mp, i32 noundef %nextents) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextents)
  %cmp.not = icmp eq i32 %nextents, 0
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !65

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 158) #11
  br label %if.else

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nextents)
  %cmp2 = icmp ugt i32 %nextents, 16
  br i1 %cmp2, label %if.then, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = shl i32 %nextents, 4
  %add = add i32 %sub, 104
  %call.i = tail call ptr @kmem_alloc(i32 noundef %add, i32 noundef 16) #11
  br label %if.end

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %cond.end.thread
  %0 = load ptr, ptr @xfs_efi_cache, align 4
  %call.i15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %efip.0 = phi ptr [ %call.i, %if.then ], [ %call.i15, %if.else ]
  tail call void @xfs_log_item_init(ptr noundef %mp, ptr noundef %efip.0, i32 noundef 4662, ptr noundef nonnull @xfs_efi_item_ops) #11
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip.0, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %nextents, ptr %efi_nextents, align 4
  %2 = ptrtoint ptr %efip.0 to i32
  %conv = zext i32 %2 to i64
  %efi_id = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip.0, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %efi_id to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %efi_id, align 8
  %efi_next_extent = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip.0, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %efi_next_extent, i32 noundef 4) #11
  %4 = ptrtoint ptr %efi_next_extent to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %efi_next_extent, align 4
  %efi_refcount = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip.0, i32 0, i32 1
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %efi_refcount, i32 noundef 4) #11
  %5 = ptrtoint ptr %efi_refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 2, ptr %efi_refcount, align 4
  ret ptr %efip.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_add_item(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_extent_free_diff_items(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xefi_startblock = getelementptr inbounds %struct.xfs_extent_free_item, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %xefi_startblock to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %xefi_startblock, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %priv, i32 0, i32 24
  %2 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %1, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %xefi_startblock5 = getelementptr inbounds %struct.xfs_extent_free_item, ptr %b, i32 0, i32 2
  %4 = ptrtoint ptr %xefi_startblock5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %xefi_startblock5, align 8
  %shr10 = lshr i64 %5, %sh_prom
  %conv11 = trunc i64 %shr10 to i32
  %sub = sub i32 %conv4, %conv11
  ret i32 %sub
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_extent_free_log_item(ptr nocapture noundef %tp, ptr noundef %efip, ptr nocapture noundef readonly %free) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %t_flags, align 4
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %efip, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #11
  %efi_next_extent = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %efi_next_extent, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %efi_next_extent, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %efi_next_extent, ptr %efi_next_extent, i32 1, ptr elementtype(i32) %efi_next_extent) #11, !srcloc !69
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !70
  %sub = add i32 %asmresult.i.i.i.i, -1
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %efi_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp = icmp ult i32 %sub, %4
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !67

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 432) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %arrayidx = getelementptr %struct.xfs_efi_log_item, ptr %efip, i32 0, i32 3, i32 4, i32 %sub
  %xefi_startblock = getelementptr inbounds %struct.xfs_extent_free_item, ptr %free, i32 0, i32 2
  %5 = ptrtoint ptr %xefi_startblock to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %xefi_startblock, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx, align 8
  %xefi_blockcount = getelementptr inbounds %struct.xfs_extent_free_item, ptr %free, i32 0, i32 3
  %8 = ptrtoint ptr %xefi_blockcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xefi_blockcount, align 8
  %ext_len = getelementptr %struct.xfs_efi_log_item, ptr %efip, i32 0, i32 3, i32 4, i32 %sub, i32 1
  %10 = ptrtoint ptr %ext_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ext_len, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_item_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_efi_item_size(ptr nocapture noundef readonly %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvecs, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %nvecs, align 4
  %efi_nextents.i = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %efi_nextents.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efi_nextents.i, align 4
  %sub.i = shl i32 %3, 4
  %add.i = add i32 %sub.i, 16
  %4 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes, align 4
  %add2 = add i32 %add.i, %5
  store i32 %add2, ptr %nbytes, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_efi_item_format(ptr noundef %lip, ptr nocapture noundef %lv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %efi_next_extent = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %efi_next_extent, i32 noundef 4) #11
  %0 = ptrtoint ptr %efi_next_extent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %efi_next_extent, align 4
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efi_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.if.end.i.i_crit_edge, label %cond.false, !prof !67

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 106) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.false, %entry.if.end.i.i_crit_edge
  %efi_format = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3
  %4 = ptrtoint ptr %efi_format to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4662, ptr %efi_format, align 8
  %efi_size = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %efi_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %efi_size, align 2
  %6 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %efi_nextents, align 4
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %8 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lv_iovecp3.i.i, align 4
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %i_type.i.i, align 4
  %lv_buf.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %11 = ptrtoint ptr %lv_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lv_buf.i.i, align 4
  %lv_buf_len.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %13 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lv_buf_len.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i.i, ptr %9, align 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %16, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !67

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 40) #11
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %sub.i = shl i32 %7, 4
  %add.i = add i32 %sub.i, 16
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %efi_format, i32 %add.i)
  %20 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lv_buf_len.i.i, align 4
  %add1.i.i = add i32 %add.i, %21
  store i32 %add1.i.i, ptr %lv_buf_len.i.i, align 4
  %lv_bytes.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %22 = ptrtoint ptr %lv_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lv_bytes.i.i, align 4
  %add2.i.i = add i32 %23, %add.i
  store i32 %add2.i.i, ptr %lv_bytes.i.i, align 4
  %i_len.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %i_len.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %i_len.i.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_efi_item_unpin(ptr noundef %lip, i32 noundef %remove) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_efi_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_efi_item_release(ptr noundef %lip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_efi_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_efi_item_recover(ptr noundef %lip, ptr noundef %capture_list) #1 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %li_mountp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 3
  %0 = ptrtoint ptr %li_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_mountp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #11
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !66
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %efi_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp62.not = icmp eq i32 %4, 0
  br i1 %cmp62.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.063, 1
  %5 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %efi_nextents, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 4, i32 %i.063
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx, align 8
  %ext_len.i = getelementptr %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 4, i32 %i.063, i32 1
  %9 = ptrtoint ptr %ext_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ext_len.i, align 8
  %conv.i = zext i32 %10 to i64
  %call.i = tail call zeroext i1 @xfs_verify_fsbext(ptr noundef %1, i64 noundef %8, i64 noundef %conv.i) #11
  br i1 %call.i, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %efi_format.le = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_efi_item_recover, i32 noundef 1, ptr noundef %1, ptr noundef %efi_format.le, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 624, ptr noundef %11) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 1
  %call4 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_itruncate, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %14 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %efi_nextents, align 4
  %call9 = call fastcc ptr @xfs_trans_get_efd(ptr noundef %13, ptr noundef %lip, i32 noundef %15)
  %16 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %efi_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1364.not = icmp eq i32 %17, 0
  br i1 %cmp1364.not, label %if.end6.for.end27_crit_edge, label %if.end6.for.body14_crit_edge

if.end6.for.body14_crit_edge:                     ; preds = %if.end6
  br label %for.body14

if.end6.for.end27_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.body14:                                       ; preds = %for.inc25.for.body14_crit_edge, %if.end6.for.body14_crit_edge
  %i.165 = phi i32 [ %inc26, %for.inc25.for.body14_crit_edge ], [ 0, %if.end6.for.body14_crit_edge ]
  %arrayidx17 = getelementptr %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 4, i32 %i.165
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 4
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx17, align 8
  %ext_len = getelementptr %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 4, i32 %i.165, i32 1
  %22 = ptrtoint ptr %ext_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ext_len, align 8
  %call18 = call fastcc i32 @xfs_trans_free_extent(ptr noundef %19, ptr noundef %call9, i64 noundef %21, i32 noundef %23, ptr noundef nonnull @XFS_RMAP_OINFO_ANY_OWNER, i1 noundef zeroext false)
  %24 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call18, label %for.body14.abort_error_crit_edge [
    i32 -117, label %if.then20
    i32 0, label %for.inc25
  ]

for.body14.abort_error_crit_edge:                 ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort_error

if.then20:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  %25 = call ptr @llvm.returnaddress(i32 0)
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_efi_item_recover, i32 noundef 1, ptr noundef %1, ptr noundef %arrayidx17, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 641, ptr noundef %25) #11
  br label %abort_error

for.inc25:                                        ; preds = %for.body14
  %inc26 = add nuw i32 %i.165, 1
  %26 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %efi_nextents, align 4
  %cmp13 = icmp ult i32 %inc26, %27
  br i1 %cmp13, label %for.inc25.for.body14_crit_edge, label %for.inc25.for.end27_crit_edge

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.inc25.for.body14_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %if.end6.for.end27_crit_edge
  %28 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tp, align 4
  %call28 = call i32 @xfs_defer_ops_capture_and_commit(ptr noundef %29, ptr noundef %capture_list) #11
  br label %cleanup

abort_error:                                      ; preds = %if.then20, %for.body14.abort_error_crit_edge
  %30 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %31) #11
  br label %cleanup

cleanup:                                          ; preds = %abort_error, %for.end27, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ %call18, %abort_error ], [ %call28, %for.end27 ], [ %call4, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xfs_efi_item_match(ptr nocapture noundef readonly %lip, i64 noundef %intent_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %efi_id = getelementptr inbounds %struct.xfs_efi_log_item, ptr %lip, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %efi_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %efi_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %intent_id)
  %cmp = icmp eq i64 %1, %intent_id
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_efi_item_relog(ptr noundef %intent, ptr noundef %tp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_item, ptr %intent, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %efi_nextents, align 4
  %efi_extents = getelementptr inbounds %struct.xfs_efi_log_item, ptr %intent, i32 0, i32 3, i32 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %t_flags, align 4
  %call4 = tail call fastcc ptr @xfs_trans_get_efd(ptr noundef %tp, ptr noundef %intent, i32 noundef %1)
  %efd_next_extent = getelementptr inbounds %struct.xfs_efd_log_item, ptr %call4, i32 0, i32 2
  %4 = ptrtoint ptr %efd_next_extent to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %efd_next_extent, align 4
  %efd_extents = getelementptr inbounds %struct.xfs_efd_log_item, ptr %call4, i32 0, i32 3, i32 4
  %mul = shl i32 %1, 4
  %5 = call ptr @memcpy(ptr %efd_extents, ptr %efi_extents, i32 %mul)
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %call4, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #11
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %6 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_mountp, align 4
  %call6 = tail call fastcc ptr @xfs_efi_init(ptr noundef %7, i32 noundef %1)
  %efi_extents8 = getelementptr inbounds %struct.xfs_efi_log_item, ptr %call6, i32 0, i32 3, i32 4
  %8 = call ptr @memcpy(ptr %efi_extents8, ptr %efi_extents, i32 %mul)
  %efi_next_extent = getelementptr inbounds %struct.xfs_efi_log_item, ptr %call6, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %efi_next_extent, i32 noundef 4) #11
  %9 = ptrtoint ptr %efi_next_extent to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %1, ptr %efi_next_extent, align 4
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call6) #11
  %li_flags12 = getelementptr inbounds %struct.xfs_log_item, ptr %call6, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags12) #11
  ret ptr %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_efi_release(ptr noundef %efip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %efi_refcount = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %efi_refcount, i32 noundef 4) #11
  %0 = ptrtoint ptr %efi_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %efi_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !67

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 60) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %efi_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %efi_refcount, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %efi_refcount, ptr %efi_refcount, i32 1, ptr elementtype(i32) %efi_refcount) #11, !srcloc !72
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_trans_ail_delete(ptr noundef %efip, i32 noundef 2) #11
  tail call fastcc void @xfs_efi_item_free(ptr noundef %efip)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_efi_item_free(ptr noundef %efip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %li_lv_shadow = getelementptr inbounds %struct.xfs_log_item, ptr %efip, i32 0, i32 12
  %0 = ptrtoint ptr %li_lv_shadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_lv_shadow, align 4
  tail call void @kvfree(ptr noundef %1) #11
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efi_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef %efip) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @xfs_efi_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %efip) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_trans_get_efd(ptr noundef %tp, ptr noundef %efip, i32 noundef %nextents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextents)
  %cmp.not = icmp eq i32 %nextents, 0
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !65

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 329) #11
  br label %if.else

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nextents)
  %cmp2 = icmp ugt i32 %nextents, 16
  br i1 %cmp2, label %if.then, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = shl i32 %nextents, 4
  %add = add i32 %sub, 104
  %call.i = tail call ptr @kmem_alloc(i32 noundef %add, i32 noundef 16) #11
  br label %if.end

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %cond.end.thread
  %0 = load ptr, ptr @xfs_efd_cache, align 4
  %call.i16 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %efdp.0 = phi ptr [ %call.i, %if.then ], [ %call.i16, %if.else ]
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %1 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t_mountp, align 4
  tail call void @xfs_log_item_init(ptr noundef %2, ptr noundef %efdp.0, i32 noundef 4663, ptr noundef nonnull @xfs_efd_item_ops) #11
  %efd_efip = getelementptr inbounds %struct.xfs_efd_log_item, ptr %efdp.0, i32 0, i32 1
  %3 = ptrtoint ptr %efd_efip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %efip, ptr %efd_efip, align 8
  %efd_nextents = getelementptr inbounds %struct.xfs_efd_log_item, ptr %efdp.0, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %efd_nextents to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nextents, ptr %efd_nextents, align 4
  %efi_id = getelementptr inbounds %struct.xfs_efi_log_item, ptr %efip, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %efi_id to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %efi_id, align 8
  %efd_efi_id = getelementptr inbounds %struct.xfs_efd_log_item, ptr %efdp.0, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %efd_efi_id to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %efd_efi_id, align 8
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %efdp.0) #11
  ret ptr %efdp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_trans_free_extent(ptr noundef %tp, ptr noundef %efdp, i64 noundef %start_block, i32 noundef %ext_len, ptr noundef %oinfo, i1 noundef zeroext %skip_discard) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %3 to i32
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %start_block, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %4 = trunc i64 %start_block to i32
  %conv6 = and i32 %sub.i, %4
  tail call fastcc void @trace_xfs_bmap_free_deferred(ptr noundef %1, i32 noundef %conv1, i32 noundef %conv6, i32 noundef %ext_len)
  %call8 = tail call i32 @__xfs_free_extent(ptr noundef %tp, i64 noundef %start_block, i32 noundef %ext_len, ptr noundef %oinfo, i32 noundef 0, i1 noundef zeroext %skip_discard) #11
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %5 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_flags, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %t_flags, align 4
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %efdp, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #11
  %efd_next_extent = getelementptr inbounds %struct.xfs_efd_log_item, ptr %efdp, i32 0, i32 2
  %7 = ptrtoint ptr %efd_next_extent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %efd_next_extent, align 4
  %efd_nextents = getelementptr inbounds %struct.xfs_efd_log_item, ptr %efdp, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %efd_nextents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %efd_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !67

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 387) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %arrayidx = getelementptr %struct.xfs_efd_log_item, ptr %efdp, i32 0, i32 3, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %start_block, ptr %arrayidx, align 8
  %ext_len13 = getelementptr %struct.xfs_efd_log_item, ptr %efdp, i32 0, i32 3, i32 4, i32 %8, i32 1
  %12 = ptrtoint ptr %ext_len13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ext_len, ptr %ext_len13, align 8
  %13 = ptrtoint ptr %efd_next_extent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %efd_next_extent, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %efd_next_extent, align 4
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_ops_capture_and_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fsbext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_efd_item_size(ptr nocapture noundef readonly %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvecs, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %nvecs, align 4
  %efd_nextents.i = getelementptr inbounds %struct.xfs_efd_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %efd_nextents.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efd_nextents.i, align 4
  %sub.i = shl i32 %3, 4
  %add.i = add i32 %sub.i, 16
  %4 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes, align 4
  %add2 = add i32 %add.i, %5
  store i32 %add2, ptr %nbytes, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_efd_item_format(ptr nocapture noundef %lip, ptr nocapture noundef %lv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %efd_next_extent = getelementptr inbounds %struct.xfs_efd_log_item, ptr %lip, i32 0, i32 2
  %0 = ptrtoint ptr %efd_next_extent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %efd_next_extent, align 4
  %efd_nextents = getelementptr inbounds %struct.xfs_efd_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %efd_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efd_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.if.end.i.i_crit_edge, label %cond.false, !prof !67

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 285) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.false, %entry.if.end.i.i_crit_edge
  %efd_format = getelementptr inbounds %struct.xfs_efd_log_item, ptr %lip, i32 0, i32 3
  %4 = ptrtoint ptr %efd_format to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4663, ptr %efd_format, align 8
  %efd_size = getelementptr inbounds %struct.xfs_efd_log_item, ptr %lip, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %efd_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %efd_size, align 2
  %6 = ptrtoint ptr %efd_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %efd_nextents, align 4
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %8 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lv_iovecp3.i.i, align 4
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %i_type.i.i, align 4
  %lv_buf.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %11 = ptrtoint ptr %lv_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lv_buf.i.i, align 4
  %lv_buf_len.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %13 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lv_buf_len.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i.i, ptr %9, align 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %16, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !67

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 40) #11
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %sub.i = shl i32 %7, 4
  %add.i = add i32 %sub.i, 16
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %efd_format, i32 %add.i)
  %20 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lv_buf_len.i.i, align 4
  %add1.i.i = add i32 %add.i, %21
  store i32 %add1.i.i, ptr %lv_buf_len.i.i, align 4
  %lv_bytes.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %22 = ptrtoint ptr %lv_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lv_bytes.i.i, align 4
  %add2.i.i = add i32 %23, %add.i
  store i32 %add2.i.i, ptr %lv_bytes.i.i, align 4
  %i_len.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %i_len.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %i_len.i.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_efd_item_release(ptr noundef %lip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %efd_efip = getelementptr inbounds %struct.xfs_efd_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %efd_efip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efd_efip, align 8
  tail call fastcc void @xfs_efi_release(ptr noundef %1)
  tail call fastcc void @xfs_efd_item_free(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_efd_item_free(ptr noundef %efdp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %li_lv_shadow = getelementptr inbounds %struct.xfs_log_item, ptr %efdp, i32 0, i32 12
  %0 = ptrtoint ptr %li_lv_shadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_lv_shadow, align 4
  tail call void @kvfree(ptr noundef %1) #11
  %efd_nextents = getelementptr inbounds %struct.xfs_efd_log_item, ptr %efdp, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %efd_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efd_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef %efdp) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @xfs_efd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %efdp) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_bmap_free_deferred(ptr noundef %mp, i32 noundef %agno, i32 noundef %bno, i32 noundef %len) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_free_deferred, i32 0, i32 1), ptr blockaddress(@trace_xfs_bmap_free_deferred, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !74

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %call42 = tail call i32 @__traceiter_xfs_bmap_free_deferred(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef 0, i32 noundef %bno, i32 noundef %len) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !67

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_free_deferred, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_free_deferred, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_bmap_free_deferred.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_bmap_free_deferred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2683, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfs_free_extent(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_bmap_free_deferred(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_agfl_free_deferred(ptr noundef %mp, i32 noundef %agno, i32 noundef %bno, i32 noundef %len) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_agfl_free_deferred, i32 0, i32 1), ptr blockaddress(@trace_xfs_agfl_free_deferred, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !74

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %call42 = tail call i32 @__traceiter_xfs_agfl_free_deferred(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef 0, i32 noundef %bno, i32 noundef %len) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !67

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_agfl_free_deferred, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_agfl_free_deferred, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_agfl_free_deferred.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_agfl_free_deferred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2685, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_free_agfl_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_agfl_free_deferred(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_efi_copy_format(ptr nocapture noundef readonly %buf, ptr nocapture noundef %dst_efi_fmt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %efi_nextents = getelementptr inbounds %struct.xfs_efi_log_format, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efi_nextents, align 4
  %sub = add i32 %3, -1
  %mul = shl i32 %sub, 4
  %add = add i32 %mul, 32
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp = icmp eq i32 %5, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = call ptr @memcpy(ptr %dst_efi_fmt, ptr %1, i32 %add)
  br label %cleanup

if.else:                                          ; preds = %entry
  %mul3 = mul i32 %sub, 12
  %add4 = add i32 %mul3, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add4)
  %cmp10 = icmp eq i32 %5, %add4
  br i1 %cmp10, label %if.then11, label %if.end61

if.then11:                                        ; preds = %if.else
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %1, align 1
  %9 = ptrtoint ptr %dst_efi_fmt to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %dst_efi_fmt, align 8
  %efi_size = getelementptr inbounds %struct.xfs_efi_log_format_32, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %efi_size to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %efi_size, align 1
  %efi_size14 = getelementptr inbounds %struct.xfs_efi_log_format, ptr %dst_efi_fmt, i32 0, i32 1
  %12 = ptrtoint ptr %efi_size14 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %efi_size14, align 2
  %13 = ptrtoint ptr %efi_nextents to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %efi_nextents, align 1
  %efi_nextents16 = getelementptr inbounds %struct.xfs_efi_log_format, ptr %dst_efi_fmt, i32 0, i32 2
  %15 = ptrtoint ptr %efi_nextents16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %efi_nextents16, align 4
  %efi_id = getelementptr inbounds %struct.xfs_efi_log_format_32, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %efi_id to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %efi_id, align 1
  %efi_id17 = getelementptr inbounds %struct.xfs_efi_log_format, ptr %dst_efi_fmt, i32 0, i32 3
  %18 = ptrtoint ptr %efi_id17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %efi_id17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19110.not = icmp eq i32 %14, 0
  br i1 %cmp19110.not, label %if.then11.cleanup_crit_edge, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then11.for.body_crit_edge
  %i.0111 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_efi_log_format_32, ptr %1, i32 0, i32 4, i32 %i.0111
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %arrayidx, align 1
  %arrayidx21 = getelementptr %struct.xfs_efi_log_format, ptr %dst_efi_fmt, i32 0, i32 4, i32 %i.0111
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx21, align 8
  %ext_len = getelementptr %struct.xfs_efi_log_format_32, ptr %1, i32 0, i32 4, i32 %i.0111, i32 1
  %22 = ptrtoint ptr %ext_len to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %ext_len, align 1
  %ext_len27 = getelementptr %struct.xfs_efi_log_format, ptr %dst_efi_fmt, i32 0, i32 4, i32 %i.0111, i32 1
  %24 = ptrtoint ptr %ext_len27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ext_len27, align 8
  %inc = add nuw i32 %i.0111, 1
  %25 = ptrtoint ptr %efi_nextents16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %efi_nextents16, align 4
  %cmp19 = icmp ult i32 %inc, %26
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_error_report(ptr noundef nonnull @__func__.xfs_efi_copy_format, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 228, ptr noundef %27) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %for.body.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -117, %if.end61 ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_insert(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_error_report(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_recover_release_intent(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @xfs_extent_free_defer_type, !1, !"xfs_extent_free_defer_type", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_extfree_item.c", i32 514, i32 32}
!2 = !{ptr @xfs_agfl_free_defer_type, !3, !"xfs_agfl_free_defer_type", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_extfree_item.c", i32 579, i32 32}
!4 = !{ptr @xlog_efi_item_ops, !5, !"xlog_efi_item_ops", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_extfree_item.c", i32 737, i32 36}
!6 = !{ptr @xlog_efd_item_ops, !7, !"xlog_efd_item_ops", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_extfree_item.c", i32 768, i32 36}
!8 = !{ptr @xfs_efi_cache, !9, !"xfs_efi_cache", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_extfree_item.c", i32 28, i32 20}
!10 = !{ptr @xfs_efd_cache, !11, !"xfs_efd_cache", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_extfree_item.c", i32 29, i32 20}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_extfree_item.c", i32 449, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_extfree_item.c", i32 158, i32 2}
!17 = !{ptr @xfs_efi_item_ops, !18, !"xfs_efi_item_ops", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_extfree_item.c", i32 690, i32 34}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_extfree_item.c", i32 105, i32 2}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_log.h", i32 31, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_log.h", i32 40, i32 2}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_extfree_item.c", i32 60, i32 2}
!28 = !{ptr @__func__.xfs_efi_item_recover, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_extfree_item.c", i32 622, i32 4}
!30 = !{ptr @xfs_efd_item_ops, !31, !"xfs_efd_item_ops", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_extfree_item.c", i32 309, i32 34}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_extfree_item.c", i32 285, i32 2}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_extfree_item.c", i32 387, i32 2}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_trace.h", i32 2683, i32 1}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_extfree_item.c", i32 432, i32 2}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_extfree_item.c", i32 546, i32 2}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_trace.h", i32 2685, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @__func__.xfs_efi_copy_format, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_extfree_item.c", i32 228, i32 2}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_extfree_item.c", i32 759, i32 2}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"auto-init"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148722628}
!69 = !{i64 2148637913, i64 2148637945, i64 2148637974, i64 2148638008, i64 2148638039, i64 2148638062}
!70 = !{i64 2148722857}
!71 = !{i64 2148725669}
!72 = !{i64 2148640378, i64 2148640410, i64 2148640439, i64 2148640473, i64 2148640504, i64 2148640527}
!73 = !{i64 2148725898}
!74 = !{i64 2148265181, i64 2148265186, i64 2148265199, i64 2148265243, i64 2148265277, i64 2148265298}
!75 = !{i64 2162948242}
!76 = !{i64 2162948497}
!77 = !{i64 2149967274}
!78 = !{i64 2149968310}
!79 = !{i64 2162985129}
!80 = !{i64 2162985384}
