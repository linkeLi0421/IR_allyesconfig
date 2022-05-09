; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_bmap_item.c_pt.bc'
source_filename = "../fs/xfs/xfs_bmap_item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_defer_op_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xlog_recover_item_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfs_bud_log_item = type { %struct.xfs_log_item, ptr, %struct.xfs_bud_log_format }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_bud_log_format = type { i16, i16, i32, i64 }
%struct.xfs_bui_log_item = type { %struct.xfs_log_item, %struct.atomic_t, %struct.atomic_t, %struct.xfs_bui_log_format }
%struct.atomic_t = type { i32 }
%struct.xfs_bui_log_format = type { i16, i16, i32, i64, [0 x %struct.xfs_map_extent] }
%struct.xfs_map_extent = type { i64, i64, i64, i32, i32 }
%struct.xfs_bmap_intent = type { %struct.list_head, i32, i32, ptr, %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xlog_recover_item = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
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
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.xfs_log_vec = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }

@xfs_bmap_update_defer_type = dso_local constant { %struct.xfs_defer_op_type, [36 x i8] } { %struct.xfs_defer_op_type { ptr @xfs_bmap_update_create_intent, ptr @xfs_bmap_update_abort_intent, ptr @xfs_bmap_update_create_done, ptr @xfs_bmap_update_finish_item, ptr null, ptr @xfs_bmap_update_cancel_item, i32 1 }, [36 x i8] zeroinitializer }, align 32
@xlog_bui_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4676, ptr null, ptr null, ptr null, ptr @xlog_recover_bui_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xlog_bud_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4677, ptr null, ptr null, ptr null, ptr @xlog_recover_bud_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xfs_bui_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@xfs_bud_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"count == XFS_BUI_MAX_FAST_EXTENTS\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/xfs_bmap_item.c\00", [41 x i8] zeroinitializer }, align 32
@xfs_bui_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 0, ptr @xfs_bui_item_size, ptr @xfs_bui_item_format, ptr null, ptr @xfs_bui_item_unpin, ptr null, ptr null, ptr @xfs_bui_item_release, ptr null, ptr @xfs_bui_item_recover, ptr @xfs_bui_item_match, ptr @xfs_bui_item_relog }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"atomic_read(&buip->bui_next_extent) == buip->bui_format.bui_nextents\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/xfs/xfs_log.h\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IS_ALIGNED((unsigned long)vec->i_addr, sizeof(uint64_t))\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"atomic_read(&buip->bui_refcount) > 0\00", [59 x i8] zeroinitializer }, align 32
@__func__.xfs_bui_item_recover = private unnamed_addr constant [21 x i8] c"xfs_bui_item_recover\00", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bui_type == XFS_BMAP_UNMAP\00", [37 x i8] zeroinitializer }, align 32
@xfs_bud_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 1, ptr @xfs_bud_item_size, ptr @xfs_bud_item_format, ptr null, ptr null, ptr null, ptr null, ptr @xfs_bud_item_release, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"next_extent < buip->bui_format.bui_nextents\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bmap->bi_type == XFS_BMAP_UNMAP\00", [32 x i8] zeroinitializer }, align 32
@xfs_bmap_intent_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.xlog_recover_bui_commit_pass2 = private unnamed_addr constant [30 x i8] c"xlog_recover_bui_commit_pass2\00", align 1
@__func__.xfs_bui_copy_format = private unnamed_addr constant [20 x i8] c"xfs_bui_copy_format\00", align 1
@__func__.xlog_recover_bud_commit_pass2 = private unnamed_addr constant [30 x i8] c"xlog_recover_bud_commit_pass2\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"xfs_bmap_update_defer_type\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 410, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"xlog_bui_item_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 661, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"xlog_bud_item_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 692, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"xfs_bui_cache\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 28, i32 20 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"xfs_bud_cache\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 29, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 341, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"xfs_bui_item_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 586, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 91, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 31, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"../fs/xfs/xfs_log.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 40, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 56, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 523, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"xfs_bud_item_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 204, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 320, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 293, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [26 x i8] c"../fs/xfs/xfs_bmap_item.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 383, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @xfs_bmap_update_defer_type, ptr @xlog_bui_item_ops, ptr @xlog_bud_item_ops, ptr @xfs_bui_cache, ptr @xfs_bud_cache, ptr @.str, ptr @.str.1, ptr @xfs_bui_item_ops, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xfs_bud_item_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bmap_update_defer_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_bui_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_bud_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bui_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bud_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bui_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bud_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_bmap_update_create_intent(ptr noundef %tp, ptr noundef %items, i32 noundef %count, i1 noundef zeroext %sort) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %call = tail call fastcc ptr @xfs_bui_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp eq i32 %count, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !51

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 341) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call) #9
  br i1 %sort, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @list_sort(ptr noundef %1, ptr noundef %items, ptr noundef nonnull @xfs_bmap_update_diff_items) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %bmap.021 = load ptr, ptr %items, align 4
  %cmp3.not22 = icmp eq ptr %bmap.021, %items
  br i1 %cmp3.not22, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bmap.023 = phi ptr [ %bmap.0, %for.body.for.body_crit_edge ], [ %bmap.021, %if.end.for.body_crit_edge ]
  tail call fastcc void @xfs_bmap_update_log_item(ptr noundef %tp, ptr noundef %call, ptr noundef %bmap.023)
  %3 = ptrtoint ptr %bmap.023 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bmap.0 = load ptr, ptr %bmap.023, align 4
  %cmp3.not = icmp eq ptr %bmap.0, %items
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
define internal void @xfs_bmap_update_abort_intent(ptr noundef %intent) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_bui_release(ptr noundef %intent)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_bmap_update_create_done(ptr noundef %tp, ptr noundef %intent, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_bud_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #9
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %1 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t_mountp.i, align 4
  tail call void @xfs_log_item_init(ptr noundef %2, ptr noundef %call.i.i, i32 noundef 4677, ptr noundef nonnull @xfs_bud_item_ops) #9
  %bud_buip.i = getelementptr inbounds %struct.xfs_bud_log_item, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bud_buip.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %intent, ptr %bud_buip.i, align 8
  %bui_id.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %intent, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %bui_id.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bui_id.i, align 8
  %bud_bui_id.i = getelementptr inbounds %struct.xfs_bud_log_item, ptr %call.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %bud_bui_id.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %bud_bui_id.i, align 8
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call.i.i) #9
  ret ptr %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_bmap_update_finish_item(ptr noundef %tp, ptr noundef %done, ptr noundef %item, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  %count = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count) #9
  %bi_bmap = getelementptr inbounds %struct.xfs_bmap_intent, ptr %item, i32 0, i32 4
  %br_blockcount = getelementptr inbounds %struct.xfs_bmap_intent, ptr %item, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %br_blockcount, align 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %count, align 8
  %bi_type = getelementptr inbounds %struct.xfs_bmap_intent, ptr %item, i32 0, i32 1
  %3 = ptrtoint ptr %bi_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bi_type, align 8
  %bi_owner = getelementptr inbounds %struct.xfs_bmap_intent, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %bi_owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_owner, align 8
  %bi_whichfork = getelementptr inbounds %struct.xfs_bmap_intent, ptr %item, i32 0, i32 2
  %7 = ptrtoint ptr %bi_whichfork to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_whichfork, align 4
  %9 = ptrtoint ptr %bi_bmap to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bi_bmap, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_bmap_intent, ptr %item, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %br_startblock, align 8
  %br_state = getelementptr inbounds %struct.xfs_bmap_intent, ptr %item, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %br_state, align 8
  %call.i = call i32 @xfs_bmap_finish_one(ptr noundef %tp, ptr noundef %6, i32 noundef %4, i32 noundef %8, i64 noundef %10, i64 noundef %12, ptr noundef nonnull %count, i32 noundef %14) #9
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %15 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t_flags.i, align 4
  %or.i = or i32 %16, 1
  store i32 %or.i, ptr %t_flags.i, align 4
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %done, i32 0, i32 6
  call void @_set_bit(i32 noundef 3, ptr noundef %li_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp.not = icmp eq i64 %18, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %bi_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp6 = icmp eq i32 %20, 2
  br i1 %cmp6, label %if.then.cond.end_crit_edge, label %cond.false, !prof !51

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 383) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %count, align 8
  %23 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %br_blockcount, align 8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_bmap_intent_cache to i32))
  %24 = load ptr, ptr @xfs_bmap_intent_cache, align 4
  call void @kmem_cache_free(ptr noundef %24, ptr noundef %item) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -11, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_bmap_update_cancel_item(ptr noundef %item) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_bmap_intent_cache to i32))
  %0 = load ptr, ptr @xfs_bmap_intent_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %item) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_bui_commit_pass2(ptr nocapture noundef readonly %log, ptr nocapture noundef readnone %buffer_list, ptr nocapture noundef readonly %item, i64 noundef %lsn) #1 align 64 {
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
  %bui_nextents = getelementptr inbounds %struct.xfs_bui_log_format, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bui_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_error_report(ptr noundef nonnull @__func__.xlog_recover_bui_commit_pass2, i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 642, ptr noundef %8) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @xfs_bui_init(ptr noundef %1)
  %9 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ri_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %bui_nextents.i = getelementptr inbounds %struct.xfs_bui_log_format, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bui_nextents.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bui_nextents.i, align 4
  %mul.i.i = shl i32 %14, 5
  %add.i.i = or i32 %mul.i.i, 16
  %i_len.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %i_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i.i)
  %cmp.i = icmp eq i32 %16, %add.i.i
  br i1 %cmp.i, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call ptr @llvm.returnaddress(i32 0) #9
  tail call void @xfs_error_report(ptr noundef nonnull @__func__.xfs_bui_copy_format, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 616, ptr noundef %17) #9
  tail call fastcc void @xfs_bui_item_free(ptr noundef %call)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bui_format = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %bui_format, ptr %12, i32 %add.i.i)
  %bui_next_extent = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bui_nextents, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bui_next_extent, i32 noundef 4) #9
  %21 = ptrtoint ptr %bui_next_extent to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %20, ptr %bui_next_extent, align 4
  %l_ailp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 1
  %22 = ptrtoint ptr %l_ailp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %l_ailp, align 4
  tail call void @xfs_trans_ail_insert(ptr noundef %23, ptr noundef %call, i64 noundef %lsn) #9
  tail call fastcc void @xfs_bui_release(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ -117, %if.then5 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_bud_commit_pass2(ptr noundef %log, ptr nocapture noundef readnone %buffer_list, ptr nocapture noundef readonly %item, i64 noundef %lsn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %i_len = getelementptr inbounds %struct.xfs_log_iovec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_error_report(ptr noundef nonnull @__func__.xlog_recover_bud_commit_pass2, i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 684, ptr noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %bud_bui_id = getelementptr inbounds %struct.xfs_bud_log_format, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bud_bui_id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bud_bui_id, align 8
  tail call void @xlog_recover_release_intent(ptr noundef %log, i16 noundef zeroext 4676, i64 noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_bui_init(ptr noundef %mp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_bui_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #9
  tail call void @xfs_log_item_init(ptr noundef %mp, ptr noundef %call.i, i32 noundef 4676, ptr noundef nonnull @xfs_bui_item_ops) #9
  %bui_nextents = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call.i, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %bui_nextents, align 4
  %2 = ptrtoint ptr %call.i to i32
  %conv = zext i32 %2 to i64
  %bui_id = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call.i, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %bui_id to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %bui_id, align 8
  %bui_next_extent = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bui_next_extent, i32 noundef 4) #9
  %4 = ptrtoint ptr %bui_next_extent to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %bui_next_extent, align 4
  %bui_refcount = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call.i, i32 0, i32 1
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bui_refcount, i32 noundef 4) #9
  %5 = ptrtoint ptr %bui_refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 2, ptr %bui_refcount, align 8
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_add_item(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_bmap_update_diff_items(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_owner = getelementptr inbounds %struct.xfs_bmap_intent, ptr %a, i32 0, i32 3
  %0 = ptrtoint ptr %bi_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_owner, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_ino, align 8
  %bi_owner4 = getelementptr inbounds %struct.xfs_bmap_intent, ptr %b, i32 0, i32 3
  %4 = ptrtoint ptr %bi_owner4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_owner4, align 8
  %i_ino5 = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_ino5, align 8
  %sub = sub i64 %3, %7
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_bmap_update_log_item(ptr nocapture noundef %tp, ptr noundef %buip, ptr nocapture noundef readonly %bmap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %t_flags, align 4
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %buip, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #9
  %bui_next_extent = getelementptr inbounds %struct.xfs_bui_log_item, ptr %buip, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bui_next_extent, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %bui_next_extent, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bui_next_extent, ptr %bui_next_extent, i32 1, ptr elementtype(i32) %bui_next_extent) #9, !srcloc !53
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  %sub = add i32 %asmresult.i.i.i.i, -1
  %bui_nextents = getelementptr inbounds %struct.xfs_bui_log_item, ptr %buip, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bui_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp = icmp ult i32 %sub, %4
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !51

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 320) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bui_extents = getelementptr inbounds %struct.xfs_bui_log_item, ptr %buip, i32 1
  %arrayidx = getelementptr [0 x %struct.xfs_map_extent], ptr %bui_extents, i32 0, i32 %sub
  %bi_owner = getelementptr inbounds %struct.xfs_bmap_intent, ptr %bmap, i32 0, i32 3
  %5 = ptrtoint ptr %bi_owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_owner, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_ino, align 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx, align 8
  %bi_bmap = getelementptr inbounds %struct.xfs_bmap_intent, ptr %bmap, i32 0, i32 4
  %br_startblock = getelementptr inbounds %struct.xfs_bmap_intent, ptr %bmap, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %br_startblock, align 8
  %me_startblock = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 1
  %12 = ptrtoint ptr %me_startblock to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %me_startblock, align 8
  %13 = ptrtoint ptr %bi_bmap to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bi_bmap, align 8
  %me_startoff = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %me_startoff to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %me_startoff, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmap_intent, ptr %bmap, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %br_blockcount, align 8
  %conv = trunc i64 %17 to i32
  %me_len = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 3
  %18 = ptrtoint ptr %me_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %me_len, align 8
  %bi_type = getelementptr inbounds %struct.xfs_bmap_intent, ptr %bmap, i32 0, i32 1
  %19 = ptrtoint ptr %bi_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_type, align 8
  %bi_whichfork = getelementptr inbounds %struct.xfs_bmap_intent, ptr %bmap, i32 0, i32 2
  %21 = ptrtoint ptr %bi_whichfork to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_whichfork, align 4
  %br_state = getelementptr inbounds %struct.xfs_bmap_intent, ptr %bmap, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %br_state, align 8
  %me_flags.i = getelementptr inbounds %struct.xfs_map_extent, ptr %arrayidx, i32 0, i32 4
  %25 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %me_flags.i, align 4
  %type.off.i = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off.i)
  %switch.i = icmp ult i32 %type.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %me_flags.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 293) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp eq i32 %24, 1
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.i.if.end.i_crit_edge

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %me_flags.i, align 4
  %or.i = or i32 %28, 1073741824
  store i32 %or.i, ptr %me_flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp3.i = icmp eq i32 %22, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.xfs_trans_set_bmap_flags.exit_crit_edge

if.end.i.xfs_trans_set_bmap_flags.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_trans_set_bmap_flags.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %me_flags.i, align 4
  %or6.i = or i32 %30, -2147483648
  store i32 %or6.i, ptr %me_flags.i, align 4
  br label %xfs_trans_set_bmap_flags.exit

xfs_trans_set_bmap_flags.exit:                    ; preds = %if.then4.i, %if.end.i.xfs_trans_set_bmap_flags.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_item_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_bui_item_size(ptr nocapture noundef readonly %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvecs, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %nvecs, align 4
  %bui_nextents = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bui_nextents, align 4
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
define internal void @xfs_bui_item_format(ptr noundef %lip, ptr nocapture noundef %lv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bui_next_extent = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bui_next_extent, i32 noundef 4) #9
  %0 = ptrtoint ptr %bui_next_extent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bui_next_extent, align 4
  %bui_nextents = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bui_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.if.end.i.i_crit_edge, label %cond.false, !prof !51

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 92) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.false, %entry.if.end.i.i_crit_edge
  %bui_format = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3
  %4 = ptrtoint ptr %bui_format to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4676, ptr %bui_format, align 8
  %bui_size = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %bui_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %bui_size, align 2
  %6 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bui_nextents, align 4
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %8 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lv_iovecp3.i.i, align 4
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 25, ptr %i_type.i.i, align 4
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
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !51

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %mul.i = shl i32 %7, 5
  %add.i = or i32 %mul.i, 16
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %bui_format, i32 %add.i)
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
define internal void @xfs_bui_item_unpin(ptr noundef %lip, i32 noundef %remove) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_bui_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_bui_item_release(ptr noundef %lip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_bui_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_bui_item_recover(ptr noundef %lip, ptr noundef %capture_list) #1 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  %tp = alloca ptr, align 4
  %ip = alloca ptr, align 4
  %count = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #9
  %0 = call ptr @memset(ptr %irec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %1 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #9
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ip, align 4
  %li_mountp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 3
  %3 = ptrtoint ptr %li_mountp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %li_mountp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count) #9
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %count, align 8, !annotation !55
  %bui_nextents.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %bui_nextents.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bui_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %me_flags.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %me_flags.i, align 4
  %and.i = and i32 %9, 1073741568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %trunc.i = trunc i32 %9 to i8
  %trunc.off.i = add i8 %trunc.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %trunc.off.i)
  %switch.i = icmp ult i8 %trunc.off.i, 2
  %or.cond.i = select i1 %tobool.not.i, i1 %switch.i, i1 false
  br i1 %or.cond.i, label %sw.epilog.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.epilog.i:                                      ; preds = %if.end.i
  %bui_extents.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 1
  %10 = ptrtoint ptr %bui_extents.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bui_extents.i, align 8
  %call.i = tail call zeroext i1 @xfs_verify_ino(ptr noundef %4, i64 noundef %11) #9
  br i1 %call.i, label %if.end7.i, label %sw.epilog.i.if.then_crit_edge

sw.epilog.i.if.then_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end7.i:                                        ; preds = %sw.epilog.i
  %me_startoff.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %me_startoff.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %me_startoff.i, align 8
  %me_len.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %me_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %me_len.i, align 8
  %conv.i = zext i32 %15 to i64
  %call8.i = tail call zeroext i1 @xfs_verify_fileext(ptr noundef %4, i64 noundef %13, i64 noundef %conv.i) #9
  br i1 %call8.i, label %xfs_bui_validate.exit, label %if.end7.i.if.then_crit_edge

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

xfs_bui_validate.exit:                            ; preds = %if.end7.i
  %me_startblock.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %me_startblock.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %me_startblock.i, align 8
  %18 = ptrtoint ptr %me_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %me_len.i, align 8
  %conv12.i = zext i32 %19 to i64
  %call13.i = tail call zeroext i1 @xfs_verify_fsbext(ptr noundef %4, i64 noundef %17, i64 noundef %conv12.i) #9
  br i1 %call13.i, label %if.end, label %xfs_bui_validate.exit.if.then_crit_edge

xfs_bui_validate.exit.if.then_crit_edge:          ; preds = %xfs_bui_validate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %xfs_bui_validate.exit.if.then_crit_edge, %if.end7.i.if.then_crit_edge, %sw.epilog.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %bui_format = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3
  %20 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_bui_item_recover, i32 noundef 1, ptr noundef %4, ptr noundef %bui_format, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 478, ptr noundef %20) #9
  br label %cleanup

if.end:                                           ; preds = %xfs_bui_validate.exit
  %21 = ptrtoint ptr %me_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %me_flags.i, align 4
  %and = lshr i32 %22, 30
  %and.lobit = and i32 %and, 1
  %.lobit = lshr i32 %22, 31
  %and8 = and i32 %22, 255
  %23 = ptrtoint ptr %bui_extents.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bui_extents.i, align 8
  %call9 = call i32 @xlog_recover_iget(ptr noundef %4, i64 noundef %24, ptr noundef nonnull %ip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 65, i32 1
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 43
  %25 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_bm_maxlevels, align 8
  %sub = add i32 %26, -1
  %call14 = call i32 @xfs_trans_alloc(ptr noundef %4, ptr noundef %tr_itruncate, i32 noundef %sub, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.err_rele_crit_edge

if.end12.err_rele_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rele

if.end17:                                         ; preds = %if.end12
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp, align 4
  %29 = load ptr, ptr @xfs_bud_cache, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %29, i32 noundef 36288) #9
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %28, i32 0, i32 10
  %30 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %t_mountp.i, align 4
  call void @xfs_log_item_init(ptr noundef %31, ptr noundef %call.i.i, i32 noundef 4677, ptr noundef nonnull @xfs_bud_item_ops) #9
  %bud_buip.i = getelementptr inbounds %struct.xfs_bud_log_item, ptr %call.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %bud_buip.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %lip, ptr %bud_buip.i, align 8
  %bui_id.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %bui_id.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bui_id.i, align 8
  %bud_bui_id.i = getelementptr inbounds %struct.xfs_bud_log_item, ptr %call.i.i, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %bud_bui_id.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %bud_bui_id.i, align 8
  call void @xfs_trans_add_item(ptr noundef %28, ptr noundef %call.i.i) #9
  %36 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ip, align 4
  call void @xfs_ilock(ptr noundef %37, i32 noundef 4) #9
  %38 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tp, align 4
  %40 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ip, align 4
  call void @xfs_trans_ijoin(ptr noundef %39, ptr noundef %41, i32 noundef 0) #9
  %42 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ip, align 4
  %call21 = call i32 @xfs_iext_count_may_overflow(ptr noundef %43, i32 noundef %.lobit, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.err_cancel_crit_edge

if.end17.err_cancel_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cancel

if.end24:                                         ; preds = %if.end17
  %44 = ptrtoint ptr %me_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %me_len.i, align 8
  %conv = zext i32 %45 to i64
  %46 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv, ptr %count, align 8
  %47 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tp, align 4
  %49 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ip, align 4
  %51 = ptrtoint ptr %me_startoff.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %me_startoff.i, align 8
  %53 = ptrtoint ptr %me_startblock.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %me_startblock.i, align 8
  %call.i89 = call i32 @xfs_bmap_finish_one(ptr noundef %48, ptr noundef %50, i32 noundef %and8, i32 noundef %.lobit, i64 noundef %52, i64 noundef %54, ptr noundef nonnull %count, i32 noundef %and.lobit) #9
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %48, i32 0, i32 7
  %55 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %t_flags.i, align 4
  %or.i = or i32 %56, 1
  store i32 %or.i, ptr %t_flags.i, align 4
  %li_flags.i = getelementptr inbounds %struct.xfs_log_item, ptr %call.i.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 3, ptr noundef %li_flags.i) #9
  %57 = zext i32 %call.i89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i89, label %if.end24.err_cancel_crit_edge [
    i32 -117, label %if.then28
    i32 0, label %if.end32
  ]

if.end24.err_cancel_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cancel

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %58 = call ptr @llvm.returnaddress(i32 0)
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_bui_item_recover, i32 noundef 1, ptr noundef %4, ptr noundef %bui_extents.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 518, ptr noundef %58) #9
  br label %err_cancel

if.end32:                                         ; preds = %if.end24
  %59 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %cmp33.not = icmp eq i64 %60, 0
  br i1 %cmp33.not, label %if.end32.if.end42_crit_edge, label %if.then35

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and8)
  %cmp36 = icmp eq i32 %and8, 2
  br i1 %cmp36, label %if.then35.cond.end_crit_edge, label %cond.false, !prof !51

if.then35.cond.end_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 523) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then35.cond.end_crit_edge
  %61 = ptrtoint ptr %me_startblock.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %me_startblock.i, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %63 = ptrtoint ptr %br_startblock to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %br_startblock, align 8
  %64 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %count, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %66 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %br_blockcount, align 8
  %67 = ptrtoint ptr %me_startoff.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %me_startoff.i, align 8
  %69 = ptrtoint ptr %irec to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %irec, align 8
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 3
  %70 = ptrtoint ptr %br_state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and.lobit, ptr %br_state, align 8
  %71 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tp, align 4
  %73 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ip, align 4
  call void @xfs_bmap_unmap_extent(ptr noundef %72, ptr noundef %74, ptr noundef nonnull %irec) #9
  br label %if.end42

if.end42:                                         ; preds = %cond.end, %if.end32.if.end42_crit_edge
  %75 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tp, align 4
  %call43 = call i32 @xfs_defer_ops_capture_and_commit(ptr noundef %76, ptr noundef %capture_list) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.err_unlock_crit_edge

if.end42.err_unlock_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ip, align 4
  call void @xfs_iunlock(ptr noundef %78, i32 noundef 4) #9
  %79 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %80) #9
  br label %cleanup

err_cancel:                                       ; preds = %if.then28, %if.end24.err_cancel_crit_edge, %if.end17.err_cancel_crit_edge
  %error.0 = phi i32 [ %call21, %if.end17.err_cancel_crit_edge ], [ -117, %if.then28 ], [ %call.i89, %if.end24.err_cancel_crit_edge ]
  %81 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %82) #9
  br label %err_unlock

err_unlock:                                       ; preds = %err_cancel, %if.end42.err_unlock_crit_edge
  %error.1 = phi i32 [ %error.0, %err_cancel ], [ %call43, %if.end42.err_unlock_crit_edge ]
  %83 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ip, align 4
  call void @xfs_iunlock(ptr noundef %84, i32 noundef 4) #9
  br label %err_rele

err_rele:                                         ; preds = %err_unlock, %if.end12.err_rele_crit_edge
  %error.2 = phi i32 [ %call14, %if.end12.err_rele_crit_edge ], [ %error.1, %err_unlock ]
  %85 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %86) #9
  br label %cleanup

cleanup:                                          ; preds = %err_rele, %if.end46, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %error.2, %err_rele ], [ 0, %if.end46 ], [ -117, %if.then ], [ %call9, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xfs_bui_item_match(ptr nocapture noundef readonly %lip, i64 noundef %intent_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bui_id = getelementptr inbounds %struct.xfs_bui_log_item, ptr %lip, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %bui_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bui_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %intent_id)
  %cmp = icmp eq i64 %1, %intent_id
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_bui_item_relog(ptr noundef %intent, ptr noundef %tp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bui_nextents = getelementptr inbounds %struct.xfs_bui_log_item, ptr %intent, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %bui_nextents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bui_nextents, align 4
  %bui_extents = getelementptr inbounds %struct.xfs_bui_log_item, ptr %intent, i32 1
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %t_flags, align 4
  %4 = load ptr, ptr @xfs_bud_cache, align 4
  %call.i.i22 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 36288) #9
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %5 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_mountp.i, align 4
  tail call void @xfs_log_item_init(ptr noundef %6, ptr noundef %call.i.i22, i32 noundef 4677, ptr noundef nonnull @xfs_bud_item_ops) #9
  %bud_buip.i = getelementptr inbounds %struct.xfs_bud_log_item, ptr %call.i.i22, i32 0, i32 1
  %7 = ptrtoint ptr %bud_buip.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %intent, ptr %bud_buip.i, align 8
  %bui_id.i = getelementptr inbounds %struct.xfs_bui_log_item, ptr %intent, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %bui_id.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bui_id.i, align 8
  %bud_bui_id.i = getelementptr inbounds %struct.xfs_bud_log_item, ptr %call.i.i22, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %bud_bui_id.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %bud_bui_id.i, align 8
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call.i.i22) #9
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %call.i.i22, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #9
  %11 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t_mountp.i, align 4
  %call5 = tail call fastcc ptr @xfs_bui_init(ptr noundef %12)
  %bui_extents7 = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call5, i32 1
  %mul = shl i32 %1, 5
  %13 = call ptr @memcpy(ptr %bui_extents7, ptr %bui_extents, i32 %mul)
  %bui_next_extent = getelementptr inbounds %struct.xfs_bui_log_item, ptr %call5, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bui_next_extent, i32 noundef 4) #9
  %14 = ptrtoint ptr %bui_next_extent to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %1, ptr %bui_next_extent, align 4
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %call5) #9
  %li_flags10 = getelementptr inbounds %struct.xfs_log_item, ptr %call5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags10) #9
  ret ptr %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_bui_release(ptr noundef %buip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bui_refcount = getelementptr inbounds %struct.xfs_bui_log_item, ptr %buip, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bui_refcount, i32 noundef 4) #9
  %0 = ptrtoint ptr %bui_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bui_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !51

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 56) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bui_refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %bui_refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bui_refcount, ptr %bui_refcount, i32 1, ptr elementtype(i32) %bui_refcount) #9, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_trans_ail_delete(ptr noundef %buip, i32 noundef 2) #9
  tail call fastcc void @xfs_bui_item_free(ptr noundef %buip)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_bui_item_free(ptr noundef %buip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_bui_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %buip) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xlog_recover_iget(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_unmap_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_ops_capture_and_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_ino(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fileext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fsbext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_bud_item_size(ptr nocapture noundef readnone %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #5 align 64 {
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
define internal void @xfs_bud_item_format(ptr nocapture noundef %lip, ptr nocapture noundef %lv) #1 align 64 {
if.end.i.i:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bud_format = getelementptr inbounds %struct.xfs_bud_log_item, ptr %lip, i32 0, i32 2
  %0 = ptrtoint ptr %bud_format to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 4677, ptr %bud_format, align 8
  %bud_size = getelementptr inbounds %struct.xfs_bud_log_item, ptr %lip, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %bud_size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %bud_size, align 2
  %lv_iovecp3.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %2 = ptrtoint ptr %lv_iovecp3.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lv_iovecp3.i.i, align 4
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 26, ptr %i_type.i.i, align 4
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
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !51

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 40) #9
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %bud_format, i32 16)
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
define internal void @xfs_bud_item_release(ptr noundef %lip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bud_buip = getelementptr inbounds %struct.xfs_bud_log_item, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %bud_buip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bud_buip, align 8
  tail call fastcc void @xfs_bui_release(ptr noundef %1)
  %2 = load ptr, ptr @xfs_bud_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %lip) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_finish_one(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_error_report(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_insert(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_recover_release_intent(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @xfs_bmap_update_defer_type, !1, !"xfs_bmap_update_defer_type", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_bmap_item.c", i32 410, i32 32}
!2 = !{ptr @xlog_bui_item_ops, !3, !"xlog_bui_item_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_bmap_item.c", i32 661, i32 36}
!4 = !{ptr @xlog_bud_item_ops, !5, !"xlog_bud_item_ops", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_bmap_item.c", i32 692, i32 36}
!6 = !{ptr @xfs_bui_cache, !7, !"xfs_bui_cache", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_bmap_item.c", i32 28, i32 20}
!8 = !{ptr @xfs_bud_cache, !9, !"xfs_bud_cache", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_bmap_item.c", i32 29, i32 20}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_bmap_item.c", i32 341, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @xfs_bui_item_ops, !14, !"xfs_bui_item_ops", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_bmap_item.c", i32 586, i32 34}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_bmap_item.c", i32 91, i32 2}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_log.h", i32 31, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_log.h", i32 40, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_bmap_item.c", i32 56, i32 2}
!24 = !{ptr @__func__.xfs_bui_item_recover, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_bmap_item.c", i32 477, i32 3}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_bmap_item.c", i32 523, i32 3}
!28 = !{ptr @xfs_bud_item_ops, !29, !"xfs_bud_item_ops", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_bmap_item.c", i32 204, i32 34}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_bmap_item.c", i32 320, i32 2}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_bmap_item.c", i32 293, i32 3}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_bmap_item.c", i32 383, i32 3}
!36 = !{ptr @__func__.xlog_recover_bui_commit_pass2, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_bmap_item.c", i32 642, i32 3}
!38 = !{ptr @__func__.xfs_bui_copy_format, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_bmap_item.c", i32 616, i32 2}
!40 = !{ptr @__func__.xlog_recover_bud_commit_pass2, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_bmap_item.c", i32 684, i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2148719126}
!53 = !{i64 2148634411, i64 2148634443, i64 2148634472, i64 2148634506, i64 2148634537, i64 2148634560}
!54 = !{i64 2148719355}
!55 = !{!"auto-init"}
!56 = !{i64 2148722167}
!57 = !{i64 2148636876, i64 2148636908, i64 2148636937, i64 2148636971, i64 2148637002, i64 2148637025}
!58 = !{i64 2148722396}
