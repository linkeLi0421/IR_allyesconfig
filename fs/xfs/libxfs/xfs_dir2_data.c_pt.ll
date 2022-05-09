; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_dir2_data.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_dir2_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
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
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_dir3_data_hdr = type { %struct.xfs_dir3_blk_hdr, [3 x %struct.xfs_dir2_data_free], i32 }
%struct.xfs_dir3_blk_hdr = type { i32, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_dir2_data_free = type { i16, i16 }
%struct.xfs_dir2_data_hdr = type { i32, [3 x %struct.xfs_dir2_data_free] }
%struct.xfs_dir2_data_entry = type { i64, i8, [0 x i8] }
%struct.xfs_name = type { ptr, i32, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
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
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_dir2_block_tail = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
%struct.xfs_dir2_data_unused = type { i16, i16, i16 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ftype < XFS_DIR3_FT_MAX\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/libxfs/xfs_dir2_data.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dep->namelen != 0\00", [46 x i8] zeroinitializer }, align 32
@__func__.xfs_dir3_data_check = private unnamed_addr constant [20 x i8] c"xfs_dir3_data_check\00", align 1
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xfs_dir3_data\00", [18 x i8] zeroinitializer }, align 32
@xfs_dir3_data_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.4, %union.anon.87 { [2 x i32] [i32 1480864324, i32 1480868915] }, ptr @xfs_dir3_data_read_verify, ptr @xfs_dir3_data_write_verify, ptr @xfs_dir3_data_verify }, [40 x i8] zeroinitializer }, align 32
@xfs_dir3_data_reada_buf_ops = internal constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.18, %union.anon.87 { [2 x i32] [i32 1480864324, i32 1480868915] }, ptr @xfs_dir3_data_reada_verify, ptr @xfs_dir3_data_write_verify, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [199 x i8], [57 x i8] } { [199 x i8] c"hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR2_BLOCK_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR3_BLOCK_MAGIC)\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [199 x i8], [57 x i8] } { [199 x i8] c"hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR2_BLOCK_MAGIC) || hdr->magic == cpu_to_be32(XFS_DIR3_BLOCK_MAGIC)\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"offset == be16_to_cpu(*xfs_dir2_data_unused_tag_p(dup))\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"offset == be16_to_cpu(*xfs_dir2_data_entry_tag_p(mp, dep))\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"end != 0\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"*needscanp == 0\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfp && dfp2\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfp2 == dfp\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dfp == &bf[0]\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dfp->length == prevdup->length\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!dfp[1].length\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!dfp[2].length\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dfp || oldlen <= be16_to_cpu(bf[2].length)\00", [53 x i8] zeroinitializer }, align 32
@__func__.xfs_dir2_data_use_free = private unnamed_addr constant [23 x i8] c"xfs_dir2_data_use_free\00", align 1
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_dir3_data_reada\00", [44 x i8] zeroinitializer }, align 32
@xfs_dir3_block_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dfp == &bf[2]\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1480864322, i64 1480868403]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1480864322, i64 1480868403]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 1480864322, i64 1480864324, i64 1480868403, i64 1480868915]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 70, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 71, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 286, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 381, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"xfs_dir3_data_buf_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 380, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"xfs_dir3_data_reada_buf_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 389, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 561, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 649, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 669, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 679, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 858, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 884, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 920, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 923, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 933, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 934, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 935, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 936, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1083, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 390, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [33 x i8] c"../fs/xfs/libxfs/xfs_dir2_data.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 625, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xfs_dir3_data_buf_ops, ptr @xfs_dir3_data_reada_buf_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir3_data_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir3_data_reada_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 199, i32 256, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 199, i32 256, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xfs_dir2_data_bestfree_p(ptr nocapture noundef readonly %mp, ptr noundef readnone %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %best_free = getelementptr inbounds %struct.xfs_dir3_data_hdr, ptr %hdr, i32 0, i32 1
  %bestfree = getelementptr inbounds %struct.xfs_dir2_data_hdr, ptr %hdr, i32 0, i32 1
  %retval.0 = select i1 %tobool.i.not, ptr %bestfree, ptr %best_free
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xfs_dir2_data_entry_tag_p(ptr nocapture noundef readonly %mp, ptr noundef readonly %dep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %dep, i32 0, i32 1
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %namelen, align 8
  %conv = zext i8 %1 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv, -1
  %sub.i = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add nsw i32 %or.i, 1
  %add.ptr = getelementptr i8, ptr %dep, i32 %add3.i
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -2
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @xfs_dir2_data_get_ftype(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %dep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %dep, i32 0, i32 1
  %2 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %namelen, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.xfs_dir2_data_entry, ptr %dep, i32 0, i32 2, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp = icmp ugt i8 %5, 8
  br i1 %cmp, label %if.then.if.end4_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  br label %return

return:                                           ; preds = %if.end4, %if.then.return_crit_edge
  %retval.1 = phi i8 [ %5, %if.then.return_crit_edge ], [ 0, %if.end4 ]
  ret i8 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_data_put_ftype(ptr nocapture noundef readonly %mp, ptr nocapture noundef %dep, i8 noundef zeroext %ftype) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %ftype)
  %cmp = icmp ult i8 %ftype, 9
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !56

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 70) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %dep, i32 0, i32 1
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %namelen, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4.not = icmp eq i8 %1, 0
  br i1 %cmp4.not, label %cond.false13, label %cond.end.cond.end14_crit_edge, !prof !57

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 71) #9
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.end14.if.end_crit_edge, label %if.then

cond.end14.if.end_crit_edge:                      ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %namelen, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.xfs_dir2_data_entry, ptr %dep, i32 0, i32 2, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %ftype, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end14.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__xfs_dir3_data_check(ptr noundef readonly %dp, ptr nocapture noundef readonly %bp) #2 align 64 {
entry:
  %dfp = alloca ptr, align 4
  %name = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dfp) #9
  %0 = ptrtoint ptr %dfp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dfp, align 4, !annotation !58
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %1 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_mount, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #9
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !58
  %4 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !58
  %6 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !58
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 6
  %8 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_dir_geo, align 4
  %tobool.not = icmp eq ptr %dp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %10 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i_vnode.i, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp = icmp eq i16 %12, 16384
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %__here

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  br label %cleanup284

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %13 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_addr, align 4
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %9, i32 0, i32 15
  %15 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_entry_offset, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %__here13 [
    i32 1480868403, label %if.end.sw.bb_crit_edge
    i32 1480864322, label %if.end.sw.bb_crit_edge488
    i32 1480868915, label %if.end.sw.epilog_crit_edge
    i32 1480864324, label %if.end.sw.epilog_crit_edge489
  ]

if.end.sw.epilog_crit_edge489:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.bb_crit_edge488:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge488
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %21
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %23
  %add.ptr.i396 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %sub.i = sub i32 -8, %16
  %sub1.i = add i32 %sub.i, %21
  %div3.i = lshr i32 %sub1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %div3.i)
  %cmp6.not = icmp ult i32 %23, %div3.i
  br i1 %cmp6.not, label %sw.bb.sw.epilog_crit_edge, label %__here9

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

__here9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  br label %cleanup284

__here13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  br label %cleanup284

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge489
  %lep.0 = phi ptr [ null, %if.end.sw.epilog_crit_edge ], [ null, %if.end.sw.epilog_crit_edge489 ], [ %add.ptr.i396, %sw.bb.sw.epilog_crit_edge ]
  %btp.0 = phi ptr [ null, %if.end.sw.epilog_crit_edge ], [ null, %if.end.sw.epilog_crit_edge489 ], [ %add.ptr1.i, %sw.bb.sw.epilog_crit_edge ]
  %24 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %18, label %sw.epilog.__here18_crit_edge [
    i32 1480868403, label %sw.epilog.sw.bb.i_crit_edge
    i32 1480864322, label %sw.epilog.sw.bb.i_crit_edge490
    i32 1480868915, label %sw.epilog.sw.bb2.i_crit_edge
    i32 1480864324, label %sw.epilog.sw.bb2.i_crit_edge491
  ]

sw.epilog.sw.bb2.i_crit_edge491:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

sw.epilog.sw.bb2.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

sw.epilog.sw.bb.i_crit_edge490:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.epilog.__here18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here18

sw.bb.i:                                          ; preds = %sw.epilog.sw.bb.i_crit_edge, %sw.epilog.sw.bb.i_crit_edge490
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %9, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %26
  %add.ptr1.i.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i, i32 -1
  %27 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr1.i.i, align 4
  %idx.neg.i.i = sub i32 0, %28
  %add.ptr.i6.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %xfs_dir3_data_end_offset.exit

sw.bb2.i:                                         ; preds = %sw.epilog.sw.bb2.i_crit_edge, %sw.epilog.sw.bb2.i_crit_edge491
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %9, align 4
  br label %xfs_dir3_data_end_offset.exit

xfs_dir3_data_end_offset.exit:                    ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %30, %sw.bb2.i ], [ %sub.ptr.sub.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool16.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool16.not, label %xfs_dir3_data_end_offset.exit.__here18_crit_edge, label %if.end20

xfs_dir3_data_end_offset.exit.__here18_crit_edge: ; preds = %xfs_dir3_data_end_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here18

__here18:                                         ; preds = %xfs_dir3_data_end_offset.exit.__here18_crit_edge, %sw.epilog.__here18_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  br label %cleanup284

if.end20:                                         ; preds = %xfs_dir3_data_end_offset.exit
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %31 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %best_free.i = getelementptr inbounds %struct.xfs_dir3_data_hdr, ptr %14, i32 0, i32 1
  %bestfree.i = getelementptr inbounds %struct.xfs_dir2_data_hdr, ptr %14, i32 0, i32 1
  %retval.0.i397 = select i1 %tobool.i.not.i, ptr %bestfree.i, ptr %best_free.i
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i397, i32 0, i32 1
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool22.not = icmp eq i16 %34, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end31_crit_edge

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then23:                                        ; preds = %if.end20
  %35 = ptrtoint ptr %retval.0.i397 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %retval.0.i397, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool26.not = icmp eq i16 %36, 0
  br i1 %tobool26.not, label %if.then23.if.end31_crit_edge, label %__here28

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

__here28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  br label %cleanup284

if.end31:                                         ; preds = %if.then23.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  %freeseen.0 = phi i32 [ 0, %if.end20.if.end31_crit_edge ], [ 1, %if.then23.if.end31_crit_edge ]
  %length33 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i397, i32 1, i32 1
  %37 = ptrtoint ptr %length33 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool34.not = icmp eq i16 %38, 0
  br i1 %tobool34.not, label %if.then35, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then35:                                        ; preds = %if.end31
  %arrayidx32 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i397, i32 1
  %39 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool38.not = icmp eq i16 %40, 0
  br i1 %tobool38.not, label %if.end42, label %__here40

__here40:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  br label %cleanup284

if.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %or43 = or i32 %freeseen.0, 2
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end31.if.end44_crit_edge
  %freeseen.1 = phi i32 [ %freeseen.0, %if.end31.if.end44_crit_edge ], [ %or43, %if.end42 ]
  %length46 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i397, i32 2, i32 1
  %41 = ptrtoint ptr %length46 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %length46, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool47.not = icmp eq i16 %42, 0
  br i1 %tobool47.not, label %if.then48, label %if.end44.if.end57_crit_edge

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then48:                                        ; preds = %if.end44
  %arrayidx45 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i397, i32 2
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool51.not = icmp eq i16 %44, 0
  br i1 %tobool51.not, label %if.end55, label %__here53

__here53:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  br label %cleanup284

if.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %or56 = or i32 %freeseen.1, 4
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %if.end44.if.end57_crit_edge
  %freeseen.2 = phi i32 [ %freeseen.1, %if.end44.if.end57_crit_edge ], [ %or56, %if.end55 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %38)
  %cmp64 = icmp ult i16 %34, %38
  br i1 %cmp64, label %__here67, label %if.end69

__here67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  br label %cleanup284

if.end69:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %42)
  %cmp76 = icmp ult i16 %38, %42
  br i1 %cmp76, label %__here79, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end69
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %retval.0.i)
  %cmp82456 = icmp ult i32 %16, %retval.0.i
  br i1 %cmp82456, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %9, i32 0, i32 7
  %sub.ptr.rhs.cast190 = ptrtoint ptr %14 to i32
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %9, i32 0, i32 3
  %sub.ptr.rhs.cast = ptrtoint ptr %retval.0.i397 to i32
  br label %while.body

__here79:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  br label %cleanup284

while.body:                                       ; preds = %cleanup223.while.body_crit_edge, %while.body.lr.ph
  %count.0460 = phi i32 [ 0, %while.body.lr.ph ], [ %count.1, %cleanup223.while.body_crit_edge ]
  %freeseen.3459 = phi i32 [ %freeseen.2, %while.body.lr.ph ], [ %freeseen.6, %cleanup223.while.body_crit_edge ]
  %lastfree.0458 = phi i32 [ 0, %while.body.lr.ph ], [ %lastfree.2, %cleanup223.while.body_crit_edge ]
  %offset.0457 = phi i32 [ %16, %while.body.lr.ph ], [ %offset.2, %cleanup223.while.body_crit_edge ]
  %45 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_addr, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 %offset.0457
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp88 = icmp eq i16 %48, -1
  br i1 %cmp88, label %if.then90, label %if.end143

if.then90:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lastfree.0458)
  %cmp91.not = icmp eq i32 %lastfree.0458, 0
  br i1 %cmp91.not, label %if.end96, label %__here94

__here94:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  br label %cleanup284

if.end96:                                         ; preds = %if.then90
  %length97 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %49 = ptrtoint ptr %length97 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %length97, align 2
  %conv98 = zext i16 %50 to i32
  %add = add i32 %offset.0457, %conv98
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i)
  %cmp99 = icmp ugt i32 %add, %retval.0.i
  br i1 %cmp99, label %__here102, label %if.end104

__here102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  br label %cleanup284

if.end104:                                        ; preds = %if.end96
  %add.ptr.i398 = getelementptr i8, ptr %add.ptr, i32 -2
  %add.ptr1.i399 = getelementptr i8, ptr %add.ptr.i398, i32 %conv98
  %51 = ptrtoint ptr %add.ptr1.i399 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr1.i399, align 2
  %conv106 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0457, i32 %conv106)
  %cmp107.not = icmp eq i32 %offset.0457, %conv106
  br i1 %cmp107.not, label %if.end112, label %__here110

__here110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  br label %cleanup284

if.end112:                                        ; preds = %if.end104
  %call113 = call fastcc ptr @xfs_dir2_data_freefind_verify(ptr noundef %14, ptr noundef %retval.0.i397, ptr noundef %add.ptr, ptr noundef nonnull %dfp)
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %if.end116, label %if.end112.cleanup284_crit_edge

if.end112.cleanup284_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup284

if.end116:                                        ; preds = %if.end112
  %53 = ptrtoint ptr %dfp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dfp, align 4
  %tobool117.not = icmp eq ptr %54, null
  br i1 %tobool117.not, label %if.else, label %if.then118

if.then118:                                       ; preds = %if.end116
  %sub.ptr.lhs.cast = ptrtoint ptr %54 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %shl = shl nuw i32 1, %sub.ptr.div
  %and119 = and i32 %shl, %freeseen.3459
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %cmp120.not = icmp eq i32 %and119, 0
  br i1 %cmp120.not, label %if.end125, label %__here123

__here123:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  br label %cleanup284

if.end125:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  %or127 = or i32 %shl, %freeseen.3459
  br label %if.end139

if.else:                                          ; preds = %if.end116
  %55 = ptrtoint ptr %length97 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %length97, align 2
  %57 = ptrtoint ptr %length46 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %length46, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %cmp133 = icmp ugt i16 %56, %58
  br i1 %cmp133, label %__here136, label %if.else.if.end139_crit_edge

if.else.if.end139_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

__here136:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  br label %cleanup284

if.end139:                                        ; preds = %if.else.if.end139_crit_edge, %if.end125
  %freeseen.4 = phi i32 [ %or127, %if.end125 ], [ %freeseen.3459, %if.else.if.end139_crit_edge ]
  %59 = ptrtoint ptr %length97 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %length97, align 2
  %conv141 = zext i16 %60 to i32
  br label %cleanup223

if.end143:                                        ; preds = %while.body
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %61 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %namelen, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp145 = icmp eq i8 %62, 0
  br i1 %cmp145, label %__here148, label %if.end150

__here148:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  br label %cleanup284

if.end150:                                        ; preds = %if.end143
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr, align 8
  %call151 = call zeroext i1 @xfs_verify_dir_ino(ptr noundef %2, i64 noundef %64) #9
  br i1 %call151, label %if.end155, label %__here153

__here153:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  br label %cleanup284

if.end155:                                        ; preds = %if.end150
  %65 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %namelen, align 8
  %conv157 = zext i8 %66 to i32
  %67 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %m_features.i.i, align 8
  %and.i.i401 = and i64 %68, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i401)
  %tobool.i.not.i402 = icmp eq i64 %and.i.i401, 0
  %spec.select.v.i = select i1 %tobool.i.not.i402, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv157, -1
  %sub.i403 = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i403, 7
  %add3.i = add nsw i32 %or.i, 1
  %add159 = add i32 %add3.i, %offset.0457
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %retval.0.i)
  %cmp160 = icmp ugt i32 %add159, %retval.0.i
  br i1 %cmp160, label %__here163, label %if.end165

__here163:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  br label %cleanup284

if.end165:                                        ; preds = %if.end155
  %add.ptr.i405 = getelementptr i8, ptr %add.ptr, i32 -2
  %add.ptr1.i406 = getelementptr i8, ptr %add.ptr.i405, i32 %add3.i
  %69 = ptrtoint ptr %add.ptr1.i406 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr1.i406, align 2
  %conv167 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0457, i32 %conv167)
  %cmp168.not = icmp eq i32 %offset.0457, %conv167
  br i1 %cmp168.not, label %if.end173, label %__here171

__here171:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  br label %cleanup284

if.end173:                                        ; preds = %if.end165
  %inc = add i32 %count.0460, 1
  %71 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %14, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %72, label %if.end173.if.end218_crit_edge [
    i32 1480864322, label %if.end173.if.then188_crit_edge
    i32 1480868403, label %if.end173.if.then188_crit_edge492
  ]

if.end173.if.then188_crit_edge492:                ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then188

if.end173.if.then188_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then188

if.end173.if.end218_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

if.then188:                                       ; preds = %if.end173.if.then188_crit_edge, %if.end173.if.then188_crit_edge492
  %74 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %datablk, align 4
  %sub.ptr.lhs.cast189 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub191 = sub i32 %sub.ptr.lhs.cast189, %sub.ptr.rhs.cast190
  %conv.i.i = zext i32 %75 to i64
  %76 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %77 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %conv2.i.i = zext i32 %sub.ptr.sub191 to i64
  %add.i.i = add i64 %shl.i.i, %conv2.i.i
  %78 = lshr i64 %add.i.i, 3
  %conv.i2.i = trunc i64 %78 to i32
  %name193 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %79 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %name193, ptr %name, align 4
  %80 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %namelen, align 8
  %conv196 = zext i8 %81 to i32
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv196, ptr %4, align 4
  %call197 = call i32 @xfs_dir2_hashname(ptr noundef %2, ptr noundef nonnull %name) #9
  %83 = ptrtoint ptr %btp.0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %btp.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp199453.not = icmp eq i32 %84, 0
  br i1 %cmp199453.not, label %if.then188.__here215_crit_edge, label %if.then188.for.body_crit_edge

if.then188.for.body_crit_edge:                    ; preds = %if.then188
  br label %for.body

if.then188.__here215_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here215

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then188.for.body_crit_edge
  %i.0454 = phi i32 [ %inc210, %for.inc.for.body_crit_edge ], [ 0, %if.then188.for.body_crit_edge ]
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0, i32 %i.0454, i32 1
  %85 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv.i2.i)
  %cmp202 = icmp eq i32 %86, %conv.i2.i
  br i1 %cmp202, label %land.lhs.true204, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true204:                                 ; preds = %for.body
  %arrayidx201 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0, i32 %i.0454
  %87 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx201, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %call197)
  %cmp206 = icmp eq i32 %88, %call197
  br i1 %cmp206, label %land.lhs.true204.if.end218_crit_edge, label %land.lhs.true204.for.inc_crit_edge

land.lhs.true204.for.inc_crit_edge:               ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true204.if.end218_crit_edge:             ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

for.inc:                                          ; preds = %land.lhs.true204.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc210 = add nuw i32 %i.0454, 1
  %exitcond.not = icmp eq i32 %inc210, %84
  br i1 %exitcond.not, label %for.inc.__here215_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.__here215_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here215

__here215:                                        ; preds = %for.inc.__here215_crit_edge, %if.then188.__here215_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  br label %cleanup284

if.end218:                                        ; preds = %land.lhs.true204.if.end218_crit_edge, %if.end173.if.end218_crit_edge
  %89 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %namelen, align 8
  %conv220 = zext i8 %90 to i32
  %91 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %m_features.i.i, align 8
  %and.i.i412 = and i64 %92, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i412)
  %tobool.i.not.i413 = icmp eq i64 %and.i.i412, 0
  %spec.select.v.i414 = select i1 %tobool.i.not.i413, i32 11, i32 12
  %spec.select.i415 = add nsw i32 %conv220, -1
  %sub.i416 = add nsw i32 %spec.select.i415, %spec.select.v.i414
  %or.i417 = or i32 %sub.i416, 7
  %add3.i418 = add nsw i32 %or.i417, 1
  br label %cleanup223

cleanup223:                                       ; preds = %if.end218, %if.end139
  %add3.i418.pn = phi i32 [ %add3.i418, %if.end218 ], [ %conv141, %if.end139 ]
  %lastfree.2 = phi i32 [ 0, %if.end218 ], [ 1, %if.end139 ]
  %freeseen.6 = phi i32 [ %freeseen.3459, %if.end218 ], [ %freeseen.4, %if.end139 ]
  %count.1 = phi i32 [ %inc, %if.end218 ], [ %count.0460, %if.end139 ]
  %offset.2 = add i32 %add3.i418.pn, %offset.0457
  %cmp82 = icmp ult i32 %offset.2, %retval.0.i
  br i1 %cmp82, label %cleanup223.while.body_crit_edge, label %cleanup223.while.end_crit_edge

cleanup223.while.end_crit_edge:                   ; preds = %cleanup223
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup223.while.body_crit_edge:                  ; preds = %cleanup223
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup223.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %freeseen.3.lcssa = phi i32 [ %freeseen.2, %while.cond.preheader.while.end_crit_edge ], [ %freeseen.6, %cleanup223.while.end_crit_edge ]
  %count.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %count.1, %cleanup223.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %freeseen.3.lcssa)
  %cmp225.not = icmp eq i32 %freeseen.3.lcssa, 7
  br i1 %cmp225.not, label %if.end230, label %__here228

__here228:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  br label %cleanup284

if.end230:                                        ; preds = %while.end
  %93 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %14, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %94, label %if.end230.cleanup284_crit_edge [
    i32 1480864322, label %if.end230.if.then238_crit_edge
    i32 1480868403, label %if.end230.if.then238_crit_edge493
  ]

if.end230.if.then238_crit_edge493:                ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then238

if.end230.if.then238_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then238

if.end230.cleanup284_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup284

if.then238:                                       ; preds = %if.end230.if.then238_crit_edge, %if.end230.if.then238_crit_edge493
  %96 = ptrtoint ptr %btp.0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %btp.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp241462.not = icmp eq i32 %97, 0
  br i1 %cmp241462.not, label %if.then238.for.end266_crit_edge, label %if.then238.for.body243_crit_edge

if.then238.for.body243_crit_edge:                 ; preds = %if.then238
  br label %for.body243

if.then238.for.end266_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end266

for.body243:                                      ; preds = %for.inc264.for.body243_crit_edge, %if.then238.for.body243_crit_edge
  %i.1464 = phi i32 [ %inc265, %for.inc264.for.body243_crit_edge ], [ 0, %if.then238.for.body243_crit_edge ]
  %stale.0463 = phi i32 [ %spec.select, %for.inc264.for.body243_crit_edge ], [ 0, %if.then238.for.body243_crit_edge ]
  %address245 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0, i32 %i.1464, i32 1
  %98 = ptrtoint ptr %address245 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %address245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp246 = icmp eq i32 %99, 0
  %inc249 = zext i1 %cmp246 to i32
  %spec.select = add i32 %stale.0463, %inc249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1464)
  %cmp251 = icmp sgt i32 %i.1464, 0
  br i1 %cmp251, label %land.lhs.true253, label %for.body243.for.inc264_crit_edge

for.body243.for.inc264_crit_edge:                 ; preds = %for.body243
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc264

land.lhs.true253:                                 ; preds = %for.body243
  %arrayidx244 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0, i32 %i.1464
  %100 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx244, align 4
  %sub = add nsw i32 %i.1464, -1
  %arrayidx256 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %lep.0, i32 %sub
  %102 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx256, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp258 = icmp ult i32 %101, %103
  br i1 %cmp258, label %__here261, label %land.lhs.true253.for.inc264_crit_edge

land.lhs.true253.for.inc264_crit_edge:            ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc264

__here261:                                        ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  br label %cleanup284

for.inc264:                                       ; preds = %land.lhs.true253.for.inc264_crit_edge, %for.body243.for.inc264_crit_edge
  %inc265 = add nuw i32 %i.1464, 1
  %exitcond472.not = icmp eq i32 %inc265, %97
  br i1 %exitcond472.not, label %for.inc264.for.end266_crit_edge, label %for.inc264.for.body243_crit_edge

for.inc264.for.body243_crit_edge:                 ; preds = %for.inc264
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body243

for.inc264.for.end266_crit_edge:                  ; preds = %for.inc264
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end266

for.end266:                                       ; preds = %for.inc264.for.end266_crit_edge, %if.then238.for.end266_crit_edge
  %stale.0.lcssa = phi i32 [ 0, %if.then238.for.end266_crit_edge ], [ %spec.select, %for.inc264.for.end266_crit_edge ]
  %stale268 = getelementptr inbounds %struct.xfs_dir2_block_tail, ptr %btp.0, i32 0, i32 1
  %104 = ptrtoint ptr %stale268 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stale268, align 4
  %sub269 = sub i32 %97, %105
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %sub269)
  %cmp270.not = icmp eq i32 %count.0.lcssa, %sub269
  br i1 %cmp270.not, label %if.end275, label %__here273

__here273:                                        ; preds = %for.end266
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  br label %cleanup284

if.end275:                                        ; preds = %for.end266
  call void @__sanitizer_cov_trace_cmp4(i32 %stale.0.lcssa, i32 %105)
  %cmp277.not = icmp eq i32 %stale.0.lcssa, %105
  br i1 %cmp277.not, label %if.end275.cleanup284_crit_edge, label %__here280

if.end275.cleanup284_crit_edge:                   ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup284

__here280:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  br label %cleanup284

cleanup284:                                       ; preds = %__here280, %if.end275.cleanup284_crit_edge, %__here273, %__here261, %if.end230.cleanup284_crit_edge, %__here228, %__here215, %__here171, %__here163, %__here153, %__here148, %__here136, %__here123, %if.end112.cleanup284_crit_edge, %__here110, %__here102, %__here94, %__here79, %__here67, %__here53, %__here40, %__here28, %__here18, %__here13, %__here9, %__here
  %retval.3 = phi ptr [ blockaddress(@__xfs_dir3_data_check, %__here13), %__here13 ], [ blockaddress(@__xfs_dir3_data_check, %__here67), %__here67 ], [ blockaddress(@__xfs_dir3_data_check, %__here79), %__here79 ], [ blockaddress(@__xfs_dir3_data_check, %__here228), %__here228 ], [ blockaddress(@__xfs_dir3_data_check, %__here261), %__here261 ], [ blockaddress(@__xfs_dir3_data_check, %__here273), %__here273 ], [ blockaddress(@__xfs_dir3_data_check, %__here280), %__here280 ], [ blockaddress(@__xfs_dir3_data_check, %__here53), %__here53 ], [ blockaddress(@__xfs_dir3_data_check, %__here40), %__here40 ], [ blockaddress(@__xfs_dir3_data_check, %__here28), %__here28 ], [ blockaddress(@__xfs_dir3_data_check, %__here18), %__here18 ], [ blockaddress(@__xfs_dir3_data_check, %__here9), %__here9 ], [ blockaddress(@__xfs_dir3_data_check, %__here), %__here ], [ null, %if.end230.cleanup284_crit_edge ], [ null, %if.end275.cleanup284_crit_edge ], [ blockaddress(@__xfs_dir3_data_check, %__here136), %__here136 ], [ blockaddress(@__xfs_dir3_data_check, %__here123), %__here123 ], [ blockaddress(@__xfs_dir3_data_check, %__here110), %__here110 ], [ blockaddress(@__xfs_dir3_data_check, %__here102), %__here102 ], [ blockaddress(@__xfs_dir3_data_check, %__here94), %__here94 ], [ blockaddress(@__xfs_dir3_data_check, %__here153), %__here153 ], [ blockaddress(@__xfs_dir3_data_check, %__here215), %__here215 ], [ blockaddress(@__xfs_dir3_data_check, %__here171), %__here171 ], [ blockaddress(@__xfs_dir3_data_check, %__here163), %__here163 ], [ blockaddress(@__xfs_dir3_data_check, %__here148), %__here148 ], [ %call113, %if.end112.cleanup284_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dfp) #9
  ret ptr %retval.3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_dir3_data_end_offset(ptr nocapture noundef readonly %geo, ptr noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1480868403, label %entry.sw.bb_crit_edge
    i32 1480864322, label %entry.sw.bb_crit_edge7
    i32 1480868915, label %entry.sw.bb2_crit_edge
    i32 1480864324, label %entry.sw.bb2_crit_edge8
  ]

entry.sw.bb2_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7
  %3 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %geo, align 4
  %add.ptr.i = getelementptr i8, ptr %hdr, i32 %4
  %add.ptr1.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i, i32 -1
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %6
  %add.ptr.i6 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i, i32 %idx.neg.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hdr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge8
  %7 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %geo, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %sw.bb2 ], [ %sub.ptr.sub, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir2_data_freefind_verify(ptr noundef %hdr, ptr noundef %bf, ptr noundef %dup, ptr nocapture noundef writeonly %bf_ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bf_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bf_ent, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dup to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hdr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx1 = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 3
  %cmp124 = icmp ugt ptr %arrayidx1, %bf
  br i1 %cmp124, label %for.body.lr.ph, label %entry.xfs_dir2_data_freefind.exit_crit_edge

entry.xfs_dir2_data_freefind.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.body.lr.ph:                                   ; preds = %entry
  %length29 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dfp.0127 = phi ptr [ %bf, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %matched.0.off0126 = phi i1 [ false, %for.body.lr.ph ], [ %matched.2.off0, %for.inc.for.body_crit_edge ]
  %seenzero.0.off0125 = phi i1 [ false, %for.body.lr.ph ], [ %tobool.not, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %dfp.0127 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dfp.0127, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %for.body
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp.0127, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.then.for.inc_crit_edge, label %__here

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  br label %cleanup

if.end4:                                          ; preds = %for.body
  br i1 %seenzero.0.off0125, label %__here7, label %if.end9

__here7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv)
  %cmp11 = icmp eq i32 %sub.ptr.sub, %conv
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %length14 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp.0127, i32 0, i32 1
  %5 = ptrtoint ptr %length14 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %length14, align 2
  %7 = ptrtoint ptr %length29 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length29, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp18.not = icmp eq i16 %6, %8
  br i1 %cmp18.not, label %if.then13.if.end63_crit_edge, label %__here21

if.then13.if.end63_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

__here21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv)
  %cmp26 = icmp ult i32 %sub.ptr.sub, %conv
  br i1 %cmp26, label %if.then28, label %if.else39

if.then28:                                        ; preds = %if.else
  %9 = ptrtoint ptr %length29 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length29, align 2
  %conv30 = zext i16 %10 to i32
  %add = add i32 %sub.ptr.sub, %conv30
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp33 = icmp ugt i32 %add, %conv
  br i1 %cmp33, label %__here36, label %if.then28.if.end52_crit_edge

if.then28.if.end52_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

__here36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  br label %cleanup

if.else39:                                        ; preds = %if.else
  %length42 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp.0127, i32 0, i32 1
  %11 = ptrtoint ptr %length42 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length42, align 2
  %conv43 = zext i16 %12 to i32
  %add44 = add nuw nsw i32 %conv43, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %sub.ptr.sub)
  %cmp45 = icmp ugt i32 %add44, %sub.ptr.sub
  br i1 %cmp45, label %__here48, label %if.else39.if.end52_crit_edge

if.else39.if.end52_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

__here48:                                         ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  br label %cleanup

if.end52:                                         ; preds = %if.else39.if.end52_crit_edge, %if.then28.if.end52_crit_edge
  br i1 %matched.0.off0126, label %if.end52.if.end63_crit_edge, label %land.lhs.true

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end52
  %length54 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp.0127, i32 0, i32 1
  %13 = ptrtoint ptr %length54 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %length54, align 2
  %15 = ptrtoint ptr %length29 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length29, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp58 = icmp ult i16 %14, %16
  br i1 %cmp58, label %__here61, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

__here61:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true.if.end63_crit_edge, %if.end52.if.end63_crit_edge, %if.then13.if.end63_crit_edge
  %matched.1.off0116 = phi i1 [ false, %land.lhs.true.if.end63_crit_edge ], [ true, %if.end52.if.end63_crit_edge ], [ true, %if.then13.if.end63_crit_edge ]
  %cmp65 = icmp ugt ptr %dfp.0127, %bf
  br i1 %cmp65, label %land.lhs.true67, label %if.end63.for.inc_crit_edge

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true67:                                  ; preds = %if.end63
  %length69 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.0127, i32 -1, i32 1
  %17 = ptrtoint ptr %length69 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %length69, align 2
  %length72 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp.0127, i32 0, i32 1
  %19 = ptrtoint ptr %length72 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length72, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp74 = icmp ult i16 %18, %20
  br i1 %cmp74, label %__here77, label %land.lhs.true67.for.inc_crit_edge

land.lhs.true67.for.inc_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

__here77:                                         ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true67.for.inc_crit_edge, %if.end63.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %matched.2.off0 = phi i1 [ %matched.1.off0116, %land.lhs.true67.for.inc_crit_edge ], [ %matched.1.off0116, %if.end63.for.inc_crit_edge ], [ %matched.0.off0126, %if.then.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.0127, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %length.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length.i, align 2
  %length1.i = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 2, i32 1
  %23 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp.i = icmp uge i16 %22, %24
  %or.cond = and i1 %cmp124, %cmp.i
  br i1 %or.cond, label %for.end.for.body.i_crit_edge, label %for.end.xfs_dir2_data_freefind.exit_crit_edge

for.end.xfs_dir2_data_freefind.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %dfp.025.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %bf, %for.end.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %dfp.025.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dfp.025.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i = icmp eq i16 %26, 0
  br i1 %tobool.not.i, label %for.body.i.xfs_dir2_data_freefind.exit_crit_edge, label %if.end9.i

for.body.i.xfs_dir2_data_freefind.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

if.end9.i:                                        ; preds = %for.body.i
  %conv11.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv11.i)
  %cmp12.i = icmp eq i32 %sub.ptr.sub, %conv11.i
  br i1 %cmp12.i, label %if.end9.i.xfs_dir2_data_freefind.exit_crit_edge, label %for.inc.i

if.end9.i.xfs_dir2_data_freefind.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.inc.i:                                        ; preds = %if.end9.i
  %incdec.ptr.i = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.025.i, i32 1
  %cmp6.i = icmp ult ptr %incdec.ptr.i, %arrayidx1
  br i1 %cmp6.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xfs_dir2_data_freefind.exit_crit_edge

for.inc.i.xfs_dir2_data_freefind.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

xfs_dir2_data_freefind.exit:                      ; preds = %for.inc.i.xfs_dir2_data_freefind.exit_crit_edge, %if.end9.i.xfs_dir2_data_freefind.exit_crit_edge, %for.body.i.xfs_dir2_data_freefind.exit_crit_edge, %for.end.xfs_dir2_data_freefind.exit_crit_edge, %entry.xfs_dir2_data_freefind.exit_crit_edge
  %retval.0.i = phi ptr [ null, %for.end.xfs_dir2_data_freefind.exit_crit_edge ], [ null, %entry.xfs_dir2_data_freefind.exit_crit_edge ], [ null, %for.inc.i.xfs_dir2_data_freefind.exit_crit_edge ], [ %dfp.025.i, %if.end9.i.xfs_dir2_data_freefind.exit_crit_edge ], [ null, %for.body.i.xfs_dir2_data_freefind.exit_crit_edge ]
  %27 = ptrtoint ptr %bf_ent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i, ptr %bf_ent, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir2_data_freefind.exit, %__here77, %__here61, %__here48, %__here36, %__here21, %__here7, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dir2_data_freefind_verify, %__here7), %__here7 ], [ blockaddress(@xfs_dir2_data_freefind_verify, %__here21), %__here21 ], [ blockaddress(@xfs_dir2_data_freefind_verify, %__here77), %__here77 ], [ blockaddress(@xfs_dir2_data_freefind_verify, %__here61), %__here61 ], [ blockaddress(@xfs_dir2_data_freefind_verify, %__here36), %__here36 ], [ blockaddress(@xfs_dir2_data_freefind_verify, %__here48), %__here48 ], [ blockaddress(@xfs_dir2_data_freefind_verify, %__here), %__here ], [ null, %xfs_dir2_data_freefind.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_dir_ino(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_hashname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir3_data_check(ptr noundef %dp, ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__xfs_dir3_data_check(ptr noundef %dp, ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %4 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_length, align 8
  %shl = shl i32 %5, 9
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir3_data_check, i32 noundef 1, ptr noundef %1, ptr noundef %3, i32 noundef %shl, ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull %call) #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 286) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_data_read_verify(ptr noundef %bp) #2 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %7, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #9
  %8 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %5, i32 noundef 4) #9
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #9
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 8
  %sub.i.i.i = add i32 %shl.i, -8
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = xor i32 %call3.i.i.i, -1
  %12 = call i32 @llvm.bswap.i32(i32 %11) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i.not = icmp eq i32 %10, %12
  br i1 %cmp.i.i.not, label %land.lhs.true.if.else_crit_edge, label %__here

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_dir3_data_read_verify, %__here)) #9
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = call ptr @xfs_dir3_data_verify(ptr noundef %bp)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call2) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %__here
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_data_write_verify(ptr noundef %bp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_log_item, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %call = tail call ptr @xfs_dir3_data_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_lsn, align 8
  %lsn = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %lsn, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %14, 9
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %12, i32 noundef %shl.i) #9
  %16 = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_dir3_data_verify(ptr noundef %bp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %5) #9
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %uuid = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %3, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end7, label %__here5

__here5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  %blkno = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %blkno, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %10 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_maps.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %13)
  %cmp.not = icmp eq i64 %9, %13
  br i1 %cmp.not, label %if.end12, label %__here10

__here10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %lsn = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %lsn to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lsn, align 8
  %call13 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %1, i64 noundef %15) #9
  br i1 %call13, label %if.end12.if.end18_crit_edge, label %__here15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

__here15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  br label %cleanup

if.end18:                                         ; preds = %if.end12.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call19 = tail call ptr @__xfs_dir3_data_check(ptr noundef null, ptr noundef %bp)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %__here15, %__here10, %__here5, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dir3_data_verify, %__here10), %__here10 ], [ %call19, %if.end18 ], [ blockaddress(@xfs_dir3_data_verify, %__here15), %__here15 ], [ blockaddress(@xfs_dir3_data_verify, %__here5), %__here5 ], [ blockaddress(@xfs_dir3_data_verify, %__here), %__here ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir3_data_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, ptr noundef %bpp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, ptr noundef %bpp, i32 noundef 0, ptr noundef nonnull @xfs_dir3_data_buf_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpp, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc ptr @xfs_dir3_data_header_check(ptr noundef %dp, ptr noundef nonnull %1)
  %tobool3.not = icmp eq ptr %call2, null
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpp, align 4
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %3, ptr noundef nonnull %call2) #9
  %4 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %5) #9
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bpp, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %3, i32 noundef 11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then4 ], [ 0, %if.end5 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_read_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir3_data_header_check(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %bp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup3_crit_edge, label %if.then

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup3

if.then:                                          ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %owner = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %owner, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.not = icmp eq i64 %7, %9
  br i1 %cmp.not, label %if.then.cleanup3_crit_edge, label %__here

if.then.cleanup3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup3

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  br label %cleanup3

cleanup3:                                         ; preds = %__here, %if.then.cleanup3_crit_edge, %entry.cleanup3_crit_edge
  %retval.1 = phi ptr [ blockaddress(@xfs_dir3_data_header_check, %__here), %__here ], [ null, %entry.cleanup3_crit_edge ], [ null, %if.then.cleanup3_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir3_data_readahead(ptr noundef %dp, i32 noundef %bno, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_reada_buf(ptr noundef %dp, i32 noundef %bno, i32 noundef %flags, i32 noundef 0, ptr noundef nonnull @xfs_dir3_data_reada_buf_ops) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_reada_buf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dir2_data_freefind(ptr noundef %hdr, ptr noundef readonly %bf, ptr noundef %dup) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.ptr.lhs.cast = ptrtoint ptr %dup to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hdr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  %length1 = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 2, i32 1
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp ult i16 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %arrayidx5 = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 3
  %cmp624 = icmp ugt ptr %arrayidx5, %bf
  br i1 %cmp624, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dfp.025 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %bf, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %dfp.025 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dfp.025, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %conv11 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv11)
  %cmp12 = icmp eq i32 %sub.ptr.sub, %conv11
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %for.inc

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end9
  %incdec.ptr = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.025, i32 1
  %cmp6 = icmp ult ptr %incdec.ptr, %arrayidx5
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %for.body.cleanup_crit_edge ], [ %dfp.025, %if.end9.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dir2_data_freeinsert(ptr noundef %hdr, ptr noundef %dfp, ptr noundef %dup, ptr nocapture noundef writeonly %loghead) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %cond.false.critedge [
    i32 1480864324, label %entry.cond.end_crit_edge
    i32 1480864322, label %entry.cond.end_crit_edge73
    i32 1480868915, label %entry.cond.end_crit_edge74
    i32 1480868403, label %entry.cond.end_crit_edge75
  ]

entry.cond.end_crit_edge75:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge74:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge73:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge73, %entry.cond.end_crit_edge74, %entry.cond.end_crit_edge75
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length, align 2
  %sub.ptr.lhs.cast = ptrtoint ptr %dup to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hdr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i32 %sub.ptr.sub to i16
  %length12 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp, i32 0, i32 1
  %5 = ptrtoint ptr %length12 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %length12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp14 = icmp ugt i16 %4, %6
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 2
  %arrayidx17 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 1
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx17, align 2
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %arrayidx16, align 2
  %10 = ptrtoint ptr %dfp to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %dfp, align 2
  store i32 %11, ptr %arrayidx17, align 2
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %length25 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 1, i32 1
  %12 = ptrtoint ptr %length25 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %13)
  %cmp27 = icmp ugt i16 %4, %13
  br i1 %cmp27, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 1
  %arrayidx30 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 2
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx24, align 2
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %arrayidx30, align 2
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end
  %length38 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 2, i32 1
  %17 = ptrtoint ptr %length38 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %length38, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %18)
  %cmp40 = icmp ugt i16 %4, %18
  br i1 %cmp40, label %if.then42, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then42, %if.then29, %if.then
  %arrayidx37.sink = phi ptr [ %arrayidx37, %if.then42 ], [ %arrayidx24, %if.then29 ], [ %dfp, %if.then ]
  %length38.sink = phi ptr [ %length38, %if.then42 ], [ %length25, %if.then29 ], [ %length12, %if.then ]
  %19 = ptrtoint ptr %arrayidx37.sink to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %arrayidx37.sink, align 2
  %20 = ptrtoint ptr %length38.sink to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %4, ptr %length38.sink, align 2
  %21 = ptrtoint ptr %loghead to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %loghead, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end34.cleanup_crit_edge ], [ %arrayidx37.sink, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_data_freescan(ptr nocapture noundef readonly %mp, ptr noundef %hdr, ptr nocapture noundef writeonly %loghead) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_dir_geo, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %best_free.i = getelementptr inbounds %struct.xfs_dir3_data_hdr, ptr %hdr, i32 0, i32 1
  %bestfree.i = getelementptr inbounds %struct.xfs_dir2_data_hdr, ptr %hdr, i32 0, i32 1
  %retval.0.i = select i1 %tobool.i.not.i, ptr %bestfree.i, ptr %best_free.i
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_entry_offset, align 4
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %7, label %cond.false.critedge [
    i32 1480864324, label %entry.cond.end_crit_edge
    i32 1480868915, label %entry.cond.end_crit_edge88
    i32 1480864322, label %entry.cond.end_crit_edge89
    i32 1480868403, label %entry.cond.end_crit_edge90
  ]

entry.cond.end_crit_edge90:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge89:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge88:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 652) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge88, %entry.cond.end_crit_edge89, %entry.cond.end_crit_edge90
  %9 = call ptr @memset(ptr %retval.0.i, i32 0, i32 12)
  %10 = ptrtoint ptr %loghead to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %loghead, align 4
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %12, label %cond.end.while.end_crit_edge [
    i32 1480868403, label %cond.end.sw.bb.i_crit_edge
    i32 1480864322, label %cond.end.sw.bb.i_crit_edge91
    i32 1480868915, label %cond.end.sw.bb2.i_crit_edge
    i32 1480864324, label %cond.end.sw.bb2.i_crit_edge92
  ]

cond.end.sw.bb2.i_crit_edge92:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

cond.end.sw.bb2.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

cond.end.sw.bb.i_crit_edge91:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

sw.bb.i:                                          ; preds = %cond.end.sw.bb.i_crit_edge, %cond.end.sw.bb.i_crit_edge91
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %15
  %add.ptr1.i.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i, i32 -1
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr1.i.i, align 4
  %idx.neg.i.i = sub i32 0, %17
  %add.ptr.i6.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %hdr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %xfs_dir3_data_end_offset.exit

sw.bb2.i:                                         ; preds = %cond.end.sw.bb2.i_crit_edge, %cond.end.sw.bb2.i_crit_edge92
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  br label %xfs_dir3_data_end_offset.exit

xfs_dir3_data_end_offset.exit:                    ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i70 = phi i32 [ %19, %sw.bb2.i ], [ %sub.ptr.sub.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %retval.0.i70)
  %cmp1083 = icmp ult i32 %5, %retval.0.i70
  br i1 %cmp1083, label %while.body.lr.ph, label %xfs_dir3_data_end_offset.exit.while.end_crit_edge

xfs_dir3_data_end_offset.exit.while.end_crit_edge: ; preds = %xfs_dir3_data_end_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %xfs_dir3_data_end_offset.exit
  %length12.i = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 0, i32 1
  %length25.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1, i32 1
  %length38.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2, i32 1
  %arrayidx37.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %arrayidx24.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.084 = phi i32 [ %5, %while.body.lr.ph ], [ %offset.1, %cleanup.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %hdr, i32 %offset.084
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp12 = icmp eq i16 %21, -1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %length.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 -2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i, align 2
  %conv15 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.084, i32 %conv15)
  %cmp16 = icmp eq i32 %offset.084, %conv15
  br i1 %cmp16, label %if.then.cond.end26_crit_edge, label %cond.false25, !prof !56

if.then.cond.end26_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end26

cond.false25:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 670) #9
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %if.then.cond.end26_crit_edge
  %26 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdr, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %27, label %cond.false.critedge.i [
    i32 1480864324, label %cond.end26.cond.end.i_crit_edge
    i32 1480864322, label %cond.end26.cond.end.i_crit_edge93
    i32 1480868915, label %cond.end26.cond.end.i_crit_edge94
    i32 1480868403, label %cond.end26.cond.end.i_crit_edge95
  ]

cond.end26.cond.end.i_crit_edge95:                ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.end26.cond.end.i_crit_edge94:                ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.end26.cond.end.i_crit_edge93:                ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.end26.cond.end.i_crit_edge:                  ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.critedge.i:                            ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.critedge.i, %cond.end26.cond.end.i_crit_edge, %cond.end26.cond.end.i_crit_edge93, %cond.end26.cond.end.i_crit_edge94, %cond.end26.cond.end.i_crit_edge95
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length.i, align 2
  %conv.i75 = trunc i32 %offset.084 to i16
  %31 = ptrtoint ptr %length12.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %length12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp14.i = icmp ugt i16 %30, %32
  br i1 %cmp14.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx24.i, align 2
  %35 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %arrayidx37.i, align 2
  br label %cleanup.sink.split.i.sink.split

if.end.i:                                         ; preds = %cond.end.i
  %36 = ptrtoint ptr %length25.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length25.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %37)
  %cmp27.i = icmp ugt i16 %30, %37
  br i1 %cmp27.i, label %if.end.i.cleanup.sink.split.i.sink.split_crit_edge, label %if.end34.i

if.end.i.cleanup.sink.split.i.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.sink.split

if.end34.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %length38.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %length38.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %39)
  %cmp40.i = icmp ugt i16 %30, %39
  br i1 %cmp40.i, label %if.end34.i.cleanup.sink.split.i_crit_edge, label %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge

if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freeinsert.exit

if.end34.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i.sink.split:                  ; preds = %if.end.i.cleanup.sink.split.i.sink.split_crit_edge, %if.then.i
  %arrayidx24.i.sink = phi ptr [ %retval.0.i, %if.then.i ], [ %arrayidx24.i, %if.end.i.cleanup.sink.split.i.sink.split_crit_edge ]
  %arrayidx37.i.sink = phi ptr [ %arrayidx24.i, %if.then.i ], [ %arrayidx37.i, %if.end.i.cleanup.sink.split.i.sink.split_crit_edge ]
  %length38.sink.i.ph = phi ptr [ %length12.i, %if.then.i ], [ %length25.i, %if.end.i.cleanup.sink.split.i.sink.split_crit_edge ]
  %40 = ptrtoint ptr %arrayidx24.i.sink to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx24.i.sink, align 2
  %42 = ptrtoint ptr %arrayidx37.i.sink to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %arrayidx37.i.sink, align 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.i.sink.split, %if.end34.i.cleanup.sink.split.i_crit_edge
  %arrayidx37.sink.i = phi ptr [ %arrayidx37.i, %if.end34.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx24.i.sink, %cleanup.sink.split.i.sink.split ]
  %length38.sink.i = phi ptr [ %length38.i, %if.end34.i.cleanup.sink.split.i_crit_edge ], [ %length38.sink.i.ph, %cleanup.sink.split.i.sink.split ]
  %43 = ptrtoint ptr %arrayidx37.sink.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i75, ptr %arrayidx37.sink.i, align 2
  %44 = ptrtoint ptr %length38.sink.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %30, ptr %length38.sink.i, align 2
  %45 = ptrtoint ptr %loghead to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %loghead, align 4
  br label %xfs_dir2_data_freeinsert.exit

xfs_dir2_data_freeinsert.exit:                    ; preds = %cleanup.sink.split.i, %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %length.i, align 2
  %conv28 = zext i16 %47 to i32
  br label %cleanup

if.end:                                           ; preds = %while.body
  %namelen.i = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %48 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %namelen.i, align 8
  %conv.i77 = zext i8 %49 to i32
  %50 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %m_features.i.i, align 8
  %and.i.i.i = and i64 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.i.not.i.i, i32 11, i32 12
  %spec.select.i.i = add nsw i32 %conv.i77, -1
  %sub.i.i = add nsw i32 %spec.select.i.i, %spec.select.v.i.i
  %or.i.i = or i32 %sub.i.i, 7
  %add3.i.i = add nsw i32 %or.i.i, 1
  %add.ptr.i78 = getelementptr i8, ptr %add.ptr, i32 -2
  %add.ptr1.i79 = getelementptr i8, ptr %add.ptr.i78, i32 %add3.i.i
  %52 = ptrtoint ptr %add.ptr1.i79 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr1.i79, align 2
  %conv30 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.084, i32 %conv30)
  %cmp31 = icmp eq i32 %offset.084, %conv30
  br i1 %cmp31, label %if.end.cond.end41_crit_edge, label %cond.false40, !prof !56

if.end.cond.end41_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end41

cond.false40:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 680) #9
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %if.end.cond.end41_crit_edge
  %54 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %namelen.i, align 8
  %conv42 = zext i8 %55 to i32
  %56 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %m_features.i.i, align 8
  %and.i.i81 = and i64 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i81)
  %tobool.i.not.i82 = icmp eq i64 %and.i.i81, 0
  %spec.select.v.i = select i1 %tobool.i.not.i82, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv42, -1
  %sub.i = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add nsw i32 %or.i, 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end41, %xfs_dir2_data_freeinsert.exit
  %conv28.pn = phi i32 [ %conv28, %xfs_dir2_data_freeinsert.exit ], [ %add3.i, %cond.end41 ]
  %offset.1 = add i32 %conv28.pn, %offset.084
  %cmp10 = icmp ult i32 %offset.1, %retval.0.i70
  br i1 %cmp10, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %xfs_dir3_data_end_offset.exit.while.end_crit_edge, %cond.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir3_data_init(ptr nocapture noundef readonly %args, i32 noundef %blkno, ptr nocapture noundef writeonly %bpp) local_unnamed_addr #2 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !58
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %10 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %12 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %blkno, %sub.i
  %call4 = call i32 @xfs_da_get_buf(ptr noundef %1, ptr noundef %3, i32 noundef %shl.i, ptr noundef nonnull %bp, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 35
  %15 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xfs_dir3_data_buf_ops, ptr %b_ops, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %1, ptr noundef %14, i32 noundef 11) #9
  %16 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = call ptr @memset(ptr %19, i32 0, i32 48)
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1480868915, ptr %19, align 8
  %24 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bp, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_maps.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  %blkno9 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %19, i32 0, i32 2
  %30 = ptrtoint ptr %blkno9 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %blkno9, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_ino, align 8
  %owner = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %19, i32 0, i32 5
  %33 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %owner, align 8
  %uuid = getelementptr inbounds %struct.xfs_dir3_blk_hdr, ptr %19, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 54
  %34 = call ptr @memcpy(ptr %uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1480864324, ptr %19, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %36 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_features.i, align 8
  %and.i.i = and i64 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %best_free.i = getelementptr inbounds %struct.xfs_dir3_data_hdr, ptr %19, i32 0, i32 1
  %bestfree.i = getelementptr inbounds %struct.xfs_dir2_data_hdr, ptr %19, i32 0, i32 1
  %retval.0.i = select i1 %tobool.i.not.i, ptr %bestfree.i, ptr %best_free.i
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 15
  %38 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_entry_offset, align 4
  %conv = trunc i32 %39 to i16
  %40 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %retval.0.i, align 2
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 4
  %43 = load i32, ptr %data_entry_offset, align 4
  %sub = sub i32 %42, %43
  %conv14 = trunc i32 %sub to i16
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 0, i32 1
  %44 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv14, ptr %length, align 2
  %uglygep = getelementptr i8, ptr %retval.0.i, i32 4
  %45 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 0, ptr %uglygep, align 2
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bp, align 4
  %b_addr21 = getelementptr inbounds %struct.xfs_buf, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %b_addr21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_addr21, align 4
  %50 = load i32, ptr %data_entry_offset, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 %50
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %add.ptr, align 2
  %52 = load i16, ptr %length, align 2
  %length25 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %53 = ptrtoint ptr %length25 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %length25, align 2
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i32 %sub.ptr.sub to i16
  %conv.i68 = zext i16 %52 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %conv.i68
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  %54 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv26, ptr %add.ptr1.i, align 2
  %55 = load ptr, ptr %bp, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_addr.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %59, label %cond.false.critedge.i [
    i32 1480864324, label %if.end11.xfs_dir2_data_log_header.exit_crit_edge
    i32 1480868915, label %if.end11.xfs_dir2_data_log_header.exit_crit_edge76
    i32 1480864322, label %if.end11.xfs_dir2_data_log_header.exit_crit_edge77
    i32 1480868403, label %if.end11.xfs_dir2_data_log_header.exit_crit_edge78
  ]

if.end11.xfs_dir2_data_log_header.exit_crit_edge78: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_header.exit

if.end11.xfs_dir2_data_log_header.exit_crit_edge77: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_header.exit

if.end11.xfs_dir2_data_log_header.exit_crit_edge76: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_header.exit

if.end11.xfs_dir2_data_log_header.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_header.exit

cond.false.critedge.i:                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 793) #9
  br label %xfs_dir2_data_log_header.exit

xfs_dir2_data_log_header.exit:                    ; preds = %cond.false.critedge.i, %if.end11.xfs_dir2_data_log_header.exit_crit_edge, %if.end11.xfs_dir2_data_log_header.exit_crit_edge76, %if.end11.xfs_dir2_data_log_header.exit_crit_edge77, %if.end11.xfs_dir2_data_log_header.exit_crit_edge78
  %61 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %trans, align 4
  %63 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %args, align 8
  %data_entry_offset.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %data_entry_offset.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_entry_offset.i, align 4
  %sub.i69 = add i32 %66, -1
  call void @xfs_trans_log_buf(ptr noundef %62, ptr noundef %55, i32 noundef 0, i32 noundef %sub.i69) #9
  %67 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bp, align 4
  %b_addr.i70 = getelementptr inbounds %struct.xfs_buf, ptr %68, i32 0, i32 16
  %69 = ptrtoint ptr %b_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_addr.i70, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %72, label %cond.false.critedge.i71 [
    i32 1480864324, label %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge
    i32 1480868915, label %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge79
    i32 1480864322, label %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge80
    i32 1480868403, label %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge81
  ]

xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge81: ; preds = %xfs_dir2_data_log_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge80: ; preds = %xfs_dir2_data_log_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge79: ; preds = %xfs_dir2_data_log_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge: ; preds = %xfs_dir2_data_log_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

cond.false.critedge.i71:                          ; preds = %xfs_dir2_data_log_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_log_unused.exit:                    ; preds = %cond.false.critedge.i71, %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge, %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge79, %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge80, %xfs_dir2_data_log_header.exit.xfs_dir2_data_log_unused.exit_crit_edge81
  %74 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %trans, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  %add.ptr.i73 = getelementptr %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 2
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i73, i32 -1
  %sub.ptr.lhs.cast10.i = ptrtoint ptr %add.ptr9.i to i32
  %sub.ptr.sub12.i = sub i32 %sub.ptr.lhs.cast10.i, %sub.ptr.rhs.cast.i
  call void @xfs_trans_log_buf(ptr noundef %75, ptr noundef %68, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.ptr.sub12.i) #9
  %76 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans, align 4
  %78 = ptrtoint ptr %length25 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %length25, align 2
  %conv.i.i = zext i16 %79 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %conv.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -2
  %sub.ptr.lhs.cast14.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub16.i = sub i32 %sub.ptr.lhs.cast14.i, %sub.ptr.rhs.cast.i
  %sub.i74 = add i32 %sub.ptr.sub16.i, 1
  call void @xfs_trans_log_buf(ptr noundef %77, ptr noundef %68, i32 noundef %sub.ptr.sub16.i, i32 noundef %sub.i74) #9
  %80 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bp, align 4
  %82 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_dir2_data_log_unused.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_get_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_data_log_header(ptr nocapture noundef readonly %args, ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %cond.false.critedge [
    i32 1480864324, label %entry.cond.end_crit_edge
    i32 1480868915, label %entry.cond.end_crit_edge14
    i32 1480864322, label %entry.cond.end_crit_edge15
    i32 1480868403, label %entry.cond.end_crit_edge16
  ]

entry.cond.end_crit_edge16:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge15:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge14:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 793) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge14, %entry.cond.end_crit_edge15, %entry.cond.end_crit_edge16
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_entry_offset, align 4
  %sub = add i32 %10, -1
  tail call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %bp, i32 noundef 0, i32 noundef %sub) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_data_log_unused(ptr nocapture noundef readonly %args, ptr noundef %bp, ptr noundef %dup) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %cond.false.critedge [
    i32 1480864324, label %entry.cond.end_crit_edge
    i32 1480868915, label %entry.cond.end_crit_edge38
    i32 1480864322, label %entry.cond.end_crit_edge39
    i32 1480868403, label %entry.cond.end_crit_edge40
  ]

entry.cond.end_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge38:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge38, %entry.cond.end_crit_edge39, %entry.cond.end_crit_edge40
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dup to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 2
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 -1
  %sub.ptr.lhs.cast10 = ptrtoint ptr %add.ptr9 to i32
  %sub.ptr.sub12 = sub i32 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast
  tail call void @xfs_trans_log_buf(ptr noundef %6, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub12) #9
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %length.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %dup, i32 %conv.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  %sub.ptr.lhs.cast14 = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub16 = sub i32 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub16, 1
  tail call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %bp, i32 noundef %sub.ptr.sub16, i32 noundef %sub) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_data_log_entry(ptr nocapture noundef readonly %args, ptr noundef %bp, ptr noundef %dep) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %5, label %cond.false.critedge [
    i32 1480864324, label %entry.cond.end_crit_edge
    i32 1480868915, label %entry.cond.end_crit_edge20
    i32 1480864322, label %entry.cond.end_crit_edge21
    i32 1480868403, label %entry.cond.end_crit_edge22
  ]

entry.cond.end_crit_edge22:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge20:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 772) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge20, %entry.cond.end_crit_edge21, %entry.cond.end_crit_edge22
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dep to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %namelen.i = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %dep, i32 0, i32 1
  %9 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %namelen.i, align 8
  %conv.i = zext i8 %10 to i32
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %11 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.i.not.i.i, i32 11, i32 12
  %spec.select.i.i = add nsw i32 %conv.i, -1
  %sub.i.i = add nsw i32 %spec.select.i.i, %spec.select.v.i.i
  %or.i.i = or i32 %sub.i.i, 7
  %add3.i.i = add nsw i32 %or.i.i, 1
  %add.ptr.i = getelementptr i8, ptr %dep, i32 %add3.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  %add.ptr = getelementptr i16, ptr %add.ptr1.i, i32 1
  %sub.ptr.lhs.cast9 = ptrtoint ptr %add.ptr to i32
  %13 = xor i32 %sub.ptr.rhs.cast, -1
  %sub = add i32 %sub.ptr.lhs.cast9, %13
  tail call void @xfs_trans_log_buf(ptr noundef %8, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dir2_data_make_free(ptr nocapture noundef readonly %args, ptr noundef %bp, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef writeonly %needlogp, ptr nocapture noundef %needscanp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %entry.cond.false_crit_edge [
    i32 1480868403, label %entry.sw.bb.i_crit_edge
    i32 1480864322, label %entry.sw.bb.i_crit_edge559
    i32 1480868915, label %entry.sw.bb2.i_crit_edge
    i32 1480864324, label %entry.sw.bb2.i_crit_edge560
  ]

entry.sw.bb2.i_crit_edge560:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.sw.bb.i_crit_edge559:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge559
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %8
  %add.ptr1.i.i = getelementptr %struct.xfs_dir2_block_tail, ptr %add.ptr.i.i, i32 -1
  %9 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr1.i.i, align 4
  %idx.neg.i.i = sub i32 0, %10
  %add.ptr.i6.i = getelementptr %struct.xfs_dir2_leaf_entry, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %xfs_dir3_data_end_offset.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge560
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  br label %xfs_dir3_data_end_offset.exit

xfs_dir3_data_end_offset.exit:                    ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %12, %sw.bb2.i ], [ %sub.ptr.sub.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %xfs_dir3_data_end_offset.exit.cond.false_crit_edge, label %xfs_dir3_data_end_offset.exit.cond.end_crit_edge, !prof !57

xfs_dir3_data_end_offset.exit.cond.end_crit_edge: ; preds = %xfs_dir3_data_end_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

xfs_dir3_data_end_offset.exit.cond.false_crit_edge: ; preds = %xfs_dir3_data_end_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.false:                                       ; preds = %xfs_dir3_data_end_offset.exit.cond.false_crit_edge, %entry.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 858) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_dir3_data_end_offset.exit.cond.end_crit_edge
  %retval.0.i557 = phi i32 [ %retval.0.i, %xfs_dir3_data_end_offset.exit.cond.end_crit_edge ], [ 0, %cond.false ]
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 8
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_entry_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %offset)
  %cmp3 = icmp ult i32 %16, %offset
  br i1 %cmp3, label %if.then, label %cond.end.if.end10_crit_edge

cond.end.if.end10_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %add.ptr4 = getelementptr i16, ptr %add.ptr, i32 -1
  %17 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr4, align 2
  %conv = zext i16 %18 to i32
  %add.ptr5 = getelementptr i8, ptr %1, i32 %conv
  %19 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp7.not = icmp eq i16 %20, -1
  %spec.store.select = select i1 %cmp7.not, ptr %add.ptr5, ptr null
  br label %if.end10

if.end10:                                         ; preds = %if.then, %cond.end.if.end10_crit_edge
  %prevdup.0 = phi ptr [ %spec.store.select, %if.then ], [ null, %cond.end.if.end10_crit_edge ]
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i557)
  %cmp11 = icmp ult i32 %add, %retval.0.i557
  br i1 %cmp11, label %if.then13, label %if.end10.if.end23_crit_edge

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr14 = getelementptr i8, ptr %1, i32 %offset
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 %len
  %21 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp18.not = icmp eq i16 %22, -1
  %spec.store.select204 = select i1 %cmp18.not, ptr %add.ptr15, ptr null
  br label %if.end23

if.end23:                                         ; preds = %if.then13, %if.end10.if.end23_crit_edge
  %postdup.0 = phi ptr [ %spec.store.select204, %if.then13 ], [ null, %if.end10.if.end23_crit_edge ]
  %23 = ptrtoint ptr %needscanp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %needscanp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24 = icmp eq i32 %24, 0
  br i1 %cmp24, label %if.end23.cond.end34_crit_edge, label %cond.false33, !prof !56

if.end23.cond.end34_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end34

cond.false33:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 884) #9
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %if.end23.cond.end34_crit_edge
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %25 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dp, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %28, i32 0, i32 61
  %29 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %best_free.i = getelementptr inbounds %struct.xfs_dir3_data_hdr, ptr %1, i32 0, i32 1
  %bestfree.i = getelementptr inbounds %struct.xfs_dir2_data_hdr, ptr %1, i32 0, i32 1
  %retval.0.i322 = select i1 %tobool.i.not.i, ptr %bestfree.i, ptr %best_free.i
  %tobool36.not = icmp eq ptr %prevdup.0, null
  %tobool37.not = icmp eq ptr %postdup.0, null
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool37.not
  br i1 %or.cond, label %if.else139, label %if.then38

if.then38:                                        ; preds = %cond.end34
  %sub.ptr.lhs.cast.i323 = ptrtoint ptr %prevdup.0 to i32
  %sub.ptr.rhs.cast.i324 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i325 = sub i32 %sub.ptr.lhs.cast.i323, %sub.ptr.rhs.cast.i324
  %length.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %prevdup.0, i32 0, i32 1
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %length.i, align 2
  %length1.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2, i32 1
  %33 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp.i = icmp ult i16 %32, %34
  br i1 %cmp.i, label %if.then38.xfs_dir2_data_freefind.exit_crit_edge, label %for.cond.preheader.i

if.then38.xfs_dir2_data_freefind.exit_crit_edge:  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.cond.preheader.i:                             ; preds = %if.then38
  %arrayidx5.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 3
  %cmp624.i = icmp ugt ptr %arrayidx5.i, %retval.0.i322
  br i1 %cmp624.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.xfs_dir2_data_freefind.exit_crit_edge

for.cond.preheader.i.xfs_dir2_data_freefind.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %dfp.025.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %retval.0.i322, %for.cond.preheader.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %dfp.025.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dfp.025.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i = icmp eq i16 %36, 0
  br i1 %tobool.not.i, label %for.body.i.xfs_dir2_data_freefind.exit_crit_edge, label %if.end9.i

for.body.i.xfs_dir2_data_freefind.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

if.end9.i:                                        ; preds = %for.body.i
  %conv11.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i325, i32 %conv11.i)
  %cmp12.i = icmp eq i32 %sub.ptr.sub.i325, %conv11.i
  br i1 %cmp12.i, label %if.end9.i.xfs_dir2_data_freefind.exit_crit_edge, label %for.inc.i

if.end9.i.xfs_dir2_data_freefind.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.inc.i:                                        ; preds = %if.end9.i
  %incdec.ptr.i = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.025.i, i32 1
  %cmp6.i = icmp ult ptr %incdec.ptr.i, %arrayidx5.i
  br i1 %cmp6.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xfs_dir2_data_freefind.exit_crit_edge

for.inc.i.xfs_dir2_data_freefind.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

xfs_dir2_data_freefind.exit:                      ; preds = %for.inc.i.xfs_dir2_data_freefind.exit_crit_edge, %if.end9.i.xfs_dir2_data_freefind.exit_crit_edge, %for.body.i.xfs_dir2_data_freefind.exit_crit_edge, %for.cond.preheader.i.xfs_dir2_data_freefind.exit_crit_edge, %if.then38.xfs_dir2_data_freefind.exit_crit_edge
  %retval.0.i326 = phi ptr [ null, %if.then38.xfs_dir2_data_freefind.exit_crit_edge ], [ null, %for.cond.preheader.i.xfs_dir2_data_freefind.exit_crit_edge ], [ null, %for.inc.i.xfs_dir2_data_freefind.exit_crit_edge ], [ %dfp.025.i, %if.end9.i.xfs_dir2_data_freefind.exit_crit_edge ], [ null, %for.body.i.xfs_dir2_data_freefind.exit_crit_edge ]
  %sub.ptr.lhs.cast.i327 = ptrtoint ptr %postdup.0 to i32
  %sub.ptr.sub.i329 = sub i32 %sub.ptr.lhs.cast.i327, %sub.ptr.rhs.cast.i324
  %length.i330 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %postdup.0, i32 0, i32 1
  %37 = ptrtoint ptr %length.i330 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length.i330, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %34)
  %cmp.i332 = icmp ult i16 %38, %34
  br i1 %cmp.i332, label %xfs_dir2_data_freefind.exit.xfs_dir2_data_freefind.exit346_crit_edge, label %for.cond.preheader.i335

xfs_dir2_data_freefind.exit.xfs_dir2_data_freefind.exit346_crit_edge: ; preds = %xfs_dir2_data_freefind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit346

for.cond.preheader.i335:                          ; preds = %xfs_dir2_data_freefind.exit
  %arrayidx5.i333 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 3
  %cmp624.i334 = icmp ugt ptr %arrayidx5.i333, %retval.0.i322
  br i1 %cmp624.i334, label %for.cond.preheader.i335.for.body.i338_crit_edge, label %for.cond.preheader.i335.xfs_dir2_data_freefind.exit346_crit_edge

for.cond.preheader.i335.xfs_dir2_data_freefind.exit346_crit_edge: ; preds = %for.cond.preheader.i335
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit346

for.cond.preheader.i335.for.body.i338_crit_edge:  ; preds = %for.cond.preheader.i335
  br label %for.body.i338

for.body.i338:                                    ; preds = %for.inc.i344.for.body.i338_crit_edge, %for.cond.preheader.i335.for.body.i338_crit_edge
  %dfp.025.i336 = phi ptr [ %incdec.ptr.i342, %for.inc.i344.for.body.i338_crit_edge ], [ %retval.0.i322, %for.cond.preheader.i335.for.body.i338_crit_edge ]
  %39 = ptrtoint ptr %dfp.025.i336 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dfp.025.i336, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not.i337 = icmp eq i16 %40, 0
  br i1 %tobool.not.i337, label %for.body.i338.xfs_dir2_data_freefind.exit346_crit_edge, label %if.end9.i341

for.body.i338.xfs_dir2_data_freefind.exit346_crit_edge: ; preds = %for.body.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit346

if.end9.i341:                                     ; preds = %for.body.i338
  %conv11.i339 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i329, i32 %conv11.i339)
  %cmp12.i340 = icmp eq i32 %sub.ptr.sub.i329, %conv11.i339
  br i1 %cmp12.i340, label %if.end9.i341.xfs_dir2_data_freefind.exit346_crit_edge, label %for.inc.i344

if.end9.i341.xfs_dir2_data_freefind.exit346_crit_edge: ; preds = %if.end9.i341
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit346

for.inc.i344:                                     ; preds = %if.end9.i341
  %incdec.ptr.i342 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.025.i336, i32 1
  %cmp6.i343 = icmp ult ptr %incdec.ptr.i342, %arrayidx5.i333
  br i1 %cmp6.i343, label %for.inc.i344.for.body.i338_crit_edge, label %for.inc.i344.xfs_dir2_data_freefind.exit346_crit_edge

for.inc.i344.xfs_dir2_data_freefind.exit346_crit_edge: ; preds = %for.inc.i344
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit346

for.inc.i344.for.body.i338_crit_edge:             ; preds = %for.inc.i344
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i338

xfs_dir2_data_freefind.exit346:                   ; preds = %for.inc.i344.xfs_dir2_data_freefind.exit346_crit_edge, %if.end9.i341.xfs_dir2_data_freefind.exit346_crit_edge, %for.body.i338.xfs_dir2_data_freefind.exit346_crit_edge, %for.cond.preheader.i335.xfs_dir2_data_freefind.exit346_crit_edge, %xfs_dir2_data_freefind.exit.xfs_dir2_data_freefind.exit346_crit_edge
  %retval.0.i345 = phi ptr [ null, %xfs_dir2_data_freefind.exit.xfs_dir2_data_freefind.exit346_crit_edge ], [ null, %for.cond.preheader.i335.xfs_dir2_data_freefind.exit346_crit_edge ], [ null, %for.inc.i344.xfs_dir2_data_freefind.exit346_crit_edge ], [ %dfp.025.i336, %if.end9.i341.xfs_dir2_data_freefind.exit346_crit_edge ], [ null, %for.body.i338.xfs_dir2_data_freefind.exit346_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp42.not = icmp eq i16 %34, 0
  %41 = trunc i32 %len to i16
  %conv48 = add i16 %32, %41
  %add.i = add i16 %conv48, %38
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %add.i, ptr %length.i, align 2
  %conv49 = trunc i32 %sub.ptr.sub.i325 to i16
  %conv.i = zext i16 %add.i to i32
  %add.ptr.i = getelementptr i8, ptr %prevdup.0, i32 %conv.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  %43 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv49, ptr %add.ptr1.i, align 2
  %44 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_addr, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %47, label %cond.false.critedge.i [
    i32 1480864324, label %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge
    i32 1480868915, label %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge561
    i32 1480864322, label %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge562
    i32 1480868403, label %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge563
  ]

xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge563: ; preds = %xfs_dir2_data_freefind.exit346
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge562: ; preds = %xfs_dir2_data_freefind.exit346
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge561: ; preds = %xfs_dir2_data_freefind.exit346
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge: ; preds = %xfs_dir2_data_freefind.exit346
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

cond.false.critedge.i:                            ; preds = %xfs_dir2_data_freefind.exit346
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_log_unused.exit:                    ; preds = %cond.false.critedge.i, %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge, %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge561, %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge562, %xfs_dir2_data_freefind.exit346.xfs_dir2_data_log_unused.exit_crit_edge563
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %49 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans.i, align 4
  %sub.ptr.rhs.cast.i349 = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i350 = sub i32 %sub.ptr.lhs.cast.i323, %sub.ptr.rhs.cast.i349
  %add.ptr.i351 = getelementptr %struct.xfs_dir2_data_unused, ptr %prevdup.0, i32 0, i32 2
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i351, i32 -1
  %sub.ptr.lhs.cast10.i = ptrtoint ptr %add.ptr9.i to i32
  %sub.ptr.sub12.i = sub i32 %sub.ptr.lhs.cast10.i, %sub.ptr.rhs.cast.i349
  tail call void @xfs_trans_log_buf(ptr noundef %50, ptr noundef %bp, i32 noundef %sub.ptr.sub.i350, i32 noundef %sub.ptr.sub12.i) #9
  %51 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %trans.i, align 4
  %53 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %length.i, align 2
  %conv.i.i = zext i16 %54 to i32
  %add.ptr.i.i352 = getelementptr i8, ptr %prevdup.0, i32 %conv.i.i
  %add.ptr1.i.i353 = getelementptr i8, ptr %add.ptr.i.i352, i32 -2
  %sub.ptr.lhs.cast14.i = ptrtoint ptr %add.ptr1.i.i353 to i32
  %sub.ptr.sub16.i = sub i32 %sub.ptr.lhs.cast14.i, %sub.ptr.rhs.cast.i349
  %sub.i = add i32 %sub.ptr.sub16.i, 1
  tail call void @xfs_trans_log_buf(ptr noundef %52, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i, i32 noundef %sub.i) #9
  br i1 %cmp42.not, label %if.then52, label %xfs_dir2_data_log_unused.exit.if.end203_crit_edge

xfs_dir2_data_log_unused.exit.if.end203_crit_edge: ; preds = %xfs_dir2_data_log_unused.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then52:                                        ; preds = %xfs_dir2_data_log_unused.exit
  %tobool53.not = icmp ne ptr %retval.0.i326, null
  %tobool54 = icmp ne ptr %retval.0.i345, null
  %spec.select = and i1 %tobool53.not, %tobool54
  br i1 %spec.select, label %if.then52.cond.end63_crit_edge, label %cond.false62, !prof !56

if.then52.cond.end63_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

cond.false62:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 920) #9
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %if.then52.cond.end63_crit_edge
  %arrayidx64 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1
  %cmp65 = icmp eq ptr %retval.0.i326, %arrayidx64
  br i1 %cmp65, label %if.then67, label %cond.end63.if.end81_crit_edge

cond.end63.if.end81_crit_edge:                    ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then67:                                        ; preds = %cond.end63
  %cmp69 = icmp eq ptr %retval.0.i345, %retval.0.i322
  br i1 %cmp69, label %if.then67.if.end81_crit_edge, label %cond.false78, !prof !56

if.then67.if.end81_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

cond.false78:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 923) #9
  br label %if.end81

if.end81:                                         ; preds = %cond.false78, %if.then67.if.end81_crit_edge, %cond.end63.if.end81_crit_edge
  %dfp.0 = phi ptr [ %retval.0.i326, %cond.end63.if.end81_crit_edge ], [ %retval.0.i322, %if.then67.if.end81_crit_edge ], [ %retval.0.i322, %cond.false78 ]
  %dfp2.0 = phi ptr [ %retval.0.i345, %cond.end63.if.end81_crit_edge ], [ %retval.0.i326, %if.then67.if.end81_crit_edge ], [ %retval.0.i326, %cond.false78 ]
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i322, ptr noundef %dfp2.0, ptr noundef %needlogp)
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i322, ptr noundef %dfp.0, ptr noundef %needlogp)
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %56, label %cond.false.critedge.i354 [
    i32 1480864324, label %if.end81.cond.end.i_crit_edge
    i32 1480864322, label %if.end81.cond.end.i_crit_edge564
    i32 1480868915, label %if.end81.cond.end.i_crit_edge565
    i32 1480868403, label %if.end81.cond.end.i_crit_edge566
  ]

if.end81.cond.end.i_crit_edge566:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

if.end81.cond.end.i_crit_edge565:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

if.end81.cond.end.i_crit_edge564:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

if.end81.cond.end.i_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.critedge.i354:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.critedge.i354, %if.end81.cond.end.i_crit_edge, %if.end81.cond.end.i_crit_edge564, %if.end81.cond.end.i_crit_edge565, %if.end81.cond.end.i_crit_edge566
  %58 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %length.i, align 2
  %length12.i = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 0, i32 1
  %60 = ptrtoint ptr %length12.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %length12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp14.i = icmp ugt i16 %59, %61
  br i1 %cmp14.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %62 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %arrayidx64, align 2
  %64 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %arrayidx16.i, align 2
  %65 = ptrtoint ptr %retval.0.i322 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %retval.0.i322, align 2
  store i32 %66, ptr %arrayidx64, align 2
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %cond.end.i
  %length25.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1, i32 1
  %67 = ptrtoint ptr %length25.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %length25.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %68)
  %cmp27.i = icmp ugt i16 %59, %68
  br i1 %cmp27.i, label %if.then29.i, label %if.end34.i

if.then29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx30.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %69 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %arrayidx64, align 2
  %71 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %arrayidx30.i, align 2
  br label %cleanup.sink.split.i

if.end34.i:                                       ; preds = %if.end.i
  %72 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %73)
  %cmp40.i = icmp ugt i16 %59, %73
  br i1 %cmp40.i, label %if.then42.i, label %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge

if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freeinsert.exit

if.then42.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then42.i, %if.then29.i, %if.then.i
  %arrayidx37.sink.i = phi ptr [ %arrayidx37.i, %if.then42.i ], [ %arrayidx64, %if.then29.i ], [ %retval.0.i322, %if.then.i ]
  %length38.sink.i = phi ptr [ %length1.i, %if.then42.i ], [ %length25.i, %if.then29.i ], [ %length12.i, %if.then.i ]
  %74 = ptrtoint ptr %arrayidx37.sink.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv49, ptr %arrayidx37.sink.i, align 2
  %75 = ptrtoint ptr %length38.sink.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %59, ptr %length38.sink.i, align 2
  %76 = ptrtoint ptr %needlogp to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %needlogp, align 4
  br label %xfs_dir2_data_freeinsert.exit

xfs_dir2_data_freeinsert.exit:                    ; preds = %cleanup.sink.split.i, %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge
  %retval.0.i360 = phi ptr [ null, %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge ], [ %arrayidx37.sink.i, %cleanup.sink.split.i ]
  %cmp84 = icmp eq ptr %retval.0.i360, %retval.0.i322
  br i1 %cmp84, label %xfs_dir2_data_freeinsert.exit.cond.end94_crit_edge, label %cond.false93, !prof !56

xfs_dir2_data_freeinsert.exit.cond.end94_crit_edge: ; preds = %xfs_dir2_data_freeinsert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end94

cond.false93:                                     ; preds = %xfs_dir2_data_freeinsert.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 933) #9
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %xfs_dir2_data_freeinsert.exit.cond.end94_crit_edge
  %length95 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i360, i32 0, i32 1
  %77 = ptrtoint ptr %length95 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %length95, align 2
  %79 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp99 = icmp eq i16 %78, %80
  br i1 %cmp99, label %cond.end94.cond.end109_crit_edge, label %cond.false108, !prof !56

cond.end94.cond.end109_crit_edge:                 ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end109

cond.false108:                                    ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 934) #9
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false108, %cond.end94.cond.end109_crit_edge
  %length111 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i360, i32 1, i32 1
  %81 = ptrtoint ptr %length111 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %length111, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool112.not = icmp eq i16 %82, 0
  br i1 %tobool112.not, label %cond.end109.cond.end123_crit_edge, label %cond.false122, !prof !56

cond.end109.cond.end123_crit_edge:                ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end123

cond.false122:                                    ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 935) #9
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false122, %cond.end109.cond.end123_crit_edge
  %length125 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i360, i32 2, i32 1
  %83 = ptrtoint ptr %length125 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %length125, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool126.not = icmp eq i16 %84, 0
  br i1 %tobool126.not, label %cond.end123.if.end203_crit_edge, label %cond.false136, !prof !56

cond.end123.if.end203_crit_edge:                  ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

cond.false136:                                    ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 936) #9
  br label %if.end203

if.else139:                                       ; preds = %cond.end34
  br i1 %tobool36.not, label %if.else162, label %if.then141

if.then141:                                       ; preds = %if.else139
  %sub.ptr.lhs.cast.i361 = ptrtoint ptr %prevdup.0 to i32
  %sub.ptr.rhs.cast.i362 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i363 = sub i32 %sub.ptr.lhs.cast.i361, %sub.ptr.rhs.cast.i362
  %length.i364 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %prevdup.0, i32 0, i32 1
  %85 = ptrtoint ptr %length.i364 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %length.i364, align 2
  %length1.i365 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2, i32 1
  %87 = ptrtoint ptr %length1.i365 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %length1.i365, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %88)
  %cmp.i366 = icmp ult i16 %86, %88
  br i1 %cmp.i366, label %if.then141.xfs_dir2_data_freefind.exit380_crit_edge, label %for.cond.preheader.i369

if.then141.xfs_dir2_data_freefind.exit380_crit_edge: ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit380

for.cond.preheader.i369:                          ; preds = %if.then141
  %arrayidx5.i367 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 3
  %cmp624.i368 = icmp ugt ptr %arrayidx5.i367, %retval.0.i322
  br i1 %cmp624.i368, label %for.cond.preheader.i369.for.body.i372_crit_edge, label %for.cond.preheader.i369.xfs_dir2_data_freefind.exit380_crit_edge

for.cond.preheader.i369.xfs_dir2_data_freefind.exit380_crit_edge: ; preds = %for.cond.preheader.i369
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit380

for.cond.preheader.i369.for.body.i372_crit_edge:  ; preds = %for.cond.preheader.i369
  br label %for.body.i372

for.body.i372:                                    ; preds = %for.inc.i378.for.body.i372_crit_edge, %for.cond.preheader.i369.for.body.i372_crit_edge
  %dfp.025.i370 = phi ptr [ %incdec.ptr.i376, %for.inc.i378.for.body.i372_crit_edge ], [ %retval.0.i322, %for.cond.preheader.i369.for.body.i372_crit_edge ]
  %89 = ptrtoint ptr %dfp.025.i370 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %dfp.025.i370, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i371 = icmp eq i16 %90, 0
  br i1 %tobool.not.i371, label %for.body.i372.xfs_dir2_data_freefind.exit380_crit_edge, label %if.end9.i375

for.body.i372.xfs_dir2_data_freefind.exit380_crit_edge: ; preds = %for.body.i372
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit380

if.end9.i375:                                     ; preds = %for.body.i372
  %conv11.i373 = zext i16 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i363, i32 %conv11.i373)
  %cmp12.i374 = icmp eq i32 %sub.ptr.sub.i363, %conv11.i373
  br i1 %cmp12.i374, label %if.end9.i375.xfs_dir2_data_freefind.exit380_crit_edge, label %for.inc.i378

if.end9.i375.xfs_dir2_data_freefind.exit380_crit_edge: ; preds = %if.end9.i375
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit380

for.inc.i378:                                     ; preds = %if.end9.i375
  %incdec.ptr.i376 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.025.i370, i32 1
  %cmp6.i377 = icmp ult ptr %incdec.ptr.i376, %arrayidx5.i367
  br i1 %cmp6.i377, label %for.inc.i378.for.body.i372_crit_edge, label %for.inc.i378.xfs_dir2_data_freefind.exit380_crit_edge

for.inc.i378.xfs_dir2_data_freefind.exit380_crit_edge: ; preds = %for.inc.i378
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit380

for.inc.i378.for.body.i372_crit_edge:             ; preds = %for.inc.i378
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i372

xfs_dir2_data_freefind.exit380:                   ; preds = %for.inc.i378.xfs_dir2_data_freefind.exit380_crit_edge, %if.end9.i375.xfs_dir2_data_freefind.exit380_crit_edge, %for.body.i372.xfs_dir2_data_freefind.exit380_crit_edge, %for.cond.preheader.i369.xfs_dir2_data_freefind.exit380_crit_edge, %if.then141.xfs_dir2_data_freefind.exit380_crit_edge
  %retval.0.i379 = phi ptr [ null, %if.then141.xfs_dir2_data_freefind.exit380_crit_edge ], [ null, %for.cond.preheader.i369.xfs_dir2_data_freefind.exit380_crit_edge ], [ null, %for.inc.i378.xfs_dir2_data_freefind.exit380_crit_edge ], [ %dfp.025.i370, %if.end9.i375.xfs_dir2_data_freefind.exit380_crit_edge ], [ null, %for.body.i372.xfs_dir2_data_freefind.exit380_crit_edge ]
  %conv144 = trunc i32 %len to i16
  %add.i381 = add i16 %86, %conv144
  %91 = ptrtoint ptr %length.i364 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %add.i381, ptr %length.i364, align 2
  %conv148 = trunc i32 %sub.ptr.sub.i363 to i16
  %conv.i383 = zext i16 %add.i381 to i32
  %add.ptr.i384 = getelementptr i8, ptr %prevdup.0, i32 %conv.i383
  %add.ptr1.i385 = getelementptr i8, ptr %add.ptr.i384, i32 -2
  %92 = ptrtoint ptr %add.ptr1.i385 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv148, ptr %add.ptr1.i385, align 2
  %93 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %b_addr, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %96, label %cond.false.critedge.i387 [
    i32 1480864324, label %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge
    i32 1480868915, label %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge567
    i32 1480864322, label %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge568
    i32 1480868403, label %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge569
  ]

xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge569: ; preds = %xfs_dir2_data_freefind.exit380
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit404

xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge568: ; preds = %xfs_dir2_data_freefind.exit380
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit404

xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge567: ; preds = %xfs_dir2_data_freefind.exit380
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit404

xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge: ; preds = %xfs_dir2_data_freefind.exit380
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit404

cond.false.critedge.i387:                         ; preds = %xfs_dir2_data_freefind.exit380
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit404

xfs_dir2_data_log_unused.exit404:                 ; preds = %cond.false.critedge.i387, %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge, %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge567, %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge568, %xfs_dir2_data_freefind.exit380.xfs_dir2_data_log_unused.exit404_crit_edge569
  %trans.i388 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %98 = ptrtoint ptr %trans.i388 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %trans.i388, align 4
  %sub.ptr.rhs.cast.i390 = ptrtoint ptr %94 to i32
  %sub.ptr.sub.i391 = sub i32 %sub.ptr.lhs.cast.i361, %sub.ptr.rhs.cast.i390
  %add.ptr.i392 = getelementptr %struct.xfs_dir2_data_unused, ptr %prevdup.0, i32 0, i32 2
  %add.ptr9.i393 = getelementptr i8, ptr %add.ptr.i392, i32 -1
  %sub.ptr.lhs.cast10.i394 = ptrtoint ptr %add.ptr9.i393 to i32
  %sub.ptr.sub12.i395 = sub i32 %sub.ptr.lhs.cast10.i394, %sub.ptr.rhs.cast.i390
  tail call void @xfs_trans_log_buf(ptr noundef %99, ptr noundef %bp, i32 noundef %sub.ptr.sub.i391, i32 noundef %sub.ptr.sub12.i395) #9
  %100 = ptrtoint ptr %trans.i388 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %trans.i388, align 4
  %102 = ptrtoint ptr %length.i364 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %length.i364, align 2
  %conv.i.i397 = zext i16 %103 to i32
  %add.ptr.i.i398 = getelementptr i8, ptr %prevdup.0, i32 %conv.i.i397
  %add.ptr1.i.i399 = getelementptr i8, ptr %add.ptr.i.i398, i32 -2
  %sub.ptr.lhs.cast14.i400 = ptrtoint ptr %add.ptr1.i.i399 to i32
  %sub.ptr.sub16.i401 = sub i32 %sub.ptr.lhs.cast14.i400, %sub.ptr.rhs.cast.i390
  %sub.i402 = add i32 %sub.ptr.sub16.i401, 1
  tail call void @xfs_trans_log_buf(ptr noundef %101, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i401, i32 noundef %sub.i402) #9
  %tobool150.not = icmp eq ptr %retval.0.i379, null
  br i1 %tobool150.not, label %if.else153, label %if.then151

if.then151:                                       ; preds = %xfs_dir2_data_log_unused.exit404
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i322, ptr noundef nonnull %retval.0.i379, ptr noundef %needlogp)
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %1, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %105, label %cond.false.critedge.i405 [
    i32 1480864324, label %if.then151.cond.end.i413_crit_edge
    i32 1480864322, label %if.then151.cond.end.i413_crit_edge570
    i32 1480868915, label %if.then151.cond.end.i413_crit_edge571
    i32 1480868403, label %if.then151.cond.end.i413_crit_edge572
  ]

if.then151.cond.end.i413_crit_edge572:            ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i413

if.then151.cond.end.i413_crit_edge571:            ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i413

if.then151.cond.end.i413_crit_edge570:            ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i413

if.then151.cond.end.i413_crit_edge:               ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i413

cond.false.critedge.i405:                         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end.i413

cond.end.i413:                                    ; preds = %cond.false.critedge.i405, %if.then151.cond.end.i413_crit_edge, %if.then151.cond.end.i413_crit_edge570, %if.then151.cond.end.i413_crit_edge571, %if.then151.cond.end.i413_crit_edge572
  %107 = ptrtoint ptr %length.i364 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %length.i364, align 2
  %length12.i411 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 0, i32 1
  %109 = ptrtoint ptr %length12.i411 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %length12.i411, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %110)
  %cmp14.i412 = icmp ugt i16 %108, %110
  br i1 %cmp14.i412, label %if.then.i416, label %if.end.i419

if.then.i416:                                     ; preds = %cond.end.i413
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i414 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %arrayidx17.i415 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1
  %111 = ptrtoint ptr %arrayidx17.i415 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %arrayidx17.i415, align 2
  %113 = ptrtoint ptr %arrayidx16.i414 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %arrayidx16.i414, align 2
  %114 = ptrtoint ptr %retval.0.i322 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %retval.0.i322, align 2
  store i32 %115, ptr %arrayidx17.i415, align 2
  br label %cleanup.sink.split.i430

if.end.i419:                                      ; preds = %cond.end.i413
  %length25.i417 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1, i32 1
  %116 = ptrtoint ptr %length25.i417 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %length25.i417, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %117)
  %cmp27.i418 = icmp ugt i16 %108, %117
  br i1 %cmp27.i418, label %if.then29.i422, label %if.end34.i425

if.then29.i422:                                   ; preds = %if.end.i419
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24.i420 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1
  %arrayidx30.i421 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %118 = ptrtoint ptr %arrayidx24.i420 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx24.i420, align 2
  %120 = ptrtoint ptr %arrayidx30.i421 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %arrayidx30.i421, align 2
  br label %cleanup.sink.split.i430

if.end34.i425:                                    ; preds = %if.end.i419
  %121 = ptrtoint ptr %length1.i365 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %length1.i365, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %122)
  %cmp40.i424 = icmp ugt i16 %108, %122
  br i1 %cmp40.i424, label %if.then42.i427, label %if.end34.i425.if.end203_crit_edge

if.end34.i425.if.end203_crit_edge:                ; preds = %if.end34.i425
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then42.i427:                                   ; preds = %if.end34.i425
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i426 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  br label %cleanup.sink.split.i430

cleanup.sink.split.i430:                          ; preds = %if.then42.i427, %if.then29.i422, %if.then.i416
  %arrayidx37.sink.i428 = phi ptr [ %arrayidx37.i426, %if.then42.i427 ], [ %arrayidx24.i420, %if.then29.i422 ], [ %retval.0.i322, %if.then.i416 ]
  %length38.sink.i429 = phi ptr [ %length1.i365, %if.then42.i427 ], [ %length25.i417, %if.then29.i422 ], [ %length12.i411, %if.then.i416 ]
  %123 = ptrtoint ptr %arrayidx37.sink.i428 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv148, ptr %arrayidx37.sink.i428, align 2
  %124 = ptrtoint ptr %length38.sink.i429 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %108, ptr %length38.sink.i429, align 2
  %125 = ptrtoint ptr %needlogp to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %needlogp, align 4
  br label %if.end203

if.else153:                                       ; preds = %xfs_dir2_data_log_unused.exit404
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %length.i364 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %length.i364, align 2
  %128 = ptrtoint ptr %length1.i365 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %length1.i365, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %127, i16 %129)
  %cmp159 = icmp ugt i16 %127, %129
  br label %if.end203

if.else162:                                       ; preds = %if.else139
  br i1 %tobool37.not, label %if.else190, label %if.then164

if.then164:                                       ; preds = %if.else162
  %sub.ptr.lhs.cast.i433 = ptrtoint ptr %postdup.0 to i32
  %sub.ptr.rhs.cast.i434 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i435 = sub i32 %sub.ptr.lhs.cast.i433, %sub.ptr.rhs.cast.i434
  %length.i436 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %postdup.0, i32 0, i32 1
  %130 = ptrtoint ptr %length.i436 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %length.i436, align 2
  %length1.i437 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2, i32 1
  %132 = ptrtoint ptr %length1.i437 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %length1.i437, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %131, i16 %133)
  %cmp.i438 = icmp ult i16 %131, %133
  br i1 %cmp.i438, label %if.then164.xfs_dir2_data_freefind.exit452_crit_edge, label %for.cond.preheader.i441

if.then164.xfs_dir2_data_freefind.exit452_crit_edge: ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit452

for.cond.preheader.i441:                          ; preds = %if.then164
  %arrayidx5.i439 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 3
  %cmp624.i440 = icmp ugt ptr %arrayidx5.i439, %retval.0.i322
  br i1 %cmp624.i440, label %for.cond.preheader.i441.for.body.i444_crit_edge, label %for.cond.preheader.i441.xfs_dir2_data_freefind.exit452_crit_edge

for.cond.preheader.i441.xfs_dir2_data_freefind.exit452_crit_edge: ; preds = %for.cond.preheader.i441
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit452

for.cond.preheader.i441.for.body.i444_crit_edge:  ; preds = %for.cond.preheader.i441
  br label %for.body.i444

for.body.i444:                                    ; preds = %for.inc.i450.for.body.i444_crit_edge, %for.cond.preheader.i441.for.body.i444_crit_edge
  %dfp.025.i442 = phi ptr [ %incdec.ptr.i448, %for.inc.i450.for.body.i444_crit_edge ], [ %retval.0.i322, %for.cond.preheader.i441.for.body.i444_crit_edge ]
  %134 = ptrtoint ptr %dfp.025.i442 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %dfp.025.i442, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool.not.i443 = icmp eq i16 %135, 0
  br i1 %tobool.not.i443, label %for.body.i444.xfs_dir2_data_freefind.exit452_crit_edge, label %if.end9.i447

for.body.i444.xfs_dir2_data_freefind.exit452_crit_edge: ; preds = %for.body.i444
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit452

if.end9.i447:                                     ; preds = %for.body.i444
  %conv11.i445 = zext i16 %135 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i435, i32 %conv11.i445)
  %cmp12.i446 = icmp eq i32 %sub.ptr.sub.i435, %conv11.i445
  br i1 %cmp12.i446, label %if.end9.i447.xfs_dir2_data_freefind.exit452_crit_edge, label %for.inc.i450

if.end9.i447.xfs_dir2_data_freefind.exit452_crit_edge: ; preds = %if.end9.i447
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit452

for.inc.i450:                                     ; preds = %if.end9.i447
  %incdec.ptr.i448 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.025.i442, i32 1
  %cmp6.i449 = icmp ult ptr %incdec.ptr.i448, %arrayidx5.i439
  br i1 %cmp6.i449, label %for.inc.i450.for.body.i444_crit_edge, label %for.inc.i450.xfs_dir2_data_freefind.exit452_crit_edge

for.inc.i450.xfs_dir2_data_freefind.exit452_crit_edge: ; preds = %for.inc.i450
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freefind.exit452

for.inc.i450.for.body.i444_crit_edge:             ; preds = %for.inc.i450
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i444

xfs_dir2_data_freefind.exit452:                   ; preds = %for.inc.i450.xfs_dir2_data_freefind.exit452_crit_edge, %if.end9.i447.xfs_dir2_data_freefind.exit452_crit_edge, %for.body.i444.xfs_dir2_data_freefind.exit452_crit_edge, %for.cond.preheader.i441.xfs_dir2_data_freefind.exit452_crit_edge, %if.then164.xfs_dir2_data_freefind.exit452_crit_edge
  %retval.0.i451 = phi ptr [ null, %if.then164.xfs_dir2_data_freefind.exit452_crit_edge ], [ null, %for.cond.preheader.i441.xfs_dir2_data_freefind.exit452_crit_edge ], [ null, %for.inc.i450.xfs_dir2_data_freefind.exit452_crit_edge ], [ %dfp.025.i442, %if.end9.i447.xfs_dir2_data_freefind.exit452_crit_edge ], [ null, %for.body.i444.xfs_dir2_data_freefind.exit452_crit_edge ]
  %add.ptr166 = getelementptr i8, ptr %1, i32 %offset
  %136 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -1, ptr %add.ptr166, align 2
  %137 = ptrtoint ptr %length.i436 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %length.i436, align 2
  %139 = trunc i32 %len to i16
  %conv171 = add i16 %138, %139
  %length172 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr166, i32 0, i32 1
  %140 = ptrtoint ptr %length172 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv171, ptr %length172, align 2
  %conv176 = trunc i32 %offset to i16
  %conv.i454 = zext i16 %conv171 to i32
  %add.ptr.i455 = getelementptr i8, ptr %add.ptr166, i32 %conv.i454
  %add.ptr1.i456 = getelementptr i8, ptr %add.ptr.i455, i32 -2
  %141 = ptrtoint ptr %add.ptr1.i456 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv176, ptr %add.ptr1.i456, align 2
  %142 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %b_addr, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %145, label %cond.false.critedge.i458 [
    i32 1480864324, label %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge
    i32 1480868915, label %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge573
    i32 1480864322, label %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge574
    i32 1480868403, label %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge575
  ]

xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge575: ; preds = %xfs_dir2_data_freefind.exit452
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit475

xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge574: ; preds = %xfs_dir2_data_freefind.exit452
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit475

xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge573: ; preds = %xfs_dir2_data_freefind.exit452
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit475

xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge: ; preds = %xfs_dir2_data_freefind.exit452
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit475

cond.false.critedge.i458:                         ; preds = %xfs_dir2_data_freefind.exit452
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit475

xfs_dir2_data_log_unused.exit475:                 ; preds = %cond.false.critedge.i458, %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge, %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge573, %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge574, %xfs_dir2_data_freefind.exit452.xfs_dir2_data_log_unused.exit475_crit_edge575
  %trans.i459 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %147 = ptrtoint ptr %trans.i459 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %trans.i459, align 4
  %sub.ptr.lhs.cast.i460 = ptrtoint ptr %add.ptr166 to i32
  %sub.ptr.rhs.cast.i461 = ptrtoint ptr %143 to i32
  %sub.ptr.sub.i462 = sub i32 %sub.ptr.lhs.cast.i460, %sub.ptr.rhs.cast.i461
  %add.ptr.i463 = getelementptr %struct.xfs_dir2_data_unused, ptr %add.ptr166, i32 0, i32 2
  %add.ptr9.i464 = getelementptr i8, ptr %add.ptr.i463, i32 -1
  %sub.ptr.lhs.cast10.i465 = ptrtoint ptr %add.ptr9.i464 to i32
  %sub.ptr.sub12.i466 = sub i32 %sub.ptr.lhs.cast10.i465, %sub.ptr.rhs.cast.i461
  tail call void @xfs_trans_log_buf(ptr noundef %148, ptr noundef %bp, i32 noundef %sub.ptr.sub.i462, i32 noundef %sub.ptr.sub12.i466) #9
  %149 = ptrtoint ptr %trans.i459 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %trans.i459, align 4
  %151 = ptrtoint ptr %length172 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %length172, align 2
  %conv.i.i468 = zext i16 %152 to i32
  %add.ptr.i.i469 = getelementptr i8, ptr %add.ptr166, i32 %conv.i.i468
  %add.ptr1.i.i470 = getelementptr i8, ptr %add.ptr.i.i469, i32 -2
  %sub.ptr.lhs.cast14.i471 = ptrtoint ptr %add.ptr1.i.i470 to i32
  %sub.ptr.sub16.i472 = sub i32 %sub.ptr.lhs.cast14.i471, %sub.ptr.rhs.cast.i461
  %sub.i473 = add i32 %sub.ptr.sub16.i472, 1
  tail call void @xfs_trans_log_buf(ptr noundef %150, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i472, i32 noundef %sub.i473) #9
  %tobool178.not = icmp eq ptr %retval.0.i451, null
  br i1 %tobool178.not, label %if.else181, label %if.then179

if.then179:                                       ; preds = %xfs_dir2_data_log_unused.exit475
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i322, ptr noundef nonnull %retval.0.i451, ptr noundef %needlogp)
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %1, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %154, label %cond.false.critedge.i476 [
    i32 1480864324, label %if.then179.cond.end.i484_crit_edge
    i32 1480864322, label %if.then179.cond.end.i484_crit_edge576
    i32 1480868915, label %if.then179.cond.end.i484_crit_edge577
    i32 1480868403, label %if.then179.cond.end.i484_crit_edge578
  ]

if.then179.cond.end.i484_crit_edge578:            ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i484

if.then179.cond.end.i484_crit_edge577:            ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i484

if.then179.cond.end.i484_crit_edge576:            ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i484

if.then179.cond.end.i484_crit_edge:               ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i484

cond.false.critedge.i476:                         ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end.i484

cond.end.i484:                                    ; preds = %cond.false.critedge.i476, %if.then179.cond.end.i484_crit_edge, %if.then179.cond.end.i484_crit_edge576, %if.then179.cond.end.i484_crit_edge577, %if.then179.cond.end.i484_crit_edge578
  %156 = ptrtoint ptr %length172 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %length172, align 2
  %length12.i482 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 0, i32 1
  %158 = ptrtoint ptr %length12.i482 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %length12.i482, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %157, i16 %159)
  %cmp14.i483 = icmp ugt i16 %157, %159
  br i1 %cmp14.i483, label %if.then.i487, label %if.end.i490

if.then.i487:                                     ; preds = %cond.end.i484
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i485 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %arrayidx17.i486 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1
  %160 = ptrtoint ptr %arrayidx17.i486 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %arrayidx17.i486, align 2
  %162 = ptrtoint ptr %arrayidx16.i485 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %arrayidx16.i485, align 2
  %163 = ptrtoint ptr %retval.0.i322 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %retval.0.i322, align 2
  store i32 %164, ptr %arrayidx17.i486, align 2
  br label %cleanup.sink.split.i501

if.end.i490:                                      ; preds = %cond.end.i484
  %length25.i488 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1, i32 1
  %165 = ptrtoint ptr %length25.i488 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %length25.i488, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %157, i16 %166)
  %cmp27.i489 = icmp ugt i16 %157, %166
  br i1 %cmp27.i489, label %if.then29.i493, label %if.end34.i496

if.then29.i493:                                   ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24.i491 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1
  %arrayidx30.i492 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %167 = ptrtoint ptr %arrayidx24.i491 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %arrayidx24.i491, align 2
  %169 = ptrtoint ptr %arrayidx30.i492 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %168, ptr %arrayidx30.i492, align 2
  br label %cleanup.sink.split.i501

if.end34.i496:                                    ; preds = %if.end.i490
  %170 = ptrtoint ptr %length1.i437 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %length1.i437, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %157, i16 %171)
  %cmp40.i495 = icmp ugt i16 %157, %171
  br i1 %cmp40.i495, label %if.then42.i498, label %if.end34.i496.if.end203_crit_edge

if.end34.i496.if.end203_crit_edge:                ; preds = %if.end34.i496
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then42.i498:                                   ; preds = %if.end34.i496
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i497 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  br label %cleanup.sink.split.i501

cleanup.sink.split.i501:                          ; preds = %if.then42.i498, %if.then29.i493, %if.then.i487
  %arrayidx37.sink.i499 = phi ptr [ %arrayidx37.i497, %if.then42.i498 ], [ %arrayidx24.i491, %if.then29.i493 ], [ %retval.0.i322, %if.then.i487 ]
  %length38.sink.i500 = phi ptr [ %length1.i437, %if.then42.i498 ], [ %length25.i488, %if.then29.i493 ], [ %length12.i482, %if.then.i487 ]
  %172 = ptrtoint ptr %arrayidx37.sink.i499 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv176, ptr %arrayidx37.sink.i499, align 2
  %173 = ptrtoint ptr %length38.sink.i500 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %157, ptr %length38.sink.i500, align 2
  %174 = ptrtoint ptr %needlogp to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %needlogp, align 4
  br label %if.end203

if.else181:                                       ; preds = %xfs_dir2_data_log_unused.exit475
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %length172 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %length172, align 2
  %177 = ptrtoint ptr %length1.i437 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %length1.i437, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %176, i16 %178)
  %cmp187 = icmp ugt i16 %176, %178
  br label %if.end203

if.else190:                                       ; preds = %if.else162
  %add.ptr191 = getelementptr i8, ptr %1, i32 %offset
  %179 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %add.ptr191, align 2
  %conv193 = trunc i32 %len to i16
  %length194 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr191, i32 0, i32 1
  %180 = ptrtoint ptr %length194 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv193, ptr %length194, align 2
  %conv198 = trunc i32 %offset to i16
  %conv.i505 = and i32 %len, 65535
  %add.ptr.i506 = getelementptr i8, ptr %add.ptr191, i32 %conv.i505
  %add.ptr1.i507 = getelementptr i8, ptr %add.ptr.i506, i32 -2
  %181 = ptrtoint ptr %add.ptr1.i507 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv198, ptr %add.ptr1.i507, align 2
  %182 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %b_addr, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %186 = zext i32 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %185, label %cond.false.critedge.i509 [
    i32 1480864324, label %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge
    i32 1480868915, label %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge579
    i32 1480864322, label %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge580
    i32 1480868403, label %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge581
  ]

if.else190.xfs_dir2_data_log_unused.exit526_crit_edge581: ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit526

if.else190.xfs_dir2_data_log_unused.exit526_crit_edge580: ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit526

if.else190.xfs_dir2_data_log_unused.exit526_crit_edge579: ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit526

if.else190.xfs_dir2_data_log_unused.exit526_crit_edge: ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit526

cond.false.critedge.i509:                         ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit526

xfs_dir2_data_log_unused.exit526:                 ; preds = %cond.false.critedge.i509, %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge, %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge579, %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge580, %if.else190.xfs_dir2_data_log_unused.exit526_crit_edge581
  %trans.i510 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %187 = ptrtoint ptr %trans.i510 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %trans.i510, align 4
  %sub.ptr.lhs.cast.i511 = ptrtoint ptr %add.ptr191 to i32
  %sub.ptr.rhs.cast.i512 = ptrtoint ptr %183 to i32
  %sub.ptr.sub.i513 = sub i32 %sub.ptr.lhs.cast.i511, %sub.ptr.rhs.cast.i512
  %add.ptr.i514 = getelementptr %struct.xfs_dir2_data_unused, ptr %add.ptr191, i32 0, i32 2
  %add.ptr9.i515 = getelementptr i8, ptr %add.ptr.i514, i32 -1
  %sub.ptr.lhs.cast10.i516 = ptrtoint ptr %add.ptr9.i515 to i32
  %sub.ptr.sub12.i517 = sub i32 %sub.ptr.lhs.cast10.i516, %sub.ptr.rhs.cast.i512
  tail call void @xfs_trans_log_buf(ptr noundef %188, ptr noundef %bp, i32 noundef %sub.ptr.sub.i513, i32 noundef %sub.ptr.sub12.i517) #9
  %189 = ptrtoint ptr %trans.i510 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %trans.i510, align 4
  %191 = ptrtoint ptr %length194 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %length194, align 2
  %conv.i.i519 = zext i16 %192 to i32
  %add.ptr.i.i520 = getelementptr i8, ptr %add.ptr191, i32 %conv.i.i519
  %add.ptr1.i.i521 = getelementptr i8, ptr %add.ptr.i.i520, i32 -2
  %sub.ptr.lhs.cast14.i522 = ptrtoint ptr %add.ptr1.i.i521 to i32
  %sub.ptr.sub16.i523 = sub i32 %sub.ptr.lhs.cast14.i522, %sub.ptr.rhs.cast.i512
  %sub.i524 = add i32 %sub.ptr.sub16.i523, 1
  tail call void @xfs_trans_log_buf(ptr noundef %190, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i523, i32 noundef %sub.i524) #9
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %1, align 4
  %195 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %194, label %cond.false.critedge.i527 [
    i32 1480864324, label %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge
    i32 1480864322, label %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge582
    i32 1480868915, label %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge583
    i32 1480868403, label %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge584
  ]

xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge584: ; preds = %xfs_dir2_data_log_unused.exit526
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i535

xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge583: ; preds = %xfs_dir2_data_log_unused.exit526
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i535

xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge582: ; preds = %xfs_dir2_data_log_unused.exit526
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i535

xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge: ; preds = %xfs_dir2_data_log_unused.exit526
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i535

cond.false.critedge.i527:                         ; preds = %xfs_dir2_data_log_unused.exit526
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end.i535

cond.end.i535:                                    ; preds = %cond.false.critedge.i527, %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge, %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge582, %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge583, %xfs_dir2_data_log_unused.exit526.cond.end.i535_crit_edge584
  %196 = ptrtoint ptr %length194 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %length194, align 2
  %length12.i533 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 0, i32 1
  %198 = ptrtoint ptr %length12.i533 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %length12.i533, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %197, i16 %199)
  %cmp14.i534 = icmp ugt i16 %197, %199
  br i1 %cmp14.i534, label %if.then.i538, label %if.end.i541

if.then.i538:                                     ; preds = %cond.end.i535
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i536 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %arrayidx17.i537 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1
  %200 = ptrtoint ptr %arrayidx17.i537 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %arrayidx17.i537, align 2
  %202 = ptrtoint ptr %arrayidx16.i536 to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %201, ptr %arrayidx16.i536, align 2
  %203 = ptrtoint ptr %retval.0.i322 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %retval.0.i322, align 2
  store i32 %204, ptr %arrayidx17.i537, align 2
  br label %cleanup.sink.split.i552

if.end.i541:                                      ; preds = %cond.end.i535
  %length25.i539 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1, i32 1
  %205 = ptrtoint ptr %length25.i539 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %length25.i539, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %197, i16 %206)
  %cmp27.i540 = icmp ugt i16 %197, %206
  br i1 %cmp27.i540, label %if.then29.i544, label %if.end34.i547

if.then29.i544:                                   ; preds = %if.end.i541
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24.i542 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 1
  %arrayidx30.i543 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  %207 = ptrtoint ptr %arrayidx24.i542 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %arrayidx24.i542, align 2
  %209 = ptrtoint ptr %arrayidx30.i543 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 %208, ptr %arrayidx30.i543, align 2
  br label %cleanup.sink.split.i552

if.end34.i547:                                    ; preds = %if.end.i541
  %length38.i545 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2, i32 1
  %210 = ptrtoint ptr %length38.i545 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %length38.i545, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %197, i16 %211)
  %cmp40.i546 = icmp ugt i16 %197, %211
  br i1 %cmp40.i546, label %if.then42.i549, label %if.end34.i547.if.end203_crit_edge

if.end34.i547.if.end203_crit_edge:                ; preds = %if.end34.i547
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then42.i549:                                   ; preds = %if.end34.i547
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i548 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i322, i32 2
  br label %cleanup.sink.split.i552

cleanup.sink.split.i552:                          ; preds = %if.then42.i549, %if.then29.i544, %if.then.i538
  %arrayidx37.sink.i550 = phi ptr [ %arrayidx37.i548, %if.then42.i549 ], [ %arrayidx24.i542, %if.then29.i544 ], [ %retval.0.i322, %if.then.i538 ]
  %length38.sink.i551 = phi ptr [ %length38.i545, %if.then42.i549 ], [ %length25.i539, %if.then29.i544 ], [ %length12.i533, %if.then.i538 ]
  %212 = ptrtoint ptr %arrayidx37.sink.i550 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv198, ptr %arrayidx37.sink.i550, align 2
  %213 = ptrtoint ptr %length38.sink.i551 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %197, ptr %length38.sink.i551, align 2
  %214 = ptrtoint ptr %needlogp to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %needlogp, align 4
  br label %if.end203

if.end203:                                        ; preds = %cleanup.sink.split.i552, %if.end34.i547.if.end203_crit_edge, %if.else181, %cleanup.sink.split.i501, %if.end34.i496.if.end203_crit_edge, %if.else153, %cleanup.sink.split.i430, %if.end34.i425.if.end203_crit_edge, %cond.false136, %cond.end123.if.end203_crit_edge, %xfs_dir2_data_log_unused.exit.if.end203_crit_edge
  %needscan.0.shrunk = phi i1 [ %cmp159, %if.else153 ], [ %cmp187, %if.else181 ], [ false, %cond.false136 ], [ false, %cond.end123.if.end203_crit_edge ], [ true, %xfs_dir2_data_log_unused.exit.if.end203_crit_edge ], [ false, %if.end34.i425.if.end203_crit_edge ], [ false, %cleanup.sink.split.i430 ], [ false, %if.end34.i496.if.end203_crit_edge ], [ false, %cleanup.sink.split.i501 ], [ false, %if.end34.i547.if.end203_crit_edge ], [ false, %cleanup.sink.split.i552 ]
  %needscan.0 = zext i1 %needscan.0.shrunk to i32
  %215 = ptrtoint ptr %needscanp to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %needscan.0, ptr %needscanp, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_dir2_data_freeremove(ptr nocapture noundef readonly %hdr, ptr noundef %bf, ptr noundef readnone %dfp, ptr nocapture noundef writeonly %loghead) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %cond.false.critedge [
    i32 1480864324, label %entry.cond.end_crit_edge
    i32 1480864322, label %entry.cond.end_crit_edge49
    i32 1480868915, label %entry.cond.end_crit_edge50
    i32 1480868403, label %entry.cond.end_crit_edge51
  ]

entry.cond.end_crit_edge51:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge50:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 607) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge49, %entry.cond.end_crit_edge50, %entry.cond.end_crit_edge51
  %cmp9 = icmp eq ptr %dfp, %bf
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 1
  %3 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %arrayidx11, align 2
  %5 = ptrtoint ptr %dfp to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %dfp, align 2
  %arrayidx13 = getelementptr %struct.xfs_dir2_data_free, ptr %dfp, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx13, align 2
  store i32 %7, ptr %arrayidx11, align 2
  br label %if.end31

if.else:                                          ; preds = %cond.end
  %arrayidx14 = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 1
  %cmp15 = icmp eq ptr %arrayidx14, %dfp
  %arrayidx18 = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 2
  br i1 %cmp15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx18, align 2
  %10 = ptrtoint ptr %dfp to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %dfp, align 2
  br label %if.end31

if.else19:                                        ; preds = %if.else
  %cmp21 = icmp eq ptr %arrayidx18, %dfp
  br i1 %cmp21, label %if.else19.if.end31_crit_edge, label %cond.false29, !prof !56

if.else19.if.end31_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

cond.false29:                                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 625) #9
  br label %if.end31

if.end31:                                         ; preds = %cond.false29, %if.else19.if.end31_crit_edge, %if.then16, %if.then
  %arrayidx32 = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 2
  %length = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 2, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %length, align 2
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %arrayidx32, align 2
  %13 = ptrtoint ptr %loghead to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %loghead, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_data_use_free(ptr nocapture noundef readonly %args, ptr noundef %bp, ptr noundef %dup, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef writeonly %needlogp, ptr nocapture noundef %needscanp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %call = tail call fastcc ptr @xfs_dir2_data_check_free(ptr noundef %1, ptr noundef %dup, i32 noundef %offset, i32 noundef %len)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.corrupt_crit_edge

entry.corrupt_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %corrupt

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  %conv = zext i16 %3 to i32
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %best_free.i = getelementptr inbounds %struct.xfs_dir3_data_hdr, ptr %1, i32 0, i32 1
  %bestfree.i = getelementptr inbounds %struct.xfs_dir2_data_hdr, ptr %1, i32 0, i32 1
  %retval.0.i = select i1 %tobool.i.not.i, ptr %bestfree.i, ptr %best_free.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dup to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %length1.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2, i32 1
  %10 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %11)
  %cmp.i = icmp ult i16 %3, %11
  br i1 %cmp.i, label %if.end.lor.rhs_crit_edge, label %for.cond.preheader.i

if.end.lor.rhs_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

for.cond.preheader.i:                             ; preds = %if.end
  %arrayidx5.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 3
  %cmp624.i = icmp ugt ptr %arrayidx5.i, %retval.0.i
  br i1 %cmp624.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.lor.rhs_crit_edge

for.cond.preheader.i.lor.rhs_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %dfp.025.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %retval.0.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %dfp.025.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dfp.025.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %for.body.i.lor.rhs_crit_edge, label %if.end9.i

for.body.i.lor.rhs_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

if.end9.i:                                        ; preds = %for.body.i
  %conv11.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv11.i)
  %cmp12.i = icmp eq i32 %sub.ptr.sub.i, %conv11.i
  br i1 %cmp12.i, label %xfs_dir2_data_freefind.exit, label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i
  %incdec.ptr.i = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.025.i, i32 1
  %cmp6.i = icmp ult ptr %incdec.ptr.i, %arrayidx5.i
  br i1 %cmp6.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lor.rhs_crit_edge

for.inc.i.lor.rhs_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

xfs_dir2_data_freefind.exit:                      ; preds = %if.end9.i
  %tobool3.not = icmp eq ptr %dfp.025.i, null
  br i1 %tobool3.not, label %xfs_dir2_data_freefind.exit.lor.rhs_crit_edge, label %xfs_dir2_data_freefind.exit.cond.end_crit_edge

xfs_dir2_data_freefind.exit.cond.end_crit_edge:   ; preds = %xfs_dir2_data_freefind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

xfs_dir2_data_freefind.exit.lor.rhs_crit_edge:    ; preds = %xfs_dir2_data_freefind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %xfs_dir2_data_freefind.exit.lor.rhs_crit_edge, %for.inc.i.lor.rhs_crit_edge, %for.body.i.lor.rhs_crit_edge, %for.cond.preheader.i.lor.rhs_crit_edge, %if.end.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %11)
  %cmp.not = icmp ugt i16 %3, %11
  br i1 %cmp.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !57

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1083) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %xfs_dir2_data_freefind.exit.cond.end_crit_edge
  %tobool3.not372 = phi i1 [ false, %xfs_dir2_data_freefind.exit.cond.end_crit_edge ], [ true, %lor.rhs.cond.end_crit_edge ], [ true, %cond.false ]
  %retval.0.i258370 = phi ptr [ %dfp.025.i, %xfs_dir2_data_freefind.exit.cond.end_crit_edge ], [ null, %lor.rhs.cond.end_crit_edge ], [ null, %cond.false ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %offset)
  %cmp9 = icmp eq i32 %sub.ptr.sub.i, %offset
  %add.ptr = getelementptr i8, ptr %dup, i32 %conv
  %sub.ptr.lhs.cast11 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub13 = sub i32 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast.i
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub13, i32 %add)
  %cmp14 = icmp eq i32 %sub.ptr.sub13, %add
  %14 = ptrtoint ptr %needscanp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %needscanp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16 = icmp eq i32 %15, 0
  br i1 %cmp16, label %cond.end.cond.end26_crit_edge, label %cond.false25, !prof !56

cond.end.cond.end26_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1089) #9
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.end.cond.end26_crit_edge
  %16 = select i1 %cmp9, i1 %cmp14, i1 false
  br i1 %16, label %if.then29, label %if.else

if.then29:                                        ; preds = %cond.end26
  br i1 %tobool3.not372, label %if.then29.if.end129_crit_edge, label %if.then31

if.then29.if.end129_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then31:                                        ; preds = %if.then29
  %arrayidx32 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp35.not = icmp eq i16 %18, 0
  br i1 %cmp35.not, label %if.then38, label %if.then31.if.end129_crit_edge

if.then31.if.end129_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then38:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i258370, ptr noundef %needlogp)
  br label %if.end129

if.else:                                          ; preds = %cond.end26
  %add.ptr43 = getelementptr i8, ptr %1, i32 %offset
  br i1 %cmp9, label %if.then42, label %if.else63

if.then42:                                        ; preds = %if.else
  %add.ptr44 = getelementptr i8, ptr %add.ptr43, i32 %len
  %19 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %add.ptr44, align 2
  %20 = trunc i32 %len to i16
  %conv45 = sub i16 %3, %20
  %length46 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr44, i32 0, i32 1
  %21 = ptrtoint ptr %length46 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv45, ptr %length46, align 2
  %sub.ptr.lhs.cast47 = ptrtoint ptr %add.ptr44 to i32
  %sub.ptr.sub49 = sub i32 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast.i
  %conv50 = trunc i32 %sub.ptr.sub49 to i16
  %conv.i = zext i16 %conv45 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr44, i32 %conv.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv50, ptr %add.ptr1.i, align 2
  %23 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_addr, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %26, label %cond.false.critedge.i [
    i32 1480864324, label %if.then42.xfs_dir2_data_log_unused.exit_crit_edge
    i32 1480868915, label %if.then42.xfs_dir2_data_log_unused.exit_crit_edge382
    i32 1480864322, label %if.then42.xfs_dir2_data_log_unused.exit_crit_edge383
    i32 1480868403, label %if.then42.xfs_dir2_data_log_unused.exit_crit_edge384
  ]

if.then42.xfs_dir2_data_log_unused.exit_crit_edge384: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

if.then42.xfs_dir2_data_log_unused.exit_crit_edge383: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

if.then42.xfs_dir2_data_log_unused.exit_crit_edge382: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

if.then42.xfs_dir2_data_log_unused.exit_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit

cond.false.critedge.i:                            ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit

xfs_dir2_data_log_unused.exit:                    ; preds = %cond.false.critedge.i, %if.then42.xfs_dir2_data_log_unused.exit_crit_edge, %if.then42.xfs_dir2_data_log_unused.exit_crit_edge382, %if.then42.xfs_dir2_data_log_unused.exit_crit_edge383, %if.then42.xfs_dir2_data_log_unused.exit_crit_edge384
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %28 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans.i, align 4
  %sub.ptr.rhs.cast.i261 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i262 = sub i32 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast.i261
  %add.ptr.i263 = getelementptr %struct.xfs_dir2_data_unused, ptr %add.ptr44, i32 0, i32 2
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i263, i32 -1
  %sub.ptr.lhs.cast10.i = ptrtoint ptr %add.ptr9.i to i32
  %sub.ptr.sub12.i = sub i32 %sub.ptr.lhs.cast10.i, %sub.ptr.rhs.cast.i261
  tail call void @xfs_trans_log_buf(ptr noundef %29, ptr noundef %bp, i32 noundef %sub.ptr.sub.i262, i32 noundef %sub.ptr.sub12.i) #9
  %30 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans.i, align 4
  %32 = ptrtoint ptr %length46 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length46, align 2
  %conv.i.i = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr44, i32 %conv.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -2
  %sub.ptr.lhs.cast14.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub16.i = sub i32 %sub.ptr.lhs.cast14.i, %sub.ptr.rhs.cast.i261
  %sub.i = add i32 %sub.ptr.sub16.i, 1
  tail call void @xfs_trans_log_buf(ptr noundef %31, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i, i32 noundef %sub.i) #9
  br i1 %tobool3.not372, label %xfs_dir2_data_log_unused.exit.if.end129_crit_edge, label %if.then53

xfs_dir2_data_log_unused.exit.if.end129_crit_edge: ; preds = %xfs_dir2_data_log_unused.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then53:                                        ; preds = %xfs_dir2_data_log_unused.exit
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i258370, ptr noundef %needlogp)
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %35, label %cond.false.critedge.i264 [
    i32 1480864324, label %if.then53.cond.end.i_crit_edge
    i32 1480864322, label %if.then53.cond.end.i_crit_edge385
    i32 1480868915, label %if.then53.cond.end.i_crit_edge386
    i32 1480868403, label %if.then53.cond.end.i_crit_edge387
  ]

if.then53.cond.end.i_crit_edge387:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

if.then53.cond.end.i_crit_edge386:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

if.then53.cond.end.i_crit_edge385:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

if.then53.cond.end.i_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.critedge.i264:                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.critedge.i264, %if.then53.cond.end.i_crit_edge, %if.then53.cond.end.i_crit_edge385, %if.then53.cond.end.i_crit_edge386, %if.then53.cond.end.i_crit_edge387
  %37 = ptrtoint ptr %length46 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length46, align 2
  %length12.i = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 0, i32 1
  %39 = ptrtoint ptr %length12.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %length12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp14.i = icmp ugt i16 %38, %40
  br i1 %cmp14.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %arrayidx17.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1
  %41 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx17.i, align 2
  %43 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx16.i, align 2
  %44 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %retval.0.i, align 2
  store i32 %45, ptr %arrayidx17.i, align 2
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %cond.end.i
  %length25.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1, i32 1
  %46 = ptrtoint ptr %length25.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %length25.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %47)
  %cmp27.i = icmp ugt i16 %38, %47
  br i1 %cmp27.i, label %if.then29.i, label %if.end34.i

if.then29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1
  %arrayidx30.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %48 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %arrayidx24.i, align 2
  %50 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %arrayidx30.i, align 2
  br label %cleanup.sink.split.i

if.end34.i:                                       ; preds = %if.end.i
  %51 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %52)
  %cmp40.i = icmp ugt i16 %38, %52
  br i1 %cmp40.i, label %if.then42.i, label %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge

if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freeinsert.exit

if.then42.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then42.i, %if.then29.i, %if.then.i
  %arrayidx37.sink.i = phi ptr [ %arrayidx37.i, %if.then42.i ], [ %arrayidx24.i, %if.then29.i ], [ %retval.0.i, %if.then.i ]
  %length38.sink.i = phi ptr [ %length1.i, %if.then42.i ], [ %length25.i, %if.then29.i ], [ %length12.i, %if.then.i ]
  %53 = ptrtoint ptr %arrayidx37.sink.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv50, ptr %arrayidx37.sink.i, align 2
  %54 = ptrtoint ptr %length38.sink.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %38, ptr %length38.sink.i, align 2
  %55 = ptrtoint ptr %needlogp to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %needlogp, align 4
  br label %xfs_dir2_data_freeinsert.exit

xfs_dir2_data_freeinsert.exit:                    ; preds = %cleanup.sink.split.i, %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge
  %retval.0.i270 = phi ptr [ null, %if.end34.i.xfs_dir2_data_freeinsert.exit_crit_edge ], [ %arrayidx37.sink.i, %cleanup.sink.split.i ]
  %call55 = tail call fastcc ptr @xfs_dir2_data_check_new_free(ptr noundef %1, ptr noundef %retval.0.i270, ptr noundef %add.ptr44)
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end58, label %xfs_dir2_data_freeinsert.exit.corrupt_crit_edge

xfs_dir2_data_freeinsert.exit.corrupt_crit_edge:  ; preds = %xfs_dir2_data_freeinsert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %corrupt

if.end58:                                         ; preds = %xfs_dir2_data_freeinsert.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx59 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %cmp60 = icmp eq ptr %retval.0.i270, %arrayidx59
  br label %if.end129

if.else63:                                        ; preds = %if.else
  %sub.ptr.lhs.cast67 = ptrtoint ptr %add.ptr43 to i32
  %sub.ptr.sub69 = sub i32 %sub.ptr.lhs.cast67, %sub.ptr.lhs.cast.i
  %conv70 = trunc i32 %sub.ptr.sub69 to i16
  %56 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv70, ptr %length, align 2
  %conv75 = trunc i32 %sub.ptr.sub.i to i16
  %conv.i272 = and i32 %sub.ptr.sub69, 65535
  %add.ptr.i273 = getelementptr i8, ptr %dup, i32 %conv.i272
  %add.ptr1.i274 = getelementptr i8, ptr %add.ptr.i273, i32 -2
  %57 = ptrtoint ptr %add.ptr1.i274 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv75, ptr %add.ptr1.i274, align 2
  %58 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_addr, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  br i1 %cmp14, label %if.then65, label %if.else88

if.then65:                                        ; preds = %if.else63
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %61, label %cond.false.critedge.i276 [
    i32 1480864324, label %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge
    i32 1480868915, label %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge388
    i32 1480864322, label %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge389
    i32 1480868403, label %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge390
  ]

if.then65.xfs_dir2_data_log_unused.exit293_crit_edge390: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit293

if.then65.xfs_dir2_data_log_unused.exit293_crit_edge389: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit293

if.then65.xfs_dir2_data_log_unused.exit293_crit_edge388: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit293

if.then65.xfs_dir2_data_log_unused.exit293_crit_edge: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit293

cond.false.critedge.i276:                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit293

xfs_dir2_data_log_unused.exit293:                 ; preds = %cond.false.critedge.i276, %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge, %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge388, %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge389, %if.then65.xfs_dir2_data_log_unused.exit293_crit_edge390
  %trans.i277 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %63 = ptrtoint ptr %trans.i277 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %trans.i277, align 4
  %sub.ptr.rhs.cast.i279 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i280 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i279
  %add.ptr.i281 = getelementptr %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 2
  %add.ptr9.i282 = getelementptr i8, ptr %add.ptr.i281, i32 -1
  %sub.ptr.lhs.cast10.i283 = ptrtoint ptr %add.ptr9.i282 to i32
  %sub.ptr.sub12.i284 = sub i32 %sub.ptr.lhs.cast10.i283, %sub.ptr.rhs.cast.i279
  tail call void @xfs_trans_log_buf(ptr noundef %64, ptr noundef %bp, i32 noundef %sub.ptr.sub.i280, i32 noundef %sub.ptr.sub12.i284) #9
  %65 = ptrtoint ptr %trans.i277 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %trans.i277, align 4
  %67 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %length, align 2
  %conv.i.i286 = zext i16 %68 to i32
  %add.ptr.i.i287 = getelementptr i8, ptr %dup, i32 %conv.i.i286
  %add.ptr1.i.i288 = getelementptr i8, ptr %add.ptr.i.i287, i32 -2
  %sub.ptr.lhs.cast14.i289 = ptrtoint ptr %add.ptr1.i.i288 to i32
  %sub.ptr.sub16.i290 = sub i32 %sub.ptr.lhs.cast14.i289, %sub.ptr.rhs.cast.i279
  %sub.i291 = add i32 %sub.ptr.sub16.i290, 1
  tail call void @xfs_trans_log_buf(ptr noundef %66, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i290, i32 noundef %sub.i291) #9
  br i1 %tobool3.not372, label %xfs_dir2_data_log_unused.exit293.if.end129_crit_edge, label %if.then78

xfs_dir2_data_log_unused.exit293.if.end129_crit_edge: ; preds = %xfs_dir2_data_log_unused.exit293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then78:                                        ; preds = %xfs_dir2_data_log_unused.exit293
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i258370, ptr noundef %needlogp)
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %70, label %cond.false.critedge.i294 [
    i32 1480864324, label %if.then78.cond.end.i302_crit_edge
    i32 1480864322, label %if.then78.cond.end.i302_crit_edge391
    i32 1480868915, label %if.then78.cond.end.i302_crit_edge392
    i32 1480868403, label %if.then78.cond.end.i302_crit_edge393
  ]

if.then78.cond.end.i302_crit_edge393:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i302

if.then78.cond.end.i302_crit_edge392:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i302

if.then78.cond.end.i302_crit_edge391:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i302

if.then78.cond.end.i302_crit_edge:                ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i302

cond.false.critedge.i294:                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 564) #9
  br label %cond.end.i302

cond.end.i302:                                    ; preds = %cond.false.critedge.i294, %if.then78.cond.end.i302_crit_edge, %if.then78.cond.end.i302_crit_edge391, %if.then78.cond.end.i302_crit_edge392, %if.then78.cond.end.i302_crit_edge393
  %72 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %length, align 2
  %length12.i300 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 0, i32 1
  %74 = ptrtoint ptr %length12.i300 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %length12.i300, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp14.i301 = icmp ugt i16 %73, %75
  br i1 %cmp14.i301, label %if.then.i305, label %if.end.i308

if.then.i305:                                     ; preds = %cond.end.i302
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i303 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %arrayidx17.i304 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1
  %76 = ptrtoint ptr %arrayidx17.i304 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %arrayidx17.i304, align 2
  %78 = ptrtoint ptr %arrayidx16.i303 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %arrayidx16.i303, align 2
  %79 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %retval.0.i, align 2
  store i32 %80, ptr %arrayidx17.i304, align 2
  br label %cleanup.sink.split.i319

if.end.i308:                                      ; preds = %cond.end.i302
  %length25.i306 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1, i32 1
  %81 = ptrtoint ptr %length25.i306 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %length25.i306, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %82)
  %cmp27.i307 = icmp ugt i16 %73, %82
  br i1 %cmp27.i307, label %if.then29.i311, label %if.end34.i314

if.then29.i311:                                   ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24.i309 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 1
  %arrayidx30.i310 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %83 = ptrtoint ptr %arrayidx24.i309 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %arrayidx24.i309, align 2
  %85 = ptrtoint ptr %arrayidx30.i310 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %arrayidx30.i310, align 2
  br label %cleanup.sink.split.i319

if.end34.i314:                                    ; preds = %if.end.i308
  %86 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %87)
  %cmp40.i313 = icmp ugt i16 %73, %87
  br i1 %cmp40.i313, label %if.then42.i316, label %if.end34.i314.xfs_dir2_data_freeinsert.exit321_crit_edge

if.end34.i314.xfs_dir2_data_freeinsert.exit321_crit_edge: ; preds = %if.end34.i314
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_freeinsert.exit321

if.then42.i316:                                   ; preds = %if.end34.i314
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i315 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  br label %cleanup.sink.split.i319

cleanup.sink.split.i319:                          ; preds = %if.then42.i316, %if.then29.i311, %if.then.i305
  %arrayidx37.sink.i317 = phi ptr [ %arrayidx37.i315, %if.then42.i316 ], [ %arrayidx24.i309, %if.then29.i311 ], [ %retval.0.i, %if.then.i305 ]
  %length38.sink.i318 = phi ptr [ %length1.i, %if.then42.i316 ], [ %length25.i306, %if.then29.i311 ], [ %length12.i300, %if.then.i305 ]
  %88 = ptrtoint ptr %arrayidx37.sink.i317 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv75, ptr %arrayidx37.sink.i317, align 2
  %89 = ptrtoint ptr %length38.sink.i318 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %73, ptr %length38.sink.i318, align 2
  %90 = ptrtoint ptr %needlogp to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %needlogp, align 4
  br label %xfs_dir2_data_freeinsert.exit321

xfs_dir2_data_freeinsert.exit321:                 ; preds = %cleanup.sink.split.i319, %if.end34.i314.xfs_dir2_data_freeinsert.exit321_crit_edge
  %retval.0.i320 = phi ptr [ null, %if.end34.i314.xfs_dir2_data_freeinsert.exit321_crit_edge ], [ %arrayidx37.sink.i317, %cleanup.sink.split.i319 ]
  %call80 = tail call fastcc ptr @xfs_dir2_data_check_new_free(ptr noundef %1, ptr noundef %retval.0.i320, ptr noundef %dup)
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.end83, label %xfs_dir2_data_freeinsert.exit321.corrupt_crit_edge

xfs_dir2_data_freeinsert.exit321.corrupt_crit_edge: ; preds = %xfs_dir2_data_freeinsert.exit321
  call void @__sanitizer_cov_trace_pc() #11
  br label %corrupt

if.end83:                                         ; preds = %xfs_dir2_data_freeinsert.exit321
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx84 = getelementptr %struct.xfs_dir2_data_free, ptr %retval.0.i, i32 2
  %cmp85 = icmp eq ptr %retval.0.i320, %arrayidx84
  br label %if.end129

if.else88:                                        ; preds = %if.else63
  %91 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %61, label %cond.false.critedge.i327 [
    i32 1480864324, label %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge
    i32 1480868915, label %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge394
    i32 1480864322, label %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge395
    i32 1480868403, label %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge396
  ]

if.else88.xfs_dir2_data_log_unused.exit344_crit_edge396: ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit344

if.else88.xfs_dir2_data_log_unused.exit344_crit_edge395: ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit344

if.else88.xfs_dir2_data_log_unused.exit344_crit_edge394: ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit344

if.else88.xfs_dir2_data_log_unused.exit344_crit_edge: ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit344

cond.false.critedge.i327:                         ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit344

xfs_dir2_data_log_unused.exit344:                 ; preds = %cond.false.critedge.i327, %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge, %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge394, %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge395, %if.else88.xfs_dir2_data_log_unused.exit344_crit_edge396
  %trans.i328 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %92 = ptrtoint ptr %trans.i328 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %trans.i328, align 4
  %sub.ptr.rhs.cast.i330 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i331 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i330
  %add.ptr.i332 = getelementptr %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 2
  %add.ptr9.i333 = getelementptr i8, ptr %add.ptr.i332, i32 -1
  %sub.ptr.lhs.cast10.i334 = ptrtoint ptr %add.ptr9.i333 to i32
  %sub.ptr.sub12.i335 = sub i32 %sub.ptr.lhs.cast10.i334, %sub.ptr.rhs.cast.i330
  tail call void @xfs_trans_log_buf(ptr noundef %93, ptr noundef %bp, i32 noundef %sub.ptr.sub.i331, i32 noundef %sub.ptr.sub12.i335) #9
  %94 = ptrtoint ptr %trans.i328 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %trans.i328, align 4
  %96 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %length, align 2
  %conv.i.i337 = zext i16 %97 to i32
  %add.ptr.i.i338 = getelementptr i8, ptr %dup, i32 %conv.i.i337
  %add.ptr1.i.i339 = getelementptr i8, ptr %add.ptr.i.i338, i32 -2
  %sub.ptr.lhs.cast14.i340 = ptrtoint ptr %add.ptr1.i.i339 to i32
  %sub.ptr.sub16.i341 = sub i32 %sub.ptr.lhs.cast14.i340, %sub.ptr.rhs.cast.i330
  %sub.i342 = add i32 %sub.ptr.sub16.i341, 1
  tail call void @xfs_trans_log_buf(ptr noundef %95, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i341, i32 noundef %sub.i342) #9
  %add.ptr101 = getelementptr i8, ptr %add.ptr43, i32 %len
  %98 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -1, ptr %add.ptr101, align 2
  %99 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %length, align 2
  %101 = trunc i32 %len to i16
  %102 = add i16 %100, %101
  %conv107 = sub i16 %3, %102
  %length108 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr101, i32 0, i32 1
  %103 = ptrtoint ptr %length108 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv107, ptr %length108, align 2
  %sub.ptr.lhs.cast109 = ptrtoint ptr %add.ptr101 to i32
  %sub.ptr.sub111 = sub i32 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast.i
  %conv112 = trunc i32 %sub.ptr.sub111 to i16
  %conv.i346 = zext i16 %conv107 to i32
  %add.ptr.i347 = getelementptr i8, ptr %add.ptr101, i32 %conv.i346
  %add.ptr1.i348 = getelementptr i8, ptr %add.ptr.i347, i32 -2
  %104 = ptrtoint ptr %add.ptr1.i348 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv112, ptr %add.ptr1.i348, align 2
  %105 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %b_addr, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %108, label %cond.false.critedge.i350 [
    i32 1480864324, label %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge
    i32 1480868915, label %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge397
    i32 1480864322, label %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge398
    i32 1480868403, label %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge399
  ]

xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge399: ; preds = %xfs_dir2_data_log_unused.exit344
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit367

xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge398: ; preds = %xfs_dir2_data_log_unused.exit344
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit367

xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge397: ; preds = %xfs_dir2_data_log_unused.exit344
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit367

xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge: ; preds = %xfs_dir2_data_log_unused.exit344
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_dir2_data_log_unused.exit367

cond.false.critedge.i350:                         ; preds = %xfs_dir2_data_log_unused.exit344
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 813) #9
  br label %xfs_dir2_data_log_unused.exit367

xfs_dir2_data_log_unused.exit367:                 ; preds = %cond.false.critedge.i350, %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge, %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge397, %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge398, %xfs_dir2_data_log_unused.exit344.xfs_dir2_data_log_unused.exit367_crit_edge399
  %110 = ptrtoint ptr %trans.i328 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %trans.i328, align 4
  %sub.ptr.rhs.cast.i353 = ptrtoint ptr %106 to i32
  %sub.ptr.sub.i354 = sub i32 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast.i353
  %add.ptr.i355 = getelementptr %struct.xfs_dir2_data_unused, ptr %add.ptr101, i32 0, i32 2
  %add.ptr9.i356 = getelementptr i8, ptr %add.ptr.i355, i32 -1
  %sub.ptr.lhs.cast10.i357 = ptrtoint ptr %add.ptr9.i356 to i32
  %sub.ptr.sub12.i358 = sub i32 %sub.ptr.lhs.cast10.i357, %sub.ptr.rhs.cast.i353
  tail call void @xfs_trans_log_buf(ptr noundef %111, ptr noundef %bp, i32 noundef %sub.ptr.sub.i354, i32 noundef %sub.ptr.sub12.i358) #9
  %112 = ptrtoint ptr %trans.i328 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %trans.i328, align 4
  %114 = ptrtoint ptr %length108 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %length108, align 2
  %conv.i.i360 = zext i16 %115 to i32
  %add.ptr.i.i361 = getelementptr i8, ptr %add.ptr101, i32 %conv.i.i360
  %add.ptr1.i.i362 = getelementptr i8, ptr %add.ptr.i.i361, i32 -2
  %sub.ptr.lhs.cast14.i363 = ptrtoint ptr %add.ptr1.i.i362 to i32
  %sub.ptr.sub16.i364 = sub i32 %sub.ptr.lhs.cast14.i363, %sub.ptr.rhs.cast.i353
  %sub.i365 = add i32 %sub.ptr.sub16.i364, 1
  tail call void @xfs_trans_log_buf(ptr noundef %113, ptr noundef %bp, i32 noundef %sub.ptr.sub16.i364, i32 noundef %sub.i365) #9
  br i1 %tobool3.not372, label %xfs_dir2_data_log_unused.exit367.if.end129_crit_edge, label %if.then115

xfs_dir2_data_log_unused.exit367.if.end129_crit_edge: ; preds = %xfs_dir2_data_log_unused.exit367
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then115:                                       ; preds = %xfs_dir2_data_log_unused.exit367
  %116 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %cmp119.not = icmp eq i16 %117, 0
  br i1 %cmp119.not, label %if.then122, label %if.then115.if.end129_crit_edge

if.then115.if.end129_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then122:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xfs_dir2_data_freeremove(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i258370, ptr noundef %needlogp)
  %call123 = tail call ptr @xfs_dir2_data_freeinsert(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef %dup, ptr noundef %needlogp)
  %call124 = tail call ptr @xfs_dir2_data_freeinsert(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef %add.ptr101, ptr noundef %needlogp)
  br label %if.end129

if.end129:                                        ; preds = %if.then122, %if.then115.if.end129_crit_edge, %xfs_dir2_data_log_unused.exit367.if.end129_crit_edge, %if.end83, %xfs_dir2_data_log_unused.exit293.if.end129_crit_edge, %if.end58, %xfs_dir2_data_log_unused.exit.if.end129_crit_edge, %if.then38, %if.then31.if.end129_crit_edge, %if.then29.if.end129_crit_edge
  %needscan.0.shrunk = phi i1 [ true, %if.then31.if.end129_crit_edge ], [ false, %if.then38 ], [ false, %if.then29.if.end129_crit_edge ], [ %cmp60, %if.end58 ], [ false, %xfs_dir2_data_log_unused.exit.if.end129_crit_edge ], [ %cmp85, %if.end83 ], [ false, %xfs_dir2_data_log_unused.exit293.if.end129_crit_edge ], [ true, %if.then115.if.end129_crit_edge ], [ false, %if.then122 ], [ false, %xfs_dir2_data_log_unused.exit367.if.end129_crit_edge ]
  %needscan.0 = zext i1 %needscan.0.shrunk to i32
  %118 = ptrtoint ptr %needscanp to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %needscan.0, ptr %needscanp, align 4
  br label %cleanup

corrupt:                                          ; preds = %xfs_dir2_data_freeinsert.exit321.corrupt_crit_edge, %xfs_dir2_data_freeinsert.exit.corrupt_crit_edge, %entry.corrupt_crit_edge
  %fa.0 = phi ptr [ %call, %entry.corrupt_crit_edge ], [ %call55, %xfs_dir2_data_freeinsert.exit.corrupt_crit_edge ], [ %call80, %xfs_dir2_data_freeinsert.exit321.corrupt_crit_edge ]
  %dp130 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %119 = ptrtoint ptr %dp130 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dp130, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  tail call void @xfs_corruption_error(ptr noundef nonnull @__func__.xfs_dir2_data_use_free, i32 noundef 1, ptr noundef %122, ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 1200, ptr noundef nonnull %fa.0) #9
  br label %cleanup

cleanup:                                          ; preds = %corrupt, %if.end129
  %retval.0 = phi i32 [ -117, %corrupt ], [ 0, %if.end129 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir2_data_check_free(ptr noundef %hdr, ptr noundef %dup, i32 noundef %offset, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %__here [
    i32 1480864324, label %entry.if.end_crit_edge
    i32 1480868915, label %entry.if.end_crit_edge53
    i32 1480864322, label %entry.if.end_crit_edge54
    i32 1480868403, label %entry.if.end_crit_edge55
  ]

entry.if.end_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge53, %entry.if.end_crit_edge54, %entry.if.end_crit_edge55
  %3 = ptrtoint ptr %dup to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dup, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp9.not = icmp eq i16 %4, -1
  br i1 %cmp9.not, label %if.end14, label %__here12

__here12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  br label %return

if.end14:                                         ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %dup to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hdr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %offset)
  %cmp15 = icmp ugt i32 %sub.ptr.sub, %offset
  br i1 %cmp15, label %__here18, label %if.end20

__here18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  br label %return

if.end20:                                         ; preds = %if.end14
  %add = add i32 %len, %offset
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %length, align 2
  %conv21 = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %dup, i32 %conv21
  %sub.ptr.lhs.cast22 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub24 = sub i32 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub24)
  %cmp25 = icmp ugt i32 %add, %sub.ptr.sub24
  br i1 %cmp25, label %__here28, label %if.end30

__here28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  br label %return

if.end30:                                         ; preds = %if.end20
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i32 -2
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %conv34 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv34)
  %cmp35.not = icmp eq i32 %sub.ptr.sub, %conv34
  br i1 %cmp35.not, label %if.end30.return_crit_edge, label %__here38

if.end30.return_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

__here38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  br label %return

return:                                           ; preds = %__here38, %if.end30.return_crit_edge, %__here28, %__here18, %__here12, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dir2_data_check_free, %__here), %__here ], [ blockaddress(@xfs_dir2_data_check_free, %__here12), %__here12 ], [ blockaddress(@xfs_dir2_data_check_free, %__here18), %__here18 ], [ blockaddress(@xfs_dir2_data_check_free, %__here28), %__here28 ], [ blockaddress(@xfs_dir2_data_check_free, %__here38), %__here38 ], [ null, %if.end30.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dir2_data_check_new_free(ptr noundef %hdr, ptr noundef readonly %dfp, ptr noundef %newdup) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cmp = icmp eq ptr %dfp, null
  br i1 %cmp, label %__here, label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  br label %return

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  %length1 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %newdup, i32 0, i32 1
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp3.not = icmp eq i16 %1, %3
  br i1 %cmp3.not, label %if.end8, label %__here6

__here6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  br label %return

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %dfp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dfp, align 2
  %conv9 = zext i16 %5 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %newdup to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hdr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv9)
  %cmp10.not = icmp eq i32 %sub.ptr.sub, %conv9
  br i1 %cmp10.not, label %if.end8.return_crit_edge, label %__here13

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

__here13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  br label %return

return:                                           ; preds = %__here13, %if.end8.return_crit_edge, %__here6, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dir2_data_check_new_free, %__here), %__here ], [ blockaddress(@xfs_dir2_data_check_new_free, %__here6), %__here6 ], [ blockaddress(@xfs_dir2_data_check_new_free, %__here13), %__here13 ], [ null, %if.end8.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_dir3_data_reada_verify(ptr noundef %bp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %__here [
    i32 1480864322, label %entry.sw.bb_crit_edge
    i32 1480868403, label %entry.sw.bb_crit_edge13
    i32 1480864324, label %entry.sw.bb2_crit_edge
    i32 1480868915, label %entry.sw.bb2_crit_edge14
  ]

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %5 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xfs_dir3_block_buf_ops, ptr %b_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_block_buf_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_block_buf_ops, i32 0, i32 2), align 4
  tail call void %6(ptr noundef %bp) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge14
  %b_ops3 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %7 = ptrtoint ptr %b_ops3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xfs_dir3_data_buf_ops, ptr %b_ops3, align 4
  tail call void @xfs_dir3_data_read_verify(ptr noundef %bp)
  br label %cleanup

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef blockaddress(@xfs_dir3_data_reada_verify, %__here)) #9
  br label %cleanup

cleanup:                                          ; preds = %__here, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 70, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 71, i32 2}
!5 = !{ptr @__func__.xfs_dir3_data_check, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 283, i32 23}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 286, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 381, i32 10}
!11 = !{ptr @xfs_dir3_data_buf_ops, !12, !"xfs_dir3_data_buf_ops", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 380, i32 26}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 561, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 649, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 669, i32 4}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 679, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 858, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 884, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 920, i32 4}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 923, i32 5}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 933, i32 4}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 934, i32 4}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 935, i32 4}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 936, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 1083, i32 2}
!39 = !{ptr @__func__.xfs_dir2_data_use_free, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 1199, i32 23}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 390, i32 10}
!43 = !{ptr @xfs_dir3_data_reada_buf_ops, !44, !"xfs_dir3_data_reada_buf_ops", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 389, i32 33}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_dir2_data.c", i32 625, i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"auto-init"}
!59 = !{i64 2155800311}
!60 = !{i64 2155800586}
!61 = !{i64 2155800807}
!62 = !{i64 2155800898}
!63 = !{i64 2155800989}
!64 = !{i64 2155801080}
!65 = !{i64 2155801171}
!66 = !{i64 2155801374}
!67 = !{i64 2155801577}
!68 = !{i64 2155801731}
!69 = !{i64 2155801877}
!70 = !{i64 2155802044}
!71 = !{i64 2155802135}
!72 = !{i64 2155802337}
!73 = !{i64 2155802483}
!74 = !{i64 2155802630}
!75 = !{i64 2155802721}
!76 = !{i64 2155802891}
!77 = !{i64 2155803429}
!78 = !{i64 2155803520}
!79 = !{i64 2155804006}
!80 = !{i64 2155804205}
!81 = !{i64 2155804350}
!82 = !{i64 2155806515}
!83 = !{i64 2155806606}
!84 = !{i64 2155806752}
!85 = !{i64 2155807008}
!86 = !{i64 2155807209}
!87 = !{i64 2155807410}
!88 = !{i64 2155807616}
!89 = !{i64 2155805703}
!90 = !{i64 2155804676}
!91 = !{i64 2155804767}
!92 = !{i64 2155804913}
!93 = !{i64 2155805057}
!94 = !{i64 2155806370}
!95 = !{i64 2155819768}
!96 = !{i64 2155819922}
!97 = !{i64 2155820013}
!98 = !{i64 2155820159}
!99 = !{i64 2155820326}
!100 = !{i64 2155820610}
!101 = !{i64 2155820701}
!102 = !{i64 2155820847}
!103 = !{i64 2155805432}
