; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_rmap_item.c_pt.bc'
source_filename = "../fs/xfs/xfs_rmap_item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_defer_op_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xlog_recover_item_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfs_rud_log_item = type { %struct.xfs_log_item, ptr, %struct.xfs_rud_log_format }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_rud_log_format = type { i16, i16, i32, i64 }
%struct.xfs_rui_log_item = type { %struct.xfs_log_item, %struct.atomic_t, %struct.atomic_t, %struct.xfs_rui_log_format }
%struct.atomic_t = type { i32 }
%struct.xfs_rui_log_format = type { i16, i16, i32, i64, [0 x %struct.xfs_map_extent] }
%struct.xfs_map_extent = type { i64, i64, i64, i32, i32 }
%struct.xfs_rmap_intent = type { %struct.list_head, i32, i32, i64, %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xlog_recover_item = type { %struct.list_head, i32, i32, ptr, ptr }
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
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
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

@xfs_rmap_update_defer_type = dso_local constant { %struct.xfs_defer_op_type, [36 x i8] } { %struct.xfs_defer_op_type { ptr @xfs_rmap_update_create_intent, ptr @xfs_rmap_update_abort_intent, ptr @xfs_rmap_update_create_done, ptr @xfs_rmap_update_finish_item, ptr @xfs_rmap_finish_one_cleanup, ptr @xfs_rmap_update_cancel_item, i32 16 }, [36 x i8] zeroinitializer }, align 32
@xlog_rui_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4672, ptr null, ptr null, ptr null, ptr @xlog_recover_rui_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xlog_rud_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4673, ptr null, ptr null, ptr null, ptr @xlog_recover_rud_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xfs_rui_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@xfs_rud_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"count > 0\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/xfs_rmap_item.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nextents > 0\00", [19 x i8] zeroinitializer }, align 32
@xfs_rui_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 0, ptr @xfs_rui_item_size, ptr @xfs_rui_item_format, ptr null, ptr @xfs_rui_item_unpin, ptr null, ptr null, ptr @xfs_rui_item_release, ptr null, ptr @xfs_rui_item_recover, ptr @xfs_rui_item_match, ptr @xfs_rui_item_relog }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"atomic_read(&ruip->rui_next_extent) == ruip->rui_format.rui_nextents\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/xfs/xfs_log.h\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IS_ALIGNED((unsigned long)vec->i_addr, sizeof(uint64_t))\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"atomic_read(&ruip->rui_refcount) > 0\00", [59 x i8] zeroinitializer }, align 32
@__func__.xfs_rui_item_recover = private unnamed_addr constant [21 x i8] c"xfs_rui_item_recover\00", align 1
@xfs_rud_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 1, ptr @xfs_rud_item_size, ptr @xfs_rud_item_format, ptr null, ptr null, ptr null, ptr null, ptr @xfs_rud_item_release, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"next_extent < ruip->rui_format.rui_nextents\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@xfs_rmap_intent_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.xfs_rui_copy_format = private unnamed_addr constant [20 x i8] c"xfs_rui_copy_format\00", align 1
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"item->ri_buf[0].i_len == sizeof(struct xfs_rud_log_format)\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"xfs_rmap_update_defer_type\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 453, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"xlog_rui_item_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 679, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"xlog_rud_item_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 707, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"xfs_rui_cache\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 24, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"xfs_rud_cache\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 25, i32 20 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 393, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 140, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"xfs_rui_item_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 632, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 89, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 31, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"../fs/xfs/xfs_log.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 40, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 55, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"xfs_rud_item_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 233, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 372, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 296, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [26 x i8] c"../fs/xfs/xfs_rmap_item.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 701, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @xfs_rmap_update_defer_type, ptr @xlog_rui_item_ops, ptr @xlog_rud_item_ops, ptr @xfs_rui_cache, ptr @xfs_rud_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xfs_rui_item_ops, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xfs_rud_item_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rmap_update_defer_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_rui_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_rud_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rui_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rud_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rui_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rud_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_rmap_update_create_intent(ptr noundef %tp, ptr noundef %items, i32 noundef %count, i1 noundef zeroext %sort) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %call = tail call fastcc ptr @xfs_rui_init(ptr noundef %1, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !47

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 393) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call) #9
  br i1 %sort, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @list_sort(ptr noundef %1, ptr noundef %items, ptr noundef nonnull @xfs_rmap_update_diff_items) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %rmap.022 = load ptr, ptr %items, align 4
  %cmp3.not23 = icmp eq ptr %rmap.022, %items
  br i1 %cmp3.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %rmap.024 = phi ptr [ %rmap.0, %for.body.for.body_crit_edge ], [ %rmap.022, %if.end.for.body_crit_edge ]
  tail call fastcc void @xfs_rmap_update_log_item(ptr noundef %tp, ptr noundef %call, ptr noundef %rmap.024)
  %3 = ptrtoint ptr %rmap.024 to i32
  call void @__asan_load4_noabort(i32 %3)
  %rmap.0 = load ptr, ptr %rmap.024, align 4
  %cmp3.not = icmp eq ptr %rmap.0, %items
  br i1 %cmp3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret ptr %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rmap_update_abort_intent(ptr noundef %intent) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_rui_release(ptr noundef %intent)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_rmap_update_create_done(ptr noundef %tp, ptr noundef %intent, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_rud_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #9
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %1 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t_mountp.i, align 4
  tail call void @xfs_log_item_init(ptr noundef %2, ptr noundef %call.i.i, i32 noundef 4673, ptr noundef nonnull @xfs_rud_item_ops) #9
  %rud_ruip.i = getelementptr inbounds %struct.xfs_rud_log_item, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %rud_ruip.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %intent, ptr %rud_ruip.i, align 8
  %rui_id.i = getelementptr inbounds %struct.xfs_rui_log_item, ptr %intent, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %rui_id.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rui_id.i, align 8
  %rud_rui_id.i = getelementptr inbounds %struct.xfs_rud_log_item, ptr %call.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %rud_rui_id.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %rud_rui_id.i, align 8
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call.i.i) #9
  ret ptr %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_rmap_update_finish_item(ptr noundef %tp, ptr noundef %done, ptr noundef %item, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_type = getelementptr inbounds %struct.xfs_rmap_intent, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %ri_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ri_type, align 8
  %ri_owner = getelementptr inbounds %struct.xfs_rmap_intent, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %ri_owner to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ri_owner, align 8
  %ri_whichfork = getelementptr inbounds %struct.xfs_rmap_intent, ptr %item, i32 0, i32 2
  %4 = ptrtoint ptr %ri_whichfork to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ri_whichfork, align 4
  %ri_bmap = getelementptr inbounds %struct.xfs_rmap_intent, ptr %item, i32 0, i32 4
  %6 = ptrtoint ptr %ri_bmap to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ri_bmap, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_rmap_intent, ptr %item, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %br_startblock, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_rmap_intent, ptr %item, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %br_blockcount, align 8
  %br_state = getelementptr inbounds %struct.xfs_rmap_intent, ptr %item, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %br_state, align 8
  %call.i = tail call i32 @xfs_rmap_finish_one(ptr noundef %tp, i32 noundef %1, i64 noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i32 noundef %13, ptr noundef %state) #9
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %14 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_flags.i, align 4
  %or.i = or i32 %15, 1
  store i32 %or.i, ptr %t_flags.i, align 4
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %done, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_rmap_intent_cache to i32))
  %16 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef %item) #9
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rmap_finish_one_cleanup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rmap_update_cancel_item(ptr noundef %item) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_rmap_intent_cache to i32))
  %0 = load ptr, ptr @xfs_rmap_intent_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %item) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_rui_commit_pass2(ptr nocapture noundef readonly %log, ptr nocapture noundef readnone %buffer_list, ptr nocapture noundef readonly %item, i64 noundef %lsn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_format, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rui_nextents, align 4
  %call = tail call fastcc ptr @xfs_rui_init(ptr noundef %1, i32 noundef %7)
  %8 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ri_buf, align 4
  %rui_format = getelementptr inbounds %struct.xfs_rui_log_item, ptr %call, i32 0, i32 3
  %call3 = tail call fastcc i32 @xfs_rui_copy_format(ptr noundef %9, ptr noundef %rui_format)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xfs_rui_item_free(ptr noundef %call)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rui_next_extent = getelementptr inbounds %struct.xfs_rui_log_item, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rui_nextents, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rui_next_extent, i32 noundef 4) #9
  %12 = ptrtoint ptr %rui_next_extent to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %11, ptr %rui_next_extent, align 4
  %l_ailp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 1
  %13 = ptrtoint ptr %l_ailp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l_ailp, align 4
  tail call void @xfs_trans_ail_insert(ptr noundef %14, ptr noundef %call, i64 noundef %lsn) #9
  tail call fastcc void @xfs_rui_release(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_rud_commit_pass2(ptr noundef %log, ptr nocapture noundef readnone %buffer_list, ptr nocapture noundef readonly %item, i64 noundef %lsn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp eq i32 %5, 16
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !48

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 701) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %rud_rui_id = getelementptr inbounds %struct.xfs_rud_log_format, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %rud_rui_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rud_rui_id, align 8
  tail call void @xlog_recover_release_intent(ptr noundef %log, i16 noundef zeroext 4672, i64 noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_rui_init(ptr noundef %mp, i32 noundef %nextents) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextents)
  %cmp.not = icmp eq i32 %nextents, 0
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !47

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 140) #9
  br label %if.else

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nextents)
  %cmp2 = icmp ugt i32 %nextents, 16
  br i1 %cmp2, label %if.then, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = shl i32 %nextents, 5
  %add.i = add i32 %mul.i.i, 104
  %call.i = tail call ptr @kmem_alloc(i32 noundef %add.i, i32 noundef 16) #9
  br label %if.end

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %cond.end.thread
  %0 = load ptr, ptr @xfs_rui_cache, align 4
  %call.i16 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ruip.0 = phi ptr [ %call.i, %if.then ], [ %call.i16, %if.else ]
  tail call void @xfs_log_item_init(ptr noundef %mp, ptr noundef %ruip.0, i32 noundef 4672, ptr noundef nonnull @xfs_rui_item_ops) #9
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip.0, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %nextents, ptr %rui_nextents, align 4
  %2 = ptrtoint ptr %ruip.0 to i32
  %conv = zext i32 %2 to i64
  %rui_id = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip.0, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %rui_id to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %rui_id, align 8
  %rui_next_extent = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip.0, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rui_next_extent, i32 noundef 4) #9
  %4 = ptrtoint ptr %rui_next_extent to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %rui_next_extent, align 4
  %rui_refcount = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip.0, i32 0, i32 1
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rui_refcount, i32 noundef 4) #9
  %5 = ptrtoint ptr %rui_refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 2, ptr %rui_refcount, align 4
  ret ptr %ruip.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_add_item(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_rmap_update_diff_items(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %br_startblock = getelementptr inbounds %struct.xfs_rmap_intent, ptr %a, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %br_startblock, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %priv, i32 0, i32 24
  %2 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %1, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %br_startblock6 = getelementptr inbounds %struct.xfs_rmap_intent, ptr %b, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %br_startblock6 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock6, align 8
  %shr11 = lshr i64 %5, %sh_prom
  %conv12 = trunc i64 %shr11 to i32
  %sub = sub i32 %conv4, %conv12
  ret i32 %sub
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_rmap_update_log_item(ptr nocapture noundef %tp, ptr noundef %ruip, ptr nocapture noundef readonly %rmap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %t_flags, align 4
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %ruip, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #9
  %rui_next_extent = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rui_next_extent, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %rui_next_extent, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rui_next_extent, ptr %rui_next_extent, i32 1, ptr elementtype(i32) %rui_next_extent) #9, !srcloc !50
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  %sub = add i32 %asmresult.i.i.i.i, -1
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rui_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp = icmp ult i32 %sub, %4
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !48

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 372) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %rui_extents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip, i32 1
  %arrayidx = getelementptr [0 x %struct.xfs_map_extent], ptr %rui_extents, i32 0, i32 %sub
  %ri_owner = getelementptr inbounds %struct.xfs_rmap_intent, ptr %rmap, i32 0, i32 3
  %5 = ptrtoint ptr %ri_owner to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ri_owner, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx, align 8
  %ri_bmap = getelementptr inbounds %struct.xfs_rmap_intent, ptr %rmap, i32 0, i32 4
  %br_startblock = getelementptr inbounds %struct.xfs_rmap_intent, ptr %rmap, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %br_startblock, align 8
  %me_startblock = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %me_startblock to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %me_startblock, align 8
  %11 = ptrtoint ptr %ri_bmap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ri_bmap, align 8
  %me_startoff = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %me_startoff to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %me_startoff, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_rmap_intent, ptr %rmap, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %br_blockcount, align 8
  %conv = trunc i64 %15 to i32
  %me_len = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 3
  %16 = ptrtoint ptr %me_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %me_len, align 8
  %ri_type = getelementptr inbounds %struct.xfs_rmap_intent, ptr %rmap, i32 0, i32 1
  %17 = ptrtoint ptr %ri_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ri_type, align 8
  %ri_whichfork = getelementptr inbounds %struct.xfs_rmap_intent, ptr %rmap, i32 0, i32 2
  %19 = ptrtoint ptr %ri_whichfork to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ri_whichfork, align 4
  %br_state = getelementptr inbounds %struct.xfs_rmap_intent, ptr %rmap, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %br_state, align 8
  %me_flags.i = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  %spec.select.i = select i1 %cmp.i, i32 536870912, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp2.i = icmp eq i32 %20, 1
  %or5.i = or i32 %spec.select.i, -2147483648
  %spec.select40.i = select i1 %cmp2.i, i32 %or5.i, i32 %spec.select.i
  %23 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select40.i, ptr %me_flags.i, align 4
  %24 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb18.i
    i32 5, label %sw.bb21.i
    i32 6, label %sw.bb24.i
    i32 7, label %sw.bb27.i
  ]

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or8.i = or i32 %spec.select40.i, 1
  %25 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or8.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.bb9.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or11.i = or i32 %spec.select40.i, 2
  %26 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or11.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.bb12.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or14.i = or i32 %spec.select40.i, 3
  %27 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or14.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.bb15.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or17.i = or i32 %spec.select40.i, 4
  %28 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or17.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.bb18.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or20.i = or i32 %spec.select40.i, 5
  %29 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or20.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.bb21.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or23.i = or i32 %spec.select40.i, 6
  %30 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or23.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.bb24.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or26.i = or i32 %spec.select40.i, 7
  %31 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or26.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.bb27.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or29.i = or i32 %spec.select40.i, 8
  %32 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or29.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_rmap_flags.exit

sw.default.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 296) #9
  br label %xfs_trans_set_rmap_flags.exit

xfs_trans_set_rmap_flags.exit:                    ; preds = %sw.default.i, %sw.bb27.i, %sw.bb24.i, %sw.bb21.i, %sw.bb18.i, %sw.bb15.i, %sw.bb12.i, %sw.bb9.i, %sw.bb.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_item_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_rui_item_size(ptr nocapture noundef readonly %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvecs, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %nvecs, align 4
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rui_nextents, align 4
  %mul.i = shl i32 %3, 5
  %add.i = or i32 %mul.i, 16
  %4 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes, align 4
  %add2 = add i32 %add.i, %5
  store i32 %add2, ptr %nbytes, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rui_item_format(ptr noundef %lip, ptr nocapture noundef %lv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rui_next_extent = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rui_next_extent, i32 noundef 4) #9
  %0 = ptrtoint ptr %rui_next_extent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rui_next_extent, align 4
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rui_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.if.end.i.i_crit_edge, label %cond.false, !prof !48

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 90) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.false, %entry.if.end.i.i_crit_edge
  %rui_format = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3
  %4 = ptrtoint ptr %rui_format to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4672, ptr %rui_format, align 8
  %rui_size = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %rui_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %rui_size, align 2
  %6 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rui_nextents, align 4
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %8 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lv_iovecp3.i.i, align 4
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 21, ptr %i_type.i.i, align 4
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
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !48

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %mul.i = shl i32 %7, 5
  %add.i = or i32 %mul.i, 16
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %rui_format, i32 %add.i)
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
define internal void @xfs_rui_item_unpin(ptr noundef %lip, i32 noundef %remove) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_rui_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rui_item_release(ptr noundef %lip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_rui_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_rui_item_recover(ptr noundef %lip, ptr noundef %capture_list) #1 align 64 {
entry:
  %tp = alloca ptr, align 4
  %rcur = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rcur) #9
  %1 = ptrtoint ptr %rcur to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rcur, align 4
  %li_mountp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 3
  %2 = ptrtoint ptr %li_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %li_mountp, align 8
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rui_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp87.not = icmp eq i32 %5, 0
  br i1 %cmp87.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rui_extents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 1
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %for.body

for.cond:                                         ; preds = %xfs_rui_validate_map.exit
  %inc = add nuw i32 %i.088, 1
  %6 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rui_nextents, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.xfs_map_extent], ptr %rui_extents, i32 0, i32 %i.088
  %8 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.if.then_crit_edge, label %if.end.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %me_flags.i = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 4
  %10 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %me_flags.i, align 4
  %and.i = and i32 %11, 536870656
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %trunc.i = trunc i32 %11 to i8
  %trunc.off.i = add i8 %trunc.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %trunc.off.i)
  %switch.i = icmp ult i8 %trunc.off.i, 8
  %or.cond.i = select i1 %tobool.not.i, i1 %switch.i, i1 false
  br i1 %or.cond.i, label %sw.epilog.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.epilog.i:                                      ; preds = %if.end.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %tobool6.not.i = icmp sgt i64 %13, -1
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %sw.epilog.i.if.end10.i_crit_edge

sw.epilog.i.if.end10.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %call8.i = tail call zeroext i1 @xfs_verify_ino(ptr noundef %3, i64 noundef %13) #9
  br i1 %call8.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %sw.epilog.i.if.end10.i_crit_edge
  %me_startoff.i = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %me_startoff.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %me_startoff.i, align 8
  %me_len.i = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 3
  %16 = ptrtoint ptr %me_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %me_len.i, align 8
  %conv.i = zext i32 %17 to i64
  %call11.i = tail call zeroext i1 @xfs_verify_fileext(ptr noundef %3, i64 noundef %15, i64 noundef %conv.i) #9
  br i1 %call11.i, label %xfs_rui_validate_map.exit, label %if.end10.i.if.then_crit_edge

if.end10.i.if.then_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

xfs_rui_validate_map.exit:                        ; preds = %if.end10.i
  %me_startblock.i = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 1
  %18 = ptrtoint ptr %me_startblock.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %me_startblock.i, align 8
  %20 = ptrtoint ptr %me_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %me_len.i, align 8
  %conv15.i = zext i32 %21 to i64
  %call16.i = tail call zeroext i1 @xfs_verify_fsbext(ptr noundef %3, i64 noundef %19, i64 noundef %conv15.i) #9
  br i1 %call16.i, label %for.cond, label %xfs_rui_validate_map.exit.if.then_crit_edge

xfs_rui_validate_map.exit.if.then_crit_edge:      ; preds = %xfs_rui_validate_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %xfs_rui_validate_map.exit.if.then_crit_edge, %if.end10.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %for.body.if.then_crit_edge
  %rui_format.le = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3
  %22 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_rui_item_recover, i32 noundef 1, ptr noundef %3, ptr noundef %rui_format.le, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 530, ptr noundef %22) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 65, i32 1
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 44
  %23 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_rmap_maxlevels, align 16
  %call4 = call i32 @xfs_trans_alloc(ptr noundef %3, ptr noundef %tr_itruncate, i32 noundef %24, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  %27 = load ptr, ptr @xfs_rud_cache, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %27, i32 noundef 36288) #9
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %26, i32 0, i32 10
  %28 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t_mountp.i, align 4
  call void @xfs_log_item_init(ptr noundef %29, ptr noundef %call.i.i, i32 noundef 4673, ptr noundef nonnull @xfs_rud_item_ops) #9
  %rud_ruip.i = getelementptr inbounds %struct.xfs_rud_log_item, ptr %call.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %rud_ruip.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %lip, ptr %rud_ruip.i, align 8
  %rui_id.i = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %rui_id.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rui_id.i, align 8
  %rud_rui_id.i = getelementptr inbounds %struct.xfs_rud_log_item, ptr %call.i.i, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %rud_rui_id.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rud_rui_id.i, align 8
  call void @xfs_trans_add_item(ptr noundef %26, ptr noundef %call.i.i) #9
  %34 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rui_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1189.not = icmp eq i32 %35, 0
  br i1 %cmp1189.not, label %if.end6.for.end40_crit_edge, label %for.body12.lr.ph

if.end6.for.end40_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.body12.lr.ph:                                 ; preds = %if.end6
  %rui_extents14 = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 1
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %call.i.i, i32 0, i32 6
  br label %for.body12

for.body12:                                       ; preds = %for.inc38.for.body12_crit_edge, %for.body12.lr.ph
  %i.190 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc39, %for.inc38.for.body12_crit_edge ]
  %arrayidx15 = getelementptr [0 x %struct.xfs_map_extent], ptr %rui_extents14, i32 0, i32 %i.190
  %me_flags = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx15, i32 0, i32 4
  %36 = ptrtoint ptr %me_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %me_flags, align 4
  %trunc = trunc i32 %37 to i8
  %switch.tableidx = add i8 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %38 = icmp ult i8 %switch.tableidx, 8
  br i1 %38, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %39 = call ptr @llvm.returnaddress(i32 0)
  call void @xfs_error_report(ptr noundef nonnull @__func__.xfs_rui_item_recover, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 573, ptr noundef %39) #9
  br label %abort_error

switch.lookup:                                    ; preds = %for.body12
  %.lobit = lshr i32 %37, 31
  %and = lshr i32 %37, 29
  %and.lobit = and i32 %and, 1
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %40 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tp, align 4
  %42 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx15, align 8
  %me_startoff = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx15, i32 0, i32 2
  %44 = ptrtoint ptr %me_startoff to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %me_startoff, align 8
  %me_startblock = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx15, i32 0, i32 1
  %46 = ptrtoint ptr %me_startblock to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %me_startblock, align 8
  %me_len = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx15, i32 0, i32 3
  %48 = ptrtoint ptr %me_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %me_len, align 8
  %conv = zext i32 %49 to i64
  %call.i = call i32 @xfs_rmap_finish_one(ptr noundef %41, i32 noundef %switch.idx.cast, i64 noundef %43, i32 noundef %.lobit, i64 noundef %45, i64 noundef %47, i64 noundef %conv, i32 noundef %and.lobit, ptr noundef nonnull %rcur) #9
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %41, i32 0, i32 7
  %50 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %t_flags.i, align 4
  %or.i = or i32 %51, 1
  store i32 %or.i, ptr %t_flags.i, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %li_flags.i) #9
  %52 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call.i, label %switch.lookup.abort_error_crit_edge [
    i32 -117, label %if.then33
    i32 0, label %for.inc38
  ]

switch.lookup.abort_error_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort_error

if.then33:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %53 = call ptr @llvm.returnaddress(i32 0)
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_rui_item_recover, i32 noundef 1, ptr noundef %3, ptr noundef %arrayidx15, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef %53) #9
  br label %abort_error

for.inc38:                                        ; preds = %switch.lookup
  %inc39 = add nuw i32 %i.190, 1
  %54 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rui_nextents, align 4
  %cmp11 = icmp ult i32 %inc39, %55
  br i1 %cmp11, label %for.inc38.for.body12_crit_edge, label %for.inc38.for.end40_crit_edge

for.inc38.for.end40_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.inc38.for.body12_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.end40:                                        ; preds = %for.inc38.for.end40_crit_edge, %if.end6.for.end40_crit_edge
  %56 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tp, align 4
  %58 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rcur, align 4
  call void @xfs_rmap_finish_one_cleanup(ptr noundef %57, ptr noundef %59, i32 noundef 0) #9
  %60 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tp, align 4
  %call41 = call i32 @xfs_defer_ops_capture_and_commit(ptr noundef %61, ptr noundef %capture_list) #9
  br label %cleanup

abort_error:                                      ; preds = %if.then33, %switch.lookup.abort_error_crit_edge, %sw.default
  %error.1 = phi i32 [ -117, %sw.default ], [ -117, %if.then33 ], [ %call.i, %switch.lookup.abort_error_crit_edge ]
  %62 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tp, align 4
  %64 = ptrtoint ptr %rcur to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rcur, align 4
  call void @xfs_rmap_finish_one_cleanup(ptr noundef %63, ptr noundef %65, i32 noundef %error.1) #9
  %66 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %67) #9
  br label %cleanup

cleanup:                                          ; preds = %abort_error, %for.end40, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ %error.1, %abort_error ], [ %call41, %for.end40 ], [ %call4, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rcur) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xfs_rui_item_match(ptr nocapture noundef readonly %lip, i64 noundef %intent_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rui_id = getelementptr inbounds %struct.xfs_rui_log_item, ptr %lip, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %rui_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rui_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %intent_id)
  %cmp = icmp eq i64 %1, %intent_id
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_rui_item_relog(ptr noundef %intent, ptr noundef %tp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %intent, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rui_nextents, align 4
  %rui_extents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %intent, i32 1
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %t_flags, align 4
  %4 = load ptr, ptr @xfs_rud_cache, align 4
  %call.i.i23 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 36288) #9
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %5 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_mountp.i, align 4
  tail call void @xfs_log_item_init(ptr noundef %6, ptr noundef %call.i.i23, i32 noundef 4673, ptr noundef nonnull @xfs_rud_item_ops) #9
  %rud_ruip.i = getelementptr inbounds %struct.xfs_rud_log_item, ptr %call.i.i23, i32 0, i32 1
  %7 = ptrtoint ptr %rud_ruip.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %intent, ptr %rud_ruip.i, align 8
  %rui_id.i = getelementptr inbounds %struct.xfs_rui_log_item, ptr %intent, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %rui_id.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rui_id.i, align 8
  %rud_rui_id.i = getelementptr inbounds %struct.xfs_rud_log_item, ptr %call.i.i23, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %rud_rui_id.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %rud_rui_id.i, align 8
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call.i.i23) #9
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %call.i.i23, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #9
  %11 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t_mountp.i, align 4
  %call5 = tail call fastcc ptr @xfs_rui_init(ptr noundef %12, i32 noundef %1)
  %rui_extents7 = getelementptr inbounds %struct.xfs_rui_log_item, ptr %call5, i32 1
  %mul = shl i32 %1, 5
  %13 = call ptr @memcpy(ptr %rui_extents7, ptr %rui_extents, i32 %mul)
  %rui_next_extent = getelementptr inbounds %struct.xfs_rui_log_item, ptr %call5, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rui_next_extent, i32 noundef 4) #9
  %14 = ptrtoint ptr %rui_next_extent to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %1, ptr %rui_next_extent, align 4
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call5) #9
  %li_flags10 = getelementptr inbounds %struct.xfs_log_item, ptr %call5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags10) #9
  ret ptr %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_rui_release(ptr noundef %ruip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rui_refcount = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rui_refcount, i32 noundef 4) #9
  %0 = ptrtoint ptr %rui_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rui_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !48

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 55) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rui_refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %rui_refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rui_refcount, ptr %rui_refcount, i32 1, ptr elementtype(i32) %rui_refcount) #9, !srcloc !54
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_trans_ail_delete(ptr noundef %ruip, i32 noundef 2) #9
  tail call fastcc void @xfs_rui_item_free(ptr noundef %ruip)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_rui_item_free(ptr noundef %ruip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_item, ptr %ruip, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rui_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ugt i32 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree(ptr noundef %ruip) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @xfs_rui_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %ruip) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_error_report(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_ops_capture_and_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_ino(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fileext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fsbext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_rud_item_size(ptr nocapture noundef readnone %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvecs, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %nvecs, align 4
  %2 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes, align 4
  %add1 = add i32 %3, 16
  store i32 %add1, ptr %nbytes, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rud_item_format(ptr nocapture noundef %lip, ptr nocapture noundef %lv) #1 align 64 {
if.end.i.i:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rud_format = getelementptr inbounds %struct.xfs_rud_log_item, ptr %lip, i32 0, i32 2
  %0 = ptrtoint ptr %rud_format to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 4673, ptr %rud_format, align 8
  %rud_size = getelementptr inbounds %struct.xfs_rud_log_item, ptr %lip, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %rud_size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %rud_size, align 2
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %2 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lv_iovecp3.i.i, align 4
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 22, ptr %i_type.i.i, align 4
  %lv_buf.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %5 = ptrtoint ptr %lv_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lv_buf.i.i, align 4
  %lv_buf_len.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %7 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lv_buf_len.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i.i, ptr %3, align 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !48

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %rud_format, i32 16)
  %14 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lv_buf_len.i.i, align 4
  %add1.i.i = add i32 %15, 16
  store i32 %add1.i.i, ptr %lv_buf_len.i.i, align 4
  %lv_bytes.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %16 = ptrtoint ptr %lv_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lv_bytes.i.i, align 4
  %add2.i.i = add i32 %17, 16
  store i32 %add2.i.i, ptr %lv_bytes.i.i, align 4
  %i_len.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %i_len.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %i_len.i.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rud_item_release(ptr noundef %lip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rud_ruip = getelementptr inbounds %struct.xfs_rud_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %rud_ruip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rud_ruip, align 8
  tail call fastcc void @xfs_rui_release(ptr noundef %1)
  %2 = load ptr, ptr @xfs_rud_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %lip) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_finish_one(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rui_copy_format(ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %dst_rui_fmt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %rui_nextents = getelementptr inbounds %struct.xfs_rui_log_format, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rui_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rui_nextents, align 4
  %mul.i = shl i32 %3, 5
  %add.i = or i32 %mul.i, 16
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp.not = icmp eq i32 %5, %add.i
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_error_report(ptr noundef nonnull @__func__.xfs_rui_copy_format, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 173, ptr noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %dst_rui_fmt, ptr %1, i32 %add.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_insert(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_recover_release_intent(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @xfs_rmap_update_defer_type, !1, !"xfs_rmap_update_defer_type", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_rmap_item.c", i32 453, i32 32}
!2 = !{ptr @xlog_rui_item_ops, !3, !"xlog_rui_item_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_rmap_item.c", i32 679, i32 36}
!4 = !{ptr @xlog_rud_item_ops, !5, !"xlog_rud_item_ops", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_rmap_item.c", i32 707, i32 36}
!6 = !{ptr @xfs_rui_cache, !7, !"xfs_rui_cache", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_rmap_item.c", i32 24, i32 20}
!8 = !{ptr @xfs_rud_cache, !9, !"xfs_rud_cache", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_rmap_item.c", i32 25, i32 20}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_rmap_item.c", i32 393, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_rmap_item.c", i32 140, i32 2}
!15 = !{ptr @xfs_rui_item_ops, !16, !"xfs_rui_item_ops", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_rmap_item.c", i32 632, i32 34}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_rmap_item.c", i32 89, i32 2}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_log.h", i32 31, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_log.h", i32 40, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_rmap_item.c", i32 55, i32 2}
!26 = !{ptr @__func__.xfs_rui_item_recover, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_rmap_item.c", i32 528, i32 4}
!28 = !{ptr @xfs_rud_item_ops, !29, !"xfs_rud_item_ops", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_rmap_item.c", i32 233, i32 34}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_rmap_item.c", i32 372, i32 2}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_rmap_item.c", i32 296, i32 3}
!34 = !{ptr @__func__.xfs_rui_copy_format, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_rmap_item.c", i32 173, i32 3}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_rmap_item.c", i32 701, i32 2}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2148719818}
!50 = !{i64 2148635103, i64 2148635135, i64 2148635164, i64 2148635198, i64 2148635229, i64 2148635252}
!51 = !{i64 2148720047}
!52 = !{!"auto-init"}
!53 = !{i64 2148722859}
!54 = !{i64 2148637568, i64 2148637600, i64 2148637629, i64 2148637663, i64 2148637694, i64 2148637717}
!55 = !{i64 2148723088}
