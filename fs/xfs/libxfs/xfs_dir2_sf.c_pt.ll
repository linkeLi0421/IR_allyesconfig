; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_dir2_sf.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_dir2_sf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_dir2_sf_hdr = type { i8, i8, [8 x i8] }
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
%struct.xfs_dir2_sf_entry = type { i8, [2 x i8], [0 x i8] }
%struct.xfs_dir2_block_tail = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
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
%struct.xfs_dir2_data_entry = type { i64, i8, [0 x i8] }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_dir2_data_unused = type { i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ino <= XFS_MAXINUMBER\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fs/xfs/libxfs/xfs_dir2_sf.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ftype < XFS_DIR3_FT_MAX\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"be64_to_cpu(dep->inumber) == dp->i_ino\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"be64_to_cpu(dep->inumber) == xfs_dir2_sf_get_parent_ino(sfp)\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(char *)sfep - (char *)sfp == size\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOSPC\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dp->i_df.if_bytes == 0\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xfs_dir2_sf_lookup(args) == -ENOENT\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dp->i_df.if_format == XFS_DINODE_FMT_LOCAL\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"dp->i_disk_size >= offsetof(struct xfs_dir2_sf_hdr, parent)\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dp->i_df.if_bytes == dp->i_disk_size\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dp->i_df.if_u1.if_data != NULL\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"dp->i_disk_size >= xfs_dir2_sf_hdr_size(sfp->i8count)\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ifp->if_format == XFS_DINODE_FMT_LOCAL\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dp != NULL\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dp->i_disk_size == 0\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"args->op_flags & XFS_DA_OP_OKNOENT\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"oldsize >= offsetof(struct xfs_dir2_sf_hdr, parent)\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dp->i_df.if_bytes == oldsize\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"oldsize >= xfs_dir2_sf_hdr_size(sfp->i8count)\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"xfs_dir2_sf_get_ino(mp, sfp, sfep) == args->inumber\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"args->namelen != 1 || args->name[0] != '.'\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"args->inumber != ino\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sfp->i8count != 0\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_block_to_sf = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_dir2_block_to_sf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_sf_addname = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_addname.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xfs_dir2_sf_get_offset(sfep) >= offset\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i8count == sfp->i8count\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(char *)sfep - (char *)sfp == dp->i_disk_size\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"offset + (sfp->count + 2) * (uint)sizeof(xfs_dir2_leaf_entry_t) + (uint)sizeof(xfs_dir2_block_tail_t) <= args->geo->blksize\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_sf_create = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_sf_lookup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_sf_removename = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_removename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir2_sf_replace = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"oldsfp->i8count == 1\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_sf_toino4 = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_toino4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"oldsfp->i8count == 0\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_sf_toino8 = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_sf_toino8.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 96, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 154, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 304, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 310, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 328, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 334, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 344, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 379, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 381, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 382, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 383, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 384, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 386, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 726, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 823, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 824, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 924, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 957, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 958, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 961, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 970, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1085, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1092, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1143, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1967, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 108, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 691, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 699, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 700, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 701, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1181, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [31 x i8] c"../fs/xfs/libxfs/xfs_dir2_sf.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1254, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_dir2_sf_entsize(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %hdr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 3
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %add1 = add i32 %add, %cond
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 1
  %spec.select = add i32 %add1, %6
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xfs_dir2_sf_nextentry(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %hdr, ptr noundef readonly %sfep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sfep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sfep, align 1
  %conv = zext i8 %1 to i32
  %add.i = add nuw nsw i32 %conv, 3
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 4, i32 8
  %add1.i = add nuw nsw i32 %add.i, %cond.i
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1
  %spec.select.i = add nuw nsw i32 %add1.i, %8
  %add.ptr = getelementptr i8, ptr %sfep, i32 %spec.select.i
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_dir2_sf_get_ino(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %sfep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep, i32 0, i32 2
  %0 = ptrtoint ptr %sfep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sfep, align 1
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %name, i32 %conv
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 1
  %spec.select = getelementptr i8, ptr %add.ptr, i32 %6
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 1
  %7 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then1, label %if.end4

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %spec.select to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %spec.select, align 1
  %conv3 = zext i32 %10 to i64
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %spec.select to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %spec.select, align 1
  %and = and i64 %12, 72057594037927935
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then1
  %retval.0 = phi i64 [ %and, %if.end4 ], [ %conv3, %if.then1 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_sf_put_ino(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %hdr, ptr nocapture noundef %sfep, i64 noundef %ino) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep, i32 0, i32 2
  %0 = ptrtoint ptr %sfep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sfep, align 1
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %name, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %ino)
  %cmp = icmp ult i64 %ino, 72057594037927936
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 96) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 1
  %spec.select = getelementptr i8, ptr %add.ptr, i32 %6
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 1
  %7 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %spec.select to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %ino, ptr %spec.select, align 1
  br label %if.end6

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i64 %ino to i32
  %10 = ptrtoint ptr %spec.select to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %conv5, ptr %spec.select, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_dir2_sf_get_parent_ino(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %parent = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 2
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %parent, align 1
  %conv = zext i32 %3 to i64
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %parent, align 1
  %and = and i64 %5, 72057594037927935
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %and, %if.end ], [ %conv, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_sf_put_parent_ino(ptr nocapture noundef %hdr, i64 noundef %ino) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %ino)
  %cmp = icmp ult i64 %ino, 72057594037927936
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 121) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %ino, ptr %parent, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %ino to i32
  %parent3 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %hdr, i32 0, i32 2
  %3 = ptrtoint ptr %parent3 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %conv, ptr %parent3, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @xfs_dir2_sf_get_ftype(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %sfep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %sfep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sfep, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.xfs_dir2_sf_entry, ptr %sfep, i32 0, i32 2, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp = icmp ugt i8 %5, 8
  br i1 %cmp, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %return

return:                                           ; preds = %if.end3, %if.then.return_crit_edge
  %retval.1 = phi i8 [ %5, %if.then.return_crit_edge ], [ 0, %if.end3 ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_sf_put_ftype(ptr nocapture noundef readonly %mp, ptr nocapture noundef %sfep, i8 noundef zeroext %ftype) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %ftype)
  %cmp = icmp ult i8 %ftype, 9
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 154) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %sfep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sfep, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.xfs_dir2_sf_entry, ptr %sfep, i32 0, i32 2, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %ftype, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_block_sfsize(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %hdr, ptr nocapture noundef %sfhp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_dir_geo, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %hdr, i32 %10
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %12
  %add.ptr.i125 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp140.not = icmp eq i32 %12, 0
  br i1 %cmp140.not, label %cond.end.i.thread, label %for.body.lr.ph

cond.end.i.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %sfhp to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %sfhp, align 1
  %i8count79163 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfhp, i32 0, i32 1
  %14 = ptrtoint ptr %i8count79163 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %i8count79163, align 1
  br label %if.else.i

for.body.lr.ph:                                   ; preds = %entry
  %sub.i.i = add i32 %10, -1
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 23
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %and.i127 = and i64 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i127)
  %tobool.i128.not = icmp eq i64 %and.i127, 0
  %cond68.neg = select i1 %tobool.i128.not, i32 -100, i32 -176
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %size.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %size.1, %for.inc.for.body_crit_edge ]
  %parent.0147 = phi i64 [ 0, %for.body.lr.ph ], [ %parent.2, %for.inc.for.body_crit_edge ]
  %namelen.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %namelen.2, %for.inc.for.body_crit_edge ]
  %i8count.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %i8count.2, %for.inc.for.body_crit_edge ]
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc75, %for.inc.for.body_crit_edge ]
  %count.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %count.2, %for.inc.for.body_crit_edge ]
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr.i125, i32 %i.0143, i32 1
  %15 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4 = icmp eq i32 %16, 0
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %shl.i.i = shl i32 %16, 3
  %conv1.i.i = and i32 %shl.i.i, %sub.i.i
  %add.ptr = getelementptr i8, ptr %hdr, i32 %conv1.i.i
  %namelen6 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %17 = ptrtoint ptr %namelen6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %namelen6, align 8
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.end.if.end33.thread_crit_edge [
    i8 1, label %land.end28
    i8 2, label %land.lhs.true
  ]

if.end.if.end33.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.thread

land.lhs.true:                                    ; preds = %if.end
  %name17 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %20 = ptrtoint ptr %name17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %name17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %21)
  %cmp20 = icmp eq i8 %21, 46
  br i1 %cmp20, label %if.end33, label %land.lhs.true.if.end33.thread_crit_edge

land.lhs.true.if.end33.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.thread

land.end28:                                       ; preds = %if.end
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %23)
  %cmp11 = icmp eq i8 %23, 46
  br i1 %cmp11, label %land.end28.if.end46_crit_edge, label %land.end28.if.end33.thread_crit_edge

land.end28.if.end33.thread_crit_edge:             ; preds = %land.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.thread

land.end28.if.end46_crit_edge:                    ; preds = %land.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end33.thread:                                  ; preds = %land.end28.if.end33.thread_crit_edge, %land.lhs.true.if.end33.thread_crit_edge, %if.end.if.end33.thread_crit_edge
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %25)
  %cmp31153 = icmp ugt i64 %25, 4294967295
  %conv32154 = zext i1 %cmp31153 to i32
  %add155 = add i32 %i8count.0144, %conv32154
  br label %if.then37

if.end33:                                         ; preds = %land.lhs.true
  %arrayidx24 = getelementptr [0 x i8], ptr %name17, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %27)
  %cmp26 = icmp eq i8 %27, 46
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %29)
  %cmp31 = icmp ugt i64 %29, 4294967295
  %conv32 = zext i1 %cmp31 to i32
  %add = add i32 %i8count.0144, %conv32
  br i1 %cmp26, label %if.then43, label %if.end33.if.then37_crit_edge

if.end33.if.then37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

if.then37:                                        ; preds = %if.end33.if.then37_crit_edge, %if.end33.thread
  %add156 = phi i32 [ %add155, %if.end33.thread ], [ %add, %if.end33.if.then37_crit_edge ]
  %inc = add i32 %count.0141, 1
  %conv39 = zext i8 %18 to i32
  %add40 = add i32 %namelen.0146, %8
  %add41 = add i32 %add40, %conv39
  br label %if.end46

if.then43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then37, %land.end28.if.end46_crit_edge
  %i8count.1133 = phi i32 [ %add, %if.then43 ], [ %add156, %if.then37 ], [ %i8count.0144, %land.end28.if.end46_crit_edge ]
  %count.1 = phi i32 [ %count.0141, %if.then43 ], [ %inc, %if.then37 ], [ %count.0141, %land.end28.if.end46_crit_edge ]
  %namelen.1 = phi i32 [ %namelen.0146, %if.then43 ], [ %add41, %if.then37 ], [ %namelen.0146, %land.end28.if.end46_crit_edge ]
  %parent.1 = phi i64 [ %31, %if.then43 ], [ %parent.0147, %if.then37 ], [ %parent.0147, %land.end28.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i8count.1133)
  %cmp.i = icmp eq i32 %i8count.1133, 0
  %sub.i = select i1 %cmp.i, i32 6, i32 10
  %mul = mul i32 %count.1, 3
  %add49 = add i32 %sub.i, %mul
  %add50 = add i32 %add49, %namelen.1
  %cond54.v = select i1 %cmp.i, i32 2, i32 3
  %cond54 = shl i32 %count.1, %cond54.v
  %add55 = add i32 %add50, %cond54
  %32 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp57.not = icmp eq i8 %33, 0
  br i1 %cmp57.not, label %cond.false62, label %cond.true59

cond.true59:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %conv56 = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv56, 3
  br label %cond.end69

cond.false62:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sb_inodesize, align 8
  %conv64 = zext i16 %35 to i32
  %sub = add nsw i32 %cond68.neg, %conv64
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false62, %cond.true59
  %cond70 = phi i32 [ %shl, %cond.true59 ], [ %sub, %cond.false62 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %cond70)
  %cmp71 = icmp ugt i32 %add55, %cond70
  br i1 %cmp71, label %cond.end69.cleanup_crit_edge, label %cond.end69.for.inc_crit_edge

cond.end69.for.inc_crit_edge:                     ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cond.end69.cleanup_crit_edge:                     ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %cond.end69.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.2 = phi i32 [ %count.0141, %for.body.for.inc_crit_edge ], [ %count.1, %cond.end69.for.inc_crit_edge ]
  %i8count.2 = phi i32 [ %i8count.0144, %for.body.for.inc_crit_edge ], [ %i8count.1133, %cond.end69.for.inc_crit_edge ]
  %namelen.2 = phi i32 [ %namelen.0146, %for.body.for.inc_crit_edge ], [ %namelen.1, %cond.end69.for.inc_crit_edge ]
  %parent.2 = phi i64 [ %parent.0147, %for.body.for.inc_crit_edge ], [ %parent.1, %cond.end69.for.inc_crit_edge ]
  %size.1 = phi i32 [ %size.0149, %for.body.for.inc_crit_edge ], [ %add55, %cond.end69.for.inc_crit_edge ]
  %inc75 = add nuw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc75, %12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %conv76 = trunc i32 %count.2 to i8
  %36 = ptrtoint ptr %sfhp to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv76, ptr %sfhp, align 1
  %conv78 = trunc i32 %i8count.2 to i8
  %i8count79 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfhp, i32 0, i32 1
  %37 = ptrtoint ptr %i8count79 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv78, ptr %i8count79, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %parent.2)
  %cmp.i129 = icmp ult i64 %parent.2, 72057594037927936
  br i1 %cmp.i129, label %for.end.cond.end.i_crit_edge, label %cond.false.i, !prof !104

for.end.cond.end.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 121) #6
  %38 = ptrtoint ptr %i8count79 to i32
  call void @__asan_load1_noabort(i32 %38)
  %.pr = load i8, ptr %i8count79, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.end.cond.end.i_crit_edge
  %39 = phi i8 [ %.pr, %cond.false.i ], [ %conv78, %for.end.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool2.not.i = icmp eq i8 %39, 0
  %extract.t = trunc i64 %parent.2 to i32
  br i1 %tobool2.not.i, label %cond.end.i.if.else.i_crit_edge, label %if.then.i

cond.end.i.if.else.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfhp, i32 0, i32 2
  %40 = ptrtoint ptr %parent.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %parent.2, ptr %parent.i, align 1
  br label %cleanup

if.else.i:                                        ; preds = %cond.end.i.if.else.i_crit_edge, %cond.end.i.thread
  %parent.0.lcssa165171.off0 = phi i32 [ 0, %cond.end.i.thread ], [ %extract.t, %cond.end.i.if.else.i_crit_edge ]
  %size.0.lcssa166170 = phi i32 [ 0, %cond.end.i.thread ], [ %size.1, %cond.end.i.if.else.i_crit_edge ]
  %parent3.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfhp, i32 0, i32 2
  %41 = ptrtoint ptr %parent3.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %parent.0.lcssa165171.off0, ptr %parent3.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %cond.end69.cleanup_crit_edge
  %retval.0 = phi i32 [ %size.1, %if.then.i ], [ %size.0.lcssa166170, %if.else.i ], [ %add55, %cond.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_block_to_sf(ptr noundef %args, ptr noundef %bp, i32 noundef %size, ptr nocapture noundef readonly %sfhp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args, align 8
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_entry_offset, align 4
  tail call fastcc void @trace_xfs_dir2_block_to_sf(ptr noundef %args)
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sb_inodesize, align 8
  %conv = zext i16 %9 to i32
  %call = tail call ptr @kmem_alloc(i32 noundef %conv, i32 noundef 0) #6
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfhp, i32 0, i32 1
  %10 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  %sub.i = select i1 %cmp.i, i32 6, i32 10
  %12 = call ptr @memcpy(ptr %call, ptr %sfhp, i32 %sub.i)
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  %call5 = tail call i32 @xfs_dir3_data_end_offset(ptr noundef %14, ptr noundef %16) #6
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %call, i32 %sub.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call5)
  %cmp200 = icmp ult i32 %7, %call5
  br i1 %cmp200, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call, i32 0, i32 2
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.0202 = phi i32 [ %7, %while.body.lr.ph ], [ %offset.1, %cleanup.while.body_crit_edge ]
  %sfep.0201 = phi ptr [ %add.ptr.i, %while.body.lr.ph ], [ %sfep.2, %cleanup.while.body_crit_edge ]
  %19 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_addr, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %offset.0202
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp12 = icmp eq i16 %22, -1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length, align 2
  %conv14 = zext i16 %24 to i32
  br label %cleanup

if.end:                                           ; preds = %while.body
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %namelen, align 8
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %26, label %if.end.if.else55_crit_edge [
    i8 1, label %land.lhs.true
    i8 2, label %land.lhs.true29
  ]

if.end.if.else55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %29)
  %cmp19 = icmp eq i8 %29, 46
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.else55_crit_edge

land.lhs.true.if.else55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55

if.then21:                                        ; preds = %land.lhs.true
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr, align 8
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp22 = icmp eq i64 %31, %33
  br i1 %cmp22, label %if.then21.if.end67_crit_edge, label %cond.false, !prof !104

if.then21.if.end67_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

cond.false:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 304) #6
  br label %if.end67

land.lhs.true29:                                  ; preds = %if.end
  %name30 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %34 = ptrtoint ptr %name30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %name30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %35)
  %cmp33 = icmp eq i8 %35, 46
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true29.if.else55_crit_edge

land.lhs.true29.if.else55_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55

land.lhs.true35:                                  ; preds = %land.lhs.true29
  %arrayidx37 = getelementptr [0 x i8], ptr %name30, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %37)
  %cmp39 = icmp eq i8 %37, 46
  br i1 %cmp39, label %if.then41, label %land.lhs.true35.if.else55_crit_edge

land.lhs.true35.if.else55_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55

if.then41:                                        ; preds = %land.lhs.true35
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr, align 8
  %40 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %parent.i, align 1
  %conv.i = zext i32 %43 to i64
  br label %xfs_dir2_sf_get_parent_ino.exit

if.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %parent.i, align 1
  %and.i = and i64 %45, 72057594037927935
  br label %xfs_dir2_sf_get_parent_ino.exit

xfs_dir2_sf_get_parent_ino.exit:                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %and.i, %if.end.i ], [ %conv.i, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %retval.0.i)
  %cmp44 = icmp eq i64 %39, %retval.0.i
  br i1 %cmp44, label %xfs_dir2_sf_get_parent_ino.exit.if.end67_crit_edge, label %cond.false53, !prof !104

xfs_dir2_sf_get_parent_ino.exit.if.end67_crit_edge: ; preds = %xfs_dir2_sf_get_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

cond.false53:                                     ; preds = %xfs_dir2_sf_get_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 311) #6
  br label %if.end67

if.else55:                                        ; preds = %land.lhs.true35.if.else55_crit_edge, %land.lhs.true29.if.else55_crit_edge, %land.lhs.true.if.else55_crit_edge, %if.end.if.else55_crit_edge
  %46 = ptrtoint ptr %sfep.0201 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %26, ptr %sfep.0201, align 1
  %conv.i181 = trunc i32 %offset.0202 to i16
  %offset.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0201, i32 0, i32 1
  %47 = ptrtoint ptr %offset.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %conv.i181, ptr %offset.i, align 1
  %name58 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0201, i32 0, i32 2
  %name59 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %48 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %namelen, align 8
  %conv62 = zext i8 %49 to i32
  %50 = call ptr @memcpy(ptr %name58, ptr %name59, i32 %conv62)
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr, align 8
  %conv.i182 = zext i8 %26 to i32
  %add.ptr.i183 = getelementptr i8, ptr %name58, i32 %conv.i182
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %52)
  %cmp.i184 = icmp ult i64 %52, 72057594037927936
  br i1 %cmp.i184, label %if.else55.cond.end.i_crit_edge, label %cond.false.i, !prof !104

if.else55.cond.end.i_crit_edge:                   ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 96) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.else55.cond.end.i_crit_edge
  %53 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m_features.i.i, align 8
  %55 = trunc i64 %54 to i32
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 1
  %spec.select.i = getelementptr i8, ptr %add.ptr.i183, i32 %57
  %58 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool3.not.i = icmp eq i8 %59, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %52, ptr %spec.select.i, align 1
  br label %xfs_dir2_sf_put_ino.exit

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i64 %52 to i32
  %61 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %conv5.i, ptr %spec.select.i, align 1
  br label %xfs_dir2_sf_put_ino.exit

xfs_dir2_sf_put_ino.exit:                         ; preds = %if.else.i, %if.then4.i
  %call64 = tail call zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef %3, ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call64)
  %cmp.i186 = icmp ult i8 %call64, 9
  br i1 %cmp.i186, label %xfs_dir2_sf_put_ino.exit.cond.end.i189_crit_edge, label %cond.false.i187, !prof !104

xfs_dir2_sf_put_ino.exit.cond.end.i189_crit_edge: ; preds = %xfs_dir2_sf_put_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i189

cond.false.i187:                                  ; preds = %xfs_dir2_sf_put_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 154) #6
  br label %cond.end.i189

cond.end.i189:                                    ; preds = %cond.false.i187, %xfs_dir2_sf_put_ino.exit.cond.end.i189_crit_edge
  %62 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %63, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.end.i189.xfs_dir2_sf_put_ftype.exit_crit_edge, label %if.then.i190

cond.end.i189.xfs_dir2_sf_put_ftype.exit_crit_edge: ; preds = %cond.end.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_put_ftype.exit

if.then.i190:                                     ; preds = %cond.end.i189
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %sfep.0201 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sfep.0201, align 1
  %idxprom.i = zext i8 %65 to i32
  %arrayidx.i = getelementptr %struct.xfs_dir2_sf_entry, ptr %sfep.0201, i32 0, i32 2, i32 %idxprom.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %call64, ptr %arrayidx.i, align 1
  br label %xfs_dir2_sf_put_ftype.exit

xfs_dir2_sf_put_ftype.exit:                       ; preds = %if.then.i190, %cond.end.i189.xfs_dir2_sf_put_ftype.exit_crit_edge
  %67 = ptrtoint ptr %sfep.0201 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sfep.0201, align 1
  %conv.i192 = zext i8 %68 to i32
  %add.i.i = add nuw nsw i32 %conv.i192, 3
  %69 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i = icmp eq i8 %70, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %add1.i.i = add nuw nsw i32 %add.i.i, %cond.i.i
  %71 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %m_features.i.i, align 8
  %73 = trunc i64 %72 to i32
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 1
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %75
  %add.ptr.i193 = getelementptr i8, ptr %sfep.0201, i32 %spec.select.i.i
  br label %if.end67

if.end67:                                         ; preds = %xfs_dir2_sf_put_ftype.exit, %cond.false53, %xfs_dir2_sf_get_parent_ino.exit.if.end67_crit_edge, %cond.false, %if.then21.if.end67_crit_edge
  %sfep.1 = phi ptr [ %sfep.0201, %if.then21.if.end67_crit_edge ], [ %sfep.0201, %cond.false ], [ %sfep.0201, %xfs_dir2_sf_get_parent_ino.exit.if.end67_crit_edge ], [ %sfep.0201, %cond.false53 ], [ %add.ptr.i193, %xfs_dir2_sf_put_ftype.exit ]
  %76 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %namelen, align 8
  %conv69 = zext i8 %77 to i32
  %78 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %m_features.i.i, align 8
  %and.i.i195 = and i64 %79, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i195)
  %tobool.i.not.i196 = icmp eq i64 %and.i.i195, 0
  %spec.select.v.i = select i1 %tobool.i.not.i196, i32 11, i32 12
  %spec.select.i197 = add nsw i32 %conv69, -1
  %sub.i198 = add nsw i32 %spec.select.i197, %spec.select.v.i
  %or.i = or i32 %sub.i198, 7
  %add3.i = add nsw i32 %or.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then
  %sfep.2 = phi ptr [ %sfep.0201, %if.then ], [ %sfep.1, %if.end67 ]
  %conv14.pn = phi i32 [ %conv14, %if.then ], [ %add3.i, %if.end67 ]
  %offset.1 = add i32 %conv14.pn, %offset.0202
  %cmp = icmp ult i32 %offset.1, %call5
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %sfep.0.lcssa = phi ptr [ %add.ptr.i, %entry.while.end_crit_edge ], [ %sfep.2, %cleanup.while.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %sfep.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %size)
  %cmp73 = icmp eq i32 %sub.ptr.sub, %size
  br i1 %cmp73, label %while.end.cond.end83_crit_edge, label %cond.false82, !prof !104

while.end.cond.end83_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end83

cond.false82:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 328) #6
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false82, %while.end.cond.end83_crit_edge
  %80 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %args, align 8
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %datablk, align 4
  %call85 = tail call i32 @xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %83, ptr noundef %bp) #6
  %84 = zext i32 %call85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call85, label %cond.end83.out_crit_edge [
    i32 0, label %if.end99
    i32 -28, label %cond.false97
  ], !prof !105

cond.end83.out_crit_edge:                         ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cond.false97:                                     ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 334) #6
  br label %out

if.end99:                                         ; preds = %cond.end83
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %85 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp100 = icmp eq i64 %86, 0
  br i1 %cmp100, label %if.end99.cond.end110_crit_edge, label %cond.false109, !prof !104

if.end99.cond.end110_crit_edge:                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end110

cond.false109:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 344) #6
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %if.end99.cond.end110_crit_edge
  %conv111 = sext i32 %size to i64
  tail call void @xfs_init_local_fork(ptr noundef %1, i32 noundef 0, ptr noundef %call, i64 noundef %conv111) #6
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %87 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %if_format, align 2
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %88 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv111, ptr %i_disk_size, align 8
  tail call fastcc void @xfs_dir2_sf_check(ptr noundef %args)
  br label %out

out:                                              ; preds = %cond.end110, %cond.false97, %cond.end83.out_crit_edge
  %logflags.0 = phi i32 [ 1, %cond.false97 ], [ 3, %cond.end110 ], [ 1, %cond.end83.out_crit_edge ]
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %89 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %90, ptr noundef %1, i32 noundef %logflags.0) #6
  tail call void @kvfree(ptr noundef %call) #6
  ret i32 %call85
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_block_to_sf(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_to_sf, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_block_to_sf, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !107
  %call42 = tail call i32 @__traceiter_xfs_dir2_block_to_sf(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_to_sf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_block_to_sf, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_block_to_sf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_block_to_sf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1967, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_end_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_shrink_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_init_local_fork(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_sf_check(ptr nocapture noundef readonly %args) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_u1, align 4
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 8
  %data_first_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %data_first_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_first_offset, align 4
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %5, i32 0, i32 2
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %parent.i, align 1
  %conv.i = zext i32 %13 to i64
  br label %xfs_dir2_sf_get_parent_ino.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %parent.i, align 1
  %and.i = and i64 %15, 72057594037927935
  br label %xfs_dir2_sf_get_parent_ino.exit

xfs_dir2_sf_get_parent_ino.exit:                  ; preds = %if.end.i, %if.then.i
  %sub.i.i = phi i32 [ 6, %if.then.i ], [ 10, %if.end.i ]
  %retval.0.i = phi i64 [ %conv.i, %if.then.i ], [ %and.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %retval.0.i)
  %cmp = icmp ugt i64 %retval.0.i, 4294967295
  %conv = zext i1 %cmp to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %sub.i.i
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp4116.not = icmp eq i8 %17, 0
  br i1 %cmp4116.not, label %xfs_dir2_sf_get_parent_ino.exit.for.end_crit_edge, label %for.body.lr.ph

xfs_dir2_sf_get_parent_ino.exit.for.end_crit_edge: ; preds = %xfs_dir2_sf_get_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %xfs_dir2_sf_get_parent_ino.exit
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %xfs_dir2_sf_get_ino.exit.for.body_crit_edge, %for.body.lr.ph
  %sfep.0120 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr.i114, %xfs_dir2_sf_get_ino.exit.for.body_crit_edge ]
  %offset.0119 = phi i32 [ %9, %for.body.lr.ph ], [ %add16, %xfs_dir2_sf_get_ino.exit.for.body_crit_edge ]
  %i8count.0118 = phi i32 [ %conv, %for.body.lr.ph ], [ %add, %xfs_dir2_sf_get_ino.exit.for.body_crit_edge ]
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xfs_dir2_sf_get_ino.exit.for.body_crit_edge ]
  %offset.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0120, i32 0, i32 1
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %offset.i, align 1
  %conv.i98 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0119, i32 %conv.i98)
  %cmp7.not = icmp ugt i32 %offset.0119, %conv.i98
  br i1 %cmp7.not, label %cond.false, label %for.body.cond.end_crit_edge, !prof !111

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 691) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %name.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0120, i32 0, i32 2
  %20 = ptrtoint ptr %sfep.0120 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sfep.0120, align 1
  %conv.i99 = zext i8 %21 to i32
  %add.ptr.i100 = getelementptr i8, ptr %name.i, i32 %conv.i99
  %22 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i.i, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 1
  %spec.select.i = getelementptr i8, ptr %add.ptr.i100, i32 %26
  %27 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i102 = icmp eq i8 %28, 0
  br i1 %tobool.not.i102, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %spec.select.i, align 1
  %conv3.i = zext i32 %30 to i64
  br label %xfs_dir2_sf_get_ino.exit

if.end4.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %spec.select.i, align 1
  %and.i103 = and i64 %32, 72057594037927935
  br label %xfs_dir2_sf_get_ino.exit

xfs_dir2_sf_get_ino.exit:                         ; preds = %if.end4.i, %if.then1.i
  %retval.0.i104 = phi i64 [ %and.i103, %if.end4.i ], [ %conv3.i, %if.then1.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %retval.0.i104)
  %cmp11 = icmp ugt i64 %retval.0.i104, 4294967295
  %conv12 = zext i1 %cmp11 to i32
  %add = add i32 %i8count.0118, %conv12
  %33 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %offset.i, align 1
  %conv.i106 = zext i16 %34 to i32
  %and.i.i = and i64 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i108 = add nsw i32 %conv.i99, -1
  %sub.i = add nsw i32 %spec.select.i108, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add nsw i32 %or.i, 1
  %add16 = add nsw i32 %add3.i, %conv.i106
  %inc = add nuw nsw i32 %i.0117, 1
  %35 = ptrtoint ptr %sfep.0120 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sfep.0120, align 1
  %conv.i113 = zext i8 %36 to i32
  %add.i.i = add nuw nsw i32 %conv.i113, 3
  %37 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %add1.i.i = add nuw nsw i32 %add.i.i, %cond.i.i
  %39 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %m_features.i.i, align 8
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 1
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %43
  %add.ptr.i114 = getelementptr i8, ptr %sfep.0120, i32 %spec.select.i.i
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 1
  %conv3 = zext i8 %45 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %xfs_dir2_sf_get_ino.exit.for.body_crit_edge, label %xfs_dir2_sf_get_ino.exit.for.end_crit_edge

xfs_dir2_sf_get_ino.exit.for.end_crit_edge:       ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

xfs_dir2_sf_get_ino.exit.for.body_crit_edge:      ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %xfs_dir2_sf_get_ino.exit.for.end_crit_edge, %xfs_dir2_sf_get_parent_ino.exit.for.end_crit_edge
  %i8count.0.lcssa = phi i32 [ %conv, %xfs_dir2_sf_get_parent_ino.exit.for.end_crit_edge ], [ %add, %xfs_dir2_sf_get_ino.exit.for.end_crit_edge ]
  %offset.0.lcssa = phi i32 [ %9, %xfs_dir2_sf_get_parent_ino.exit.for.end_crit_edge ], [ %add16, %xfs_dir2_sf_get_ino.exit.for.end_crit_edge ]
  %sfep.0.lcssa = phi ptr [ %add.ptr.i, %xfs_dir2_sf_get_parent_ino.exit.for.end_crit_edge ], [ %add.ptr.i114, %xfs_dir2_sf_get_ino.exit.for.end_crit_edge ]
  %46 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i8count.i, align 1
  %conv32 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i8count.0.lcssa, i32 %conv32)
  %cmp33 = icmp eq i32 %i8count.0.lcssa, %conv32
  br i1 %cmp33, label %for.end.cond.end43_crit_edge, label %cond.false42, !prof !104

for.end.cond.end43_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end43

cond.false42:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 699) #6
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %for.end.cond.end43_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %sfep.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv44 = sext i32 %sub.ptr.sub to i64
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %48 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %conv44)
  %cmp45 = icmp eq i64 %49, %conv44
  br i1 %cmp45, label %cond.end43.cond.end55_crit_edge, label %cond.false54, !prof !104

cond.end43.cond.end55_crit_edge:                  ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 700) #6
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.end43.cond.end55_crit_edge
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %5, align 1
  %conv57 = zext i8 %51 to i32
  %add58 = shl nuw nsw i32 %conv57, 3
  %add59 = add i32 %offset.0.lcssa, 24
  %add60 = add i32 %add59, %add58
  %52 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %args, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %55)
  %cmp62.not = icmp ugt i32 %add60, %55
  br i1 %cmp62.not, label %cond.false71, label %cond.end55.cond.end72_crit_edge, !prof !111

cond.end55.cond.end72_crit_edge:                  ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end72

cond.false71:                                     ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 703) #6
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %cond.end55.cond.end72_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_sf_addname(ptr noundef %args) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_dir2_sf_addname(ptr noundef %args)
  %call = tail call i32 @xfs_dir2_sf_lookup(ptr noundef %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp = icmp eq i32 %call, -2
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 379) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp2, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp eq i8 %3, 1
  br i1 %cmp3, label %cond.end.cond.end13_crit_edge, label %cond.false12, !prof !104

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 381) #6
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %5)
  %cmp14 = icmp sgt i64 %5, 1
  br i1 %cmp14, label %cond.end13.cond.end24_crit_edge, label %cond.false23, !prof !104

cond.end13.cond.end24_crit_edge:                  ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 382) #6
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.end13.cond.end24_crit_edge
  %6 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_df, align 8
  %8 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp27 = icmp eq i64 %7, %9
  br i1 %cmp27, label %cond.end24.cond.end37_crit_edge, label %cond.false36, !prof !104

cond.end24.cond.end37_crit_edge:                  ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end37

cond.false36:                                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 383) #6
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.end24.cond.end37_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_u1, align 4
  %cmp39.not = icmp eq ptr %11, null
  br i1 %cmp39.not, label %cond.false48, label %cond.end37.cond.end49_crit_edge, !prof !111

cond.end37.cond.end49_crit_edge:                  ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end49

cond.false48:                                     ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 384) #6
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %cond.end37.cond.end49_crit_edge
  %12 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_u1, align 4
  %14 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_disk_size, align 8
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  %18 = select i1 %cmp.i, i64 6, i64 10
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %18)
  %cmp56.not = icmp slt i64 %15, %18
  br i1 %cmp56.not, label %cond.false65, label %cond.end49.cond.end66_crit_edge, !prof !111

cond.end49.cond.end66_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 386) #6
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.end49.cond.end66_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %21 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %namelen, align 8
  %add.i = add i32 %22, 3
  %23 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %cond.i = select i1 %tobool.not.i, i32 4, i32 8
  %add1.i = add i32 %cond.i, %add.i
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i.i, align 8
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 1
  %spec.select.i = add i32 %add1.i, %29
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %30 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %inumber, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %31)
  %cmp68 = icmp ult i64 %31, 4294967296
  %tobool.not.i.not = xor i1 %tobool.not.i, true
  %brmerge = select i1 %cmp68, i1 true, i1 %tobool.not.i.not
  br i1 %brmerge, label %cond.end66.if.end_crit_edge, label %if.then

cond.end66.if.end_crit_edge:                      ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %13, align 1
  %conv74 = zext i8 %33 to i32
  %add = shl nuw nsw i32 %conv74, 2
  %mul = add i32 %spec.select.i, 8
  %add75 = add i32 %mul, %add
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end66.if.end_crit_edge
  %incr_isize.0 = phi i32 [ %add75, %if.then ], [ %spec.select.i, %cond.end66.if.end_crit_edge ]
  %34 = xor i1 %brmerge, true
  %35 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_disk_size, align 8
  %conv77 = trunc i64 %36 to i32
  %add78 = add i32 %incr_isize.0, %conv77
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %37 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp80.not = icmp eq i8 %38, 0
  br i1 %cmp80.not, label %cond.false85, label %cond.true82

cond.true82:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv79 = zext i8 %38 to i32
  %shl = shl nuw nsw i32 %conv79, 3
  br label %cond.end91

cond.false85:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %20, i32 0, i32 17
  %39 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sb_inodesize, align 8
  %conv87 = zext i16 %40 to i32
  %and.i = and i64 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv87
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false85, %cond.true82
  %cond92 = phi i32 [ %shl, %cond.true82 ], [ %sub, %cond.false85 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %cond92)
  %cmp93 = icmp ugt i32 %add78, %cond92
  br i1 %cmp93, label %cond.end91.if.then98_crit_edge, label %lor.lhs.false

cond.end91.if.then98_crit_edge:                   ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

lor.lhs.false:                                    ; preds = %cond.end91
  %41 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dp2, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %if_u1.i = getelementptr inbounds %struct.xfs_inode, ptr %42, i32 0, i32 8, i32 4
  %45 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %if_u1.i, align 4
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %44, i32 0, i32 61
  %47 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %spec.select.i.i = select i1 %tobool.i.not.i.i, i32 10, i32 11
  %sub.i.i = add i32 %spec.select.i.i, %22
  %or.i.i = or i32 %sub.i.i, 7
  %add3.i.i = add i32 %or.i.i, 1
  %49 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args, align 8
  %data_first_offset.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %data_first_offset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_first_offset.i, align 4
  %i8count.i.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %i8count.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i8count.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp.i.i.i = icmp eq i8 %54, 0
  %sub.i.i.i = select i1 %cmp.i.i.i, i32 6, i32 10
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %sub.i.i.i
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %46, align 1
  %conv.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp76.not.i = icmp eq i8 %56, 0
  br i1 %cmp76.not.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %add1587.i = shl nuw nsw i32 %conv.i, 3
  %add1688.i = add i32 %52, 32
  %add1789.i = add nuw nsw i32 %add1688.i, %add1587.i
  br label %66

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 4, i32 8
  %57 = trunc i64 %48 to i32
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 1
  %add.i.i.i = add nuw nsw i32 %59, 3
  %add1.i.i.i = add nuw nsw i32 %add.i.i.i, %cond.i.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sfep.080.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i ], [ %add.ptr.i75.i, %if.end.i.for.body.i_crit_edge ]
  %offset.079.i = phi i32 [ %52, %for.body.lr.ph.i ], [ %add11.i, %if.end.i.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %holefit.077.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %holefit.1.i, %if.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %holefit.077.i)
  %tobool.not.i179 = icmp eq i32 %holefit.077.i, 0
  br i1 %tobool.not.i179, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i180 = add i32 %offset.079.i, %add3.i.i
  %offset.i.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.080.i, i32 0, i32 1
  %60 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %offset.i.i, align 1
  %conv.i.i = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i180, i32 %conv.i.i)
  %cmp5.i = icmp ule i32 %add.i180, %conv.i.i
  %conv6.i = zext i1 %cmp5.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %holefit.1.i = phi i32 [ 1, %for.body.i.if.end.i_crit_edge ], [ %conv6.i, %if.then.i ]
  %offset.i64.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.080.i, i32 0, i32 1
  %62 = ptrtoint ptr %offset.i64.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %offset.i64.i, align 1
  %conv.i65.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %sfep.080.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sfep.080.i, align 1
  %conv9.i = zext i8 %65 to i32
  %sub.i71.i = add nuw nsw i32 %spec.select.i.i, %conv9.i
  %or.i72.i = or i32 %sub.i71.i, 7
  %add3.i73.i = add nuw nsw i32 %conv.i65.i, 1
  %add11.i = add nuw nsw i32 %add3.i73.i, %or.i72.i
  %spec.select.i.i.i = add nuw nsw i32 %add1.i.i.i, %conv9.i
  %add.ptr.i75.i = getelementptr i8, ptr %sfep.080.i, i32 %spec.select.i.i.i
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %add15.i = shl nuw nsw i32 %conv.i, 3
  %add16.i = add nuw nsw i32 %add15.i, 32
  %add17.i = add nuw nsw i32 %add16.i, %add11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %holefit.1.i)
  %tobool18.not.i = icmp eq i32 %holefit.1.i, 0
  br i1 %tobool18.not.i, label %for.end.i._crit_edge, label %for.end.i._crit_edge268

for.end.i._crit_edge268:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %67

for.end.i._crit_edge:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %66

66:                                               ; preds = %for.end.i._crit_edge, %for.end.thread.i
  %add1796.i = phi i32 [ %add1789.i, %for.end.thread.i ], [ %add17.i, %for.end.i._crit_edge ]
  %sfep.0.lcssa94.i = phi ptr [ %add.ptr.i.i, %for.end.thread.i ], [ %add.ptr.i75.i, %for.end.i._crit_edge ]
  %offset.0.lcssa92.i = phi i32 [ %52, %for.end.thread.i ], [ %add11.i, %for.end.i._crit_edge ]
  br label %67

67:                                               ; preds = %66, %for.end.i._crit_edge268
  %add1795.i = phi i32 [ %add1796.i, %66 ], [ %add17.i, %for.end.i._crit_edge268 ]
  %sfep.0.lcssa93.i = phi ptr [ %sfep.0.lcssa94.i, %66 ], [ %add.ptr.i75.i, %for.end.i._crit_edge268 ]
  %offset.0.lcssa91.i = phi i32 [ %offset.0.lcssa92.i, %66 ], [ %add11.i, %for.end.i._crit_edge268 ]
  %68 = phi i32 [ %add3.i.i, %66 ], [ 0, %for.end.i._crit_edge268 ]
  %add19.i = add i32 %68, %add1795.i
  %69 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i, i32 %70)
  %cmp21.i = icmp ugt i32 %add19.i, %70
  br i1 %cmp21.i, label %.if.then98_crit_edge, label %if.end24.i

.if.then98_crit_edge:                             ; preds = %67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

if.end24.i:                                       ; preds = %67
  %add28.i = add i32 %add1795.i, %add3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i, i32 %70)
  %cmp31.i = icmp ugt i32 %add28.i, %70
  %or.cond.i = select i1 %34, i1 true, i1 %cmp31.i
  %op_flags111258 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %71 = ptrtoint ptr %op_flags111258 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %op_flags111258, align 8
  %and112259 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112259)
  %tobool113.not260 = icmp eq i32 %and112259, 0
  br i1 %or.cond.i, label %if.end110.thread, label %if.end110

if.then98:                                        ; preds = %.if.then98_crit_edge, %cond.end91.if.then98_crit_edge
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %73 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %op_flags, align 8
  %and = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool99.not = icmp eq i32 %and, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false100:                                 ; preds = %if.then98
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %75 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp101 = icmp eq i32 %76, 0
  br i1 %cmp101, label %lor.lhs.false100.cleanup_crit_edge, label %if.end104

lor.lhs.false100.cleanup_crit_edge:               ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false100
  %call105 = tail call i32 @xfs_dir2_sf_to_block(ptr noundef %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %call109 = tail call i32 @xfs_dir2_block_addname(ptr noundef %args) #6
  br label %cleanup

if.end110:                                        ; preds = %if.end24.i
  br i1 %tobool113.not260, label %if.then118, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end110.thread:                                 ; preds = %if.end24.i
  br i1 %tobool113.not260, label %cond.end129, label %if.end110.thread.cleanup_crit_edge

if.end110.thread.cleanup_crit_edge:               ; preds = %if.end110.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then118:                                       ; preds = %if.end110
  %sub.ptr.lhs.cast.i = ptrtoint ptr %sfep.0.lcssa93.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cond.i.i = select i1 %cmp.i.i.i, i32 4, i32 8
  %77 = trunc i64 %48 to i32
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 1
  %add1.i.i = add i32 %79, %add.i
  %spec.select.i.i186 = add i32 %add1.i.i, %cond.i.i
  %conv.i187 = sext i32 %spec.select.i.i186 to i64
  tail call void @xfs_idata_realloc(ptr noundef %42, i64 noundef %conv.i187, i32 noundef 0) #6
  %80 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %if_u1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %81, i32 %sub.ptr.sub.i
  %82 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %namelen, align 8
  %conv5.i = trunc i32 %83 to i8
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv5.i, ptr %add.ptr.i, align 1
  %conv.i.i188 = trunc i32 %offset.0.lcssa91.i to i16
  %offset.i.i189 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %add.ptr.i, i32 0, i32 1
  %85 = ptrtoint ptr %offset.i.i189 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %conv.i.i188, ptr %offset.i.i189, align 1
  %name.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %add.ptr.i, i32 0, i32 2
  %name7.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %86 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name7.i, align 4
  %conv9.i190 = and i32 %83, 255
  %88 = call ptr @memcpy(ptr %name.i, ptr %87, i32 %conv9.i190)
  %89 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %inumber, align 8
  %add.ptr.i.i191 = getelementptr i8, ptr %name.i, i32 %conv9.i190
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %90)
  %cmp.i.i = icmp ult i64 %90, 72057594037927936
  br i1 %cmp.i.i, label %if.then118.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !104

if.then118.cond.end.i.i_crit_edge:                ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 96) #6
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then118.cond.end.i.i_crit_edge
  %91 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %m_features.i.i.i, align 8
  %93 = trunc i64 %92 to i32
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 1
  %spec.select.i40.i = getelementptr i8, ptr %add.ptr.i.i191, i32 %95
  %i8count.i41.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %81, i32 0, i32 1
  %96 = ptrtoint ptr %i8count.i41.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %i8count.i41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool3.not.i.i = icmp eq i8 %97, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %spec.select.i40.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %90, ptr %spec.select.i40.i, align 1
  br label %xfs_dir2_sf_put_ino.exit.i

if.else.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i = trunc i64 %90 to i32
  %99 = ptrtoint ptr %spec.select.i40.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %conv5.i.i, ptr %spec.select.i40.i, align 1
  br label %xfs_dir2_sf_put_ino.exit.i

xfs_dir2_sf_put_ino.exit.i:                       ; preds = %if.else.i.i, %if.then4.i.i
  %filetype.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %100 = ptrtoint ptr %filetype.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %filetype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %101)
  %cmp.i42.i = icmp ult i8 %101, 9
  br i1 %cmp.i42.i, label %xfs_dir2_sf_put_ino.exit.i.cond.end.i45.i_crit_edge, label %cond.false.i43.i, !prof !104

xfs_dir2_sf_put_ino.exit.i.cond.end.i45.i_crit_edge: ; preds = %xfs_dir2_sf_put_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i45.i

cond.false.i43.i:                                 ; preds = %xfs_dir2_sf_put_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 154) #6
  br label %cond.end.i45.i

cond.end.i45.i:                                   ; preds = %cond.false.i43.i, %xfs_dir2_sf_put_ino.exit.i.cond.end.i45.i_crit_edge
  %102 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i192 = and i64 %103, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i192)
  %tobool.i.not.i.i193 = icmp eq i64 %and.i.i.i192, 0
  br i1 %tobool.i.not.i.i193, label %cond.end.i45.i.xfs_dir2_sf_put_ftype.exit.i_crit_edge, label %if.then.i.i

cond.end.i45.i.xfs_dir2_sf_put_ftype.exit.i_crit_edge: ; preds = %cond.end.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_put_ftype.exit.i

if.then.i.i:                                      ; preds = %cond.end.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %add.ptr.i, align 1
  %idxprom.i.i = zext i8 %105 to i32
  %arrayidx.i.i = getelementptr %struct.xfs_dir2_sf_entry, ptr %add.ptr.i, i32 0, i32 2, i32 %idxprom.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %101, ptr %arrayidx.i.i, align 1
  br label %xfs_dir2_sf_put_ftype.exit.i

xfs_dir2_sf_put_ftype.exit.i:                     ; preds = %if.then.i.i, %cond.end.i45.i.xfs_dir2_sf_put_ftype.exit.i_crit_edge
  %107 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %81, align 1
  %inc.i194 = add i8 %108, 1
  store i8 %inc.i194, ptr %81, align 1
  %109 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %inumber, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %110)
  %cmp.i195 = icmp ugt i64 %110, 4294967295
  br i1 %cmp.i195, label %if.then.i196, label %xfs_dir2_sf_put_ftype.exit.i.xfs_dir2_sf_addname_easy.exit_crit_edge

xfs_dir2_sf_put_ftype.exit.i.xfs_dir2_sf_addname_easy.exit_crit_edge: ; preds = %xfs_dir2_sf_put_ftype.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_addname_easy.exit

if.then.i196:                                     ; preds = %xfs_dir2_sf_put_ftype.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %i8count.i41.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %i8count.i41.i, align 1
  %inc12.i = add i8 %112, 1
  store i8 %inc12.i, ptr %i8count.i41.i, align 1
  br label %xfs_dir2_sf_addname_easy.exit

xfs_dir2_sf_addname_easy.exit:                    ; preds = %if.then.i196, %xfs_dir2_sf_put_ftype.exit.i.xfs_dir2_sf_addname_easy.exit_crit_edge
  %conv13.i = sext i32 %add78 to i64
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %42, i32 0, i32 18
  %113 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv13.i, ptr %i_disk_size.i, align 8
  br label %if.end133

cond.end129:                                      ; preds = %if.end110.thread
  br i1 %brmerge, label %cond.end129.if.end132_crit_edge, label %if.then131

cond.end129.if.end132_crit_edge:                  ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.then131:                                       ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xfs_dir2_sf_toino8(ptr noundef %args)
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %cond.end129.if.end132_crit_edge
  %114 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dp2, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  %if_u1.i199 = getelementptr inbounds %struct.xfs_inode, ptr %115, i32 0, i32 8, i32 4
  %118 = ptrtoint ptr %if_u1.i199 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %if_u1.i199, align 4
  %i_disk_size.i200 = getelementptr inbounds %struct.xfs_inode, ptr %115, i32 0, i32 18
  %120 = ptrtoint ptr %i_disk_size.i200 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %i_disk_size.i200, align 8
  %conv.i201 = trunc i64 %121 to i32
  %call.i = tail call ptr @kmem_alloc(i32 noundef %conv.i201, i32 noundef 0) #6
  %122 = call ptr @memcpy(ptr %call.i, ptr %119, i32 %conv.i201)
  %123 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %args, align 8
  %data_first_offset.i202 = getelementptr inbounds %struct.xfs_da_geometry, ptr %124, i32 0, i32 14
  %125 = ptrtoint ptr %data_first_offset.i202 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_first_offset.i202, align 4
  %i8count.i.i203 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call.i, i32 0, i32 1
  %127 = ptrtoint ptr %i8count.i.i203 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %i8count.i.i203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp.i.i.i204 = icmp eq i8 %128, 0
  %sub.i.i.i205 = select i1 %cmp.i.i.i204, i32 6, i32 10
  %add.ptr.i.i206 = getelementptr i8, ptr %call.i, i32 %sub.i.i.i205
  %129 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %namelen, align 8
  %m_features.i.i.i208 = getelementptr inbounds %struct.xfs_mount, ptr %117, i32 0, i32 61
  %131 = ptrtoint ptr %m_features.i.i.i208 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %m_features.i.i.i208, align 8
  %and.i.i.i209 = and i64 %132, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i209)
  %tobool.i.not.i.i210 = icmp eq i64 %and.i.i.i209, 0
  %spec.select.i.i211 = select i1 %tobool.i.not.i.i210, i32 10, i32 11
  %sub.i.i212 = add i32 %spec.select.i.i211, %130
  %or.i.i213 = or i32 %sub.i.i212, 7
  %add3.i.i214 = add i32 %or.i.i213, 1
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %conv.i201
  %eof.0.in128.i = icmp eq ptr %add.ptr.i.i206, %arrayidx.i
  br i1 %eof.0.in128.i, label %if.end132.for.end.i233_crit_edge, label %for.body.lr.ph.i217

if.end132.for.end.i233_crit_edge:                 ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i233

for.body.lr.ph.i217:                              ; preds = %if.end132
  %133 = trunc i64 %132 to i32
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 1
  %add.i.i.i215 = select i1 %cmp.i.i.i204, i32 7, i32 11
  %add1.i.i.i216 = add nuw nsw i32 %135, %add.i.i.i215
  br label %for.body.i221

for.body.i221:                                    ; preds = %for.inc.i.for.body.i221_crit_edge, %for.body.lr.ph.i217
  %oldsfep.0130.i = phi ptr [ %add.ptr.i.i206, %for.body.lr.ph.i217 ], [ %add.ptr.i105.i, %for.inc.i.for.body.i221_crit_edge ]
  %offset.0129.i = phi i32 [ %126, %for.body.lr.ph.i217 ], [ %add11.i223, %for.inc.i.for.body.i221_crit_edge ]
  %offset.i.i218 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %oldsfep.0130.i, i32 0, i32 1
  %136 = ptrtoint ptr %offset.i.i218 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %offset.i.i218, align 1
  %conv.i.i219 = zext i16 %137 to i32
  %add.i220 = add i32 %add3.i.i214, %offset.0129.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i220, i32 %conv.i.i219)
  %cmp6.not.i = icmp ugt i32 %add.i220, %conv.i.i219
  br i1 %cmp6.not.i, label %for.inc.i, label %for.body.i221.for.end.i233_crit_edge

for.body.i221.for.end.i233_crit_edge:             ; preds = %for.body.i221
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i233

for.inc.i:                                        ; preds = %for.body.i221
  %138 = ptrtoint ptr %oldsfep.0130.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %oldsfep.0130.i, align 1
  %conv9.i222 = zext i8 %139 to i32
  %sub.i101.i = add nuw nsw i32 %spec.select.i.i211, %conv9.i222
  %or.i102.i = or i32 %sub.i101.i, 7
  %add3.i103.i = add nuw nsw i32 %conv.i.i219, 1
  %add11.i223 = add nuw nsw i32 %add3.i103.i, %or.i102.i
  %spec.select.i.i.i224 = add nuw nsw i32 %add1.i.i.i216, %conv9.i222
  %add.ptr.i105.i = getelementptr i8, ptr %oldsfep.0130.i, i32 %spec.select.i.i.i224
  %eof.0.in.i = icmp eq ptr %add.ptr.i105.i, %arrayidx.i
  br i1 %eof.0.in.i, label %for.inc.i.for.end.i233_crit_edge, label %for.inc.i.for.body.i221_crit_edge

for.inc.i.for.body.i221_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i221

for.inc.i.for.end.i233_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i233

for.end.i233:                                     ; preds = %for.inc.i.for.end.i233_crit_edge, %for.body.i221.for.end.i233_crit_edge, %if.end132.for.end.i233_crit_edge
  %offset.0.lcssa.i = phi i32 [ %126, %if.end132.for.end.i233_crit_edge ], [ %add11.i223, %for.inc.i.for.end.i233_crit_edge ], [ %offset.0129.i, %for.body.i221.for.end.i233_crit_edge ]
  %oldsfep.0.lcssa.i = phi ptr [ %add.ptr.i.i206, %if.end132.for.end.i233_crit_edge ], [ %arrayidx.i, %for.inc.i.for.end.i233_crit_edge ], [ %oldsfep.0130.i, %for.body.i221.for.end.i233_crit_edge ]
  %eof.0.in.lcssa.i = phi i1 [ true, %if.end132.for.end.i233_crit_edge ], [ %cmp6.not.i, %for.body.i221.for.end.i233_crit_edge ], [ %cmp6.not.i, %for.inc.i.for.end.i233_crit_edge ]
  %sub.i225 = sub i32 0, %conv.i201
  %conv16.i = sext i32 %sub.i225 to i64
  tail call void @xfs_idata_realloc(ptr noundef %115, i64 noundef %conv16.i, i32 noundef 0) #6
  %conv17.i = sext i32 %add78 to i64
  tail call void @xfs_idata_realloc(ptr noundef %115, i64 noundef %conv17.i, i32 noundef 0) #6
  %140 = ptrtoint ptr %if_u1.i199 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %if_u1.i199, align 4
  %sub.ptr.lhs.cast.i226 = ptrtoint ptr %oldsfep.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i227 = ptrtoint ptr %call.i to i32
  %sub.ptr.sub.i228 = sub i32 %sub.ptr.lhs.cast.i226, %sub.ptr.rhs.cast.i227
  %142 = call ptr @memcpy(ptr %141, ptr %call.i, i32 %sub.ptr.sub.i228)
  %add.ptr.i229 = getelementptr i8, ptr %141, i32 %sub.ptr.sub.i228
  %143 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %namelen, align 8
  %conv21.i = trunc i32 %144 to i8
  %145 = ptrtoint ptr %add.ptr.i229 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv21.i, ptr %add.ptr.i229, align 1
  %conv.i106.i = trunc i32 %offset.0.lcssa.i to i16
  %offset.i107.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %add.ptr.i229, i32 0, i32 1
  %146 = ptrtoint ptr %offset.i107.i to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 %conv.i106.i, ptr %offset.i107.i, align 1
  %name.i230 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %add.ptr.i229, i32 0, i32 2
  %name23.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %147 = ptrtoint ptr %name23.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name23.i, align 4
  %conv25.i = and i32 %144, 255
  %149 = call ptr @memcpy(ptr %name.i230, ptr %148, i32 %conv25.i)
  %150 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %inumber, align 8
  %add.ptr.i109.i = getelementptr i8, ptr %name.i230, i32 %conv25.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %151)
  %cmp.i.i232 = icmp ult i64 %151, 72057594037927936
  br i1 %cmp.i.i232, label %for.end.i233.cond.end.i.i236_crit_edge, label %cond.false.i.i234, !prof !104

for.end.i233.cond.end.i.i236_crit_edge:           ; preds = %for.end.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i236

cond.false.i.i234:                                ; preds = %for.end.i233
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 96) #6
  br label %cond.end.i.i236

cond.end.i.i236:                                  ; preds = %cond.false.i.i234, %for.end.i233.cond.end.i.i236_crit_edge
  %152 = ptrtoint ptr %m_features.i.i.i208 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %m_features.i.i.i208, align 8
  %154 = trunc i64 %153 to i32
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 1
  %spec.select.i111.i = getelementptr i8, ptr %add.ptr.i109.i, i32 %156
  %i8count.i112.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %141, i32 0, i32 1
  %157 = ptrtoint ptr %i8count.i112.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %i8count.i112.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool3.not.i.i235 = icmp eq i8 %158, 0
  br i1 %tobool3.not.i.i235, label %if.else.i.i239, label %if.then4.i.i237

if.then4.i.i237:                                  ; preds = %cond.end.i.i236
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %spec.select.i111.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 8)
  store i64 %151, ptr %spec.select.i111.i, align 1
  br label %xfs_dir2_sf_put_ino.exit.i241

if.else.i.i239:                                   ; preds = %cond.end.i.i236
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i238 = trunc i64 %151 to i32
  %160 = ptrtoint ptr %spec.select.i111.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %conv5.i.i238, ptr %spec.select.i111.i, align 1
  br label %xfs_dir2_sf_put_ino.exit.i241

xfs_dir2_sf_put_ino.exit.i241:                    ; preds = %if.else.i.i239, %if.then4.i.i237
  %filetype.i240 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %161 = ptrtoint ptr %filetype.i240 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %filetype.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %162)
  %cmp.i113.i = icmp ult i8 %162, 9
  br i1 %cmp.i113.i, label %xfs_dir2_sf_put_ino.exit.i241.cond.end.i118.i_crit_edge, label %cond.false.i114.i, !prof !104

xfs_dir2_sf_put_ino.exit.i241.cond.end.i118.i_crit_edge: ; preds = %xfs_dir2_sf_put_ino.exit.i241
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i118.i

cond.false.i114.i:                                ; preds = %xfs_dir2_sf_put_ino.exit.i241
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 154) #6
  br label %cond.end.i118.i

cond.end.i118.i:                                  ; preds = %cond.false.i114.i, %xfs_dir2_sf_put_ino.exit.i241.cond.end.i118.i_crit_edge
  %163 = ptrtoint ptr %m_features.i.i.i208 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %m_features.i.i.i208, align 8
  %and.i.i116.i = and i64 %164, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i116.i)
  %tobool.i.not.i117.i = icmp eq i64 %and.i.i116.i, 0
  br i1 %tobool.i.not.i117.i, label %cond.end.i118.i.xfs_dir2_sf_put_ftype.exit.i247_crit_edge, label %if.then.i.i244

cond.end.i118.i.xfs_dir2_sf_put_ftype.exit.i247_crit_edge: ; preds = %cond.end.i118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_put_ftype.exit.i247

if.then.i.i244:                                   ; preds = %cond.end.i118.i
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %add.ptr.i229 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %add.ptr.i229, align 1
  %idxprom.i.i242 = zext i8 %166 to i32
  %arrayidx.i.i243 = getelementptr %struct.xfs_dir2_sf_entry, ptr %add.ptr.i229, i32 0, i32 2, i32 %idxprom.i.i242
  %167 = ptrtoint ptr %arrayidx.i.i243 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %162, ptr %arrayidx.i.i243, align 1
  br label %xfs_dir2_sf_put_ftype.exit.i247

xfs_dir2_sf_put_ftype.exit.i247:                  ; preds = %if.then.i.i244, %cond.end.i118.i.xfs_dir2_sf_put_ftype.exit.i247_crit_edge
  %168 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %141, align 1
  %inc.i245 = add i8 %169, 1
  store i8 %inc.i245, ptr %141, align 1
  %170 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %inumber, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %171)
  %cmp27.i = icmp ugt i64 %171, 4294967295
  %or.cond.i246 = and i1 %brmerge, %cmp27.i
  br i1 %or.cond.i246, label %if.then30.i, label %xfs_dir2_sf_put_ftype.exit.i247.if.end32.i_crit_edge

xfs_dir2_sf_put_ftype.exit.i247.if.end32.i_crit_edge: ; preds = %xfs_dir2_sf_put_ftype.exit.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then30.i:                                      ; preds = %xfs_dir2_sf_put_ftype.exit.i247
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %i8count.i112.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %i8count.i112.i, align 1
  %inc31.i = add i8 %173, 1
  store i8 %inc31.i, ptr %i8count.i112.i, align 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %xfs_dir2_sf_put_ftype.exit.i247.if.end32.i_crit_edge
  br i1 %eof.0.in.lcssa.i, label %if.end32.i.xfs_dir2_sf_addname_hard.exit_crit_edge, label %if.then34.i

if.end32.i.xfs_dir2_sf_addname_hard.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_addname_hard.exit

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %174 = ptrtoint ptr %add.ptr.i229 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %add.ptr.i229, align 1
  %conv.i119.i = zext i8 %175 to i32
  %add.i.i120.i = add nuw nsw i32 %conv.i119.i, 3
  %176 = ptrtoint ptr %i8count.i112.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %i8count.i112.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i.i122.i = icmp eq i8 %177, 0
  %cond.i.i123.i = select i1 %tobool.not.i.i122.i, i32 4, i32 8
  %add1.i.i124.i = add nuw nsw i32 %add.i.i120.i, %cond.i.i123.i
  %178 = ptrtoint ptr %m_features.i.i.i208 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %m_features.i.i.i208, align 8
  %180 = trunc i64 %179 to i32
  %181 = lshr i32 %180, 16
  %182 = and i32 %181, 1
  %spec.select.i.i126.i = add nuw nsw i32 %add1.i.i124.i, %182
  %add.ptr.i127.i = getelementptr i8, ptr %add.ptr.i229, i32 %spec.select.i.i126.i
  %sub36.i = sub i32 %conv.i201, %sub.ptr.sub.i228
  %183 = call ptr @memcpy(ptr %add.ptr.i127.i, ptr %oldsfep.0.lcssa.i, i32 %sub36.i)
  br label %xfs_dir2_sf_addname_hard.exit

xfs_dir2_sf_addname_hard.exit:                    ; preds = %if.then34.i, %if.end32.i.xfs_dir2_sf_addname_hard.exit_crit_edge
  tail call void @kvfree(ptr noundef %call.i) #6
  %184 = ptrtoint ptr %i_disk_size.i200 to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %conv17.i, ptr %i_disk_size.i200, align 8
  br label %if.end133

if.end133:                                        ; preds = %xfs_dir2_sf_addname_hard.exit, %xfs_dir2_sf_addname_easy.exit
  tail call fastcc void @xfs_dir2_sf_check(ptr noundef %args) #6
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %185 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %186, ptr noundef %1, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.end110.thread.cleanup_crit_edge, %if.end110.cleanup_crit_edge, %if.end108, %if.end104.cleanup_crit_edge, %lor.lhs.false100.cleanup_crit_edge, %if.then98.cleanup_crit_edge
  %retval.0 = phi i32 [ %call109, %if.end108 ], [ 0, %if.end133 ], [ -28, %lor.lhs.false100.cleanup_crit_edge ], [ -28, %if.then98.cleanup_crit_edge ], [ %call105, %if.end104.cleanup_crit_edge ], [ 0, %if.end110.cleanup_crit_edge ], [ 0, %if.end110.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_addname(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_addname, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_addname, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !112
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_addname(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_addname, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_addname, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_addname.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_sf_addname.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1955, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
define dso_local i32 @xfs_dir2_sf_lookup(ptr noundef %args) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @trace_xfs_dir2_sf_lookup(ptr noundef %args)
  tail call fastcc void @xfs_dir2_sf_check(ptr noundef %args)
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp2 = icmp eq i8 %5, 1
  br i1 %cmp2, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 878) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %7)
  %cmp5 = icmp sgt i64 %7, 1
  br i1 %cmp5, label %cond.end.cond.end15_crit_edge, label %cond.false14, !prof !104

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 879) #6
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %8 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_df, align 8
  %10 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp18 = icmp eq i64 %9, %11
  br i1 %cmp18, label %cond.end15.cond.end28_crit_edge, label %cond.false27, !prof !104

cond.end15.cond.end28_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 880) #6
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end15.cond.end28_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_u1, align 4
  %cmp30.not = icmp eq ptr %13, null
  br i1 %cmp30.not, label %cond.false39, label %cond.end28.cond.end40_crit_edge, !prof !111

cond.end28.cond.end40_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 881) #6
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.end28.cond.end40_crit_edge
  %14 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_u1, align 4
  %16 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_disk_size, align 8
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  %20 = select i1 %cmp.i, i64 6, i64 10
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %20)
  %cmp46.not = icmp slt i64 %17, %20
  br i1 %cmp46.not, label %cond.false55, label %cond.end40.cond.end56_crit_edge, !prof !111

cond.end40.cond.end56_crit_edge:                  ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end56

cond.false55:                                     ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 883) #6
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.end40.cond.end56_crit_edge
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %21 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %namelen, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %22, label %cond.end56.if.end82_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true65
  ]

cond.end56.if.end82_crit_edge:                    ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

land.lhs.true:                                    ; preds = %cond.end56
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %27)
  %cmp60 = icmp eq i8 %27, 46
  br i1 %cmp60, label %if.then, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_ino, align 8
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %30 = ptrtoint ptr %inumber to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %inumber, align 8
  %cmpresult = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %31 = ptrtoint ptr %cmpresult to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %cmpresult, align 4
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %32 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %filetype, align 4
  br label %cleanup

land.lhs.true65:                                  ; preds = %cond.end56
  %name66 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %33 = ptrtoint ptr %name66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name66, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %36)
  %cmp69 = icmp eq i8 %36, 46
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true65.if.end82_crit_edge

land.lhs.true65.if.end82_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

land.lhs.true71:                                  ; preds = %land.lhs.true65
  %arrayidx73 = getelementptr i8, ptr %34, i32 1
  %37 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %38)
  %cmp75 = icmp eq i8 %38, 46
  br i1 %cmp75, label %if.then77, label %land.lhs.true71.if.end82_crit_edge

land.lhs.true71.if.end82_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then77:                                        ; preds = %land.lhs.true71
  %39 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %15, i32 0, i32 2
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %parent.i, align 1
  %conv.i = zext i32 %42 to i64
  br label %xfs_dir2_sf_get_parent_ino.exit

if.end.i:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %parent.i, align 1
  %and.i = and i64 %44, 72057594037927935
  br label %xfs_dir2_sf_get_parent_ino.exit

xfs_dir2_sf_get_parent_ino.exit:                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %and.i, %if.end.i ], [ %conv.i, %if.then.i ]
  %inumber79 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %45 = ptrtoint ptr %inumber79 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %retval.0.i, ptr %inumber79, align 8
  %cmpresult80 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %46 = ptrtoint ptr %cmpresult80 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %cmpresult80, align 4
  %filetype81 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %47 = ptrtoint ptr %filetype81 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %filetype81, align 4
  br label %cleanup

if.end82:                                         ; preds = %land.lhs.true71.if.end82_crit_edge, %land.lhs.true65.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %cond.end56.if.end82_crit_edge
  %48 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp85195.not = icmp eq i8 %49, 0
  br i1 %cmp85195.not, label %if.end82.for.end_crit_edge, label %for.body.lr.ph

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end82
  %50 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.i.i = icmp eq i8 %51, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %15, i32 %sub.i.i
  %cmpresult94 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %inumber100 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %filetype102 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ci_sfep.0198 = phi ptr [ null, %for.body.lr.ph ], [ %ci_sfep.1, %for.inc.for.body_crit_edge ]
  %sfep.0197 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr.i191, %for.inc.for.body_crit_edge ]
  %i.0196 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name87 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0197, i32 0, i32 2
  %52 = ptrtoint ptr %sfep.0197 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sfep.0197, align 1
  %conv89 = zext i8 %53 to i32
  %call90 = tail call i32 @xfs_dir2_compname(ptr noundef %args, ptr noundef %name87, i32 noundef %conv89) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %for.body.for.inc_crit_edge, label %land.lhs.true93

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true93:                                  ; preds = %for.body
  %54 = ptrtoint ptr %cmpresult94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmpresult94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call90, i32 %55)
  %cmp95.not = icmp eq i32 %call90, %55
  br i1 %cmp95.not, label %land.lhs.true93.for.inc_crit_edge, label %if.then97

land.lhs.true93.for.inc_crit_edge:                ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then97:                                        ; preds = %land.lhs.true93
  %56 = ptrtoint ptr %cmpresult94 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call90, ptr %cmpresult94, align 4
  %57 = ptrtoint ptr %sfep.0197 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sfep.0197, align 1
  %conv.i181 = zext i8 %58 to i32
  %add.ptr.i182 = getelementptr i8, ptr %name87, i32 %conv.i181
  %59 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %m_features.i.i, align 8
  %61 = trunc i64 %60 to i32
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 1
  %spec.select.i = getelementptr i8, ptr %add.ptr.i182, i32 %63
  %64 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i184 = icmp eq i8 %65, 0
  br i1 %tobool.not.i184, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %spec.select.i, align 1
  %conv3.i = zext i32 %67 to i64
  br label %xfs_dir2_sf_get_ino.exit

if.end4.i:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %spec.select.i, align 1
  %and.i185 = and i64 %69, 72057594037927935
  br label %xfs_dir2_sf_get_ino.exit

xfs_dir2_sf_get_ino.exit:                         ; preds = %if.end4.i, %if.then1.i
  %retval.0.i186 = phi i64 [ %and.i185, %if.end4.i ], [ %conv3.i, %if.then1.i ]
  %70 = ptrtoint ptr %inumber100 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %retval.0.i186, ptr %inumber100, align 8
  %71 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %72, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %xfs_dir2_sf_get_ino.exit.if.end3.i_crit_edge, label %if.then.i189

xfs_dir2_sf_get_ino.exit.if.end3.i_crit_edge:     ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i189:                                     ; preds = %xfs_dir2_sf_get_ino.exit
  %73 = ptrtoint ptr %sfep.0197 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sfep.0197, align 1
  %idxprom.i = zext i8 %74 to i32
  %arrayidx.i = getelementptr %struct.xfs_dir2_sf_entry, ptr %sfep.0197, i32 0, i32 2, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %76)
  %cmp.i188 = icmp ugt i8 %76, 8
  br i1 %cmp.i188, label %if.then.i189.if.end3.i_crit_edge, label %if.then.i189.xfs_dir2_sf_get_ftype.exit_crit_edge

if.then.i189.xfs_dir2_sf_get_ftype.exit_crit_edge: ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_get_ftype.exit

if.then.i189.if.end3.i_crit_edge:                 ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i189.if.end3.i_crit_edge, %xfs_dir2_sf_get_ino.exit.if.end3.i_crit_edge
  br label %xfs_dir2_sf_get_ftype.exit

xfs_dir2_sf_get_ftype.exit:                       ; preds = %if.end3.i, %if.then.i189.xfs_dir2_sf_get_ftype.exit_crit_edge
  %retval.1.i = phi i8 [ %76, %if.then.i189.xfs_dir2_sf_get_ftype.exit_crit_edge ], [ 0, %if.end3.i ]
  %77 = ptrtoint ptr %filetype102 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %retval.1.i, ptr %filetype102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call90)
  %cmp103 = icmp eq i32 %call90, 1
  br i1 %cmp103, label %xfs_dir2_sf_get_ftype.exit.cleanup_crit_edge, label %xfs_dir2_sf_get_ftype.exit.for.inc_crit_edge

xfs_dir2_sf_get_ftype.exit.for.inc_crit_edge:     ; preds = %xfs_dir2_sf_get_ftype.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

xfs_dir2_sf_get_ftype.exit.cleanup_crit_edge:     ; preds = %xfs_dir2_sf_get_ftype.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %xfs_dir2_sf_get_ftype.exit.for.inc_crit_edge, %land.lhs.true93.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ci_sfep.1 = phi ptr [ %ci_sfep.0198, %land.lhs.true93.for.inc_crit_edge ], [ %ci_sfep.0198, %for.body.for.inc_crit_edge ], [ %sfep.0197, %xfs_dir2_sf_get_ftype.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0196, 1
  %78 = ptrtoint ptr %sfep.0197 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sfep.0197, align 1
  %conv.i190 = zext i8 %79 to i32
  %add.i.i = add nuw nsw i32 %conv.i190, 3
  %80 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i = icmp eq i8 %81, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %add1.i.i = add nuw nsw i32 %add.i.i, %cond.i.i
  %82 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %m_features.i.i, align 8
  %84 = trunc i64 %83 to i32
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 1
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %86
  %add.ptr.i191 = getelementptr i8, ptr %sfep.0197, i32 %spec.select.i.i
  %87 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %15, align 1
  %conv84 = zext i8 %88 to i32
  %cmp85 = icmp ult i32 %inc, %conv84
  br i1 %cmp85, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end82.for.end_crit_edge
  %ci_sfep.0.lcssa = phi ptr [ null, %if.end82.for.end_crit_edge ], [ %ci_sfep.1, %for.inc.for.end_crit_edge ]
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %89 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %op_flags, align 8
  %and = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool109.not = icmp eq i32 %and, 0
  br i1 %tobool109.not, label %cond.false117, label %for.end.cond.end118_crit_edge, !prof !111

for.end.cond.end118_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end118

cond.false117:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 924) #6
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %for.end.cond.end118_crit_edge
  %tobool119.not = icmp eq ptr %ci_sfep.0.lcssa, null
  br i1 %tobool119.not, label %cond.end118.cleanup_crit_edge, label %if.end121

cond.end118.cleanup_crit_edge:                    ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end121:                                        ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #8
  %name122 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %ci_sfep.0.lcssa, i32 0, i32 2
  %91 = ptrtoint ptr %ci_sfep.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ci_sfep.0.lcssa, align 1
  %conv125 = zext i8 %92 to i32
  %call126 = tail call i32 @xfs_dir_cilookup_result(ptr noundef %args, ptr noundef %name122, i32 noundef %conv125) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %cond.end118.cleanup_crit_edge, %xfs_dir2_sf_get_ftype.exit.cleanup_crit_edge, %xfs_dir2_sf_get_parent_ino.exit, %if.then
  %retval.0 = phi i32 [ -17, %if.then ], [ -17, %xfs_dir2_sf_get_parent_ino.exit ], [ %call126, %if.end121 ], [ -2, %cond.end118.cleanup_crit_edge ], [ -17, %xfs_dir2_sf_get_ftype.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_sf_to_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_block_addname(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_sf_toino8(ptr noundef %args) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @trace_xfs_dir2_sf_toino8(ptr noundef %args)
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_df, align 8
  %conv = trunc i64 %5 to i32
  %call = tail call ptr @kmem_alloc(i32 noundef %conv, i32 noundef 0) #6
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_u1, align 4
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 1254) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %10 = call ptr @memcpy(ptr %call, ptr %7, i32 %conv)
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %7, align 1
  %conv6 = zext i8 %12 to i32
  %add = shl nuw nsw i32 %conv6, 2
  %mul = add i32 %conv, 4
  %add7 = add i32 %mul, %add
  %sub = sub i32 0, %conv
  %conv8 = sext i32 %sub to i64
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %conv8, i32 noundef 0) #6
  %conv9 = sext i32 %add7 to i64
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %conv9, i32 noundef 0) #6
  %13 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_u1, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %14, align 1
  %i8count14 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %i8count14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %i8count14, align 1
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call, i32 0, i32 2
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %parent.i, align 1
  %conv.i = zext i32 %22 to i64
  br label %xfs_dir2_sf_put_parent_ino.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %parent.i, align 1
  %and.i = and i64 %24, 72057594037927935
  br label %xfs_dir2_sf_put_parent_ino.exit

xfs_dir2_sf_put_parent_ino.exit:                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %and.i, %if.end.i ], [ %conv.i, %if.then.i ]
  %parent.i81 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %14, i32 0, i32 2
  %25 = ptrtoint ptr %parent.i81 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %retval.0.i, ptr %parent.i81, align 1
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp20125.not = icmp eq i8 %27, 0
  br i1 %cmp20125.not, label %xfs_dir2_sf_put_parent_ino.exit.for.end_crit_edge, label %for.body.lr.ph

xfs_dir2_sf_put_parent_ino.exit.for.end_crit_edge: ; preds = %xfs_dir2_sf_put_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %xfs_dir2_sf_put_parent_ino.exit
  %28 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i.i87 = icmp eq i8 %29, 0
  %sub.i.i88 = select i1 %cmp.i.i87, i32 6, i32 10
  %add.ptr.i89 = getelementptr i8, ptr %call, i32 %sub.i.i88
  %30 = ptrtoint ptr %i8count14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i8count14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i.i = icmp eq i8 %31, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %14, i32 %sub.i.i
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge, %for.body.lr.ph
  %sfep.0128 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr.i114, %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge ]
  %oldsfep.0127 = phi ptr [ %add.ptr.i89, %for.body.lr.ph ], [ %add.ptr.i123, %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge ]
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge ]
  %32 = ptrtoint ptr %oldsfep.0127 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %oldsfep.0127, align 1
  %34 = ptrtoint ptr %sfep.0128 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %sfep.0128, align 1
  %offset = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0128, i32 0, i32 1
  %offset23 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %oldsfep.0127, i32 0, i32 1
  %35 = ptrtoint ptr %offset23 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %offset23, align 1
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %offset, align 1
  %name = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0128, i32 0, i32 2
  %name26 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %oldsfep.0127, i32 0, i32 2
  %conv29 = zext i8 %33 to i32
  %38 = call ptr @memcpy(ptr %name, ptr %name26, i32 %conv29)
  %39 = load i8, ptr %oldsfep.0127, align 1
  %conv.i90 = zext i8 %39 to i32
  %add.ptr.i91 = getelementptr i8, ptr %name26, i32 %conv.i90
  %40 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %m_features.i.i, align 8
  %42 = trunc i64 %41 to i32
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 1
  %spec.select.i = getelementptr i8, ptr %add.ptr.i91, i32 %44
  %45 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i93 = icmp eq i8 %46, 0
  br i1 %tobool.not.i93, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %spec.select.i, align 1
  %conv3.i = zext i32 %48 to i64
  br label %xfs_dir2_sf_get_ino.exit

if.end4.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %spec.select.i, align 1
  %and.i94 = and i64 %50, 72057594037927935
  br label %xfs_dir2_sf_get_ino.exit

xfs_dir2_sf_get_ino.exit:                         ; preds = %if.end4.i, %if.then1.i
  %retval.0.i95 = phi i64 [ %and.i94, %if.end4.i ], [ %conv3.i, %if.then1.i ]
  %add.ptr.i98 = getelementptr i8, ptr %name, i32 %conv29
  %spec.select.i100 = getelementptr i8, ptr %add.ptr.i98, i32 %44
  %51 = ptrtoint ptr %i8count14 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i8count14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool3.not.i = icmp eq i8 %52, 0
  br i1 %tobool3.not.i, label %if.else.i102, label %if.then4.i

if.then4.i:                                       ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %spec.select.i100 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %retval.0.i95, ptr %spec.select.i100, align 1
  br label %xfs_dir2_sf_put_ino.exit

if.else.i102:                                     ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i64 %retval.0.i95 to i32
  %54 = ptrtoint ptr %spec.select.i100 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %conv5.i, ptr %spec.select.i100, align 1
  br label %xfs_dir2_sf_put_ino.exit

xfs_dir2_sf_put_ino.exit:                         ; preds = %if.else.i102, %if.then4.i
  %55 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %xfs_dir2_sf_put_ino.exit.if.end3.i_crit_edge, label %if.then.i104

xfs_dir2_sf_put_ino.exit.if.end3.i_crit_edge:     ; preds = %xfs_dir2_sf_put_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i104:                                     ; preds = %xfs_dir2_sf_put_ino.exit
  %57 = ptrtoint ptr %oldsfep.0127 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %oldsfep.0127, align 1
  %idxprom.i = zext i8 %58 to i32
  %arrayidx.i = getelementptr %struct.xfs_dir2_sf_entry, ptr %oldsfep.0127, i32 0, i32 2, i32 %idxprom.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %60)
  %cmp.i = icmp ugt i8 %60, 8
  br i1 %cmp.i, label %if.then.i104.if.end3.i_crit_edge, label %if.then.i104.cond.end.i_crit_edge

if.then.i104.cond.end.i_crit_edge:                ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

if.then.i104.if.end3.i_crit_edge:                 ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i104.if.end3.i_crit_edge, %xfs_dir2_sf_put_ino.exit.if.end3.i_crit_edge
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end3.i, %if.then.i104.cond.end.i_crit_edge
  %retval.1.i = phi i8 [ %60, %if.then.i104.cond.end.i_crit_edge ], [ 0, %if.end3.i ]
  %61 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %m_features.i.i, align 8
  %and.i.i107 = and i64 %62, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i107)
  %tobool.i.not.i108 = icmp eq i64 %and.i.i107, 0
  br i1 %tobool.i.not.i108, label %cond.end.i.xfs_dir2_sf_put_ftype.exit_crit_edge, label %if.then.i111

cond.end.i.xfs_dir2_sf_put_ftype.exit_crit_edge:  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_put_ftype.exit

if.then.i111:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %sfep.0128 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sfep.0128, align 1
  %idxprom.i109 = zext i8 %64 to i32
  %arrayidx.i110 = getelementptr %struct.xfs_dir2_sf_entry, ptr %sfep.0128, i32 0, i32 2, i32 %idxprom.i109
  %65 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %retval.1.i, ptr %arrayidx.i110, align 1
  br label %xfs_dir2_sf_put_ftype.exit

xfs_dir2_sf_put_ftype.exit:                       ; preds = %if.then.i111, %cond.end.i.xfs_dir2_sf_put_ftype.exit_crit_edge
  %inc = add nuw nsw i32 %i.0126, 1
  %66 = ptrtoint ptr %sfep.0128 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sfep.0128, align 1
  %conv.i113 = zext i8 %67 to i32
  %68 = ptrtoint ptr %i8count14 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i8count14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i = icmp eq i8 %69, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %70 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %m_features.i.i, align 8
  %72 = trunc i64 %71 to i32
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 1
  %add.i.i = add nuw nsw i32 %74, 3
  %add1.i.i = add nuw nsw i32 %add.i.i, %conv.i113
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %cond.i.i
  %add.ptr.i114 = getelementptr i8, ptr %sfep.0128, i32 %spec.select.i.i
  %75 = ptrtoint ptr %oldsfep.0127 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %oldsfep.0127, align 1
  %conv.i115 = zext i8 %76 to i32
  %77 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i118 = icmp eq i8 %78, 0
  %cond.i.i119 = select i1 %tobool.not.i.i118, i32 4, i32 8
  %add1.i.i120 = add nuw nsw i32 %add.i.i, %conv.i115
  %spec.select.i.i122 = add nuw nsw i32 %add1.i.i120, %cond.i.i119
  %add.ptr.i123 = getelementptr i8, ptr %oldsfep.0127, i32 %spec.select.i.i122
  %79 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %14, align 1
  %conv19 = zext i8 %80 to i32
  %cmp20 = icmp ult i32 %inc, %conv19
  br i1 %cmp20, label %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge, label %xfs_dir2_sf_put_ftype.exit.for.end_crit_edge

xfs_dir2_sf_put_ftype.exit.for.end_crit_edge:     ; preds = %xfs_dir2_sf_put_ftype.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

xfs_dir2_sf_put_ftype.exit.for.body_crit_edge:    ; preds = %xfs_dir2_sf_put_ftype.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %xfs_dir2_sf_put_ftype.exit.for.end_crit_edge, %xfs_dir2_sf_put_parent_ino.exit.for.end_crit_edge
  tail call void @kvfree(ptr noundef %call) #6
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %81 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv9, ptr %i_disk_size, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %82 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %83, ptr noundef %1, i32 noundef 3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dir2_sf_verify(ptr nocapture noundef readonly %ip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 726) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_u1, align 4
  %6 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %7)
  %cmp3 = icmp slt i64 %7, 3
  br i1 %cmp3, label %cond.end.__here_crit_edge, label %lor.lhs.false

cond.end.__here_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

lor.lhs.false:                                    ; preds = %cond.end
  %i8count5 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %i8count5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i8count5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  %10 = select i1 %cmp.i, i64 6, i64 10
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %10)
  %cmp8 = icmp ult i64 %7, %10
  br i1 %cmp8, label %lor.lhs.false.__here_crit_edge, label %if.end

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %lor.lhs.false.__here_crit_edge, %cond.end.__here_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !114
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %idx.ext = trunc i64 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.ext
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %5, i32 0, i32 2
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %parent.i, align 1
  %conv.i = zext i32 %12 to i64
  br label %xfs_dir2_sf_get_parent_ino.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %parent.i, align 1
  %and.i = and i64 %14, 72057594037927935
  br label %xfs_dir2_sf_get_parent_ino.exit

xfs_dir2_sf_get_parent_ino.exit:                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %and.i, %if.end.i ], [ %conv.i, %if.then.i ]
  %call13 = tail call i32 @xfs_dir_ino_validate(ptr noundef %1, i64 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end18, label %__here16

__here16:                                         ; preds = %xfs_dir2_sf_get_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !115
  br label %cleanup

if.end18:                                         ; preds = %xfs_dir2_sf_get_parent_ino.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %retval.0.i)
  %cmp11 = icmp ugt i64 %retval.0.i, 4294967295
  %conv12 = zext i1 %cmp11 to i32
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_dir_geo, align 4
  %data_first_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %data_first_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_first_offset, align 4
  %19 = ptrtoint ptr %i8count5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i8count5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %5, i32 %sub.i.i
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp21190.not = icmp eq i8 %22, 0
  br i1 %cmp21190.not, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %if.end59.for.body_crit_edge, %for.body.lr.ph
  %sfep.0194 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr.i151, %if.end59.for.body_crit_edge ]
  %i.0193 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end59.for.body_crit_edge ]
  %i8count.0192 = phi i32 [ %conv12, %for.body.lr.ph ], [ %add, %if.end59.for.body_crit_edge ]
  %offset.0191 = phi i32 [ %18, %for.body.lr.ph ], [ %add72, %if.end59.for.body_crit_edge ]
  %add.ptr23 = getelementptr i8, ptr %sfep.0194, i32 3
  %cmp24.not = icmp ult ptr %add.ptr23, %add.ptr
  br i1 %cmp24.not, label %if.end29, label %__here27

__here27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !116
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %23 = ptrtoint ptr %sfep.0194 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sfep.0194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp31 = icmp eq i8 %24, 0
  br i1 %cmp31, label %__here34, label %if.end36

__here34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !117
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %conv.i150 = zext i8 %24 to i32
  %add.i.i = add nuw nsw i32 %conv.i150, 3
  %25 = ptrtoint ptr %i8count5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i8count5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %add1.i.i = add nuw nsw i32 %add.i.i, %cond.i.i
  %27 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %m_features.i.i.i, align 8
  %29 = trunc i64 %28 to i32
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 1
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %31
  %add.ptr.i151 = getelementptr i8, ptr %sfep.0194, i32 %spec.select.i.i
  %cmp38 = icmp ult ptr %add.ptr, %add.ptr.i151
  br i1 %cmp38, label %__here41, label %if.end43

__here41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !118
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %offset.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0194, i32 0, i32 1
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %offset.i, align 1
  %conv.i152 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0191, i32 %conv.i152)
  %cmp45 = icmp ugt i32 %offset.0191, %conv.i152
  br i1 %cmp45, label %__here48, label %if.end50

__here48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !119
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  %add.ptr.i154 = getelementptr i8, ptr %add.ptr23, i32 %conv.i150
  %spec.select.i = getelementptr i8, ptr %add.ptr.i154, i32 %31
  br i1 %tobool.not.i.i, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %spec.select.i, align 1
  %conv3.i = zext i32 %35 to i64
  br label %xfs_dir2_sf_get_ino.exit

if.end4.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %spec.select.i, align 1
  %and.i157 = and i64 %37, 72057594037927935
  br label %xfs_dir2_sf_get_ino.exit

xfs_dir2_sf_get_ino.exit:                         ; preds = %if.end4.i, %if.then1.i
  %retval.0.i158 = phi i64 [ %and.i157, %if.end4.i ], [ %conv3.i, %if.then1.i ]
  %call54 = tail call i32 @xfs_dir_ino_validate(ptr noundef %1, i64 noundef %retval.0.i158) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end59, label %__here57

__here57:                                         ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !120
  br label %cleanup

if.end59:                                         ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %retval.0.i158)
  %cmp52 = icmp ugt i64 %retval.0.i158, 4294967295
  %conv53 = zext i1 %cmp52 to i32
  %add = add i32 %i8count.0192, %conv53
  %38 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i = and i64 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %40 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %offset.i, align 1
  %conv.i163 = zext i16 %41 to i32
  %42 = ptrtoint ptr %sfep.0194 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sfep.0194, align 1
  %conv70 = zext i8 %43 to i32
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i167 = add nsw i32 %conv70, -1
  %sub.i168 = add nsw i32 %spec.select.i167, %spec.select.v.i
  %or.i = or i32 %sub.i168, 7
  %add3.i = add nuw nsw i32 %conv.i163, 1
  %add72 = add nsw i32 %add3.i, %or.i
  %inc = add nuw nsw i32 %i.0193, 1
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 1
  %conv20 = zext i8 %45 to i32
  %cmp21 = icmp ult i32 %inc, %conv20
  br i1 %cmp21, label %if.end59.for.body_crit_edge, label %for.end.loopexit

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i8 %45 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end18.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %if.end18.for.end_crit_edge ]
  %offset.0.lcssa = phi i32 [ %add72, %for.end.loopexit ], [ %18, %if.end18.for.end_crit_edge ]
  %i8count.0.lcssa = phi i32 [ %add, %for.end.loopexit ], [ %conv12, %if.end18.for.end_crit_edge ]
  %sfep.0.lcssa = phi ptr [ %add.ptr.i151, %for.end.loopexit ], [ %add.ptr.i, %if.end18.for.end_crit_edge ]
  %46 = ptrtoint ptr %i8count5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i8count5, align 1
  %conv74 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i8count.0.lcssa, i32 %conv74)
  %cmp75.not = icmp eq i32 %i8count.0.lcssa, %conv74
  br i1 %cmp75.not, label %if.end80, label %__here78

__here78:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !121
  br label %cleanup

if.end80:                                         ; preds = %for.end
  %cmp81.not = icmp eq ptr %sfep.0.lcssa, %add.ptr
  br i1 %cmp81.not, label %if.end86, label %__here84

__here84:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !122
  br label %cleanup

if.end86:                                         ; preds = %if.end80
  %add90 = add i32 %offset.0.lcssa, 24
  %add91 = add i32 %add90, %.lcssa
  %48 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %m_dir_geo, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add91, i32 %51)
  %cmp93 = icmp ugt i32 %add91, %51
  br i1 %cmp93, label %__here96, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__here96:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %__here96, %if.end86.cleanup_crit_edge, %__here84, %__here78, %__here57, %__here48, %__here41, %__here34, %__here27, %__here16, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dir2_sf_verify, %__here), %__here ], [ blockaddress(@xfs_dir2_sf_verify, %__here16), %__here16 ], [ blockaddress(@xfs_dir2_sf_verify, %__here27), %__here27 ], [ blockaddress(@xfs_dir2_sf_verify, %__here34), %__here34 ], [ blockaddress(@xfs_dir2_sf_verify, %__here41), %__here41 ], [ blockaddress(@xfs_dir2_sf_verify, %__here48), %__here48 ], [ blockaddress(@xfs_dir2_sf_verify, %__here57), %__here57 ], [ blockaddress(@xfs_dir2_sf_verify, %__here78), %__here78 ], [ blockaddress(@xfs_dir2_sf_verify, %__here84), %__here84 ], [ blockaddress(@xfs_dir2_sf_verify, %__here96), %__here96 ], [ null, %if.end86.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_ino_validate(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_sf_create(ptr noundef %args, i64 noundef %pino) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_dir2_sf_create(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !111

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 823) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp3 = icmp eq i64 %3, 0
  br i1 %cmp3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !104

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 824) #6
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp13 = icmp eq i8 %5, 2
  br i1 %cmp13, label %if.then, label %cond.end12.if.end_crit_edge

cond.end12.if.end_crit_edge:                      ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %if_format, align 2
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %8, ptr noundef %1, i32 noundef 1) #6
  %9 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %if_format, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end12.if.end_crit_edge
  %10 = phi i8 [ %.pr, %if.then ], [ %5, %cond.end12.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp20 = icmp eq i8 %10, 1
  br i1 %cmp20, label %if.end.cond.end30_crit_edge, label %cond.false29, !prof !104

if.end.cond.end30_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end30

cond.false29:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 833) #6
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %if.end.cond.end30_crit_edge
  %11 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp32 = icmp eq i64 %12, 0
  br i1 %cmp32, label %cond.end30.cond.end42_crit_edge, label %cond.false41, !prof !104

cond.end30.cond.end42_crit_edge:                  ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end42

cond.false41:                                     ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 834) #6
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.end30.cond.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %pino)
  %cmp43 = icmp ugt i64 %pino, 4294967295
  %13 = select i1 %cmp43, i64 10, i64 6
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %13, i32 noundef 0) #6
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_u1, align 4
  %conv47 = zext i1 %cmp43 to i8
  %i8count48 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %i8count48 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv47, ptr %i8count48, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %pino)
  %cmp.i71 = icmp ult i64 %pino, 72057594037927936
  br i1 %cmp.i71, label %cond.end42.cond.end.i_crit_edge, label %cond.false.i, !prof !104

cond.end42.cond.end.i_crit_edge:                  ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 121) #6
  %17 = ptrtoint ptr %i8count48 to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr72 = load i8, ptr %i8count48, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.end42.cond.end.i_crit_edge
  %18 = phi i8 [ %.pr72, %cond.false.i ], [ %conv47, %cond.end42.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %pino, ptr %parent.i, align 1
  br label %xfs_dir2_sf_put_parent_ino.exit

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i64 %pino to i32
  %parent3.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %parent3.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %conv.i, ptr %parent3.i, align 1
  br label %xfs_dir2_sf_put_parent_ino.exit

xfs_dir2_sf_put_parent_ino.exit:                  ; preds = %if.else.i, %if.then.i
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %15, align 1
  %22 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %13, ptr %i_disk_size, align 8
  tail call fastcc void @xfs_dir2_sf_check(ptr noundef %args)
  %trans51 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %23 = ptrtoint ptr %trans51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans51, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %24, ptr noundef %1, i32 noundef 3) #6
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_create(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_create, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_create, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !124
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_create(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_sf_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1956, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
declare dso_local void @xfs_idata_realloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_lookup(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_lookup, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !126
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_lookup(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_sf_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1957, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
declare dso_local i32 @xfs_dir2_compname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_cilookup_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_sf_removename(ptr noundef %args) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @trace_xfs_dir2_sf_removename(ptr noundef %args)
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 955) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_disk_size, align 8
  %conv4 = trunc i64 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv4)
  %cmp5 = icmp ugt i32 %conv4, 1
  br i1 %cmp5, label %cond.end.cond.end15_crit_edge, label %cond.false14, !prof !104

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 957) #6
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %8 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_df, align 8
  %conv17 = sext i32 %conv4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv17)
  %cmp18 = icmp eq i64 %9, %conv17
  br i1 %cmp18, label %cond.end15.cond.end28_crit_edge, label %cond.false27, !prof !104

cond.end15.cond.end28_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 958) #6
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end15.cond.end28_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_u1, align 4
  %cmp30.not = icmp eq ptr %11, null
  br i1 %cmp30.not, label %cond.false39, label %cond.end28.cond.end40_crit_edge, !prof !111

cond.end28.cond.end40_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 959) #6
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.end28.cond.end40_crit_edge
  %12 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_u1, align 4
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  %sub.i = select i1 %cmp.i, i32 6, i32 10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv4)
  %cmp44.not = icmp sgt i32 %sub.i, %conv4
  br i1 %cmp44.not, label %cond.false53, label %cond.end40.cond.end54_crit_edge, !prof !111

cond.end40.cond.end54_crit_edge:                  ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end54

cond.false53:                                     ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 961) #6
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.end40.cond.end54_crit_edge
  %16 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i.i = icmp eq i8 %17, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %13, i32 %sub.i.i
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp57183.not = icmp eq i8 %19, 0
  br i1 %cmp57183.not, label %cond.end54.for.end_crit_edge, label %for.body.lr.ph

cond.end54.for.end_crit_edge:                     ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end54
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sfep.0185 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr.i173, %for.inc.for.body_crit_edge ]
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0185, i32 0, i32 2
  %20 = ptrtoint ptr %sfep.0185 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sfep.0185, align 1
  %conv59 = zext i8 %21 to i32
  %call60 = tail call i32 @xfs_da_compname(ptr noundef %args, ptr noundef %name, i32 noundef %conv59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 1
  br i1 %cmp61, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %22 = ptrtoint ptr %sfep.0185 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sfep.0185, align 1
  %conv.i = zext i8 %23 to i32
  %add.ptr.i170 = getelementptr i8, ptr %name, i32 %conv.i
  %24 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %m_features.i.i.i, align 8
  %26 = trunc i64 %25 to i32
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 1
  %spec.select.i = getelementptr i8, ptr %add.ptr.i170, i32 %28
  %29 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %spec.select.i, align 1
  %conv3.i = zext i32 %32 to i64
  br label %xfs_dir2_sf_get_ino.exit

if.end4.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %spec.select.i, align 1
  %and.i = and i64 %34, 72057594037927935
  br label %xfs_dir2_sf_get_ino.exit

xfs_dir2_sf_get_ino.exit:                         ; preds = %if.end4.i, %if.then1.i
  %retval.0.i = phi i64 [ %and.i, %if.end4.i ], [ %conv3.i, %if.then1.i ]
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %35 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %inumber, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %36)
  %cmp64 = icmp eq i64 %retval.0.i, %36
  br i1 %cmp64, label %xfs_dir2_sf_get_ino.exit.for.end_crit_edge, label %cond.false73, !prof !104

xfs_dir2_sf_get_ino.exit.for.end_crit_edge:       ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.false73:                                     ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 971) #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0184, 1
  %37 = ptrtoint ptr %sfep.0185 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sfep.0185, align 1
  %conv.i172 = zext i8 %38 to i32
  %add.i.i = add nuw nsw i32 %conv.i172, 3
  %39 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %add1.i.i = add nuw nsw i32 %add.i.i, %cond.i.i
  %41 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %m_features.i.i.i, align 8
  %43 = trunc i64 %42 to i32
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 1
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %45
  %add.ptr.i173 = getelementptr i8, ptr %sfep.0185, i32 %spec.select.i.i
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %13, align 1
  %conv56 = zext i8 %47 to i32
  %cmp57 = icmp ult i32 %inc, %conv56
  br i1 %cmp57, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.false73, %xfs_dir2_sf_get_ino.exit.for.end_crit_edge, %cond.end54.for.end_crit_edge
  %i.0181 = phi i32 [ %i.0184, %cond.false73 ], [ %i.0184, %xfs_dir2_sf_get_ino.exit.for.end_crit_edge ], [ 0, %cond.end54.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %sfep.0179 = phi ptr [ %sfep.0185, %cond.false73 ], [ %sfep.0185, %xfs_dir2_sf_get_ino.exit.for.end_crit_edge ], [ %add.ptr.i, %cond.end54.for.end_crit_edge ], [ %add.ptr.i173, %for.inc.for.end_crit_edge ]
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %13, align 1
  %conv77 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0181, i32 %conv77)
  %cmp78 = icmp eq i32 %i.0181, %conv77
  br i1 %cmp78, label %for.end.cleanup_crit_edge, label %if.end81

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end81:                                         ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint ptr %sfep.0179 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %namelen82 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %50 = ptrtoint ptr %namelen82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %namelen82, align 8
  %add.i = add i32 %51, 3
  %52 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i175 = icmp eq i8 %53, 0
  %cond.i = select i1 %tobool.not.i175, i32 4, i32 8
  %add1.i = add i32 %add.i, %cond.i
  %m_features.i.i176 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %54 = ptrtoint ptr %m_features.i.i176 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %m_features.i.i176, align 8
  %56 = trunc i64 %55 to i32
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 1
  %spec.select.i177 = add i32 %add1.i, %58
  %sub = sub i32 %conv4, %spec.select.i177
  %add = add i32 %spec.select.i177, %sub.ptr.sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv4)
  %cmp84 = icmp slt i32 %add, %conv4
  br i1 %cmp84, label %if.then86, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %13, i32 %sub.ptr.sub
  %add.ptr88 = getelementptr i8, ptr %add.ptr, i32 %spec.select.i177
  %sub90 = sub i32 %conv4, %add
  %59 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr88, i32 %sub90)
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end81.if.end91_crit_edge
  %60 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %13, align 1
  %dec = add i8 %61, -1
  store i8 %dec, ptr %13, align 1
  %conv93 = sext i32 %sub to i64
  %62 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv93, ptr %i_disk_size, align 8
  %sub95 = sub i32 0, %spec.select.i177
  %conv96 = sext i32 %sub95 to i64
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %conv96, i32 noundef 0) #6
  %inumber99 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %63 = ptrtoint ptr %inumber99 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %inumber99, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %64)
  %cmp100 = icmp ugt i64 %64, 4294967295
  br i1 %cmp100, label %if.then102, label %if.end91.if.end111_crit_edge

if.end91.if.end111_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then102:                                       ; preds = %if.end91
  %65 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %if_u1, align 4
  %i8count103 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %i8count103 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %i8count103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp105 = icmp eq i8 %68, 1
  br i1 %cmp105, label %if.then107, label %if.else

if.then107:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xfs_dir2_sf_toino4(ptr noundef %args)
  br label %if.end111

if.else:                                          ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  %dec109 = add i8 %68, -1
  %69 = ptrtoint ptr %i8count103 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %dec109, ptr %i8count103, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then107, %if.end91.if.end111_crit_edge
  tail call fastcc void @xfs_dir2_sf_check(ptr noundef %args)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %70 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %71, ptr noundef %1, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end111 ], [ -2, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_removename(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_removename, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_removename, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !128
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_removename(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !129
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_removename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_removename, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_removename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_sf_removename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1959, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
declare dso_local i32 @xfs_da_compname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_sf_toino4(ptr noundef %args) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @trace_xfs_dir2_sf_toino4(ptr noundef %args)
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_df, align 8
  %conv = trunc i64 %5 to i32
  %call = tail call ptr @kmem_alloc(i32 noundef %conv, i32 noundef 0) #6
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_u1, align 4
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1181) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %10 = call ptr @memcpy(ptr %call, ptr %7, i32 %conv)
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %7, align 1
  %conv6 = zext i8 %12 to i32
  %add.neg = mul nsw i32 %conv6, -4
  %mul.neg = add i32 %conv, -4
  %sub = add i32 %mul.neg, %add.neg
  %sub7 = sub i32 0, %conv
  %conv8 = sext i32 %sub7 to i64
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %conv8, i32 noundef 0) #6
  %conv9 = sext i32 %sub to i64
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %conv9, i32 noundef 0) #6
  %13 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_u1, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %14, align 1
  %i8count14 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %i8count14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %i8count14, align 1
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %call, i32 0, i32 2
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %parent.i, align 1
  br label %xfs_dir2_sf_put_parent_ino.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %parent.i, align 1
  %extract.t = trunc i64 %24 to i32
  br label %xfs_dir2_sf_put_parent_ino.exit

xfs_dir2_sf_put_parent_ino.exit:                  ; preds = %if.end.i, %if.then.i
  %retval.0.i.off0 = phi i32 [ %extract.t, %if.end.i ], [ %22, %if.then.i ]
  %parent3.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %14, i32 0, i32 2
  %25 = ptrtoint ptr %parent3.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %retval.0.i.off0, ptr %parent3.i, align 1
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp20126.not = icmp eq i8 %27, 0
  br i1 %cmp20126.not, label %xfs_dir2_sf_put_parent_ino.exit.for.end_crit_edge, label %for.body.lr.ph

xfs_dir2_sf_put_parent_ino.exit.for.end_crit_edge: ; preds = %xfs_dir2_sf_put_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %xfs_dir2_sf_put_parent_ino.exit
  %28 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i.i87 = icmp eq i8 %29, 0
  %sub.i.i88 = select i1 %cmp.i.i87, i32 6, i32 10
  %add.ptr.i89 = getelementptr i8, ptr %call, i32 %sub.i.i88
  %30 = ptrtoint ptr %i8count14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i8count14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i.i = icmp eq i8 %31, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %14, i32 %sub.i.i
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge, %for.body.lr.ph
  %sfep.0129 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr.i114, %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge ]
  %oldsfep.0128 = phi ptr [ %add.ptr.i89, %for.body.lr.ph ], [ %add.ptr.i123, %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge ]
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge ]
  %32 = ptrtoint ptr %oldsfep.0128 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %oldsfep.0128, align 1
  %34 = ptrtoint ptr %sfep.0129 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %sfep.0129, align 1
  %offset = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0129, i32 0, i32 1
  %offset23 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %oldsfep.0128, i32 0, i32 1
  %35 = ptrtoint ptr %offset23 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %offset23, align 1
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %offset, align 1
  %name = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0129, i32 0, i32 2
  %name26 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %oldsfep.0128, i32 0, i32 2
  %conv29 = zext i8 %33 to i32
  %38 = call ptr @memcpy(ptr %name, ptr %name26, i32 %conv29)
  %39 = load i8, ptr %oldsfep.0128, align 1
  %conv.i90 = zext i8 %39 to i32
  %add.ptr.i91 = getelementptr i8, ptr %name26, i32 %conv.i90
  %40 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %m_features.i.i, align 8
  %42 = trunc i64 %41 to i32
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 1
  %spec.select.i = getelementptr i8, ptr %add.ptr.i91, i32 %44
  %45 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i93 = icmp eq i8 %46, 0
  br i1 %tobool.not.i93, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %spec.select.i, align 1
  %conv3.i = zext i32 %48 to i64
  br label %xfs_dir2_sf_get_ino.exit

if.end4.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %spec.select.i, align 1
  %and.i94 = and i64 %50, 72057594037927935
  br label %xfs_dir2_sf_get_ino.exit

xfs_dir2_sf_get_ino.exit:                         ; preds = %if.end4.i, %if.then1.i
  %retval.0.i95 = phi i64 [ %and.i94, %if.end4.i ], [ %conv3.i, %if.then1.i ]
  %add.ptr.i98 = getelementptr i8, ptr %name, i32 %conv29
  %spec.select.i100 = getelementptr i8, ptr %add.ptr.i98, i32 %44
  %51 = ptrtoint ptr %i8count14 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i8count14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool3.not.i = icmp eq i8 %52, 0
  br i1 %tobool3.not.i, label %if.else.i102, label %if.then4.i

if.then4.i:                                       ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %spec.select.i100 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %retval.0.i95, ptr %spec.select.i100, align 1
  br label %xfs_dir2_sf_put_ino.exit

if.else.i102:                                     ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i64 %retval.0.i95 to i32
  %54 = ptrtoint ptr %spec.select.i100 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %conv5.i, ptr %spec.select.i100, align 1
  br label %xfs_dir2_sf_put_ino.exit

xfs_dir2_sf_put_ino.exit:                         ; preds = %if.else.i102, %if.then4.i
  %55 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %xfs_dir2_sf_put_ino.exit.if.end3.i_crit_edge, label %if.then.i104

xfs_dir2_sf_put_ino.exit.if.end3.i_crit_edge:     ; preds = %xfs_dir2_sf_put_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i104:                                     ; preds = %xfs_dir2_sf_put_ino.exit
  %57 = ptrtoint ptr %oldsfep.0128 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %oldsfep.0128, align 1
  %idxprom.i = zext i8 %58 to i32
  %arrayidx.i = getelementptr %struct.xfs_dir2_sf_entry, ptr %oldsfep.0128, i32 0, i32 2, i32 %idxprom.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %60)
  %cmp.i = icmp ugt i8 %60, 8
  br i1 %cmp.i, label %if.then.i104.if.end3.i_crit_edge, label %if.then.i104.cond.end.i_crit_edge

if.then.i104.cond.end.i_crit_edge:                ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

if.then.i104.if.end3.i_crit_edge:                 ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i104.if.end3.i_crit_edge, %xfs_dir2_sf_put_ino.exit.if.end3.i_crit_edge
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end3.i, %if.then.i104.cond.end.i_crit_edge
  %retval.1.i = phi i8 [ %60, %if.then.i104.cond.end.i_crit_edge ], [ 0, %if.end3.i ]
  %61 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %m_features.i.i, align 8
  %and.i.i107 = and i64 %62, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i107)
  %tobool.i.not.i108 = icmp eq i64 %and.i.i107, 0
  br i1 %tobool.i.not.i108, label %cond.end.i.xfs_dir2_sf_put_ftype.exit_crit_edge, label %if.then.i111

cond.end.i.xfs_dir2_sf_put_ftype.exit_crit_edge:  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_dir2_sf_put_ftype.exit

if.then.i111:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %sfep.0129 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sfep.0129, align 1
  %idxprom.i109 = zext i8 %64 to i32
  %arrayidx.i110 = getelementptr %struct.xfs_dir2_sf_entry, ptr %sfep.0129, i32 0, i32 2, i32 %idxprom.i109
  %65 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %retval.1.i, ptr %arrayidx.i110, align 1
  br label %xfs_dir2_sf_put_ftype.exit

xfs_dir2_sf_put_ftype.exit:                       ; preds = %if.then.i111, %cond.end.i.xfs_dir2_sf_put_ftype.exit_crit_edge
  %inc = add nuw nsw i32 %i.0127, 1
  %66 = ptrtoint ptr %sfep.0129 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sfep.0129, align 1
  %conv.i113 = zext i8 %67 to i32
  %68 = ptrtoint ptr %i8count14 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i8count14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i = icmp eq i8 %69, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %70 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %m_features.i.i, align 8
  %72 = trunc i64 %71 to i32
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 1
  %add.i.i = add nuw nsw i32 %74, 3
  %add1.i.i = add nuw nsw i32 %add.i.i, %conv.i113
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %cond.i.i
  %add.ptr.i114 = getelementptr i8, ptr %sfep.0129, i32 %spec.select.i.i
  %75 = ptrtoint ptr %oldsfep.0128 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %oldsfep.0128, align 1
  %conv.i115 = zext i8 %76 to i32
  %77 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i118 = icmp eq i8 %78, 0
  %cond.i.i119 = select i1 %tobool.not.i.i118, i32 4, i32 8
  %add1.i.i120 = add nuw nsw i32 %add.i.i, %conv.i115
  %spec.select.i.i122 = add nuw nsw i32 %add1.i.i120, %cond.i.i119
  %add.ptr.i123 = getelementptr i8, ptr %oldsfep.0128, i32 %spec.select.i.i122
  %79 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %14, align 1
  %conv19 = zext i8 %80 to i32
  %cmp20 = icmp ult i32 %inc, %conv19
  br i1 %cmp20, label %xfs_dir2_sf_put_ftype.exit.for.body_crit_edge, label %xfs_dir2_sf_put_ftype.exit.for.end_crit_edge

xfs_dir2_sf_put_ftype.exit.for.end_crit_edge:     ; preds = %xfs_dir2_sf_put_ftype.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

xfs_dir2_sf_put_ftype.exit.for.body_crit_edge:    ; preds = %xfs_dir2_sf_put_ftype.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %xfs_dir2_sf_put_ftype.exit.for.end_crit_edge, %xfs_dir2_sf_put_parent_ino.exit.for.end_crit_edge
  tail call void @kvfree(ptr noundef %call) #6
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %81 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv9, ptr %i_disk_size, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %82 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %83, ptr noundef %1, i32 noundef 3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_sf_replace(ptr noundef %args) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @trace_xfs_dir2_sf_replace(ptr noundef %args)
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !104

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1054) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %7)
  %cmp4 = icmp sgt i64 %7, 1
  br i1 %cmp4, label %cond.end.cond.end14_crit_edge, label %cond.false13, !prof !104

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1055) #6
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %8 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_df, align 8
  %10 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp17 = icmp eq i64 %9, %11
  br i1 %cmp17, label %cond.end14.cond.end27_crit_edge, label %cond.false26, !prof !104

cond.end14.cond.end27_crit_edge:                  ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1056) #6
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.end14.cond.end27_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_u1, align 4
  %cmp29.not = icmp eq ptr %13, null
  br i1 %cmp29.not, label %cond.false38, label %cond.end27.cond.end39_crit_edge, !prof !111

cond.end27.cond.end39_crit_edge:                  ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end39

cond.false38:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1057) #6
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.end27.cond.end39_crit_edge
  %14 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_u1, align 4
  %16 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_disk_size, align 8
  %i8count = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  %20 = select i1 %cmp.i, i64 6, i64 10
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %20)
  %cmp45.not = icmp slt i64 %17, %20
  br i1 %cmp45.not, label %cond.false54, label %cond.end39.cond.end55_crit_edge, !prof !111

cond.end39.cond.end55_crit_edge:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1059) #6
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.end39.cond.end55_crit_edge
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 9
  %21 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %inumber, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %22)
  %cmp56 = icmp ugt i64 %22, 4294967295
  br i1 %cmp56, label %land.lhs.true, label %cond.end55.if.end72_crit_edge

cond.end55.if.end72_crit_edge:                    ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true:                                    ; preds = %cond.end55
  %23 = ptrtoint ptr %i8count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i8count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp60 = icmp eq i8 %24, 0
  br i1 %cmp60, label %if.then, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then:                                          ; preds = %land.lhs.true
  %25 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.not.i = icmp eq i8 %26, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %27 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %if_u1, align 4
  %29 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_df, align 8
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %28, align 1
  %conv4.i = zext i8 %32 to i32
  %add.i = shl nuw nsw i32 %conv4.i, 2
  %33 = trunc i64 %30 to i32
  %mul.i = add i32 %33, 4
  %conv7.i = add i32 %mul.i, %add.i
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp11.i = icmp eq i8 %35, 0
  br i1 %cmp11.i, label %land.rhs.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end.i
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %36 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i_forkoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp14.not.i = icmp eq i8 %37, 0
  br i1 %cmp14.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = zext i8 %37 to i32
  %shl.i = shl nuw nsw i32 %conv13.i, 3
  br label %xfs_dir2_sf_replace_needblock.exit

cond.false.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %sb_inodesize.i = getelementptr inbounds %struct.xfs_sb, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %sb_inodesize.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sb_inodesize.i, align 8
  %conv18.i = zext i16 %41 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %39, i32 0, i32 61
  %42 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %43, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %cond.neg.i = select i1 %tobool.i.not.i, i32 -100, i32 -176
  %sub.i276 = add nsw i32 %cond.neg.i, %conv18.i
  br label %xfs_dir2_sf_replace_needblock.exit

xfs_dir2_sf_replace_needblock.exit:               ; preds = %cond.false.i, %cond.true.i
  %cond21.i = phi i32 [ %shl.i, %cond.true.i ], [ %sub.i276, %cond.false.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i, i32 %cond21.i)
  %cmp22.i = icmp ugt i32 %conv7.i, %cond21.i
  br i1 %cmp22.i, label %if.then64, label %xfs_dir2_sf_replace_needblock.exit.cleanup_crit_edge

xfs_dir2_sf_replace_needblock.exit.cleanup_crit_edge: ; preds = %xfs_dir2_sf_replace_needblock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then64:                                        ; preds = %xfs_dir2_sf_replace_needblock.exit
  %call65 = tail call i32 @xfs_dir2_sf_to_block(ptr noundef %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end, label %if.then64.cleanup207_crit_edge

if.then64.cleanup207_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207

if.end:                                           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %call68 = tail call i32 @xfs_dir2_block_replace(ptr noundef %args) #6
  br label %cleanup207

cleanup:                                          ; preds = %xfs_dir2_sf_replace_needblock.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call fastcc void @xfs_dir2_sf_toino8(ptr noundef %args)
  %44 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %if_u1, align 4
  br label %if.end72

if.end72:                                         ; preds = %cleanup, %land.lhs.true.if.end72_crit_edge, %cond.end55.if.end72_crit_edge
  %tobool201.not = phi i1 [ false, %cleanup ], [ true, %cond.end55.if.end72_crit_edge ], [ true, %land.lhs.true.if.end72_crit_edge ]
  %sfp.1 = phi ptr [ %45, %cleanup ], [ %15, %cond.end55.if.end72_crit_edge ], [ %15, %land.lhs.true.if.end72_crit_edge ]
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %46 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %namelen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp73.not = icmp eq i32 %47, 1
  br i1 %cmp73.not, label %lor.rhs, label %if.end72.cond.end86_crit_edge

if.end72.cond.end86_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end86

lor.rhs:                                          ; preds = %if.end72
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %51)
  %cmp76.not = icmp eq i8 %51, 46
  br i1 %cmp76.not, label %cond.false85, label %lor.rhs.cond.end86thread-pre-split_crit_edge, !prof !111

lor.rhs.cond.end86thread-pre-split_crit_edge:     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end86thread-pre-split

cond.false85:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1085) #6
  br label %cond.end86thread-pre-split

cond.end86thread-pre-split:                       ; preds = %cond.false85, %lor.rhs.cond.end86thread-pre-split_crit_edge
  %52 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %namelen, align 8
  br label %cond.end86

cond.end86:                                       ; preds = %cond.end86thread-pre-split, %if.end72.cond.end86_crit_edge
  %53 = phi i32 [ %.pr, %cond.end86thread-pre-split ], [ %47, %if.end72.cond.end86_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp88 = icmp eq i32 %53, 2
  br i1 %cmp88, label %land.lhs.true90, label %cond.end86.if.else117_crit_edge

cond.end86.if.else117_crit_edge:                  ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else117

land.lhs.true90:                                  ; preds = %cond.end86
  %name91 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %54 = ptrtoint ptr %name91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name91, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %57)
  %cmp94 = icmp eq i8 %57, 46
  br i1 %cmp94, label %land.lhs.true96, label %land.lhs.true90.if.else117_crit_edge

land.lhs.true90.if.else117_crit_edge:             ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else117

land.lhs.true96:                                  ; preds = %land.lhs.true90
  %arrayidx98 = getelementptr i8, ptr %55, i32 1
  %58 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %59)
  %cmp100 = icmp eq i8 %59, 46
  br i1 %cmp100, label %if.then102, label %land.lhs.true96.if.else117_crit_edge

land.lhs.true96.if.else117_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else117

if.then102:                                       ; preds = %land.lhs.true96
  %i8count.i277 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfp.1, i32 0, i32 1
  %60 = ptrtoint ptr %i8count.i277 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i8count.i277, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i = icmp eq i8 %61, 0
  %parent.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfp.1, i32 0, i32 2
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i278

if.then.i:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %parent.i, align 1
  %conv.i = zext i32 %63 to i64
  br label %xfs_dir2_sf_get_parent_ino.exit

if.end.i278:                                      ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %parent.i, align 1
  %and.i = and i64 %65, 72057594037927935
  br label %xfs_dir2_sf_get_parent_ino.exit

xfs_dir2_sf_get_parent_ino.exit:                  ; preds = %if.end.i278, %if.then.i
  %retval.0.i279 = phi i64 [ %and.i, %if.end.i278 ], [ %conv.i, %if.then.i ]
  %66 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %inumber, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %retval.0.i279)
  %cmp105.not = icmp eq i64 %67, %retval.0.i279
  br i1 %cmp105.not, label %cond.false114, label %xfs_dir2_sf_get_parent_ino.exit.cond.end115_crit_edge, !prof !111

xfs_dir2_sf_get_parent_ino.exit.cond.end115_crit_edge: ; preds = %xfs_dir2_sf_get_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end115

cond.false114:                                    ; preds = %xfs_dir2_sf_get_parent_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1092) #6
  %68 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %68)
  %.pr323 = load i64, ptr %inumber, align 8
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false114, %xfs_dir2_sf_get_parent_ino.exit.cond.end115_crit_edge
  %69 = phi i64 [ %67, %xfs_dir2_sf_get_parent_ino.exit.cond.end115_crit_edge ], [ %.pr323, %cond.false114 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %69)
  %cmp.i280 = icmp ult i64 %69, 72057594037927936
  br i1 %cmp.i280, label %cond.end115.cond.end.i283_crit_edge, label %cond.false.i281, !prof !104

cond.end115.cond.end.i283_crit_edge:              ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i283

cond.false.i281:                                  ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 121) #6
  br label %cond.end.i283

cond.end.i283:                                    ; preds = %cond.false.i281, %cond.end115.cond.end.i283_crit_edge
  %70 = ptrtoint ptr %i8count.i277 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i8count.i277, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool2.not.i = icmp eq i8 %71, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i285

if.then.i285:                                     ; preds = %cond.end.i283
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %parent.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %69, ptr %parent.i, align 1
  br label %if.end164

if.else.i:                                        ; preds = %cond.end.i283
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i286 = trunc i64 %69 to i32
  %73 = ptrtoint ptr %parent.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %conv.i286, ptr %parent.i, align 1
  br label %if.end164

if.else117:                                       ; preds = %land.lhs.true96.if.else117_crit_edge, %land.lhs.true90.if.else117_crit_edge, %cond.end86.if.else117_crit_edge
  %i8count.i288 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfp.1, i32 0, i32 1
  %74 = ptrtoint ptr %sfp.1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sfp.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp120330.not = icmp eq i8 %75, 0
  br i1 %cmp120330.not, label %if.else117.for.end_crit_edge, label %for.body.lr.ph

if.else117.for.end_crit_edge:                     ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else117
  %76 = ptrtoint ptr %i8count.i288 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %i8count.i288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp.i.i = icmp eq i8 %77, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %sfp.1, i32 %sub.i.i
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sfep.0332 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr.i315, %for.inc.for.body_crit_edge ]
  %i.0331 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name122 = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0332, i32 0, i32 2
  %78 = ptrtoint ptr %sfep.0332 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sfep.0332, align 1
  %conv124 = zext i8 %79 to i32
  %call125 = tail call i32 @xfs_da_compname(ptr noundef %args, ptr noundef %name122, i32 noundef %conv124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call125)
  %cmp126 = icmp eq i32 %call125, 1
  br i1 %cmp126, label %if.then128, label %for.inc

if.then128:                                       ; preds = %for.body
  %80 = ptrtoint ptr %sfep.0332 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %sfep.0332, align 1
  %conv.i289 = zext i8 %81 to i32
  %add.ptr.i290 = getelementptr i8, ptr %name122, i32 %conv.i289
  %82 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %m_features.i.i.i, align 8
  %84 = trunc i64 %83 to i32
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 1
  %spec.select.i = getelementptr i8, ptr %add.ptr.i290, i32 %86
  %87 = ptrtoint ptr %i8count.i288 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %i8count.i288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i293 = icmp eq i8 %88, 0
  br i1 %tobool.not.i293, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %spec.select.i, align 1
  %conv3.i = zext i32 %90 to i64
  br label %xfs_dir2_sf_get_ino.exit

if.end4.i:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %spec.select.i, align 1
  %and.i294 = and i64 %92, 72057594037927935
  br label %xfs_dir2_sf_get_ino.exit

xfs_dir2_sf_get_ino.exit:                         ; preds = %if.end4.i, %if.then1.i
  %retval.0.i295 = phi i64 [ %and.i294, %if.end4.i ], [ %conv3.i, %if.then1.i ]
  %93 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %inumber, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %retval.0.i295)
  %cmp131.not = icmp eq i64 %94, %retval.0.i295
  br i1 %cmp131.not, label %cond.false140, label %xfs_dir2_sf_get_ino.exit.cond.end141_crit_edge, !prof !111

xfs_dir2_sf_get_ino.exit.cond.end141_crit_edge:   ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end141

cond.false140:                                    ; preds = %xfs_dir2_sf_get_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1104) #6
  %95 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %95)
  %.pr324 = load i64, ptr %inumber, align 8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %xfs_dir2_sf_get_ino.exit.cond.end141_crit_edge
  %96 = phi i64 [ %94, %xfs_dir2_sf_get_ino.exit.cond.end141_crit_edge ], [ %.pr324, %cond.false140 ]
  %97 = ptrtoint ptr %sfep.0332 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sfep.0332, align 1
  %conv.i297 = zext i8 %98 to i32
  %add.ptr.i298 = getelementptr i8, ptr %name122, i32 %conv.i297
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %96)
  %cmp.i299 = icmp ult i64 %96, 72057594037927936
  br i1 %cmp.i299, label %cond.end141.cond.end.i304_crit_edge, label %cond.false.i300, !prof !104

cond.end141.cond.end.i304_crit_edge:              ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i304

cond.false.i300:                                  ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 96) #6
  br label %cond.end.i304

cond.end.i304:                                    ; preds = %cond.false.i300, %cond.end141.cond.end.i304_crit_edge
  %99 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %m_features.i.i.i, align 8
  %101 = trunc i64 %100 to i32
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 1
  %spec.select.i302 = getelementptr i8, ptr %add.ptr.i298, i32 %103
  %104 = ptrtoint ptr %i8count.i288 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i8count.i288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool3.not.i = icmp eq i8 %105, 0
  br i1 %tobool3.not.i, label %if.else.i305, label %if.then4.i

if.then4.i:                                       ; preds = %cond.end.i304
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %spec.select.i302 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 8)
  store i64 %96, ptr %spec.select.i302, align 1
  br label %xfs_dir2_sf_put_ino.exit

if.else.i305:                                     ; preds = %cond.end.i304
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i64 %96 to i32
  %107 = ptrtoint ptr %spec.select.i302 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %conv5.i, ptr %spec.select.i302, align 1
  br label %xfs_dir2_sf_put_ino.exit

xfs_dir2_sf_put_ino.exit:                         ; preds = %if.else.i305, %if.then4.i
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 3
  %108 = ptrtoint ptr %filetype to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %filetype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %109)
  %cmp.i306 = icmp ult i8 %109, 9
  br i1 %cmp.i306, label %xfs_dir2_sf_put_ino.exit.cond.end.i311_crit_edge, label %cond.false.i307, !prof !104

xfs_dir2_sf_put_ino.exit.cond.end.i311_crit_edge: ; preds = %xfs_dir2_sf_put_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i311

cond.false.i307:                                  ; preds = %xfs_dir2_sf_put_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 154) #6
  br label %cond.end.i311

cond.end.i311:                                    ; preds = %cond.false.i307, %xfs_dir2_sf_put_ino.exit.cond.end.i311_crit_edge
  %110 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i309 = and i64 %111, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i309)
  %tobool.i.not.i310 = icmp eq i64 %and.i.i309, 0
  br i1 %tobool.i.not.i310, label %cond.end.i311.for.end_crit_edge, label %if.then.i312

cond.end.i311.for.end_crit_edge:                  ; preds = %cond.end.i311
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.i312:                                     ; preds = %cond.end.i311
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %sfep.0332 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sfep.0332, align 1
  %idxprom.i = zext i8 %113 to i32
  %arrayidx.i = getelementptr %struct.xfs_dir2_sf_entry, ptr %sfep.0332, i32 0, i32 2, i32 %idxprom.i
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %109, ptr %arrayidx.i, align 1
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0331, 1
  %115 = ptrtoint ptr %sfep.0332 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %sfep.0332, align 1
  %conv.i314 = zext i8 %116 to i32
  %add.i.i = add nuw nsw i32 %conv.i314, 3
  %117 = ptrtoint ptr %i8count.i288 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %i8count.i288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i.i = icmp eq i8 %118, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %add1.i.i = add nuw nsw i32 %add.i.i, %cond.i.i
  %119 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %m_features.i.i.i, align 8
  %121 = trunc i64 %120 to i32
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 1
  %spec.select.i.i = add nuw nsw i32 %add1.i.i, %123
  %add.ptr.i315 = getelementptr i8, ptr %sfep.0332, i32 %spec.select.i.i
  %124 = ptrtoint ptr %sfp.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %sfp.1, align 1
  %conv119 = zext i8 %125 to i32
  %cmp120 = icmp ult i32 %inc, %conv119
  br i1 %cmp120, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i312, %cond.end.i311.for.end_crit_edge, %if.else117.for.end_crit_edge
  %i.0328 = phi i32 [ %i.0331, %cond.end.i311.for.end_crit_edge ], [ %i.0331, %if.then.i312 ], [ 0, %if.else117.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %ino.0 = phi i64 [ %retval.0.i295, %cond.end.i311.for.end_crit_edge ], [ %retval.0.i295, %if.then.i312 ], [ 0, %if.else117.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %126 = ptrtoint ptr %sfp.1 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %sfp.1, align 1
  %conv146 = zext i8 %127 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0328, i32 %conv146)
  %cmp147 = icmp eq i32 %i.0328, %conv146
  br i1 %cmp147, label %if.then149, label %for.end.if.end164_crit_edge

for.end.if.end164_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then149:                                       ; preds = %for.end
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %128 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %op_flags, align 8
  %and = and i32 %129, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool150.not = icmp eq i32 %and, 0
  br i1 %tobool150.not, label %cond.false158, label %if.then149.cond.end159_crit_edge, !prof !111

if.then149.cond.end159_crit_edge:                 ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end159

cond.false158:                                    ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1115) #6
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false158, %if.then149.cond.end159_crit_edge
  br i1 %tobool201.not, label %cond.end159.cleanup207_crit_edge, label %if.then161

cond.end159.cleanup207_crit_edge:                 ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207

if.then161:                                       ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xfs_dir2_sf_toino4(ptr noundef %args)
  br label %cleanup207

if.end164:                                        ; preds = %for.end.if.end164_crit_edge, %if.else.i, %if.then.i285
  %ino.1 = phi i64 [ %ino.0, %for.end.if.end164_crit_edge ], [ %retval.0.i279, %if.then.i285 ], [ %retval.0.i279, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %ino.1)
  %cmp165 = icmp ugt i64 %ino.1, 4294967295
  %130 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %inumber, align 8
  br i1 %cmp165, label %land.lhs.true167, label %land.lhs.true183

land.lhs.true167:                                 ; preds = %if.end164
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %131)
  %cmp169 = icmp ult i64 %131, 4294967296
  br i1 %cmp169, label %if.then171, label %land.lhs.true167.if.end206_crit_edge

land.lhs.true167.if.end206_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then171:                                       ; preds = %land.lhs.true167
  %i8count172 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfp.1, i32 0, i32 1
  %132 = ptrtoint ptr %i8count172 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %i8count172, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %133)
  %cmp174 = icmp eq i8 %133, 1
  br i1 %cmp174, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xfs_dir2_sf_toino4(ptr noundef %args)
  br label %if.end206

if.else177:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %133, -1
  %134 = ptrtoint ptr %i8count172 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %dec, ptr %i8count172, align 1
  br label %if.end206

land.lhs.true183:                                 ; preds = %if.end164
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %131)
  %cmp185 = icmp ugt i64 %131, 4294967295
  br i1 %cmp185, label %if.then187, label %land.lhs.true183.if.end206_crit_edge

land.lhs.true183.if.end206_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then187:                                       ; preds = %land.lhs.true183
  %i8count188 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %sfp.1, i32 0, i32 1
  %135 = ptrtoint ptr %i8count188 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %i8count188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp190.not = icmp eq i8 %136, 0
  br i1 %cmp190.not, label %cond.false199, label %if.then187.cond.end200_crit_edge, !prof !111

if.then187.cond.end200_crit_edge:                 ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end200

cond.false199:                                    ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1143) #6
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false199, %if.then187.cond.end200_crit_edge
  br i1 %tobool201.not, label %if.then202, label %cond.end200.if.end206_crit_edge

cond.end200.if.end206_crit_edge:                  ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then202:                                       ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %i8count188 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %i8count188, align 1
  %inc204 = add i8 %138, 1
  store i8 %inc204, ptr %i8count188, align 1
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %cond.end200.if.end206_crit_edge, %land.lhs.true183.if.end206_crit_edge, %if.else177, %if.then176, %land.lhs.true167.if.end206_crit_edge
  tail call fastcc void @xfs_dir2_sf_check(ptr noundef %args)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %139 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %140, ptr noundef %1, i32 noundef 2) #6
  br label %cleanup207

cleanup207:                                       ; preds = %if.end206, %if.then161, %cond.end159.cleanup207_crit_edge, %if.end, %if.then64.cleanup207_crit_edge
  %retval.1 = phi i32 [ 0, %if.end206 ], [ -2, %if.then161 ], [ -2, %cond.end159.cleanup207_crit_edge ], [ %call65, %if.then64.cleanup207_crit_edge ], [ %call68, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_replace(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_replace, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_replace, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !130
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_replace(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_replace, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_replace, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_replace.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_sf_replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1958, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
declare dso_local i32 @xfs_dir2_block_replace(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_block_to_sf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_sf_addname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_sf_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_sf_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_sf_removename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_sf_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_toino4(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_toino4, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_toino4, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !132
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_toino4(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !133
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_toino4, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_toino4, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_toino4.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_sf_toino4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1960, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
declare dso_local i32 @__traceiter_xfs_dir2_sf_toino4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_sf_toino8(ptr noundef %args) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_toino8, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_sf_toino8, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !134
  %call42 = tail call i32 @__traceiter_xfs_dir2_sf_toino8(ptr noundef null, ptr noundef %args) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !135
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_toino8, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_sf_toino8, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir2_sf_toino8.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_xfs_dir2_sf_toino8.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1961, ptr noundef nonnull @.str.27) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #6
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
declare dso_local i32 @__traceiter_xfs_dir2_sf_toino8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !89, !91, !93}
!llvm.named.register.sp = !{!94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 96, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 154, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 304, i32 4}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 310, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 328, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 334, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 344, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 379, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 381, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 382, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 383, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 384, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 386, i32 2}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 440, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 726, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 823, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 824, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 924, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 957, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 958, i32 2}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 961, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 970, i32 4}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 1085, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 1092, i32 3}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 1143, i32 3}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_trace.h", i32 1967, i32 1}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trace.h", i32 1955, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 691, i32 3}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 697, i32 3}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 699, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 700, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 701, i32 2}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_trace.h", i32 1956, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_trace.h", i32 1957, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_trace.h", i32 1959, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_trace.h", i32 1958, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 1181, i32 2}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_trace.h", i32 1960, i32 1}
!88 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/xfs/libxfs/xfs_dir2_sf.c", i32 1254, i32 2}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_trace.h", i32 1961, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = !{!"sp"}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!106 = !{i64 2148280902, i64 2148280907, i64 2148280920, i64 2148280964, i64 2148280998, i64 2148281019}
!107 = !{i64 2160859825}
!108 = !{i64 2160860036}
!109 = !{i64 2149982995}
!110 = !{i64 2149984031}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i64 2160643796}
!113 = !{i64 2160644005}
!114 = !{i64 2166330439}
!115 = !{i64 2166330557}
!116 = !{i64 2166330648}
!117 = !{i64 2166330739}
!118 = !{i64 2166330830}
!119 = !{i64 2166330921}
!120 = !{i64 2166331039}
!121 = !{i64 2166331223}
!122 = !{i64 2166331314}
!123 = !{i64 2166331405}
!124 = !{i64 2160664355}
!125 = !{i64 2160664562}
!126 = !{i64 2160680799}
!127 = !{i64 2160681006}
!128 = !{i64 2160713936}
!129 = !{i64 2160714151}
!130 = !{i64 2160697282}
!131 = !{i64 2160697491}
!132 = !{i64 2160734657}
!133 = !{i64 2160734864}
!134 = !{i64 2160751101}
!135 = !{i64 2160751308}
