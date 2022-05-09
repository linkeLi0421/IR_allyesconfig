; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_inode_fork.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_inode_fork.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_bmbt_rec = type { i64, i64 }
%struct.xfs_bmdr_block = type { i16, i16 }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_inode_log_item = type { %struct.xfs_log_item, ptr, i16, %struct.spinlock, i32, i32, i32, i64, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }

@__func__.xfs_iformat_data_fork = private unnamed_addr constant [22 x i8] c"xfs_iformat_data_fork\00", align 1
@xfs_ifork_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.xfs_iformat_attr_fork = private unnamed_addr constant [22 x i8] c"xfs_iformat_attr_fork\00", align 1
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"XFS_BMAP_BMDR_SPACE(ifp->if_broot) <= XFS_IFORK_SIZE(ip, whichfork)\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/xfs/libxfs/xfs_inode_fork.c\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(ifp->if_broot != NULL) && (ifp->if_broot_bytes > 0)\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"new_max >= 0\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new_size >= 0\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"new_size <= XFS_IFORK_SIZE(ip, whichfork)\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL | XFS_ILOCK_SHARED)\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ifp->if_bytes > 0\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"xfs_bmap_validate_extent(ip, whichfork, &rec) == NULL\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"copied > 0\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"copied <= ifp->if_bytes\00", [40 x i8] zeroinitializer }, align 32
@xfs_iflush_fork.brootflag = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 8, i16 256], [28 x i8] zeroinitializer }, align 32
@xfs_iflush_fork.dataflag = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 2, i16 64], [28 x i8] zeroinitializer }, align 32
@xfs_iflush_fork.extflag = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 4, i16 128], [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"whichfork == XFS_ATTR_FORK\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ifp->if_u1.if_data != NULL\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ifp->if_bytes <= XFS_IFORK_SIZE(ip, whichfork)\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ifp->if_nextents > 0\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ifp->if_broot != NULL\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"whichfork == XFS_DATA_FORK\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data fork\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"attr fork\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"corrupt inode %Lu (bad size %d for local fork, size = %zd).\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xfs_iformat_local\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"corrupt inode %Lu ((a)extents = %d).\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xfs_iformat_extents(1)\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xfs_iformat_extents(2)\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_read_extent = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_read_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"corrupt inode %Lu (btree).\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xfs_iformat_btree\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_write_extent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_write_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"xfs_ifork_cache\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 29, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 403, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 414, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 417, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 487, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 488, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 553, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 554, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 559, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 566, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 567, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"brootflag\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 591, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"dataflag\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 593, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant [8 x i8] c"extflag\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 595, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 606, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 615, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 616, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 624, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 633, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 644, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 651, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 703, i32 47 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 725, i32 47 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 749, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 82, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 86, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 120, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 123, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 142, i32 7 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 406, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 108, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 196, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [34 x i8] c"../fs/xfs/libxfs/xfs_inode_fork.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 199, i32 5 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @xfs_ifork_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @xfs_iflush_fork.brootflag, ptr @xfs_iflush_fork.dataflag, ptr @xfs_iflush_fork.extflag, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_ifork_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_iflush_fork.brootflag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_iflush_fork.dataflag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_iflush_fork.extflag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_init_local_fork(ptr nocapture noundef %ip, i32 noundef %whichfork, ptr nocapture noundef readonly %data, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whichfork, label %cond.false3 [
    i32 0, label %cond.true
    i32 1, label %cond.true2
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %1 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_afp, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %3 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2, %cond.true
  %cond5 = phi ptr [ %i_df, %cond.true ], [ %2, %cond.true2 ], [ %4, %cond.false3 ]
  %conv = trunc i64 %size to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool9.not = icmp eq i64 %size, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %cond.end4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %5 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_vnode.i, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %7)
  %cmp7 = icmp eq i16 %7, -24576
  %inc = zext i1 %cmp7 to i32
  %spec.select = add i32 %conv, 3
  %add = add i32 %spec.select, %inc
  %div = sdiv i32 %add, 4
  %mul = shl nsw i32 %div, 2
  %call11 = tail call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 4) #9
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %cond5, i32 0, i32 4
  %8 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %if_u1, align 4
  %9 = call ptr @memcpy(ptr %call11, ptr %data, i32 %conv)
  br i1 %cmp7, label %if.then15, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_u1, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end19

if.else:                                          ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  %if_u118 = getelementptr inbounds %struct.xfs_ifork, ptr %cond5, i32 0, i32 4
  %13 = ptrtoint ptr %if_u118 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %if_u118, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15, %if.then10.if.end19_crit_edge
  %14 = ptrtoint ptr %cond5 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %size, ptr %cond5, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iformat_data_fork(ptr noundef %ip, ptr noundef %dip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %di_format = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 3
  %0 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %di_format, align 1
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %if_format, align 2
  %di_nextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 18
  %3 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %di_nextents, align 4
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %if_nextents to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %if_nextents, align 4
  %6 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_vnode.i, align 8
  %8 = and i16 %7, -4096
  %and = zext i16 %8 to i32
  %9 = add nsw i32 %and, -4096
  %10 = lshr exact i32 %9, 12
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %10, label %__here17 [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge40
    i32 5, label %entry.sw.bb_crit_edge41
    i32 11, label %entry.sw.bb_crit_edge42
    i32 7, label %entry.sw.bb4_crit_edge
    i32 9, label %entry.sw.bb4_crit_edge43
    i32 3, label %entry.sw.bb4_crit_edge44
  ]

entry.sw.bb4_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41, %entry.sw.bb_crit_edge42
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %12 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %i_disk_size, align 8
  %di_version.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %13 = ptrtoint ptr %di_version.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %di_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 3
  %..i.i = select i1 %cmp.i.i, i32 176, i32 100
  %add.ptr.i = getelementptr i8, ptr %dip, i32 %..i.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %17 = shl i32 %16, 2
  %shl.i = and i32 %17, 535822336
  %and.i.i = and i32 %16, 262143
  %or.i = or i32 %shl.i, %and.i.i
  %i_rdev = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 13
  %18 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %i_rdev, align 8
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge43, %entry.sw.bb4_crit_edge44
  %conv7 = sext i8 %1 to i32
  %19 = zext i32 %conv7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %conv7, label %__here [
    i32 1, label %sw.bb8
    i32 2, label %sw.bb12
    i32 3, label %sw.bb14
  ]

sw.bb8:                                           ; preds = %sw.bb4
  %di_size = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 15
  %20 = ptrtoint ptr %di_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %di_size, align 8
  %conv9 = trunc i64 %21 to i32
  %call10 = tail call fastcc i32 @xfs_iformat_local(ptr noundef %ip, ptr noundef %dip, i32 noundef 0, i32 noundef %conv9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb8
  %22 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_vnode.i, align 8
  %24 = and i16 %23, -4096
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %24, label %if.then.cleanup_crit_edge [
    i16 16384, label %sw.bb.i
    i16 -24576, label %sw.bb2.i
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call ptr @xfs_dir2_sf_verify(ptr noundef %ip) #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call ptr @xfs_symlink_shortform_verify(ptr noundef %ip) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %fa.0.i = phi ptr [ %call3.i, %sw.bb2.i ], [ %call1.i, %sw.bb.i ]
  %tobool.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.cleanup_crit_edge, label %if.then.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_df.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %if_u1.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 4
  %26 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %if_u1.i, align 4
  %28 = ptrtoint ptr %i_df.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_df.i, align 8
  %conv5.i = trunc i64 %29 to i32
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.18, ptr noundef %27, i32 noundef %conv5.i, ptr noundef nonnull %fa.0.i) #9
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc i32 @xfs_iformat_extents(ptr noundef %ip, ptr noundef %dip, i32 noundef 0)
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call fastcc i32 @xfs_iformat_btree(ptr noundef %ip, ptr noundef %dip, i32 noundef 0)
  br label %cleanup

__here:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @__func__.xfs_iformat_data_fork, ptr noundef %dip, i32 noundef 176, ptr noundef blockaddress(@xfs_iformat_data_fork, %__here)) #9
  br label %cleanup

__here17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @__func__.xfs_iformat_data_fork, ptr noundef %dip, i32 noundef 176, ptr noundef blockaddress(@xfs_iformat_data_fork, %__here17)) #9
  br label %cleanup

cleanup:                                          ; preds = %__here17, %__here, %sw.bb14, %sw.bb12, %if.then.i, %sw.epilog.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ -117, %__here17 ], [ -117, %__here ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ 0, %sw.bb ], [ %call10, %sw.bb8.cleanup_crit_edge ], [ -117, %if.then.i ], [ 0, %sw.epilog.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iformat_local(ptr noundef %ip, ptr noundef %dip, i32 noundef %whichfork, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %0 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false8

cond.true:                                        ; preds = %entry
  br i1 %tobool.not, label %cond.false, label %cond.true1

cond.true1:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 3
  br label %cond.end29

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sb_inodesize, align 8
  %conv4 = zext i16 %5 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv4
  br label %cond.end29

cond.false8:                                      ; preds = %entry
  br i1 %tobool.not, label %cond.false8.cond.end29_crit_edge, label %cond.true12

cond.false8.cond.end29_crit_edge:                 ; preds = %cond.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

cond.true12:                                      ; preds = %cond.false8
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 8
  %sb_inodesize15 = getelementptr inbounds %struct.xfs_sb, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %sb_inodesize15 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sb_inodesize15, align 8
  %conv16 = zext i16 %11 to i32
  %m_features.i127 = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i127 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i127, align 8
  %and.i128 = and i64 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i128)
  %tobool.i129.not = icmp eq i64 %and.i128, 0
  %cond20.neg = select i1 %tobool.i129.not, i32 -100, i32 -176
  %conv23 = zext i8 %1 to i32
  %shl24.neg = mul nsw i32 %conv23, -8
  %sub21 = add nsw i32 %shl24.neg, %conv16
  %sub25 = add nsw i32 %sub21, %cond20.neg
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true12, %cond.false8.cond.end29_crit_edge, %cond.false, %cond.true1
  %cond30 = phi i32 [ %shl, %cond.true1 ], [ %sub, %cond.false ], [ %sub25, %cond.true12 ], [ 0, %cond.false8.cond.end29_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond30, i32 %size)
  %cmp31 = icmp ult i32 %cond30, %size
  br i1 %cmp31, label %if.then, label %if.end, !prof !90

if.then:                                          ; preds = %cond.end29
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_ino, align 8
  %di_forkoff39 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %18 = ptrtoint ptr %di_forkoff39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %di_forkoff39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool41.not = icmp eq i8 %19, 0
  br i1 %cmp, label %cond.true38, label %cond.false58

cond.true38:                                      ; preds = %if.then
  br i1 %tobool41.not, label %cond.false46, label %cond.true42

cond.true42:                                      ; preds = %cond.true38
  call void @__sanitizer_cov_trace_pc() #11
  %conv40 = zext i8 %19 to i32
  %shl45 = shl nuw nsw i32 %conv40, 3
  br label %cond.end79

cond.false46:                                     ; preds = %cond.true38
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize49 = getelementptr inbounds %struct.xfs_sb, ptr %15, i32 0, i32 17
  %20 = ptrtoint ptr %sb_inodesize49 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sb_inodesize49, align 8
  %conv50 = zext i16 %21 to i32
  %m_features.i130 = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i130 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i130, align 8
  %and.i131 = and i64 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i131)
  %tobool.i132.not = icmp eq i64 %and.i131, 0
  %cond54.neg = select i1 %tobool.i132.not, i32 -100, i32 -176
  %sub55 = add nsw i32 %cond54.neg, %conv50
  br label %cond.end79

cond.false58:                                     ; preds = %if.then
  br i1 %tobool41.not, label %cond.false58.cond.end79_crit_edge, label %cond.true62

cond.false58.cond.end79_crit_edge:                ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end79

cond.true62:                                      ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize65 = getelementptr inbounds %struct.xfs_sb, ptr %15, i32 0, i32 17
  %24 = ptrtoint ptr %sb_inodesize65 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sb_inodesize65, align 8
  %conv66 = zext i16 %25 to i32
  %m_features.i133 = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 61
  %26 = ptrtoint ptr %m_features.i133 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %m_features.i133, align 8
  %and.i134 = and i64 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i134)
  %tobool.i135.not = icmp eq i64 %and.i134, 0
  %cond70.neg = select i1 %tobool.i135.not, i32 -100, i32 -176
  %conv73 = zext i8 %19 to i32
  %shl74.neg = mul nsw i32 %conv73, -8
  %sub71 = add nsw i32 %shl74.neg, %conv66
  %sub75 = add nsw i32 %sub71, %cond70.neg
  br label %cond.end79

cond.end79:                                       ; preds = %cond.true62, %cond.false58.cond.end79_crit_edge, %cond.false46, %cond.true42
  %cond80 = phi i32 [ %shl45, %cond.true42 ], [ %sub55, %cond.false46 ], [ %sub75, %cond.true62 ], [ 0, %cond.false58.cond.end79_crit_edge ]
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %15, ptr noundef nonnull @.str.21, i64 noundef %17, i32 noundef %size, i32 noundef %cond80) #9
  br label %__here

__here:                                           ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.22, ptr noundef %dip, i32 noundef 176, ptr noundef blockaddress(@xfs_iformat_local, %__here)) #9
  br label %return

if.end:                                           ; preds = %cond.end29
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %28 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.i = icmp eq i8 %29, 3
  %..i = select i1 %cmp.i, i32 176, i32 100
  %add.ptr = getelementptr i8, ptr %dip, i32 %..i
  br i1 %cmp, label %cond.end95.thread, label %cond.end95

cond.end95.thread:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_df.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4.i

cond.end95:                                       ; preds = %if.end
  %di_forkoff91 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %30 = ptrtoint ptr %di_forkoff91 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %di_forkoff91, align 2
  %conv92 = zext i8 %31 to i32
  %shl93 = shl nuw nsw i32 %conv92, 3
  %add.ptr94 = getelementptr i8, ptr %add.ptr, i32 %shl93
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cond = icmp eq i32 %whichfork, 1
  br i1 %cond, label %cond.true2.i, label %cond.false3.i

cond.true2.i:                                     ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %32 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_afp.i, align 8
  br label %cond.end4.i

cond.false3.i:                                    ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #11
  %i_cowfp.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %34 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_cowfp.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.false3.i, %cond.true2.i, %cond.end95.thread
  %cond96140 = phi ptr [ %add.ptr, %cond.end95.thread ], [ %add.ptr94, %cond.true2.i ], [ %add.ptr94, %cond.false3.i ]
  %cond5.i = phi ptr [ %i_df.i, %cond.end95.thread ], [ %33, %cond.true2.i ], [ %35, %cond.false3.i ]
  %conv97142 = sext i32 %size to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool9.not.i = icmp eq i32 %size, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %cond.end4.i
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %36 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %i_vnode.i.i, align 8
  %38 = and i16 %37, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %38)
  %cmp7.i = icmp eq i16 %38, -24576
  %inc.i = zext i1 %cmp7.i to i32
  %spec.select.i = add i32 %size, 3
  %add.i = add i32 %spec.select.i, %inc.i
  %div.i = sdiv i32 %add.i, 4
  %mul.i = shl nsw i32 %div.i, 2
  %call11.i = tail call ptr @kmem_alloc(i32 noundef %mul.i, i32 noundef 4) #9
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond5.i, i32 0, i32 4
  %39 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call11.i, ptr %if_u1.i, align 4
  %40 = call ptr @memcpy(ptr %call11.i, ptr %cond96140, i32 %size)
  br i1 %cmp7.i, label %if.then15.i, label %if.then10.i.xfs_init_local_fork.exit_crit_edge

if.then10.i.xfs_init_local_fork.exit_crit_edge:   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_init_local_fork.exit

if.then15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %if_u1.i, align 4
  %arrayidx.i = getelementptr i8, ptr %42, i32 %size
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx.i, align 1
  br label %xfs_init_local_fork.exit

if.else.i:                                        ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %if_u118.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond5.i, i32 0, i32 4
  %44 = ptrtoint ptr %if_u118.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %if_u118.i, align 4
  br label %xfs_init_local_fork.exit

xfs_init_local_fork.exit:                         ; preds = %if.else.i, %if.then15.i, %if.then10.i.xfs_init_local_fork.exit_crit_edge
  %45 = ptrtoint ptr %cond5.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv97142, ptr %cond5.i, align 8
  br label %return

return:                                           ; preds = %xfs_init_local_fork.exit, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %xfs_init_local_fork.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ifork_verify_local_data(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %2, label %entry.cleanup_crit_edge [
    i16 16384, label %sw.bb
    i16 -24576, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @xfs_dir2_sf_verify(ptr noundef %ip) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call ptr @xfs_symlink_shortform_verify(ptr noundef %ip) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %fa.0 = phi ptr [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  %tobool.not = icmp eq ptr %fa.0, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_u1, align 4
  %6 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_df, align 8
  %conv5 = trunc i64 %7 to i32
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.18, ptr noundef %5, i32 noundef %conv5, ptr noundef nonnull %fa.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iformat_extents(ptr noundef %ip, ptr noundef %dip, i32 noundef %whichfork) #3 align 64 {
entry:
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %new = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.end9, label %cond.false27

cond.end9:                                        ; preds = %entry
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %di_nextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 18
  %2 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %di_nextents, align 4
  %mul = shl i32 %3, 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #9
  %4 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !92
  %5 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new) #9
  %7 = call ptr @memset(ptr %new, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp11 = icmp slt i32 %mul, 0
  br i1 %cmp11, label %cond.end9.if.then_crit_edge, label %cond.true15, !prof !90

cond.end9.if.then_crit_edge:                      ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.true15:                                      ; preds = %cond.end9
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %8 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %cond.false20, label %cond.true17

cond.true17:                                      ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #11
  %conv16 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv16, 3
  br label %cond.end46

cond.false20:                                     ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sb_inodesize, align 8
  %conv21 = zext i16 %11 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond24.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond24.neg, %conv21
  br label %cond.end46

cond.false27:                                     ; preds = %entry
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %14 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_afp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %switch.selectcmp.i = icmp eq i32 %whichfork, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 512, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %switch.selectcmp2.i = icmp eq i32 %whichfork, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 256, i32 %switch.select.i
  %di_anextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 19
  %16 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %di_anextents, align 8
  %conv = zext i16 %17 to i32
  %mul150 = shl nuw nsw i32 %conv, 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #9
  %18 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !92
  %19 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new) #9
  %21 = call ptr @memset(ptr %new, i32 255, i32 32)
  %di_forkoff28 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %22 = ptrtoint ptr %di_forkoff28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %di_forkoff28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool30.not = icmp eq i8 %23, 0
  br i1 %tobool30.not, label %cond.false27.cond.end46_crit_edge, label %cond.true31

cond.false27.cond.end46_crit_edge:                ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end46

cond.true31:                                      ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize33 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %sb_inodesize33 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sb_inodesize33, align 8
  %conv34 = zext i16 %25 to i32
  %m_features.i133 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %26 = ptrtoint ptr %m_features.i133 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %m_features.i133, align 8
  %and.i134 = and i64 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i134)
  %tobool.i135.not = icmp eq i64 %and.i134, 0
  %cond37.neg = select i1 %tobool.i135.not, i32 -100, i32 -176
  %conv40 = zext i8 %23 to i32
  %shl41.neg = mul nsw i32 %conv40, -8
  %sub38 = add nsw i32 %shl41.neg, %conv34
  %sub42 = add nsw i32 %sub38, %cond37.neg
  br label %cond.end46

cond.end46:                                       ; preds = %cond.true31, %cond.false27.cond.end46_crit_edge, %cond.false20, %cond.true17
  %switch.select3.i145152167 = phi i32 [ 0, %cond.true17 ], [ 0, %cond.false20 ], [ %switch.select3.i, %cond.true31 ], [ %switch.select3.i, %cond.false27.cond.end46_crit_edge ]
  %cond5143153165 = phi ptr [ %i_df, %cond.true17 ], [ %i_df, %cond.false20 ], [ %15, %cond.true31 ], [ %15, %cond.false27.cond.end46_crit_edge ]
  %cond10154163 = phi i32 [ %3, %cond.true17 ], [ %3, %cond.false20 ], [ %conv, %cond.true31 ], [ %conv, %cond.false27.cond.end46_crit_edge ]
  %mul156161 = phi i32 [ %mul, %cond.true17 ], [ %mul, %cond.false20 ], [ %mul150, %cond.true31 ], [ %mul150, %cond.false27.cond.end46_crit_edge ]
  %cond47 = phi i32 [ %shl, %cond.true17 ], [ %sub, %cond.false20 ], [ %sub42, %cond.true31 ], [ 0, %cond.false27.cond.end46_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul156161, i32 %cond47)
  %cmp48 = icmp ugt i32 %mul156161, %cond47
  br i1 %cmp48, label %cond.end46.if.then_crit_edge, label %if.end, !prof !90

cond.end46.if.then_crit_edge:                     ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end46.if.then_crit_edge, %cond.end9.if.then_crit_edge
  %cond10155 = phi i32 [ %3, %cond.end9.if.then_crit_edge ], [ %cond10154163, %cond.end46.if.then_crit_edge ]
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.23, i64 noundef %29, i32 noundef %cond10155) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.24, ptr noundef %dip, i32 noundef 176, ptr noundef blockaddress(@xfs_iformat_extents, %__here)) #9
  br label %cleanup80

if.end:                                           ; preds = %cond.end46
  %30 = ptrtoint ptr %cond5143153165 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %cond5143153165, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %cond5143153165, i32 0, i32 4
  %31 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %if_u1, align 4
  %if_height = getelementptr inbounds %struct.xfs_ifork, ptr %cond5143153165, i32 0, i32 3
  %32 = ptrtoint ptr %if_height to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul156161)
  %tobool53.not = icmp eq i32 %mul156161, 0
  br i1 %tobool53.not, label %if.end.cleanup80_crit_edge, label %if.then54

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

if.then54:                                        ; preds = %if.end
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %33 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp.i = icmp eq i8 %34, 3
  %..i = select i1 %cmp.i, i32 176, i32 100
  %add.ptr = getelementptr i8, ptr %dip, i32 %..i
  br i1 %cmp, label %if.then54.cond.end69_crit_edge, label %cond.false60

if.then54.cond.end69_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end69

cond.false60:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %di_forkoff65 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %35 = ptrtoint ptr %di_forkoff65 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %di_forkoff65, align 2
  %conv66 = zext i8 %36 to i32
  %shl67 = shl nuw nsw i32 %conv66, 3
  %add.ptr68 = getelementptr i8, ptr %add.ptr, i32 %shl67
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false60, %if.then54.cond.end69_crit_edge
  %cond70 = phi ptr [ %add.ptr68, %cond.false60 ], [ %add.ptr, %if.then54.cond.end69_crit_edge ]
  call void @xfs_iext_first(ptr noundef %cond5143153165, ptr noundef nonnull %icur) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond10154163)
  %cmp71170 = icmp sgt i32 %cond10154163, 0
  br i1 %cmp71170, label %cond.end69.for.body_crit_edge, label %cond.end69.cleanup80_crit_edge

cond.end69.cleanup80_crit_edge:                   ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

cond.end69.for.body_crit_edge:                    ; preds = %cond.end69
  br label %for.body

for.body:                                         ; preds = %__here77.for.body_crit_edge, %cond.end69.for.body_crit_edge
  %i.0172 = phi i32 [ %inc, %__here77.for.body_crit_edge ], [ 0, %cond.end69.for.body_crit_edge ]
  %dp.0171 = phi ptr [ %incdec.ptr, %__here77.for.body_crit_edge ], [ %cond70, %cond.end69.for.body_crit_edge ]
  call void @xfs_bmbt_disk_get_all(ptr noundef %dp.0171, ptr noundef nonnull %new) #9
  %call73 = call ptr @xfs_bmap_validate_extent(ptr noundef %ip, i32 noundef %whichfork, ptr noundef nonnull %new) #9
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end76, label %if.then75

if.then75:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.25, ptr noundef %dp.0171, i32 noundef 16, ptr noundef nonnull %call73) #9
  br label %cleanup80

if.end76:                                         ; preds = %for.body
  call void @xfs_iext_insert(ptr noundef %ip, ptr noundef nonnull %icur, ptr noundef nonnull %new, i32 noundef %switch.select3.i145152167) #9
  br label %__here77

__here77:                                         ; preds = %if.end76
  call fastcc void @trace_xfs_read_extent(ptr noundef %ip, ptr noundef nonnull %icur, i32 noundef %switch.select3.i145152167)
  call void @xfs_iext_next(ptr noundef %cond5143153165, ptr noundef nonnull %icur) #9
  %inc = add nuw nsw i32 %i.0172, 1
  %incdec.ptr = getelementptr %struct.xfs_bmbt_rec, ptr %dp.0171, i32 1
  %exitcond.not = icmp eq i32 %inc, %cond10154163
  br i1 %exitcond.not, label %__here77.cleanup80_crit_edge, label %__here77.for.body_crit_edge

__here77.for.body_crit_edge:                      ; preds = %__here77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

__here77.cleanup80_crit_edge:                     ; preds = %__here77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

cleanup80:                                        ; preds = %__here77.cleanup80_crit_edge, %if.then75, %cond.end69.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %__here
  %retval.2 = phi i32 [ -117, %__here ], [ -117, %if.then75 ], [ 0, %if.end.cleanup80_crit_edge ], [ 0, %cond.end69.cleanup80_crit_edge ], [ 0, %__here77.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #9
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iformat_btree(ptr noundef %ip, ptr noundef %dip, i32 noundef %whichfork) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %2 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp eq i8 %3, 3
  %..i = select i1 %cmp.i, i32 176, i32 100
  %add.ptr = getelementptr i8, ptr %dip, i32 %..i
  br label %cond.end15

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  %di_version9 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %6 = ptrtoint ptr %di_version9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %di_version9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i263 = icmp eq i8 %7, 3
  %..i264 = select i1 %cmp.i263, i32 176, i32 100
  %add.ptr12 = getelementptr i8, ptr %dip, i32 %..i264
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %8 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %di_forkoff, align 2
  %conv13 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv13, 3
  %add.ptr14 = getelementptr i8, ptr %add.ptr12, i32 %shl
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false8, %cond.true7
  %cond5284 = phi ptr [ %i_df, %cond.true7 ], [ %5, %cond.false8 ]
  %cond16 = phi ptr [ %add.ptr, %cond.true7 ], [ %add.ptr14, %cond.false8 ]
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond19 = select i1 %tobool.i.not, i32 24, i32 72
  %bb_numrecs = getelementptr inbounds %struct.xfs_bmdr_block, ptr %cond16, i32 0, i32 1
  %12 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bb_numrecs, align 2
  %conv20 = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv20, 4
  %add = add nuw nsw i32 %cond19, %mul
  %14 = ptrtoint ptr %cond16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cond16, align 2
  %conv23 = zext i16 %15 to i32
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %cond5284, i32 0, i32 7
  %16 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %if_nextents, align 4
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %18 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp28.not = icmp eq i8 %19, 0
  br i1 %cmp, label %cond.true26, label %cond.true46

cond.true26:                                      ; preds = %cond.end15
  br i1 %cmp28.not, label %cond.false34, label %cond.true30

cond.true30:                                      ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = zext i8 %19 to i32
  %shl33 = shl nuw nsw i32 %conv27, 3
  br label %cond.end71

cond.false34:                                     ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sb_inodesize, align 8
  %conv36 = zext i16 %21 to i32
  %and.i266 = and i64 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i266)
  %tobool.i267.not = icmp eq i64 %and.i266, 0
  %cond40.neg = select i1 %tobool.i267.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond40.neg, %conv36
  br label %cond.end71

cond.true46:                                      ; preds = %cond.end15
  br i1 %cmp28.not, label %cond.true46.cond.end71_crit_edge, label %cond.true51

cond.true46.cond.end71_crit_edge:                 ; preds = %cond.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end71

cond.true51:                                      ; preds = %cond.true46
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize54 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %sb_inodesize54 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sb_inodesize54, align 8
  %conv55 = zext i16 %23 to i32
  %and.i269 = and i64 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i269)
  %tobool.i270.not = icmp eq i64 %and.i269, 0
  %cond59.neg = select i1 %tobool.i270.not, i32 -100, i32 -176
  %conv62 = zext i8 %19 to i32
  %shl63.neg = mul nsw i32 %conv62, -8
  %sub60 = add nsw i32 %shl63.neg, %cond59.neg
  %sub64 = add nsw i32 %sub60, %conv55
  br label %cond.end71

cond.end71:                                       ; preds = %cond.true51, %cond.true46.cond.end71_crit_edge, %cond.false34, %cond.true30
  %cond72 = phi i32 [ %shl33, %cond.true30 ], [ %sub, %cond.false34 ], [ %sub64, %cond.true51 ], [ 0, %cond.true46.cond.end71_crit_edge ]
  %div260 = lshr i32 %cond72, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div260)
  %cmp73.not = icmp ule i32 %17, %div260
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp75 = icmp eq i16 %13, 0
  %or.cond = select i1 %cmp73.not, i1 true, i1 %cmp75
  br i1 %or.cond, label %cond.end71.if.then_crit_edge, label %lor.lhs.false77, !prof !94

cond.end71.if.then_crit_edge:                     ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false77:                                  ; preds = %cond.end71
  %add79 = or i32 %mul, 4
  %di_forkoff83 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %24 = ptrtoint ptr %di_forkoff83 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %di_forkoff83, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %cmp, label %cond.true82, label %cond.false99

cond.true82:                                      ; preds = %lor.lhs.false77
  br i1 %tobool.not, label %cond.false89, label %cond.true85

cond.true85:                                      ; preds = %cond.true82
  call void @__sanitizer_cov_trace_pc() #11
  %conv84 = zext i8 %25 to i32
  %shl88 = shl nuw nsw i32 %conv84, 3
  br label %cond.end118

cond.false89:                                     ; preds = %cond.true82
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize91 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %sb_inodesize91 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sb_inodesize91, align 8
  %conv92 = zext i16 %27 to i32
  %and.i272 = and i64 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i272)
  %tobool.i273.not = icmp eq i64 %and.i272, 0
  %cond95.neg = select i1 %tobool.i273.not, i32 -100, i32 -176
  %sub96 = add nsw i32 %cond95.neg, %conv92
  br label %cond.end118

cond.false99:                                     ; preds = %lor.lhs.false77
  br i1 %tobool.not, label %cond.false99.if.then_crit_edge, label %cond.true103

cond.false99.if.then_crit_edge:                   ; preds = %cond.false99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.true103:                                     ; preds = %cond.false99
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize105 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %sb_inodesize105 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sb_inodesize105, align 8
  %conv106 = zext i16 %29 to i32
  %and.i275 = and i64 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i275)
  %tobool.i276.not = icmp eq i64 %and.i275, 0
  %cond109.neg = select i1 %tobool.i276.not, i32 -100, i32 -176
  %conv112 = zext i8 %25 to i32
  %shl113.neg = mul nsw i32 %conv112, -8
  %sub110 = add nsw i32 %shl113.neg, %cond109.neg
  %sub114 = add nsw i32 %sub110, %conv106
  br label %cond.end118

cond.end118:                                      ; preds = %cond.true103, %cond.false89, %cond.true85
  %cond119 = phi i32 [ %shl88, %cond.true85 ], [ %sub96, %cond.false89 ], [ %sub114, %cond.true103 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add79, i32 %cond119)
  %cmp120 = icmp ugt i32 %add79, %cond119
  br i1 %cmp120, label %cond.end118.if.then_crit_edge, label %lor.rhs, !prof !90

cond.end118.if.then_crit_edge:                    ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.rhs:                                          ; preds = %cond.end118
  %conv123 = sext i32 %17 to i64
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 19
  %30 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_nblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv123)
  %cmp124 = icmp ult i64 %31, %conv123
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp129 = icmp eq i16 %15, 0
  %or.cond262 = select i1 %cmp124, i1 true, i1 %cmp129
  br i1 %or.cond262, label %lor.rhs.if.then_crit_edge, label %lor.lhs.false131, !prof !95

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false131:                                 ; preds = %lor.rhs
  %arrayidx = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 43, i32 %whichfork
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv23)
  %cmp132 = icmp ult i32 %33, %conv23
  br i1 %cmp132, label %lor.lhs.false131.if.then_crit_edge, label %if.end

lor.lhs.false131.if.then_crit_edge:               ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false131.if.then_crit_edge, %lor.rhs.if.then_crit_edge, %cond.end118.if.then_crit_edge, %cond.false99.if.then_crit_edge, %cond.end71.if.then_crit_edge
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %1, ptr noundef nonnull @.str.29, i64 noundef %35) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.30, ptr noundef %cond16, i32 noundef %add, ptr noundef blockaddress(@xfs_iformat_btree, %__here)) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false131
  %conv134 = trunc i32 %add to i16
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %cond5284, i32 0, i32 5
  %36 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv134, ptr %if_broot_bytes, align 8
  %call135 = tail call ptr @kmem_alloc(i32 noundef %add, i32 noundef 4) #9
  %if_broot = getelementptr inbounds %struct.xfs_ifork, ptr %cond5284, i32 0, i32 1
  %37 = ptrtoint ptr %if_broot to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call135, ptr %if_broot, align 8
  %cmp137.not = icmp eq ptr %call135, null
  br i1 %cmp137.not, label %cond.false146, label %if.end.cond.end147_crit_edge, !prof !90

if.end.cond.end147_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end147

cond.false146:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 206) #9
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false146, %if.end.cond.end147_crit_edge
  %di_forkoff151 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %38 = ptrtoint ptr %di_forkoff151 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %di_forkoff151, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool153.not = icmp eq i8 %39, 0
  br i1 %cmp, label %cond.true150, label %cond.false170

cond.true150:                                     ; preds = %cond.end147
  br i1 %tobool153.not, label %cond.false158, label %cond.true154

cond.true154:                                     ; preds = %cond.true150
  call void @__sanitizer_cov_trace_pc() #11
  %conv152 = zext i8 %39 to i32
  %shl157 = shl nuw nsw i32 %conv152, 3
  br label %cond.end191

cond.false158:                                    ; preds = %cond.true150
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ip, align 8
  %sb_inodesize161 = getelementptr inbounds %struct.xfs_sb, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %sb_inodesize161 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sb_inodesize161, align 8
  %conv162 = zext i16 %43 to i32
  %m_features.i277 = getelementptr inbounds %struct.xfs_mount, ptr %41, i32 0, i32 61
  %44 = ptrtoint ptr %m_features.i277 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i277, align 8
  %and.i278 = and i64 %45, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i278)
  %tobool.i279.not = icmp eq i64 %and.i278, 0
  %cond166.neg = select i1 %tobool.i279.not, i32 -100, i32 -176
  %sub167 = add nsw i32 %cond166.neg, %conv162
  br label %cond.end191

cond.false170:                                    ; preds = %cond.end147
  br i1 %tobool153.not, label %cond.false170.cond.end191_crit_edge, label %cond.true174

cond.false170.cond.end191_crit_edge:              ; preds = %cond.false170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end191

cond.true174:                                     ; preds = %cond.false170
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ip, align 8
  %sb_inodesize177 = getelementptr inbounds %struct.xfs_sb, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %sb_inodesize177 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sb_inodesize177, align 8
  %conv178 = zext i16 %49 to i32
  %m_features.i280 = getelementptr inbounds %struct.xfs_mount, ptr %47, i32 0, i32 61
  %50 = ptrtoint ptr %m_features.i280 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %m_features.i280, align 8
  %and.i281 = and i64 %51, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i281)
  %tobool.i282.not = icmp eq i64 %and.i281, 0
  %cond182.neg = select i1 %tobool.i282.not, i32 -100, i32 -176
  %conv185 = zext i8 %39 to i32
  %shl186.neg = mul nsw i32 %conv185, -8
  %sub183 = add nsw i32 %shl186.neg, %conv178
  %sub187 = add nsw i32 %sub183, %cond182.neg
  br label %cond.end191

cond.end191:                                      ; preds = %cond.true174, %cond.false170.cond.end191_crit_edge, %cond.false158, %cond.true154
  %cond192 = phi i32 [ %shl157, %cond.true154 ], [ %sub167, %cond.false158 ], [ %sub187, %cond.true174 ], [ 0, %cond.false170.cond.end191_crit_edge ]
  %52 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %if_broot, align 8
  tail call void @xfs_bmdr_to_bmbt(ptr noundef %ip, ptr noundef %cond16, i32 noundef %cond192, ptr noundef %53, i32 noundef %add) #9
  %54 = ptrtoint ptr %cond5284 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %cond5284, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %cond5284, i32 0, i32 4
  %55 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %if_u1, align 4
  %if_height = getelementptr inbounds %struct.xfs_ifork, ptr %cond5284, i32 0, i32 3
  %56 = ptrtoint ptr %if_height to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %if_height, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end191, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %cond.end191 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_verifier_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @xfs_ifork_alloc(i32 noundef %format, i32 noundef %nextents) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_ifork_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36160) #9
  %conv = trunc i32 %format to i8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %if_format, align 2
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %if_nextents to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nextents, ptr %if_nextents, align 4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iformat_attr_fork(ptr noundef %ip, ptr noundef %dip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %di_aformat = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 21
  %0 = ptrtoint ptr %di_aformat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %di_aformat, align 1
  %di_anextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 19
  %2 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %di_anextents, align 8
  %conv1 = zext i16 %3 to i32
  %4 = load ptr, ptr @xfs_ifork_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 36160) #9
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %if_format.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %1, ptr %if_format.i, align 2
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %call.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv1, ptr %if_nextents.i, align 4
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %7 = ptrtoint ptr %i_afp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %i_afp, align 8
  %conv3 = sext i8 %1 to i32
  %8 = zext i32 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %conv3, label %__here [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %di_version.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %9 = ptrtoint ptr %di_version.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %di_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 3
  %..i.i = select i1 %cmp.i.i, i32 176, i32 100
  %add.ptr.i = getelementptr i8, ptr %dip, i32 %..i.i
  %di_forkoff.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %11 = ptrtoint ptr %di_forkoff.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %di_forkoff.i, align 2
  %conv1.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 3
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %13 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr2.i, align 2
  %conv5 = zext i16 %14 to i32
  %call6 = tail call fastcc i32 @xfs_iformat_local(ptr noundef %ip, ptr noundef %dip, i32 noundef 1, i32 noundef %conv5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.then13_crit_edge

sw.bb.if.then13_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @xfs_ifork_verify_local_attr(ptr noundef %ip)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call fastcc i32 @xfs_iformat_extents(ptr noundef %ip, ptr noundef %dip, i32 noundef 1)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call fastcc i32 @xfs_iformat_btree(ptr noundef %ip, ptr noundef %dip, i32 noundef 1)
  br label %sw.epilog

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef 0, ptr noundef nonnull @__func__.xfs_iformat_attr_fork, ptr noundef %dip, i32 noundef 176, ptr noundef blockaddress(@xfs_iformat_attr_fork, %__here)) #9
  br label %if.then13

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %if.then
  %error.0 = phi i32 [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool12.not = icmp eq i32 %error.0, 0
  br i1 %tobool12.not, label %sw.epilog.if.end16_crit_edge, label %sw.epilog.if.then13_crit_edge

sw.epilog.if.then13_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %sw.epilog.if.then13_crit_edge, %__here, %sw.bb.if.then13_crit_edge
  %error.036 = phi i32 [ %error.0, %sw.epilog.if.then13_crit_edge ], [ %call6, %sw.bb.if.then13_crit_edge ], [ -117, %__here ]
  %15 = load ptr, ptr @xfs_ifork_cache, align 4
  %16 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_afp, align 8
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %17) #9
  %18 = ptrtoint ptr %i_afp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i_afp, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %sw.epilog.if.end16_crit_edge
  %error.037 = phi i32 [ %error.036, %if.then13 ], [ 0, %sw.epilog.if.end16_crit_edge ]
  ret i32 %error.037
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ifork_verify_local_attr(ptr noundef %ip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.end.thread, label %if.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  br label %cond.end7

if.end:                                           ; preds = %entry
  %call = tail call ptr @xfs_attr_shortform_verify(ptr noundef %ip) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %cond.true5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true5:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %if_u1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %extract.t = trunc i64 %5 to i32
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true5, %cond.end.thread
  %cond26 = phi ptr [ %3, %cond.true5 ], [ null, %cond.end.thread ]
  %fa.0202225 = phi ptr [ %call, %cond.true5 ], [ blockaddress(@xfs_ifork_verify_local_attr, %cond.end.thread), %cond.end.thread ]
  %cond8.off0 = phi i32 [ %extract.t, %cond.true5 ], [ 0, %cond.end.thread ]
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.19, ptr noundef %cond26, i32 noundef %cond8.off0, ptr noundef nonnull %fa.0202225) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %cond.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iroot_realloc(ptr nocapture noundef %ip, i32 noundef %rec_diff, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec_diff)
  %cmp = icmp eq i32 %rec_diff, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp1 = icmp eq i32 %whichfork, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end5

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp2 = icmp eq i32 %whichfork, 1
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  br label %cond.end5

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %4 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3, %cond.true
  %cond6 = phi ptr [ %i_df, %cond.true ], [ %3, %cond.true3 ], [ %5, %cond.false4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec_diff)
  %cmp7 = icmp sgt i32 %rec_diff, 0
  br i1 %cmp7, label %if.then8, label %if.end110

if.then8:                                         ; preds = %cond.end5
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %cond6, i32 0, i32 5
  %6 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %if_broot_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp9 = icmp eq i16 %7, 0
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond13 = select i1 %tobool.i.not, i32 24, i32 72
  %mul = shl i32 %rec_diff, 4
  %add = add i32 %cond13, %mul
  %call14 = tail call ptr @kmem_alloc(i32 noundef %add, i32 noundef 4) #9
  %if_broot = getelementptr inbounds %struct.xfs_ifork, ptr %cond6, i32 0, i32 1
  %10 = ptrtoint ptr %if_broot to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %if_broot, align 8
  %conv15 = trunc i32 %add to i16
  %11 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv15, ptr %if_broot_bytes, align 8
  br label %cleanup

if.end17:                                         ; preds = %if.then8
  %conv = sext i16 %7 to i32
  %call20 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #9
  %add21 = add i32 %call20, %rec_diff
  %m_features.i370 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i370 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i370, align 8
  %and.i371 = and i64 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i371)
  %tobool.i372.not = icmp eq i64 %and.i371, 0
  %cond24 = select i1 %tobool.i372.not, i32 24, i32 72
  %mul25 = shl i32 %add21, 4
  %add26 = add i32 %cond24, %mul25
  %if_broot27 = getelementptr inbounds %struct.xfs_ifork, ptr %cond6, i32 0, i32 1
  %14 = ptrtoint ptr %if_broot27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_broot27, align 8
  %call28 = tail call noalias ptr @krealloc(ptr noundef %15, i32 noundef %add26, i32 noundef 35904) #12
  %16 = ptrtoint ptr %if_broot27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %if_broot27, align 8
  %17 = ptrtoint ptr %m_features.i370 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_features.i370, align 8
  %and.i374 = and i64 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i374)
  %tobool.i375.not = icmp eq i64 %and.i374, 0
  %cond33 = select i1 %tobool.i375.not, i32 24, i32 72
  %add.ptr = getelementptr i8, ptr %call28, i32 %cond33
  %19 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %if_broot_bytes, align 8
  %conv35 = sext i16 %20 to i32
  %call36 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %1, i32 noundef %conv35, i32 noundef 0) #9
  %mul37 = shl i32 %call36, 3
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %mul37
  %21 = ptrtoint ptr %if_broot27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %if_broot27, align 8
  %23 = ptrtoint ptr %m_features.i370 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i370, align 8
  %and.i377 = and i64 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i377)
  %tobool.i378.not = icmp eq i64 %and.i377, 0
  %cond43 = select i1 %tobool.i378.not, i32 24, i32 72
  %add.ptr44 = getelementptr i8, ptr %22, i32 %cond43
  %call45 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %1, i32 noundef %add26, i32 noundef 0) #9
  %mul46 = shl i32 %call45, 3
  %add.ptr47 = getelementptr i8, ptr %add.ptr44, i32 %mul46
  %conv49 = trunc i32 %add26 to i16
  %25 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv49, ptr %if_broot_bytes, align 8
  %26 = ptrtoint ptr %if_broot27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %if_broot27, align 8
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bb_numrecs, align 2
  %conv52 = zext i16 %29 to i32
  %mul53 = shl nuw nsw i32 %conv52, 4
  %add54 = or i32 %mul53, 4
  br i1 %cmp1, label %cond.true57, label %cond.false73

cond.true57:                                      ; preds = %if.end17
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %30 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp59.not = icmp eq i8 %31, 0
  br i1 %cmp59.not, label %cond.false64, label %cond.true61

cond.true61:                                      ; preds = %cond.true57
  call void @__sanitizer_cov_trace_pc() #11
  %conv58 = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv58, 3
  br label %cond.end101

cond.false64:                                     ; preds = %cond.true57
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ip, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sb_inodesize, align 8
  %conv66 = zext i16 %35 to i32
  %m_features.i379 = getelementptr inbounds %struct.xfs_mount, ptr %33, i32 0, i32 61
  %36 = ptrtoint ptr %m_features.i379 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_features.i379, align 8
  %and.i380 = and i64 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i380)
  %tobool.i381.not = icmp eq i64 %and.i380, 0
  %cond70.neg = select i1 %tobool.i381.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond70.neg, %conv66
  br label %cond.end101

cond.false73:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp74 = icmp eq i32 %whichfork, 1
  br i1 %cmp74, label %cond.true76, label %cond.false73.cond.false107_crit_edge

cond.false73.cond.false107_crit_edge:             ; preds = %cond.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false107

cond.true76:                                      ; preds = %cond.false73
  %i_forkoff77 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %38 = ptrtoint ptr %i_forkoff77 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i_forkoff77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp79.not = icmp eq i8 %39, 0
  br i1 %cmp79.not, label %cond.true76.cond.false107_crit_edge, label %cond.true81

cond.true76.cond.false107_crit_edge:              ; preds = %cond.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false107

cond.true81:                                      ; preds = %cond.true76
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ip, align 8
  %sb_inodesize84 = getelementptr inbounds %struct.xfs_sb, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %sb_inodesize84 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sb_inodesize84, align 8
  %conv85 = zext i16 %43 to i32
  %m_features.i382 = getelementptr inbounds %struct.xfs_mount, ptr %41, i32 0, i32 61
  %44 = ptrtoint ptr %m_features.i382 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i382, align 8
  %and.i383 = and i64 %45, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i383)
  %tobool.i384.not = icmp eq i64 %and.i383, 0
  %cond89.neg = select i1 %tobool.i384.not, i32 -100, i32 -176
  %conv92 = zext i8 %39 to i32
  %shl93.neg = mul nsw i32 %conv92, -8
  %sub90 = add nsw i32 %shl93.neg, %conv85
  %sub94 = add nsw i32 %sub90, %cond89.neg
  br label %cond.end101

cond.end101:                                      ; preds = %cond.true81, %cond.false64, %cond.true61
  %cond102 = phi i32 [ %shl, %cond.true61 ], [ %sub, %cond.false64 ], [ %sub94, %cond.true81 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %cond102)
  %cmp103.not = icmp ugt i32 %add54, %cond102
  br i1 %cmp103.not, label %cond.end101.cond.false107_crit_edge, label %cond.end101.cond.end108_crit_edge, !prof !90

cond.end101.cond.end108_crit_edge:                ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end108

cond.end101.cond.false107_crit_edge:              ; preds = %cond.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false107

cond.false107:                                    ; preds = %cond.end101.cond.false107_crit_edge, %cond.true76.cond.false107_crit_edge, %cond.false73.cond.false107_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 404) #9
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false107, %cond.end101.cond.end108_crit_edge
  %mul109 = shl i32 %call20, 3
  %46 = call ptr @memmove(ptr %add.ptr47, ptr %add.ptr38, i32 %mul109)
  br label %cleanup

if.end110:                                        ; preds = %cond.end5
  %if_broot111 = getelementptr inbounds %struct.xfs_ifork, ptr %cond6, i32 0, i32 1
  %47 = ptrtoint ptr %if_broot111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %if_broot111, align 8
  %cmp112.not = icmp eq ptr %48, null
  br i1 %cmp112.not, label %if.end110.cond.false125_crit_edge, label %land.rhs, !prof !90

if.end110.cond.false125_crit_edge:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false125

land.rhs:                                         ; preds = %if.end110
  %if_broot_bytes114 = getelementptr inbounds %struct.xfs_ifork, ptr %cond6, i32 0, i32 5
  %49 = ptrtoint ptr %if_broot_bytes114 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %if_broot_bytes114, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp116 = icmp sgt i16 %50, 0
  br i1 %cmp116, label %land.rhs.cond.end126_crit_edge, label %land.rhs.cond.false125_crit_edge, !prof !99

land.rhs.cond.false125_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false125

land.rhs.cond.end126_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end126

cond.false125:                                    ; preds = %land.rhs.cond.false125_crit_edge, %if.end110.cond.false125_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 414) #9
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false125, %land.rhs.cond.end126_crit_edge
  %if_broot_bytes127 = getelementptr inbounds %struct.xfs_ifork, ptr %cond6, i32 0, i32 5
  %51 = ptrtoint ptr %if_broot_bytes127 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %if_broot_bytes127, align 8
  %conv128 = sext i16 %52 to i32
  %call129 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %1, i32 noundef %conv128, i32 noundef 0) #9
  %add130 = add i32 %call129, %rec_diff
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add130)
  %cmp131 = icmp sgt i32 %add130, -1
  br i1 %cmp131, label %cond.end141, label %if.end161, !prof !99

cond.end141:                                      ; preds = %cond.end126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add130)
  %cmp142.not = icmp eq i32 %add130, 0
  br i1 %cmp142.not, label %cond.end141.if.end197_crit_edge, label %if.end150

cond.end141.if.end197_crit_edge:                  ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end197

if.end150:                                        ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #11
  %m_features.i385 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %53 = ptrtoint ptr %m_features.i385 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m_features.i385, align 8
  %and.i386 = and i64 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i386)
  %tobool.i387.not = icmp eq i64 %and.i386, 0
  %cond147 = select i1 %tobool.i387.not, i32 24, i32 72
  %mul148 = shl i32 %add130, 4
  %add149 = add i32 %cond147, %mul148
  %call154 = tail call ptr @kmem_alloc(i32 noundef %add149, i32 noundef 4) #9
  %55 = ptrtoint ptr %if_broot111 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %if_broot111, align 8
  %57 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ip, align 8
  %m_features.i388 = getelementptr inbounds %struct.xfs_mount, ptr %58, i32 0, i32 61
  %59 = ptrtoint ptr %m_features.i388 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %m_features.i388, align 8
  %and.i389 = and i64 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i389)
  %tobool.i390.not = icmp eq i64 %and.i389, 0
  %cond159 = select i1 %tobool.i390.not, i32 24, i32 72
  %61 = call ptr @memcpy(ptr %call154, ptr %56, i32 %cond159)
  %62 = ptrtoint ptr %if_broot111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %if_broot111, align 8
  %64 = ptrtoint ptr %m_features.i385 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %m_features.i385, align 8
  %and.i392 = and i64 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i392)
  %tobool.i393.not = icmp eq i64 %and.i392, 0
  %cond168 = select i1 %tobool.i393.not, i32 24, i32 72
  %add.ptr169 = getelementptr i8, ptr %63, i32 %cond168
  %add.ptr174 = getelementptr i8, ptr %call154, i32 %cond168
  %66 = call ptr @memcpy(ptr %add.ptr174, ptr %add.ptr169, i32 %mul148)
  %67 = ptrtoint ptr %if_broot111 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %if_broot111, align 8
  %69 = ptrtoint ptr %m_features.i385 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %m_features.i385, align 8
  %and.i398 = and i64 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i398)
  %tobool.i399.not = icmp eq i64 %and.i398, 0
  %cond180 = select i1 %tobool.i399.not, i32 24, i32 72
  %add.ptr181 = getelementptr i8, ptr %68, i32 %cond180
  %71 = ptrtoint ptr %if_broot_bytes127 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %if_broot_bytes127, align 8
  %conv183 = sext i16 %72 to i32
  %call184 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %1, i32 noundef %conv183, i32 noundef 0) #9
  %mul185 = shl i32 %call184, 3
  %add.ptr186 = getelementptr i8, ptr %add.ptr181, i32 %mul185
  %73 = ptrtoint ptr %m_features.i385 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %m_features.i385, align 8
  %and.i401 = and i64 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i401)
  %tobool.i402.not = icmp eq i64 %and.i401, 0
  %cond190 = select i1 %tobool.i402.not, i32 24, i32 72
  %add.ptr191 = getelementptr i8, ptr %call154, i32 %cond190
  %call192 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %1, i32 noundef %add149, i32 noundef 0) #9
  %mul193 = shl i32 %call192, 3
  %add.ptr194 = getelementptr i8, ptr %add.ptr191, i32 %mul193
  %mul196 = shl i32 %add130, 3
  %75 = call ptr @memcpy(ptr %add.ptr194, ptr %add.ptr186, i32 %mul196)
  %phi.cast = trunc i32 %add149 to i16
  br label %if.end197

if.end161:                                        ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 417) #9
  br label %if.end197

if.end197:                                        ; preds = %if.end161, %if.end150, %cond.end141.if.end197_crit_edge
  %new_broot.0424 = phi ptr [ %call154, %if.end150 ], [ null, %if.end161 ], [ null, %cond.end141.if.end197_crit_edge ]
  %new_size.0418 = phi i16 [ %phi.cast, %if.end150 ], [ 0, %if.end161 ], [ 0, %cond.end141.if.end197_crit_edge ]
  %76 = ptrtoint ptr %if_broot111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %if_broot111, align 8
  tail call void @kvfree(ptr noundef %77) #9
  %78 = ptrtoint ptr %if_broot111 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %new_broot.0424, ptr %if_broot111, align 8
  %79 = ptrtoint ptr %if_broot_bytes127 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %new_size.0418, ptr %if_broot_bytes127, align 8
  %tobool203.not = icmp eq ptr %new_broot.0424, null
  br i1 %tobool203.not, label %if.end197.cleanup_crit_edge, label %if.then204

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then204:                                       ; preds = %if.end197
  %bb_numrecs206 = getelementptr inbounds %struct.xfs_btree_block, ptr %new_broot.0424, i32 0, i32 2
  %80 = ptrtoint ptr %bb_numrecs206 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %bb_numrecs206, align 2
  %conv207 = zext i16 %81 to i32
  %mul208 = shl nuw nsw i32 %conv207, 4
  %add209 = or i32 %mul208, 4
  br i1 %cmp1, label %cond.true212, label %cond.false233

cond.true212:                                     ; preds = %if.then204
  %i_forkoff213 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %82 = ptrtoint ptr %i_forkoff213 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %i_forkoff213, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp215.not = icmp eq i8 %83, 0
  br i1 %cmp215.not, label %cond.false221, label %cond.true217

cond.true217:                                     ; preds = %cond.true212
  call void @__sanitizer_cov_trace_pc() #11
  %conv214 = zext i8 %83 to i32
  %shl220 = shl nuw nsw i32 %conv214, 3
  br label %cond.end261

cond.false221:                                    ; preds = %cond.true212
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ip, align 8
  %sb_inodesize224 = getelementptr inbounds %struct.xfs_sb, ptr %85, i32 0, i32 17
  %86 = ptrtoint ptr %sb_inodesize224 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %sb_inodesize224, align 8
  %conv225 = zext i16 %87 to i32
  %m_features.i403 = getelementptr inbounds %struct.xfs_mount, ptr %85, i32 0, i32 61
  %88 = ptrtoint ptr %m_features.i403 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %m_features.i403, align 8
  %and.i404 = and i64 %89, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i404)
  %tobool.i405.not = icmp eq i64 %and.i404, 0
  %cond229.neg = select i1 %tobool.i405.not, i32 -100, i32 -176
  %sub230 = add nsw i32 %cond229.neg, %conv225
  br label %cond.end261

cond.false233:                                    ; preds = %if.then204
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp234 = icmp eq i32 %whichfork, 1
  br i1 %cmp234, label %cond.true236, label %cond.false233.cond.false272_crit_edge

cond.false233.cond.false272_crit_edge:            ; preds = %cond.false233
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false272

cond.true236:                                     ; preds = %cond.false233
  %i_forkoff237 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %90 = ptrtoint ptr %i_forkoff237 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i_forkoff237, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp239.not = icmp eq i8 %91, 0
  br i1 %cmp239.not, label %cond.true236.cond.false272_crit_edge, label %cond.true241

cond.true236.cond.false272_crit_edge:             ; preds = %cond.true236
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false272

cond.true241:                                     ; preds = %cond.true236
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ip, align 8
  %sb_inodesize244 = getelementptr inbounds %struct.xfs_sb, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %sb_inodesize244 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %sb_inodesize244, align 8
  %conv245 = zext i16 %95 to i32
  %m_features.i406 = getelementptr inbounds %struct.xfs_mount, ptr %93, i32 0, i32 61
  %96 = ptrtoint ptr %m_features.i406 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %m_features.i406, align 8
  %and.i407 = and i64 %97, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i407)
  %tobool.i408.not = icmp eq i64 %and.i407, 0
  %cond249.neg = select i1 %tobool.i408.not, i32 -100, i32 -176
  %conv252 = zext i8 %91 to i32
  %shl253.neg = mul nsw i32 %conv252, -8
  %sub250 = add nsw i32 %shl253.neg, %conv245
  %sub254 = add nsw i32 %sub250, %cond249.neg
  br label %cond.end261

cond.end261:                                      ; preds = %cond.true241, %cond.false221, %cond.true217
  %cond262 = phi i32 [ %shl220, %cond.true217 ], [ %sub230, %cond.false221 ], [ %sub254, %cond.true241 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add209, i32 %cond262)
  %cmp263.not = icmp ugt i32 %add209, %cond262
  br i1 %cmp263.not, label %cond.end261.cond.false272_crit_edge, label %cond.end261.cleanup_crit_edge, !prof !90

cond.end261.cleanup_crit_edge:                    ; preds = %cond.end261
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end261.cond.false272_crit_edge:              ; preds = %cond.end261
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false272

cond.false272:                                    ; preds = %cond.end261.cond.false272_crit_edge, %cond.true236.cond.false272_crit_edge, %cond.false233.cond.false272_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 458) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false272, %cond.end261.cleanup_crit_edge, %if.end197.cleanup_crit_edge, %cond.end108, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmbt_maxrecs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_idata_realloc(ptr nocapture noundef %ip, i64 noundef %byte_diff, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp1 = icmp eq i32 %whichfork, 1
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %2 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2, %cond.true
  %cond5 = phi ptr [ %i_df, %cond.true ], [ %1, %cond.true2 ], [ %3, %cond.false3 ]
  %4 = ptrtoint ptr %cond5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cond5, align 8
  %add = add i64 %5, %byte_diff
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add)
  %cmp6 = icmp sgt i64 %add, -1
  br i1 %cmp6, label %cond.end4.cond.end10_crit_edge, label %cond.false9, !prof !99

cond.end4.cond.end10_crit_edge:                   ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 487) #9
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.end4.cond.end10_crit_edge
  br i1 %cmp, label %cond.true12, label %cond.false25

cond.true12:                                      ; preds = %cond.end10
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %6 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp13.not = icmp eq i8 %7, 0
  br i1 %cmp13.not, label %cond.false18, label %cond.true15

cond.true15:                                      ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 3
  br label %cond.end53

cond.false18:                                     ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sb_inodesize, align 8
  %conv19 = zext i16 %11 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 61
  %12 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond22.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond22.neg, %conv19
  br label %cond.end53

cond.false25:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp26 = icmp eq i32 %whichfork, 1
  br i1 %cmp26, label %cond.true28, label %cond.false25.cond.end53_crit_edge

cond.false25.cond.end53_crit_edge:                ; preds = %cond.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end53

cond.true28:                                      ; preds = %cond.false25
  %i_forkoff29 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %14 = ptrtoint ptr %i_forkoff29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i_forkoff29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp31.not = icmp eq i8 %15, 0
  br i1 %cmp31.not, label %cond.true28.cond.end53_crit_edge, label %cond.true33

cond.true28.cond.end53_crit_edge:                 ; preds = %cond.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end53

cond.true33:                                      ; preds = %cond.true28
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 8
  %sb_inodesize36 = getelementptr inbounds %struct.xfs_sb, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %sb_inodesize36 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sb_inodesize36, align 8
  %conv37 = zext i16 %19 to i32
  %m_features.i112 = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i112 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i112, align 8
  %and.i113 = and i64 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i113)
  %tobool.i114.not = icmp eq i64 %and.i113, 0
  %cond41.neg = select i1 %tobool.i114.not, i32 -100, i32 -176
  %conv44 = zext i8 %15 to i32
  %shl45.neg = mul nsw i32 %conv44, -8
  %sub42 = add nsw i32 %shl45.neg, %conv37
  %sub46 = add nsw i32 %sub42, %cond41.neg
  br label %cond.end53

cond.end53:                                       ; preds = %cond.true33, %cond.true28.cond.end53_crit_edge, %cond.false25.cond.end53_crit_edge, %cond.false18, %cond.true15
  %cond54 = phi i32 [ %shl, %cond.true15 ], [ %sub, %cond.false18 ], [ %sub46, %cond.true33 ], [ 0, %cond.true28.cond.end53_crit_edge ], [ 0, %cond.false25.cond.end53_crit_edge ]
  %conv55 = zext i32 %cond54 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv55)
  %cmp56.not = icmp sgt i64 %add, %conv55
  br i1 %cmp56.not, label %cond.false65, label %cond.end53.cond.end66_crit_edge, !prof !90

cond.end53.cond.end66_crit_edge:                  ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 488) #9
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.end53.cond.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %byte_diff)
  %cmp67 = icmp eq i64 %byte_diff, 0
  br i1 %cmp67, label %cond.end66.cleanup_crit_edge, label %if.end

cond.end66.cleanup_crit_edge:                     ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end66
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp69 = icmp eq i64 %add, 0
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %cond5, i32 0, i32 4
  %22 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %if_u1, align 4
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree(ptr noundef %23) #9
  br label %cleanup.sink.split

if.end74:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add78 = add i64 %add, 3
  %div = sdiv i64 %add78, 4
  %div.tr = trunc i64 %div to i32
  %conv81 = shl i32 %div.tr, 2
  %call82 = tail call noalias ptr @krealloc(ptr noundef %23, i32 noundef %conv81, i32 noundef 35904) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end74, %if.then71
  %call82.sink = phi ptr [ %call82, %if.end74 ], [ null, %if.then71 ]
  %add.sink = phi i64 [ %add, %if.end74 ], [ 0, %if.then71 ]
  %24 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call82.sink, ptr %if_u1, align 4
  %25 = ptrtoint ptr %cond5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.sink, ptr %cond5, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end66.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_idestroy_fork(ptr noundef %ifp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %if_broot = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 1
  %0 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_broot, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %if_broot to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %if_broot, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 6
  %3 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %if_format, align 2
  %conv = sext i8 %4 to i32
  %5 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %conv, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 3, label %if.end.sw.bb4_crit_edge14
  ]

if.end.sw.bb4_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 4
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_u1, align 4
  tail call void @kvfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %if_u1, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge14
  %if_height = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %9 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then5

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_iext_destroy(ptr noundef %ifp) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then5, %sw.bb4.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iextents_copy(ptr noundef %ip, ptr noundef %dp, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %rec = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %switch.selectcmp.i = icmp eq i32 %whichfork, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 512, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %switch.selectcmp2.i = icmp eq i32 %whichfork, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 256, i32 %switch.select.i
  %0 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %whichfork, label %cond.false3 [
    i32 0, label %cond.true
    i32 1, label %cond.true2
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %1 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_afp, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %3 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2, %cond.true
  %cond5 = phi ptr [ %i_df, %cond.true ], [ %2, %cond.true2 ], [ %4, %cond.false3 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #9
  %5 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !92
  %6 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rec) #9
  %8 = call ptr @memset(ptr %rec, i32 255, i32 32)
  %call6 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 12) #9
  br i1 %call6, label %cond.end4.cond.end10_crit_edge, label %cond.false9, !prof !99

cond.end4.cond.end10_crit_edge:                   ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 553) #9
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.end4.cond.end10_crit_edge
  %9 = ptrtoint ptr %cond5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cond5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp11 = icmp sgt i64 %10, 0
  br i1 %cmp11, label %cond.end10.cond.end20_crit_edge, label %cond.false19, !prof !99

cond.end10.cond.end20_crit_edge:                  ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 554) #9
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.end10.cond.end20_crit_edge
  call void @xfs_iext_first(ptr noundef %cond5, ptr noundef nonnull %icur) #9
  %call2172 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond5, ptr noundef nonnull %icur, ptr noundef nonnull %rec) #9
  br i1 %call2172, label %for.body.lr.ph, label %cond.end20.cond.false43_crit_edge

cond.end20.cond.false43_crit_edge:                ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false43

for.body.lr.ph:                                   ; preds = %cond.end20
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %rec, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %copied.074 = phi i64 [ 0, %for.body.lr.ph ], [ %copied.1, %for.inc.for.body_crit_edge ]
  %dp.addr.073 = phi ptr [ %dp, %for.body.lr.ph ], [ %dp.addr.1, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %12, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call24 = call ptr @xfs_bmap_validate_extent(ptr noundef %ip, i32 noundef %whichfork, ptr noundef nonnull %rec) #9
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.end.cond.end34_crit_edge, label %cond.false33, !prof !99

if.end.cond.end34_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end34

cond.false33:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 559) #9
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %if.end.cond.end34_crit_edge
  call void @xfs_bmbt_disk_set_all(ptr noundef %dp.addr.073, ptr noundef nonnull %rec) #9
  %13 = call ptr @llvm.returnaddress(i32 0)
  %14 = ptrtoint ptr %13 to i32
  call fastcc void @trace_xfs_write_extent(ptr noundef %ip, ptr noundef nonnull %icur, i32 noundef %switch.select3.i, i32 noundef %14)
  %add = add i64 %copied.074, 16
  %incdec.ptr = getelementptr %struct.xfs_bmbt_rec, ptr %dp.addr.073, i32 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end34, %for.body.for.inc_crit_edge
  %dp.addr.1 = phi ptr [ %dp.addr.073, %for.body.for.inc_crit_edge ], [ %incdec.ptr, %cond.end34 ]
  %copied.1 = phi i64 [ %copied.074, %for.body.for.inc_crit_edge ], [ %add, %cond.end34 ]
  call void @xfs_iext_next(ptr noundef %cond5, ptr noundef nonnull %icur) #9
  %call21 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond5, ptr noundef nonnull %icur, ptr noundef nonnull %rec) #9
  br i1 %call21, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %copied.1)
  %cmp35 = icmp sgt i64 %copied.1, 0
  br i1 %cmp35, label %for.end.cond.end44_crit_edge, label %for.end.cond.false43_crit_edge, !prof !99

for.end.cond.false43_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false43

for.end.cond.end44_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end44

cond.false43:                                     ; preds = %for.end.cond.false43_crit_edge, %cond.end20.cond.false43_crit_edge
  %copied.0.lcssa77 = phi i64 [ %copied.1, %for.end.cond.false43_crit_edge ], [ 0, %cond.end20.cond.false43_crit_edge ]
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 566) #9
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %for.end.cond.end44_crit_edge
  %copied.0.lcssa78 = phi i64 [ %copied.1, %for.end.cond.end44_crit_edge ], [ %copied.0.lcssa77, %cond.false43 ]
  %15 = ptrtoint ptr %cond5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cond5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %copied.0.lcssa78, i64 %16)
  %cmp46.not = icmp sgt i64 %copied.0.lcssa78, %16
  br i1 %cmp46.not, label %cond.false54, label %cond.end44.cond.end55_crit_edge, !prof !90

cond.end44.cond.end55_crit_edge:                  ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 567) #9
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.end44.cond.end55_crit_edge
  %conv = trunc i64 %copied.0.lcssa78 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rec) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #9
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_bmap_validate_extent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmbt_disk_set_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_write_extent(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_write_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_write_extent, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %call42 = tail call i32 @__traceiter_xfs_write_extent(ptr noundef null, ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_write_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_write_extent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_write_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_write_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 407, ptr noundef nonnull @.str.27) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iflush_fork(ptr noundef %ip, ptr noundef %dip, ptr noundef readonly %iip, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iip, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.end4.thread, label %cond.false

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp1 = icmp eq i32 %whichfork, 1
  br i1 %cmp1, label %cond.end4.thread374, label %cond.end4

cond.end4:                                        ; preds = %cond.false
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %0 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_cowfp, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %cond.end4.cond.false12_crit_edge, label %cond.end4.cond.false17_crit_edge

cond.end4.cond.false17_crit_edge:                 ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false17

cond.end4.cond.false12_crit_edge:                 ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false12

cond.end4.thread374:                              ; preds = %cond.false
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %tobool6.not376 = icmp eq ptr %3, null
  br i1 %tobool6.not376, label %cond.end4.thread374.cleanup_crit_edge, label %cond.end4.thread374.cond.false17_crit_edge

cond.end4.thread374.cond.false17_crit_edge:       ; preds = %cond.end4.thread374
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false17

cond.end4.thread374.cleanup_crit_edge:            ; preds = %cond.end4.thread374
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end4.thread:                                 ; preds = %if.end
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %tobool6.not371 = icmp eq ptr %i_df, null
  br i1 %tobool6.not371, label %cond.end4.thread.cond.false12_crit_edge, label %cond.true16

cond.end4.thread.cond.false12_crit_edge:          ; preds = %cond.end4.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false12

cond.false12:                                     ; preds = %cond.end4.thread.cond.false12_crit_edge, %cond.end4.cond.false12_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 606) #9
  br label %cleanup

cond.true16:                                      ; preds = %cond.end4.thread
  call void @__sanitizer_cov_trace_pc() #11
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %4 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i = icmp eq i8 %5, 3
  %..i = select i1 %cmp.i, i32 176, i32 100
  %add.ptr = getelementptr i8, ptr %dip, i32 %..i
  br label %cond.end24

cond.false17:                                     ; preds = %cond.end4.thread374.cond.false17_crit_edge, %cond.end4.cond.false17_crit_edge
  %cond5372.ph = phi ptr [ %3, %cond.end4.thread374.cond.false17_crit_edge ], [ %1, %cond.end4.cond.false17_crit_edge ]
  %di_version18 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %6 = ptrtoint ptr %di_version18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %di_version18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i353 = icmp eq i8 %7, 3
  %..i354 = select i1 %cmp.i353, i32 176, i32 100
  %add.ptr21 = getelementptr i8, ptr %dip, i32 %..i354
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %8 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %di_forkoff, align 2
  %conv22 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv22, 3
  %add.ptr23 = getelementptr i8, ptr %add.ptr21, i32 %shl
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false17, %cond.true16
  %cond5372380 = phi ptr [ %i_df, %cond.true16 ], [ %cond5372.ph, %cond.false17 ]
  %cond25 = phi ptr [ %add.ptr, %cond.true16 ], [ %add.ptr23, %cond.false17 ]
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %cond5372380, i32 0, i32 6
  %12 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %if_format, align 2
  %conv26 = sext i8 %13 to i32
  %14 = zext i32 %conv26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %conv26, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb109
    i32 3, label %sw.bb133
    i32 0, label %sw.bb266
  ]

sw.bb:                                            ; preds = %cond.end24
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %15 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ili_fields, align 8
  %arrayidx = getelementptr [2 x i16], ptr @xfs_iflush_fork.dataflag, i32 0, i32 %whichfork
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %conv27 = sext i16 %18 to i32
  %and = and i32 %16, %conv27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %sw.bb.cleanup_crit_edge, label %land.lhs.true

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %19 = ptrtoint ptr %cond5372380 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cond5372380, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp29 = icmp sgt i64 %20, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %cond5372380, i32 0, i32 4
  %21 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %if_u1, align 4
  %cmp32.not = icmp eq ptr %22, null
  br i1 %cmp32.not, label %cond.false41, label %if.then31.cond.end42_crit_edge, !prof !90

if.then31.cond.end42_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end42

cond.false41:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 615) #9
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %if.then31.cond.end42_crit_edge
  %23 = ptrtoint ptr %cond5372380 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cond5372380, align 8
  br i1 %cmp, label %cond.true46, label %cond.false63

cond.true46:                                      ; preds = %cond.end42
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %25 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp48.not = icmp eq i8 %26, 0
  br i1 %cmp48.not, label %cond.false54, label %cond.true50

cond.true50:                                      ; preds = %cond.true46
  call void @__sanitizer_cov_trace_pc() #11
  %conv47 = zext i8 %26 to i32
  %shl53 = shl nuw nsw i32 %conv47, 3
  br label %cond.end91

cond.false54:                                     ; preds = %cond.true46
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ip, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sb_inodesize, align 8
  %conv56 = zext i16 %30 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %28, i32 0, i32 61
  %31 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond60.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond60.neg, %conv56
  br label %cond.end91

cond.false63:                                     ; preds = %cond.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp64 = icmp eq i32 %whichfork, 1
  br i1 %cmp64, label %cond.true66, label %cond.false63.cond.end91_crit_edge

cond.false63.cond.end91_crit_edge:                ; preds = %cond.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end91

cond.true66:                                      ; preds = %cond.false63
  %i_forkoff67 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %33 = ptrtoint ptr %i_forkoff67 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i_forkoff67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp69.not = icmp eq i8 %34, 0
  br i1 %cmp69.not, label %cond.true66.cond.end91_crit_edge, label %cond.true71

cond.true66.cond.end91_crit_edge:                 ; preds = %cond.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end91

cond.true71:                                      ; preds = %cond.true66
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ip, align 8
  %sb_inodesize74 = getelementptr inbounds %struct.xfs_sb, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %sb_inodesize74 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sb_inodesize74, align 8
  %conv75 = zext i16 %38 to i32
  %m_features.i355 = getelementptr inbounds %struct.xfs_mount, ptr %36, i32 0, i32 61
  %39 = ptrtoint ptr %m_features.i355 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %m_features.i355, align 8
  %and.i356 = and i64 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i356)
  %tobool.i357.not = icmp eq i64 %and.i356, 0
  %cond79.neg = select i1 %tobool.i357.not, i32 -100, i32 -176
  %conv82 = zext i8 %34 to i32
  %shl83.neg = mul nsw i32 %conv82, -8
  %sub80 = add nsw i32 %shl83.neg, %conv75
  %sub84 = add nsw i32 %sub80, %cond79.neg
  br label %cond.end91

cond.end91:                                       ; preds = %cond.true71, %cond.true66.cond.end91_crit_edge, %cond.false63.cond.end91_crit_edge, %cond.false54, %cond.true50
  %cond92 = phi i32 [ %shl53, %cond.true50 ], [ %sub, %cond.false54 ], [ %sub84, %cond.true71 ], [ 0, %cond.true66.cond.end91_crit_edge ], [ 0, %cond.false63.cond.end91_crit_edge ]
  %conv93 = zext i32 %cond92 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv93)
  %cmp94.not = icmp sgt i64 %24, %conv93
  br i1 %cmp94.not, label %cond.false103, label %cond.end91.cond.end104_crit_edge, !prof !90

cond.end91.cond.end104_crit_edge:                 ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end104

cond.false103:                                    ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 616) #9
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false103, %cond.end91.cond.end104_crit_edge
  %41 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %if_u1, align 4
  %43 = ptrtoint ptr %cond5372380 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %cond5372380, align 8
  %conv107 = trunc i64 %44 to i32
  %45 = call ptr @memcpy(ptr %cond25, ptr %42, i32 %conv107)
  br label %cleanup

sw.bb109:                                         ; preds = %cond.end24
  %ili_fields110 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %46 = ptrtoint ptr %ili_fields110 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ili_fields110, align 8
  %arrayidx111 = getelementptr [2 x i16], ptr @xfs_iflush_fork.extflag, i32 0, i32 %whichfork
  %48 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx111, align 2
  %conv112 = sext i16 %49 to i32
  %and113 = and i32 %47, %conv112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %sw.bb109.cleanup_crit_edge, label %land.lhs.true115

sw.bb109.cleanup_crit_edge:                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true115:                                 ; preds = %sw.bb109
  %50 = ptrtoint ptr %cond5372380 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cond5372380, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %cmp117 = icmp sgt i64 %51, 0
  br i1 %cmp117, label %if.then119, label %land.lhs.true115.cleanup_crit_edge

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then119:                                       ; preds = %land.lhs.true115
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %cond5372380, i32 0, i32 7
  %52 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp120 = icmp sgt i32 %53, 0
  br i1 %cmp120, label %if.then119.cond.end130_crit_edge, label %cond.false129, !prof !99

if.then119.cond.end130_crit_edge:                 ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end130

cond.false129:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 624) #9
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false129, %if.then119.cond.end130_crit_edge
  %call131 = tail call i32 @xfs_iextents_copy(ptr noundef %ip, ptr noundef %cond25, i32 noundef %whichfork)
  br label %cleanup

sw.bb133:                                         ; preds = %cond.end24
  %ili_fields134 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %54 = ptrtoint ptr %ili_fields134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ili_fields134, align 8
  %arrayidx135 = getelementptr [2 x i16], ptr @xfs_iflush_fork.brootflag, i32 0, i32 %whichfork
  %56 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx135, align 2
  %conv136 = sext i16 %57 to i32
  %and137 = and i32 %55, %conv136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %sw.bb133.cleanup_crit_edge, label %land.lhs.true139

sw.bb133.cleanup_crit_edge:                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true139:                                 ; preds = %sw.bb133
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %cond5372380, i32 0, i32 5
  %58 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %if_broot_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp141 = icmp sgt i16 %59, 0
  br i1 %cmp141, label %if.then143, label %land.lhs.true139.cleanup_crit_edge

land.lhs.true139.cleanup_crit_edge:               ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then143:                                       ; preds = %land.lhs.true139
  %if_broot = getelementptr inbounds %struct.xfs_ifork, ptr %cond5372380, i32 0, i32 1
  %60 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %if_broot, align 8
  %cmp144.not = icmp eq ptr %61, null
  br i1 %cmp144.not, label %cond.false153, label %if.then143.cond.end154_crit_edge, !prof !90

if.then143.cond.end154_crit_edge:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end154

cond.false153:                                    ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 633) #9
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false153, %if.then143.cond.end154_crit_edge
  %62 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %if_broot, align 8
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %bb_numrecs, align 2
  %conv156 = zext i16 %65 to i32
  %mul = shl nuw nsw i32 %conv156, 4
  %add = or i32 %mul, 4
  br i1 %cmp, label %cond.true159, label %cond.false180

cond.true159:                                     ; preds = %cond.end154
  %i_forkoff160 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %66 = ptrtoint ptr %i_forkoff160 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i_forkoff160, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp162.not = icmp eq i8 %67, 0
  br i1 %cmp162.not, label %cond.false168, label %cond.true164

cond.true164:                                     ; preds = %cond.true159
  call void @__sanitizer_cov_trace_pc() #11
  %conv161 = zext i8 %67 to i32
  %shl167 = shl nuw nsw i32 %conv161, 3
  br label %cond.end208

cond.false168:                                    ; preds = %cond.true159
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ip, align 8
  %sb_inodesize171 = getelementptr inbounds %struct.xfs_sb, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %sb_inodesize171 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sb_inodesize171, align 8
  %conv172 = zext i16 %71 to i32
  %m_features.i358 = getelementptr inbounds %struct.xfs_mount, ptr %69, i32 0, i32 61
  %72 = ptrtoint ptr %m_features.i358 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %m_features.i358, align 8
  %and.i359 = and i64 %73, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i359)
  %tobool.i360.not = icmp eq i64 %and.i359, 0
  %cond176.neg = select i1 %tobool.i360.not, i32 -100, i32 -176
  %sub177 = add nsw i32 %cond176.neg, %conv172
  br label %cond.end208

cond.false180:                                    ; preds = %cond.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp181 = icmp eq i32 %whichfork, 1
  br i1 %cmp181, label %cond.true183, label %cond.false180.cond.false219_crit_edge

cond.false180.cond.false219_crit_edge:            ; preds = %cond.false180
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false219

cond.true183:                                     ; preds = %cond.false180
  %i_forkoff184 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %74 = ptrtoint ptr %i_forkoff184 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i_forkoff184, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp186.not = icmp eq i8 %75, 0
  br i1 %cmp186.not, label %cond.true183.cond.false219_crit_edge, label %cond.true188

cond.true183.cond.false219_crit_edge:             ; preds = %cond.true183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false219

cond.true188:                                     ; preds = %cond.true183
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ip, align 8
  %sb_inodesize191 = getelementptr inbounds %struct.xfs_sb, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %sb_inodesize191 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %sb_inodesize191, align 8
  %conv192 = zext i16 %79 to i32
  %m_features.i361 = getelementptr inbounds %struct.xfs_mount, ptr %77, i32 0, i32 61
  %80 = ptrtoint ptr %m_features.i361 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %m_features.i361, align 8
  %and.i362 = and i64 %81, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i362)
  %tobool.i363.not = icmp eq i64 %and.i362, 0
  %cond196.neg = select i1 %tobool.i363.not, i32 -100, i32 -176
  %conv199 = zext i8 %75 to i32
  %shl200.neg = mul nsw i32 %conv199, -8
  %sub197 = add nsw i32 %shl200.neg, %conv192
  %sub201 = add nsw i32 %sub197, %cond196.neg
  br label %cond.end208

cond.end208:                                      ; preds = %cond.true188, %cond.false168, %cond.true164
  %cond209 = phi i32 [ %shl167, %cond.true164 ], [ %sub177, %cond.false168 ], [ %sub201, %cond.true188 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond209)
  %cmp210.not = icmp ugt i32 %add, %cond209
  br i1 %cmp210.not, label %cond.end208.cond.false219_crit_edge, label %cond.end208.cond.end220_crit_edge, !prof !90

cond.end208.cond.end220_crit_edge:                ; preds = %cond.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end220

cond.end208.cond.false219_crit_edge:              ; preds = %cond.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false219

cond.false219:                                    ; preds = %cond.end208.cond.false219_crit_edge, %cond.true183.cond.false219_crit_edge, %cond.false180.cond.false219_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 635) #9
  br label %cond.end220

cond.end220:                                      ; preds = %cond.false219, %cond.end208.cond.end220_crit_edge
  %82 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %if_broot, align 8
  %84 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %if_broot_bytes, align 8
  %conv223 = sext i16 %85 to i32
  %di_forkoff227 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %86 = ptrtoint ptr %di_forkoff227 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %di_forkoff227, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool229.not = icmp eq i8 %87, 0
  br i1 %cmp, label %cond.true226, label %cond.false244

cond.true226:                                     ; preds = %cond.end220
  br i1 %tobool229.not, label %cond.false234, label %cond.true230

cond.true230:                                     ; preds = %cond.true226
  call void @__sanitizer_cov_trace_pc() #11
  %conv228 = zext i8 %87 to i32
  %shl233 = shl nuw nsw i32 %conv228, 3
  br label %cond.end263

cond.false234:                                    ; preds = %cond.true226
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize236 = getelementptr inbounds %struct.xfs_sb, ptr %11, i32 0, i32 17
  %88 = ptrtoint ptr %sb_inodesize236 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sb_inodesize236, align 8
  %conv237 = zext i16 %89 to i32
  %m_features.i364 = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 61
  %90 = ptrtoint ptr %m_features.i364 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %m_features.i364, align 8
  %and.i365 = and i64 %91, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i365)
  %tobool.i366.not = icmp eq i64 %and.i365, 0
  %cond240.neg = select i1 %tobool.i366.not, i32 -100, i32 -176
  %sub241 = add nsw i32 %cond240.neg, %conv237
  br label %cond.end263

cond.false244:                                    ; preds = %cond.end220
  br i1 %tobool229.not, label %cond.false244.cond.end263_crit_edge, label %cond.true248

cond.false244.cond.end263_crit_edge:              ; preds = %cond.false244
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end263

cond.true248:                                     ; preds = %cond.false244
  call void @__sanitizer_cov_trace_pc() #11
  %sb_inodesize250 = getelementptr inbounds %struct.xfs_sb, ptr %11, i32 0, i32 17
  %92 = ptrtoint ptr %sb_inodesize250 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %sb_inodesize250, align 8
  %conv251 = zext i16 %93 to i32
  %m_features.i367 = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 61
  %94 = ptrtoint ptr %m_features.i367 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %m_features.i367, align 8
  %and.i368 = and i64 %95, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i368)
  %tobool.i369.not = icmp eq i64 %and.i368, 0
  %cond254.neg = select i1 %tobool.i369.not, i32 -100, i32 -176
  %conv257 = zext i8 %87 to i32
  %shl258.neg = mul nsw i32 %conv257, -8
  %sub255 = add nsw i32 %shl258.neg, %conv251
  %sub259 = add nsw i32 %sub255, %cond254.neg
  br label %cond.end263

cond.end263:                                      ; preds = %cond.true248, %cond.false244.cond.end263_crit_edge, %cond.false234, %cond.true230
  %cond264 = phi i32 [ %shl233, %cond.true230 ], [ %sub241, %cond.false234 ], [ %sub259, %cond.true248 ], [ 0, %cond.false244.cond.end263_crit_edge ]
  tail call void @xfs_bmbt_to_bmdr(ptr noundef %11, ptr noundef %83, i32 noundef %conv223, ptr noundef %cond25, i32 noundef %cond264) #9
  br label %cleanup

sw.bb266:                                         ; preds = %cond.end24
  %ili_fields267 = getelementptr inbounds %struct.xfs_inode_log_item, ptr %iip, i32 0, i32 5
  %96 = ptrtoint ptr %ili_fields267 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ili_fields267, align 8
  %and268 = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %sw.bb266.cleanup_crit_edge, label %if.then270

sw.bb266.cleanup_crit_edge:                       ; preds = %sw.bb266
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then270:                                       ; preds = %sw.bb266
  br i1 %cmp, label %if.then270.cond.end281_crit_edge, label %cond.false280, !prof !99

if.then270.cond.end281_crit_edge:                 ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end281

cond.false280:                                    ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 644) #9
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false280, %if.then270.cond.end281_crit_edge
  %i_rdev = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 13
  %98 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i_rdev, align 8
  %and.i.i = and i32 %99, 1048575
  %100 = lshr i32 %99, 2
  %shl.i.i = and i32 %100, 1073479680
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %di_version.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %101 = ptrtoint ptr %di_version.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %di_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %102)
  %cmp.i.i = icmp eq i8 %102, 3
  %..i.i = select i1 %cmp.i.i, i32 176, i32 100
  %add.ptr.i = getelementptr i8, ptr %dip, i32 %..i.i
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i.i, ptr %add.ptr.i, align 4
  br label %cleanup

sw.default:                                       ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 651) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %cond.end281, %sw.bb266.cleanup_crit_edge, %cond.end263, %land.lhs.true139.cleanup_crit_edge, %sw.bb133.cleanup_crit_edge, %cond.end130, %land.lhs.true115.cleanup_crit_edge, %sw.bb109.cleanup_crit_edge, %cond.end104, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %cond.false12, %cond.end4.thread374.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmbt_to_bmdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xfs_iext_state_to_fork(ptr noundef readonly %ip, i32 noundef %state) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %state, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %0 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_cowfp, align 4
  br label %return

if.else:                                          ; preds = %entry
  %and1 = and i32 %state, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  br label %return

if.end4:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %3, %if.then3 ], [ %i_df, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ifork_init_cow(ptr nocapture noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %0 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_cowfp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @xfs_ifork_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36160) #9
  %3 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %i_cowfp, align 4
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %if_format, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_sf_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_symlink_shortform_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_attr_shortform_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iext_count_may_overflow(ptr nocapture noundef readonly %ip, i32 noundef %whichfork, i32 noundef %nr_to_add) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %whichfork, label %cond.end4 [
    i32 0, label %cond.true
    i32 1, label %cond.true2
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %if.end

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %1 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_afp, align 8
  br label %if.end

cond.end4:                                        ; preds = %entry
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %3 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_cowfp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp6 = icmp eq i32 %whichfork, 2
  br i1 %cmp6, label %cond.end4.cleanup_crit_edge, label %cond.end4.if.end_crit_edge

cond.end4.if.end_crit_edge:                       ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end4.cleanup_crit_edge:                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end4.if.end_crit_edge, %cond.true2, %cond.true
  %cond534 = phi ptr [ %4, %cond.end4.if.end_crit_edge ], [ %2, %cond.true2 ], [ %i_df, %cond.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp7 = icmp eq i32 %whichfork, 1
  %cond8 = select i1 %cmp7, i32 32767, i32 2147483647
  %5 = zext i32 %cond8 to i64
  %6 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ip, align 8
  %call = tail call zeroext i1 @xfs_errortag_test(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 749, i32 noundef 36) #9
  %spec.select = select i1 %call, i64 10, i64 %5
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %cond534, i32 0, i32 7
  %8 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %if_nextents, align 4
  %add = add i32 %9, %nr_to_add
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp15 = icmp ult i32 %add, %9
  %conv12 = sext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %conv12)
  %cmp17 = icmp ult i64 %spec.select, %conv12
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp17
  %spec.select31 = select i1 %or.cond, i32 -27, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end4.cleanup_crit_edge ], [ %spec.select31, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmbt_disk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_insert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_read_extent(ptr noundef %ip, ptr noundef %cur, i32 noundef %state) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_read_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_read_extent, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %call42 = tail call i32 @__traceiter_xfs_read_extent(ptr noundef null, ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef ptrtoint (ptr blockaddress(@xfs_iformat_extents, %__here77) to i32)) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !99

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_read_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_read_extent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_read_extent.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_read_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 406, ptr noundef nonnull @.str.27) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_read_extent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmdr_to_bmbt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_write_extent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !73, !75, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__func__.xfs_iformat_data_fork, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 258, i32 48}
!2 = !{ptr @__func__.xfs_iformat_attr_fork, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 321, i32 39}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 403, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 414, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 417, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 487, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 488, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 553, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 554, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 559, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 566, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 567, i32 2}
!25 = !{ptr @xfs_iflush_fork.brootflag, !26, !"brootflag", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 591, i32 21}
!27 = !{ptr @xfs_iflush_fork.dataflag, !28, !"dataflag", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 593, i32 21}
!29 = !{ptr @xfs_iflush_fork.extflag, !30, !"extflag", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 595, i32 21}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 606, i32 3}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 615, i32 4}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 616, i32 4}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 624, i32 4}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 633, i32 4}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 644, i32 4}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 651, i32 3}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 703, i32 47}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 725, i32 47}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 749, i32 6}
!51 = !{ptr @xfs_ifork_cache, !52, !"xfs_ifork_cache", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 29, i32 20}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 82, i32 2}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 86, i32 5}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 120, i32 25}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 123, i32 5}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 142, i32 7}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_trace.h", i32 406, i32 1}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 196, i32 16}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/libxfs/xfs_inode_fork.c", i32 199, i32 5}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_trace.h", i32 407, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2166356464}
!89 = !{i64 2166356579}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 2166347464}
!92 = !{!"auto-init"}
!93 = !{i64 2166349636}
!94 = !{!"branch_weights", i32 4001, i32 4000000}
!95 = !{!"branch_weights", i32 2002, i32 2000}
!96 = !{i64 2166354935}
!97 = !{i64 2166357130}
!98 = !{i64 2166384707}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2148262532, i64 2148262537, i64 2148262550, i64 2148262594, i64 2148262628, i64 2148262649}
!101 = !{i64 2156619327}
!102 = !{i64 2156619572}
!103 = !{i64 2149964625}
!104 = !{i64 2149965661}
!105 = !{i64 2156597563}
!106 = !{i64 2156597806}
