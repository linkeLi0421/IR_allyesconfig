; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_attr.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_attr.c"
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_da_state = type { ptr, ptr, %struct.xfs_da_state_path, %struct.xfs_da_state_path, i8, i8, i8, %struct.xfs_da_state_blk }
%struct.xfs_da_state_path = type { i32, [5 x %struct.xfs_da_state_blk] }
%struct.xfs_da_state_blk = type { ptr, i32, i64, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_delattr_context = type { ptr, %struct.xfs_bmbt_irec, i32, i32, ptr, i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"xfs_isilocked(args->dp, XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/xfs/libxfs/xfs_attr.c\00", [39 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"args->rmtblkno == 0\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -EAGAIN\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_sf_addname = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_attr_sf_addname.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_sf_addname_return = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_sf_addname_return.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_replace = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_set_iter_return = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_set_iter_return.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_node_replace = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_node_replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"blk->magic == XFS_ATTR_LEAF_MAGIC\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_node_addname = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_node_addname.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_node_addname_return = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_node_addname_return.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_get = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_node_removename = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_node_removename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_removename = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_removename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(*state)->path.blk[(*state)->path.active - 1].bp != NULL\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"(*state)->path.blk[(*state)->path.active - 1].magic == XFS_ATTR_LEAF_MAGIC\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"(path->active >= 0) && (path->active < XFS_DA_NODE_MAXDEPTH)\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_fillstate = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_fillstate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_remove_iter_return = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_remove_iter_return.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"state->path.active == 1\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"state->path.blk[0].bp\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_refillstate = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_refillstate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_node_get = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967279]
@__sancov_gen_cov_switch_values.14 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967279]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967279]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967279]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967279]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967279]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967279]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 112, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1455, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1504, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1507, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 2029, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 108, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1170, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1340, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1341, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1537, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1278, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [28 x i8] c"../fs/xfs/libxfs/xfs_attr.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1279, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_inode_hasattr(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %0 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp3 = icmp eq i8 %5, 2
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_attr_is_leaf(ptr nocapture noundef readonly %ip) local_unnamed_addr #1 align 64 {
entry:
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #11
  %2 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !78
  %3 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #11
  %5 = call ptr @memset(ptr %imap, i32 255, i32 32)
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp1.not = icmp eq i8 %9, 2
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @xfs_iext_first(ptr noundef %1, ptr noundef nonnull %icur) #11
  %call = call zeroext i1 @xfs_iext_get_extent(ptr noundef %1, ptr noundef nonnull %icur, ptr noundef nonnull %imap) #11
  %10 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp3 = icmp eq i64 %11, 0
  br i1 %cmp3, label %land.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %12 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %13)
  %cmp5 = icmp eq i64 %13, 1
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp5, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #11
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_get_ilocked(ptr noundef %args) local_unnamed_addr #1 align 64 {
entry:
  %icur.i = alloca %struct.xfs_iext_cursor, align 4
  %imap.i = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %1, i32 noundef 12) #11
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 112) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 8
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_forkoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 0
  br i1 %cmp.not.i, label %cond.end.return_crit_edge, label %lor.lhs.false.i

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %cond.end
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_afp.i, align 8
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp3.i = icmp eq i8 %9, 2
  br i1 %cmp3.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %if_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.i = icmp eq i32 %11, 0
  br i1 %cmp6.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %12 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_afp.i, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp eq i8 %15, 1
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @xfs_attr_shortform_getvalue(ptr noundef %args) #11
  br label %return

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur.i) #11
  %16 = ptrtoint ptr %icur.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur.i, align 4, !annotation !78
  %17 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap.i) #11
  %19 = call ptr @memset(ptr %imap.i, i32 255, i32 32)
  %if_nextents.i23 = getelementptr inbounds %struct.xfs_ifork, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %if_nextents.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %if_nextents.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not.i24 = icmp eq i32 %21, 1
  br i1 %cmp.not.i24, label %lor.lhs.false.i26, label %if.end9.xfs_attr_is_leaf.exit.thread_crit_edge

if.end9.xfs_attr_is_leaf.exit.thread_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

lor.lhs.false.i26:                                ; preds = %if.end9
  %22 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp1.not.i = icmp eq i8 %23, 2
  br i1 %cmp1.not.i, label %if.end.i28, label %lor.lhs.false.i26.xfs_attr_is_leaf.exit.thread_crit_edge

lor.lhs.false.i26.xfs_attr_is_leaf.exit.thread_crit_edge: ; preds = %lor.lhs.false.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

if.end.i28:                                       ; preds = %lor.lhs.false.i26
  call void @xfs_iext_first(ptr noundef %13, ptr noundef nonnull %icur.i) #11
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %13, ptr noundef nonnull %icur.i, ptr noundef nonnull %imap.i) #11
  %24 = ptrtoint ptr %imap.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %imap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp3.i27 = icmp eq i64 %25, 0
  br i1 %cmp3.i27, label %xfs_attr_is_leaf.exit, label %if.end.i28.xfs_attr_is_leaf.exit.thread_crit_edge

if.end.i28.xfs_attr_is_leaf.exit.thread_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

xfs_attr_is_leaf.exit.thread:                     ; preds = %if.end.i28.xfs_attr_is_leaf.exit.thread_crit_edge, %lor.lhs.false.i26.xfs_attr_is_leaf.exit.thread_crit_edge, %if.end9.xfs_attr_is_leaf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i) #11
  br label %if.end14

xfs_attr_is_leaf.exit:                            ; preds = %if.end.i28
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap.i, i32 0, i32 2
  %26 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %br_blockcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %27)
  %cmp5.i = icmp eq i64 %27, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i) #11
  br i1 %cmp5.i, label %if.then12, label %xfs_attr_is_leaf.exit.if.end14_crit_edge

xfs_attr_is_leaf.exit.if.end14_crit_edge:         ; preds = %xfs_attr_is_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %xfs_attr_is_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call fastcc i32 @xfs_attr_leaf_get(ptr noundef %args)
  br label %return

if.end14:                                         ; preds = %xfs_attr_is_leaf.exit.if.end14_crit_edge, %xfs_attr_is_leaf.exit.thread
  %call15 = call fastcc i32 @xfs_attr_node_get(ptr noundef %args)
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then7, %land.lhs.true.i.return_crit_edge, %cond.end.return_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %call13, %if.then12 ], [ %call15, %if.end14 ], [ -61, %land.lhs.true.i.return_crit_edge ], [ -61, %cond.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_shortform_getvalue(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_leaf_get(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !78
  tail call fastcc void @trace_xfs_attr_leaf_get(ptr noundef %args)
  %call = call fastcc i32 @xfs_attr_leaf_hasname(ptr noundef %args, ptr noundef nonnull %bp)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 -61, label %if.then
    i32 -17, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %3, ptr noundef %5) #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bp, align 4
  %call4 = call i32 @xfs_attr3_leaf_getvalue(ptr noundef %7, ptr noundef %args) #11
  %trans5 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %8 = ptrtoint ptr %trans5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans5, align 4
  %10 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %9, ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %if.then ], [ %call4, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_get(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  %state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4, !annotation !78
  tail call fastcc void @trace_xfs_attr_node_get(ptr noundef %args)
  %call = call fastcc i32 @xfs_attr_node_hasname(ptr noundef %args, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call)
  %cmp.not = icmp eq i32 %call, -17
  br i1 %cmp.not, label %if.end, label %entry.out_release_crit_edge

entry.out_release_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %path, align 8
  %sub = add i32 %4, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %2, i32 0, i32 2, i32 1, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %call3 = call i32 @xfs_attr3_leaf_getvalue(ptr noundef %6, ptr noundef %args) #11
  br label %out_release

out_release:                                      ; preds = %if.end, %entry.out_release_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_release_crit_edge ], [ %call3, %if.end ]
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %cmp4.not27 = icmp eq ptr %8, null
  br i1 %cmp4.not27, label %out_release.if.end17_crit_edge, label %land.rhs.lr.ph

out_release.if.end17_crit_edge:                   ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.rhs.lr.ph:                                   ; preds = %out_release
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %9 = phi ptr [ %8, %land.rhs.lr.ph ], [ %19, %for.body.land.rhs_crit_edge ]
  %i.028 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %path5 = getelementptr inbounds %struct.xfs_da_state, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %path5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %path5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.028, i32 %11)
  %cmp7 = icmp slt i32 %i.028, %11
  br i1 %cmp7, label %for.body, label %if.then16

for.body:                                         ; preds = %land.rhs
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans, align 4
  %arrayidx10 = getelementptr %struct.xfs_da_state, ptr %9, i32 0, i32 2, i32 1, i32 %i.028
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 8
  call void @xfs_trans_brelse(ptr noundef %13, ptr noundef %15) #11
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %arrayidx14 = getelementptr %struct.xfs_da_state, ptr %17, i32 0, i32 2, i32 1, i32 %i.028
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx14, align 8
  %inc = add nuw nsw i32 %i.028, 1
  %19 = load ptr, ptr %state, align 4
  %cmp4.not = icmp eq ptr %19, null
  br i1 %cmp4.not, label %for.body.if.end17_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_da_state_free(ptr noundef nonnull %9) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.body.if.end17_crit_edge, %out_release.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #11
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_get(ptr noundef %args) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %0 = load ptr, ptr @xfsstats, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %xs_attr_get = getelementptr inbounds %struct.__xfsstats, ptr %8, i32 0, i32 52
  %9 = ptrtoint ptr %xs_attr_get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xs_attr_get, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %xs_attr_get, align 8
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %11 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dp, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 92
  %15 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_stats, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %20, %17
  %21 = inttoptr i32 %add13 to ptr
  %xs_attr_get14 = getelementptr inbounds %struct.__xfsstats, ptr %21, i32 0, i32 52
  %22 = ptrtoint ptr %xs_attr_get14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xs_attr_get14, align 8
  %inc15 = add i32 %23, 1
  store i32 %inc15, ptr %xs_attr_get14, align 8
  %24 = load ptr, ptr %dp, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 66
  %27 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %m_opstate.i, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 7
  %30 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_attr_geo, align 32
  %32 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %args, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 13
  %33 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %whichfork, align 4
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %36 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %namelen, align 8
  %call23 = tail call i32 @xfs_da_hashname(ptr noundef %35, i32 noundef %37) #11
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %38 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call23, ptr %hashval, align 8
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %39 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %op_flags, align 8
  %40 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dp, align 8
  %call25 = tail call i32 @xfs_ilock_attr_map_shared(ptr noundef %41) #11
  %call26 = tail call i32 @xfs_attr_get_ilocked(ptr noundef %args)
  %42 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dp, align 8
  tail call void @xfs_iunlock(ptr noundef %43, i32 noundef %call25) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_hashname(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_attr_map_shared(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_set_args(ptr noundef %args) local_unnamed_addr #1 align 64 {
entry:
  %leaf_bp = alloca ptr, align 4
  %dac = alloca %struct.xfs_delattr_context, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %leaf_bp) #11
  %0 = ptrtoint ptr %leaf_bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %leaf_bp, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dac) #11
  %1 = call ptr @memset(ptr %dac, i32 0, i32 64)
  %2 = ptrtoint ptr %dac to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %args, ptr %dac, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %call = call fastcc i32 @xfs_attr_set_iter(ptr noundef nonnull %dac, ptr noundef nonnull %leaf_bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp.not = icmp eq i32 %call, -11
  br i1 %cmp.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %do.body
  %call1 = call fastcc i32 @xfs_attr_trans_roll(ptr noundef nonnull %dac)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then2:                                         ; preds = %if.end
  %3 = ptrtoint ptr %leaf_bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %leaf_bp, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  call void @xfs_trans_brelse(ptr noundef %6, ptr noundef nonnull %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then2.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then4 ], [ %call1, %if.then2.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dac) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %leaf_bp) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_set_iter(ptr noundef %dac, ptr noundef %leaf_bp) unnamed_addr #4 align 64 {
entry:
  %icur.i = alloca %struct.xfs_iext_cursor, align 4
  %imap.i = alloca %struct.xfs_bmbt_irec, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bp, align 4
  %dela_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 6
  %5 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dela_state, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb33
    i32 6, label %sw.bb76
    i32 7, label %entry.sw.bb81_crit_edge
    i32 8, label %entry.sw.bb99_crit_edge
    i32 5, label %sw.bb112
    i32 9, label %entry.sw.bb121_crit_edge
    i32 10, label %sw.bb158
    i32 11, label %entry.sw.bb163_crit_edge
    i32 12, label %entry.sw.bb181_crit_edge
  ]

entry.sw.bb181_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb181

entry.sw.bb163_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

entry.sw.bb121_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121

entry.sw.bb99_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb99

entry.sw.bb81_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb81

sw.bb:                                            ; preds = %entry
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_afp.i, align 8
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_format.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %11, label %sw.bb.if.end_crit_edge [
    i8 1, label %sw.bb.if.then_crit_edge
    i8 2, label %xfs_attr_is_shortform.exit
  ]

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xfs_attr_is_shortform.exit:                       ; preds = %sw.bb
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %9, i32 0, i32 7
  %13 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %if_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.i = icmp eq i32 %14, 0
  br i1 %cmp8.i, label %xfs_attr_is_shortform.exit.if.then_crit_edge, label %xfs_attr_is_shortform.exit.if.end_crit_edge

xfs_attr_is_shortform.exit.if.end_crit_edge:      ; preds = %xfs_attr_is_shortform.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xfs_attr_is_shortform.exit.if.then_crit_edge:     ; preds = %xfs_attr_is_shortform.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %xfs_attr_is_shortform.exit.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %call2 = tail call fastcc i32 @xfs_attr_sf_addname(ptr noundef %dac, ptr noundef %leaf_bp)
  br label %cleanup

if.end:                                           ; preds = %xfs_attr_is_shortform.exit.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %15 = ptrtoint ptr %leaf_bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %leaf_bp, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_bhold_release(ptr noundef %18, ptr noundef nonnull %16) #11
  %19 = ptrtoint ptr %leaf_bp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %leaf_bp, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %20 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_afp.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur.i) #11
  %22 = ptrtoint ptr %icur.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur.i, align 4, !annotation !78
  %23 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap.i) #11
  %25 = call ptr @memset(ptr %imap.i, i32 255, i32 32)
  %if_nextents.i305 = getelementptr inbounds %struct.xfs_ifork, ptr %21, i32 0, i32 7
  %26 = ptrtoint ptr %if_nextents.i305 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %if_nextents.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end4.xfs_attr_is_leaf.exit.thread_crit_edge

if.end4.xfs_attr_is_leaf.exit.thread_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end4
  %if_format.i306 = getelementptr inbounds %struct.xfs_ifork, ptr %21, i32 0, i32 6
  %28 = ptrtoint ptr %if_format.i306 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %if_format.i306, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp1.not.i = icmp eq i8 %29, 2
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.xfs_attr_is_leaf.exit.thread_crit_edge

lor.lhs.false.i.xfs_attr_is_leaf.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @xfs_iext_first(ptr noundef %21, ptr noundef nonnull %icur.i) #11
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %21, ptr noundef nonnull %icur.i, ptr noundef nonnull %imap.i) #11
  %30 = ptrtoint ptr %imap.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %imap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp3.i = icmp eq i64 %31, 0
  br i1 %cmp3.i, label %xfs_attr_is_leaf.exit, label %if.end.i.xfs_attr_is_leaf.exit.thread_crit_edge

if.end.i.xfs_attr_is_leaf.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

xfs_attr_is_leaf.exit.thread:                     ; preds = %if.end.i.xfs_attr_is_leaf.exit.thread_crit_edge, %lor.lhs.false.i.xfs_attr_is_leaf.exit.thread_crit_edge, %if.end4.xfs_attr_is_leaf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i) #11
  br label %if.else20

xfs_attr_is_leaf.exit:                            ; preds = %if.end.i
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap.i, i32 0, i32 2
  %32 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %br_blockcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %33)
  %cmp5.i = icmp eq i64 %33, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i) #11
  br i1 %cmp5.i, label %if.then6, label %xfs_attr_is_leaf.exit.if.else20_crit_edge

xfs_attr_is_leaf.exit.if.else20_crit_edge:        ; preds = %xfs_attr_is_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else20

if.then6:                                         ; preds = %xfs_attr_is_leaf.exit
  %34 = ptrtoint ptr %leaf_bp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %leaf_bp, align 4
  %call7 = call fastcc i32 @xfs_attr_leaf_try_add(ptr noundef %1, ptr noundef %35)
  %36 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call7, label %if.then6.cleanup_crit_edge [
    i32 -28, label %if.then9
    i32 0, label %if.then6.if.end30_crit_edge
  ]

if.then6.if.end30_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  %call10 = call i32 @xfs_attr3_leaf_to_node(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or = or i32 %38, 1
  store i32 %or, ptr %flags, align 4
  %39 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dela_state, align 8
  %41 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dp1, align 8
  call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef %40, ptr noundef %42)
  br label %cleanup

if.else20:                                        ; preds = %xfs_attr_is_leaf.exit.if.else20_crit_edge, %xfs_attr_is_leaf.exit.thread
  %call21 = call fastcc i32 @xfs_attr_node_addname_find_attr(ptr noundef %dac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.else20.cleanup_crit_edge

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.else20
  %call25 = call fastcc i32 @xfs_attr_node_addname(ptr noundef %dac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end30:                                         ; preds = %if.end24.if.end30_crit_edge, %if.then6.if.end30_crit_edge
  %storemerge = phi i32 [ 4, %if.then6.if.end30_crit_edge ], [ 5, %if.end24.if.end30_crit_edge ]
  %43 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %dela_state, align 8
  %44 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dp1, align 8
  call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef %storemerge, ptr noundef %45)
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %flags34 = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %46 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags34, align 4
  %and = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp35 = icmp eq i32 %and, 0
  br i1 %cmp35, label %if.then36, label %sw.bb33.if.end46_crit_edge

sw.bb33.if.end46_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then36:                                        ; preds = %sw.bb33
  %or38 = or i32 %47, 2
  %48 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or38, ptr %flags34, align 4
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %49 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rmtblkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp39.not = icmp eq i32 %50, 0
  br i1 %cmp39.not, label %if.then36.if.end46_crit_edge, label %if.then40

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then40:                                        ; preds = %if.then36
  %call41 = tail call i32 @xfs_attr_rmtval_find_space(ptr noundef %dac) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end46_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end46:                                         ; preds = %if.then40.if.end46_crit_edge, %if.then36.if.end46_crit_edge, %sw.bb33.if.end46_crit_edge
  %blkcnt = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 3
  %51 = ptrtoint ptr %blkcnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blkcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp47 = icmp sgt i32 %52, 0
  br i1 %cmp47, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end46
  %call49 = tail call i32 @xfs_attr_rmtval_set_blk(ptr noundef %dac) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dela_state, align 8
  %55 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef %54, ptr noundef %56)
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  %call56 = tail call i32 @xfs_attr_rmtval_set_value(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 24
  %57 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %op_flags, align 8
  %and60 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.end59
  %rmtblkno63 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %59 = ptrtoint ptr %rmtblkno63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rmtblkno63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp64.not = icmp eq i32 %60, 0
  br i1 %cmp64.not, label %if.then62.cleanup_crit_edge, label %if.then65

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = tail call i32 @xfs_attr3_leaf_clearflag(ptr noundef %1) #11
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  %call69 = tail call i32 @xfs_attr3_leaf_flipflags(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %dela_state, align 8
  %62 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef 6, ptr noundef %63)
  br label %cleanup

sw.bb76:                                          ; preds = %entry
  tail call fastcc void @xfs_attr_restore_rmt_blk(ptr noundef %1)
  %call77 = tail call i32 @xfs_attr_rmtval_invalidate(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %sw.bb76.sw.bb81_crit_edge, label %sw.bb76.cleanup_crit_edge

sw.bb76.cleanup_crit_edge:                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb76.sw.bb81_crit_edge:                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76.sw.bb81_crit_edge, %entry.sw.bb81_crit_edge
  %64 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %dela_state, align 8
  %rmtblkno83 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %65 = ptrtoint ptr %rmtblkno83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rmtblkno83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool84.not = icmp eq i32 %66, 0
  br i1 %tobool84.not, label %sw.bb81.sw.bb99_crit_edge, label %if.then85

sw.bb81.sw.bb99_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb99

if.then85:                                        ; preds = %sw.bb81
  %call86 = tail call i32 @xfs_attr_rmtval_remove(ptr noundef %dac) #11
  %67 = zext i32 %call86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call86, label %if.then85.cleanup_crit_edge [
    i32 -11, label %if.then88
    i32 0, label %if.end94
  ]

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then88:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dela_state, align 8
  %70 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef %69, ptr noundef %71)
  br label %cleanup

if.end94:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 8, ptr %dela_state, align 8
  %73 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef 8, ptr noundef %74)
  br label %cleanup

sw.bb99:                                          ; preds = %sw.bb81.sw.bb99_crit_edge, %entry.sw.bb99_crit_edge
  %trans100 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %75 = ptrtoint ptr %trans100 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %trans100, align 4
  %77 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dp1, align 8
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 14
  %79 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blkno, align 8
  %call102 = call i32 @xfs_attr3_leaf_read(ptr noundef %76, ptr noundef %78, i32 noundef %80, ptr noundef nonnull %bp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %sw.bb99.cleanup_crit_edge

sw.bb99.cleanup_crit_edge:                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end105:                                        ; preds = %sw.bb99
  %81 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bp, align 4
  %call106 = call i32 @xfs_attr3_leaf_remove(ptr noundef %82, ptr noundef %1) #11
  %83 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bp, align 4
  %call107 = call i32 @xfs_attr_shortform_allfit(ptr noundef %84, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end105.cleanup_crit_edge, label %if.then109

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bp, align 4
  %call110 = call i32 @xfs_attr3_leaf_to_shortform(ptr noundef %86, ptr noundef %1, i32 noundef %call107) #11
  br label %cleanup

sw.bb112:                                         ; preds = %entry
  %rmtblkno113 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %rmtblkno113 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rmtblkno113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp114.not = icmp eq i32 %88, 0
  br i1 %cmp114.not, label %sw.bb112.sw.bb121_crit_edge, label %if.then115

sw.bb112.sw.bb121_crit_edge:                      ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121

if.then115:                                       ; preds = %sw.bb112
  %call116 = tail call i32 @xfs_attr_rmtval_find_space(ptr noundef %dac) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then115.sw.bb121_crit_edge, label %if.then115.cleanup_crit_edge

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then115.sw.bb121_crit_edge:                    ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121

sw.bb121:                                         ; preds = %if.then115.sw.bb121_crit_edge, %sw.bb112.sw.bb121_crit_edge, %entry.sw.bb121_crit_edge
  %89 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 9, ptr %dela_state, align 8
  %rmtblkno123 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %90 = ptrtoint ptr %rmtblkno123 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rmtblkno123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp124.not = icmp eq i32 %91, 0
  br i1 %cmp124.not, label %sw.bb121.if.end140_crit_edge, label %if.then125

sw.bb121.if.end140_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then125:                                       ; preds = %sw.bb121
  %blkcnt126 = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 3
  %92 = ptrtoint ptr %blkcnt126 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blkcnt126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp127 = icmp sgt i32 %93, 0
  br i1 %cmp127, label %if.then128, label %if.end135

if.then128:                                       ; preds = %if.then125
  %call129 = tail call i32 @xfs_attr_rmtval_set_blk(ptr noundef %dac) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.then128.cleanup_crit_edge

if.then128.cleanup_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end132:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dela_state, align 8
  %96 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef %95, ptr noundef %97)
  br label %cleanup

if.end135:                                        ; preds = %if.then125
  %call136 = tail call i32 @xfs_attr_rmtval_set_value(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end135.if.end140_crit_edge, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end135.if.end140_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.end140:                                        ; preds = %if.end135.if.end140_crit_edge, %sw.bb121.if.end140_crit_edge
  %op_flags141 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 24
  %98 = ptrtoint ptr %op_flags141 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %op_flags141, align 8
  %and142 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.then144, label %if.end150

if.then144:                                       ; preds = %if.end140
  %100 = ptrtoint ptr %rmtblkno123 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rmtblkno123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp146.not = icmp eq i32 %101, 0
  br i1 %cmp146.not, label %if.then144.cleanup_crit_edge, label %if.then147

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then147:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  %call148 = tail call i32 @xfs_attr3_leaf_clearflag(ptr noundef %1) #11
  br label %cleanup

if.end150:                                        ; preds = %if.end140
  %call151 = tail call i32 @xfs_attr3_leaf_flipflags(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end150.cleanup_crit_edge

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end154:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 10, ptr %dela_state, align 8
  %103 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef 10, ptr noundef %104)
  br label %cleanup

sw.bb158:                                         ; preds = %entry
  tail call fastcc void @xfs_attr_restore_rmt_blk(ptr noundef %1)
  %call159 = tail call i32 @xfs_attr_rmtval_invalidate(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %sw.bb158.sw.bb163_crit_edge, label %sw.bb158.cleanup_crit_edge

sw.bb158.cleanup_crit_edge:                       ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb158.sw.bb163_crit_edge:                      ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

sw.bb163:                                         ; preds = %sw.bb158.sw.bb163_crit_edge, %entry.sw.bb163_crit_edge
  %105 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 11, ptr %dela_state, align 8
  %rmtblkno165 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %106 = ptrtoint ptr %rmtblkno165 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rmtblkno165, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool166.not = icmp eq i32 %107, 0
  br i1 %tobool166.not, label %sw.bb163.sw.bb181_crit_edge, label %if.then167

sw.bb163.sw.bb181_crit_edge:                      ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb181

if.then167:                                       ; preds = %sw.bb163
  %call168 = tail call i32 @xfs_attr_rmtval_remove(ptr noundef %dac) #11
  %108 = zext i32 %call168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call168, label %if.then167.cleanup_crit_edge [
    i32 -11, label %if.then170
    i32 0, label %if.end176
  ]

if.then167.cleanup_crit_edge:                     ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then170:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dela_state, align 8
  %111 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef %110, ptr noundef %112)
  br label %cleanup

if.end176:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 12, ptr %dela_state, align 8
  %114 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_set_iter_return(i32 noundef 12, ptr noundef %115)
  br label %cleanup

sw.bb181:                                         ; preds = %sw.bb163.sw.bb181_crit_edge, %entry.sw.bb181_crit_edge
  %call182 = tail call fastcc i32 @xfs_attr_node_addname_clear_incomplete(ptr noundef %dac)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 634) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb181, %if.end176, %if.then170, %if.then167.cleanup_crit_edge, %sw.bb158.cleanup_crit_edge, %if.end154, %if.end150.cleanup_crit_edge, %if.then147, %if.then144.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %if.end132, %if.then128.cleanup_crit_edge, %if.then115.cleanup_crit_edge, %if.then109, %if.end105.cleanup_crit_edge, %sw.bb99.cleanup_crit_edge, %if.end94, %if.then88, %if.then85.cleanup_crit_edge, %sw.bb76.cleanup_crit_edge, %if.end72, %if.end68.cleanup_crit_edge, %if.then65, %if.then62.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end52, %if.then48.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.end30, %if.end24.cleanup_crit_edge, %if.else20.cleanup_crit_edge, %if.end12, %if.then9.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -11, %if.end176 ], [ -11, %if.end132 ], [ -11, %if.end154 ], [ -11, %if.end94 ], [ -11, %if.end52 ], [ -11, %if.end72 ], [ %call2, %if.then ], [ -11, %if.end12 ], [ -11, %if.end30 ], [ %call10, %if.then9.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ %call21, %if.else20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call41, %if.then40.cleanup_crit_edge ], [ %call49, %if.then48.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %call66, %if.then65 ], [ 0, %if.then62.cleanup_crit_edge ], [ %call69, %if.end68.cleanup_crit_edge ], [ %call77, %sw.bb76.cleanup_crit_edge ], [ %call86, %if.then85.cleanup_crit_edge ], [ -11, %if.then88 ], [ %call102, %sw.bb99.cleanup_crit_edge ], [ %call110, %if.then109 ], [ 0, %if.end105.cleanup_crit_edge ], [ %call116, %if.then115.cleanup_crit_edge ], [ %call129, %if.then128.cleanup_crit_edge ], [ %call136, %if.end135.cleanup_crit_edge ], [ %call159, %sw.bb158.cleanup_crit_edge ], [ %call168, %if.then167.cleanup_crit_edge ], [ -11, %if.then170 ], [ 0, %sw.default ], [ %call182, %sw.bb181 ], [ %call151, %if.end150.cleanup_crit_edge ], [ %call148, %if.then147 ], [ 0, %if.then144.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_trans_roll(ptr nocapture noundef %dac) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %flags = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and2 = and i32 %3, -2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and2, ptr %flags, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %call = tail call i32 @xfs_defer_finish(ptr noundef %trans) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %trans3 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp, align 8
  %call4 = tail call i32 @xfs_trans_roll_inode(ptr noundef %trans3, ptr noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %error.0 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_remove_args(ptr noundef %args) local_unnamed_addr #1 align 64 {
entry:
  %dac = alloca %struct.xfs_delattr_context, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dac) #11
  %0 = call ptr @memset(ptr %dac, i32 0, i32 64)
  %1 = ptrtoint ptr %dac to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %args, ptr %dac, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %call = call i32 @xfs_attr_remove_iter(ptr noundef nonnull %dac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp.not = icmp eq i32 %call, -11
  br i1 %cmp.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %do.body
  %call1 = call fastcc i32 @xfs_attr_trans_roll(ptr noundef nonnull %dac)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dac) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_remove_iter(ptr noundef %dac) local_unnamed_addr #1 align 64 {
entry:
  %icur.i148 = alloca %struct.xfs_iext_cursor, align 4
  %imap.i149 = alloca %struct.xfs_bmbt_irec, align 8
  %icur.i = alloca %struct.xfs_iext_cursor, align 4
  %imap.i = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %da_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 4
  %2 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da_state, align 8
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp2, align 8
  tail call fastcc void @trace_xfs_attr_node_removename(ptr noundef %1)
  %dela_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 6
  %6 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dela_state, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb20_crit_edge
    i32 2, label %if.then52
    i32 3, label %entry.sw.bb73_crit_edge
  ]

entry.sw.bb73_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20

sw.bb:                                            ; preds = %entry
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 23
  %9 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_forkoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 0
  br i1 %cmp.not.i, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_afp.i, align 8
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp3.i = icmp eq i8 %14, 2
  br i1 %cmp3.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %if_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.i = icmp eq i32 %16, 0
  br i1 %cmp6.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %17 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_afp.i, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp eq i8 %20, 1
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @xfs_attr_sf_removename(ptr noundef %1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur.i) #11
  %21 = ptrtoint ptr %icur.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur.i, align 4, !annotation !78
  %22 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap.i) #11
  %24 = call ptr @memset(ptr %imap.i, i32 255, i32 32)
  %if_nextents.i141 = getelementptr inbounds %struct.xfs_ifork, ptr %18, i32 0, i32 7
  %25 = ptrtoint ptr %if_nextents.i141 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %if_nextents.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.not.i142 = icmp eq i32 %26, 1
  br i1 %cmp.not.i142, label %lor.lhs.false.i144, label %if.end6.xfs_attr_is_leaf.exit.thread_crit_edge

if.end6.xfs_attr_is_leaf.exit.thread_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

lor.lhs.false.i144:                               ; preds = %if.end6
  %27 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp1.not.i = icmp eq i8 %28, 2
  br i1 %cmp1.not.i, label %if.end.i146, label %lor.lhs.false.i144.xfs_attr_is_leaf.exit.thread_crit_edge

lor.lhs.false.i144.xfs_attr_is_leaf.exit.thread_crit_edge: ; preds = %lor.lhs.false.i144
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

if.end.i146:                                      ; preds = %lor.lhs.false.i144
  call void @xfs_iext_first(ptr noundef %18, ptr noundef nonnull %icur.i) #11
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %18, ptr noundef nonnull %icur.i, ptr noundef nonnull %imap.i) #11
  %29 = ptrtoint ptr %imap.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %imap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp3.i145 = icmp eq i64 %30, 0
  br i1 %cmp3.i145, label %xfs_attr_is_leaf.exit, label %if.end.i146.xfs_attr_is_leaf.exit.thread_crit_edge

if.end.i146.xfs_attr_is_leaf.exit.thread_crit_edge: ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread

xfs_attr_is_leaf.exit.thread:                     ; preds = %if.end.i146.xfs_attr_is_leaf.exit.thread_crit_edge, %lor.lhs.false.i144.xfs_attr_is_leaf.exit.thread_crit_edge, %if.end6.xfs_attr_is_leaf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i) #11
  br label %if.end10

xfs_attr_is_leaf.exit:                            ; preds = %if.end.i146
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap.i, i32 0, i32 2
  %31 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %br_blockcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %32)
  %cmp5.i = icmp eq i64 %32, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i) #11
  br i1 %cmp5.i, label %if.then8, label %xfs_attr_is_leaf.exit.if.end10_crit_edge

xfs_attr_is_leaf.exit.if.end10_crit_edge:         ; preds = %xfs_attr_is_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %xfs_attr_is_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call fastcc i32 @xfs_attr_leaf_removename(ptr noundef %1)
  br label %cleanup

if.end10:                                         ; preds = %xfs_attr_is_leaf.exit.if.end10_crit_edge, %xfs_attr_is_leaf.exit.thread
  %33 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %da_state, align 8
  %tobool12.not = icmp eq ptr %34, null
  br i1 %tobool12.not, label %if.then13, label %if.end10.sw.bb20_crit_edge

if.end10.sw.bb20_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20

if.then13:                                        ; preds = %if.end10
  %call14 = call fastcc i32 @xfs_attr_node_removename_setup(ptr noundef %dac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %da_state, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.end17, %if.end10.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge
  %state.0 = phi ptr [ %3, %entry.sw.bb20_crit_edge ], [ %3, %if.end10.sw.bb20_crit_edge ], [ %36, %if.end17 ]
  %37 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %dela_state, align 8
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rmtblkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp22.not = icmp eq i32 %39, 0
  br i1 %cmp22.not, label %sw.bb20.if.end57_crit_edge, label %if.then24

sw.bb20.if.end57_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then24:                                        ; preds = %sw.bb20
  %call25 = call i32 @xfs_attr_rmtval_remove(ptr noundef %dac) #11
  %40 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call25, label %if.then24.out_crit_edge [
    i32 -11, label %if.then28
    i32 0, label %if.end34
  ]

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dela_state, align 8
  %43 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dp2, align 8
  call fastcc void @trace_xfs_attr_remove_iter_return(i32 noundef %42, ptr noundef %44)
  br label %cleanup

if.end34:                                         ; preds = %if.then24
  %45 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rmtblkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp36 = icmp eq i32 %46, 0
  br i1 %cmp36, label %if.end34.cond.end_crit_edge, label %cond.false, !prof !79

if.end34.cond.end_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1455) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end34.cond.end_crit_edge
  %call40 = call fastcc i32 @xfs_attr_refillstate(ptr noundef %state.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end43:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %dela_state, align 8
  %flags = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %or = or i32 %49, 1
  store i32 %or, ptr %flags, align 4
  %50 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dp2, align 8
  call fastcc void @trace_xfs_attr_remove_iter_return(i32 noundef 2, ptr noundef %51)
  br label %cleanup

if.then52:                                        ; preds = %entry
  %call53 = tail call fastcc i32 @xfs_attr_refillstate(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end57_crit_edge, label %if.then52.out_crit_edge

if.then52.out_crit_edge:                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end57:                                         ; preds = %if.then52.if.end57_crit_edge, %sw.bb20.if.end57_crit_edge
  %state.1170 = phi ptr [ %3, %if.then52.if.end57_crit_edge ], [ %state.0, %sw.bb20.if.end57_crit_edge ]
  %call58 = call fastcc i32 @xfs_attr_node_removename(ptr noundef %1, ptr noundef %state.1170)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end57.sw.bb73_crit_edge, label %land.lhs.true

if.end57.sw.bb73_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

land.lhs.true:                                    ; preds = %if.end57
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state.1170, i32 0, i32 2
  %52 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp60 = icmp sgt i32 %53, 1
  br i1 %cmp60, label %if.then62, label %land.lhs.true.sw.bb73_crit_edge

land.lhs.true.sw.bb73_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

if.then62:                                        ; preds = %land.lhs.true
  %call63 = call i32 @xfs_da3_join(ptr noundef %state.1170) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then62.out_crit_edge

if.then62.out_crit_edge:                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end66:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %flags67 = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %54 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags67, align 4
  %or68 = or i32 %55, 1
  store i32 %or68, ptr %flags67, align 4
  %56 = ptrtoint ptr %dela_state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %dela_state, align 8
  %57 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dp2, align 8
  call fastcc void @trace_xfs_attr_remove_iter_return(i32 noundef 3, ptr noundef %58)
  br label %cleanup

sw.bb73:                                          ; preds = %land.lhs.true.sw.bb73_crit_edge, %if.end57.sw.bb73_crit_edge, %entry.sw.bb73_crit_edge
  %state.2 = phi ptr [ %3, %entry.sw.bb73_crit_edge ], [ %state.1170, %land.lhs.true.sw.bb73_crit_edge ], [ %state.1170, %if.end57.sw.bb73_crit_edge ]
  %i_afp.i150 = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 6
  %59 = ptrtoint ptr %i_afp.i150 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_afp.i150, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur.i148) #11
  %61 = ptrtoint ptr %icur.i148 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur.i148, align 4, !annotation !78
  %62 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur.i148, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %62, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap.i149) #11
  %64 = call ptr @memset(ptr %imap.i149, i32 255, i32 32)
  %if_nextents.i151 = getelementptr inbounds %struct.xfs_ifork, ptr %60, i32 0, i32 7
  %65 = ptrtoint ptr %if_nextents.i151 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %if_nextents.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.not.i152 = icmp eq i32 %66, 1
  br i1 %cmp.not.i152, label %lor.lhs.false.i155, label %sw.bb73.xfs_attr_is_leaf.exit163.thread_crit_edge

sw.bb73.xfs_attr_is_leaf.exit163.thread_crit_edge: ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit163.thread

lor.lhs.false.i155:                               ; preds = %sw.bb73
  %if_format.i153 = getelementptr inbounds %struct.xfs_ifork, ptr %60, i32 0, i32 6
  %67 = ptrtoint ptr %if_format.i153 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %if_format.i153, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp1.not.i154 = icmp eq i8 %68, 2
  br i1 %cmp1.not.i154, label %if.end.i158, label %lor.lhs.false.i155.xfs_attr_is_leaf.exit163.thread_crit_edge

lor.lhs.false.i155.xfs_attr_is_leaf.exit163.thread_crit_edge: ; preds = %lor.lhs.false.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit163.thread

if.end.i158:                                      ; preds = %lor.lhs.false.i155
  call void @xfs_iext_first(ptr noundef %60, ptr noundef nonnull %icur.i148) #11
  %call.i156 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %60, ptr noundef nonnull %icur.i148, ptr noundef nonnull %imap.i149) #11
  %69 = ptrtoint ptr %imap.i149 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %imap.i149, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %cmp3.i157 = icmp eq i64 %70, 0
  br i1 %cmp3.i157, label %xfs_attr_is_leaf.exit163, label %if.end.i158.xfs_attr_is_leaf.exit163.thread_crit_edge

if.end.i158.xfs_attr_is_leaf.exit163.thread_crit_edge: ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit163.thread

xfs_attr_is_leaf.exit163.thread:                  ; preds = %if.end.i158.xfs_attr_is_leaf.exit163.thread_crit_edge, %lor.lhs.false.i155.xfs_attr_is_leaf.exit163.thread_crit_edge, %sw.bb73.xfs_attr_is_leaf.exit163.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i149) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i148) #11
  br label %out

xfs_attr_is_leaf.exit163:                         ; preds = %if.end.i158
  %br_blockcount.i159 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap.i149, i32 0, i32 2
  %71 = ptrtoint ptr %br_blockcount.i159 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %br_blockcount.i159, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %72)
  %cmp5.i160 = icmp eq i64 %72, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i149) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i148) #11
  br i1 %cmp5.i160, label %if.end77, label %xfs_attr_is_leaf.exit163.out_crit_edge

xfs_attr_is_leaf.exit163.out_crit_edge:           ; preds = %xfs_attr_is_leaf.exit163
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end77:                                         ; preds = %xfs_attr_is_leaf.exit163
  %call76 = call fastcc i32 @xfs_attr_node_shrink(ptr noundef %1, ptr noundef %state.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call76)
  %cmp78.not = icmp eq i32 %call76, -11
  br i1 %cmp78.not, label %cond.false87, label %if.end77.out_crit_edge, !prof !80

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cond.false87:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1504) #11
  br label %out

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1507) #11
  br label %out

out:                                              ; preds = %sw.default, %cond.false87, %if.end77.out_crit_edge, %xfs_attr_is_leaf.exit163.out_crit_edge, %xfs_attr_is_leaf.exit163.thread, %if.then62.out_crit_edge, %if.then52.out_crit_edge, %cond.end.out_crit_edge, %if.then24.out_crit_edge
  %state.3 = phi ptr [ %3, %sw.default ], [ %state.2, %if.end77.out_crit_edge ], [ %state.2, %cond.false87 ], [ %3, %if.then52.out_crit_edge ], [ %state.1170, %if.then62.out_crit_edge ], [ %state.0, %cond.end.out_crit_edge ], [ %state.0, %if.then24.out_crit_edge ], [ %state.2, %xfs_attr_is_leaf.exit163.out_crit_edge ], [ %state.2, %xfs_attr_is_leaf.exit163.thread ]
  %error.5 = phi i32 [ -22, %sw.default ], [ %call76, %if.end77.out_crit_edge ], [ -11, %cond.false87 ], [ %call53, %if.then52.out_crit_edge ], [ %call63, %if.then62.out_crit_edge ], [ %call40, %cond.end.out_crit_edge ], [ %call25, %if.then24.out_crit_edge ], [ 0, %xfs_attr_is_leaf.exit163.out_crit_edge ], [ 0, %xfs_attr_is_leaf.exit163.thread ]
  %tobool89.not = icmp eq ptr %state.3, null
  br i1 %tobool89.not, label %out.cleanup_crit_edge, label %if.then90

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then90:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_da_state_free(ptr noundef nonnull %state.3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %out.cleanup_crit_edge, %if.end66, %if.end43, %if.then28, %if.then13.cleanup_crit_edge, %if.then8, %if.then4, %land.lhs.true.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.end66 ], [ -11, %if.then28 ], [ -11, %if.end43 ], [ %call5, %if.then4 ], [ %call9, %if.then8 ], [ %call14, %if.then13.cleanup_crit_edge ], [ %error.5, %if.then90 ], [ %error.5, %out.cleanup_crit_edge ], [ -61, %land.lhs.true.i.cleanup_crit_edge ], [ -61, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_set(ptr noundef %args) local_unnamed_addr #1 align 64 {
entry:
  %icur.i.i = alloca %struct.xfs_iext_cursor, align 4
  %imap.i.i = alloca %struct.xfs_bmbt_irec, align 8
  %bp.i = alloca ptr, align 4
  %tres = alloca %struct.xfs_trans_res, align 4
  %local = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tres) #11
  %4 = ptrtoint ptr %tres to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tres, align 4, !annotation !78
  %5 = getelementptr inbounds %struct.xfs_trans_res, ptr %tres, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !78
  %7 = getelementptr inbounds %struct.xfs_trans_res, ptr %tres, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !78
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  %9 = ptrtoint ptr %attr_filter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_filter, align 8
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %local) #11
  %11 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %local, align 4, !annotation !78
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 66
  %14 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %m_opstate.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup185_crit_edge

entry.cleanup185_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup185

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @xfs_qm_dqattach(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup185_crit_edge

if.end.cleanup185_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup185

if.end6:                                          ; preds = %if.end
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_attr_geo, align 32
  %19 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %args, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 13
  %20 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %whichfork, align 4
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %23 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %namelen, align 8
  %call7 = tail call i32 @xfs_da_hashname(ptr noundef %22, i32 noundef %24) #11
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %25 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call7, ptr %hashval, align 8
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %26 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %op_flags, align 8
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %value, align 8
  %tobool8.not = icmp eq ptr %28, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %29 = load ptr, ptr @xfsstats, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i266 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i266 to ptr
  %cpu67 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu67, align 4
  %arrayidx68 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx68, align 4
  %add69 = add i32 %36, %30
  %37 = inttoptr i32 %add69 to ptr
  br i1 %tobool8.not, label %do.body59, label %do.body10

do.body10:                                        ; preds = %if.end6
  %xs_attr_set = getelementptr inbounds %struct.__xfsstats, ptr %37, i32 0, i32 53
  %38 = ptrtoint ptr %xs_attr_set to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xs_attr_set, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %xs_attr_set, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 92
  %40 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m_stats, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu67, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %46, %42
  %47 = inttoptr i32 %add23 to ptr
  %xs_attr_set24 = getelementptr inbounds %struct.__xfsstats, ptr %47, i32 0, i32 53
  %48 = ptrtoint ptr %xs_attr_set24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xs_attr_set24, align 4
  %inc25 = add i32 %49, 1
  store i32 %inc25, ptr %xs_attr_set24, align 4
  %50 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %op_flags, align 8
  %or = or i32 %51, 4
  store i32 %or, ptr %op_flags, align 8
  %call29 = call fastcc i32 @xfs_attr_calc_size(ptr noundef %args, ptr noundef nonnull %local)
  %total30 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %52 = ptrtoint ptr %total30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call29, ptr %total30, align 8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %53 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp.not = icmp eq i8 %54, 0
  br i1 %cmp.not, label %if.then34, label %do.body10.if.end46_crit_edge

do.body10.if.end46_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then34:                                        ; preds = %do.body10
  %55 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %namelen, align 8
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %57 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %valuelen, align 4
  %conv.i = and i32 %56, 255
  %conv1.i = and i32 %58, 255
  %add2.i = add nuw nsw i32 %conv.i, 7
  %add39 = add nuw nsw i32 %add2.i, %conv1.i
  %and.lobit = lshr exact i32 %and, 1
  %call42 = call i32 @xfs_bmap_add_attrfork(ptr noundef %1, i32 noundef %add39, i32 noundef %and.lobit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then34.if.end46_crit_edge, label %if.then34.cleanup185_crit_edge

if.then34.cleanup185_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup185

if.then34.if.end46_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end46:                                         ; preds = %if.then34.if.end46_crit_edge, %do.body10.if.end46_crit_edge
  %tr_attrsetm = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 65, i32 15
  %59 = ptrtoint ptr %tr_attrsetm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tr_attrsetm, align 4
  %tr_attrsetrt = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 65, i32 16
  %61 = ptrtoint ptr %tr_attrsetrt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tr_attrsetrt, align 8
  %63 = ptrtoint ptr %total30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %total30, align 8
  %mul = mul i32 %64, %62
  %add50 = add i32 %mul, %60
  %65 = ptrtoint ptr %tres to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add50, ptr %tres, align 4
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %5, align 4
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %7, align 4
  %68 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool53.not = icmp eq i32 %69, 0
  br i1 %tobool53.not, label %if.then54, label %if.end46.if.end103_crit_edge

if.end46.if.end103_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %valuelen55 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %70 = ptrtoint ptr %valuelen55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %valuelen55, align 4
  %call56 = call i32 @xfs_attr3_rmt_blocks(ptr noundef %3, i32 noundef %71) #11
  br label %if.end103

do.body59:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %xs_attr_remove = getelementptr inbounds %struct.__xfsstats, ptr %37, i32 0, i32 54
  %72 = ptrtoint ptr %xs_attr_remove to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xs_attr_remove, align 8
  %inc70 = add i32 %73, 1
  store i32 %inc70, ptr %xs_attr_remove, align 8
  %m_stats77 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 92
  %74 = ptrtoint ptr %m_stats77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %m_stats77, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu67, align 4
  %arrayidx82 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %80, %76
  %81 = inttoptr i32 %add83 to ptr
  %xs_attr_remove84 = getelementptr inbounds %struct.__xfsstats, ptr %81, i32 0, i32 54
  %82 = ptrtoint ptr %xs_attr_remove84 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %xs_attr_remove84, align 8
  %inc85 = add i32 %83, 1
  store i32 %inc85, ptr %xs_attr_remove84, align 8
  %tr_attrrm = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 65, i32 17
  %84 = call ptr @memcpy(ptr %tres, ptr %tr_attrrm, i32 12)
  %arrayidx98 = getelementptr %struct.xfs_mount, ptr %3, i32 0, i32 43, i32 1
  %85 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx98, align 4
  %87 = mul i32 %86, 5
  %mul101 = add i32 %87, -5
  %call102 = tail call i32 @xfs_attr3_rmt_blocks(ptr noundef %3, i32 noundef 65536) #11
  br label %if.end103

if.end103:                                        ; preds = %do.body59, %if.then54, %if.end46.if.end103_crit_edge
  %total.0 = phi i32 [ %64, %if.end46.if.end103_crit_edge ], [ %64, %if.then54 ], [ %mul101, %do.body59 ]
  %rmt_blks.0 = phi i32 [ 0, %if.end46.if.end103_crit_edge ], [ %call56, %if.then54 ], [ %call102, %do.body59 ]
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %call105 = call i32 @xfs_trans_alloc_inode(ptr noundef %1, ptr noundef nonnull %tres, i32 noundef %total.0, i32 noundef 0, i1 noundef zeroext %tobool, ptr noundef %trans) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end103.cleanup185_crit_edge

if.end103.cleanup185_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup185

if.end108:                                        ; preds = %if.end103
  %88 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %value, align 8
  %tobool110.not = icmp eq ptr %89, null
  br i1 %tobool110.not, label %lor.lhs.false, label %if.end108.if.then113_crit_edge

if.end108.if.then113_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

lor.lhs.false:                                    ; preds = %if.end108
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %90 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i_forkoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp.not.i = icmp eq i8 %91, 0
  br i1 %cmp.not.i, label %lor.lhs.false.if.end122_crit_edge, label %lor.lhs.false.i

lor.lhs.false.if.end122_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %92 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_afp.i, align 8
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp3.i = icmp eq i8 %95, 2
  br i1 %cmp3.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.then113_crit_edge

lor.lhs.false.i.if.then113_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %93, i32 0, i32 7
  %96 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %if_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp6.i = icmp eq i32 %97, 0
  br i1 %cmp6.i, label %land.lhs.true.i.if.end122_crit_edge, label %land.lhs.true.i.if.then113_crit_edge

land.lhs.true.i.if.then113_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

land.lhs.true.i.if.end122_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then113:                                       ; preds = %land.lhs.true.i.if.then113_crit_edge, %lor.lhs.false.i.if.then113_crit_edge, %if.end108.if.then113_crit_edge
  %98 = call i32 @llvm.smax.i32(i32 %rmt_blks.0, i32 1)
  %add117 = add nuw i32 %98, 5
  %call118 = call i32 @xfs_iext_count_may_overflow(ptr noundef %1, i32 noundef 1, i32 noundef %add117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then113.if.end122_crit_edge, label %if.then113.out_trans_cancel_crit_edge

if.then113.out_trans_cancel_crit_edge:            ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

if.then113.if.end122_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.end122:                                        ; preds = %if.then113.if.end122_crit_edge, %land.lhs.true.i.if.end122_crit_edge, %lor.lhs.false.if.end122_crit_edge
  %99 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dp1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i) #11
  %101 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %bp.i, align 4
  %i_forkoff.i.i = getelementptr inbounds %struct.xfs_inode, ptr %100, i32 0, i32 23
  %102 = ptrtoint ptr %i_forkoff.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %i_forkoff.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp.not.i.i = icmp eq i8 %103, 0
  br i1 %cmp.not.i.i, label %if.end122.xfs_attr_lookup.exit_crit_edge, label %lor.lhs.false.i.i

if.end122.xfs_attr_lookup.exit_crit_edge:         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_lookup.exit

lor.lhs.false.i.i:                                ; preds = %if.end122
  %i_afp.i.i = getelementptr inbounds %struct.xfs_inode, ptr %100, i32 0, i32 6
  %104 = ptrtoint ptr %i_afp.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_afp.i.i, align 8
  %if_format.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %if_format.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %if_format.i.i, align 2
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %107, label %lor.lhs.false.i.i.if.end5.i_crit_edge [
    i8 2, label %land.lhs.true.i.i
    i8 1, label %if.then3.i
  ]

lor.lhs.false.i.i.if.end5.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %if_nextents.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %105, i32 0, i32 7
  %109 = ptrtoint ptr %if_nextents.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %if_nextents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp6.i.i = icmp eq i32 %110, 0
  br i1 %cmp6.i.i, label %land.lhs.true.i.i.xfs_attr_lookup.exit_crit_edge, label %land.lhs.true.i.i.if.end5.i_crit_edge

land.lhs.true.i.i.if.end5.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i.i.xfs_attr_lookup.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_lookup.exit

if.then3.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 @xfs_attr_sf_findname(ptr noundef %args, ptr noundef null, ptr noundef null) #11
  br label %xfs_attr_lookup.exit

if.end5.i:                                        ; preds = %land.lhs.true.i.i.if.end5.i_crit_edge, %lor.lhs.false.i.i.if.end5.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur.i.i) #11
  %111 = ptrtoint ptr %icur.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur.i.i, align 4, !annotation !78
  %112 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %112, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap.i.i) #11
  %114 = call ptr @memset(ptr %imap.i.i, i32 255, i32 32)
  %if_nextents.i23.i = getelementptr inbounds %struct.xfs_ifork, ptr %105, i32 0, i32 7
  %115 = ptrtoint ptr %if_nextents.i23.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %if_nextents.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp.not.i24.i = icmp eq i32 %116, 1
  br i1 %cmp.not.i24.i, label %lor.lhs.false.i26.i, label %if.end5.i.xfs_attr_is_leaf.exit.thread.i_crit_edge

if.end5.i.xfs_attr_is_leaf.exit.thread.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread.i

lor.lhs.false.i26.i:                              ; preds = %if.end5.i
  %117 = ptrtoint ptr %if_format.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %if_format.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %118)
  %cmp1.not.i.i = icmp eq i8 %118, 2
  br i1 %cmp1.not.i.i, label %if.end.i28.i, label %lor.lhs.false.i26.i.xfs_attr_is_leaf.exit.thread.i_crit_edge

lor.lhs.false.i26.i.xfs_attr_is_leaf.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread.i

if.end.i28.i:                                     ; preds = %lor.lhs.false.i26.i
  call void @xfs_iext_first(ptr noundef %105, ptr noundef nonnull %icur.i.i) #11
  %call.i.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %105, ptr noundef nonnull %icur.i.i, ptr noundef nonnull %imap.i.i) #11
  %119 = ptrtoint ptr %imap.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %imap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %120)
  %cmp3.i27.i = icmp eq i64 %120, 0
  br i1 %cmp3.i27.i, label %xfs_attr_is_leaf.exit.i, label %if.end.i28.i.xfs_attr_is_leaf.exit.thread.i_crit_edge

if.end.i28.i.xfs_attr_is_leaf.exit.thread.i_crit_edge: ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_is_leaf.exit.thread.i

xfs_attr_is_leaf.exit.thread.i:                   ; preds = %if.end.i28.i.xfs_attr_is_leaf.exit.thread.i_crit_edge, %lor.lhs.false.i26.i.xfs_attr_is_leaf.exit.thread.i_crit_edge, %if.end5.i.xfs_attr_is_leaf.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i.i) #11
  br label %if.end12.i

xfs_attr_is_leaf.exit.i:                          ; preds = %if.end.i28.i
  %br_blockcount.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %br_blockcount.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %br_blockcount.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %122)
  %cmp5.i.i = icmp eq i64 %122, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i.i) #11
  br i1 %cmp5.i.i, label %if.then7.i, label %xfs_attr_is_leaf.exit.i.if.end12.i_crit_edge

xfs_attr_is_leaf.exit.i.if.end12.i_crit_edge:     ; preds = %xfs_attr_is_leaf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then7.i:                                       ; preds = %xfs_attr_is_leaf.exit.i
  %call8.i = call fastcc i32 @xfs_attr_leaf_hasname(ptr noundef %args, ptr noundef nonnull %bp.i) #11
  %123 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bp.i, align 4
  %tobool9.not.i = icmp eq ptr %124, null
  br i1 %tobool9.not.i, label %if.then7.i.xfs_attr_lookup.exit_crit_edge, label %if.then10.i

if.then7.i.xfs_attr_lookup.exit_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_attr_lookup.exit

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %trans, align 4
  call void @xfs_trans_brelse(ptr noundef %126, ptr noundef nonnull %124) #11
  br label %xfs_attr_lookup.exit

if.end12.i:                                       ; preds = %xfs_attr_is_leaf.exit.i.if.end12.i_crit_edge, %xfs_attr_is_leaf.exit.thread.i
  %call13.i = call fastcc i32 @xfs_attr_node_hasname(ptr noundef %args, ptr noundef null) #11
  br label %xfs_attr_lookup.exit

xfs_attr_lookup.exit:                             ; preds = %if.end12.i, %if.then10.i, %if.then7.i.xfs_attr_lookup.exit_crit_edge, %if.then3.i, %land.lhs.true.i.i.xfs_attr_lookup.exit_crit_edge, %if.end122.xfs_attr_lookup.exit_crit_edge
  %retval.0.i269 = phi i32 [ %call4.i, %if.then3.i ], [ %call13.i, %if.end12.i ], [ %call8.i, %if.then10.i ], [ %call8.i, %if.then7.i.xfs_attr_lookup.exit_crit_edge ], [ -61, %land.lhs.true.i.i.xfs_attr_lookup.exit_crit_edge ], [ -61, %if.end122.xfs_attr_lookup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #11
  %127 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %value, align 8
  %tobool125.not = icmp eq ptr %128, null
  br i1 %tobool125.not, label %if.else156, label %if.then126

if.then126:                                       ; preds = %xfs_attr_lookup.exit
  %129 = zext i32 %retval.0.i269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %retval.0.i269, label %if.then126.out_trans_cancel_crit_edge [
    i32 -17, label %land.lhs.true
    i32 -61, label %land.lhs.true135
  ]

if.then126.out_trans_cancel_crit_edge:            ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

land.lhs.true:                                    ; preds = %if.then126
  %attr_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 7
  %130 = ptrtoint ptr %attr_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %attr_flags, align 4
  %and129 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %land.lhs.true.if.end147_crit_edge, label %land.lhs.true.out_trans_cancel_crit_edge

land.lhs.true.out_trans_cancel_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

land.lhs.true.if.end147_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

land.lhs.true135:                                 ; preds = %if.then126
  %attr_flags136 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 7
  %132 = ptrtoint ptr %attr_flags136 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %attr_flags136, align 4
  %and137 = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %land.lhs.true135.if.end147_crit_edge, label %land.lhs.true135.out_trans_cancel_crit_edge

land.lhs.true135.out_trans_cancel_crit_edge:      ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

land.lhs.true135.if.end147_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.end147:                                        ; preds = %land.lhs.true135.if.end147_crit_edge, %land.lhs.true.if.end147_crit_edge
  %call148 = call i32 @xfs_attr_set_args(ptr noundef %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.out_trans_cancel_crit_edge

if.end147.out_trans_cancel_crit_edge:             ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

if.end151:                                        ; preds = %if.end147
  %134 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %trans, align 4
  %tobool153.not = icmp eq ptr %135, null
  br i1 %tobool153.not, label %if.end151.out_unlock_crit_edge, label %if.end151.if.end165_crit_edge

if.end151.if.end165_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

if.end151.out_unlock_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.else156:                                       ; preds = %xfs_attr_lookup.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %retval.0.i269)
  %cmp157.not = icmp eq i32 %retval.0.i269, -17
  br i1 %cmp157.not, label %if.end160, label %if.else156.out_trans_cancel_crit_edge

if.else156.out_trans_cancel_crit_edge:            ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

if.end160:                                        ; preds = %if.else156
  %call161 = call i32 @xfs_attr_remove_args(ptr noundef %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end160.if.end165_crit_edge, label %if.end160.out_trans_cancel_crit_edge

if.end160.out_trans_cancel_crit_edge:             ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

if.end160.if.end165_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

if.end165:                                        ; preds = %if.end160.if.end165_crit_edge, %if.end151.if.end165_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %136 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %m_features.i, align 8
  %and.i270 = and i64 %137, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i270)
  %tobool.i271.not = icmp eq i64 %and.i270, 0
  br i1 %tobool.i271.not, label %if.end165.if.end170_crit_edge, label %if.then167

if.end165.if.end170_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then167:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %trans, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %139, i32 0, i32 7
  %140 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %t_flags, align 4
  %or169 = or i32 %141, 8
  store i32 %or169, ptr %t_flags, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.end165.if.end170_crit_edge
  %142 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %op_flags, align 8
  %and172 = and i32 %143, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.then174, label %if.end170.if.end176_crit_edge

if.end170.if.end176_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then174:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %trans, align 4
  call void @xfs_trans_ichgtime(ptr noundef %145, ptr noundef %1, i32 noundef 2) #11
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.end170.if.end176_crit_edge
  %146 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %trans, align 4
  call void @xfs_trans_log_inode(ptr noundef %147, ptr noundef %1, i32 noundef 1) #11
  %148 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %trans, align 4
  %call179 = call i32 @xfs_trans_commit(ptr noundef %149) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then182, %out_trans_cancel.out_unlock_crit_edge, %if.end176, %if.end151.out_unlock_crit_edge
  %error.0 = phi i32 [ %error.1, %if.then182 ], [ %error.1, %out_trans_cancel.out_unlock_crit_edge ], [ %call179, %if.end176 ], [ 0, %if.end151.out_unlock_crit_edge ]
  call void @xfs_iunlock(ptr noundef %1, i32 noundef 4) #11
  br label %cleanup185

out_trans_cancel:                                 ; preds = %if.end160.out_trans_cancel_crit_edge, %if.else156.out_trans_cancel_crit_edge, %if.end147.out_trans_cancel_crit_edge, %land.lhs.true135.out_trans_cancel_crit_edge, %land.lhs.true.out_trans_cancel_crit_edge, %if.then126.out_trans_cancel_crit_edge, %if.then113.out_trans_cancel_crit_edge
  %error.1 = phi i32 [ %call118, %if.then113.out_trans_cancel_crit_edge ], [ -17, %land.lhs.true.out_trans_cancel_crit_edge ], [ -61, %land.lhs.true135.out_trans_cancel_crit_edge ], [ %call148, %if.end147.out_trans_cancel_crit_edge ], [ %retval.0.i269, %if.else156.out_trans_cancel_crit_edge ], [ %call161, %if.end160.out_trans_cancel_crit_edge ], [ %retval.0.i269, %if.then126.out_trans_cancel_crit_edge ]
  %150 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %trans, align 4
  %tobool181.not = icmp eq ptr %151, null
  br i1 %tobool181.not, label %out_trans_cancel.out_unlock_crit_edge, label %if.then182

out_trans_cancel.out_unlock_crit_edge:            ; preds = %out_trans_cancel
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then182:                                       ; preds = %out_trans_cancel
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_trans_cancel(ptr noundef nonnull %151) #11
  br label %out_unlock

cleanup185:                                       ; preds = %out_unlock, %if.end103.cleanup185_crit_edge, %if.then34.cleanup185_crit_edge, %if.end.cleanup185_crit_edge, %entry.cleanup185_crit_edge
  %retval.1 = phi i32 [ %error.0, %out_unlock ], [ %call42, %if.then34.cleanup185_crit_edge ], [ -5, %entry.cleanup185_crit_edge ], [ %call3, %if.end.cleanup185_crit_edge ], [ %call105, %if.end103.cleanup185_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tres) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_calc_size(ptr noundef %args, ptr noundef %local) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @xfs_attr_leaf_newentsize(ptr noundef %args, ptr noundef %local) #11
  %arrayidx8 = getelementptr %struct.xfs_mount, ptr %3, i32 0, i32 43, i32 1
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx8, align 4
  %6 = mul i32 %5, 5
  %7 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %div1254 = lshr i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %div1254)
  %cmp = icmp ugt i32 %call, %div1254
  %mul14 = mul i32 %5, 10
  %spec.select = select i1 %cmp, i32 %mul14, i32 %6
  br label %if.end35

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 35
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 34
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %13 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valuelen, align 4
  %call15 = tail call i32 @xfs_attr3_rmt_blocks(ptr noundef %3, i32 noundef %14) #11
  %add16 = add i32 %call15, %6
  %15 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_alloc_mxr, align 4
  %17 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_alloc_mnr, align 4
  %sub21 = sub i32 %16, %18
  %add22 = add i32 %call15, -1
  %sub23 = add i32 %add22, %sub21
  %div29 = udiv i32 %sub23, %sub21
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8, align 4
  %sub32 = add i32 %20, -1
  %mul33 = mul i32 %sub32, %div29
  %add34 = add i32 %add16, %mul33
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then
  %nblks.0 = phi i32 [ %add34, %if.else ], [ %spec.select, %if.then ]
  ret i32 %nblks.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_add_attrfork(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_rmt_blocks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ichgtime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_node_removename(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_removename, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_node_removename, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %call42 = tail call i32 @__traceiter_xfs_attr_node_removename(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_removename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_removename, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_node_removename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_node_removename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2061, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @xfs_attr_sf_removename(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_leaf_removename(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !78
  tail call fastcc void @trace_xfs_attr_leaf_removename(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %1 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp1, align 8
  %call = call fastcc i32 @xfs_attr_leaf_hasname(ptr noundef %args, ptr noundef nonnull %bp)
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 -61, label %if.then
    i32 -17, label %if.end4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %5, ptr noundef %7) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bp, align 4
  %call5 = call i32 @xfs_attr3_leaf_remove(ptr noundef %9, ptr noundef %args) #11
  %10 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp, align 4
  %call6 = call i32 @xfs_attr_shortform_allfit(ptr noundef %11, ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %call8 = call i32 @xfs_attr3_leaf_to_shortform(ptr noundef %13, ptr noundef %args, i32 noundef %call6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %if.then ], [ %call8, %if.then7 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_removename_setup(ptr noundef %dac) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %da_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 4
  %call = tail call fastcc i32 @xfs_attr_node_hasname(ptr noundef %1, ptr noundef %da_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call)
  %cmp.not = icmp eq i32 %call, -17
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da_state, align 4
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %path, align 8
  %sub = add i32 %5, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %3, i32 0, i32 2, i32 1, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %cmp2.not = icmp eq ptr %7, null
  br i1 %cmp2.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !80

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1340) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %8 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %da_state, align 4
  %path4 = getelementptr inbounds %struct.xfs_da_state, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %path4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %path4, align 8
  %sub8 = add i32 %11, -1
  %magic = getelementptr %struct.xfs_da_state, ptr %9, i32 0, i32 2, i32 1, i32 %sub8, i32 5
  %12 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %13)
  %cmp10 = icmp eq i32 %13, 64494
  br i1 %cmp10, label %cond.end.cond.end19_crit_edge, label %cond.false18, !prof !79

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1342) #11
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.end.cond.end19_crit_edge
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rmtblkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp20.not = icmp eq i32 %15, 0
  br i1 %cmp20.not, label %cond.end19.if.end30_crit_edge, label %if.then21

cond.end19.if.end30_crit_edge:                    ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then21:                                        ; preds = %cond.end19
  %16 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %da_state, align 4
  %call22 = tail call fastcc i32 @xfs_attr_leaf_mark_incomplete(ptr noundef %1, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then21.if.then29_crit_edge

if.then21.if.then29_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end25:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @xfs_attr_rmtval_invalidate(ptr noundef %1) #11
  br label %out

out:                                              ; preds = %if.end25, %entry.out_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call26, %if.end25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool28.not = icmp eq i32 %error.0, 0
  br i1 %tobool28.not, label %out.if.end30_crit_edge, label %out.if.then29_crit_edge

out.if.then29_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

out.if.end30_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %out.if.then29_crit_edge, %if.then21.if.then29_crit_edge
  %error.050 = phi i32 [ %error.0, %out.if.then29_crit_edge ], [ %call22, %if.then21.if.then29_crit_edge ]
  %18 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %da_state, align 4
  tail call void @xfs_da_state_free(ptr noundef %19) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %out.if.end30_crit_edge, %cond.end19.if.end30_crit_edge
  %error.046 = phi i32 [ %error.050, %if.then29 ], [ 0, %out.if.end30_crit_edge ], [ 0, %cond.end19.if.end30_crit_edge ]
  ret i32 %error.046
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_rmtval_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_remove_iter_return(i32 noundef %das, ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_remove_iter_return, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_remove_iter_return, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !86
  %call42 = tail call i32 @__traceiter_xfs_attr_remove_iter_return(ptr noundef null, i32 noundef %das, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_remove_iter_return, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_remove_iter_return, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_remove_iter_return.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_remove_iter_return.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 4136, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
define internal fastcc i32 @xfs_attr_refillstate(ptr noundef %state) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_attr_refillstate(ptr noundef %1)
  %path1 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %entry.cond.end_crit_edge, label %cond.false, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1585) #11
  %5 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %path1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %6 = phi i32 [ %3, %entry.cond.end_crit_edge ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp793 = icmp sgt i32 %6, 0
  br i1 %cmp793, label %for.body.preheader, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %cond.end
  %blk5 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %level.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %blk.094 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %blk5, %for.body.preheader ]
  %disk_blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.094, i32 0, i32 2
  %7 = ptrtoint ptr %disk_blkno to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %disk_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool8.not = icmp eq i64 %8, 0
  br i1 %tobool8.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %10, i32 0, i32 10
  %13 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp, align 8
  %call = tail call i32 @xfs_da3_node_read_mapped(ptr noundef %12, ptr noundef %14, i64 noundef %8, ptr noundef %blk.094, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %blk.094 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %blk.094, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.xfs_da_state_blk, ptr %blk.094, i32 1
  %inc = add nuw nsw i32 %level.096, 1
  %16 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %path1, align 8
  %cmp7 = icmp slt i32 %inc, %17
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %18 = ptrtoint ptr %altpath to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %altpath, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %for.end.cond.end30_crit_edge, label %cond.false29, !prof !79

for.end.cond.end30_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end30

cond.false29:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1603) #11
  %21 = ptrtoint ptr %altpath to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr103 = load i32, ptr %altpath, align 8
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %for.end.cond.end30_crit_edge
  %22 = phi i32 [ %19, %for.end.cond.end30_crit_edge ], [ %.pr103, %cond.false29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp3597 = icmp sgt i32 %22, 0
  br i1 %cmp3597, label %for.body36.preheader, label %cond.end30.cleanup_crit_edge

cond.end30.cleanup_crit_edge:                     ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body36.preheader:                             ; preds = %cond.end30
  %blk31 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3, i32 1
  br label %for.body36

for.body36:                                       ; preds = %for.inc53.for.body36_crit_edge, %for.body36.preheader
  %level.1100 = phi i32 [ %inc55, %for.inc53.for.body36_crit_edge ], [ 0, %for.body36.preheader ]
  %blk.198 = phi ptr [ %incdec.ptr54, %for.inc53.for.body36_crit_edge ], [ %blk31, %for.body36.preheader ]
  %disk_blkno37 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.198, i32 0, i32 2
  %23 = ptrtoint ptr %disk_blkno37 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %disk_blkno37, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool38.not = icmp eq i64 %24, 0
  br i1 %tobool38.not, label %if.else50, label %if.then39

if.then39:                                        ; preds = %for.body36
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 8
  %trans41 = getelementptr inbounds %struct.xfs_da_args, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %trans41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans41, align 4
  %dp43 = getelementptr inbounds %struct.xfs_da_args, ptr %26, i32 0, i32 10
  %29 = ptrtoint ptr %dp43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dp43, align 8
  %call46 = tail call i32 @xfs_da3_node_read_mapped(ptr noundef %28, ptr noundef %30, i64 noundef %24, ptr noundef %blk.198, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then39.for.inc53_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39.for.inc53_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53

if.else50:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %blk.198 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %blk.198, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %if.else50, %if.then39.for.inc53_crit_edge
  %incdec.ptr54 = getelementptr %struct.xfs_da_state_blk, ptr %blk.198, i32 1
  %inc55 = add nuw nsw i32 %level.1100, 1
  %32 = ptrtoint ptr %altpath to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %altpath, align 8
  %cmp35 = icmp slt i32 %inc55, %33
  br i1 %cmp35, label %for.inc53.for.body36_crit_edge, label %for.inc53.cleanup_crit_edge

for.inc53.cleanup_crit_edge:                      ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc53.for.body36_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body36

cleanup:                                          ; preds = %for.inc53.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %cond.end30.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end30.cleanup_crit_edge ], [ %call46, %if.then39.cleanup_crit_edge ], [ 0, %for.inc53.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_removename(ptr noundef %args, ptr noundef %state) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %path, align 8
  %sub = add i32 %1, -1
  %magic = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %3)
  %cmp = icmp eq i32 %3, 64494
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1370) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %call = tail call i32 @xfs_attr3_leaf_remove(ptr noundef %5, ptr noundef %args) #11
  tail call void @xfs_da3_fixhashpath(ptr noundef %state, ptr noundef %path) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_join(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_shrink(ptr noundef %args, ptr nocapture noundef %state) unnamed_addr #4 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !78
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1278) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %blk = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %blk, align 8
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %cond.false13, label %cond.end.cond.end14_crit_edge, !prof !80

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1279) #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %7 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %blk, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %8 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans, align 4
  %10 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dp1, align 8
  %call = call i32 @xfs_attr3_leaf_read(ptr noundef %9, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %bp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end, label %cond.end14.cleanup_crit_edge

cond.end14.cleanup_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end14
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %call21 = call i32 @xfs_attr_shortform_allfit(ptr noundef %13, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %call24 = call i32 @xfs_attr3_leaf_to_shortform(ptr noundef %15, ptr noundef %args, i32 noundef %call21) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans, align 4
  %18 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %17, ptr noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %cond.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.end14.cleanup_crit_edge ], [ %call24, %if.then23 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da_state_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_attr_namecheck(ptr noundef readonly %name, i32 noundef %length) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %length)
  %cmp = icmp ugt i32 %length, 255
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @memchr(ptr noundef %name, i32 noundef 0, i32 noundef %length) #14
  %tobool.not = icmp eq ptr %call, null
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool.not, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_sf_addname(ptr nocapture noundef %dac, ptr noundef %leaf_bp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %call = tail call fastcc i32 @xfs_attr_try_sf_addname(ptr noundef %3, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp.not = icmp eq i32 %call, -28
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfs_attr_shortform_to_leaf(ptr noundef %1, ptr noundef %leaf_bp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %6 = ptrtoint ptr %leaf_bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %leaf_bp, align 4
  tail call void @xfs_trans_bhold(ptr noundef %5, ptr noundef %7) #11
  %8 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dp1, align 8
  tail call fastcc void @trace_xfs_attr_sf_addname_return(ptr noundef %9)
  %flags = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_leaf_try_add(ptr noundef %args, ptr noundef %bp) unnamed_addr #4 align 64 {
entry:
  %bp.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bp, ptr %bp.addr, align 4
  %call = call fastcc i32 @xfs_attr_leaf_hasname(ptr noundef %args, ptr noundef nonnull %bp.addr)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 -61, label %land.lhs.true4
    i32 -17, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true4:                                   ; preds = %entry
  %attr_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 7
  %2 = ptrtoint ptr %attr_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true4.if.end14_crit_edge, label %land.lhs.true4.out_brelse_crit_edge

land.lhs.true4.out_brelse_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_brelse

land.lhs.true4.if.end14_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %entry
  %attr_flags9 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 7
  %4 = ptrtoint ptr %attr_flags9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_flags9, align 4
  %and10 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then8.out_brelse_crit_edge

if.then8.out_brelse_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_brelse

if.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_xfs_attr_leaf_replace(ptr noundef %args)
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %6 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_flags, align 8
  %or = or i32 %7, 2
  store i32 %or, ptr %op_flags, align 8
  call fastcc void @xfs_attr_save_rmt_blk(ptr noundef %args)
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %8 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rmtblkno, align 8
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %9 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rmtblkcnt, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %10 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rmtvaluelen, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %land.lhs.true4.if.end14_crit_edge
  %11 = ptrtoint ptr %bp.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp.addr, align 4
  %call15 = call i32 @xfs_attr3_leaf_add(ptr noundef %12, ptr noundef %args) #11
  br label %cleanup

out_brelse:                                       ; preds = %if.then8.out_brelse_crit_edge, %land.lhs.true4.out_brelse_crit_edge
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans, align 4
  %15 = ptrtoint ptr %bp.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bp.addr, align 4
  call void @xfs_trans_brelse(ptr noundef %14, ptr noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %out_brelse, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %out_brelse ], [ %call15, %if.end14 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_to_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_set_iter_return(i32 noundef %das, ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_set_iter_return, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_set_iter_return, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !88
  %call42 = tail call i32 @__traceiter_xfs_attr_set_iter_return(ptr noundef null, i32 noundef %das, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_set_iter_return, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_set_iter_return, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_set_iter_return.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_set_iter_return.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 4134, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
define internal fastcc i32 @xfs_attr_node_addname_find_attr(ptr noundef %dac) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %da_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 4
  %call = tail call fastcc i32 @xfs_attr_node_hasname(ptr noundef %1, ptr noundef %da_state)
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call, label %entry.error_crit_edge [
    i32 -61, label %land.lhs.true4
    i32 -17, label %if.then8
  ]

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true4:                                   ; preds = %entry
  %attr_flags = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %attr_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attr_flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.error_crit_edge

land.lhs.true4.error_crit_edge:                   ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %entry
  %attr_flags9 = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %attr_flags9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr_flags9, align 4
  %and10 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then8.error_crit_edge

if.then8.error_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_xfs_attr_node_replace(ptr noundef %1)
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op_flags, align 8
  %or = or i32 %8, 2
  store i32 %or, ptr %op_flags, align 8
  tail call fastcc void @xfs_attr_save_rmt_blk(ptr noundef %1)
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rmtblkno, align 8
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rmtblkcnt, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rmtvaluelen, align 8
  br label %cleanup

error:                                            ; preds = %if.then8.error_crit_edge, %land.lhs.true4.error_crit_edge, %entry.error_crit_edge
  %12 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %da_state, align 8
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %error.cleanup_crit_edge, label %if.then17

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_da_state_free(ptr noundef nonnull %13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %error.cleanup_crit_edge, %if.end13, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %if.then17 ], [ %call, %error.cleanup_crit_edge ], [ 0, %land.lhs.true4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_addname(ptr nocapture noundef %dac) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  %da_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 4
  %2 = ptrtoint ptr %da_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da_state, align 8
  tail call fastcc void @trace_xfs_attr_node_addname(ptr noundef %1)
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %path, align 8
  %sub = add i32 %5, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %3, i32 0, i32 2, i32 1, i32 %sub
  %magic = getelementptr %struct.xfs_da_state, ptr %3, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %7)
  %cmp = icmp eq i32 %7, 64494
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1170) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call = tail call i32 @xfs_attr3_leaf_add(ptr noundef %9, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp5 = icmp eq i32 %call, -28
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp8 = icmp eq i32 %13, 1
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then
  tail call void @xfs_da_state_free(ptr noundef %3) #11
  %call10 = tail call i32 @xfs_attr3_leaf_to_node(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %flags, align 4
  %dela_state = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 6
  %16 = ptrtoint ptr %dela_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dela_state, align 8
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dp, align 8
  tail call fastcc void @trace_xfs_attr_node_addname_return(i32 noundef %17, ptr noundef %19)
  br label %cleanup

if.end13:                                         ; preds = %if.then
  %call14 = tail call i32 @xfs_da3_split(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %flags18 = getelementptr inbounds %struct.xfs_delattr_context, ptr %dac, i32 0, i32 5
  %20 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags18, align 4
  %or19 = or i32 %21, 1
  store i32 %or19, ptr %flags18, align 4
  br label %out

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_da3_fixhashpath(ptr noundef %3, ptr noundef %path) #11
  br label %out

out:                                              ; preds = %if.else, %if.end17, %if.end13.out_crit_edge
  %error.0 = phi i32 [ %call14, %if.end13.out_crit_edge ], [ 0, %if.end17 ], [ %call, %if.else ]
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %out.cleanup_crit_edge, label %if.then23

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_da_state_free(ptr noundef nonnull %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %out.cleanup_crit_edge, %if.end, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.end ], [ %error.0, %if.then23 ], [ %error.0, %out.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_rmtval_find_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_rmtval_set_blk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_rmtval_set_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_clearflag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_flipflags(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_attr_restore_rmt_blk(ptr nocapture noundef %args) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %blkno2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 19
  %0 = ptrtoint ptr %blkno2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blkno2, align 4
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %2 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %blkno, align 8
  %index2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 20
  %3 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index2, align 8
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %index, align 4
  %rmtblkno2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 21
  %6 = ptrtoint ptr %rmtblkno2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmtblkno2, align 4
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %8 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rmtblkno, align 8
  %rmtblkcnt2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 22
  %9 = ptrtoint ptr %rmtblkcnt2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rmtblkcnt2, align 8
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %11 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rmtblkcnt, align 4
  %rmtvaluelen2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 23
  %12 = ptrtoint ptr %rmtvaluelen2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmtvaluelen2, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %14 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rmtvaluelen, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_rmtval_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_shortform_allfit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_to_shortform(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_addname_clear_incomplete(ptr nocapture noundef readonly %dac) unnamed_addr #4 align 64 {
entry:
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #11
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retval1, align 4
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %attr_filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attr_filter, align 8
  %or = or i32 %4, 128
  store i32 %or, ptr %attr_filter, align 8
  %call = tail call ptr @xfs_da_state_alloc(ptr noundef %1) #11
  %inleaf = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %inleaf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %inleaf, align 8
  %call2 = call i32 @xfs_da3_node_lookup_int(ptr noundef %call, ptr noundef nonnull %retval1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @xfs_attr_node_removename(ptr noundef %1, ptr noundef %call)
  %6 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call i32 @xfs_da3_join(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %10 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %retval1, align 4
  br label %out

out:                                              ; preds = %if.end10, %if.then5.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call6, %if.then5.out_crit_edge ], [ 0, %if.end10 ]
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %out.if.end13_crit_edge, label %if.then12

out.if.end13_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_da_state_free(ptr noundef nonnull %call) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %out.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool14.not = icmp eq i32 %error.0, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end16 ], [ %error.0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_try_sf_addname(ptr noundef %dp, ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_attr_shortform_create(ptr noundef %args) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @xfs_attr_shortform_addname(ptr noundef %args)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call, label %if.end.if.end8_crit_edge [
    i32 -28, label %if.end.cleanup_crit_edge
    i32 0, label %land.lhs.true
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %5 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %op_flags, align 8
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_ichgtime(ptr noundef %8, ptr noundef %dp, i32 noundef 2) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %9 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dp, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 61
  %11 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %12, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %trans11 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %13 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans11, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t_flags, align 4
  %or = or i32 %16, 8
  store i32 %or, ptr %t_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_shortform_to_leaf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_sf_addname_return(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_addname_return, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_sf_addname_return, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
  %call42 = tail call i32 @__traceiter_xfs_attr_sf_addname_return(ptr noundef null, i32 noundef 0, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !79

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_addname_return, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_addname_return, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xfs_attr_sf_addname_return.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_sf_addname_return.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 4133, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local void @xfs_attr_shortform_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_shortform_addname(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_attr_sf_addname(ptr noundef %args)
  %call = tail call i32 @xfs_attr_shortform_lookup(ptr noundef %args) #11
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call, label %entry.if.end15_crit_edge [
    i32 -61, label %land.lhs.true
    i32 -17, label %if.then3
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %attr_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 7
  %1 = ptrtoint ptr %attr_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %attr_flags, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then3:                                         ; preds = %entry
  %attr_flags4 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 7
  %3 = ptrtoint ptr %attr_flags4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attr_flags4, align 4
  %and5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %call9 = tail call i32 @xfs_attr_sf_removename(ptr noundef %args) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %attr_flags4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr_flags4, align 4
  %and14 = and i32 %6, -3
  store i32 %and14, ptr %attr_flags4, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %7 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %namelen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %8)
  %cmp16 = icmp sgt i32 %8, 254
  br i1 %cmp16, label %if.end15.cleanup_crit_edge, label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %9 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %10)
  %cmp17 = icmp sgt i32 %10, 254
  br i1 %cmp17, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %11 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dp, align 8
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_afp.i, align 8
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %if_u1.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %conv.i = zext i16 %18 to i32
  %conv.i51 = and i32 %8, 255
  %add.i = add nuw nsw i32 %conv.i51, 3
  %conv1.i = and i32 %10, 255
  %add2.i = add nuw nsw i32 %add.i, %conv1.i
  %add = add nuw nsw i32 %add2.i, %conv.i
  %call26 = tail call i32 @xfs_attr_shortform_bytesfit(ptr noundef %12, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end19.cleanup_crit_edge, label %if.end29

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_attr_shortform_add(ptr noundef %args, i32 noundef %call26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -17, %if.then3.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ -28, %lor.lhs.false.cleanup_crit_edge ], [ -28, %if.end15.cleanup_crit_edge ], [ -28, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_sf_addname(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_addname, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_sf_addname, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %call42 = tail call i32 @__traceiter_xfs_attr_sf_addname(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_addname, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_addname, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_sf_addname.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_sf_addname.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2029, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @xfs_attr_shortform_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_shortform_bytesfit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_attr_shortform_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_sf_addname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_sf_addname_return(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_leaf_hasname(ptr noundef %args, ptr noundef %bp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 8
  %call = tail call i32 @xfs_attr3_leaf_read(ptr noundef %1, ptr noundef %3, i32 noundef 0, ptr noundef %bp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp, align 4
  %call1 = tail call i32 @xfs_attr3_leaf_lookup_int(ptr noundef %5, ptr noundef %args) #11
  %6 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call1, label %if.then3 [
    i32 -61, label %if.end.cleanup_crit_edge
    i32 -17, label %if.end.cleanup_crit_edge15
  ]

if.end.cleanup_crit_edge15:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %8, ptr noundef %10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge15 ], [ %call1, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_replace(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_replace, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_replace, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_replace(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_replace, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_replace, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_replace.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_leaf_replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2043, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_attr_save_rmt_blk(ptr nocapture noundef %args) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %0 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blkno, align 8
  %blkno2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 19
  %2 = ptrtoint ptr %blkno2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %blkno2, align 4
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %index2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 20
  %5 = ptrtoint ptr %index2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %index2, align 8
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %6 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmtblkno, align 8
  %rmtblkno2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 21
  %8 = ptrtoint ptr %rmtblkno2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rmtblkno2, align 4
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %9 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rmtblkcnt, align 4
  %rmtblkcnt2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 22
  %11 = ptrtoint ptr %rmtblkcnt2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rmtblkcnt2, align 8
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %12 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmtvaluelen, align 8
  %rmtvaluelen2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 23
  %14 = ptrtoint ptr %rmtvaluelen2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rmtvaluelen2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_lookup_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_set_iter_return(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_node_hasname(ptr noundef %args, ptr noundef writeonly %statep) unnamed_addr #4 align 64 {
entry:
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #11
  %0 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retval1, align 4, !annotation !78
  %call = tail call ptr @xfs_da_state_alloc(ptr noundef %args) #11
  %cmp.not = icmp eq ptr %statep, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %statep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %statep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = call i32 @xfs_da3_node_lookup_int(ptr noundef %call, ptr noundef nonnull %retval1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %retval1, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  br i1 %cmp.not, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_da_state_free(ptr noundef %call) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %3 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retval1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #11
  ret i32 %4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_node_replace(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_replace, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_node_replace, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !96
  %call42 = tail call i32 @__traceiter_xfs_attr_node_replace(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_replace, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_replace, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_node_replace.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_node_replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2060, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local ptr @xfs_da_state_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_node_lookup_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_node_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_node_addname(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_addname, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_node_addname, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  %call42 = tail call i32 @__traceiter_xfs_attr_node_addname(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_addname, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_addname, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_node_addname.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_node_addname.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2058, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
define internal fastcc void @trace_xfs_attr_node_addname_return(i32 noundef %das, ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_addname_return, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_node_addname_return, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  %call42 = tail call i32 @__traceiter_xfs_attr_node_addname_return(ptr noundef null, i32 noundef %das, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_addname_return, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_addname_return, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_node_addname_return.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_node_addname_return.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 4135, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @xfs_da3_split(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da3_fixhashpath(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_node_addname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_node_addname_return(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_leaf_newentsize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_sf_findname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_get(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_get, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_get, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_get(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_get, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_get, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_leaf_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2041, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @xfs_attr3_leaf_getvalue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_node_removename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_removename(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_removename, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_removename, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_removename(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_removename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_removename, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_removename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_leaf_removename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2045, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @__traceiter_xfs_attr_leaf_removename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr_leaf_mark_incomplete(ptr noundef %args, ptr nocapture noundef %state) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_attr_fillstate(ptr noundef %state)
  %call1 = tail call i32 @xfs_attr3_leaf_setflag(ptr noundef %args) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_attr_fillstate(ptr nocapture noundef %state) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_attr_fillstate(ptr noundef %1)
  %path1 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %entry.cond.end_crit_edge, label %cond.false, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1537) #11
  %5 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %path1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %6 = phi i32 [ %3, %entry.cond.end_crit_edge ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp73 = icmp sgt i32 %6, 0
  br i1 %cmp73, label %for.body.preheader, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %cond.end
  %blk5 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %level.06 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %blk.04 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %blk5, %for.body.preheader ]
  %7 = ptrtoint ptr %blk.04 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %blk.04, align 8
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_maps.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %13 = ptrtoint ptr %blk.04 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %blk.04, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %.sink = phi i64 [ %12, %if.then ], [ 0, %for.body.for.inc_crit_edge ]
  %14 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.04, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %.sink, ptr %14, align 8
  %incdec.ptr = getelementptr %struct.xfs_da_state_blk, ptr %blk.04, i32 1
  %inc = add nuw nsw i32 %level.06, 1
  %16 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %path1, align 8
  %cmp7 = icmp slt i32 %inc, %17
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %18 = ptrtoint ptr %altpath to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %altpath, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %for.end.cond.end26_crit_edge, label %cond.false25, !prof !79

for.end.cond.end26_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end26

cond.false25:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1552) #11
  %21 = ptrtoint ptr %altpath to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr12 = load i32, ptr %altpath, align 8
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %for.end.cond.end26_crit_edge
  %22 = phi i32 [ %19, %for.end.cond.end26_crit_edge ], [ %.pr12, %cond.false25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp317 = icmp sgt i32 %22, 0
  br i1 %cmp317, label %for.body32.preheader, label %cond.end26.for.end46_crit_edge

cond.end26.for.end46_crit_edge:                   ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.body32.preheader:                             ; preds = %cond.end26
  %blk27 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3, i32 1
  br label %for.body32

for.body32:                                       ; preds = %for.inc43.for.body32_crit_edge, %for.body32.preheader
  %level.110 = phi i32 [ %inc45, %for.inc43.for.body32_crit_edge ], [ 0, %for.body32.preheader ]
  %blk.18 = phi ptr [ %incdec.ptr44, %for.inc43.for.body32_crit_edge ], [ %blk27, %for.body32.preheader ]
  %23 = ptrtoint ptr %blk.18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blk.18, align 8
  %tobool34.not = icmp eq ptr %24, null
  br i1 %tobool34.not, label %for.body32.for.inc43_crit_edge, label %if.then35

for.body32.for.inc43_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

if.then35:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  %b_maps.i2 = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %b_maps.i2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_maps.i2, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  %29 = ptrtoint ptr %blk.18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %blk.18, align 8
  br label %for.inc43

for.inc43:                                        ; preds = %if.then35, %for.body32.for.inc43_crit_edge
  %.sink11 = phi i64 [ %28, %if.then35 ], [ 0, %for.body32.for.inc43_crit_edge ]
  %30 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk.18, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %.sink11, ptr %30, align 8
  %incdec.ptr44 = getelementptr %struct.xfs_da_state_blk, ptr %blk.18, i32 1
  %inc45 = add nuw nsw i32 %level.110, 1
  %32 = ptrtoint ptr %altpath to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %altpath, align 8
  %cmp31 = icmp slt i32 %inc45, %33
  br i1 %cmp31, label %for.inc43.for.body32_crit_edge, label %for.inc43.for.end46_crit_edge

for.inc43.for.end46_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.inc43.for.body32_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32

for.end46:                                        ; preds = %for.inc43.for.end46_crit_edge, %cond.end26.for.end46_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_leaf_setflag(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_fillstate(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_fillstate, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_fillstate, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  %call42 = tail call i32 @__traceiter_xfs_attr_fillstate(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_fillstate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_fillstate, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_fillstate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_fillstate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2063, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @__traceiter_xfs_attr_fillstate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_remove_iter_return(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_refillstate(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_refillstate, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_refillstate, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %call42 = tail call i32 @__traceiter_xfs_attr_refillstate(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_refillstate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_refillstate, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_refillstate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_refillstate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2064, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @xfs_da3_node_read_mapped(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_refillstate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_node_get(ptr noundef %args) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_get, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_node_get, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %call42 = tail call i32 @__traceiter_xfs_attr_node_get(ptr noundef null, ptr noundef %args) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_get, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_node_get, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_attr_node_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_attr_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2059, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #11
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
declare dso_local i32 @__traceiter_xfs_attr_node_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !55, !57, !58, !60, !62, !64, !65, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 112, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1455, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1504, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1507, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_trace.h", i32 2029, i32 1}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_trace.h", i32 4133, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_trace.h", i32 2043, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_trace.h", i32 4134, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_trace.h", i32 2060, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1170, i32 2}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trace.h", i32 2058, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_trace.h", i32 4135, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trace.h", i32 2041, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_trace.h", i32 2061, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_trace.h", i32 2045, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1340, i32 2}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1341, i32 2}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1537, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_trace.h", i32 2063, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_trace.h", i32 4136, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1278, i32 2}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/libxfs/xfs_attr.c", i32 1279, i32 2}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_trace.h", i32 2064, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_trace.h", i32 2059, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2148285614, i64 2148285619, i64 2148285632, i64 2148285676, i64 2148285710, i64 2148285731}
!82 = !{i64 2161690511}
!83 = !{i64 2161690730}
!84 = !{i64 2149987707}
!85 = !{i64 2149988743}
!86 = !{i64 2166315376}
!87 = !{i64 2166315607}
!88 = !{i64 2166280567}
!89 = !{i64 2166280792}
!90 = !{i64 2166259238}
!91 = !{i64 2166259467}
!92 = !{i64 2161157008}
!93 = !{i64 2161157217}
!94 = !{i64 2161384648}
!95 = !{i64 2161384861}
!96 = !{i64 2161673669}
!97 = !{i64 2161673882}
!98 = !{i64 2161636530}
!99 = !{i64 2161636743}
!100 = !{i64 2166297883}
!101 = !{i64 2166298116}
!102 = !{i64 2161347446}
!103 = !{i64 2161351712}
!104 = !{i64 2161422183}
!105 = !{i64 2161422402}
!106 = !{i64 2161707281}
!107 = !{i64 2161707488}
!108 = !{i64 2161723805}
!109 = !{i64 2161724016}
!110 = !{i64 2161653099}
!111 = !{i64 2161653304}
