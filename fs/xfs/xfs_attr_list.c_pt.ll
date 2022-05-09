; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_attr_list.c_pt.bc'
source_filename = "../fs/xfs/xfs_attr_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_attr3_icleaf_hdr = type { i32, i32, i16, i16, i16, i32, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { i16, i16 }
%struct.xfs_attr_list_context = type { ptr, ptr, %struct.xfs_attrlist_cursor_kern, ptr, i32, i8, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.xfs_attrlist_cursor_kern = type { i32, i32, i32, i16, i8, i8 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_attr3_leafblock = type { %struct.xfs_attr3_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_attr3_leaf_hdr = type { %struct.xfs_da3_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map], i32 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_attr_leaf_map = type { i16, i16 }
%struct.xfs_attr_leaf_entry = type { i32, i16, i8, i8 }
%struct.xfs_attr_leafblock = type { %struct.xfs_attr_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_attr_leaf_hdr = type { %struct.xfs_da_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map] }
%struct.xfs_attr_leaf_name_local = type { i16, i8, [1 x i8] }
%struct.xfs_attr_leaf_name_remote = type { i32, i32, i8, [1 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.89, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.88, i16, i8, i32 }
%union.anon.88 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.89 = type { i32 }
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
%struct.xfs_attr_sf_hdr = type { i16, i8, i8 }
%struct.xfs_attr_shortform = type { %struct.xfs_attr_sf_hdr, [1 x %struct.xfs_attr_sf_entry] }
%struct.xfs_attr_sf_entry = type { i8, i8, i8, [0 x i8] }
%struct.xfs_attr_sf_sort = type { i8, i8, i8, i8, i32, ptr }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_da3_icnode_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_da_node_entry = type { i32, i32 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!xfs_attr_namecheck(name, namelen)\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/xfs_attr_list.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"xfs_isilocked(dp, XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)\00", [43 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_xfs_attr_list_leaf = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_attr_list_leaf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_list_notfound = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_list_notfound.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_list_leaf_end = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_list_leaf_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dp->i_afp != NULL\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sf != NULL\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"!xfs_attr_namecheck(sfe->nameval, sfe->namelen)\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xfs_attr_shortform_list\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"!xfs_attr_namecheck(sbp->name, sbp->namelen)\00", [51 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_list_sf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_list_sf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_list_sf_all = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_list_sf_all.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_list = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_node_list = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_node_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_list_wrong_blk = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_list_wrong_blk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"*pbp == NULL\00", [19 x i8] zeroinitializer }, align 32
@__func__.xfs_attr_node_list_lookup = private unnamed_addr constant [26 x i8] c"xfs_attr_node_list_lookup\00", align 1
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cursor->blkno == 0\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_list_node_descend = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_list_node_descend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 16, i64 15342, i64 16062, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 16, i64 15342, i64 16062, i64 64494, i64 65214]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 467, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 508, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 134, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 108, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 63, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 65, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 84, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 124, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 176, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 218, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [26 x i8] c"../fs/xfs/xfs_attr_list.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 266, i32 7 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_list_int(ptr nocapture noundef readonly %bp, ptr noundef %context) #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor1 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #8
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  %dp = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call fastcc void @trace_xfs_attr_list_leaf(ptr noundef %context)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_attr_geo, align 32
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %8, ptr noundef nonnull %ichdr, ptr noundef %6) #8
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %10)
  %cmp.i = icmp eq i16 %10, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %6, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %6, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %initted = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %initted to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %initted, align 1
  %resynch = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 11
  %12 = ptrtoint ptr %resynch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resynch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %for.cond.preheader

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count, align 2
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp171.not = icmp eq i16 %15, 0
  br i1 %cmp171.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %16 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cursor1, align 4
  %offset = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 2
  %dupcnt = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc.for.body_crit_edge ]
  %entry2.0172 = phi ptr [ %retval.0.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %entry2.0172 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entry2.0172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp5 = icmp eq i32 %19, %17
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %22 = ptrtoint ptr %dupcnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dupcnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp8 = icmp eq i32 %21, %23
  br i1 %cmp8, label %if.then7.for.end.sink.split_crit_edge, label %if.end

if.then7.for.end.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.sink.split

if.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %23, 1
  %24 = ptrtoint ptr %dupcnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %dupcnt, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp15 = icmp ugt i32 %19, %17
  br i1 %cmp15, label %if.else.for.end.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.for.end.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.sink.split

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.end
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry2.0172, i32 1
  %inc21 = add nuw nsw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc21, %conv
  br i1 %exitcond.not, label %for.inc.if.then26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

for.end.sink.split:                               ; preds = %if.else.for.end.sink.split_crit_edge, %if.then7.for.end.sink.split_crit_edge
  %25 = ptrtoint ptr %dupcnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dupcnt, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.cond.preheader.for.end_crit_edge
  %entry2.0166 = phi ptr [ %retval.0.i, %for.cond.preheader.for.end_crit_edge ], [ %entry2.0172, %for.end.sink.split ]
  %i.0163 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0174, %for.end.sink.split ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0163, i32 %conv)
  %cmp24 = icmp eq i32 %i.0163, %conv
  br i1 %cmp24, label %for.end.if.then26_crit_edge, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.end.if.then26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26:                                        ; preds = %for.end.if.then26_crit_edge, %for.inc.if.then26_crit_edge
  call fastcc void @trace_xfs_attr_list_notfound(ptr noundef %context)
  br label %cleanup91

if.end30:                                         ; preds = %for.end.if.end30_crit_edge, %entry.if.end30_crit_edge
  %entry2.1 = phi ptr [ %entry2.0166, %for.end.if.end30_crit_edge ], [ %retval.0.i, %entry.if.end30_crit_edge ]
  %i.1 = phi i32 [ %i.0163, %for.end.if.end30_crit_edge ], [ 0, %entry.if.end30_crit_edge ]
  %26 = ptrtoint ptr %resynch to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %resynch, align 4
  %count33 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %27 = ptrtoint ptr %count33 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %count33, align 2
  %conv34178 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %conv34178)
  %cmp35179 = icmp slt i32 %i.1, %conv34178
  br i1 %cmp35179, label %for.body37.lr.ph, label %if.end30.for.end90_crit_edge

if.end30.for.end90_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

for.body37.lr.ph:                                 ; preds = %if.end30
  %offset45 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 2
  %allow_incomplete = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 5
  %put_listent = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 12
  %seen_enough = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  br label %for.body37

for.body37:                                       ; preds = %for.inc87.for.body37_crit_edge, %for.body37.lr.ph
  %i.2181 = phi i32 [ %i.1, %for.body37.lr.ph ], [ %inc89, %for.inc87.for.body37_crit_edge ]
  %entry2.2180 = phi ptr [ %entry2.1, %for.body37.lr.ph ], [ %incdec.ptr88, %for.inc87.for.body37_crit_edge ]
  %29 = ptrtoint ptr %entry2.2180 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %entry2.2180, align 4
  %31 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cursor1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp40.not = icmp eq i32 %30, %32
  br i1 %cmp40.not, label %for.body37.if.end46_crit_edge, label %if.then42

for.body37.if.end46_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then42:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %cursor1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %cursor1, align 4
  %34 = ptrtoint ptr %offset45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %offset45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %for.body37.if.end46_crit_edge
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry2.2180, i32 0, i32 2
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool48.not = icmp sgt i8 %36, -1
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %land.lhs.true

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end46
  %37 = ptrtoint ptr %allow_incomplete to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %allow_incomplete, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool49.not = icmp eq i8 %38, 0
  br i1 %tobool49.not, label %land.lhs.true.for.inc87_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true.for.inc87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc87

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %if.end46.if.end51_crit_edge
  %39 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool55.not = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %41)
  %cmp.i.i.i148 = icmp eq i16 %41, 15342
  %retval.0.i.i.i151 = select i1 %cmp.i.i.i148, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i152 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i151, i32 %i.2181, i32 1
  %42 = ptrtoint ptr %nameidx.i.i152 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nameidx.i.i152, align 4
  %idxprom.i.i153 = zext i16 %43 to i32
  %arrayidx1.i.i154 = getelementptr i8, ptr %6, i32 %idxprom.i.i153
  br i1 %tobool55.not, label %if.else62, label %if.then56

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i154, i32 0, i32 2
  %namelen58 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i154, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx1.i.i154 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx1.i.i154, align 2
  %conv61 = zext i16 %45 to i32
  br label %if.end69

if.else62:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %name64 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i154, i32 0, i32 3
  %namelen66 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i154, i32 0, i32 2
  %valuelen68 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i154, i32 0, i32 1
  %46 = ptrtoint ptr %valuelen68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %valuelen68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else62, %if.then56
  %name.0 = phi ptr [ %nameval, %if.then56 ], [ %name64, %if.else62 ]
  %namelen.0.in.in = phi ptr [ %namelen58, %if.then56 ], [ %namelen66, %if.else62 ]
  %valuelen.0 = phi i32 [ %conv61, %if.then56 ], [ %47, %if.else62 ]
  %48 = ptrtoint ptr %namelen.0.in.in to i32
  call void @__asan_load1_noabort(i32 %48)
  %namelen.0.in = load i8, ptr %namelen.0.in.in, align 2
  %namelen.0 = zext i8 %namelen.0.in to i32
  %call70 = call zeroext i1 @xfs_attr_namecheck(ptr noundef %name.0, i32 noundef %namelen.0) #8
  br i1 %call70, label %if.end77, label %cleanup.thread156, !prof !66

cleanup.thread156:                                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dp, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  call void @xfs_corruption_error(ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %52, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 468, ptr noundef blockaddress(@xfs_attr3_leaf_list_int, %cleanup.thread156)) #8
  br label %cleanup91

if.end77:                                         ; preds = %if.end69
  %53 = ptrtoint ptr %put_listent to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %put_listent, align 4
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %flags, align 2
  %conv79 = zext i8 %56 to i32
  call void %54(ptr noundef %context, i32 noundef %conv79, ptr noundef %name.0, i32 noundef %namelen.0, i32 noundef %valuelen.0) #8
  %57 = ptrtoint ptr %seen_enough to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seen_enough, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool80.not = icmp eq i32 %58, 0
  br i1 %tobool80.not, label %if.end82, label %if.end77.for.end90_crit_edge

if.end77.for.end90_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

if.end82:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %offset45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset45, align 4
  %inc84 = add i32 %60, 1
  store i32 %inc84, ptr %offset45, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %if.end82, %land.lhs.true.for.inc87_crit_edge
  %incdec.ptr88 = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry2.2180, i32 1
  %inc89 = add nuw nsw i32 %i.2181, 1
  %61 = ptrtoint ptr %count33 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %count33, align 2
  %conv34 = zext i16 %62 to i32
  %cmp35 = icmp ult i32 %inc89, %conv34
  br i1 %cmp35, label %for.inc87.for.body37_crit_edge, label %for.inc87.for.end90_crit_edge

for.inc87.for.end90_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

for.inc87.for.body37_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

for.end90:                                        ; preds = %for.inc87.for.end90_crit_edge, %if.end77.for.end90_crit_edge, %if.end30.for.end90_crit_edge
  call fastcc void @trace_xfs_attr_list_leaf_end(ptr noundef %context)
  br label %cleanup91

cleanup91:                                        ; preds = %for.end90, %cleanup.thread156, %if.then26
  %retval.2 = phi i32 [ 0, %if.then26 ], [ 0, %for.end90 ], [ -117, %cleanup.thread156 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #8
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_list_leaf(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_leaf, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_leaf, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %call42 = tail call i32 @__traceiter_xfs_attr_list_leaf(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_leaf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_leaf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_list_leaf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_list_leaf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 134, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
declare dso_local void @xfs_attr3_leaf_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_list_notfound(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_notfound, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_notfound, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %call42 = tail call i32 @__traceiter_xfs_attr_list_notfound(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_notfound, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_notfound, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_list_notfound.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_list_notfound.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 139, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_attr_namecheck(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_list_leaf_end(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_leaf_end, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_leaf_end, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  %call42 = tail call i32 @__traceiter_xfs_attr_list_leaf_end(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_leaf_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_leaf_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_list_leaf_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_list_leaf_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 135, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
define dso_local i32 @xfs_attr_list_ilocked(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 4
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %1, i32 noundef 12) #8
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !66

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 508) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call3 = tail call i32 @xfs_inode_hasattr(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @xfs_attr_shortform_list(ptr noundef %context)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call zeroext i1 @xfs_attr_is_leaf(ptr noundef %1) #8
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call fastcc i32 @xfs_attr_leaf_list(ptr noundef %context)
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @xfs_attr_node_list(ptr noundef %context)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then6, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %call11, %if.then10 ], [ %call13, %if.end12 ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inode_hasattr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_shortform_list(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor1 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2
  %dp2 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp2, align 4
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !77

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 63) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_u1, align 4
  %cmp5.not = icmp eq ptr %7, null
  br i1 %cmp5.not, label %cond.false13, label %cond.end.cond.end14_crit_edge, !prof !77

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 65) #8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %count15 = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %count15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %cond.end14.cleanup_crit_edge, label %if.end

cond.end14.cleanup_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end14
  tail call fastcc void @trace_xfs_attr_list_sf(ptr noundef %context)
  %bufsize = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 8
  %10 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17 = icmp eq i32 %11, 0
  br i1 %cmp17, label %if.end.if.then33_crit_edge, label %lor.lhs.false

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.end
  %initted = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %initted to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %land.lhs.true, label %lor.lhs.false.if.end68_crit_edge

lor.lhs.false.if.end68_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cursor1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true20:                                  ; preds = %land.lhs.true
  %blkno = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %land.lhs.true20.if.end68_crit_edge

land.lhs.true20.if.end68_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %offset = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool23.not = icmp eq i32 %19, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true22.if.end68_crit_edge

land.lhs.true22.if.end68_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %20 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_afp, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %24 = ptrtoint ptr %count15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %count15, align 2
  %conv = zext i8 %25 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %26 = zext i32 %mul to i64
  %add = add i64 %23, %26
  %conv30 = sext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv30)
  %cmp31 = icmp slt i64 %add, %conv30
  br i1 %cmp31, label %land.lhs.true24.if.then33_crit_edge, label %land.lhs.true24.if.end68_crit_edge

land.lhs.true24.if.end68_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true24.if.then33_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %land.lhs.true24.if.then33_crit_edge, %if.end.if.then33_crit_edge
  %27 = ptrtoint ptr %count15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %count15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp37335.not = icmp eq i8 %28, 0
  br i1 %cmp37335.not, label %if.then33.for.end_crit_edge, label %for.body.lr.ph

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then33
  %list = getelementptr inbounds %struct.xfs_attr_shortform, ptr %7, i32 0, i32 1
  %put_listent = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 12
  %seen_enough = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %for.body.lr.ph
  %i.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end61.for.body_crit_edge ]
  %sfe.0336 = phi ptr [ %list, %for.body.lr.ph ], [ %add.ptr.i, %if.end61.for.body_crit_edge ]
  %nameval = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.0336, i32 0, i32 3
  %29 = ptrtoint ptr %sfe.0336 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sfe.0336, align 1
  %conv39 = zext i8 %30 to i32
  %call = tail call zeroext i1 @xfs_attr_namecheck(ptr noundef %nameval, i32 noundef %conv39) #8
  br i1 %call, label %if.end52, label %__here, !prof !66

__here:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dp2, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %34, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 86, ptr noundef blockaddress(@xfs_attr_shortform_list, %__here)) #8
  br label %cleanup

if.end52:                                         ; preds = %for.body
  %35 = ptrtoint ptr %put_listent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %put_listent, align 4
  %flags = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.0336, i32 0, i32 2
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags, align 1
  %conv53 = zext i8 %38 to i32
  %39 = ptrtoint ptr %sfe.0336 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sfe.0336, align 1
  %conv57 = zext i8 %40 to i32
  %valuelen = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.0336, i32 0, i32 1
  %41 = ptrtoint ptr %valuelen to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %valuelen, align 1
  %conv58 = zext i8 %42 to i32
  tail call void %36(ptr noundef %context, i32 noundef %conv53, ptr noundef %nameval, i32 noundef %conv57, i32 noundef %conv58) #8
  %43 = ptrtoint ptr %seen_enough to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seen_enough, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool59.not = icmp eq i32 %44, 0
  br i1 %tobool59.not, label %if.end61, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end61:                                         ; preds = %if.end52
  %45 = ptrtoint ptr %sfe.0336 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sfe.0336, align 1
  %conv.i.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %valuelen to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %valuelen, align 1
  %conv1.i.i = zext i8 %48 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %spec.select.i3.i.i = add nuw nsw i32 %add.i.i, %conv1.i.i
  %add.ptr.i = getelementptr i8, ptr %sfe.0336, i32 %spec.select.i3.i.i
  %inc = add nuw nsw i32 %i.0337, 1
  %49 = ptrtoint ptr %count15 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %count15, align 2
  %conv36 = zext i8 %50 to i32
  %cmp37 = icmp ult i32 %inc, %conv36
  br i1 %cmp37, label %if.end61.for.body_crit_edge, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end61.for.end_crit_edge, %if.end52.for.end_crit_edge, %if.then33.for.end_crit_edge
  tail call fastcc void @trace_xfs_attr_list_sf_all(ptr noundef %context)
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true24.if.end68_crit_edge, %land.lhs.true22.if.end68_crit_edge, %land.lhs.true20.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %lor.lhs.false.if.end68_crit_edge
  %51 = ptrtoint ptr %count15 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %count15, align 2
  %conv71 = zext i8 %52 to i32
  %mul72 = mul nuw nsw i32 %conv71, 12
  %call73 = tail call ptr @kmem_alloc(i32 noundef %mul72, i32 noundef 4) #8
  %53 = ptrtoint ptr %count15 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %count15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp80314.not = icmp eq i8 %54, 0
  br i1 %cmp80314.not, label %if.end68.for.end117_crit_edge, label %for.body82.preheader

if.end68.for.end117_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end117

for.body82.preheader:                             ; preds = %if.end68
  %list74 = getelementptr inbounds %struct.xfs_attr_shortform, ptr %7, i32 0, i32 1
  br label %for.body82

for.body82:                                       ; preds = %if.end98.for.body82_crit_edge, %for.body82.preheader
  %i.1318 = phi i32 [ %inc116, %if.end98.for.body82_crit_edge ], [ 0, %for.body82.preheader ]
  %sfe.1316 = phi ptr [ %add.ptr.i310, %if.end98.for.body82_crit_edge ], [ %list74, %for.body82.preheader ]
  %sbp.0315 = phi ptr [ %incdec.ptr, %if.end98.for.body82_crit_edge ], [ %call73, %for.body82.preheader ]
  %cmp83 = icmp ult ptr %sfe.1316, %7
  br i1 %cmp83, label %for.body82.if.then95_crit_edge, label %lor.rhs, !prof !77

for.body82.if.then95_crit_edge:                   ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

lor.rhs:                                          ; preds = %for.body82
  %55 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_afp, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %56, align 8
  %idx.ext = trunc i64 %58 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %idx.ext
  %cmp87.not = icmp ult ptr %sfe.1316, %add.ptr
  br i1 %cmp87.not, label %if.end98, label %lor.rhs.if.then95_crit_edge, !prof !66

lor.rhs.if.then95_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

if.then95:                                        ; preds = %lor.rhs.if.then95_crit_edge, %for.body82.if.then95_crit_edge
  %59 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dp2, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %63 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef %62, ptr noundef %sfe.1316, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 127, ptr noundef %63) #8
  tail call void @kvfree(ptr noundef %call73) #8
  br label %cleanup

if.end98:                                         ; preds = %lor.rhs
  %conv99 = trunc i32 %i.1318 to i8
  %64 = ptrtoint ptr %sbp.0315 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv99, ptr %sbp.0315, align 4
  %nameval100 = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.1316, i32 0, i32 3
  %65 = ptrtoint ptr %sfe.1316 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sfe.1316, align 1
  %conv103 = zext i8 %66 to i32
  %call104 = tail call i32 @xfs_da_hashname(ptr noundef %nameval100, i32 noundef %conv103) #8
  %hash = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.0315, i32 0, i32 4
  %67 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call104, ptr %hash, align 4
  %name = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.0315, i32 0, i32 5
  %68 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %nameval100, ptr %name, align 4
  %69 = ptrtoint ptr %sfe.1316 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sfe.1316, align 1
  %namelen108 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.0315, i32 0, i32 1
  %71 = ptrtoint ptr %namelen108 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %namelen108, align 1
  %valuelen109 = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.1316, i32 0, i32 1
  %72 = ptrtoint ptr %valuelen109 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %valuelen109, align 1
  %valuelen110 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.0315, i32 0, i32 2
  %74 = ptrtoint ptr %valuelen110 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %valuelen110, align 2
  %flags111 = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.1316, i32 0, i32 2
  %75 = ptrtoint ptr %flags111 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %flags111, align 1
  %flags112 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.0315, i32 0, i32 3
  %77 = ptrtoint ptr %flags112 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %flags112, align 1
  %78 = load i8, ptr %sfe.1316, align 1
  %conv.i.i305 = zext i8 %78 to i32
  %79 = load i8, ptr %valuelen109, align 1
  %conv1.i.i307 = zext i8 %79 to i32
  %add.i.i308 = add nuw nsw i32 %conv.i.i305, 3
  %spec.select.i3.i.i309 = add nuw nsw i32 %add.i.i308, %conv1.i.i307
  %add.ptr.i310 = getelementptr i8, ptr %sfe.1316, i32 %spec.select.i3.i.i309
  %incdec.ptr = getelementptr %struct.xfs_attr_sf_sort, ptr %sbp.0315, i32 1
  %inc116 = add nuw nsw i32 %i.1318, 1
  %80 = ptrtoint ptr %count15 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %count15, align 2
  %conv79 = zext i8 %81 to i32
  %cmp80 = icmp ult i32 %inc116, %conv79
  br i1 %cmp80, label %if.end98.for.body82_crit_edge, label %if.end98.for.end117_crit_edge

if.end98.for.end117_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end117

if.end98.for.body82_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82

for.end117:                                       ; preds = %if.end98.for.end117_crit_edge, %if.end68.for.end117_crit_edge
  %nsbuf.0.lcssa = phi i32 [ 0, %if.end68.for.end117_crit_edge ], [ %inc116, %if.end98.for.end117_crit_edge ]
  tail call void @sort(ptr noundef %call73, i32 noundef %nsbuf.0.lcssa, i32 noundef 12, ptr noundef nonnull @xfs_attr_shortform_compare, ptr noundef null) #8
  %82 = ptrtoint ptr %initted to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %initted, align 1
  %blkno119 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %blkno119 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %blkno119, align 4
  %offset129 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsbuf.0.lcssa)
  %cmp121319 = icmp sgt i32 %nsbuf.0.lcssa, 0
  br i1 %cmp121319, label %for.body123.lr.ph, label %for.end117.for.end145_crit_edge

for.end117.for.end145_crit_edge:                  ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

for.body123.lr.ph:                                ; preds = %for.end117
  %84 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cursor1, align 4
  br label %for.body123

for.body123:                                      ; preds = %for.inc142.for.body123_crit_edge, %for.body123.lr.ph
  %i.2323 = phi i32 [ 0, %for.body123.lr.ph ], [ %inc143, %for.inc142.for.body123_crit_edge ]
  %count.0322 = phi i32 [ 0, %for.body123.lr.ph ], [ %count.1, %for.inc142.for.body123_crit_edge ]
  %sbp.1320 = phi ptr [ %call73, %for.body123.lr.ph ], [ %incdec.ptr144, %for.inc142.for.body123_crit_edge ]
  %hash124 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.1320, i32 0, i32 4
  %86 = ptrtoint ptr %hash124 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hash124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %85)
  %cmp126 = icmp eq i32 %87, %85
  br i1 %cmp126, label %if.then128, label %if.else

if.then128:                                       ; preds = %for.body123
  %88 = ptrtoint ptr %offset129 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %count.0322)
  %cmp130 = icmp eq i32 %89, %count.0322
  br i1 %cmp130, label %if.then128.for.end145_crit_edge, label %if.end133

if.then128.for.end145_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

if.end133:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  %inc134 = add i32 %count.0322, 1
  br label %for.inc142

if.else:                                          ; preds = %for.body123
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %85)
  %cmp137 = icmp ugt i32 %87, %85
  br i1 %cmp137, label %if.else.for.end145_crit_edge, label %if.else.for.inc142_crit_edge

if.else.for.inc142_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc142

if.else.for.end145_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

for.inc142:                                       ; preds = %if.else.for.inc142_crit_edge, %if.end133
  %count.1 = phi i32 [ %inc134, %if.end133 ], [ %count.0322, %if.else.for.inc142_crit_edge ]
  %inc143 = add nuw nsw i32 %i.2323, 1
  %incdec.ptr144 = getelementptr %struct.xfs_attr_sf_sort, ptr %sbp.1320, i32 1
  %exitcond.not = icmp eq i32 %inc143, %nsbuf.0.lcssa
  br i1 %exitcond.not, label %for.inc142.out_crit_edge, label %for.inc142.for.body123_crit_edge

for.inc142.for.body123_crit_edge:                 ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123

for.inc142.out_crit_edge:                         ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.end145:                                       ; preds = %if.else.for.end145_crit_edge, %if.then128.for.end145_crit_edge, %for.end117.for.end145_crit_edge
  %sbp.1.lcssa = phi ptr [ %call73, %for.end117.for.end145_crit_edge ], [ %sbp.1320, %if.else.for.end145_crit_edge ], [ %sbp.1320, %if.then128.for.end145_crit_edge ]
  %i.2.lcssa = phi i32 [ 0, %for.end117.for.end145_crit_edge ], [ %i.2323, %if.else.for.end145_crit_edge ], [ %i.2323, %if.then128.for.end145_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa, i32 %nsbuf.0.lcssa)
  %cmp151331 = icmp slt i32 %i.2.lcssa, %nsbuf.0.lcssa
  br i1 %cmp151331, label %for.body153.lr.ph, label %for.end145.out_crit_edge

for.end145.out_crit_edge:                         ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body153.lr.ph:                                ; preds = %for.end145
  %put_listent183 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 12
  %seen_enough191 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  br label %for.body153

for.body153:                                      ; preds = %if.end194.for.body153_crit_edge, %for.body153.lr.ph
  %i.3333 = phi i32 [ %i.2.lcssa, %for.body153.lr.ph ], [ %inc198, %if.end194.for.body153_crit_edge ]
  %sbp.2332 = phi ptr [ %sbp.1.lcssa, %for.body153.lr.ph ], [ %incdec.ptr199, %if.end194.for.body153_crit_edge ]
  %90 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cursor1, align 4
  %hash155 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.2332, i32 0, i32 4
  %92 = ptrtoint ptr %hash155 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hash155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp156.not = icmp eq i32 %91, %93
  br i1 %cmp156.not, label %for.body153.if.end162_crit_edge, label %if.then158

for.body153.if.end162_crit_edge:                  ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then158:                                       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %cursor1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %cursor1, align 4
  %95 = ptrtoint ptr %offset129 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %offset129, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %for.body153.if.end162_crit_edge
  %name163 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.2332, i32 0, i32 5
  %96 = ptrtoint ptr %name163 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name163, align 4
  %namelen164 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.2332, i32 0, i32 1
  %98 = ptrtoint ptr %namelen164 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %namelen164, align 1
  %conv165 = zext i8 %99 to i32
  %call166 = tail call zeroext i1 @xfs_attr_namecheck(ptr noundef %97, i32 noundef %conv165) #8
  br i1 %call166, label %if.end182, label %__here178, !prof !66

__here178:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dp2, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %103, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef blockaddress(@xfs_attr_shortform_list, %__here178)) #8
  br label %out

if.end182:                                        ; preds = %if.end162
  %104 = ptrtoint ptr %put_listent183 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %put_listent183, align 4
  %flags184 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.2332, i32 0, i32 3
  %106 = ptrtoint ptr %flags184 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flags184, align 1
  %conv185 = zext i8 %107 to i32
  %108 = ptrtoint ptr %name163 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name163, align 4
  %110 = ptrtoint ptr %namelen164 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %namelen164, align 1
  %conv188 = zext i8 %111 to i32
  %valuelen189 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %sbp.2332, i32 0, i32 2
  %112 = ptrtoint ptr %valuelen189 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %valuelen189, align 2
  %conv190 = zext i8 %113 to i32
  tail call void %105(ptr noundef %context, i32 noundef %conv185, ptr noundef %109, i32 noundef %conv188, i32 noundef %conv190) #8
  %114 = ptrtoint ptr %seen_enough191 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %seen_enough191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool192.not = icmp eq i32 %115, 0
  br i1 %tobool192.not, label %if.end194, label %if.end182.out_crit_edge

if.end182.out_crit_edge:                          ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end194:                                        ; preds = %if.end182
  %116 = ptrtoint ptr %offset129 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset129, align 4
  %inc196 = add i32 %117, 1
  store i32 %inc196, ptr %offset129, align 4
  %inc198 = add nuw nsw i32 %i.3333, 1
  %incdec.ptr199 = getelementptr %struct.xfs_attr_sf_sort, ptr %sbp.2332, i32 1
  %exitcond339.not = icmp eq i32 %inc198, %nsbuf.0.lcssa
  br i1 %exitcond339.not, label %if.end194.out_crit_edge, label %if.end194.for.body153_crit_edge

if.end194.for.body153_crit_edge:                  ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body153

if.end194.out_crit_edge:                          ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end194.out_crit_edge, %if.end182.out_crit_edge, %__here178, %for.end145.out_crit_edge, %for.inc142.out_crit_edge
  %error.0 = phi i32 [ 0, %for.end145.out_crit_edge ], [ -117, %__here178 ], [ 0, %if.end194.out_crit_edge ], [ 0, %if.end182.out_crit_edge ], [ 0, %for.inc142.out_crit_edge ]
  tail call void @kvfree(ptr noundef %call73) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then95, %for.end, %__here, %cond.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %for.end ], [ -117, %if.then95 ], [ %error.0, %out ], [ 0, %cond.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_attr_is_leaf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_leaf_list(ptr noundef %context) unnamed_addr #4 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  tail call fastcc void @trace_xfs_attr_leaf_list(ptr noundef %context)
  %blkno = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %blkno, align 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %dp = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 4
  %call = call i32 @xfs_attr3_leaf_read(ptr noundef %3, ptr noundef %5, i32 noundef 0, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bp, align 4
  %call1 = call i32 @xfs_attr3_leaf_list_int(ptr noundef %7, ptr noundef %context)
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %10 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %9, ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_list(ptr noundef %context) unnamed_addr #4 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor1 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %leafhdr) #8
  %0 = call ptr @memset(ptr %leafhdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  %dp2 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call fastcc void @trace_xfs_attr_node_list(ptr noundef %context)
  %initted = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %initted to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %initted, align 1
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bp, align 4
  %blkno = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %entry.if.then32_crit_edge, label %if.then

entry.if.then32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %call = call i32 @xfs_da3_node_read(ptr noundef %11, ptr noundef %3, i32 noundef %9, ptr noundef nonnull %bp, i32 noundef 1) #8
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then.cleanup_crit_edge [
    i32 0, label %if.then.if.end_crit_edge
    i32 -117, label %if.then.if.end_crit_edge120
  ]

if.then.if.end_crit_edge120:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge120
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.if.then32_crit_edge, label %if.then7

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then7:                                         ; preds = %if.end
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %magic, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %18, label %sw.default [
    i16 -322, label %if.then7.sw.bb_crit_edge
    i16 16062, label %if.then7.sw.bb_crit_edge121
    i16 -1042, label %if.then7.sw.bb9_crit_edge
    i16 15342, label %if.then7.sw.bb9_crit_edge122
  ]

if.then7.sw.bb9_crit_edge122:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.then7.sw.bb9_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.then7.sw.bb_crit_edge121:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then7.sw.bb_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.then7.sw.bb_crit_edge, %if.then7.sw.bb_crit_edge121
  call fastcc void @trace_xfs_attr_list_wrong_blk(ptr noundef %context)
  %20 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %context, align 4
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %21, ptr noundef %23) #8
  %24 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %bp, align 4
  br label %if.then32

sw.bb9:                                           ; preds = %if.then7.sw.bb9_crit_edge, %if.then7.sw.bb9_crit_edge122
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m_attr_geo, align 32
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %26, ptr noundef nonnull %leafhdr, ptr noundef %16) #8
  %27 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %28)
  %cmp.i = icmp eq i16 %28, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %16, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %16, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %29 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cursor1, align 4
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %count, align 2
  %conv12 = zext i16 %32 to i32
  %sub = add nsw i32 %conv12, -1
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %sub
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %34)
  %cmp14 = icmp ugt i32 %30, %34
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_attr_list_wrong_blk(ptr noundef %context)
  %35 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context, align 4
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %36, ptr noundef %38) #8
  %39 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %bp, align 4
  br label %if.then32

if.else:                                          ; preds = %sw.bb9
  %40 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %41)
  %cmp21.not = icmp ugt i32 %30, %41
  br i1 %cmp21.not, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_attr_list_wrong_blk(ptr noundef %context)
  %42 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %context, align 4
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %43, ptr noundef %45) #8
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %bp, align 4
  br label %if.then32

sw.default:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_attr_list_wrong_blk(ptr noundef %context)
  %47 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %context, align 4
  %49 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %48, ptr noundef %50) #8
  %51 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %bp, align 4
  br label %if.then32

if.end29:                                         ; preds = %if.else
  %52 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load ptr, ptr %bp, align 4
  %cmp30 = icmp eq ptr %.pr, null
  br i1 %cmp30, label %if.end29.if.then32_crit_edge, label %if.end29.cond.end_crit_edge

if.end29.cond.end_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end29.if.then32_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %if.end29.if.then32_crit_edge, %sw.default, %if.then23, %if.then16, %sw.bb, %if.end.if.then32_crit_edge, %entry.if.then32_crit_edge
  %call33 = call fastcc i32 @xfs_attr_node_list_lookup(ptr noundef %context, ptr noundef %cursor1, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then32
  %53 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bp, align 4
  %tobool35.not = icmp eq ptr %54, null
  br i1 %tobool35.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.cond.end_crit_edge

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end:                                         ; preds = %lor.lhs.false.cond.end_crit_edge, %if.end29.cond.end_crit_edge
  %m_attr_geo48 = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 7
  %seen_enough = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end54.for.cond_crit_edge, %cond.end
  %55 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bp, align 4
  %b_addr43 = getelementptr inbounds %struct.xfs_buf, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %b_addr43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_addr43, align 4
  %call44 = call i32 @xfs_attr3_leaf_list_int(ptr noundef %56, ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end47:                                         ; preds = %for.cond
  %59 = ptrtoint ptr %m_attr_geo48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %m_attr_geo48, align 32
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %60, ptr noundef nonnull %leafhdr, ptr noundef %58) #8
  %61 = ptrtoint ptr %seen_enough to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %seen_enough, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool49.not = icmp eq i32 %62, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false50:                                  ; preds = %if.end47
  %63 = ptrtoint ptr %leafhdr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %leafhdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp51 = icmp eq i32 %64, 0
  br i1 %cmp51, label %lor.lhs.false50.for.end_crit_edge, label %if.end54

lor.lhs.false50.for.end_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end54:                                         ; preds = %lor.lhs.false50
  %65 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %blkno, align 4
  %66 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %context, align 4
  %68 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %67, ptr noundef %69) #8
  %70 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %context, align 4
  %72 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %blkno, align 4
  %call60 = call i32 @xfs_attr3_leaf_read(ptr noundef %71, ptr noundef %3, i32 noundef %73, ptr noundef nonnull %bp) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end54.for.cond_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54.for.cond_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false50.for.end_crit_edge, %if.end47.for.end_crit_edge, %for.cond.for.end_crit_edge
  %74 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %context, align 4
  %76 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %75, ptr noundef %77) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end54.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %for.end ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ], [ %call60, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %leafhdr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_list(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %2 = load ptr, ptr @xfsstats, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %xs_attr_list = getelementptr inbounds %struct.__xfsstats, ptr %10, i32 0, i32 55
  %11 = ptrtoint ptr %xs_attr_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xs_attr_list, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %xs_attr_list, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 92
  %15 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_stats, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = load i32, ptr %cpu, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %20, %17
  %21 = inttoptr i32 %add14 to ptr
  %xs_attr_list15 = getelementptr inbounds %struct.__xfsstats, ptr %21, i32 0, i32 55
  %22 = ptrtoint ptr %xs_attr_list15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xs_attr_list15, align 4
  %inc16 = add i32 %23, 1
  store i32 %inc16, ptr %xs_attr_list15, align 4
  %24 = load ptr, ptr %1, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %24, i32 0, i32 66
  %25 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %m_opstate.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not = icmp eq i32 %27, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 @xfs_ilock_attr_map_shared(ptr noundef %1) #8
  %call22 = tail call i32 @xfs_attr_list_ilocked(ptr noundef %context)
  tail call void @xfs_iunlock(ptr noundef %1, i32 noundef %call21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_attr_map_shared(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_leaf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_notfound(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_leaf_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_list_sf(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_sf, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_sf, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %call42 = tail call i32 @__traceiter_xfs_attr_list_sf(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_sf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_sf, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_list_sf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_list_sf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 132, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
define internal fastcc void @trace_xfs_attr_list_sf_all(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_sf_all, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_sf_all, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  %call42 = tail call i32 @__traceiter_xfs_attr_list_sf_all(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_sf_all, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_sf_all, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_list_sf_all.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_list_sf_all.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 133, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_hashname(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_attr_shortform_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash, align 4
  %hash1 = getelementptr inbounds %struct.xfs_attr_sf_sort, ptr %b, i32 0, i32 4
  %2 = ptrtoint ptr %hash1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ugt i32 %1, %3
  br i1 %cmp4, label %if.else.cleanup_crit_edge, label %if.else6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %a, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b, align 4
  %conv8 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv8
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.else6 ], [ -1, %entry.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_sf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_sf_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_list(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_list, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_list, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_list(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_list, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_list, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_list.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_leaf_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 140, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
declare dso_local i32 @xfs_attr3_leaf_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_node_list(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_list, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_node_list, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %call42 = tail call i32 @__traceiter_xfs_attr_node_list(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_list, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_list, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_node_list.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_node_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 141, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
declare dso_local i32 @xfs_da3_node_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_list_wrong_blk(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_wrong_blk, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_wrong_blk, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %call42 = tail call i32 @__traceiter_xfs_attr_list_wrong_blk(ptr noundef null, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_wrong_blk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_wrong_blk, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_list_wrong_blk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_list_wrong_blk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 138, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
define internal fastcc i32 @xfs_attr_node_list_lookup(ptr noundef %context, ptr nocapture noundef %cursor, ptr nocapture noundef %pbp) #4 align 64 {
entry:
  %nodehdr = alloca %struct.xfs_da3_icnode_hdr, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nodehdr) #8
  %0 = call ptr @memset(ptr %nodehdr, i32 255, i32 20)
  %dp1 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !80
  %8 = ptrtoint ptr %pbp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pbp, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !66

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 218) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %blkno = getelementptr inbounds %struct.xfs_attrlist_cursor_kern, ptr %cursor, i32 0, i32 1
  %10 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %blkno, align 4
  %level = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %nodehdr, i32 0, i32 4
  %btree41 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %nodehdr, i32 0, i32 5
  %count = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %nodehdr, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end57.for.cond_crit_edge, %cond.end
  %expected_level.0 = phi i32 [ 0, %cond.end ], [ %expected_level.1, %if.end57.for.cond_crit_edge ]
  %11 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blkno, align 4
  %call = call i32 @xfs_da3_node_read(ptr noundef %6, ptr noundef %2, i32 noundef %12, ptr noundef nonnull %bp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  %magic6 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %magic6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %magic6, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %18, label %if.then20 [
    i16 -1042, label %if.end.for.end71_crit_edge
    i16 15342, label %if.end.for.end71_crit_edge199
    i16 -322, label %if.end.if.end21_crit_edge
    i16 16062, label %if.end.if.end21_crit_edge200
  ]

if.end.if.end21_crit_edge200:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.for.end71_crit_edge199:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

if.end.for.end71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = call ptr @llvm.returnaddress(i32 0)
  call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_attr_node_list_lookup, i32 noundef 1, ptr noundef %4, ptr noundef %16, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 233, ptr noundef %20) #8
  br label %__here76

if.end21:                                         ; preds = %if.end.if.end21_crit_edge, %if.end.if.end21_crit_edge200
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %4, ptr noundef nonnull %nodehdr, ptr noundef %16) #8
  %21 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %level, align 4
  %conv22 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %22)
  %cmp23 = icmp ugt i16 %22, 4
  br i1 %cmp23, label %if.end21.__here76_crit_edge, label %if.end26

if.end21.__here76_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here76

if.end26:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.end26.if.end40_crit_edge, label %if.else

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_level.0, i32 %conv22)
  %cmp35.not = icmp eq i32 %expected_level.0, %conv22
  br i1 %cmp35.not, label %if.else.if.end40_crit_edge, label %if.else.__here76_crit_edge

if.else.__here76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here76

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end40:                                         ; preds = %if.else.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  %expected_level.1.in = phi i32 [ %conv22, %if.end26.if.end40_crit_edge ], [ %expected_level.0, %if.else.if.end40_crit_edge ]
  %expected_level.1 = add i32 %expected_level.1.in, -1
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %count, align 2
  %conv43 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp44131.not = icmp eq i16 %26, 0
  br i1 %cmp44131.not, label %if.end40.for.end_crit_edge, label %for.body.lr.ph

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end40
  %27 = ptrtoint ptr %btree41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btree41, align 4
  %29 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cursor, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %btree.0132 = phi ptr [ %28, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %btree.0132 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %btree.0132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp47.not = icmp ugt i32 %30, %32
  br i1 %cmp47.not, label %for.inc, label %if.then49

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %before = getelementptr inbounds %struct.xfs_da_node_entry, ptr %btree.0132, i32 0, i32 1
  %33 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %before, align 4
  %35 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %blkno, align 4
  call fastcc void @trace_xfs_attr_list_node_descend(ptr noundef %context, ptr noundef %btree.0132)
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.xfs_da_node_entry, ptr %btree.0132, i32 1
  %inc = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc, %conv43
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then49, %if.end40.for.end_crit_edge
  %i.0117 = phi i32 [ %i.0133, %if.then49 ], [ 0, %if.end40.for.end_crit_edge ], [ %conv43, %for.inc.for.end_crit_edge ]
  %36 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %6, ptr noundef %37) #8
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %count, align 2
  %conv53 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0117, i32 %conv53)
  %cmp54 = icmp eq i32 %i.0117, %conv53
  br i1 %cmp54, label %for.end.cleanup_crit_edge, label %if.end57

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %for.end
  %40 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blkno, align 4
  %cmp59 = icmp eq i32 %41, 0
  br i1 %cmp59, label %__here, label %if.end57.for.cond_crit_edge, !prof !77

if.end57.for.cond_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

__here:                                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  call void @xfs_corruption_error(ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef blockaddress(@xfs_attr_node_list_lookup, %__here)) #8
  br label %cleanup

for.end71:                                        ; preds = %if.end.for.end71_crit_edge, %if.end.for.end71_crit_edge199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expected_level.0)
  %cmp72.not = icmp eq i32 %expected_level.0, 0
  br i1 %cmp72.not, label %if.end75, label %for.end71.__here76_crit_edge

for.end71.__here76_crit_edge:                     ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here76

if.end75:                                         ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %pbp to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %14, ptr %pbp, align 4
  br label %cleanup

__here76:                                         ; preds = %for.end71.__here76_crit_edge, %if.else.__here76_crit_edge, %if.end21.__here76_crit_edge, %if.then20
  %43 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bp, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  call void @__xfs_buf_mark_corrupt(ptr noundef %44, ptr noundef blockaddress(@xfs_attr_node_list_lookup, %__here76)) #8
  %45 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %6, ptr noundef %46) #8
  br label %cleanup

cleanup:                                          ; preds = %__here76, %if.end75, %__here, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here76 ], [ 0, %if.end75 ], [ -117, %__here ], [ 0, %for.end.cleanup_crit_edge ], [ %call, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nodehdr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_node_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_wrong_blk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da3_node_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_list_node_descend(ptr noundef %ctx, ptr noundef %btree) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_node_descend, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_node_descend, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !93
  %call42 = tail call i32 @__traceiter_xfs_attr_list_node_descend(ptr noundef null, ptr noundef %ctx, ptr noundef %btree) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_node_descend, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_node_descend, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_list_node_descend.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_attr_list_node_descend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 348, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #8
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
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_node_descend(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_attr_list.c", i32 467, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_attr_list.c", i32 508, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_trace.h", i32 134, i32 1}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_trace.h", i32 139, i32 1}
!15 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_trace.h", i32 135, i32 1}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_attr_list.c", i32 63, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_attr_list.c", i32 65, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_attr_list.c", i32 84, i32 8}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_attr_list.c", i32 124, i32 4}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_attr_list.c", i32 176, i32 7}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_trace.h", i32 132, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_trace.h", i32 133, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_trace.h", i32 140, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_attr_list.c", i32 357, i32 2}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_trace.h", i32 141, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_trace.h", i32 138, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_attr_list.c", i32 218, i32 2}
!48 = !{ptr @__func__.xfs_attr_node_list_lookup, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_attr_list.c", i32 232, i32 4}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_attr_list.c", i32 266, i32 7}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_trace.h", i32 298, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
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
!65 = !{i8 0, i8 2}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2166333737}
!68 = !{i64 2148256714, i64 2148256719, i64 2148256732, i64 2148256776, i64 2148256810, i64 2148256831}
!69 = !{i64 2155983289}
!70 = !{i64 2155983494}
!71 = !{i64 2149958807}
!72 = !{i64 2149959843}
!73 = !{i64 2156071165}
!74 = !{i64 2156071378}
!75 = !{i64 2156000028}
!76 = !{i64 2156000241}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2166330108}
!79 = !{i64 2166331095}
!80 = !{!"auto-init"}
!81 = !{i64 2155950045}
!82 = !{i64 2155950246}
!83 = !{i64 2155966598}
!84 = !{i64 2155966807}
!85 = !{i64 2156092025}
!86 = !{i64 2156092230}
!87 = !{i64 2156108608}
!88 = !{i64 2156108813}
!89 = !{i64 2156054156}
!90 = !{i64 2156054371}
!91 = !{i64 2166332142}
!92 = !{i64 2166332293}
!93 = !{i64 2156526483}
!94 = !{i64 2156526718}
