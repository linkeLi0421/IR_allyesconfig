; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_refcount.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_refcount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_refcount_irec = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_refcount_rec = type { i32, i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_refcount_intent = type { %struct.list_head, i32, i32, i64 }
%struct.xfs_refcount_recovery = type { %struct.list_head, %struct.xfs_refcount_irec }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Refcount BTree record corruption in AG %d detected!\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Start block 0x%x, block count 0x%x, references 0x%x\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"*i != 1\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/xfs/libxfs/xfs_refcount.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i != 1\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfs_refc_intent\00", [16 x i8] zeroinitializer }, align 32
@xfs_refcount_intent_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_xfs_refcount_lookup = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_refcount_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_refcount_get = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_insert = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_insert_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_insert_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_deferred = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_deferred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_increase = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_increase.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_decrease = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_decrease.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found_rec != 1\00", [17 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_refcount_split_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_split_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_update = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_update_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_update_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_split_extent_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_split_extent_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_find_left_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_find_left_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_find_left_extent_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_find_left_extent_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_find_right_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_find_right_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_find_right_extent_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_find_right_extent_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_merge_center_extents = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_merge_center_extents.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_delete = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_delete_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_delete_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_merge_center_extents_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_merge_center_extents_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_merge_left_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_merge_left_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_merge_left_extent_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_merge_left_extent_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_merge_right_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_merge_right_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_merge_right_extent_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_merge_right_extent_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found_tmp != 1\00", [17 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_refcount_modify_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_modify_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_modify_extent_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_modify_extent_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_adjust_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_adjust_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_finish_one_leftover = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_finish_one_leftover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_defer = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_defer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_find_shared = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_find_shared.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_find_shared_result = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_find_shared_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_find_shared_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_find_shared_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_cow_increase = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_cow_increase.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"agbno + aglen > ext.rc_startblock\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ext.rc_startblock != agbno\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ext.rc_blockcount != aglen\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ext.rc_refcount != 1\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_refcount_adjust_cow_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_adjust_cow_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_refcount_cow_decrease = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_cow_decrease.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"be32_to_cpu(rec->refc.rc_refcount) != 1\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_refcount_recover_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_refcount_recover_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 155, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 157, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 206, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1158, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1209, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1321, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1788, i32 48 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"xfs_refcount_intent_cache\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 27, i32 20 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 3147, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 108, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 364, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 968, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1471, i32 7 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1494, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1498, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1502, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [32 x i8] c"../fs/xfs/libxfs/xfs_refcount.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1662, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xfs_refcount_intent_cache, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_refcount_intent_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_lookup_le(ptr noundef %cur, i32 noundef %bno, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %1, i32 noundef %6, i32 noundef %bno, i32 noundef 1)
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %7 = ptrtoint ptr %bc_rec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bno, ptr %bc_rec, align 8
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec, i32 0, i32 1
  %8 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rc_blockcount, align 4
  %call = tail call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef %stat) #10
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_lookup(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %dir) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_lookup, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !153
  %call42 = tail call i32 @__traceiter_xfs_refcount_lookup(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %dir) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_lookup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3147, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @xfs_btree_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_lookup_ge(ptr noundef %cur, i32 noundef %bno, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %1, i32 noundef %6, i32 noundef %bno, i32 noundef 2)
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %7 = ptrtoint ptr %bc_rec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bno, ptr %bc_rec, align 8
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec, i32 0, i32 1
  %8 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rc_blockcount, align 4
  %call = tail call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef %stat) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_lookup_eq(ptr noundef %cur, i32 noundef %bno, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %1, i32 noundef %6, i32 noundef %bno, i32 noundef 1)
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %7 = ptrtoint ptr %bc_rec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bno, ptr %bc_rec, align 8
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec, i32 0, i32 1
  %8 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rc_blockcount, align 4
  %call = tail call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 0, ptr noundef %stat) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_refcount_btrec_to_irec(ptr nocapture noundef readonly %rec, ptr nocapture noundef writeonly %irec) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 8
  %2 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %irec, align 4
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_rec, ptr %rec, i32 0, i32 1
  %3 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rc_blockcount, align 4
  %rc_blockcount2 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 1
  %5 = ptrtoint ptr %rc_blockcount2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rc_blockcount2, align 4
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_rec, ptr %rec, i32 0, i32 2
  %6 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rc_refcount, align 8
  %rc_refcount3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 2
  %8 = ptrtoint ptr %rc_refcount3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rc_refcount3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef %irec, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rec) #10
  %3 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %rec, align 4, !annotation !157
  %call = call i32 @xfs_btree_get_rec(ptr noundef %cur, ptr noundef nonnull %rec, ptr noundef %stat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rec, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %10 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irec, align 4
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_rec, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rc_blockcount.i, align 4
  %rc_blockcount2.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 1
  %13 = ptrtoint ptr %rc_blockcount2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rc_blockcount2.i, align 4
  %rc_refcount.i = getelementptr inbounds %struct.xfs_refcount_rec, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %rc_refcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rc_refcount.i, align 8
  %rc_refcount3.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 2
  %16 = ptrtoint ptr %rc_refcount3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rc_refcount3.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 8
  %pag_agno3 = getelementptr inbounds %struct.xfs_perag, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pag_agno3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pag_agno3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.end.out_bad_rec_crit_edge, label %if.end8

if.end.out_bad_rec_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bad_rec

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool9.not = icmp sgt i32 %9, -1
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp11.not = icmp eq i32 %15, 1
  br i1 %cmp11.not, label %if.end13, label %if.then10.out_bad_rec_crit_edge

if.then10.out_bad_rec_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bad_rec

if.end13:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %and14 = and i32 %9, 2147483647
  br label %if.end19

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp16 = icmp ult i32 %15, 2
  br i1 %cmp16, label %if.else.out_bad_rec_crit_edge, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else.out_bad_rec_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bad_rec

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.end13
  %realstart.0 = phi i32 [ %and14, %if.end13 ], [ %9, %if.else.if.end19_crit_edge ]
  %call20 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %20, i32 noundef %realstart.0) #10
  br i1 %call20, label %if.end22, label %if.end19.out_bad_rec_crit_edge

if.end19.out_bad_rec_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bad_rec

if.end22:                                         ; preds = %if.end19
  %21 = ptrtoint ptr %rc_blockcount2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rc_blockcount2.i, align 4
  %add = add i32 %22, %realstart.0
  call void @__sanitizer_cov_trace_cmp4(i32 %realstart.0, i32 %add)
  %cmp24 = icmp ugt i32 %realstart.0, %add
  br i1 %cmp24, label %if.end22.out_bad_rec_crit_edge, label %if.end26

if.end22.out_bad_rec_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bad_rec

if.end26:                                         ; preds = %if.end22
  %sub = add i32 %add, -1
  %call29 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %20, i32 noundef %sub) #10
  br i1 %call29, label %if.end31, label %if.end26.out_bad_rec_crit_edge

if.end26.out_bad_rec_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bad_rec

if.end31:                                         ; preds = %if.end26
  %23 = ptrtoint ptr %rc_refcount3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rc_refcount3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp33 = icmp eq i32 %24, 0
  br i1 %cmp33, label %if.end31.out_bad_rec_crit_edge, label %if.end38

if.end31.out_bad_rec_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bad_rec

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bc_mp, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 8
  %pag_agno41 = getelementptr inbounds %struct.xfs_perag, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pag_agno41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pag_agno41, align 4
  call fastcc void @trace_xfs_refcount_get(ptr noundef %26, i32 noundef %30, ptr noundef %irec)
  br label %cleanup

out_bad_rec:                                      ; preds = %if.end31.out_bad_rec_crit_edge, %if.end26.out_bad_rec_crit_edge, %if.end22.out_bad_rec_crit_edge, %if.end19.out_bad_rec_crit_edge, %if.else.out_bad_rec_crit_edge, %if.then10.out_bad_rec_crit_edge, %if.end.out_bad_rec_crit_edge
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %20) #10
  %31 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irec, align 4
  %33 = ptrtoint ptr %rc_blockcount2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rc_blockcount2.i, align 4
  %35 = ptrtoint ptr %rc_refcount3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rc_refcount3.i, align 4
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %32, i32 noundef %34, i32 noundef %36) #10
  br label %cleanup

cleanup:                                          ; preds = %out_bad_rec, %if.end38, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %out_bad_rec ], [ 0, %if.end38 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rec) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_get_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_get(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_get, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_get, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !158
  %call42 = tail call i32 @__traceiter_xfs_refcount_get(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_get, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_get, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3148, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_insert(ptr noundef %cur, ptr noundef %irec, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_insert(ptr noundef %1, i32 noundef %6, ptr noundef %irec)
  %7 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irec, align 4
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %9 = ptrtoint ptr %bc_rec to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bc_rec, align 8
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 1
  %10 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc_blockcount, align 4
  %rc_blockcount3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec, i32 0, i32 1
  %12 = ptrtoint ptr %rc_blockcount3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rc_blockcount3, align 4
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 2
  %13 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rc_refcount, align 4
  %rc_refcount5 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6, i32 0, i32 1
  %15 = ptrtoint ptr %rc_refcount5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rc_refcount5, align 8
  %call = tail call i32 @xfs_btree_insert(ptr noundef %cur, ptr noundef %i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then12_crit_edge

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not = icmp eq i32 %17, 1
  br i1 %cmp.not, label %if.end.if.end16_crit_edge, label %__here, !prof !152

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bc_mp, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !160
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %19, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 206, ptr noundef blockaddress(@xfs_refcount_insert, %__here)) #10
  br label %if.then12

if.then12:                                        ; preds = %__here, %entry.if.then12_crit_edge
  %error.0.ph = phi i32 [ -117, %__here ], [ %call, %entry.if.then12_crit_edge ]
  %20 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bc_mp, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 8
  %pag_agno15 = getelementptr inbounds %struct.xfs_perag, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pag_agno15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pag_agno15, align 4
  %26 = tail call ptr @llvm.returnaddress(i32 0)
  %27 = ptrtoint ptr %26 to i32
  tail call fastcc void @trace_xfs_refcount_insert_error(ptr noundef %21, i32 noundef %25, i32 noundef %error.0.ph, i32 noundef %27)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %error.035 = phi i32 [ %error.0.ph, %if.then12 ], [ 0, %if.end.if.end16_crit_edge ]
  ret i32 %error.035
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_insert(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_insert, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_insert, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %call42 = tail call i32 @__traceiter_xfs_refcount_insert(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !162
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_insert, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3150, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @xfs_btree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_insert_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_insert_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_insert_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !163
  %call42 = tail call i32 @__traceiter_xfs_refcount_insert_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_insert_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_insert_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_insert_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_insert_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3152, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_refcount_finish_one_cleanup(ptr noundef %tp, ptr noundef %rcur, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %rcur, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @xfs_btree_del_cursor(ptr noundef nonnull %rcur, i32 noundef %error) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_finish_one(ptr noundef %tp, i32 noundef %type, i64 noundef %startblock, i32 noundef %blockcount, ptr nocapture noundef writeonly %new_fsb, ptr nocapture noundef %new_len, ptr nocapture noundef %pcur) local_unnamed_addr #0 align 64 {
entry:
  %agbp = alloca ptr, align 4
  %new_agbno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #10
  %2 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %agbp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_agbno) #10
  %3 = ptrtoint ptr %new_agbno to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %new_agbno, align 4, !annotation !157
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %startblock, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv1) #10
  %6 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_agblklog, align 4
  %conv4 = zext i8 %7 to i32
  %notmask.i = shl nsw i32 -1, %conv4
  %sub.i = xor i32 %notmask.i, -1
  %8 = trunc i64 %startblock to i32
  %conv7 = and i32 %sub.i, %8
  %sh_prom11 = zext i8 %7 to i64
  %shr12 = lshr i64 %startblock, %sh_prom11
  %conv13 = trunc i64 %shr12 to i32
  tail call fastcc void @trace_xfs_refcount_deferred(ptr noundef %1, i32 noundef %conv13, i32 noundef %type, i32 noundef %conv7, i32 noundef %blockcount)
  %call21 = tail call zeroext i1 @xfs_errortag_test(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 1158, i32 noundef 25) #10
  br i1 %call21, label %entry.out_drop_crit_edge, label %if.end

entry.out_drop_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %pcur to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcur, align 4
  %cmp.not = icmp eq ptr %10, null
  br i1 %cmp.not, label %if.end.if.then33_crit_edge, label %land.lhs.true

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

land.lhs.true:                                    ; preds = %if.end
  %11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %cmp25.not = icmp eq ptr %13, %call
  br i1 %cmp25.not, label %land.lhs.true.if.end41_crit_edge, label %xfs_refcount_finish_one_cleanup.exit

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

xfs_refcount_finish_one_cleanup.exit:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %10, i32 0, i32 10, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shape_changes29 = getelementptr inbounds %struct.xfs_btree_cur, ptr %10, i32 0, i32 10, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %shape_changes29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shape_changes29, align 4
  tail call void @xfs_btree_del_cursor(ptr noundef nonnull %10, i32 noundef 0) #10
  %19 = ptrtoint ptr %pcur to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pcur, align 4
  br label %if.then33

if.then33:                                        ; preds = %xfs_refcount_finish_one_cleanup.exit, %if.end.if.then33_crit_edge
  %nr_ops.0.ph = phi i32 [ 0, %if.end.if.then33_crit_edge ], [ %16, %xfs_refcount_finish_one_cleanup.exit ]
  %shape_changes.0.ph = phi i32 [ 0, %if.end.if.then33_crit_edge ], [ %18, %xfs_refcount_finish_one_cleanup.exit ]
  %20 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t_mountp, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pag_agno, align 4
  %call35 = call i32 @xfs_alloc_read_agf(ptr noundef %21, ptr noundef %tp, i32 noundef %23, i32 noundef 2, ptr noundef nonnull %agbp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.end37, label %if.then33.out_drop_crit_edge

if.then33.out_drop_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.end37:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %agbp, align 4
  %call38 = call ptr @xfs_refcountbt_init_cursor(ptr noundef %1, ptr noundef %tp, ptr noundef %25, ptr noundef %call) #10
  %26 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call38, i32 0, i32 10, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nr_ops.0.ph, ptr %26, align 8
  %shape_changes40 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call38, i32 0, i32 10, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %shape_changes40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shape_changes.0.ph, ptr %shape_changes40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %land.lhs.true.if.end41_crit_edge
  %rcur.1 = phi ptr [ %call38, %if.end37 ], [ %10, %land.lhs.true.if.end41_crit_edge ]
  %29 = ptrtoint ptr %pcur to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rcur.1, ptr %pcur, align 4
  %30 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.epilog.thread [
    i32 1, label %sw.bb
    i32 2, label %sw.bb50
    i32 3, label %sw.bb61
    i32 4, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = call fastcc i32 @xfs_refcount_adjust(ptr noundef %rcur.1, i32 noundef %conv7, i32 noundef %blockcount, ptr noundef nonnull %new_agbno, ptr noundef %new_len, i32 noundef 1)
  %pag_agno43 = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %pag_agno43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pag_agno43, align 4
  %conv44 = zext i32 %32 to i64
  %33 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sb_agblklog, align 4
  %sh_prom48 = zext i8 %34 to i64
  %shl = shl i64 %conv44, %sh_prom48
  %35 = ptrtoint ptr %new_agbno to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %new_agbno, align 4
  %conv49 = zext i32 %36 to i64
  %or = or i64 %shl, %conv49
  %37 = ptrtoint ptr %new_fsb to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or, ptr %new_fsb, align 8
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = call fastcc i32 @xfs_refcount_adjust(ptr noundef %rcur.1, i32 noundef %conv7, i32 noundef %blockcount, ptr noundef nonnull %new_agbno, ptr noundef %new_len, i32 noundef -1)
  %pag_agno52 = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %pag_agno52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pag_agno52, align 4
  %conv53 = zext i32 %39 to i64
  %40 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sb_agblklog, align 4
  %sh_prom57 = zext i8 %41 to i64
  %shl58 = shl i64 %conv53, %sh_prom57
  %42 = ptrtoint ptr %new_agbno to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %new_agbno, align 4
  %conv59 = zext i32 %43 to i64
  %or60 = or i64 %shl58, %conv59
  %44 = ptrtoint ptr %new_fsb to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %or60, ptr %new_fsb, align 8
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %conv62 = zext i32 %blockcount to i64
  %add = add i64 %conv62, %startblock
  %45 = ptrtoint ptr %new_fsb to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add, ptr %new_fsb, align 8
  %46 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %new_len, align 4
  %call63 = call fastcc i32 @__xfs_refcount_cow_alloc(ptr noundef %rcur.1, i32 noundef %conv7, i32 noundef %blockcount)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %conv65 = zext i32 %blockcount to i64
  %add66 = add i64 %conv65, %startblock
  %47 = ptrtoint ptr %new_fsb to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add66, ptr %new_fsb, align 8
  %48 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %new_len, align 4
  %call67 = call fastcc i32 @__xfs_refcount_cow_free(ptr noundef %rcur.1, i32 noundef %conv7, i32 noundef %blockcount)
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1209) #10
  br label %out_drop

sw.epilog:                                        ; preds = %sw.bb64, %sw.bb61, %sw.bb50, %sw.bb
  %error.0 = phi i32 [ %call67, %sw.bb64 ], [ %call63, %sw.bb61 ], [ %call51, %sw.bb50 ], [ %call42, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool68.not = icmp eq i32 %error.0, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %sw.epilog.out_drop_crit_edge

sw.epilog.out_drop_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

land.lhs.true69:                                  ; preds = %sw.epilog
  %49 = ptrtoint ptr %new_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %new_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp70.not = icmp eq i32 %50, 0
  br i1 %cmp70.not, label %land.lhs.true69.out_drop_crit_edge, label %if.then72

land.lhs.true69.out_drop_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  %pag_agno73 = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 1
  %51 = ptrtoint ptr %pag_agno73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pag_agno73, align 4
  %53 = ptrtoint ptr %new_agbno to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %new_agbno, align 4
  call fastcc void @trace_xfs_refcount_finish_one_leftover(ptr noundef %1, i32 noundef %52, i32 noundef %type, i32 noundef %conv7, i32 noundef %blockcount, i32 noundef %54, i32 noundef %50)
  br label %out_drop

out_drop:                                         ; preds = %if.then72, %land.lhs.true69.out_drop_crit_edge, %sw.epilog.out_drop_crit_edge, %sw.epilog.thread, %if.then33.out_drop_crit_edge, %entry.out_drop_crit_edge
  %error.1 = phi i32 [ %call35, %if.then33.out_drop_crit_edge ], [ %error.0, %sw.epilog.out_drop_crit_edge ], [ 0, %if.then72 ], [ 0, %land.lhs.true69.out_drop_crit_edge ], [ -5, %entry.out_drop_crit_edge ], [ -117, %sw.epilog.thread ]
  call void @xfs_perag_put(ptr noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_agbno) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #10
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_deferred(ptr noundef %mp, i32 noundef %agno, i32 noundef %type, i32 noundef %bno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_deferred, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_deferred, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !165
  %call42 = tail call i32 @__traceiter_xfs_refcount_deferred(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %type, i32 noundef %bno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !166
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_deferred, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_deferred, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_deferred.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_deferred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3185, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_refcountbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_adjust(ptr noundef %cur, i32 noundef %agbno, i32 noundef %aglen, ptr nocapture noundef %new_agbno, ptr nocapture noundef %new_aglen, i32 noundef %adj) unnamed_addr #6 align 64 {
entry:
  %shape_changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shape_changed) #10
  %0 = ptrtoint ptr %shape_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %shape_changed, align 1, !annotation !157
  %1 = ptrtoint ptr %new_agbno to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %agbno, ptr %new_agbno, align 4
  %2 = ptrtoint ptr %new_aglen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %aglen, ptr %new_aglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %adj)
  %cmp = icmp eq i32 %adj, 1
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %3 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_mp, align 4
  %5 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xfs_refcount_increase(ptr noundef %4, i32 noundef %9, i32 noundef %agbno, i32 noundef %aglen)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xfs_refcount_decrease(ptr noundef %4, i32 noundef %9, i32 noundef %agbno, i32 noundef %aglen)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call fastcc i32 @xfs_refcount_split_extent(ptr noundef %cur, i32 noundef %agbno, ptr noundef nonnull %shape_changed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_error_crit_edge

if.end.out_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %shape_changed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shape_changed, align 1, !range !167
  %add = add i32 %aglen, %agbno
  %call9 = call fastcc i32 @xfs_refcount_split_extent(ptr noundef %cur, i32 noundef %add, ptr noundef nonnull %shape_changed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.out_error_crit_edge

if.end5.out_error_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end12:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %shape_changed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shape_changed, align 1, !range !167
  %call17 = call fastcc i32 @xfs_refcount_merge_extents(ptr noundef %cur, ptr noundef %new_agbno, ptr noundef %new_aglen, i32 noundef %adj, i32 noundef 1, ptr noundef nonnull %shape_changed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end12.out_error_crit_edge

if.end12.out_error_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end20:                                         ; preds = %if.end12
  %narrow = add nuw nsw i8 %13, %11
  %14 = ptrtoint ptr %shape_changed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shape_changed, align 1, !range !167
  %narrow72 = sub nsw i8 0, %15
  call void @__sanitizer_cov_trace_cmp1(i8 %narrow, i8 %narrow72)
  %tobool25.not = icmp eq i8 %narrow, %narrow72
  br i1 %tobool25.not, label %if.end20.if.end29_crit_edge, label %if.then26

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %shape_changes27 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %shape_changes27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shape_changes27, align 4
  %inc28 = add i32 %17, 1
  store i32 %inc28, ptr %shape_changes27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end20.if.end29_crit_edge
  %call30 = tail call fastcc i32 @xfs_refcount_adjust_extents(ptr noundef %cur, ptr noundef %new_agbno, ptr noundef %new_aglen, i32 noundef %adj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end29.out_error_crit_edge

if.end29.out_error_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_error:                                        ; preds = %if.end29.out_error_crit_edge, %if.end12.out_error_crit_edge, %if.end5.out_error_crit_edge, %if.end.out_error_crit_edge
  %error.0 = phi i32 [ %call, %if.end.out_error_crit_edge ], [ %call9, %if.end5.out_error_crit_edge ], [ %call17, %if.end12.out_error_crit_edge ], [ %call30, %if.end29.out_error_crit_edge ]
  %bc_mp34 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %18 = ptrtoint ptr %bc_mp34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bc_mp34, align 4
  %20 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %pag_agno36 = getelementptr inbounds %struct.xfs_perag, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pag_agno36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pag_agno36, align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0)
  %26 = ptrtoint ptr %25 to i32
  tail call fastcc void @trace_xfs_refcount_adjust_error(ptr noundef %19, i32 noundef %24, i32 noundef %error.0, i32 noundef %26)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shape_changed) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_refcount_cow_alloc(ptr noundef %rcur, i32 noundef %agbno, i32 noundef %aglen) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_cow_increase(ptr noundef %1, i32 noundef %6, i32 noundef %agbno, i32 noundef %aglen)
  %call = tail call fastcc i32 @xfs_refcount_adjust_cow(ptr noundef %rcur, i32 noundef %agbno, i32 noundef %aglen, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_refcount_cow_free(ptr noundef %rcur, i32 noundef %agbno, i32 noundef %aglen) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %rcur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_cow_decrease(ptr noundef %1, i32 noundef %6, i32 noundef %agbno, i32 noundef %aglen)
  %call = tail call fastcc i32 @xfs_refcount_adjust_cow(ptr noundef %rcur, i32 noundef %agbno, i32 noundef %aglen, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_finish_one_leftover(ptr noundef %mp, i32 noundef %agno, i32 noundef %type, i32 noundef %agbno, i32 noundef %len, i32 noundef %new_agbno, i32 noundef %new_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_finish_one_leftover, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_finish_one_leftover, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !168
  %call42 = tail call i32 @__traceiter_xfs_refcount_finish_one_leftover(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %type, i32 noundef %agbno, i32 noundef %len, i32 noundef %new_agbno, i32 noundef %new_len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !169
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_finish_one_leftover, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_finish_one_leftover, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_finish_one_leftover.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_finish_one_leftover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3218, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_refcount_increase_extent(ptr noundef %tp, ptr nocapture noundef readonly %PREV) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 1
  %4 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 2
  %6 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %br_blockcount, align 8
  %conv = trunc i64 %7 to i32
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_agblklog.i, align 4
  %conv.i = zext i8 %9 to i32
  %sh_prom.i = zext i8 %9 to i64
  %shr.i = lshr i64 %5, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %10 = trunc i64 %5 to i32
  %conv8.i = and i32 %sub.i.i, %10
  tail call fastcc void @trace_xfs_refcount_defer(ptr noundef %1, i32 noundef %conv2.i, i32 noundef 1, i32 noundef %conv8.i, i32 noundef %conv) #10
  %11 = load ptr, ptr @xfs_refcount_intent_cache, align 4
  %call9.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef 35904) #10
  %12 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call9.i, ptr %call9.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ri_type.i, align 8
  %ri_startblock.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 3
  %15 = ptrtoint ptr %ri_startblock.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %5, ptr %ri_startblock.i, align 8
  %ri_blockcount.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 2
  %16 = ptrtoint ptr %ri_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %ri_blockcount.i, align 4
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 1, ptr noundef %call9.i) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_refcount_decrease_extent(ptr noundef %tp, ptr nocapture noundef readonly %PREV) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 1
  %4 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %PREV, i32 0, i32 2
  %6 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %br_blockcount, align 8
  %conv = trunc i64 %7 to i32
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_agblklog.i, align 4
  %conv.i = zext i8 %9 to i32
  %sh_prom.i = zext i8 %9 to i64
  %shr.i = lshr i64 %5, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %10 = trunc i64 %5 to i32
  %conv8.i = and i32 %sub.i.i, %10
  tail call fastcc void @trace_xfs_refcount_defer(ptr noundef %1, i32 noundef %conv2.i, i32 noundef 2, i32 noundef %conv8.i, i32 noundef %conv) #10
  %11 = load ptr, ptr @xfs_refcount_intent_cache, align 4
  %call9.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef 35904) #10
  %12 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call9.i, ptr %call9.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %ri_type.i, align 8
  %ri_startblock.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 3
  %15 = ptrtoint ptr %ri_startblock.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %5, ptr %ri_startblock.i, align 8
  %ri_blockcount.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 2
  %16 = ptrtoint ptr %ri_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %ri_blockcount.i, align 4
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 1, ptr noundef %call9.i) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_find_shared(ptr noundef %cur, i32 noundef %agbno, i32 noundef %aglen, ptr nocapture noundef %fbno, ptr nocapture noundef %flen, i1 noundef zeroext %find_end_of_shared) #0 align 64 {
entry:
  %tmp = alloca %struct.xfs_refcount_irec, align 4
  %i = alloca i32, align 4
  %have = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #10
  %5 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %i, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have) #10
  %6 = ptrtoint ptr %have to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %have, align 4, !annotation !157
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %7 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bc_mp, align 4
  %9 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_find_shared(ptr noundef %8, i32 noundef %13, i32 noundef %agbno, i32 noundef %aglen)
  %14 = ptrtoint ptr %fbno to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %fbno, align 4
  %15 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flen, align 4
  %16 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_mp, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %17, i32 noundef %21, i32 noundef %agbno, i32 noundef 1) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %22 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %agbno, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %23 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %have) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then123_crit_edge

entry.if.then123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then123

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %have to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %have, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not = icmp eq i32 %25, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %have) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.if.then123_crit_edge

if.then2.if.then123_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then123

if.end6:                                          ; preds = %if.then2
  %26 = ptrtoint ptr %have to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %have, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not = icmp eq i32 %27, 0
  br i1 %tobool7.not, label %if.end6.out_error_crit_edge, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end6.out_error_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.then123_crit_edge

if.end10.if.then123_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then123

if.end14:                                         ; preds = %if.end10
  %28 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.not = icmp eq i32 %29, 1
  br i1 %cmp.not, label %if.end20, label %__here, !prof !152

__here:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !170
  call void @xfs_corruption_error(ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %31, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1321, ptr noundef blockaddress(@xfs_refcount_find_shared, %__here)) #10
  br label %if.then123

if.end20:                                         ; preds = %if.end14
  %32 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tmp, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %add = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %agbno)
  %cmp21.not = icmp ugt i32 %add, %agbno
  br i1 %cmp21.not, label %if.end20.if.end48_crit_edge, label %if.then22

if.end20.if.end48_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %have) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then22.if.then123_crit_edge

if.then22.if.then123_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then123

if.end26:                                         ; preds = %if.then22
  %36 = ptrtoint ptr %have to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %have, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not = icmp eq i32 %37, 0
  br i1 %tobool27.not, label %if.end26.out_error_crit_edge, label %if.end29

if.end26.out_error_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end29:                                         ; preds = %if.end26
  %call30 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.if.then123_crit_edge

if.end29.if.then123_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then123

if.end33:                                         ; preds = %if.end29
  %38 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp34.not = icmp eq i32 %39, 1
  br i1 %cmp34.not, label %if.end33.if.end48_crit_edge, label %__here43, !prof !152

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

__here43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  call void @xfs_corruption_error(ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %41, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1336, ptr noundef blockaddress(@xfs_refcount_find_shared, %__here43)) #10
  br label %if.then123

if.end48:                                         ; preds = %if.end33.if.end48_crit_edge, %if.end20.if.end48_crit_edge
  %42 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tmp, align 4
  %add50 = add i32 %aglen, %agbno
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add50)
  %cmp51.not = icmp ult i32 %43, %add50
  br i1 %cmp51.not, label %if.end53, label %if.end48.out_error_crit_edge

if.end48.out_error_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %agbno)
  %cmp55 = icmp ult i32 %43, %agbno
  br i1 %cmp55, label %if.then56, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %sub.neg = sub i32 %43, %agbno
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %sub59 = add i32 %sub.neg, %45
  store i32 %sub59, ptr %1, align 4
  %46 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %agbno, ptr %tmp, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end53.if.end61_crit_edge
  %47 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp, align 4
  %49 = ptrtoint ptr %fbno to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fbno, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %sub65 = sub i32 %add50, %48
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 %sub65)
  %53 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %flen, align 4
  br i1 %find_end_of_shared, label %while.cond.preheader, label %if.end61.out_error_crit_edge

if.end61.out_error_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

while.cond.preheader:                             ; preds = %if.end61
  %54 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fbno, align 4
  %56 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flen, align 4
  %add73189 = add i32 %57, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %add73189, i32 %add50)
  %cmp75190 = icmp ult i32 %add73189, %add50
  br i1 %cmp75190, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.out_error_crit_edge

while.cond.preheader.out_error_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end108.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call76 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %have) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %while.body.if.then123_crit_edge

while.body.if.then123_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then123

if.end79:                                         ; preds = %while.body
  %58 = ptrtoint ptr %have to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %have, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool80.not = icmp eq i32 %59, 0
  br i1 %tobool80.not, label %if.end79.out_error_crit_edge, label %if.end82

if.end79.out_error_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end82:                                         ; preds = %if.end79
  %call83 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.if.then123_crit_edge

if.end82.if.then123_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then123

if.end86:                                         ; preds = %if.end82
  %60 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp87.not = icmp eq i32 %61, 1
  br i1 %cmp87.not, label %if.end100, label %__here96, !prof !152

__here96:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  call void @xfs_corruption_error(ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %63, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1367, ptr noundef blockaddress(@xfs_refcount_find_shared, %__here96)) #10
  br label %if.then123

if.end100:                                        ; preds = %if.end86
  %64 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add50)
  %cmp103.not = icmp ult i32 %65, %add50
  br i1 %cmp103.not, label %lor.lhs.false, label %if.end100.out_error_crit_edge

if.end100.out_error_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

lor.lhs.false:                                    ; preds = %if.end100
  %66 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fbno, align 4
  %68 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flen, align 4
  %add105 = add i32 %69, %67
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add105)
  %cmp106.not = icmp eq i32 %65, %add105
  br i1 %cmp106.not, label %if.end108, label %lor.lhs.false.out_error_crit_edge

lor.lhs.false.out_error_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end108:                                        ; preds = %lor.lhs.false
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %1, align 4
  %add110 = add i32 %71, %69
  %sub112 = sub i32 %add50, %67
  %72 = call i32 @llvm.umin.i32(i32 %add110, i32 %sub112)
  %73 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %flen, align 4
  %74 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fbno, align 4
  %add73 = add i32 %72, %75
  %cmp75 = icmp ult i32 %add73, %add50
  br i1 %cmp75, label %if.end108.while.body_crit_edge, label %if.end108.out_error_crit_edge

if.end108.out_error_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end108.while.body_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

out_error:                                        ; preds = %if.end108.out_error_crit_edge, %lor.lhs.false.out_error_crit_edge, %if.end100.out_error_crit_edge, %if.end79.out_error_crit_edge, %while.cond.preheader.out_error_crit_edge, %if.end61.out_error_crit_edge, %if.end48.out_error_crit_edge, %if.end26.out_error_crit_edge, %if.end6.out_error_crit_edge
  %76 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bc_mp, align 4
  %78 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %9, align 8
  %pag_agno121 = getelementptr inbounds %struct.xfs_perag, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %pag_agno121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pag_agno121, align 4
  %82 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fbno, align 4
  %84 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flen, align 4
  call fastcc void @trace_xfs_refcount_find_shared_result(ptr noundef %77, i32 noundef %81, i32 noundef %83, i32 noundef %85)
  br label %if.end127

if.then123:                                       ; preds = %__here96, %if.end82.if.then123_crit_edge, %while.body.if.then123_crit_edge, %__here43, %if.end29.if.then123_crit_edge, %if.then22.if.then123_crit_edge, %__here, %if.end10.if.then123_crit_edge, %if.then2.if.then123_crit_edge, %entry.if.then123_crit_edge
  %error.3.ph = phi i32 [ %call3, %if.then2.if.then123_crit_edge ], [ -117, %__here96 ], [ -117, %__here43 ], [ %call30, %if.end29.if.then123_crit_edge ], [ %call23, %if.then22.if.then123_crit_edge ], [ -117, %__here ], [ %call11, %if.end10.if.then123_crit_edge ], [ %call.i, %entry.if.then123_crit_edge ], [ %call76, %while.body.if.then123_crit_edge ], [ %call83, %if.end82.if.then123_crit_edge ]
  %86 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bc_mp, align 4
  %88 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %9, align 8
  %pag_agno126 = getelementptr inbounds %struct.xfs_perag, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %pag_agno126 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pag_agno126, align 4
  %92 = call ptr @llvm.returnaddress(i32 0)
  %93 = ptrtoint ptr %92 to i32
  call fastcc void @trace_xfs_refcount_find_shared_error(ptr noundef %87, i32 noundef %91, i32 noundef %error.3.ph, i32 noundef %93)
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %out_error
  %error.3188 = phi i32 [ %error.3.ph, %if.then123 ], [ 0, %out_error ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #10
  ret i32 %error.3188
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_find_shared(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_find_shared, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !173
  %call42 = tail call i32 @__traceiter_xfs_refcount_find_shared(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !174
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_find_shared.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_find_shared.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3180, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @xfs_btree_increment(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_find_shared_result(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared_result, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_find_shared_result, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  %call42 = tail call i32 @__traceiter_xfs_refcount_find_shared_result(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared_result, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared_result, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_find_shared_result.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_find_shared_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3181, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @trace_xfs_refcount_find_shared_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_find_shared_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !177
  %call42 = tail call i32 @__traceiter_xfs_refcount_find_shared_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !178
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_shared_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_find_shared_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_find_shared_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3182, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define dso_local void @xfs_refcount_alloc_cow_extent(ptr noundef %tp, i64 noundef %fsb, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_agblklog.i, align 4
  %conv.i = zext i8 %5 to i32
  %sh_prom.i = zext i8 %5 to i64
  %shr.i = lshr i64 %fsb, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %6 = trunc i64 %fsb to i32
  %conv8.i = and i32 %sub.i.i, %6
  tail call fastcc void @trace_xfs_refcount_defer(ptr noundef %1, i32 noundef %conv2.i, i32 noundef 3, i32 noundef %conv8.i, i32 noundef %len) #10
  %7 = load ptr, ptr @xfs_refcount_intent_cache, align 4
  %call9.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 35904) #10
  %8 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call9.i, ptr %call9.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %ri_type.i, align 8
  %ri_startblock.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 3
  %11 = ptrtoint ptr %ri_startblock.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %fsb, ptr %ri_startblock.i, align 8
  %ri_blockcount.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 2
  %12 = ptrtoint ptr %ri_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %ri_blockcount.i, align 4
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 1, ptr noundef %call9.i) #10
  %13 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_agblklog.i, align 4
  %conv = zext i8 %14 to i32
  %sh_prom = zext i8 %14 to i64
  %shr = lshr i64 %fsb, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %conv7 = and i32 %sub.i, %6
  tail call void @xfs_rmap_alloc_extent(ptr noundef %tp, i32 noundef %conv1, i32 noundef %conv7, i32 noundef %len, i64 noundef -9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rmap_alloc_extent(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_refcount_free_cow_extent(ptr noundef %tp, i64 noundef %fsb, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %5 to i32
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %fsb, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %6 = trunc i64 %fsb to i32
  %conv7 = and i32 %sub.i, %6
  tail call void @xfs_rmap_free_extent(ptr noundef %tp, i32 noundef %conv1, i32 noundef %conv7, i32 noundef %len, i64 noundef -9) #10
  %7 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t_mountp, align 4
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_agblklog.i, align 4
  %conv.i = zext i8 %10 to i32
  %sh_prom.i = zext i8 %10 to i64
  %shr.i = lshr i64 %fsb, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %conv8.i = and i32 %sub.i.i, %6
  tail call fastcc void @trace_xfs_refcount_defer(ptr noundef %8, i32 noundef %conv2.i, i32 noundef 4, i32 noundef %conv8.i, i32 noundef %len) #10
  %11 = load ptr, ptr @xfs_refcount_intent_cache, align 4
  %call9.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef 35904) #10
  %12 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call9.i, ptr %call9.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %ri_type.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %ri_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %ri_type.i, align 8
  %ri_startblock.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 3
  %15 = ptrtoint ptr %ri_startblock.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %fsb, ptr %ri_startblock.i, align 8
  %ri_blockcount.i = getelementptr inbounds %struct.xfs_refcount_intent, ptr %call9.i, i32 0, i32 2
  %16 = ptrtoint ptr %ri_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len, ptr %ri_blockcount.i, align 4
  tail call void @xfs_defer_add(ptr noundef %tp, i32 noundef 1, ptr noundef %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rmap_free_extent(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_recover_cow_leftovers(ptr noundef %mp, ptr noundef %pag) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  %agbp = alloca ptr, align 4
  %debris = alloca %struct.list_head, align 4
  %low = alloca %union.xfs_btree_irec, align 8
  %high = alloca %union.xfs_btree_irec, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #10
  %1 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %debris) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low) #10
  %2 = call ptr @memset(ptr %low, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high) #10
  %3 = call ptr @memset(ptr %high, i32 255, i32 32)
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %4 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.list_head, ptr %debris, i32 0, i32 1
  %7 = ptrtoint ptr %debris to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %debris, ptr %debris, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %debris, ptr %6, align 4
  %call = call i32 @xfs_trans_alloc_empty(ptr noundef %mp, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %11 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pag_agno, align 4
  %call3 = call i32 @xfs_alloc_read_agf(ptr noundef %mp, ptr noundef %10, i32 noundef %12, i32 noundef 0, ptr noundef nonnull %agbp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  br i1 %tobool4.not, label %if.end6, label %out_trans

if.end6:                                          ; preds = %if.end2
  %15 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %agbp, align 4
  %call7 = call ptr @xfs_refcountbt_init_cursor(ptr noundef %mp, ptr noundef %14, ptr noundef %16, ptr noundef %pag) #10
  %17 = call ptr @memset(ptr %low, i32 0, i32 32)
  %18 = call ptr @memset(ptr %high, i32 0, i32 32)
  %19 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -2147483648, ptr %low, align 8
  %20 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %high, align 8
  %call9 = call i32 @xfs_btree_query_range(ptr noundef %call7, ptr noundef nonnull %low, ptr noundef nonnull %high, ptr noundef nonnull @xfs_refcount_recover_extent, ptr noundef nonnull %debris) #10
  call void @xfs_btree_del_cursor(ptr noundef %call7, i32 noundef %call9) #10
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  %23 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %agbp, align 4
  call void @xfs_trans_brelse(ptr noundef %22, ptr noundef %24) #10
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.out_free_crit_edge

if.end6.out_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end12:                                         ; preds = %if.end6
  %27 = ptrtoint ptr %debris to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %debris, align 4
  %cmp18.not120 = icmp eq ptr %28, %debris
  br i1 %cmp18.not120, label %if.end12.cleanup_crit_edge, label %for.body.lr.ph

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end12
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %rr.0121 = phi ptr [ %28, %for.body.lr.ph ], [ %n.0122, %list_del.exit.for.body_crit_edge ]
  %29 = ptrtoint ptr %rr.0121 to i32
  call void @__asan_load4_noabort(i32 %29)
  %n.0122 = load ptr, ptr %rr.0121, align 4
  %call19 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %m_resv, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.body.out_free_crit_edge

for.body.out_free_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end22:                                         ; preds = %for.body
  %30 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pag_agno, align 4
  %rr_rrec = getelementptr inbounds %struct.xfs_refcount_recovery, ptr %rr.0121, i32 0, i32 1
  call fastcc void @trace_xfs_refcount_recover_extent(ptr noundef %mp, i32 noundef %31, ptr noundef %rr_rrec)
  %32 = ptrtoint ptr %rr_rrec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rr_rrec, align 4
  %sub = xor i32 %33, -2147483648
  %34 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %35 to i64
  %36 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %37 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv29 = zext i32 %sub to i64
  %or = or i64 %shl, %conv29
  %38 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tp, align 4
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_recovery, ptr %rr.0121, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rc_blockcount, align 4
  call void @xfs_refcount_free_cow_extent(ptr noundef %39, i64 noundef %or, i32 noundef %41)
  %42 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tp, align 4
  %44 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rc_blockcount, align 4
  %conv33 = zext i32 %45 to i64
  call void @__xfs_free_extent_later(ptr noundef %43, i64 noundef %or, i64 noundef %conv33, ptr noundef null, i1 noundef zeroext false) #10
  %46 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tp, align 4
  %call34 = call i32 @xfs_trans_commit(ptr noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end22.out_free_crit_edge

if.end22.out_free_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end37:                                         ; preds = %if.end22
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %rr.0121) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.list_del.exit_crit_edge

if.end37.list_del.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rr.0121, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %rr.0121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rr.0121, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end37.list_del.exit_crit_edge
  %54 = ptrtoint ptr %rr.0121 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %rr.0121, align 4
  %prev.i111 = getelementptr inbounds %struct.list_head, ptr %rr.0121, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i111, align 4
  call void @kvfree(ptr noundef %rr.0121) #10
  %cmp18.not = icmp eq ptr %n.0122, %debris
  br i1 %cmp18.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_trans:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_trans_cancel(ptr noundef %14) #10
  br label %out_free

out_free:                                         ; preds = %out_trans, %if.end22.out_free_crit_edge, %for.body.out_free_crit_edge, %if.end6.out_free_crit_edge
  %error.1 = phi i32 [ %call3, %out_trans ], [ %call9, %if.end6.out_free_crit_edge ], [ %call34, %if.end22.out_free_crit_edge ], [ %call19, %for.body.out_free_crit_edge ]
  %56 = ptrtoint ptr %debris to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %debris, align 4
  %cmp55.not123 = icmp eq ptr %57, %debris
  br i1 %cmp55.not123, label %out_free.cleanup_crit_edge, label %out_free.for.body58_crit_edge

out_free.for.body58_crit_edge:                    ; preds = %out_free
  br label %for.body58

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body58:                                       ; preds = %list_del.exit117.for.body58_crit_edge, %out_free.for.body58_crit_edge
  %rr.1124 = phi ptr [ %n.1, %list_del.exit117.for.body58_crit_edge ], [ %57, %out_free.for.body58_crit_edge ]
  %58 = ptrtoint ptr %rr.1124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %n.1 = load ptr, ptr %rr.1124, align 4
  %call.i.i112 = call zeroext i1 @__list_del_entry_valid(ptr noundef %rr.1124) #10
  br i1 %call.i.i112, label %if.end.i.i115, label %for.body58.list_del.exit117_crit_edge

for.body58.list_del.exit117_crit_edge:            ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit117

if.end.i.i115:                                    ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i113 = getelementptr inbounds %struct.list_head, ptr %rr.1124, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i113, align 4
  %61 = ptrtoint ptr %rr.1124 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rr.1124, align 4
  %prev1.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i114, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit117

list_del.exit117:                                 ; preds = %if.end.i.i115, %for.body58.list_del.exit117_crit_edge
  %65 = ptrtoint ptr %rr.1124 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %rr.1124, align 4
  %prev.i116 = getelementptr inbounds %struct.list_head, ptr %rr.1124, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i116, align 4
  call void @kvfree(ptr noundef %rr.1124) #10
  %cmp55.not = icmp eq ptr %n.1, %debris
  br i1 %cmp55.not, label %list_del.exit117.cleanup_crit_edge, label %list_del.exit117.for.body58_crit_edge

list_del.exit117.for.body58_crit_edge:            ; preds = %list_del.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body58

list_del.exit117.cleanup_crit_edge:               ; preds = %list_del.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit117.cleanup_crit_edge, %out_free.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %error.1, %out_free.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %error.1, %list_del.exit117.cleanup_crit_edge ], [ 0, %list_del.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %debris) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_query_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_refcount_recover_extent(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %rec, ptr noundef %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_rec, ptr %rec, i32 0, i32 2
  %0 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc_refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %__here, !prof !152

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1663, ptr noundef blockaddress(@xfs_refcount_recover_extent, %__here)) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @kmem_alloc(i32 noundef 20, i32 noundef 0) #10
  %rr_rrec = getelementptr inbounds %struct.xfs_refcount_recovery, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rec, align 8
  %6 = ptrtoint ptr %rr_rrec to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rr_rrec, align 4
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_rec, ptr %rec, i32 0, i32 1
  %7 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rc_blockcount.i, align 4
  %rc_blockcount2.i = getelementptr inbounds %struct.xfs_refcount_recovery, ptr %call, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %rc_blockcount2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rc_blockcount2.i, align 4
  %10 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc_refcount, align 8
  %rc_refcount3.i = getelementptr inbounds %struct.xfs_refcount_recovery, ptr %call, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %rc_refcount3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rc_refcount3.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call, ptr noundef %14, ptr noundef %priv) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %prev.i, align 4
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_recover_extent(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_recover_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_recover_extent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %call42 = tail call i32 @__traceiter_xfs_refcount_recover_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !181
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_recover_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_recover_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_recover_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_recover_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3163, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_has_record(ptr noundef %cur, i32 noundef %bno, i32 noundef %len, ptr noundef %exists) local_unnamed_addr #0 align 64 {
entry:
  %low = alloca %union.xfs_btree_irec, align 8
  %high = alloca %union.xfs_btree_irec, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %high) #10
  %0 = call ptr @memset(ptr %low, i32 0, i32 32)
  %1 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bno, ptr %low, align 8
  %2 = call ptr @memset(ptr %high, i32 255, i32 32)
  %add = add i32 %bno, -1
  %sub = add i32 %add, %len
  %3 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %high, align 8
  %call = call i32 @xfs_btree_has_record(ptr noundef %cur, ptr noundef nonnull %low, ptr noundef nonnull %high, ptr noundef %exists) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %high) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_has_record(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_refcount_intent_init_cache() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.7, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  store ptr %call, ptr @xfs_refcount_intent_cache, align 4
  %cmp.not = icmp eq ptr %call, null
  %cond = select i1 %cmp.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_refcount_intent_destroy_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_refcount_intent_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  store ptr null, ptr @xfs_refcount_intent_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_insert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_insert_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_deferred(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_increase(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_increase, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_increase, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !182
  %call42 = tail call i32 @__traceiter_xfs_refcount_increase(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !183
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_increase, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_increase, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_increase.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_increase.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3157, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @trace_xfs_refcount_decrease(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_decrease, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_decrease, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !184
  %call42 = tail call i32 @__traceiter_xfs_refcount_decrease(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !185
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_decrease, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_decrease, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_decrease.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_decrease.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3158, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc i32 @xfs_refcount_split_extent(ptr noundef %cur, i32 noundef %agbno, ptr nocapture noundef writeonly %shape_changed) #6 align 64 {
entry:
  %rcext = alloca %struct.xfs_refcount_irec, align 4
  %tmp = alloca %struct.xfs_refcount_irec, align 4
  %found_rec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rcext) #10
  %0 = ptrtoint ptr %rcext to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rcext, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %rcext, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %rcext, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #10
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp, align 4, !annotation !157
  %6 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !157
  %8 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %10 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  %11 = ptrtoint ptr %shape_changed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %shape_changed, align 1
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %12 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bc_mp.i, align 4
  %14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %13, i32 noundef %18, i32 noundef %agbno, i32 noundef 1) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %19 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %agbno, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %20 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_error_crit_edge

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not = icmp eq i32 %22, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %rcext, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_error_crit_edge

if.end3.out_error_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end7:                                          ; preds = %if.end3
  %23 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not = icmp eq i32 %24, 1
  br i1 %cmp.not, label %if.end12, label %__here, !prof !152

__here:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !186
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %26, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 364, ptr noundef blockaddress(@xfs_refcount_split_extent, %__here)) #10
  br label %out_error

if.end12:                                         ; preds = %if.end7
  %27 = ptrtoint ptr %rcext to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rcext, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %agbno)
  %cmp13 = icmp eq i32 %28, %agbno
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %add.i = add i32 %30, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %agbno)
  %cmp15.not = icmp ugt i32 %add.i, %agbno
  br i1 %cmp15.not, label %if.end17, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %shape_changed to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %shape_changed, align 1
  %32 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bc_mp.i, align 4
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %14, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_refcount_split_extent(ptr noundef %33, i32 noundef %37, ptr noundef nonnull %rcext, i32 noundef %agbno)
  %38 = call ptr @memcpy(ptr %tmp, ptr %rcext, i32 12)
  %39 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %agbno, ptr %tmp, align 4
  %40 = ptrtoint ptr %rcext to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rcext, align 4
  %sub.neg = sub i32 %41, %agbno
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %6, align 4
  %sub21 = add i32 %sub.neg, %43
  store i32 %sub21, ptr %6, align 4
  %call22 = call fastcc i32 @xfs_refcount_update(ptr noundef %cur, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end17.out_error_crit_edge

if.end17.out_error_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end25:                                         ; preds = %if.end17
  %44 = call ptr @memcpy(ptr %tmp, ptr %rcext, i32 12)
  %45 = ptrtoint ptr %rcext to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rcext, align 4
  %sub27 = sub i32 %agbno, %46
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub27, ptr %6, align 4
  %call29 = call i32 @xfs_refcount_insert(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end25.out_error_crit_edge

if.end25.out_error_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end32:                                         ; preds = %if.end25
  %48 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp33.not = icmp eq i32 %49, 1
  br i1 %cmp33.not, label %if.end32.cleanup_crit_edge, label %__here42, !prof !152

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %51, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 389, ptr noundef blockaddress(@xfs_refcount_split_extent, %__here42)) #10
  br label %out_error

out_error:                                        ; preds = %__here42, %if.end25.out_error_crit_edge, %if.end17.out_error_crit_edge, %__here, %if.end3.out_error_crit_edge, %entry.out_error_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.out_error_crit_edge ], [ %call4, %if.end3.out_error_crit_edge ], [ -117, %__here ], [ %call22, %if.end17.out_error_crit_edge ], [ %call29, %if.end25.out_error_crit_edge ], [ -117, %__here42 ]
  %52 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bc_mp.i, align 4
  %54 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %14, align 8
  %pag_agno49 = getelementptr inbounds %struct.xfs_perag, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pag_agno49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pag_agno49, align 4
  %58 = call ptr @llvm.returnaddress(i32 0)
  %59 = ptrtoint ptr %58 to i32
  call fastcc void @trace_xfs_refcount_split_extent_error(ptr noundef %53, i32 noundef %57, i32 noundef %error.0, i32 noundef %59)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end32.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rcext) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_merge_extents(ptr noundef %cur, ptr nocapture noundef %agbno, ptr nocapture noundef %aglen, i32 noundef %adjust, i32 noundef %flags, ptr nocapture noundef writeonly %shape_changed) unnamed_addr #6 align 64 {
entry:
  %left = alloca %struct.xfs_refcount_irec, align 4
  %cleft = alloca %struct.xfs_refcount_irec, align 4
  %cright = alloca %struct.xfs_refcount_irec, align 4
  %right = alloca %struct.xfs_refcount_irec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %left) #10
  %0 = call ptr @memset(ptr %left, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cleft) #10
  %1 = call ptr @memset(ptr %cleft, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cright) #10
  %2 = call ptr @memset(ptr %cright, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %right) #10
  %3 = call ptr @memset(ptr %right, i32 0, i32 12)
  %4 = ptrtoint ptr %shape_changed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %shape_changed, align 1
  %5 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %agbno, align 4
  %7 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aglen, align 4
  %call = call fastcc i32 @xfs_refcount_find_left_extents(ptr noundef %cur, ptr noundef nonnull %left, ptr noundef nonnull %cleft, i32 noundef %6, i32 noundef %8, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %agbno, align 4
  %11 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aglen, align 4
  %call1 = call fastcc i32 @xfs_refcount_find_right_extents(ptr noundef %cur, ptr noundef nonnull %right, ptr noundef nonnull %cright, i32 noundef %10, i32 noundef %12, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not = icmp eq i32 %14, -1
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %15 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i135.not = icmp eq i32 %16, -1
  br i1 %cmp.i135.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %17 = ptrtoint ptr %cleft to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cleft, align 4
  %19 = ptrtoint ptr %cright to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cright, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp = icmp eq i32 %18, %20
  br i1 %cmp, label %land.rhs, label %if.end8.land.end_crit_edge

if.end8.land.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 1
  %21 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rc_blockcount, align 4
  %rc_blockcount10 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 1
  %23 = ptrtoint ptr %rc_blockcount10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rc_blockcount10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp11 = icmp eq i32 %22, %24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end8.land.end_crit_edge
  %25 = phi i1 [ false, %if.end8.land.end_crit_edge ], [ %cmp11, %land.rhs ]
  %rc_blockcount12 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %left, i32 0, i32 1
  %26 = ptrtoint ptr %rc_blockcount12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rc_blockcount12, align 4
  %conv = zext i32 %27 to i64
  %rc_blockcount13 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 1
  %28 = ptrtoint ptr %rc_blockcount13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rc_blockcount13, align 4
  %conv14 = zext i32 %29 to i64
  %add = add nuw nsw i64 %conv14, %conv
  %rc_blockcount15 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %right, i32 0, i32 1
  %30 = ptrtoint ptr %rc_blockcount15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rc_blockcount15, align 4
  %conv16 = zext i32 %31 to i64
  %add17 = add nuw nsw i64 %add, %conv16
  br i1 %cmp.i.not, label %land.end.if.end76_crit_edge, label %land.lhs.true20

land.end.if.end76_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.lhs.true20:                                  ; preds = %land.end
  %32 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i137.not = icmp eq i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i141.not = icmp eq i32 %18, -1
  br i1 %cmp.i137.not, label %land.lhs.true56, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  br i1 %cmp.i141.not, label %if.end76.thread, label %land.lhs.true26

if.end76.thread:                                  ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %rc_blockcount15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rc_blockcount15, align 4
  %conv78147 = zext i32 %35 to i64
  %rc_blockcount79148 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 1
  %36 = ptrtoint ptr %rc_blockcount79148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rc_blockcount79148, align 4
  %conv80149 = zext i32 %37 to i64
  %add81150 = add nuw nsw i64 %conv80149, %conv78147
  br label %land.lhs.true84

land.lhs.true26:                                  ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i139.not = icmp eq i32 %20, -1
  %.not = xor i1 %25, true
  %brmerge = select i1 %cmp.i139.not, i1 true, i1 %.not
  br i1 %brmerge, label %land.lhs.true26.land.lhs.true59_crit_edge, label %land.lhs.true32

land.lhs.true26.land.lhs.true59_crit_edge:        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true59

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %left, i32 0, i32 2
  %38 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rc_refcount, align 4
  %rc_refcount33 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 2
  %40 = ptrtoint ptr %rc_refcount33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rc_refcount33, align 4
  %add34 = add i32 %41, %adjust
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add34)
  %cmp35 = icmp eq i32 %39, %add34
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true32.land.lhs.true59_crit_edge

land.lhs.true32.land.lhs.true59_crit_edge:        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true59

land.lhs.true37:                                  ; preds = %land.lhs.true32
  %rc_refcount38 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %right, i32 0, i32 2
  %42 = ptrtoint ptr %rc_refcount38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rc_refcount38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp41 = icmp eq i32 %43, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add17)
  %cmp44 = icmp ult i64 %add17, 4294967295
  %or.cond = select i1 %cmp41, i1 %cmp44, i1 false
  br i1 %or.cond, label %if.then46, label %land.lhs.true37.land.lhs.true59_crit_edge

land.lhs.true37.land.lhs.true59_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true59

if.then46:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %shape_changed to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %shape_changed, align 1
  %call47 = call fastcc i32 @xfs_refcount_merge_center_extents(ptr noundef %cur, ptr noundef nonnull %left, ptr noundef nonnull %cleft, ptr noundef nonnull %right, i64 noundef %add17, ptr noundef %aglen)
  br label %cleanup

land.lhs.true56:                                  ; preds = %land.lhs.true20
  br i1 %cmp.i141.not, label %land.lhs.true56.cleanup_crit_edge, label %land.lhs.true56.land.lhs.true59_crit_edge

land.lhs.true56.land.lhs.true59_crit_edge:        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true59

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true59:                                  ; preds = %land.lhs.true56.land.lhs.true59_crit_edge, %land.lhs.true37.land.lhs.true59_crit_edge, %land.lhs.true32.land.lhs.true59_crit_edge, %land.lhs.true26.land.lhs.true59_crit_edge
  %rc_refcount60 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %left, i32 0, i32 2
  %45 = ptrtoint ptr %rc_refcount60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rc_refcount60, align 4
  %rc_refcount61 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 2
  %47 = ptrtoint ptr %rc_refcount61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rc_refcount61, align 4
  %add62 = add i32 %48, %adjust
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add62)
  %cmp63 = icmp eq i32 %46, %add62
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp66 = icmp ult i64 %add, 4294967295
  %or.cond132 = select i1 %cmp63, i1 %cmp66, i1 false
  br i1 %or.cond132, label %if.then68, label %land.lhs.true59.if.end76_crit_edge

land.lhs.true59.if.end76_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then68:                                        ; preds = %land.lhs.true59
  %49 = ptrtoint ptr %shape_changed to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %shape_changed, align 1
  %call69 = call fastcc i32 @xfs_refcount_merge_left_extent(ptr noundef %cur, ptr noundef nonnull %left, ptr noundef nonnull %cleft, ptr noundef %agbno, ptr noundef %aglen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp ne i32 %call69, 0
  %brmerge134 = select i1 %tobool70.not, i1 true, i1 %25
  br i1 %brmerge134, label %if.then68.cleanup_crit_edge, label %if.then68.if.end76_crit_edge

if.then68.if.end76_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76:                                         ; preds = %if.then68.if.end76_crit_edge, %land.lhs.true59.if.end76_crit_edge, %land.end.if.end76_crit_edge
  %50 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %right, align 4
  %51 = ptrtoint ptr %rc_blockcount15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rc_blockcount15, align 4
  %conv78 = zext i32 %52 to i64
  %rc_blockcount79 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 1
  %53 = ptrtoint ptr %rc_blockcount79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rc_blockcount79, align 4
  %conv80 = zext i32 %54 to i64
  %add81 = add nuw nsw i64 %conv80, %conv78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.i142.not = icmp eq i32 %.pr, -1
  br i1 %cmp.i142.not, label %if.end76.cleanup_crit_edge, label %if.end76.land.lhs.true84_crit_edge

if.end76.land.lhs.true84_crit_edge:               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true84

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true84:                                  ; preds = %if.end76.land.lhs.true84_crit_edge, %if.end76.thread
  %add81152 = phi i64 [ %add81150, %if.end76.thread ], [ %add81, %if.end76.land.lhs.true84_crit_edge ]
  %55 = ptrtoint ptr %cright to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cright, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i143.not = icmp eq i32 %56, -1
  br i1 %cmp.i143.not, label %land.lhs.true84.cleanup_crit_edge, label %land.lhs.true87

land.lhs.true84.cleanup_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true87:                                  ; preds = %land.lhs.true84
  %rc_refcount88 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %right, i32 0, i32 2
  %57 = ptrtoint ptr %rc_refcount88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rc_refcount88, align 4
  %rc_refcount89 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 2
  %59 = ptrtoint ptr %rc_refcount89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rc_refcount89, align 4
  %add90 = add i32 %60, %adjust
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add90)
  %cmp91 = icmp eq i32 %58, %add90
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add81152)
  %cmp94 = icmp ult i64 %add81152, 4294967295
  %or.cond133 = select i1 %cmp91, i1 %cmp94, i1 false
  br i1 %or.cond133, label %if.then96, label %land.lhs.true87.cleanup_crit_edge

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then96:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %shape_changed to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %shape_changed, align 1
  %call97 = call fastcc i32 @xfs_refcount_merge_right_extent(ptr noundef %cur, ptr noundef nonnull %right, ptr noundef nonnull %cright, ptr noundef %aglen)
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %land.lhs.true87.cleanup_crit_edge, %land.lhs.true84.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %land.lhs.true56.cleanup_crit_edge, %if.then46, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.then46 ], [ %call97, %if.then96 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call69, %if.then68.cleanup_crit_edge ], [ 0, %land.lhs.true87.cleanup_crit_edge ], [ 0, %land.lhs.true84.cleanup_crit_edge ], [ 0, %if.end76.cleanup_crit_edge ], [ 0, %land.lhs.true56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %right) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cright) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cleft) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %left) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_adjust_extents(ptr noundef %cur, ptr nocapture noundef %agbno, ptr nocapture noundef %aglen, i32 noundef %adj) #6 align 64 {
entry:
  %ext = alloca %struct.xfs_refcount_irec, align 4
  %tmp = alloca %struct.xfs_refcount_irec, align 4
  %found_rec = alloca i32, align 4
  %found_tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ext) #10
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ext, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %ext, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %ext, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #10
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp, align 4, !annotation !157
  %6 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !157
  %8 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %10 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_tmp) #10
  %11 = ptrtoint ptr %found_tmp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %found_tmp, align 4, !annotation !157
  %12 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agbno, align 4
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %16 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_mp.i, align 4
  %18 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %17, i32 noundef %22, i32 noundef %15, i32 noundef 2) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %23 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %24 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.condthread-pre-split, label %if.end.out_error_crit_edge

if.end.out_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

while.condthread-pre-split:                       ; preds = %if.end
  %25 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %aglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp3.not231 = icmp eq i32 %.pr, 0
  br i1 %cmp3.not231, label %while.condthread-pre-split.cleanup_crit_edge, label %land.rhs.lr.ph

while.condthread-pre-split.cleanup_crit_edge:     ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %while.condthread-pre-split
  %26 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 2
  %shape_changes.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 2, i32 0, i32 1
  %add = add i32 %adj, 1
  br label %land.rhs

land.rhs:                                         ; preds = %advloop.land.rhs_crit_edge, %land.rhs.lr.ph
  %27 = ptrtoint ptr %shape_changes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %shape_changes.i, align 4
  %29 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bc_mp.i, align 4
  %call.i196 = call i32 @xfs_allocfree_log_count(ptr noundef %30, i32 noundef 1) #10
  %mul.i = mul i32 %call.i196, %28
  %31 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bc_mp.i, align 4
  %sb_blocksize.i = getelementptr inbounds %struct.xfs_sb, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sb_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_blocksize.i, align 4
  %mul2.i = mul i32 %mul.i, %34
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i = icmp ugt i32 %36, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %land.rhs.if.end.i_crit_edge

land.rhs.if.end.i_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.rhs
  %call4.i = call zeroext i1 @xfs_errortag_test(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 899, i32 noundef 24) #10
  br i1 %call4.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.endthread-pre-split.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.endthread-pre-split.i:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i = load i32, ptr %26, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.endthread-pre-split.i, %land.rhs.if.end.i_crit_edge
  %38 = phi i32 [ %.pr.i, %if.endthread-pre-split.i ], [ %36, %land.rhs.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp6.i = icmp eq i32 %38, 0
  br i1 %cmp6.i, label %if.end.i.while.body_crit_edge, label %if.else.i

if.end.i.while.body_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.else.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur, align 8
  %t_log_res.i = getelementptr inbounds %struct.xfs_trans, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %t_log_res.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %t_log_res.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %mul2.i)
  %cmp8.i = icmp uge i32 %42, %mul2.i
  %sub.i = sub i32 %42, %mul2.i
  %mul15.i = shl i32 %38, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul15.i)
  %cmp16.i = icmp ugt i32 %sub.i, %mul15.i
  %or.cond = select i1 %cmp8.i, i1 %cmp16.i, i1 false
  br i1 %or.cond, label %if.else.i.while.body_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.while.body_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %if.else.i.while.body_crit_edge, %if.end.i.while.body_crit_edge
  %call5 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %ext, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %while.body.out_error_crit_edge

while.body.out_error_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end8:                                          ; preds = %while.body
  %43 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool9.not = icmp eq i32 %44, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bc_mp.i, align 4
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sb_agblocks, align 4
  %49 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ext, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %1, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %3, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %52 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ext, align 4
  %54 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %agbno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp13.not = icmp eq i32 %53, %55
  br i1 %cmp13.not, label %if.end11.if.end56_crit_edge, label %if.then14

if.end11.if.end56_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then14:                                        ; preds = %if.end11
  %56 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp, align 4
  %57 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %aglen, align 4
  %sub = sub i32 %53, %55
  %59 = call i32 @llvm.umin.i32(i32 %58, i32 %sub)
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %6, align 4
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add, ptr %8, align 4
  %62 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bc_mp.i, align 4
  %64 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %18, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_refcount_modify_extent(ptr noundef %63, i32 noundef %67, ptr noundef nonnull %tmp)
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool23.not = icmp eq i32 %69, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then14
  %call25 = call i32 @xfs_refcount_insert(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %found_tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.out_error_crit_edge

if.then24.out_error_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end28:                                         ; preds = %if.then24
  %70 = ptrtoint ptr %found_tmp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %found_tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp29.not = icmp eq i32 %71, 1
  br i1 %cmp29.not, label %if.end37, label %__here, !prof !152

__here:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  call void @xfs_corruption_error(ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %73, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 969, ptr noundef blockaddress(@xfs_refcount_adjust_extents, %__here)) #10
  br label %out_error

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %26, align 8
  %inc = add i32 %75, 1
  store i32 %inc, ptr %26, align 8
  br label %if.end47

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %18, align 8
  %pag_agno39 = getelementptr inbounds %struct.xfs_perag, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %pag_agno39 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pag_agno39, align 4
  %conv = zext i32 %79 to i64
  %80 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bc_mp.i, align 4
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %81, i32 0, i32 24
  %82 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %83 to i64
  %shl = shl i64 %conv, %sh_prom
  %84 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tmp, align 4
  %conv44 = zext i32 %85 to i64
  %or = or i64 %shl, %conv44
  %86 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur, align 8
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %6, align 4
  %conv46 = zext i32 %89 to i64
  call void @__xfs_free_extent_later(ptr noundef %87, i64 noundef %or, i64 noundef %conv46, ptr noundef null, i1 noundef zeroext false) #10
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end37
  %90 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %6, align 4
  %92 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %agbno, align 4
  %add49 = add i32 %93, %91
  store i32 %add49, ptr %agbno, align 4
  %94 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %aglen, align 4
  %sub51 = sub i32 %95, %91
  store i32 %sub51, ptr %aglen, align 4
  %96 = load i32, ptr %agbno, align 4
  %97 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bc_mp.i, align 4
  %99 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %18, align 8
  %pag_agno.i198 = getelementptr inbounds %struct.xfs_perag, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %pag_agno.i198 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pag_agno.i198, align 4
  call fastcc void @trace_xfs_refcount_lookup(ptr noundef %98, i32 noundef %102, i32 noundef %96, i32 noundef 2) #10
  %103 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %96, ptr %bc_rec.i, align 8
  %104 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i201 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool53.not = icmp eq i32 %call.i201, 0
  br i1 %tobool53.not, label %if.end47.if.end56_crit_edge, label %if.end47.out_error_crit_edge

if.end47.out_error_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %if.end47.if.end56_crit_edge, %if.end11.if.end56_crit_edge
  %105 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %aglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp57 = icmp eq i32 %106, 0
  br i1 %cmp57, label %if.end56.cleanup_crit_edge, label %lor.lhs.false

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end56
  %107 = ptrtoint ptr %shape_changes.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %shape_changes.i, align 4
  %109 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bc_mp.i, align 4
  %call.i204 = call i32 @xfs_allocfree_log_count(ptr noundef %110, i32 noundef 1) #10
  %mul.i205 = mul i32 %call.i204, %108
  %111 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bc_mp.i, align 4
  %sb_blocksize.i206 = getelementptr inbounds %struct.xfs_sb, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %sb_blocksize.i206 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sb_blocksize.i206, align 4
  %mul2.i207 = mul i32 %mul.i205, %114
  %115 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %116)
  %cmp.i208 = icmp ugt i32 %116, 2
  br i1 %cmp.i208, label %land.lhs.true.i210, label %lor.lhs.false.if.end.i214_crit_edge

lor.lhs.false.if.end.i214_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i214

land.lhs.true.i210:                               ; preds = %lor.lhs.false
  %call4.i209 = call zeroext i1 @xfs_errortag_test(ptr noundef %112, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 899, i32 noundef 24) #10
  br i1 %call4.i209, label %land.lhs.true.i210.cleanup_crit_edge, label %if.endthread-pre-split.i212

land.lhs.true.i210.cleanup_crit_edge:             ; preds = %land.lhs.true.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.endthread-pre-split.i212:                      ; preds = %land.lhs.true.i210
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr.i211 = load i32, ptr %26, align 8
  br label %if.end.i214

if.end.i214:                                      ; preds = %if.endthread-pre-split.i212, %lor.lhs.false.if.end.i214_crit_edge
  %118 = phi i32 [ %.pr.i211, %if.endthread-pre-split.i212 ], [ %116, %lor.lhs.false.if.end.i214_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp6.i213 = icmp eq i32 %118, 0
  br i1 %cmp6.i213, label %if.end.i214.if.end61_crit_edge, label %if.else.i217

if.end.i214.if.end61_crit_edge:                   ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.else.i217:                                     ; preds = %if.end.i214
  %119 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cur, align 8
  %t_log_res.i215 = getelementptr inbounds %struct.xfs_trans, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %t_log_res.i215 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %t_log_res.i215, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %mul2.i207)
  %cmp8.i216 = icmp uge i32 %122, %mul2.i207
  %sub.i218 = sub i32 %122, %mul2.i207
  %mul15.i219 = shl i32 %118, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i218, i32 %mul15.i219)
  %cmp16.i220 = icmp ugt i32 %sub.i218, %mul15.i219
  %or.cond230 = select i1 %cmp8.i216, i1 %cmp16.i220, i1 false
  br i1 %or.cond230, label %if.else.i217.if.end61_crit_edge, label %if.else.i217.cleanup_crit_edge

if.else.i217.cleanup_crit_edge:                   ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i217.if.end61_crit_edge:                  ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end61:                                         ; preds = %if.else.i217.if.end61_crit_edge, %if.end.i214.if.end61_crit_edge
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp63 = icmp eq i32 %124, -1
  br i1 %cmp63, label %if.end61.skip_crit_edge, label %if.end66

if.end61.skip_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

if.end66:                                         ; preds = %if.end61
  %add68 = add i32 %124, %adj
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add68, ptr %3, align 4
  %126 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bc_mp.i, align 4
  %128 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %18, align 8
  %pag_agno71 = getelementptr inbounds %struct.xfs_perag, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %pag_agno71 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pag_agno71, align 4
  call fastcc void @trace_xfs_refcount_modify_extent(ptr noundef %127, i32 noundef %131, ptr noundef nonnull %ext)
  %132 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp73 = icmp ugt i32 %133, 1
  br i1 %cmp73, label %if.then75, label %if.else82

if.then75:                                        ; preds = %if.end66
  %call76 = call fastcc i32 @xfs_refcount_update(ptr noundef %cur, ptr noundef nonnull %ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.then75.out_error_crit_edge

if.then75.out_error_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end79:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %26, align 8
  %inc81 = add i32 %135, 1
  store i32 %inc81, ptr %26, align 8
  br label %skip

if.else82:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp84 = icmp eq i32 %133, 1
  br i1 %cmp84, label %if.then86, label %if.else108

if.then86:                                        ; preds = %if.else82
  %call87 = call fastcc i32 @xfs_refcount_delete(ptr noundef %cur, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.then86.out_error_crit_edge

if.then86.out_error_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end90:                                         ; preds = %if.then86
  %136 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp91.not = icmp eq i32 %137, 1
  br i1 %cmp91.not, label %if.end105, label %__here101, !prof !152

__here101:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !189
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %139, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1013, ptr noundef blockaddress(@xfs_refcount_adjust_extents, %__here101)) #10
  br label %out_error

if.end105:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %26, align 8
  %inc107 = add i32 %141, 1
  store i32 %inc107, ptr %26, align 8
  br label %advloop

if.else108:                                       ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %18, align 8
  %pag_agno110 = getelementptr inbounds %struct.xfs_perag, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %pag_agno110 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pag_agno110, align 4
  %conv111 = zext i32 %145 to i64
  %146 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bc_mp.i, align 4
  %sb_agblklog114 = getelementptr inbounds %struct.xfs_sb, ptr %147, i32 0, i32 24
  %148 = ptrtoint ptr %sb_agblklog114 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %sb_agblklog114, align 4
  %sh_prom116 = zext i8 %149 to i64
  %shl117 = shl i64 %conv111, %sh_prom116
  %150 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ext, align 4
  %conv119 = zext i32 %151 to i64
  %or120 = or i64 %shl117, %conv119
  %152 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur, align 8
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %1, align 4
  %conv123 = zext i32 %155 to i64
  call void @__xfs_free_extent_later(ptr noundef %153, i64 noundef %or120, i64 noundef %conv123, ptr noundef null, i1 noundef zeroext false) #10
  br label %skip

skip:                                             ; preds = %if.else108, %if.end79, %if.end61.skip_crit_edge
  %call126 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %skip.advloop_crit_edge, label %skip.out_error_crit_edge

skip.out_error_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

skip.advloop_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %advloop

advloop:                                          ; preds = %skip.advloop_crit_edge, %if.end105
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %1, align 4
  %158 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %agbno, align 4
  %add131 = add i32 %159, %157
  store i32 %add131, ptr %agbno, align 4
  %160 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %aglen, align 4
  %sub133 = sub i32 %161, %157
  store i32 %sub133, ptr %aglen, align 4
  %cmp3.not = icmp eq i32 %161, %157
  br i1 %cmp3.not, label %advloop.cleanup_crit_edge, label %advloop.land.rhs_crit_edge

advloop.land.rhs_crit_edge:                       ; preds = %advloop
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

advloop.cleanup_crit_edge:                        ; preds = %advloop
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_error:                                        ; preds = %skip.out_error_crit_edge, %__here101, %if.then86.out_error_crit_edge, %if.then75.out_error_crit_edge, %if.end47.out_error_crit_edge, %__here, %if.then24.out_error_crit_edge, %while.body.out_error_crit_edge, %if.end.out_error_crit_edge
  %error.4 = phi i32 [ %call.i, %if.end.out_error_crit_edge ], [ -117, %__here ], [ -117, %__here101 ], [ %call87, %if.then86.out_error_crit_edge ], [ %call76, %if.then75.out_error_crit_edge ], [ %call126, %skip.out_error_crit_edge ], [ %call.i201, %if.end47.out_error_crit_edge ], [ %call25, %if.then24.out_error_crit_edge ], [ %call5, %while.body.out_error_crit_edge ]
  %162 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bc_mp.i, align 4
  %164 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %18, align 8
  %pag_agno136 = getelementptr inbounds %struct.xfs_perag, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %pag_agno136 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pag_agno136, align 4
  %168 = call ptr @llvm.returnaddress(i32 0)
  %169 = ptrtoint ptr %168 to i32
  call fastcc void @trace_xfs_refcount_modify_extent_error(ptr noundef %163, i32 noundef %167, i32 noundef %error.4, i32 noundef %169)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %advloop.cleanup_crit_edge, %if.else.i217.cleanup_crit_edge, %land.lhs.true.i210.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %while.condthread-pre-split.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.4, %out_error ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.condthread-pre-split.cleanup_crit_edge ], [ 0, %if.else.i217.cleanup_crit_edge ], [ 0, %land.lhs.true.i210.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %advloop.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ext) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_adjust_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_adjust_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_adjust_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !190
  %call42 = tail call i32 @__traceiter_xfs_refcount_adjust_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !191
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_adjust_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_adjust_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_adjust_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_adjust_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3169, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_increase(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_decrease(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_split_extent(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec, i32 noundef %agbno) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_split_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_split_extent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !192
  %call42 = tail call i32 @__traceiter_xfs_refcount_split_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec, i32 noundef %agbno) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !193
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_split_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_split_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_split_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_split_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3164, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc i32 @xfs_refcount_update(ptr noundef %cur, ptr noundef %irec) unnamed_addr #6 align 64 {
entry:
  %rec = alloca %union.xfs_btree_rec, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rec) #10
  %0 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %rec, i32 0, i32 2
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %rec, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_mp, align 4
  %6 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_update(ptr noundef %5, i32 noundef %10, ptr noundef %irec)
  %11 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irec, align 4
  %13 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rec, align 8
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 1
  %14 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rc_blockcount, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %0, align 4
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 2
  %17 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rc_refcount, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %1, align 8
  %call = call i32 @xfs_btree_update(ptr noundef %cur, ptr noundef nonnull %rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bc_mp, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 8
  %pag_agno6 = getelementptr inbounds %struct.xfs_perag, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pag_agno6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pag_agno6, align 4
  %26 = call ptr @llvm.returnaddress(i32 0)
  %27 = ptrtoint ptr %26 to i32
  call fastcc void @trace_xfs_refcount_update_error(ptr noundef %21, i32 noundef %25, i32 noundef %call, i32 noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rec) #10
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_split_extent_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_split_extent_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_split_extent_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !194
  %call42 = tail call i32 @__traceiter_xfs_refcount_split_extent_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !195
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_split_extent_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_split_extent_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_split_extent_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_split_extent_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3173, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_split_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_update(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_update, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_update, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !196
  %call42 = tail call i32 @__traceiter_xfs_refcount_update(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !197
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_update, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3149, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @xfs_btree_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_update_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_update_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_update_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !198
  %call42 = tail call i32 @__traceiter_xfs_refcount_update_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_update_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_update_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_update_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_update_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3154, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_update(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_update_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_split_extent_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_find_left_extents(ptr noundef %cur, ptr noundef %left, ptr noundef %cleft, i32 noundef %agbno, i32 noundef %aglen, i32 noundef %flags) #6 align 64 {
entry:
  %tmp = alloca %struct.xfs_refcount_irec, align 4
  %found_rec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %5 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  %6 = ptrtoint ptr %cleft to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %cleft, align 4
  %7 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %left, align 4
  %sub = add i32 %agbno, -1
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_mp.i, align 4
  %10 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %9, i32 noundef %14, i32 noundef %sub, i32 noundef 1) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %15 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %16 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_error_crit_edge

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not = icmp eq i32 %18, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_error_crit_edge

if.end4.out_error_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end8:                                          ; preds = %if.end4
  %19 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not = icmp eq i32 %20, 1
  br i1 %cmp.not, label %if.end13, label %__here, !prof !152

__here:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !200
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %22, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 633, ptr noundef blockaddress(@xfs_refcount_find_left_extents, %__here)) #10
  br label %out_error

if.end13:                                         ; preds = %if.end8
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %add.i = add i32 %26, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %agbno)
  %cmp15.not = icmp eq i32 %add.i, %agbno
  br i1 %cmp15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %land.lhs.true

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end17
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp19 = icmp ult i32 %28, 2
  br i1 %cmp19, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %and22 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end28_crit_edge, label %land.lhs.true24

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true24:                                  ; preds = %if.end21
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp26 = icmp ugt i32 %30, 1
  br i1 %cmp26, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.if.end28_crit_edge

land.lhs.true24.if.end28_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true24.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %31 = call ptr @memcpy(ptr %left, ptr %tmp, i32 12)
  %call29 = call i32 @xfs_btree_increment(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.out_error_crit_edge

if.end28.out_error_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end32:                                         ; preds = %if.end28
  %32 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool33.not = icmp eq i32 %33, 0
  br i1 %tobool33.not, label %if.else65, label %if.then34

if.then34:                                        ; preds = %if.end32
  %call35 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then34.out_error_crit_edge

if.then34.out_error_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end38:                                         ; preds = %if.then34
  %34 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp39.not = icmp eq i32 %35, 1
  br i1 %cmp39.not, label %if.end52, label %__here48, !prof !152

__here48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %37, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 654, ptr noundef blockaddress(@xfs_refcount_find_left_extents, %__here48)) #10
  br label %out_error

if.end52:                                         ; preds = %if.end38
  %38 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %agbno)
  %cmp54 = icmp eq i32 %39, %agbno
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %40 = call ptr @memcpy(ptr %cleft, ptr %tmp, i32 12)
  br label %if.end69

if.else:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %cleft to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %agbno, ptr %cleft, align 4
  %sub58 = sub i32 %39, %agbno
  %42 = call i32 @llvm.umin.i32(i32 %sub58, i32 %aglen)
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 1
  %43 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rc_blockcount, align 4
  %rc_refcount63 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 2
  %44 = ptrtoint ptr %rc_refcount63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %rc_refcount63, align 4
  br label %if.end69

if.else65:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %cleft to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %agbno, ptr %cleft, align 4
  %rc_blockcount67 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 1
  %46 = ptrtoint ptr %rc_blockcount67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %aglen, ptr %rc_blockcount67, align 4
  %rc_refcount68 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 2
  %47 = ptrtoint ptr %rc_refcount68 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %rc_refcount68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else65, %if.else, %if.then55
  %48 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bc_mp.i, align 4
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %10, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_refcount_find_left_extent(ptr noundef %49, i32 noundef %53, ptr noundef %left, ptr noundef %cleft, i32 noundef %agbno)
  br label %cleanup

out_error:                                        ; preds = %__here48, %if.then34.out_error_crit_edge, %if.end28.out_error_crit_edge, %__here, %if.end4.out_error_crit_edge, %entry.out_error_crit_edge
  %error.1 = phi i32 [ %call.i, %entry.out_error_crit_edge ], [ %call5, %if.end4.out_error_crit_edge ], [ -117, %__here ], [ %call29, %if.end28.out_error_crit_edge ], [ %call35, %if.then34.out_error_crit_edge ], [ -117, %__here48 ]
  %54 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bc_mp.i, align 4
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %10, align 8
  %pag_agno73 = getelementptr inbounds %struct.xfs_perag, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %pag_agno73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pag_agno73, align 4
  %60 = call ptr @llvm.returnaddress(i32 0)
  %61 = ptrtoint ptr %60 to i32
  call fastcc void @trace_xfs_refcount_find_left_extent_error(ptr noundef %55, i32 noundef %59, i32 noundef %error.1, i32 noundef %61)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end69, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_error ], [ 0, %if.end69 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_find_right_extents(ptr noundef %cur, ptr noundef %right, ptr noundef %cright, i32 noundef %agbno, i32 noundef %aglen, i32 noundef %flags) #6 align 64 {
entry:
  %tmp = alloca %struct.xfs_refcount_irec, align 4
  %found_rec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %5 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  %6 = ptrtoint ptr %cright to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %cright, align 4
  %7 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %right, align 4
  %add = add i32 %aglen, %agbno
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_mp.i, align 4
  %10 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %9, i32 noundef %14, i32 noundef %add, i32 noundef 2) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %15 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %16 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_error_crit_edge

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not = icmp eq i32 %18, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_error_crit_edge

if.end4.out_error_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end8:                                          ; preds = %if.end4
  %19 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not = icmp eq i32 %20, 1
  br i1 %cmp.not, label %if.end13, label %__here, !prof !152

__here:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %22, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 722, ptr noundef blockaddress(@xfs_refcount_find_right_extents, %__here)) #10
  br label %out_error

if.end13:                                         ; preds = %if.end8
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp16.not = icmp eq i32 %24, %add
  br i1 %cmp16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.if.end22_crit_edge, label %land.lhs.true

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end18
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp20 = icmp ult i32 %26, 2
  br i1 %cmp20, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %and23 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %land.lhs.true25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end22
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp27 = icmp ugt i32 %28, 1
  br i1 %cmp27, label %land.lhs.true25.cleanup_crit_edge, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %29 = call ptr @memcpy(ptr %right, ptr %tmp, i32 12)
  %call30 = call i32 @xfs_btree_decrement(ptr noundef %cur, i32 noundef 0, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.out_error_crit_edge

if.end29.out_error_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end33:                                         ; preds = %if.end29
  %30 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool34.not = icmp eq i32 %31, 0
  br i1 %tobool34.not, label %if.else68, label %if.then35

if.then35:                                        ; preds = %if.end33
  %call36 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then35.out_error_crit_edge

if.then35.out_error_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end39:                                         ; preds = %if.then35
  %32 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp40.not = icmp eq i32 %33, 1
  br i1 %cmp40.not, label %if.end53, label %__here49, !prof !152

__here49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %35, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 743, ptr noundef blockaddress(@xfs_refcount_find_right_extents, %__here49)) #10
  br label %out_error

if.end53:                                         ; preds = %if.end39
  %36 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %add.i = add i32 %39, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add)
  %cmp56 = icmp eq i32 %add.i, %add
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %40 = call ptr @memcpy(ptr %cright, ptr %tmp, i32 12)
  br label %if.end72

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %41 = call i32 @llvm.umax.i32(i32 %add.i, i32 %agbno)
  %42 = ptrtoint ptr %cright to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %cright, align 4
  %43 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %right, align 4
  %sub = sub i32 %44, %41
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 1
  %45 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub, ptr %rc_blockcount, align 4
  %rc_refcount66 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 2
  %46 = ptrtoint ptr %rc_refcount66 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %rc_refcount66, align 4
  br label %if.end72

if.else68:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %cright to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %agbno, ptr %cright, align 4
  %rc_blockcount70 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 1
  %48 = ptrtoint ptr %rc_blockcount70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %aglen, ptr %rc_blockcount70, align 4
  %rc_refcount71 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 2
  %49 = ptrtoint ptr %rc_refcount71 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %rc_refcount71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.else, %if.then57
  %50 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bc_mp.i, align 4
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %10, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_refcount_find_right_extent(ptr noundef %51, i32 noundef %55, ptr noundef %cright, ptr noundef %right, i32 noundef %add)
  br label %cleanup

out_error:                                        ; preds = %__here49, %if.then35.out_error_crit_edge, %if.end29.out_error_crit_edge, %__here, %if.end4.out_error_crit_edge, %entry.out_error_crit_edge
  %error.1 = phi i32 [ %call.i, %entry.out_error_crit_edge ], [ %call5, %if.end4.out_error_crit_edge ], [ -117, %__here ], [ %call30, %if.end29.out_error_crit_edge ], [ %call36, %if.then35.out_error_crit_edge ], [ -117, %__here49 ]
  %56 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bc_mp.i, align 4
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %10, align 8
  %pag_agno77 = getelementptr inbounds %struct.xfs_perag, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %pag_agno77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pag_agno77, align 4
  %62 = call ptr @llvm.returnaddress(i32 0)
  %63 = ptrtoint ptr %62 to i32
  call fastcc void @trace_xfs_refcount_find_right_extent_error(ptr noundef %57, i32 noundef %61, i32 noundef %error.1, i32 noundef %63)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end72, %land.lhs.true25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_error ], [ 0, %if.end72 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_merge_center_extents(ptr noundef %cur, ptr noundef %left, ptr noundef %center, ptr noundef %right, i64 noundef %extlen, ptr nocapture noundef writeonly %aglen) #6 align 64 {
entry:
  %found_rec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %0 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %1 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_mp, align 4
  %3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_merge_center_extents(ptr noundef %2, i32 noundef %7, ptr noundef %left, ptr noundef %center, ptr noundef %right)
  %8 = ptrtoint ptr %center to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center, align 4
  %10 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bc_mp, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %11, i32 noundef %15, i32 noundef %9, i32 noundef 2) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %16 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %17 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_error_crit_edge

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.not = icmp eq i32 %19, 1
  br i1 %cmp.not, label %if.end5, label %__here, !prof !152

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %21, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 431, ptr noundef blockaddress(@xfs_refcount_merge_center_extents, %__here)) #10
  br label %out_error

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @xfs_refcount_delete(ptr noundef %cur, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_error_crit_edge

if.end5.out_error_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end9:                                          ; preds = %if.end5
  %22 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp10.not = icmp eq i32 %23, 1
  br i1 %cmp10.not, label %if.end23, label %__here19, !prof !152

__here19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %25, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 439, ptr noundef blockaddress(@xfs_refcount_merge_center_extents, %__here19)) #10
  br label %out_error

if.end23:                                         ; preds = %if.end9
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %center, i32 0, i32 2
  %26 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rc_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp24 = icmp ugt i32 %27, 1
  br i1 %cmp24, label %if.then25, label %if.end23.if.end44_crit_edge

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then25:                                        ; preds = %if.end23
  %call26 = call fastcc i32 @xfs_refcount_delete(ptr noundef %cur, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then25.out_error_crit_edge

if.then25.out_error_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end29:                                         ; preds = %if.then25
  %28 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp30.not = icmp eq i32 %29, 1
  br i1 %cmp30.not, label %if.end29.if.end44_crit_edge, label %__here39, !prof !152

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

__here39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %31, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 448, ptr noundef blockaddress(@xfs_refcount_merge_center_extents, %__here39)) #10
  br label %out_error

if.end44:                                         ; preds = %if.end29.if.end44_crit_edge, %if.end23.if.end44_crit_edge
  %32 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %left, align 4
  %34 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bc_mp, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %pag_agno.i97 = getelementptr inbounds %struct.xfs_perag, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %pag_agno.i97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pag_agno.i97, align 4
  call fastcc void @trace_xfs_refcount_lookup(ptr noundef %35, i32 noundef %39, i32 noundef %33, i32 noundef 1) #10
  %40 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %33, ptr %bc_rec.i, align 8
  %41 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i100 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool47.not = icmp eq i32 %call.i100, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.out_error_crit_edge

if.end44.out_error_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end49:                                         ; preds = %if.end44
  %42 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp50.not = icmp eq i32 %43, 1
  br i1 %cmp50.not, label %if.end63, label %__here59, !prof !152

__here59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %45, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 459, ptr noundef blockaddress(@xfs_refcount_merge_center_extents, %__here59)) #10
  br label %out_error

if.end63:                                         ; preds = %if.end49
  %conv = trunc i64 %extlen to i32
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %left, i32 0, i32 1
  %46 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv, ptr %rc_blockcount, align 4
  %call64 = call fastcc i32 @xfs_refcount_update(ptr noundef %cur, ptr noundef %left)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.out_error_crit_edge

if.end63.out_error_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %aglen to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %aglen, align 4
  br label %cleanup

out_error:                                        ; preds = %if.end63.out_error_crit_edge, %__here59, %if.end44.out_error_crit_edge, %__here39, %if.then25.out_error_crit_edge, %__here19, %if.end5.out_error_crit_edge, %__here, %entry.out_error_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.out_error_crit_edge ], [ -117, %__here ], [ %call6, %if.end5.out_error_crit_edge ], [ -117, %__here19 ], [ %call26, %if.then25.out_error_crit_edge ], [ -117, %__here39 ], [ %call.i100, %if.end44.out_error_crit_edge ], [ -117, %__here59 ], [ %call64, %if.end63.out_error_crit_edge ]
  %48 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bc_mp, align 4
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %pag_agno70 = getelementptr inbounds %struct.xfs_perag, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pag_agno70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pag_agno70, align 4
  %54 = call ptr @llvm.returnaddress(i32 0)
  %55 = ptrtoint ptr %54 to i32
  call fastcc void @trace_xfs_refcount_merge_center_extents_error(ptr noundef %49, i32 noundef %53, i32 noundef %error.0, i32 noundef %55)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end67
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %if.end67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_merge_left_extent(ptr noundef %cur, ptr noundef %left, ptr noundef %cleft, ptr nocapture noundef %agbno, ptr nocapture noundef %aglen) #6 align 64 {
entry:
  %found_rec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %0 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %1 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_mp, align 4
  %3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_merge_left_extent(ptr noundef %2, i32 noundef %7, ptr noundef %left, ptr noundef %cleft)
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 2
  %8 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %cleft to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cleft, align 4
  %12 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bc_mp, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %13, i32 noundef %17, i32 noundef %11, i32 noundef 1) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %18 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %19 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.out_error_crit_edge

if.then.out_error_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %if.then
  %20 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp2.not = icmp eq i32 %21, 1
  br i1 %cmp2.not, label %if.end7, label %__here, !prof !152

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !208
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %23, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 501, ptr noundef blockaddress(@xfs_refcount_merge_left_extent, %__here)) #10
  br label %out_error

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @xfs_refcount_delete(ptr noundef %cur, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_error_crit_edge

if.end7.out_error_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end11:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp12.not = icmp eq i32 %25, 1
  br i1 %cmp12.not, label %if.end11.if.end26_crit_edge, label %__here21, !prof !152

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

__here21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !209
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %27, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 509, ptr noundef blockaddress(@xfs_refcount_merge_left_extent, %__here21)) #10
  br label %out_error

if.end26:                                         ; preds = %if.end11.if.end26_crit_edge, %entry.if.end26_crit_edge
  %28 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %left, align 4
  %30 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bc_mp, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %pag_agno.i83 = getelementptr inbounds %struct.xfs_perag, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pag_agno.i83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pag_agno.i83, align 4
  call fastcc void @trace_xfs_refcount_lookup(ptr noundef %31, i32 noundef %35, i32 noundef %29, i32 noundef 1) #10
  %bc_rec.i84 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %36 = ptrtoint ptr %bc_rec.i84 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %29, ptr %bc_rec.i84, align 8
  %rc_blockcount.i85 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i84, i32 0, i32 1
  %37 = ptrtoint ptr %rc_blockcount.i85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rc_blockcount.i85, align 4
  %call.i86 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool29.not = icmp eq i32 %call.i86, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.out_error_crit_edge

if.end26.out_error_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end31:                                         ; preds = %if.end26
  %38 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp32.not = icmp eq i32 %39, 1
  br i1 %cmp32.not, label %if.end45, label %__here41, !prof !152

__here41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %41, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 520, ptr noundef blockaddress(@xfs_refcount_merge_left_extent, %__here41)) #10
  br label %out_error

if.end45:                                         ; preds = %if.end31
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cleft, i32 0, i32 1
  %42 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rc_blockcount, align 4
  %rc_blockcount46 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %left, i32 0, i32 1
  %44 = ptrtoint ptr %rc_blockcount46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rc_blockcount46, align 4
  %add = add i32 %45, %43
  store i32 %add, ptr %rc_blockcount46, align 4
  %call47 = call fastcc i32 @xfs_refcount_update(ptr noundef %cur, ptr noundef %left)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.out_error_crit_edge

if.end45.out_error_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rc_blockcount, align 4
  %48 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %agbno, align 4
  %add52 = add i32 %49, %47
  store i32 %add52, ptr %agbno, align 4
  %50 = load i32, ptr %rc_blockcount, align 4
  %51 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %aglen, align 4
  %sub = sub i32 %52, %50
  store i32 %sub, ptr %aglen, align 4
  br label %cleanup

out_error:                                        ; preds = %if.end45.out_error_crit_edge, %__here41, %if.end26.out_error_crit_edge, %__here21, %if.end7.out_error_crit_edge, %__here, %if.then.out_error_crit_edge
  %error.0 = phi i32 [ %call.i, %if.then.out_error_crit_edge ], [ -117, %__here ], [ %call8, %if.end7.out_error_crit_edge ], [ -117, %__here21 ], [ %call.i86, %if.end26.out_error_crit_edge ], [ -117, %__here41 ], [ %call47, %if.end45.out_error_crit_edge ]
  %53 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bc_mp, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 8
  %pag_agno56 = getelementptr inbounds %struct.xfs_perag, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %pag_agno56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pag_agno56, align 4
  %59 = call ptr @llvm.returnaddress(i32 0)
  %60 = ptrtoint ptr %59 to i32
  call fastcc void @trace_xfs_refcount_merge_left_extent_error(ptr noundef %54, i32 noundef %58, i32 noundef %error.0, i32 noundef %60)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end50
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_merge_right_extent(ptr noundef %cur, ptr noundef %right, ptr noundef %cright, ptr nocapture noundef %aglen) #6 align 64 {
entry:
  %found_rec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %0 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %1 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bc_mp, align 4
  %3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_refcount_merge_right_extent(ptr noundef %2, i32 noundef %7, ptr noundef %cright, ptr noundef %right)
  %rc_refcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 2
  %8 = ptrtoint ptr %rc_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %cright to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cright, align 4
  %12 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bc_mp, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %13, i32 noundef %17, i32 noundef %11, i32 noundef 1) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %18 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %19 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.out_error_crit_edge

if.then.out_error_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %if.then
  %20 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp2.not = icmp eq i32 %21, 1
  br i1 %cmp2.not, label %if.end7, label %__here, !prof !152

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %23, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 565, ptr noundef blockaddress(@xfs_refcount_merge_right_extent, %__here)) #10
  br label %out_error

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @xfs_refcount_delete(ptr noundef %cur, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_error_crit_edge

if.end7.out_error_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end11:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp12.not = icmp eq i32 %25, 1
  br i1 %cmp12.not, label %if.end11.if.end26_crit_edge, label %__here21, !prof !152

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

__here21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !212
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %27, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 573, ptr noundef blockaddress(@xfs_refcount_merge_right_extent, %__here21)) #10
  br label %out_error

if.end26:                                         ; preds = %if.end11.if.end26_crit_edge, %entry.if.end26_crit_edge
  %28 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %right, align 4
  %30 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bc_mp, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %pag_agno.i85 = getelementptr inbounds %struct.xfs_perag, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pag_agno.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pag_agno.i85, align 4
  call fastcc void @trace_xfs_refcount_lookup(ptr noundef %31, i32 noundef %35, i32 noundef %29, i32 noundef 1) #10
  %bc_rec.i86 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %36 = ptrtoint ptr %bc_rec.i86 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %29, ptr %bc_rec.i86, align 8
  %rc_blockcount.i87 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i86, i32 0, i32 1
  %37 = ptrtoint ptr %rc_blockcount.i87 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rc_blockcount.i87, align 4
  %call.i88 = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 1, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool29.not = icmp eq i32 %call.i88, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.out_error_crit_edge

if.end26.out_error_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end31:                                         ; preds = %if.end26
  %38 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp32.not = icmp eq i32 %39, 1
  br i1 %cmp32.not, label %if.end45, label %__here41, !prof !152

__here41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !213
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %41, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 584, ptr noundef blockaddress(@xfs_refcount_merge_right_extent, %__here41)) #10
  br label %out_error

if.end45:                                         ; preds = %if.end31
  %rc_blockcount = getelementptr inbounds %struct.xfs_refcount_irec, ptr %cright, i32 0, i32 1
  %42 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rc_blockcount, align 4
  %44 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %right, align 4
  %sub = sub i32 %45, %43
  store i32 %sub, ptr %right, align 4
  %46 = load i32, ptr %rc_blockcount, align 4
  %rc_blockcount48 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %right, i32 0, i32 1
  %47 = ptrtoint ptr %rc_blockcount48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rc_blockcount48, align 4
  %add = add i32 %48, %46
  store i32 %add, ptr %rc_blockcount48, align 4
  %call49 = call fastcc i32 @xfs_refcount_update(ptr noundef %cur, ptr noundef %right)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end45.out_error_crit_edge

if.end45.out_error_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %rc_blockcount to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rc_blockcount, align 4
  %51 = ptrtoint ptr %aglen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %aglen, align 4
  %sub54 = sub i32 %52, %50
  store i32 %sub54, ptr %aglen, align 4
  br label %cleanup

out_error:                                        ; preds = %if.end45.out_error_crit_edge, %__here41, %if.end26.out_error_crit_edge, %__here21, %if.end7.out_error_crit_edge, %__here, %if.then.out_error_crit_edge
  %error.0 = phi i32 [ %call.i, %if.then.out_error_crit_edge ], [ -117, %__here ], [ %call8, %if.end7.out_error_crit_edge ], [ -117, %__here21 ], [ %call.i88, %if.end26.out_error_crit_edge ], [ -117, %__here41 ], [ %call49, %if.end45.out_error_crit_edge ]
  %53 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bc_mp, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 8
  %pag_agno57 = getelementptr inbounds %struct.xfs_perag, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %pag_agno57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pag_agno57, align 4
  %59 = call ptr @llvm.returnaddress(i32 0)
  %60 = ptrtoint ptr %59 to i32
  call fastcc void @trace_xfs_refcount_merge_right_extent_error(ptr noundef %54, i32 noundef %58, i32 noundef %error.0, i32 noundef %60)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end52
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %if.end52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_find_left_extent(ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2, i32 noundef %agbno) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_left_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_find_left_extent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !214
  %call42 = tail call i32 @__traceiter_xfs_refcount_find_left_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2, i32 noundef %agbno) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !215
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_left_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_left_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_find_left_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_find_left_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3167, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @trace_xfs_refcount_find_left_extent_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_left_extent_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_find_left_extent_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !216
  %call42 = tail call i32 @__traceiter_xfs_refcount_find_left_extent_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !217
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_left_extent_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_left_extent_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_find_left_extent_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_find_left_extent_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3176, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_find_left_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_find_left_extent_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_decrement(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_find_right_extent(ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2, i32 noundef %agbno) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_right_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_find_right_extent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !218
  %call42 = tail call i32 @__traceiter_xfs_refcount_find_right_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2, i32 noundef %agbno) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !219
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_right_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_right_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_find_right_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_find_right_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3168, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @trace_xfs_refcount_find_right_extent_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_right_extent_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_find_right_extent_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !220
  %call42 = tail call i32 @__traceiter_xfs_refcount_find_right_extent_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !221
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_right_extent_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_find_right_extent_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_find_right_extent_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_find_right_extent_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3177, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_find_right_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_find_right_extent_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_merge_center_extents(ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2, ptr noundef %i3) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_center_extents, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_merge_center_extents, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !222
  %call42 = tail call i32 @__traceiter_xfs_refcount_merge_center_extents(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2, ptr noundef %i3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !223
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_center_extents, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_center_extents, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_merge_center_extents.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_merge_center_extents.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3161, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc i32 @xfs_refcount_delete(ptr noundef %cur, ptr noundef %i) #6 align 64 {
entry:
  %irec = alloca %struct.xfs_refcount_irec, align 4
  %found_rec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %irec) #10
  %0 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irec, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %irec, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %5 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  %call = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %irec, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then26_crit_edge

entry.if.then26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end4, label %__here, !prof !152

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_mp, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !224
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 236, ptr noundef blockaddress(@xfs_refcount_delete, %__here)) #10
  br label %if.then26

if.end4:                                          ; preds = %if.end
  %bc_mp5 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %10 = ptrtoint ptr %bc_mp5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bc_mp5, align 4
  %12 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_refcount_delete(ptr noundef %11, i32 noundef %16, ptr noundef nonnull %irec)
  %call6 = call i32 @xfs_btree_delete(ptr noundef %cur, ptr noundef %i) #10
  %17 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp7.not = icmp eq i32 %18, 1
  br i1 %cmp7.not, label %if.end20, label %__here16, !prof !152

__here16:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %bc_mp5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bc_mp5, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !225
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %20, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 242, ptr noundef blockaddress(@xfs_refcount_delete, %__here16)) #10
  br label %if.then26

if.end20:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool21.not = icmp eq i32 %call6, 0
  br i1 %tobool21.not, label %out_error, label %if.end20.if.then26_crit_edge

if.end20.if.then26_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

out_error:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irec, align 4
  %23 = ptrtoint ptr %bc_mp5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bc_mp5, align 4
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %12, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pag_agno.i, align 4
  call fastcc void @trace_xfs_refcount_lookup(ptr noundef %24, i32 noundef %28, i32 noundef %22, i32 noundef 2) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %29 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %22, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %30 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %out_error.if.end30_crit_edge, label %out_error.if.then26_crit_edge

out_error.if.then26_crit_edge:                    ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

out_error.if.end30_crit_edge:                     ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %out_error.if.then26_crit_edge, %if.end20.if.then26_crit_edge, %__here16, %__here, %entry.if.then26_crit_edge
  %error.046 = phi i32 [ %call.i, %out_error.if.then26_crit_edge ], [ %call6, %if.end20.if.then26_crit_edge ], [ -117, %__here16 ], [ -117, %__here ], [ %call, %entry.if.then26_crit_edge ]
  %bc_mp27 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %31 = ptrtoint ptr %bc_mp27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bc_mp27, align 4
  %33 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %pag_agno29 = getelementptr inbounds %struct.xfs_perag, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %pag_agno29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pag_agno29, align 4
  %38 = call ptr @llvm.returnaddress(i32 0)
  %39 = ptrtoint ptr %38 to i32
  call fastcc void @trace_xfs_refcount_delete_error(ptr noundef %32, i32 noundef %37, i32 noundef %error.046, i32 noundef %39)
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %out_error.if.end30_crit_edge
  %error.047 = phi i32 [ %error.046, %if.then26 ], [ 0, %out_error.if.end30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %irec) #10
  ret i32 %error.047
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_merge_center_extents_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_center_extents_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_merge_center_extents_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !226
  %call42 = tail call i32 @__traceiter_xfs_refcount_merge_center_extents_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !227
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_center_extents_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_center_extents_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_merge_center_extents_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_merge_center_extents_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3171, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_merge_center_extents(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_delete(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_delete, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_delete, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !228
  %call42 = tail call i32 @__traceiter_xfs_refcount_delete(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !229
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_delete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_delete, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_delete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3151, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @xfs_btree_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_delete_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_delete_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_delete_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !230
  %call42 = tail call i32 @__traceiter_xfs_refcount_delete_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !231
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_delete_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_delete_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_delete_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_delete_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3153, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_delete(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_delete_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_merge_center_extents_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_merge_left_extent(ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_left_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_merge_left_extent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !232
  %call42 = tail call i32 @__traceiter_xfs_refcount_merge_left_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !233
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_left_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_left_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_merge_left_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_merge_left_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3165, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @trace_xfs_refcount_merge_left_extent_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_left_extent_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_merge_left_extent_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !234
  %call42 = tail call i32 @__traceiter_xfs_refcount_merge_left_extent_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !235
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_left_extent_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_left_extent_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_merge_left_extent_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_merge_left_extent_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3174, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_merge_left_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_merge_left_extent_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_merge_right_extent(ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_right_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_merge_right_extent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !236
  %call42 = tail call i32 @__traceiter_xfs_refcount_merge_right_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %i1, ptr noundef %i2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !237
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_right_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_right_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_merge_right_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_merge_right_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3166, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @trace_xfs_refcount_merge_right_extent_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_right_extent_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_merge_right_extent_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !238
  %call42 = tail call i32 @__traceiter_xfs_refcount_merge_right_extent_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !239
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_right_extent_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_merge_right_extent_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_merge_right_extent_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_merge_right_extent_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3175, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_merge_right_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_merge_right_extent_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_modify_extent(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_modify_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_modify_extent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !240
  %call42 = tail call i32 @__traceiter_xfs_refcount_modify_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !241
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_modify_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_modify_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_modify_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_modify_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3162, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @trace_xfs_refcount_modify_extent_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_modify_extent_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_modify_extent_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !242
  %call42 = tail call i32 @__traceiter_xfs_refcount_modify_extent_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !243
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_modify_extent_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_modify_extent_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_modify_extent_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_modify_extent_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3172, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @xfs_allocfree_log_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_modify_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_modify_extent_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_adjust_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_finish_one_leftover(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_defer(ptr noundef %mp, i32 noundef %agno, i32 noundef %type, i32 noundef %bno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_defer, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_defer, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !244
  %call42 = tail call i32 @__traceiter_xfs_refcount_defer(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %type, i32 noundef %bno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !245
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_defer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_defer, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_defer.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_defer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3184, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_defer_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_defer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_find_shared(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_find_shared_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_find_shared_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_cow_increase(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_cow_increase, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_cow_increase, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !246
  %call42 = tail call i32 @__traceiter_xfs_refcount_cow_increase(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !247
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_cow_increase, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_cow_increase, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_cow_increase.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_cow_increase.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3159, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc i32 @xfs_refcount_adjust_cow(ptr noundef %cur, i32 noundef %agbno, i32 noundef %aglen, i32 noundef %adj) unnamed_addr #6 align 64 {
entry:
  %agbno.addr = alloca i32, align 4
  %aglen.addr = alloca i32, align 4
  %shape_changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aglen.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %aglen, ptr %aglen.addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shape_changed) #10
  %add = xor i32 %agbno, -2147483648
  %1 = ptrtoint ptr %agbno.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %agbno.addr, align 4
  %call = call fastcc i32 @xfs_refcount_split_extent(ptr noundef %cur, i32 noundef %add, ptr noundef nonnull %shape_changed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_error_crit_edge

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %entry
  %add1 = add i32 %add, %aglen
  %call2 = call fastcc i32 @xfs_refcount_split_extent(ptr noundef %cur, i32 noundef %add1, ptr noundef nonnull %shape_changed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_error_crit_edge

if.end.out_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @xfs_refcount_merge_extents(ptr noundef %cur, ptr noundef nonnull %agbno.addr, ptr noundef nonnull %aglen.addr, i32 noundef %adj, i32 noundef 2, ptr noundef nonnull %shape_changed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_error_crit_edge

if.end5.out_error_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end9:                                          ; preds = %if.end5
  %2 = ptrtoint ptr %agbno.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agbno.addr, align 4
  %4 = ptrtoint ptr %aglen.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aglen.addr, align 4
  %call10 = tail call fastcc i32 @xfs_refcount_adjust_cow_extents(ptr noundef %cur, i32 noundef %3, i32 noundef %5, i32 noundef %adj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end9.out_error_crit_edge

if.end9.out_error_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_error:                                        ; preds = %if.end9.out_error_crit_edge, %if.end5.out_error_crit_edge, %if.end.out_error_crit_edge, %entry.out_error_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_error_crit_edge ], [ %call2, %if.end.out_error_crit_edge ], [ %call6, %if.end5.out_error_crit_edge ], [ %call10, %if.end9.out_error_crit_edge ]
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %6 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_mp, align 4
  %8 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pag_agno, align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  %14 = ptrtoint ptr %13 to i32
  tail call fastcc void @trace_xfs_refcount_adjust_cow_error(ptr noundef %7, i32 noundef %12, i32 noundef %error.0, i32 noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shape_changed) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_cow_increase(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_refcount_adjust_cow_extents(ptr noundef %cur, i32 noundef %agbno, i32 noundef %aglen, i32 noundef %adj) #6 align 64 {
entry:
  %ext = alloca %struct.xfs_refcount_irec, align 4
  %tmp = alloca %struct.xfs_refcount_irec, align 4
  %found_rec = alloca i32, align 4
  %found_tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ext) #10
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ext, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %ext, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %ext, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #10
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp, align 4, !annotation !157
  %6 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !157
  %8 = getelementptr inbounds %struct.xfs_refcount_irec, ptr %tmp, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_rec) #10
  %10 = ptrtoint ptr %found_rec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %found_rec, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_tmp) #10
  %11 = ptrtoint ptr %found_tmp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %found_tmp, align 4, !annotation !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aglen)
  %cmp = icmp eq i32 %aglen, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %12 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bc_mp.i, align 4
  %14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno.i, align 4
  tail call fastcc void @trace_xfs_refcount_lookup(ptr noundef %13, i32 noundef %18, i32 noundef %agbno, i32 noundef 2) #10
  %bc_rec.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %19 = ptrtoint ptr %bc_rec.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %agbno, ptr %bc_rec.i, align 8
  %rc_blockcount.i = getelementptr inbounds %struct.xfs_refcount_irec, ptr %bc_rec.i, i32 0, i32 1
  %20 = ptrtoint ptr %rc_blockcount.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rc_blockcount.i, align 4
  %call.i = call i32 @xfs_btree_lookup(ptr noundef %cur, i32 noundef 2, ptr noundef nonnull %found_rec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.end.out_error_crit_edge

if.end.out_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @xfs_refcount_get_rec(ptr noundef %cur, ptr noundef nonnull %ext, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.out_error_crit_edge

if.end2.out_error_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end6:                                          ; preds = %if.end2
  %21 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not = icmp eq i32 %22, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bc_mp.i, align 4
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_agblocks, align 4
  %add = xor i32 %26, -2147483648
  %27 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %ext, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %1, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %3, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %30 = zext i32 %adj to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %adj, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end9
  %add10 = add i32 %aglen, %agbno
  %31 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ext, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %32)
  %cmp12 = icmp ugt i32 %add10, %32
  br i1 %cmp12, label %__here, label %if.end18, !prof !248

__here:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !249
  call void @xfs_corruption_error(ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %34, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1472, ptr noundef blockaddress(@xfs_refcount_adjust_cow_extents, %__here)) #10
  br label %out_error

if.end18:                                         ; preds = %sw.bb
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %agbno, ptr %tmp, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %aglen, ptr %6, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %8, align 4
  %38 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bc_mp.i, align 4
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %14, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_refcount_modify_extent(ptr noundef %39, i32 noundef %43, ptr noundef nonnull %tmp)
  %call23 = call i32 @xfs_refcount_insert(ptr noundef %cur, ptr noundef nonnull %tmp, ptr noundef nonnull %found_tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end18.out_error_crit_edge

if.end18.out_error_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end26:                                         ; preds = %if.end18
  %44 = ptrtoint ptr %found_tmp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %found_tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp27.not = icmp eq i32 %45, 1
  br i1 %cmp27.not, label %if.end26.cleanup_crit_edge, label %__here36, !prof !152

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !250
  call void @xfs_corruption_error(ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %47, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1487, ptr noundef blockaddress(@xfs_refcount_adjust_cow_extents, %__here36)) #10
  br label %out_error

sw.bb41:                                          ; preds = %if.end9
  %48 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ext, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %agbno)
  %cmp43.not = icmp eq i32 %49, %agbno
  br i1 %cmp43.not, label %if.end56, label %__here52, !prof !152

__here52:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !251
  call void @xfs_corruption_error(ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %51, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1494, ptr noundef blockaddress(@xfs_refcount_adjust_cow_extents, %__here52)) #10
  br label %out_error

if.end56:                                         ; preds = %sw.bb41
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %aglen)
  %cmp58.not = icmp eq i32 %53, %aglen
  br i1 %cmp58.not, label %if.end71, label %__here67, !prof !152

__here67:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !252
  call void @xfs_corruption_error(ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef %55, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1498, ptr noundef blockaddress(@xfs_refcount_adjust_cow_extents, %__here67)) #10
  br label %out_error

if.end71:                                         ; preds = %if.end56
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp73.not = icmp eq i32 %57, 1
  br i1 %cmp73.not, label %if.end86, label %__here82, !prof !152

__here82:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !253
  call void @xfs_corruption_error(ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %59, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1502, ptr noundef blockaddress(@xfs_refcount_adjust_cow_extents, %__here82)) #10
  br label %out_error

if.end86:                                         ; preds = %if.end71
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %3, align 4
  %61 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bc_mp.i, align 4
  %63 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %14, align 8
  %pag_agno90 = getelementptr inbounds %struct.xfs_perag, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %pag_agno90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pag_agno90, align 4
  call fastcc void @trace_xfs_refcount_modify_extent(ptr noundef %62, i32 noundef %66, ptr noundef nonnull %ext)
  %call91 = call fastcc i32 @xfs_refcount_delete(ptr noundef %cur, ptr noundef nonnull %found_rec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end86.out_error_crit_edge

if.end86.out_error_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end94:                                         ; preds = %if.end86
  %67 = ptrtoint ptr %found_rec to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %found_rec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp95.not = icmp eq i32 %68, 1
  br i1 %cmp95.not, label %if.end94.cleanup_crit_edge, label %__here104, !prof !152

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here104:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bc_mp.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !254
  call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %70, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1513, ptr noundef blockaddress(@xfs_refcount_adjust_cow_extents, %__here104)) #10
  br label %out_error

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1519) #10
  br label %cleanup

out_error:                                        ; preds = %__here104, %if.end86.out_error_crit_edge, %__here82, %__here67, %__here52, %__here36, %if.end18.out_error_crit_edge, %__here, %if.end2.out_error_crit_edge, %if.end.out_error_crit_edge
  %error.1 = phi i32 [ %call.i, %if.end.out_error_crit_edge ], [ %call3, %if.end2.out_error_crit_edge ], [ -117, %__here52 ], [ -117, %__here67 ], [ -117, %__here82 ], [ %call91, %if.end86.out_error_crit_edge ], [ -117, %__here104 ], [ -117, %__here ], [ %call23, %if.end18.out_error_crit_edge ], [ -117, %__here36 ]
  %71 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bc_mp.i, align 4
  %73 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %14, align 8
  %pag_agno111 = getelementptr inbounds %struct.xfs_perag, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %pag_agno111 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pag_agno111, align 4
  %77 = call ptr @llvm.returnaddress(i32 0)
  %78 = ptrtoint ptr %77 to i32
  call fastcc void @trace_xfs_refcount_modify_extent_error(ptr noundef %72, i32 noundef %76, i32 noundef %error.1, i32 noundef %78)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %sw.default, %if.end94.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_error ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_rec) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ext) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_adjust_cow_error(ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_adjust_cow_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_adjust_cow_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !255
  %call42 = tail call i32 @__traceiter_xfs_refcount_adjust_cow_error(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !256
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_adjust_cow_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_adjust_cow_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_adjust_cow_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_adjust_cow_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3170, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_adjust_cow_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_refcount_cow_decrease(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_cow_decrease, i32 0, i32 1), ptr blockaddress(@trace_xfs_refcount_cow_decrease, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !152

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !257
  %call42 = tail call i32 @__traceiter_xfs_refcount_cow_decrease(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !258
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !152

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_cow_decrease, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_refcount_cow_decrease, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_refcount_cow_decrease.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_refcount_cow_decrease.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 3160, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xfs_refcount_cow_decrease(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_refcount_recover_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_free_extent_later(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !130, !132, !133, !135, !136, !138, !140}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 155, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 157, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 206, i32 6}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1158, i32 6}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1209, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1321, i32 6}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1788, i32 48}
!15 = !{ptr @xfs_refcount_intent_cache, !16, !"xfs_refcount_intent_cache", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 27, i32 20}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_trace.h", i32 3147, i32 1}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!21 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trace.h", i32 3148, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_trace.h", i32 3150, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trace.h", i32 3152, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_trace.h", i32 3185, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trace.h", i32 3157, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_trace.h", i32 3158, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 364, i32 6}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_trace.h", i32 3164, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_trace.h", i32 3149, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_trace.h", i32 3154, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_trace.h", i32 3173, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_trace.h", i32 3167, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_trace.h", i32 3176, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_trace.h", i32 3168, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_trace.h", i32 3177, i32 1}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_trace.h", i32 3161, i32 1}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_trace.h", i32 3151, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_trace.h", i32 3153, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_trace.h", i32 3171, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_trace.h", i32 3165, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/xfs/xfs_trace.h", i32 3174, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_trace.h", i32 3166, i32 1}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_trace.h", i32 3175, i32 1}
!92 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!93 = !{ptr @.str.12, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 968, i32 9}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../fs/xfs/xfs_trace.h", i32 3162, i32 1}
!97 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../fs/xfs/xfs_trace.h", i32 3172, i32 1}
!100 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../fs/xfs/xfs_trace.h", i32 3169, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_trace.h", i32 3187, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../fs/xfs/xfs_trace.h", i32 3184, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../fs/xfs/xfs_trace.h", i32 3180, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../fs/xfs/xfs_trace.h", i32 3181, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../fs/xfs/xfs_trace.h", i32 3182, i32 1}
!118 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../fs/xfs/xfs_trace.h", i32 3159, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = !{ptr @.str.13, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1471, i32 7}
!124 = !{ptr @.str.14, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1494, i32 7}
!126 = !{ptr @.str.15, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1498, i32 7}
!128 = !{ptr @.str.16, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1502, i32 7}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../fs/xfs/xfs_trace.h", i32 3170, i32 1}
!132 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../fs/xfs/xfs_trace.h", i32 3160, i32 1}
!135 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!136 = !{ptr @.str.17, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/xfs/libxfs/xfs_refcount.c", i32 1662, i32 6}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../fs/xfs/xfs_trace.h", i32 3163, i32 1}
!140 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 2148291721, i64 2148291726, i64 2148291739, i64 2148291783, i64 2148291817, i64 2148291838}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{i64 2163775980}
!154 = !{i64 2163776221}
!155 = !{i64 2149993814}
!156 = !{i64 2149994850}
!157 = !{!"auto-init"}
!158 = !{i64 2163797646}
!159 = !{i64 2163797869}
!160 = !{i64 2166323037}
!161 = !{i64 2163832804}
!162 = !{i64 2163833033}
!163 = !{i64 2163872592}
!164 = !{i64 2163872857}
!165 = !{i64 2164439587}
!166 = !{i64 2164439840}
!167 = !{i8 0, i8 2}
!168 = !{i64 2164458988}
!169 = !{i64 2164459307}
!170 = !{i64 2166339117}
!171 = !{i64 2166339496}
!172 = !{i64 2166341561}
!173 = !{i64 2164356656}
!174 = !{i64 2164356907}
!175 = !{i64 2164379393}
!176 = !{i64 2164379658}
!177 = !{i64 2164398365}
!178 = !{i64 2164398640}
!179 = !{i64 2166351404}
!180 = !{i64 2164047771}
!181 = !{i64 2164048016}
!182 = !{i64 2163927954}
!183 = !{i64 2163928199}
!184 = !{i64 2163950129}
!185 = !{i64 2163950374}
!186 = !{i64 2166324569}
!187 = !{i64 2166324971}
!188 = !{i64 2166336711}
!189 = !{i64 2166337261}
!190 = !{i64 2164171046}
!191 = !{i64 2164171311}
!192 = !{i64 2164070546}
!193 = !{i64 2164070801}
!194 = !{i64 2164255707}
!195 = !{i64 2164255984}
!196 = !{i64 2163815144}
!197 = !{i64 2163815373}
!198 = !{i64 2163909582}
!199 = !{i64 2163909847}
!200 = !{i64 2166329769}
!201 = !{i64 2166330175}
!202 = !{i64 2166332268}
!203 = !{i64 2166332674}
!204 = !{i64 2166325462}
!205 = !{i64 2166325864}
!206 = !{i64 2166326266}
!207 = !{i64 2166326668}
!208 = !{i64 2166327159}
!209 = !{i64 2166327561}
!210 = !{i64 2166327963}
!211 = !{i64 2166328454}
!212 = !{i64 2166328856}
!213 = !{i64 2166329258}
!214 = !{i64 2164132486}
!215 = !{i64 2164132753}
!216 = !{i64 2164318106}
!217 = !{i64 2164318391}
!218 = !{i64 2164152205}
!219 = !{i64 2164152474}
!220 = !{i64 2164337570}
!221 = !{i64 2164337857}
!222 = !{i64 2164010558}
!223 = !{i64 2164010827}
!224 = !{i64 2166323528}
!225 = !{i64 2166323909}
!226 = !{i64 2164213015}
!227 = !{i64 2164213308}
!228 = !{i64 2163850464}
!229 = !{i64 2163850693}
!230 = !{i64 2163891087}
!231 = !{i64 2163891352}
!232 = !{i64 2164089504}
!233 = !{i64 2164089759}
!234 = !{i64 2164274955}
!235 = !{i64 2164275242}
!236 = !{i64 2164108745}
!237 = !{i64 2164109002}
!238 = !{i64 2164294512}
!239 = !{i64 2164294801}
!240 = !{i64 2164029421}
!241 = !{i64 2164029664}
!242 = !{i64 2164232539}
!243 = !{i64 2164232818}
!244 = !{i64 2164417198}
!245 = !{i64 2164417445}
!246 = !{i64 2163968403}
!247 = !{i64 2163968656}
!248 = !{!"branch_weights", i32 1, i32 2000}
!249 = !{i64 2166343928}
!250 = !{i64 2166344331}
!251 = !{i64 2166344770}
!252 = !{i64 2166345209}
!253 = !{i64 2166349691}
!254 = !{i64 2166350094}
!255 = !{i64 2164193758}
!256 = !{i64 2164194031}
!257 = !{i64 2163986893}
!258 = !{i64 2163987146}
