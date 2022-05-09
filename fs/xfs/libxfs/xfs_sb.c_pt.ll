; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_sb.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_sb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon, ptr, ptr, ptr }
%union.anon = type { [2 x i32] }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_dsb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.atomic_t = type { i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_fsop_geom = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [17 x i64] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xfs_sb\00", [25 x i8] zeroinitializer }, align 32
@xfs_sb_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon { [2 x i32] [i32 1481003842, i32 1481003842] }, ptr @xfs_sb_read_verify, ptr @xfs_sb_write_verify, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_sb_quiet\00", [19 x i8] zeroinitializer }, align 32
@xfs_sb_quiet_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.1, %union.anon { [2 x i32] [i32 1481003842, i32 1481003842] }, ptr @xfs_sb_quiet_read_verify, ptr @xfs_sb_write_verify, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error allocating secondary superblock for ag %d\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"write error %d updating a secondary superblock near ag %d\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"agno != 0 && agno != NULLAGNUMBER\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/libxfs/xfs_sb.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"stripe width (%lld) is too large\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"stripe unit (%lld) is larger than the stripe width (%lld)\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"stripe unit (%lld) must be a multiple of the sector size (%d)\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid stripe unit (%lld) and stripe width of 0\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid stripe width (%lld) and stripe unit of 0\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"stripe width (%lld) must be a multiple of the stripe unit (%lld)\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad magic number\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad version\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Block size (%u bytes) too small for Version 5 superblock (minimum %d bytes)\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Version 5 of Super block has XFS_OQUOTA bits.\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Inode block alignment (%u) must match chunk size (%u) for sparse inodes.\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Superblock earlier than Version 5 has XFS_{P|G}QUOTA_{ENFD|CHKD} bits.\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"filesystem is marked as having an external log; specify logdev on the mount command line.\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"filesystem is marked as having an internal log; do not specify logdev on the mount command line.\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SB sanity check failed\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"realtime zeroed geometry check failed\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"realtime geometry sanity check failed\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SB stripe alignment sanity check failed\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"inode size of %d bytes not supported\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Superblock has unknown compatible features (0x%x) enabled.\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using a more recent kernel is recommended.\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Superblock has unknown read-only compatible features (0x%x) enabled.\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Attempted to mount read-only compatible filesystem read-write.\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Filesystem can only be safely mounted read only.\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Superblock has unknown incompatible features (0x%x) enabled.\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Filesystem cannot be safely mounted by this kernel.\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SB summary counter sanity check failed\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Corruption detected in superblock compatible features (0x%x)!\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Corruption detected in superblock read-only compatible features (0x%x)!\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Corruption detected in superblock incompatible features (0x%x)!\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Corruption detected in superblock incompatible log features (0x%x)!\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 832, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"xfs_sb_buf_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 831, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 839, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"xfs_sb_quiet_buf_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 838, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 992, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1013, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1166, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1215, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1222, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1229, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1237, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1244, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1251, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 265, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 270, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 280, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 288, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 304, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 312, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 319, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 327, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 375, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 391, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 406, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 417, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 435, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 145, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 148, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 153, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 158, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 160, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 167, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 171, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 199, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 213, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 220, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 227, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [26 x i8] c"../fs/xfs/libxfs/xfs_sb.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 235, i32 1 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @.str, ptr @xfs_sb_buf_ops, ptr @.str.1, ptr @xfs_sb_quiet_buf_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sb_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sb_quiet_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_sb_good_version(ptr nocapture noundef readonly %sbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_versionnum.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 15
  %0 = ptrtoint ptr %sb_versionnum.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_versionnum.i, align 4
  %2 = and i16 %1, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %2)
  %cmp.i = icmp eq i16 %2, 5
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %and6 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp ne i32 %and6, 0
  %and11 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  %not.or.cond = and i1 %cmp, %tobool.not
  %or.cond33 = select i1 %not.or.cond, i1 %tobool12.not, i1 false
  %and17 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond34 = select i1 %or.cond33, i1 %tobool18.not, i1 false
  br i1 %or.cond34, label %lor.lhs.false, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %and21 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.end26_crit_edge, label %land.lhs.true

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sb_features2 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 44
  %3 = ptrtoint ptr %sb_features2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_features2, align 8
  %and23 = and i32 %4, -651
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge
  br label %return

return:                                           ; preds = %if.end26, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end26 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_sb_version_to_features(ptr nocapture noundef readonly %sbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 3
  %0 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_rblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  %spec.select = select i1 %cmp.not, i64 0, i64 4194304
  %sb_versionnum = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 15
  %2 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sb_versionnum, align 4
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 1
  %6 = zext i16 %5 to i64
  %7 = or i64 %spec.select, %6
  %8 = and i16 %4, 4
  %9 = zext i16 %8 to i64
  %10 = or i64 %7, %9
  %11 = and i16 %4, 8
  %12 = zext i16 %11 to i64
  %13 = or i64 %10, %12
  %14 = lshr i16 %3, 5
  %15 = and i16 %14, 32
  %16 = zext i16 %15 to i64
  %17 = or i64 %13, %16
  %18 = and i16 %4, 16
  %19 = zext i16 %18 to i64
  %20 = or i64 %17, %19
  %21 = and i16 %14, 128
  %22 = zext i16 %21 to i64
  %23 = or i64 %20, %22
  %24 = and i16 %14, 64
  %25 = zext i16 %24 to i64
  %26 = or i64 %23, %25
  %27 = lshr i16 %3, 6
  %28 = and i16 %27, 256
  %29 = zext i16 %28 to i64
  %30 = or i64 %26, %29
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool56.not = icmp sgt i16 %3, -1
  br i1 %tobool56.not, label %entry.if.end81_crit_edge, label %if.then57

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then57:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sb_features2 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 44
  %31 = ptrtoint ptr %sb_features2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sb_features2, align 8
  %and58 = shl i32 %32, 8
  %33 = and i32 %and58, 512
  %34 = zext i32 %33 to i64
  %35 = or i64 %30, %34
  %and64 = shl i32 %32, 7
  %36 = and i32 %and64, 1024
  %37 = zext i32 %36 to i64
  %38 = or i64 %35, %37
  %and70 = shl i32 %32, 5
  %39 = and i32 %and70, 4096
  %40 = zext i32 %39 to i64
  %41 = or i64 %38, %40
  %42 = and i32 %and64, 65536
  %43 = zext i32 %42 to i64
  %44 = or i64 %41, %43
  br label %if.end81

if.end81:                                         ; preds = %if.then57, %entry.if.end81_crit_edge
  %features.12 = phi i64 [ %30, %entry.if.end81_crit_edge ], [ %44, %if.then57 ]
  %45 = and i16 %3, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %45)
  %cmp.i = icmp eq i16 %45, 5
  br i1 %cmp.i, label %if.end83, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %sb_features_ro_compat = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 47
  %46 = ptrtoint ptr %sb_features_ro_compat to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sb_features_ro_compat, align 4
  %and85 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %spec.select185.v = select i1 %tobool86.not, i64 63144, i64 194216
  %spec.select185 = or i64 %spec.select185.v, %features.12
  %and91 = shl i32 %47, 17
  %48 = and i32 %and91, 262144
  %49 = zext i32 %48 to i64
  %50 = or i64 %spec.select185, %49
  %51 = and i32 %and91, 524288
  %52 = zext i32 %51 to i64
  %53 = or i64 %50, %52
  %and103 = shl i32 %47, 20
  %54 = and i32 %and103, 8388608
  %55 = zext i32 %54 to i64
  %56 = or i64 %53, %55
  %sb_features_incompat = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 48
  %57 = ptrtoint ptr %sb_features_incompat to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sb_features_incompat, align 8
  %and108 = shl i32 %58, 16
  %59 = and i32 %and108, 65536
  %60 = zext i32 %59 to i64
  %61 = or i64 %56, %60
  %and114 = shl i32 %58, 19
  %62 = and i32 %and114, 1048576
  %63 = zext i32 %62 to i64
  %64 = or i64 %61, %63
  %65 = and i32 %and114, 2097152
  %66 = zext i32 %65 to i64
  %67 = or i64 %64, %66
  %and126 = shl i32 %58, 21
  %68 = and i32 %and126, 16777216
  %69 = zext i32 %68 to i64
  %70 = or i64 %67, %69
  %71 = and i32 %and126, 33554432
  %72 = zext i32 %71 to i64
  %73 = or i64 %70, %72
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end81.cleanup_crit_edge
  %retval.0 = phi i64 [ %73, %if.end83 ], [ %features.12, %if.end81.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_sb_quota_from_disk(ptr nocapture noundef %sbp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_uquotino = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 32
  %0 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_uquotino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %sb_uquotino, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sb_gquotino = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 33
  %3 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sb_gquotino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %sb_gquotino, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %sb_pquotino = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 52
  %6 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_pquotino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp6 = icmp eq i64 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %sb_pquotino, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %sb_versionnum.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 15
  %9 = ptrtoint ptr %sb_versionnum.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sb_versionnum.i, align 4
  %11 = and i16 %10, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %11)
  %cmp.i = icmp eq i16 %11, 5
  br i1 %cmp.i, label %if.end9.if.end51_crit_edge, label %if.end11

if.end9.if.end51_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end11:                                         ; preds = %if.end9
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 34
  %12 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sb_qflags, align 8
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11.if.end20_crit_edge, label %if.then12

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %and15 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond = select i1 %tobool16.not, i16 128, i16 512
  %or = or i16 %cond, %13
  %14 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %sb_qflags, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end11.if.end20_crit_edge
  %15 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sb_qflags, align 8
  %conv22 = zext i16 %16 to i32
  %and23 = and i32 %conv22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end20.if.end35_crit_edge, label %if.then25

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %and28 = and i32 %conv22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, i16 256, i16 1024
  %or33 = or i16 %cond30, %16
  %17 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or33, ptr %sb_qflags, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then25, %if.end20.if.end35_crit_edge
  %18 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sb_qflags, align 8
  %20 = and i16 %19, -49
  store i16 %20, ptr %sb_qflags, align 8
  %21 = and i16 %19, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool43.not = icmp eq i16 %21, 0
  br i1 %tobool43.not, label %if.end35.if.end51_crit_edge, label %land.lhs.true

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end35
  %22 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sb_gquotino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %23)
  %cmp45.not = icmp eq i64 %23, -1
  br i1 %cmp45.not, label %land.lhs.true.if.end51_crit_edge, label %if.then47

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %sb_pquotino, align 8
  %25 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %sb_gquotino, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %land.lhs.true.if.end51_crit_edge, %if.end35.if.end51_crit_edge, %if.end9.if.end51_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_sb_from_disk(ptr noundef %to, ptr noundef %from) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__xfs_sb_from_disk(ptr noundef %to, ptr noundef %from, i1 noundef zeroext true)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @__xfs_sb_from_disk(ptr noundef %to, ptr noundef readonly %from, i1 noundef zeroext %convert_xquota) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %from, align 8
  %2 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %to, align 8
  %sb_blocksize = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 1
  %3 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_blocksize, align 4
  %sb_blocksize2 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 1
  %5 = ptrtoint ptr %sb_blocksize2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sb_blocksize2, align 4
  %sb_dblocks = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 2
  %6 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_dblocks, align 8
  %sb_dblocks3 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 2
  %8 = ptrtoint ptr %sb_dblocks3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sb_dblocks3, align 8
  %sb_rblocks = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 3
  %9 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_rblocks, align 8
  %sb_rblocks4 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 3
  %11 = ptrtoint ptr %sb_rblocks4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %sb_rblocks4, align 8
  %sb_rextents = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 4
  %12 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_rextents, align 8
  %sb_rextents5 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 4
  %14 = ptrtoint ptr %sb_rextents5 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sb_rextents5, align 8
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 5
  %sb_uuid6 = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %sb_uuid, ptr %sb_uuid6, i32 16)
  %sb_logstart = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 6
  %16 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sb_logstart, align 8
  %sb_logstart7 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 6
  %18 = ptrtoint ptr %sb_logstart7 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sb_logstart7, align 8
  %sb_rootino = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 7
  %19 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sb_rootino, align 8
  %sb_rootino8 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 7
  %21 = ptrtoint ptr %sb_rootino8 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %sb_rootino8, align 8
  %sb_rbmino = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 8
  %22 = ptrtoint ptr %sb_rbmino to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sb_rbmino, align 8
  %sb_rbmino9 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 8
  %24 = ptrtoint ptr %sb_rbmino9 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %sb_rbmino9, align 8
  %sb_rsumino = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 9
  %25 = ptrtoint ptr %sb_rsumino to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sb_rsumino, align 8
  %sb_rsumino10 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 9
  %27 = ptrtoint ptr %sb_rsumino10 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %sb_rsumino10, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 10
  %28 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_rextsize, align 8
  %sb_rextsize11 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 10
  %30 = ptrtoint ptr %sb_rextsize11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sb_rextsize11, align 8
  %sb_agblocks = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 11
  %31 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sb_agblocks, align 4
  %sb_agblocks12 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 11
  %33 = ptrtoint ptr %sb_agblocks12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sb_agblocks12, align 4
  %sb_agcount = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 12
  %34 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sb_agcount, align 8
  %sb_agcount13 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 12
  %36 = ptrtoint ptr %sb_agcount13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sb_agcount13, align 8
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 13
  %37 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_rbmblocks, align 4
  %sb_rbmblocks14 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 13
  %39 = ptrtoint ptr %sb_rbmblocks14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sb_rbmblocks14, align 4
  %sb_logblocks = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 14
  %40 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sb_logblocks, align 8
  %sb_logblocks15 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 14
  %42 = ptrtoint ptr %sb_logblocks15 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %sb_logblocks15, align 8
  %sb_versionnum = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 15
  %43 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sb_versionnum, align 4
  %sb_versionnum16 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 15
  %45 = ptrtoint ptr %sb_versionnum16 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %sb_versionnum16, align 4
  %sb_sectsize = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 16
  %46 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sb_sectsize, align 2
  %sb_sectsize17 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 16
  %48 = ptrtoint ptr %sb_sectsize17 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %sb_sectsize17, align 2
  %sb_inodesize = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 17
  %49 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sb_inodesize, align 8
  %sb_inodesize18 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 17
  %51 = ptrtoint ptr %sb_inodesize18 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %sb_inodesize18, align 8
  %sb_inopblock = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 18
  %52 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sb_inopblock, align 2
  %sb_inopblock19 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 18
  %54 = ptrtoint ptr %sb_inopblock19 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %sb_inopblock19, align 2
  %sb_fname = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 19
  %sb_fname20 = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 19
  %55 = call ptr @memcpy(ptr %sb_fname, ptr %sb_fname20, i32 12)
  %sb_blocklog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 20
  %56 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sb_blocklog, align 8
  %sb_blocklog21 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 20
  %58 = ptrtoint ptr %sb_blocklog21 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %sb_blocklog21, align 8
  %sb_sectlog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 21
  %59 = ptrtoint ptr %sb_sectlog to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sb_sectlog, align 1
  %sb_sectlog22 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 21
  %61 = ptrtoint ptr %sb_sectlog22 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %sb_sectlog22, align 1
  %sb_inodelog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 22
  %62 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sb_inodelog, align 2
  %sb_inodelog23 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 22
  %64 = ptrtoint ptr %sb_inodelog23 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %sb_inodelog23, align 2
  %sb_inopblog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 23
  %65 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sb_inopblog, align 1
  %sb_inopblog24 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 23
  %67 = ptrtoint ptr %sb_inopblog24 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %sb_inopblog24, align 1
  %sb_agblklog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 24
  %68 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sb_agblklog, align 4
  %sb_agblklog25 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 24
  %70 = ptrtoint ptr %sb_agblklog25 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %sb_agblklog25, align 4
  %sb_rextslog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 25
  %71 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sb_rextslog, align 1
  %sb_rextslog26 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 25
  %73 = ptrtoint ptr %sb_rextslog26 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %sb_rextslog26, align 1
  %sb_inprogress = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 26
  %74 = ptrtoint ptr %sb_inprogress to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sb_inprogress, align 2
  %sb_inprogress27 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 26
  %76 = ptrtoint ptr %sb_inprogress27 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %sb_inprogress27, align 2
  %sb_imax_pct = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 27
  %77 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sb_imax_pct, align 1
  %sb_imax_pct28 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 27
  %79 = ptrtoint ptr %sb_imax_pct28 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %sb_imax_pct28, align 1
  %sb_icount = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 28
  %80 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %sb_icount, align 8
  %sb_icount29 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 28
  %82 = ptrtoint ptr %sb_icount29 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %sb_icount29, align 8
  %sb_ifree = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 29
  %83 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %sb_ifree, align 8
  %sb_ifree30 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 29
  %85 = ptrtoint ptr %sb_ifree30 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %sb_ifree30, align 8
  %sb_fdblocks = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 30
  %86 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %sb_fdblocks, align 8
  %sb_fdblocks31 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 30
  %88 = ptrtoint ptr %sb_fdblocks31 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %sb_fdblocks31, align 8
  %sb_frextents = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 31
  %89 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %sb_frextents, align 8
  %sb_frextents32 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 31
  %91 = ptrtoint ptr %sb_frextents32 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %sb_frextents32, align 8
  %sb_uquotino = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 32
  %92 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %sb_uquotino, align 8
  %sb_uquotino33 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 32
  %94 = ptrtoint ptr %sb_uquotino33 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %sb_uquotino33, align 8
  %sb_gquotino = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 33
  %95 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %sb_gquotino, align 8
  %sb_gquotino34 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 33
  %97 = ptrtoint ptr %sb_gquotino34 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %sb_gquotino34, align 8
  %sb_qflags = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 34
  %98 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %sb_qflags, align 8
  %sb_qflags35 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 34
  %100 = ptrtoint ptr %sb_qflags35 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %sb_qflags35, align 8
  %sb_flags = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 35
  %101 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sb_flags, align 2
  %sb_flags36 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 35
  %103 = ptrtoint ptr %sb_flags36 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %sb_flags36, align 2
  %sb_shared_vn = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 36
  %104 = ptrtoint ptr %sb_shared_vn to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %sb_shared_vn, align 1
  %sb_shared_vn37 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 36
  %106 = ptrtoint ptr %sb_shared_vn37 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %sb_shared_vn37, align 1
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 37
  %107 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sb_inoalignmt, align 4
  %sb_inoalignmt38 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 37
  %109 = ptrtoint ptr %sb_inoalignmt38 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %sb_inoalignmt38, align 4
  %sb_unit = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 38
  %110 = ptrtoint ptr %sb_unit to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sb_unit, align 8
  %sb_unit39 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 38
  %112 = ptrtoint ptr %sb_unit39 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %sb_unit39, align 8
  %sb_width = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 39
  %113 = ptrtoint ptr %sb_width to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sb_width, align 4
  %sb_width40 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 39
  %115 = ptrtoint ptr %sb_width40 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %sb_width40, align 4
  %sb_dirblklog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 40
  %116 = ptrtoint ptr %sb_dirblklog to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sb_dirblklog, align 8
  %sb_dirblklog41 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 40
  %118 = ptrtoint ptr %sb_dirblklog41 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %sb_dirblklog41, align 8
  %sb_logsectlog = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 41
  %119 = ptrtoint ptr %sb_logsectlog to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sb_logsectlog, align 1
  %sb_logsectlog42 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 41
  %121 = ptrtoint ptr %sb_logsectlog42 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %sb_logsectlog42, align 1
  %sb_logsectsize = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 42
  %122 = ptrtoint ptr %sb_logsectsize to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %sb_logsectsize, align 2
  %sb_logsectsize43 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 42
  %124 = ptrtoint ptr %sb_logsectsize43 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %sb_logsectsize43, align 2
  %sb_logsunit = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 43
  %125 = ptrtoint ptr %sb_logsunit to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sb_logsunit, align 4
  %sb_logsunit44 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 43
  %127 = ptrtoint ptr %sb_logsunit44 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %sb_logsunit44, align 4
  %sb_features2 = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 44
  %128 = ptrtoint ptr %sb_features2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sb_features2, align 8
  %sb_features245 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 44
  %130 = ptrtoint ptr %sb_features245 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %sb_features245, align 8
  %sb_bad_features2 = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 45
  %131 = ptrtoint ptr %sb_bad_features2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sb_bad_features2, align 4
  %sb_bad_features246 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 45
  %133 = ptrtoint ptr %sb_bad_features246 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %sb_bad_features246, align 4
  %sb_features_compat = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 46
  %134 = ptrtoint ptr %sb_features_compat to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sb_features_compat, align 8
  %sb_features_compat47 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 46
  %136 = ptrtoint ptr %sb_features_compat47 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %sb_features_compat47, align 8
  %sb_features_ro_compat = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 47
  %137 = ptrtoint ptr %sb_features_ro_compat to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sb_features_ro_compat, align 4
  %sb_features_ro_compat48 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 47
  %139 = ptrtoint ptr %sb_features_ro_compat48 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %sb_features_ro_compat48, align 4
  %sb_features_incompat = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 48
  %140 = ptrtoint ptr %sb_features_incompat to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sb_features_incompat, align 8
  %sb_features_incompat49 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 48
  %142 = ptrtoint ptr %sb_features_incompat49 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %sb_features_incompat49, align 8
  %sb_features_log_incompat = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 49
  %143 = ptrtoint ptr %sb_features_log_incompat to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sb_features_log_incompat, align 4
  %sb_features_log_incompat50 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 49
  %145 = ptrtoint ptr %sb_features_log_incompat50 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %sb_features_log_incompat50, align 4
  %sb_crc = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 50
  %146 = ptrtoint ptr %sb_crc to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %sb_crc, align 8
  %sb_spino_align = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 51
  %147 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sb_spino_align, align 4
  %sb_spino_align51 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 51
  %149 = ptrtoint ptr %sb_spino_align51 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %sb_spino_align51, align 4
  %sb_pquotino = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 52
  %150 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %sb_pquotino, align 8
  %sb_pquotino52 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 52
  %152 = ptrtoint ptr %sb_pquotino52 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %sb_pquotino52, align 8
  %sb_lsn = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 53
  %153 = ptrtoint ptr %sb_lsn to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %sb_lsn, align 8
  %sb_lsn53 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 53
  %155 = ptrtoint ptr %sb_lsn53 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %154, ptr %sb_lsn53, align 8
  %156 = and i16 %44, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %156)
  %cmp.i = icmp eq i16 %156, 5
  %cmp.i.not = xor i1 %cmp.i, true
  %and = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %tobool.not
  %sb_meta_uuid56 = getelementptr inbounds %struct.xfs_sb, ptr %to, i32 0, i32 54
  %sb_meta_uuid55 = getelementptr inbounds %struct.xfs_dsb, ptr %from, i32 0, i32 54
  %sb_uuid6.sink = select i1 %or.cond, ptr %sb_uuid6, ptr %sb_meta_uuid55
  %157 = call ptr @memcpy(ptr %sb_meta_uuid56, ptr %sb_uuid6.sink, i32 16)
  br i1 %convert_xquota, label %if.then59, label %entry.if.end60_crit_edge

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then59:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %93)
  %cmp.i173 = icmp eq i64 %93, 0
  br i1 %cmp.i173, label %if.then.i, label %if.then59.if.end.i_crit_edge

if.then59.if.end.i_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %sb_uquotino33 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 -1, ptr %sb_uquotino33, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then59.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %cmp2.i = icmp eq i64 %96, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %sb_gquotino34 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 -1, ptr %sb_gquotino34, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %151)
  %cmp6.i = icmp eq i64 %151, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %sb_pquotino52 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 -1, ptr %sb_pquotino52, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge
  br i1 %cmp.i, label %if.end9.i.if.end60_crit_edge, label %if.end11.i

if.end9.i.if.end60_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end11.i:                                       ; preds = %if.end9.i
  %conv.i = zext i16 %99 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.i.if.end20.i_crit_edge, label %if.then12.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %and15.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond.i = select i1 %tobool16.not.i, i16 128, i16 512
  %or.i = or i16 %cond.i, %99
  %161 = ptrtoint ptr %sb_qflags35 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %or.i, ptr %sb_qflags35, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then12.i, %if.end11.i.if.end20.i_crit_edge
  %162 = ptrtoint ptr %sb_qflags35 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %sb_qflags35, align 8
  %conv22.i = zext i16 %163 to i32
  %and23.i = and i32 %conv22.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end20.i.if.end35.i_crit_edge, label %if.then25.i

if.end20.i.if.end35.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %and28.i = and i32 %conv22.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %cond30.i = select i1 %tobool29.not.i, i16 256, i16 1024
  %or33.i = or i16 %cond30.i, %163
  %164 = ptrtoint ptr %sb_qflags35 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %or33.i, ptr %sb_qflags35, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then25.i, %if.end20.i.if.end35.i_crit_edge
  %165 = ptrtoint ptr %sb_qflags35 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %sb_qflags35, align 8
  %167 = and i16 %166, -49
  store i16 %167, ptr %sb_qflags35, align 8
  %168 = and i16 %166, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool43.not.i = icmp eq i16 %168, 0
  br i1 %tobool43.not.i, label %if.end35.i.if.end60_crit_edge, label %land.lhs.true.i

if.end35.i.if.end60_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

land.lhs.true.i:                                  ; preds = %if.end35.i
  %169 = ptrtoint ptr %sb_gquotino34 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %sb_gquotino34, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %170)
  %cmp45.not.i = icmp eq i64 %170, -1
  br i1 %cmp45.not.i, label %land.lhs.true.i.if.end60_crit_edge, label %if.then47.i

land.lhs.true.i.if.end60_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then47.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %171 = ptrtoint ptr %sb_pquotino52 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %sb_pquotino52, align 8
  %172 = ptrtoint ptr %sb_gquotino34 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 -1, ptr %sb_gquotino34, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then47.i, %land.lhs.true.i.if.end60_crit_edge, %if.end35.i.if.end60_crit_edge, %if.end9.i.if.end60_crit_edge, %entry.if.end60_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_sb_to_disk(ptr noundef writeonly %to, ptr noundef %from) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_qflags.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 34
  %0 = ptrtoint ptr %sb_qflags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_qflags.i, align 8
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 32
  %2 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_uquotino.i, align 8
  %sb_uquotino1.i = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 32
  %4 = ptrtoint ptr %sb_uquotino1.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %sb_uquotino1.i, align 8
  %sb_versionnum.i.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 15
  %5 = ptrtoint ptr %sb_versionnum.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sb_versionnum.i.i, align 4
  %7 = and i16 %6, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp.i.i = icmp eq i16 %7, 5
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %sb_qflags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sb_qflags.i, align 8
  %sb_qflags3.i = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 34
  %10 = ptrtoint ptr %sb_qflags3.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %sb_qflags3.i, align 8
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 33
  %11 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sb_gquotino.i, align 8
  %sb_gquotino4.i = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 33
  %13 = ptrtoint ptr %sb_gquotino4.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %sb_gquotino4.i, align 8
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 52
  %14 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_pquotino.i, align 8
  br label %xfs_sb_quota_to_disk.exit

if.end.i:                                         ; preds = %entry
  %16 = and i16 %1, -1921
  %17 = ptrtoint ptr %sb_qflags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sb_qflags.i, align 8
  %19 = and i16 %18, 640
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  %20 = or i16 %16, 16
  %spec.select.i = select i1 %tobool.not.i, i16 %16, i16 %20
  %21 = and i16 %18, 1280
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool17.not.i = icmp eq i16 %21, 0
  %22 = or i16 %spec.select.i, 32
  %qflags.1.i = select i1 %tobool17.not.i, i16 %spec.select.i, i16 %22
  %sb_qflags23.i = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 34
  %23 = ptrtoint ptr %sb_qflags23.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %qflags.1.i, ptr %sb_qflags23.i, align 8
  %24 = ptrtoint ptr %sb_qflags.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sb_qflags.i, align 8
  %conv25.i = zext i16 %25 to i32
  %and26.i = and i32 %conv25.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sb_gquotino29.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 33
  br label %if.end48.sink.split.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %and33.i = and i32 %conv25.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else38.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sb_pquotino36.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 52
  br label %if.end48.sink.split.sink.split.i

if.else38.i:                                      ; preds = %if.else.i
  %sb_gquotino39.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 33
  %26 = ptrtoint ptr %sb_gquotino39.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sb_gquotino39.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %27)
  %cmp.i = icmp eq i64 %27, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else38.i.xfs_sb_quota_to_disk.exit_crit_edge

if.else38.i.xfs_sb_quota_to_disk.exit_crit_edge:  ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_sb_quota_to_disk.exit

land.lhs.true.i:                                  ; preds = %if.else38.i
  %sb_pquotino41.i = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 52
  %28 = ptrtoint ptr %sb_pquotino41.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sb_pquotino41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %29)
  %cmp42.i = icmp eq i64 %29, -1
  br i1 %cmp42.i, label %land.lhs.true.i.if.end48.sink.split.i_crit_edge, label %land.lhs.true.i.xfs_sb_quota_to_disk.exit_crit_edge

land.lhs.true.i.xfs_sb_quota_to_disk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_sb_quota_to_disk.exit

land.lhs.true.i.if.end48.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.sink.split.i

if.end48.sink.split.sink.split.i:                 ; preds = %if.then35.i, %if.then28.i
  %sb_gquotino29.sink.i = phi ptr [ %sb_gquotino29.i, %if.then28.i ], [ %sb_pquotino36.i, %if.then35.i ]
  %30 = ptrtoint ptr %sb_gquotino29.sink.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sb_gquotino29.sink.i, align 8
  br label %if.end48.sink.split.i

if.end48.sink.split.i:                            ; preds = %if.end48.sink.split.sink.split.i, %land.lhs.true.i.if.end48.sink.split.i_crit_edge
  %.sink.i = phi i64 [ -1, %land.lhs.true.i.if.end48.sink.split.i_crit_edge ], [ %31, %if.end48.sink.split.sink.split.i ]
  %sb_gquotino37.i = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 33
  %32 = ptrtoint ptr %sb_gquotino37.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %.sink.i, ptr %sb_gquotino37.i, align 8
  br label %xfs_sb_quota_to_disk.exit

xfs_sb_quota_to_disk.exit:                        ; preds = %if.end48.sink.split.i, %land.lhs.true.i.xfs_sb_quota_to_disk.exit_crit_edge, %if.else38.i.xfs_sb_quota_to_disk.exit_crit_edge, %if.then.i
  %.sink74.i = phi i64 [ %15, %if.then.i ], [ 0, %if.end48.sink.split.i ], [ 0, %land.lhs.true.i.xfs_sb_quota_to_disk.exit_crit_edge ], [ 0, %if.else38.i.xfs_sb_quota_to_disk.exit_crit_edge ]
  %sb_pquotino49.i = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 52
  %33 = ptrtoint ptr %sb_pquotino49.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %.sink74.i, ptr %sb_pquotino49.i, align 8
  %34 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %from, align 8
  %36 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %to, align 8
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 1
  %37 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_blocksize, align 4
  %sb_blocksize2 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 1
  %39 = ptrtoint ptr %sb_blocksize2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sb_blocksize2, align 4
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 2
  %40 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sb_dblocks, align 8
  %sb_dblocks3 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 2
  %42 = ptrtoint ptr %sb_dblocks3 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %sb_dblocks3, align 8
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 3
  %43 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sb_rblocks, align 8
  %sb_rblocks4 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 3
  %45 = ptrtoint ptr %sb_rblocks4 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %sb_rblocks4, align 8
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 4
  %46 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sb_rextents, align 8
  %sb_rextents5 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 4
  %48 = ptrtoint ptr %sb_rextents5 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %sb_rextents5, align 8
  %sb_uuid = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 5
  %sb_uuid6 = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 5
  %49 = call ptr @memcpy(ptr %sb_uuid, ptr %sb_uuid6, i32 16)
  %sb_logstart = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 6
  %50 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sb_logstart, align 8
  %sb_logstart7 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 6
  %52 = ptrtoint ptr %sb_logstart7 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %sb_logstart7, align 8
  %sb_rootino = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 7
  %53 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sb_rootino, align 8
  %sb_rootino8 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 7
  %55 = ptrtoint ptr %sb_rootino8 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %sb_rootino8, align 8
  %sb_rbmino = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 8
  %56 = ptrtoint ptr %sb_rbmino to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %sb_rbmino, align 8
  %sb_rbmino9 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 8
  %58 = ptrtoint ptr %sb_rbmino9 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %sb_rbmino9, align 8
  %sb_rsumino = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 9
  %59 = ptrtoint ptr %sb_rsumino to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %sb_rsumino, align 8
  %sb_rsumino10 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 9
  %61 = ptrtoint ptr %sb_rsumino10 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %sb_rsumino10, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 10
  %62 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sb_rextsize, align 8
  %sb_rextsize11 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 10
  %64 = ptrtoint ptr %sb_rextsize11 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sb_rextsize11, align 8
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 11
  %65 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sb_agblocks, align 4
  %sb_agblocks12 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 11
  %67 = ptrtoint ptr %sb_agblocks12 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sb_agblocks12, align 4
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 12
  %68 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sb_agcount, align 8
  %sb_agcount13 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 12
  %70 = ptrtoint ptr %sb_agcount13 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sb_agcount13, align 8
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 13
  %71 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sb_rbmblocks, align 4
  %sb_rbmblocks14 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 13
  %73 = ptrtoint ptr %sb_rbmblocks14 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sb_rbmblocks14, align 4
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 14
  %74 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sb_logblocks, align 8
  %sb_logblocks15 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 14
  %76 = ptrtoint ptr %sb_logblocks15 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %sb_logblocks15, align 8
  %77 = ptrtoint ptr %sb_versionnum.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sb_versionnum.i.i, align 4
  %sb_versionnum16 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 15
  %79 = ptrtoint ptr %sb_versionnum16 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %sb_versionnum16, align 4
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 16
  %80 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %sb_sectsize, align 2
  %sb_sectsize17 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 16
  %82 = ptrtoint ptr %sb_sectsize17 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %sb_sectsize17, align 2
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 17
  %83 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sb_inodesize, align 8
  %sb_inodesize18 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 17
  %85 = ptrtoint ptr %sb_inodesize18 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %sb_inodesize18, align 8
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 18
  %86 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %sb_inopblock, align 2
  %sb_inopblock19 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 18
  %88 = ptrtoint ptr %sb_inopblock19 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %sb_inopblock19, align 2
  %sb_fname = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 19
  %sb_fname20 = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 19
  %89 = call ptr @memcpy(ptr %sb_fname, ptr %sb_fname20, i32 12)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 20
  %90 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sb_blocklog, align 8
  %sb_blocklog21 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 20
  %92 = ptrtoint ptr %sb_blocklog21 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %sb_blocklog21, align 8
  %sb_sectlog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 21
  %93 = ptrtoint ptr %sb_sectlog to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sb_sectlog, align 1
  %sb_sectlog22 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 21
  %95 = ptrtoint ptr %sb_sectlog22 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %sb_sectlog22, align 1
  %sb_inodelog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 22
  %96 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %sb_inodelog, align 2
  %sb_inodelog23 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 22
  %98 = ptrtoint ptr %sb_inodelog23 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %sb_inodelog23, align 2
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 23
  %99 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sb_inopblog, align 1
  %sb_inopblog24 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 23
  %101 = ptrtoint ptr %sb_inopblog24 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %sb_inopblog24, align 1
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 24
  %102 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %sb_agblklog, align 4
  %sb_agblklog25 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 24
  %104 = ptrtoint ptr %sb_agblklog25 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %sb_agblklog25, align 4
  %sb_rextslog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 25
  %105 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sb_rextslog, align 1
  %sb_rextslog26 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 25
  %107 = ptrtoint ptr %sb_rextslog26 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %sb_rextslog26, align 1
  %sb_inprogress = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 26
  %108 = ptrtoint ptr %sb_inprogress to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sb_inprogress, align 2
  %sb_inprogress27 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 26
  %110 = ptrtoint ptr %sb_inprogress27 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %sb_inprogress27, align 2
  %sb_imax_pct = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 27
  %111 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sb_imax_pct, align 1
  %sb_imax_pct28 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 27
  %113 = ptrtoint ptr %sb_imax_pct28 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %sb_imax_pct28, align 1
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 28
  %114 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %sb_icount, align 8
  %sb_icount29 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 28
  %116 = ptrtoint ptr %sb_icount29 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %sb_icount29, align 8
  %sb_ifree = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 29
  %117 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %sb_ifree, align 8
  %sb_ifree30 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 29
  %119 = ptrtoint ptr %sb_ifree30 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %sb_ifree30, align 8
  %sb_fdblocks = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 30
  %120 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %sb_fdblocks, align 8
  %sb_fdblocks31 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 30
  %122 = ptrtoint ptr %sb_fdblocks31 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %sb_fdblocks31, align 8
  %sb_frextents = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 31
  %123 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %sb_frextents, align 8
  %sb_frextents32 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 31
  %125 = ptrtoint ptr %sb_frextents32 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %sb_frextents32, align 8
  %sb_flags = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 35
  %126 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %sb_flags, align 2
  %sb_flags33 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 35
  %128 = ptrtoint ptr %sb_flags33 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %sb_flags33, align 2
  %sb_shared_vn = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 36
  %129 = ptrtoint ptr %sb_shared_vn to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %sb_shared_vn, align 1
  %sb_shared_vn34 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 36
  %131 = ptrtoint ptr %sb_shared_vn34 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %sb_shared_vn34, align 1
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 37
  %132 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sb_inoalignmt, align 4
  %sb_inoalignmt35 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 37
  %134 = ptrtoint ptr %sb_inoalignmt35 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %sb_inoalignmt35, align 4
  %sb_unit = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 38
  %135 = ptrtoint ptr %sb_unit to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sb_unit, align 8
  %sb_unit36 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 38
  %137 = ptrtoint ptr %sb_unit36 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %sb_unit36, align 8
  %sb_width = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 39
  %138 = ptrtoint ptr %sb_width to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sb_width, align 4
  %sb_width37 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 39
  %140 = ptrtoint ptr %sb_width37 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %sb_width37, align 4
  %sb_dirblklog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 40
  %141 = ptrtoint ptr %sb_dirblklog to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sb_dirblklog, align 8
  %sb_dirblklog38 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 40
  %143 = ptrtoint ptr %sb_dirblklog38 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %sb_dirblklog38, align 8
  %sb_logsectlog = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 41
  %144 = ptrtoint ptr %sb_logsectlog to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %sb_logsectlog, align 1
  %sb_logsectlog39 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 41
  %146 = ptrtoint ptr %sb_logsectlog39 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %sb_logsectlog39, align 1
  %sb_logsectsize = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 42
  %147 = ptrtoint ptr %sb_logsectsize to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %sb_logsectsize, align 2
  %sb_logsectsize40 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 42
  %149 = ptrtoint ptr %sb_logsectsize40 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %sb_logsectsize40, align 2
  %sb_logsunit = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 43
  %150 = ptrtoint ptr %sb_logsunit to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sb_logsunit, align 4
  %sb_logsunit41 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 43
  %152 = ptrtoint ptr %sb_logsunit41 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %sb_logsunit41, align 4
  %sb_features2 = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 44
  %153 = ptrtoint ptr %sb_features2 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sb_features2, align 8
  %sb_bad_features2 = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 45
  %155 = ptrtoint ptr %sb_bad_features2 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %sb_bad_features2, align 4
  %sb_features243 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 44
  %156 = ptrtoint ptr %sb_features243 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %154, ptr %sb_features243, align 8
  %157 = load i32, ptr %sb_bad_features2, align 4
  %sb_bad_features245 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 45
  %158 = ptrtoint ptr %sb_bad_features245 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %sb_bad_features245, align 4
  %159 = load i16, ptr %sb_versionnum.i.i, align 4
  %160 = and i16 %159, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %160)
  %cmp.i160 = icmp eq i16 %160, 5
  br i1 %cmp.i160, label %if.end, label %xfs_sb_quota_to_disk.exit.if.end55_crit_edge

xfs_sb_quota_to_disk.exit.if.end55_crit_edge:     ; preds = %xfs_sb_quota_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end:                                           ; preds = %xfs_sb_quota_to_disk.exit
  %sb_features_compat = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 46
  %161 = ptrtoint ptr %sb_features_compat to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sb_features_compat, align 8
  %sb_features_compat46 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 46
  %163 = ptrtoint ptr %sb_features_compat46 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %sb_features_compat46, align 8
  %sb_features_ro_compat = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 47
  %164 = ptrtoint ptr %sb_features_ro_compat to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %sb_features_ro_compat, align 4
  %sb_features_ro_compat47 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 47
  %166 = ptrtoint ptr %sb_features_ro_compat47 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %sb_features_ro_compat47, align 4
  %sb_features_incompat = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 48
  %167 = ptrtoint ptr %sb_features_incompat to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sb_features_incompat, align 8
  %sb_features_incompat48 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 48
  %169 = ptrtoint ptr %sb_features_incompat48 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %sb_features_incompat48, align 8
  %sb_features_log_incompat = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 49
  %170 = ptrtoint ptr %sb_features_log_incompat to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sb_features_log_incompat, align 4
  %sb_features_log_incompat49 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 49
  %172 = ptrtoint ptr %sb_features_log_incompat49 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %sb_features_log_incompat49, align 4
  %sb_spino_align = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 51
  %173 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sb_spino_align, align 4
  %sb_spino_align50 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 51
  %175 = ptrtoint ptr %sb_spino_align50 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %sb_spino_align50, align 4
  %sb_lsn = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 53
  %176 = ptrtoint ptr %sb_lsn to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %sb_lsn, align 8
  %sb_lsn51 = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 53
  %178 = ptrtoint ptr %sb_lsn51 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %177, ptr %sb_lsn51, align 8
  %179 = load i32, ptr %sb_features_incompat, align 8
  %and = and i32 %179, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end55_crit_edge, label %if.then53

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_dsb, ptr %to, i32 0, i32 54
  %sb_meta_uuid54 = getelementptr inbounds %struct.xfs_sb, ptr %from, i32 0, i32 54
  %180 = call ptr @memcpy(ptr %sb_meta_uuid, ptr %sb_meta_uuid54, i32 16)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end.if.end55_crit_edge, %xfs_sb_quota_to_disk.exit.if.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_sb_read_verify(ptr noundef %bp) #5 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  %sb = alloca %struct.xfs_sb, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %sb) #9
  %0 = call ptr @memset(ptr %sb, i32 255, i32 264)
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %1 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1481003842, i32 %6)
  %cmp = icmp eq i32 %6, 1481003842
  br i1 %cmp, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %sb_versionnum = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 15
  %7 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sb_versionnum, align 4
  %9 = and i16 %8, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %9)
  %cmp1 = icmp eq i16 %9, 5
  br i1 %cmp1, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sb_crc = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 50
  %10 = ptrtoint ptr %sb_crc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_crc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.not = icmp eq i32 %11, 0
  br i1 %cmp3.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %12 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %13, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #9
  %14 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %4, i32 noundef 224) #9
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #9
  %arrayidx.i.i.i = getelementptr i8, ptr %4, i32 228
  %sub.i.i.i = add i32 %shl.i, -228
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #9
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 224
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %17 = xor i32 %call3.i.i.i, -1
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i.i.not = icmp eq i32 %16, %18
  br i1 %cmp.i.i.not, label %if.then.if.end14_crit_edge, label %if.then5

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then5:                                         ; preds = %if.then
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %19 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_maps.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp7 = icmp eq i64 %22, 0
  br i1 %cmp7, label %if.then5.__here_crit_edge, label %lor.lhs.false9

if.then5.__here_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

lor.lhs.false9:                                   ; preds = %if.then5
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %23 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false9.if.end14_crit_edge, label %lor.lhs.false9.__here_crit_edge

lor.lhs.false9.__here_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

lor.lhs.false9.if.end14_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false9.if.end14_crit_edge, %if.then.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge, %entry.if.end14_crit_edge
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 8
  %27 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sb, align 8
  %sb_blocksize.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 1
  %28 = ptrtoint ptr %sb_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_blocksize.i, align 4
  %sb_blocksize2.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 1
  %30 = ptrtoint ptr %sb_blocksize2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sb_blocksize2.i, align 4
  %sb_dblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 2
  %31 = ptrtoint ptr %sb_dblocks.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sb_dblocks.i, align 8
  %sb_dblocks3.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 2
  %33 = ptrtoint ptr %sb_dblocks3.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %sb_dblocks3.i, align 8
  %sb_rblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 3
  %34 = ptrtoint ptr %sb_rblocks.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sb_rblocks.i, align 8
  %sb_rblocks4.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 3
  %36 = ptrtoint ptr %sb_rblocks4.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %sb_rblocks4.i, align 8
  %sb_rextents.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 4
  %37 = ptrtoint ptr %sb_rextents.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sb_rextents.i, align 8
  %sb_rextents5.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 4
  %39 = ptrtoint ptr %sb_rextents5.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %sb_rextents5.i, align 8
  %sb_uuid.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 5
  %sb_uuid6.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 5
  %40 = call ptr @memcpy(ptr %sb_uuid.i, ptr %sb_uuid6.i, i32 16)
  %sb_logstart.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 6
  %41 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %sb_logstart.i, align 8
  %sb_logstart7.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 6
  %43 = ptrtoint ptr %sb_logstart7.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %sb_logstart7.i, align 8
  %sb_rootino.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 7
  %44 = ptrtoint ptr %sb_rootino.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %sb_rootino.i, align 8
  %sb_rootino8.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 7
  %46 = ptrtoint ptr %sb_rootino8.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %sb_rootino8.i, align 8
  %sb_rbmino.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 8
  %47 = ptrtoint ptr %sb_rbmino.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sb_rbmino.i, align 8
  %sb_rbmino9.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 8
  %49 = ptrtoint ptr %sb_rbmino9.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %sb_rbmino9.i, align 8
  %sb_rsumino.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 9
  %50 = ptrtoint ptr %sb_rsumino.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sb_rsumino.i, align 8
  %sb_rsumino10.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 9
  %52 = ptrtoint ptr %sb_rsumino10.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %sb_rsumino10.i, align 8
  %sb_rextsize.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 10
  %53 = ptrtoint ptr %sb_rextsize.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sb_rextsize.i, align 8
  %sb_rextsize11.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 10
  %55 = ptrtoint ptr %sb_rextsize11.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sb_rextsize11.i, align 8
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 11
  %56 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sb_agblocks.i, align 4
  %sb_agblocks12.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 11
  %58 = ptrtoint ptr %sb_agblocks12.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %sb_agblocks12.i, align 4
  %sb_agcount.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 12
  %59 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sb_agcount.i, align 8
  %sb_agcount13.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 12
  %61 = ptrtoint ptr %sb_agcount13.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %sb_agcount13.i, align 8
  %sb_rbmblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 13
  %62 = ptrtoint ptr %sb_rbmblocks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sb_rbmblocks.i, align 4
  %sb_rbmblocks14.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 13
  %64 = ptrtoint ptr %sb_rbmblocks14.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sb_rbmblocks14.i, align 4
  %sb_logblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 14
  %65 = ptrtoint ptr %sb_logblocks.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sb_logblocks.i, align 8
  %sb_logblocks15.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 14
  %67 = ptrtoint ptr %sb_logblocks15.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sb_logblocks15.i, align 8
  %sb_versionnum.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 15
  %68 = ptrtoint ptr %sb_versionnum.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sb_versionnum.i, align 4
  %sb_versionnum16.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 15
  %70 = ptrtoint ptr %sb_versionnum16.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %sb_versionnum16.i, align 4
  %sb_sectsize.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 16
  %71 = ptrtoint ptr %sb_sectsize.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sb_sectsize.i, align 2
  %sb_sectsize17.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 16
  %73 = ptrtoint ptr %sb_sectsize17.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %sb_sectsize17.i, align 2
  %sb_inodesize.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 17
  %74 = ptrtoint ptr %sb_inodesize.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sb_inodesize.i, align 8
  %sb_inodesize18.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 17
  %76 = ptrtoint ptr %sb_inodesize18.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %sb_inodesize18.i, align 8
  %sb_inopblock.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 18
  %77 = ptrtoint ptr %sb_inopblock.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sb_inopblock.i, align 2
  %sb_inopblock19.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 18
  %79 = ptrtoint ptr %sb_inopblock19.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %sb_inopblock19.i, align 2
  %sb_fname.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 19
  %sb_fname20.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 19
  %80 = call ptr @memcpy(ptr %sb_fname.i, ptr %sb_fname20.i, i32 12)
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 20
  %81 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sb_blocklog.i, align 8
  %sb_blocklog21.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 20
  %83 = ptrtoint ptr %sb_blocklog21.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %sb_blocklog21.i, align 8
  %sb_sectlog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 21
  %84 = ptrtoint ptr %sb_sectlog.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sb_sectlog.i, align 1
  %sb_sectlog22.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 21
  %86 = ptrtoint ptr %sb_sectlog22.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %sb_sectlog22.i, align 1
  %sb_inodelog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 22
  %87 = ptrtoint ptr %sb_inodelog.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sb_inodelog.i, align 2
  %sb_inodelog23.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 22
  %89 = ptrtoint ptr %sb_inodelog23.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %sb_inodelog23.i, align 2
  %sb_inopblog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 23
  %90 = ptrtoint ptr %sb_inopblog.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sb_inopblog.i, align 1
  %sb_inopblog24.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 23
  %92 = ptrtoint ptr %sb_inopblog24.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %sb_inopblog24.i, align 1
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 24
  %93 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sb_agblklog.i, align 4
  %sb_agblklog25.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 24
  %95 = ptrtoint ptr %sb_agblklog25.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %sb_agblklog25.i, align 4
  %sb_rextslog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 25
  %96 = ptrtoint ptr %sb_rextslog.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %sb_rextslog.i, align 1
  %sb_rextslog26.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 25
  %98 = ptrtoint ptr %sb_rextslog26.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %sb_rextslog26.i, align 1
  %sb_inprogress.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 26
  %99 = ptrtoint ptr %sb_inprogress.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sb_inprogress.i, align 2
  %sb_inprogress27.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 26
  %101 = ptrtoint ptr %sb_inprogress27.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %sb_inprogress27.i, align 2
  %sb_imax_pct.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 27
  %102 = ptrtoint ptr %sb_imax_pct.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %sb_imax_pct.i, align 1
  %sb_imax_pct28.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 27
  %104 = ptrtoint ptr %sb_imax_pct28.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %sb_imax_pct28.i, align 1
  %sb_icount.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 28
  %105 = ptrtoint ptr %sb_icount.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %sb_icount.i, align 8
  %sb_icount29.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 28
  %107 = ptrtoint ptr %sb_icount29.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %sb_icount29.i, align 8
  %sb_ifree.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 29
  %108 = ptrtoint ptr %sb_ifree.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %sb_ifree.i, align 8
  %sb_ifree30.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 29
  %110 = ptrtoint ptr %sb_ifree30.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %sb_ifree30.i, align 8
  %sb_fdblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 30
  %111 = ptrtoint ptr %sb_fdblocks.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %sb_fdblocks.i, align 8
  %sb_fdblocks31.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 30
  %113 = ptrtoint ptr %sb_fdblocks31.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %sb_fdblocks31.i, align 8
  %sb_frextents.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 31
  %114 = ptrtoint ptr %sb_frextents.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %sb_frextents.i, align 8
  %sb_frextents32.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 31
  %116 = ptrtoint ptr %sb_frextents32.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %sb_frextents32.i, align 8
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 32
  %117 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %sb_uquotino.i, align 8
  %sb_uquotino33.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 32
  %119 = ptrtoint ptr %sb_uquotino33.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %sb_uquotino33.i, align 8
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 33
  %120 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %sb_gquotino.i, align 8
  %sb_gquotino34.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 33
  %122 = ptrtoint ptr %sb_gquotino34.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %sb_gquotino34.i, align 8
  %sb_qflags.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 34
  %123 = ptrtoint ptr %sb_qflags.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %sb_qflags.i, align 8
  %sb_qflags35.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 34
  %125 = ptrtoint ptr %sb_qflags35.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %sb_qflags35.i, align 8
  %sb_flags.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 35
  %126 = ptrtoint ptr %sb_flags.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %sb_flags.i, align 2
  %sb_flags36.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 35
  %128 = ptrtoint ptr %sb_flags36.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %sb_flags36.i, align 2
  %sb_shared_vn.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 36
  %129 = ptrtoint ptr %sb_shared_vn.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %sb_shared_vn.i, align 1
  %sb_shared_vn37.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 36
  %131 = ptrtoint ptr %sb_shared_vn37.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %sb_shared_vn37.i, align 1
  %sb_inoalignmt.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 37
  %132 = ptrtoint ptr %sb_inoalignmt.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sb_inoalignmt.i, align 4
  %sb_inoalignmt38.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 37
  %134 = ptrtoint ptr %sb_inoalignmt38.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %sb_inoalignmt38.i, align 4
  %sb_unit.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 38
  %135 = ptrtoint ptr %sb_unit.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sb_unit.i, align 8
  %sb_unit39.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 38
  %137 = ptrtoint ptr %sb_unit39.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %sb_unit39.i, align 8
  %sb_width.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 39
  %138 = ptrtoint ptr %sb_width.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sb_width.i, align 4
  %sb_width40.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 39
  %140 = ptrtoint ptr %sb_width40.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %sb_width40.i, align 4
  %sb_dirblklog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 40
  %141 = ptrtoint ptr %sb_dirblklog.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sb_dirblklog.i, align 8
  %sb_dirblklog41.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 40
  %143 = ptrtoint ptr %sb_dirblklog41.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %sb_dirblklog41.i, align 8
  %sb_logsectlog.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 41
  %144 = ptrtoint ptr %sb_logsectlog.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %sb_logsectlog.i, align 1
  %sb_logsectlog42.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 41
  %146 = ptrtoint ptr %sb_logsectlog42.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %sb_logsectlog42.i, align 1
  %sb_logsectsize.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 42
  %147 = ptrtoint ptr %sb_logsectsize.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %sb_logsectsize.i, align 2
  %sb_logsectsize43.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 42
  %149 = ptrtoint ptr %sb_logsectsize43.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %sb_logsectsize43.i, align 2
  %sb_logsunit.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 43
  %150 = ptrtoint ptr %sb_logsunit.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sb_logsunit.i, align 4
  %sb_logsunit44.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 43
  %152 = ptrtoint ptr %sb_logsunit44.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %sb_logsunit44.i, align 4
  %sb_features2.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 44
  %153 = ptrtoint ptr %sb_features2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sb_features2.i, align 8
  %sb_features245.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 44
  %155 = ptrtoint ptr %sb_features245.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %sb_features245.i, align 8
  %sb_bad_features2.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 45
  %156 = ptrtoint ptr %sb_bad_features2.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sb_bad_features2.i, align 4
  %sb_bad_features246.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 45
  %158 = ptrtoint ptr %sb_bad_features246.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %sb_bad_features246.i, align 4
  %sb_features_compat.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 46
  %159 = ptrtoint ptr %sb_features_compat.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %sb_features_compat.i, align 8
  %sb_features_compat47.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 46
  %161 = ptrtoint ptr %sb_features_compat47.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %sb_features_compat47.i, align 8
  %sb_features_ro_compat.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 47
  %162 = ptrtoint ptr %sb_features_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %sb_features_ro_compat.i, align 4
  %sb_features_ro_compat48.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 47
  %164 = ptrtoint ptr %sb_features_ro_compat48.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %sb_features_ro_compat48.i, align 4
  %sb_features_incompat.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 48
  %165 = ptrtoint ptr %sb_features_incompat.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sb_features_incompat.i, align 8
  %sb_features_incompat49.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 48
  %167 = ptrtoint ptr %sb_features_incompat49.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %sb_features_incompat49.i, align 8
  %sb_features_log_incompat.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 49
  %168 = ptrtoint ptr %sb_features_log_incompat.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sb_features_log_incompat.i, align 4
  %sb_features_log_incompat50.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 49
  %170 = ptrtoint ptr %sb_features_log_incompat50.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %sb_features_log_incompat50.i, align 4
  %sb_crc.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 50
  %171 = ptrtoint ptr %sb_crc.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %sb_crc.i, align 8
  %sb_spino_align.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 51
  %172 = ptrtoint ptr %sb_spino_align.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sb_spino_align.i, align 4
  %sb_spino_align51.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 51
  %174 = ptrtoint ptr %sb_spino_align51.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %sb_spino_align51.i, align 4
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 52
  %175 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %sb_pquotino.i, align 8
  %sb_pquotino52.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 52
  %177 = ptrtoint ptr %sb_pquotino52.i to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %176, ptr %sb_pquotino52.i, align 8
  %sb_lsn.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 53
  %178 = ptrtoint ptr %sb_lsn.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %sb_lsn.i, align 8
  %sb_lsn53.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 53
  %180 = ptrtoint ptr %sb_lsn53.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %sb_lsn53.i, align 8
  %181 = and i16 %69, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %181)
  %cmp.i.i48 = icmp ne i16 %181, 5
  %and.i49 = and i32 %166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i = icmp eq i32 %and.i49, 0
  %or.cond.i = select i1 %cmp.i.i48, i1 true, i1 %tobool.not.i
  %sb_meta_uuid56.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 54
  %sb_meta_uuid55.i = getelementptr inbounds %struct.xfs_dsb, ptr %4, i32 0, i32 54
  %sb_uuid6.sink.i = select i1 %or.cond.i, ptr %sb_uuid6.i, ptr %sb_meta_uuid55.i
  %182 = call ptr @memcpy(ptr %sb_meta_uuid56.i, ptr %sb_uuid6.sink.i, i32 16)
  %call15 = call fastcc i32 @xfs_validate_sb_common(ptr noundef %2, ptr noundef %bp, ptr noundef nonnull %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_error_crit_edge

if.end14.out_error_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = call fastcc i32 @xfs_validate_sb_read(ptr noundef %2, ptr noundef nonnull %sb)
  br label %out_error

out_error:                                        ; preds = %if.end18, %if.end14.out_error_crit_edge
  %error.0 = phi i32 [ %call15, %if.end14.out_error_crit_edge ], [ %call19, %if.end18 ]
  %183 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error.0, label %__here28 [
    i32 -117, label %out_error.__here_crit_edge
    i32 -74, label %out_error.__here_crit_edge52
    i32 0, label %out_error.if.end31_crit_edge
  ]

out_error.if.end31_crit_edge:                     ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

out_error.__here_crit_edge52:                     ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

out_error.__here_crit_edge:                       ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %out_error.__here_crit_edge, %out_error.__here_crit_edge52, %lor.lhs.false9.__here_crit_edge, %if.then5.__here_crit_edge
  %error.051 = phi i32 [ %error.0, %out_error.__here_crit_edge ], [ %error.0, %out_error.__here_crit_edge52 ], [ -74, %lor.lhs.false9.__here_crit_edge ], [ -74, %if.then5.__here_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef %error.051, ptr noundef blockaddress(@xfs_sb_read_verify, %__here)) #9
  br label %if.end31

__here28:                                         ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  call void @__xfs_buf_ioerror(ptr noundef %bp, i32 noundef %error.0, ptr noundef blockaddress(@xfs_sb_read_verify, %__here28)) #9
  br label %if.end31

if.end31:                                         ; preds = %__here28, %__here, %out_error.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %sb) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_sb_write_verify(ptr noundef %bp) #5 align 64 {
entry:
  %sb = alloca %struct.xfs_sb, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %sb) #9
  %0 = call ptr @memset(ptr %sb, i32 255, i32 264)
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %1 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_mount, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %3 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_log_item, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sb, align 8
  %sb_blocksize.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %sb_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_blocksize.i, align 4
  %sb_blocksize2.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 1
  %12 = ptrtoint ptr %sb_blocksize2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sb_blocksize2.i, align 4
  %sb_dblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %sb_dblocks.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sb_dblocks.i, align 8
  %sb_dblocks3.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 2
  %15 = ptrtoint ptr %sb_dblocks3.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %sb_dblocks3.i, align 8
  %sb_rblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 3
  %16 = ptrtoint ptr %sb_rblocks.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sb_rblocks.i, align 8
  %sb_rblocks4.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %sb_rblocks4.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sb_rblocks4.i, align 8
  %sb_rextents.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 4
  %19 = ptrtoint ptr %sb_rextents.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sb_rextents.i, align 8
  %sb_rextents5.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 4
  %21 = ptrtoint ptr %sb_rextents5.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %sb_rextents5.i, align 8
  %sb_uuid.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 5
  %sb_uuid6.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %sb_uuid.i, ptr %sb_uuid6.i, i32 16)
  %sb_logstart.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 6
  %23 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sb_logstart.i, align 8
  %sb_logstart7.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 6
  %25 = ptrtoint ptr %sb_logstart7.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %sb_logstart7.i, align 8
  %sb_rootino.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 7
  %26 = ptrtoint ptr %sb_rootino.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sb_rootino.i, align 8
  %sb_rootino8.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 7
  %28 = ptrtoint ptr %sb_rootino8.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %sb_rootino8.i, align 8
  %sb_rbmino.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 8
  %29 = ptrtoint ptr %sb_rbmino.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sb_rbmino.i, align 8
  %sb_rbmino9.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 8
  %31 = ptrtoint ptr %sb_rbmino9.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %sb_rbmino9.i, align 8
  %sb_rsumino.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 9
  %32 = ptrtoint ptr %sb_rsumino.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sb_rsumino.i, align 8
  %sb_rsumino10.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 9
  %34 = ptrtoint ptr %sb_rsumino10.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %sb_rsumino10.i, align 8
  %sb_rextsize.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 10
  %35 = ptrtoint ptr %sb_rextsize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sb_rextsize.i, align 8
  %sb_rextsize11.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 10
  %37 = ptrtoint ptr %sb_rextsize11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sb_rextsize11.i, align 8
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 11
  %38 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sb_agblocks.i, align 4
  %sb_agblocks12.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 11
  %40 = ptrtoint ptr %sb_agblocks12.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sb_agblocks12.i, align 4
  %sb_agcount.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 12
  %41 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sb_agcount.i, align 8
  %sb_agcount13.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 12
  %43 = ptrtoint ptr %sb_agcount13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sb_agcount13.i, align 8
  %sb_rbmblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 13
  %44 = ptrtoint ptr %sb_rbmblocks.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sb_rbmblocks.i, align 4
  %sb_rbmblocks14.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 13
  %46 = ptrtoint ptr %sb_rbmblocks14.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sb_rbmblocks14.i, align 4
  %sb_logblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 14
  %47 = ptrtoint ptr %sb_logblocks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sb_logblocks.i, align 8
  %sb_logblocks15.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 14
  %49 = ptrtoint ptr %sb_logblocks15.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sb_logblocks15.i, align 8
  %sb_versionnum.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 15
  %50 = ptrtoint ptr %sb_versionnum.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sb_versionnum.i, align 4
  %sb_versionnum16.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 15
  %52 = ptrtoint ptr %sb_versionnum16.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %sb_versionnum16.i, align 4
  %sb_sectsize.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 16
  %53 = ptrtoint ptr %sb_sectsize.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sb_sectsize.i, align 2
  %sb_sectsize17.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 16
  %55 = ptrtoint ptr %sb_sectsize17.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %sb_sectsize17.i, align 2
  %sb_inodesize.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 17
  %56 = ptrtoint ptr %sb_inodesize.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %sb_inodesize.i, align 8
  %sb_inodesize18.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 17
  %58 = ptrtoint ptr %sb_inodesize18.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %sb_inodesize18.i, align 8
  %sb_inopblock.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 18
  %59 = ptrtoint ptr %sb_inopblock.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %sb_inopblock.i, align 2
  %sb_inopblock19.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 18
  %61 = ptrtoint ptr %sb_inopblock19.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %sb_inopblock19.i, align 2
  %sb_fname.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 19
  %sb_fname20.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 19
  %62 = call ptr @memcpy(ptr %sb_fname.i, ptr %sb_fname20.i, i32 12)
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 20
  %63 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sb_blocklog.i, align 8
  %sb_blocklog21.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 20
  %65 = ptrtoint ptr %sb_blocklog21.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %sb_blocklog21.i, align 8
  %sb_sectlog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 21
  %66 = ptrtoint ptr %sb_sectlog.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sb_sectlog.i, align 1
  %sb_sectlog22.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 21
  %68 = ptrtoint ptr %sb_sectlog22.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %sb_sectlog22.i, align 1
  %sb_inodelog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 22
  %69 = ptrtoint ptr %sb_inodelog.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sb_inodelog.i, align 2
  %sb_inodelog23.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 22
  %71 = ptrtoint ptr %sb_inodelog23.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %sb_inodelog23.i, align 2
  %sb_inopblog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 23
  %72 = ptrtoint ptr %sb_inopblog.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sb_inopblog.i, align 1
  %sb_inopblog24.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 23
  %74 = ptrtoint ptr %sb_inopblog24.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %sb_inopblog24.i, align 1
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 24
  %75 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sb_agblklog.i, align 4
  %sb_agblklog25.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 24
  %77 = ptrtoint ptr %sb_agblklog25.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %sb_agblklog25.i, align 4
  %sb_rextslog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 25
  %78 = ptrtoint ptr %sb_rextslog.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sb_rextslog.i, align 1
  %sb_rextslog26.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 25
  %80 = ptrtoint ptr %sb_rextslog26.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %sb_rextslog26.i, align 1
  %sb_inprogress.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 26
  %81 = ptrtoint ptr %sb_inprogress.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sb_inprogress.i, align 2
  %sb_inprogress27.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 26
  %83 = ptrtoint ptr %sb_inprogress27.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %sb_inprogress27.i, align 2
  %sb_imax_pct.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 27
  %84 = ptrtoint ptr %sb_imax_pct.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sb_imax_pct.i, align 1
  %sb_imax_pct28.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 27
  %86 = ptrtoint ptr %sb_imax_pct28.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %sb_imax_pct28.i, align 1
  %sb_icount.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 28
  %87 = ptrtoint ptr %sb_icount.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %sb_icount.i, align 8
  %sb_icount29.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 28
  %89 = ptrtoint ptr %sb_icount29.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %sb_icount29.i, align 8
  %sb_ifree.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 29
  %90 = ptrtoint ptr %sb_ifree.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %sb_ifree.i, align 8
  %sb_ifree30.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 29
  %92 = ptrtoint ptr %sb_ifree30.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %sb_ifree30.i, align 8
  %sb_fdblocks.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 30
  %93 = ptrtoint ptr %sb_fdblocks.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %sb_fdblocks.i, align 8
  %sb_fdblocks31.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 30
  %95 = ptrtoint ptr %sb_fdblocks31.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %sb_fdblocks31.i, align 8
  %sb_frextents.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 31
  %96 = ptrtoint ptr %sb_frextents.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %sb_frextents.i, align 8
  %sb_frextents32.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 31
  %98 = ptrtoint ptr %sb_frextents32.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %sb_frextents32.i, align 8
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 32
  %99 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %sb_uquotino.i, align 8
  %sb_uquotino33.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 32
  %101 = ptrtoint ptr %sb_uquotino33.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %sb_uquotino33.i, align 8
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 33
  %102 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %sb_gquotino.i, align 8
  %sb_gquotino34.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 33
  %104 = ptrtoint ptr %sb_gquotino34.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %sb_gquotino34.i, align 8
  %sb_qflags.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 34
  %105 = ptrtoint ptr %sb_qflags.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sb_qflags.i, align 8
  %sb_qflags35.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 34
  %107 = ptrtoint ptr %sb_qflags35.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %sb_qflags35.i, align 8
  %sb_flags.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 35
  %108 = ptrtoint ptr %sb_flags.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sb_flags.i, align 2
  %sb_flags36.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 35
  %110 = ptrtoint ptr %sb_flags36.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %sb_flags36.i, align 2
  %sb_shared_vn.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 36
  %111 = ptrtoint ptr %sb_shared_vn.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sb_shared_vn.i, align 1
  %sb_shared_vn37.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 36
  %113 = ptrtoint ptr %sb_shared_vn37.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %sb_shared_vn37.i, align 1
  %sb_inoalignmt.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 37
  %114 = ptrtoint ptr %sb_inoalignmt.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sb_inoalignmt.i, align 4
  %sb_inoalignmt38.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 37
  %116 = ptrtoint ptr %sb_inoalignmt38.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %sb_inoalignmt38.i, align 4
  %sb_unit.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 38
  %117 = ptrtoint ptr %sb_unit.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sb_unit.i, align 8
  %sb_unit39.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 38
  %119 = ptrtoint ptr %sb_unit39.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %sb_unit39.i, align 8
  %sb_width.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 39
  %120 = ptrtoint ptr %sb_width.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sb_width.i, align 4
  %sb_width40.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 39
  %122 = ptrtoint ptr %sb_width40.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %sb_width40.i, align 4
  %sb_dirblklog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 40
  %123 = ptrtoint ptr %sb_dirblklog.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sb_dirblklog.i, align 8
  %sb_dirblklog41.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 40
  %125 = ptrtoint ptr %sb_dirblklog41.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %sb_dirblklog41.i, align 8
  %sb_logsectlog.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 41
  %126 = ptrtoint ptr %sb_logsectlog.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %sb_logsectlog.i, align 1
  %sb_logsectlog42.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 41
  %128 = ptrtoint ptr %sb_logsectlog42.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %sb_logsectlog42.i, align 1
  %sb_logsectsize.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 42
  %129 = ptrtoint ptr %sb_logsectsize.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %sb_logsectsize.i, align 2
  %sb_logsectsize43.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 42
  %131 = ptrtoint ptr %sb_logsectsize43.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %sb_logsectsize43.i, align 2
  %sb_logsunit.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 43
  %132 = ptrtoint ptr %sb_logsunit.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sb_logsunit.i, align 4
  %sb_logsunit44.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 43
  %134 = ptrtoint ptr %sb_logsunit44.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %sb_logsunit44.i, align 4
  %sb_features2.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 44
  %135 = ptrtoint ptr %sb_features2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sb_features2.i, align 8
  %sb_features245.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 44
  %137 = ptrtoint ptr %sb_features245.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %sb_features245.i, align 8
  %sb_bad_features2.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 45
  %138 = ptrtoint ptr %sb_bad_features2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sb_bad_features2.i, align 4
  %sb_bad_features246.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 45
  %140 = ptrtoint ptr %sb_bad_features246.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %sb_bad_features246.i, align 4
  %sb_features_compat.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 46
  %141 = ptrtoint ptr %sb_features_compat.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sb_features_compat.i, align 8
  %sb_features_compat47.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 46
  %143 = ptrtoint ptr %sb_features_compat47.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %sb_features_compat47.i, align 8
  %sb_features_ro_compat.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 47
  %144 = ptrtoint ptr %sb_features_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sb_features_ro_compat.i, align 4
  %sb_features_ro_compat48.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 47
  %146 = ptrtoint ptr %sb_features_ro_compat48.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %sb_features_ro_compat48.i, align 4
  %sb_features_incompat.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 48
  %147 = ptrtoint ptr %sb_features_incompat.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sb_features_incompat.i, align 8
  %sb_features_incompat49.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 48
  %149 = ptrtoint ptr %sb_features_incompat49.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %sb_features_incompat49.i, align 8
  %sb_features_log_incompat.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 49
  %150 = ptrtoint ptr %sb_features_log_incompat.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sb_features_log_incompat.i, align 4
  %sb_features_log_incompat50.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 49
  %152 = ptrtoint ptr %sb_features_log_incompat50.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %sb_features_log_incompat50.i, align 4
  %sb_crc.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 50
  %153 = ptrtoint ptr %sb_crc.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %sb_crc.i, align 8
  %sb_spino_align.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 51
  %154 = ptrtoint ptr %sb_spino_align.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %sb_spino_align.i, align 4
  %sb_spino_align51.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 51
  %156 = ptrtoint ptr %sb_spino_align51.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %sb_spino_align51.i, align 4
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 52
  %157 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %sb_pquotino.i, align 8
  %sb_pquotino52.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 52
  %159 = ptrtoint ptr %sb_pquotino52.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %sb_pquotino52.i, align 8
  %sb_lsn.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 53
  %160 = ptrtoint ptr %sb_lsn.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %sb_lsn.i, align 8
  %sb_lsn53.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 53
  %162 = ptrtoint ptr %sb_lsn53.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %sb_lsn53.i, align 8
  %163 = and i16 %51, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %163)
  %cmp.i.i = icmp ne i16 %163, 5
  %and.i = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i
  %sb_meta_uuid56.i = getelementptr inbounds %struct.xfs_sb, ptr %sb, i32 0, i32 54
  %sb_meta_uuid55.i = getelementptr inbounds %struct.xfs_dsb, ptr %6, i32 0, i32 54
  %sb_uuid6.sink.i = select i1 %or.cond.i, ptr %sb_uuid6.i, ptr %sb_meta_uuid55.i
  %164 = call ptr @memcpy(ptr %sb_meta_uuid56.i, ptr %sb_uuid6.sink.i, i32 16)
  %call = call fastcc i32 @xfs_validate_sb_common(ptr noundef %2, ptr noundef %bp, ptr noundef nonnull %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.__here_crit_edge

entry.__here_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @xfs_validate_sb_write(ptr noundef %2, ptr noundef %bp, ptr noundef nonnull %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.__here_crit_edge

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

if.end4:                                          ; preds = %if.end
  %165 = ptrtoint ptr %sb_versionnum16.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %sb_versionnum16.i, align 4
  %167 = and i16 %166, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %167)
  %cmp.i = icmp eq i16 %167, 5
  br i1 %cmp.i, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %4, i32 0, i32 2
  %168 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %li_lsn, align 8
  %170 = ptrtoint ptr %sb_lsn.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %sb_lsn.i, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %171 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %173 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %174, 9
  %add.ptr.i.i.i = getelementptr i8, ptr %172, i32 224
  %175 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = call i32 @crc32c(i32 noundef -1, ptr noundef %172, i32 noundef %shl.i) #9
  %176 = xor i32 %call.i.i.i, -1
  %177 = call i32 @llvm.bswap.i32(i32 %176) #9
  %178 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

__here:                                           ; preds = %if.end.__here_crit_edge, %entry.__here_crit_edge
  %error.0 = phi i32 [ %call, %entry.__here_crit_edge ], [ %call1, %if.end.__here_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef %error.0, ptr noundef blockaddress(@xfs_sb_write_verify, %__here)) #9
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.end10, %if.end4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %sb) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_sb_quiet_read_verify(ptr noundef %bp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1481003842, i32 %3)
  %cmp = icmp eq i32 %3, 1481003842
  br i1 %cmp, label %if.then, label %__here

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_sb_read_verify(ptr noundef %bp)
  br label %cleanup

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  tail call void @__xfs_buf_ioerror(ptr noundef %bp, i32 noundef -22, ptr noundef blockaddress(@xfs_sb_quiet_read_verify, %__here)) #9
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_sb_mount_common(ptr noundef %mp, ptr nocapture noundef readonly %sbp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_agirotor = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 94
  %0 = ptrtoint ptr %m_agirotor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %m_agirotor, align 4
  %m_agfrotor = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 93
  %1 = ptrtoint ptr %m_agfrotor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %m_agfrotor, align 8
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount, align 8
  %m_maxagi = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 52
  %4 = ptrtoint ptr %m_maxagi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %m_maxagi, align 16
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 20
  %5 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_blocklog, align 8
  %add = add i8 %6, 3
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %7 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %add, ptr %m_blkbit_log, align 4
  %8 = load i8, ptr %sb_blocklog, align 8
  %sub = add i8 %8, -9
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %9 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %sub, ptr %m_blkbb_log, align 1
  %sb_sectlog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 21
  %10 = ptrtoint ptr %sb_sectlog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_sectlog, align 1
  %sub6 = add i8 %11, -9
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %12 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sub6, ptr %m_sectbb_log, align 1
  %sb_agcount8 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 12
  %13 = ptrtoint ptr %sb_agcount8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_agcount8, align 8
  %sub9 = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %tobool.not.i.i = icmp eq i32 %sub9, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub9, i1 true) #9, !range !92
  %16 = trunc i32 %15 to i8
  %.op = sub nuw nsw i8 32, %16
  %conv11 = select i1 %tobool.not.i.i, i8 0, i8 %.op
  %m_agno_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 29
  %17 = ptrtoint ptr %m_agno_log to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %m_agno_log, align 2
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 1
  %18 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_blocksize, align 4
  %sub12 = add i32 %19, -1
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %20 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub12, ptr %m_blockmask, align 8
  %21 = load i32, ptr %sb_blocksize, align 4
  %shr = lshr i32 %21, 2
  %m_blockwsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 32
  %22 = ptrtoint ptr %m_blockwsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %m_blockwsize, align 4
  %sub15 = add nsw i32 %shr, -1
  %m_blockwmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 33
  %23 = ptrtoint ptr %m_blockwmask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub15, ptr %m_blockwmask, align 128
  %24 = load i32, ptr %sb_blocksize, align 4
  %call17 = tail call i32 @xfs_allocbt_maxrecs(ptr noundef %mp, i32 noundef %24, i32 noundef 1) #9
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 34
  %25 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call17, ptr %m_alloc_mxr, align 4
  %26 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_blocksize, align 4
  %call19 = tail call i32 @xfs_allocbt_maxrecs(ptr noundef %mp, i32 noundef %27, i32 noundef 0) #9
  %arrayidx21 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 34, i32 1
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call19, ptr %arrayidx21, align 4
  %29 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_alloc_mxr, align 4
  %div140 = lshr i32 %30, 1
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 35
  %31 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div140, ptr %m_alloc_mnr, align 4
  %div27141 = lshr i32 %call19, 1
  %arrayidx29 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 35, i32 1
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div27141, ptr %arrayidx29, align 4
  %33 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_blocksize, align 4
  %call31 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %mp, i32 noundef %34, i32 noundef 1) #9
  %m_bmap_dmxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 36
  %35 = ptrtoint ptr %m_bmap_dmxr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call31, ptr %m_bmap_dmxr, align 4
  %36 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_blocksize, align 4
  %call34 = tail call i32 @xfs_bmbt_maxrecs(ptr noundef %mp, i32 noundef %37, i32 noundef 0) #9
  %arrayidx36 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 36, i32 1
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call34, ptr %arrayidx36, align 4
  %39 = ptrtoint ptr %m_bmap_dmxr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %m_bmap_dmxr, align 4
  %div39142 = lshr i32 %40, 1
  %m_bmap_dmnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 37
  %41 = ptrtoint ptr %m_bmap_dmnr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div39142, ptr %m_bmap_dmnr, align 4
  %div43143 = lshr i32 %call34, 1
  %arrayidx45 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 37, i32 1
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div43143, ptr %arrayidx45, align 4
  %43 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_blocksize, align 4
  %call47 = tail call i32 @xfs_rmapbt_maxrecs(i32 noundef %44, i32 noundef 1) #9
  %m_rmap_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 38
  %45 = ptrtoint ptr %m_rmap_mxr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call47, ptr %m_rmap_mxr, align 4
  %46 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sb_blocksize, align 4
  %call50 = tail call i32 @xfs_rmapbt_maxrecs(i32 noundef %47, i32 noundef 0) #9
  %arrayidx52 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 38, i32 1
  %48 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call50, ptr %arrayidx52, align 4
  %49 = ptrtoint ptr %m_rmap_mxr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %m_rmap_mxr, align 4
  %div55144 = lshr i32 %50, 1
  %m_rmap_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 39
  %51 = ptrtoint ptr %m_rmap_mnr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div55144, ptr %m_rmap_mnr, align 4
  %div59145 = lshr i32 %call50, 1
  %arrayidx61 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 39, i32 1
  %52 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div59145, ptr %arrayidx61, align 4
  %53 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sb_blocksize, align 4
  %call63 = tail call i32 @xfs_refcountbt_maxrecs(i32 noundef %54, i1 noundef zeroext true) #9
  %m_refc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 40
  %55 = ptrtoint ptr %m_refc_mxr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call63, ptr %m_refc_mxr, align 4
  %56 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sb_blocksize, align 4
  %call66 = tail call i32 @xfs_refcountbt_maxrecs(i32 noundef %57, i1 noundef zeroext false) #9
  %arrayidx68 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 40, i32 1
  %58 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call66, ptr %arrayidx68, align 4
  %59 = ptrtoint ptr %m_refc_mxr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %m_refc_mxr, align 4
  %div71146 = lshr i32 %60, 1
  %m_refc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 41
  %61 = ptrtoint ptr %m_refc_mnr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div71146, ptr %m_refc_mnr, align 4
  %div75147 = lshr i32 %call66, 1
  %arrayidx77 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 41, i32 1
  %62 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div75147, ptr %arrayidx77, align 4
  %63 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %m_blkbb_log, align 1
  %conv79 = zext i8 %64 to i32
  %shl = shl nuw i32 1, %conv79
  %m_bsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 26
  %65 = ptrtoint ptr %m_bsize to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl, ptr %m_bsize, align 16
  %call80 = tail call i32 @xfs_alloc_set_aside(ptr noundef %mp) #9
  %m_alloc_set_aside = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 48
  %66 = ptrtoint ptr %m_alloc_set_aside to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call80, ptr %m_alloc_set_aside, align 32
  %call81 = tail call i32 @xfs_alloc_ag_max_usable(ptr noundef %mp) #9
  %m_ag_max_usable = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 49
  %67 = ptrtoint ptr %m_ag_max_usable to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call81, ptr %m_ag_max_usable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_allocbt_maxrecs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmbt_maxrecs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmapbt_maxrecs(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcountbt_maxrecs(i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_set_aside(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_ag_max_usable(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_log_sb(ptr noundef %tp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %call = tail call ptr @xfs_trans_getsb(ptr noundef %tp) #9
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %m_icount = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 77
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %m_icount) #9
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %sb_icount to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %sb_icount, align 128
  %m_ifree = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 78
  %call.i20 = tail call i64 @__percpu_counter_sum(ptr noundef %m_ifree) #9
  %sb_ifree = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i20, ptr %sb_ifree, align 8
  %m_fdblocks = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 79
  %call.i21 = tail call i64 @__percpu_counter_sum(ptr noundef %m_fdblocks) #9
  %sb_fdblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i21, ptr %sb_fdblocks, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_addr, align 4
  tail call void @xfs_sb_to_disk(ptr noundef %8, ptr noundef %1)
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %call, i32 noundef 18) #9
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %call, i32 noundef 0, i32 noundef 263) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_trans_getsb(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_sync_sb(ptr noundef %mp, i1 noundef zeroext %wait) local_unnamed_addr #5 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !93
  %tr_sb = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 24
  %call = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_sb, i32 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tp, align 4
  call void @xfs_log_sb(ptr noundef %2)
  br i1 %wait, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_flags, align 4
  %or = or i32 %6, 8
  store i32 %or, ptr %t_flags, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %call4 = call i32 @xfs_trans_commit(ptr noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_update_secondary_sbs(ptr noundef %mp) local_unnamed_addr #5 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %buffer_list = alloca %struct.list_head, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %buffer_list, i32 0, i32 1
  %1 = ptrtoint ptr %buffer_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buffer_list, ptr %buffer_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buffer_list, ptr %0, align 4
  %call = call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 1) #9
  %cmp.not67 = icmp eq ptr %call, null
  br i1 %cmp.not67, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %3 = getelementptr inbounds i8, ptr %map.i, i32 8
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %saved_error.070 = phi i32 [ 0, %for.body.lr.ph ], [ %saved_error.3, %xfs_perag_next.exit.for.body_crit_edge ]
  %pag.069 = phi ptr [ %call, %for.body.lr.ph ], [ %call.i62, %xfs_perag_next.exit.for.body_crit_edge ]
  %agno.068 = phi i32 [ 1, %for.body.lr.ph ], [ %add.i, %xfs_perag_next.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !93
  %5 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_ddev_targp, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag.069, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %8 to i64
  %9 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks, align 4
  %conv1 = zext i32 %10 to i64
  %mul = mul nuw i64 %conv1, %conv
  %11 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %12 to i64
  %shl = shl i64 %mul, %sh_prom
  %13 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_sectbb_log, align 1
  %conv4 = zext i8 %14 to i32
  %shl5 = shl nuw i32 1, %conv4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %3, align 8
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shl, ptr %map.i, align 8
  store i32 %shl5, ptr %3, align 8
  %call.i = call i32 @xfs_buf_get_map(ptr noundef %6, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno, align 4
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.2, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saved_error.070)
  %tobool8.not = icmp eq i32 %saved_error.070, 0
  %spec.select = select i1 %tobool8.not, i32 %call.i, i32 %saved_error.070
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 35
  %21 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xfs_sb_buf_ops, ptr %b_ops, align 4
  %b_lru.i = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 7
  %22 = ptrtoint ptr %b_lru.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %b_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %b_lru.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.end10.xfs_buf_oneshot.exit_crit_edge

if.end10.xfs_buf_oneshot.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_buf_oneshot.exit

lor.lhs.false.i:                                  ; preds = %if.end10
  %b_lru_ref.i = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b_lru_ref.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %b_lru_ref.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %b_lru_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i = icmp sgt i32 %25, 1
  br i1 %cmp.i, label %lor.lhs.false.i.xfs_buf_oneshot.exit_crit_edge, label %if.end.i

lor.lhs.false.i.xfs_buf_oneshot.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_buf_oneshot.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_lru_ref.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %b_lru_ref.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %b_lru_ref.i, align 4
  br label %xfs_buf_oneshot.exit

xfs_buf_oneshot.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.xfs_buf_oneshot.exit_crit_edge, %if.end10.xfs_buf_oneshot.exit_crit_edge
  %27 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_length, align 8
  %shl11 = shl i32 %30, 9
  call void @xfs_buf_zero(ptr noundef %28, i32 noundef 0, i32 noundef %shl11) #9
  %31 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_addr, align 4
  call void @xfs_sb_to_disk(ptr noundef %34, ptr noundef %mp)
  %35 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bp, align 4
  %call13 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %36, ptr noundef nonnull %buffer_list) #9
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %38) #9
  call void @xfs_buf_rele(ptr noundef %38) #9
  %rem = and i32 %agno.068, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool14.not = icmp eq i32 %rem, 0
  br i1 %tobool14.not, label %if.end16, label %xfs_buf_oneshot.exit.cleanup_crit_edge

xfs_buf_oneshot.exit.cleanup_crit_edge:           ; preds = %xfs_buf_oneshot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %xfs_buf_oneshot.exit
  %call17 = call i32 @xfs_buf_delwri_submit(ptr noundef nonnull %buffer_list) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pag_agno, align 4
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.3, i32 noundef %call17, i32 noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saved_error.070)
  %tobool21.not = icmp eq i32 %saved_error.070, 0
  %spec.select60 = select i1 %tobool21.not, i32 %call17, i32 %saved_error.070
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge, %xfs_buf_oneshot.exit.cleanup_crit_edge, %if.then
  %saved_error.3 = phi i32 [ %spec.select, %if.then ], [ %spec.select60, %if.then19 ], [ %saved_error.070, %xfs_buf_oneshot.exit.cleanup_crit_edge ], [ %saved_error.070, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  %41 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %42, -1
  %43 = ptrtoint ptr %pag.069 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pag.069, align 4
  %45 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pag_agno, align 4
  %add.i = add i32 %46, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.069) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i61 = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i61, label %cleanup.for.end_crit_edge, label %xfs_perag_next.exit

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

xfs_perag_next.exit:                              ; preds = %cleanup
  %call.i62 = call ptr @xfs_perag_get(ptr noundef %44, i32 noundef %add.i) #9
  %cmp.not = icmp eq ptr %call.i62, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %agno.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %add.i, %xfs_perag_next.exit.for.end_crit_edge ], [ %add.i, %cleanup.for.end_crit_edge ]
  %saved_error.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %saved_error.3, %xfs_perag_next.exit.for.end_crit_edge ], [ %saved_error.3, %cleanup.for.end_crit_edge ]
  %call27 = call i32 @xfs_buf_delwri_submit(ptr noundef nonnull %buffer_list) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.end.if.end30_crit_edge, label %if.then29

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.3, i32 noundef %call27, i32 noundef %agno.0.lcssa) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.end.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saved_error.0.lcssa)
  %tobool31.not = icmp eq i32 %saved_error.0.lcssa, 0
  %call27.saved_error.0 = select i1 %tobool31.not, i32 %call27, i32 %saved_error.0.lcssa
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer_list) #9
  ret i32 %call27.saved_error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_zero(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_delwri_submit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_sync_sb_buf(ptr noundef %mp) local_unnamed_addr #5 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !93
  %tr_sb = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 24
  %call = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_sb, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tp, align 4
  %call1 = call ptr @xfs_trans_getsb(ptr noundef %2) #9
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  call void @xfs_log_sb(ptr noundef %4)
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp, align 4
  call void @xfs_trans_bhold(ptr noundef %6, ptr noundef %call1) #9
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_flags, align 4
  %or = or i32 %10, 8
  store i32 %or, ptr %t_flags, align 4
  %call2 = call i32 @xfs_trans_commit(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 @xfs_bwrite(ptr noundef %call1) #9
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call6, %if.end5 ]
  call void @xfs_buf_unlock(ptr noundef %call1) #9
  call void @xfs_buf_rele(ptr noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bwrite(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_fs_geometry(ptr noundef readonly %mp, ptr noundef %geo, i32 noundef %struct_version) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %geo, i32 0, i32 256)
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %1 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sb_blocksize, align 4
  %3 = ptrtoint ptr %geo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %geo, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 10
  %4 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_rextsize, align 8
  %rtextsize = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 1
  %6 = ptrtoint ptr %rtextsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rtextsize, align 4
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %7 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_agblocks, align 4
  %agblocks = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 2
  %9 = ptrtoint ptr %agblocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %agblocks, align 8
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %10 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_agcount, align 8
  %agcount = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 3
  %12 = ptrtoint ptr %agcount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %agcount, align 4
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %13 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_logblocks, align 8
  %logblocks = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 4
  %15 = ptrtoint ptr %logblocks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %logblocks, align 8
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %16 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_sectsize, align 2
  %conv = zext i16 %17 to i32
  %sectsize = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 5
  %18 = ptrtoint ptr %sectsize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %sectsize, align 4
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %19 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sb_inodesize, align 8
  %conv1 = zext i16 %20 to i32
  %inodesize = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 6
  %21 = ptrtoint ptr %inodesize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv1, ptr %inodesize, align 8
  %sb_imax_pct = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 27
  %22 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sb_imax_pct, align 1
  %conv2 = zext i8 %23 to i32
  %imaxpct = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 7
  %24 = ptrtoint ptr %imaxpct to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv2, ptr %imaxpct, align 4
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %25 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sb_dblocks, align 8
  %datablocks = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 8
  %27 = ptrtoint ptr %datablocks to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %datablocks, align 8
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 3
  %28 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sb_rblocks, align 8
  %rtblocks = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 9
  %30 = ptrtoint ptr %rtblocks to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rtblocks, align 8
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %31 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sb_rextents, align 8
  %rtextents = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 10
  %33 = ptrtoint ptr %rtextents to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rtextents, align 8
  %sb_logstart = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %34 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sb_logstart, align 8
  %logstart = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 11
  %36 = ptrtoint ptr %logstart to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %logstart, align 8
  %uuid = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 12
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 5
  %37 = call ptr @memcpy(ptr %uuid, ptr %sb_uuid, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %struct_version)
  %cmp = icmp slt i32 %struct_version, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_unit = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 38
  %38 = ptrtoint ptr %sb_unit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sb_unit, align 8
  %sunit = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 13
  %40 = ptrtoint ptr %sunit to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sunit, align 8
  %sb_width = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 39
  %41 = ptrtoint ptr %sb_width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sb_width, align 4
  %swidth = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 14
  %43 = ptrtoint ptr %swidth to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %swidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %struct_version)
  %cmp4 = icmp eq i32 %struct_version, 2
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 15
  %44 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %version, align 8
  %flags = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 16
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 194, ptr %flags, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %46 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %47, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.store.select = select i1 %tobool.i.not, i32 194, i32 195
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.store.select, ptr %flags, align 4
  %49 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %m_features.i, align 8
  %and.i190 = and i64 %50, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i190)
  %tobool.i191.not = icmp eq i64 %and.i190, 0
  br i1 %tobool.i191.not, label %if.end7.if.end15_crit_edge, label %if.then12

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %or14 = or i32 %52, 4
  store i32 %or14, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end7.if.end15_crit_edge
  %53 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m_features.i, align 8
  %and.i193 = and i64 %54, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i193)
  %tobool.i194.not = icmp eq i64 %and.i193, 0
  br i1 %tobool.i194.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %or19 = or i32 %56, 8
  store i32 %or19, ptr %flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %57 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %m_features.i, align 8
  %and.i196 = and i64 %58, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i196)
  %tobool.i197.not = icmp eq i64 %and.i196, 0
  br i1 %tobool.i197.not, label %if.end20.if.end25_crit_edge, label %if.then22

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %or24 = or i32 %60, 16
  store i32 %or24, ptr %flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %61 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %m_features.i, align 8
  %and.i199 = and i64 %62, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i199)
  %tobool.i200.not = icmp eq i64 %and.i199, 0
  br i1 %tobool.i200.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %or29 = or i32 %64, 4096
  store i32 %or29, ptr %flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  %65 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %m_features.i, align 8
  %and.i202 = and i64 %66, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i202)
  %tobool.i203.not = icmp eq i64 %and.i202, 0
  br i1 %tobool.i203.not, label %if.end30.if.end35_crit_edge, label %if.then32

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %or34 = or i32 %68, 16384
  store i32 %or34, ptr %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %69 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %m_features.i, align 8
  %and.i205 = and i64 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i205)
  %tobool.i206.not = icmp eq i64 %and.i205, 0
  br i1 %tobool.i206.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %or39 = or i32 %72, 1024
  store i32 %or39, ptr %flags, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %73 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %m_features.i, align 8
  %and.i208 = and i64 %74, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i208)
  %tobool.i209.not = icmp eq i64 %and.i208, 0
  br i1 %tobool.i209.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %or44 = or i32 %76, 2048
  store i32 %or44, ptr %flags, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %77 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %m_features.i, align 8
  %and.i211 = and i64 %78, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i211)
  %tobool.i212.not = icmp eq i64 %and.i211, 0
  br i1 %tobool.i212.not, label %if.end45.if.end50_crit_edge, label %if.then47

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 4
  %or49 = or i32 %80, 32768
  store i32 %or49, ptr %flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45.if.end50_crit_edge
  %81 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %m_features.i, align 8
  %and.i214 = and i64 %82, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i214)
  %tobool.i215.not = icmp eq i64 %and.i214, 0
  br i1 %tobool.i215.not, label %if.end50.if.end55_crit_edge, label %if.then52

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 4
  %or54 = or i32 %84, 65536
  store i32 %or54, ptr %flags, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end50.if.end55_crit_edge
  %85 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %m_features.i, align 8
  %and.i217 = and i64 %86, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i217)
  %tobool.i218.not = icmp eq i64 %and.i217, 0
  br i1 %tobool.i218.not, label %if.end55.if.end60_crit_edge, label %if.then57

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags, align 4
  %or59 = or i32 %88, 131072
  store i32 %or59, ptr %flags, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end55.if.end60_crit_edge
  %89 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %m_features.i, align 8
  %and.i220 = and i64 %90, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i220)
  %tobool.i221.not = icmp eq i64 %and.i220, 0
  br i1 %tobool.i221.not, label %if.end60.if.end65_crit_edge, label %if.then62

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags, align 4
  %or64 = or i32 %92, 262144
  store i32 %or64, ptr %flags, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end60.if.end65_crit_edge
  %93 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %m_features.i, align 8
  %and.i223 = and i64 %94, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i223)
  %tobool.i224.not = icmp eq i64 %and.i223, 0
  br i1 %tobool.i224.not, label %if.end65.if.end70_crit_edge, label %if.then67

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %or69 = or i32 %96, 524288
  store i32 %or69, ptr %flags, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end65.if.end70_crit_edge
  %97 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %m_features.i, align 8
  %and.i226 = and i64 %98, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i226)
  %tobool.i227.not = icmp eq i64 %and.i226, 0
  br i1 %tobool.i227.not, label %if.end70.if.end75_crit_edge, label %if.then72

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %or74 = or i32 %100, 1048576
  store i32 %or74, ptr %flags, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end70.if.end75_crit_edge
  %101 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %m_features.i, align 8
  %and.i229 = and i64 %102, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i229)
  %tobool.i230.not = icmp eq i64 %and.i229, 0
  br i1 %tobool.i230.not, label %if.end75.if.end80_crit_edge, label %if.then77

if.end75.if.end80_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags, align 4
  %or79 = or i32 %104, 2097152
  store i32 %or79, ptr %flags, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end75.if.end80_crit_edge
  %105 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %m_features.i, align 8
  %and.i232 = and i64 %106, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i232)
  %tobool.i233.not = icmp eq i64 %and.i232, 0
  br i1 %tobool.i233.not, label %if.end80.if.end85_crit_edge, label %if.then82

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags, align 4
  %or84 = or i32 %108, 4194304
  store i32 %or84, ptr %flags, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end80.if.end85_crit_edge
  %109 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %m_features.i, align 8
  %and.i235 = and i64 %110, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i235)
  %tobool.i236.not = icmp eq i64 %and.i235, 0
  br i1 %tobool.i236.not, label %if.end85.if.end92_crit_edge, label %if.then87

if.end85.if.end92_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags, align 4
  %or89 = or i32 %112, 512
  store i32 %or89, ptr %flags, align 4
  %sb_logsectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 42
  %113 = ptrtoint ptr %sb_logsectsize to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %sb_logsectsize, align 2
  %conv90 = zext i16 %114 to i32
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end85.if.end92_crit_edge
  %conv90.sink = phi i32 [ %conv90, %if.then87 ], [ 512, %if.end85.if.end92_crit_edge ]
  %115 = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 17
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv90.sink, ptr %115, align 8
  %117 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sb_blocksize, align 4
  %rtsectsize = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 18
  %119 = ptrtoint ptr %rtsectsize to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %rtsectsize, align 4
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %120 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %sb_blocklog.i, align 8
  %conv.i = zext i8 %121 to i32
  %sb_dirblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 40
  %122 = ptrtoint ptr %sb_dirblklog.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %sb_dirblklog.i, align 8
  %conv1.i = zext i8 %123 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %shl.i = shl nuw i32 1, %add.i
  %dirblocksize = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 19
  %124 = ptrtoint ptr %dirblocksize to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %shl.i, ptr %dirblocksize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %struct_version)
  %cmp95 = icmp ult i32 %struct_version, 4
  br i1 %cmp95, label %if.end92.cleanup_crit_edge, label %if.end98

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end98:                                         ; preds = %if.end92
  %125 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %m_features.i, align 8
  %and.i238 = and i64 %126, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i238)
  %tobool.i239.not = icmp eq i64 %and.i238, 0
  br i1 %tobool.i239.not, label %if.end98.if.end103_crit_edge, label %if.then100

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags, align 4
  %or102 = or i32 %128, 256
  store i32 %or102, ptr %flags, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end98.if.end103_crit_edge
  %sb_logsunit = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 43
  %129 = ptrtoint ptr %sb_logsunit to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sb_logsunit, align 4
  %logsunit = getelementptr inbounds %struct.xfs_fsop_geom, ptr %geo, i32 0, i32 20
  %131 = ptrtoint ptr %logsunit to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %logsunit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %struct_version)
  %cmp104 = icmp ult i32 %struct_version, 5
  br i1 %cmp104, label %if.end103.cleanup_crit_edge, label %if.end107

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end107:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 5, ptr %version, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.end103.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_sb_read_secondary(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno, ptr nocapture noundef writeonly %bpp) local_unnamed_addr #5 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !93
  %1 = add i32 %agno, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %entry.cond.end_crit_edge, label %cond.false, !prof !94

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1166) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %3 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_ddev_targp, align 8
  %conv = zext i32 %agno to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %5 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_agblocks, align 4
  %conv3 = zext i32 %6 to i64
  %mul = mul nuw i64 %conv3, %conv
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %7 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %8 to i64
  %shl = shl i64 %mul, %sh_prom
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %9 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m_sectbb_log, align 1
  %conv11 = zext i8 %10 to i32
  %shl12 = shl nuw i32 1, %conv11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %11 = getelementptr inbounds i8, ptr %map.i, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %11, align 8
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl, ptr %map.i, align 8
  store i32 %shl12, ptr %11, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef %tp, ptr noundef %4, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_sb_buf_ops) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  call void @xfs_buf_set_ref(ptr noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bp, align 4
  %18 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_set_ref(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_sb_get_secondary(ptr nocapture noundef readonly %mp, ptr noundef %tp, i32 noundef %agno, ptr nocapture noundef writeonly %bpp) local_unnamed_addr #5 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !93
  %1 = add i32 %agno, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %entry.cond.end_crit_edge, label %cond.false, !prof !94

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1188) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %3 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_ddev_targp, align 8
  %conv = zext i32 %agno to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %5 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_agblocks, align 4
  %conv3 = zext i32 %6 to i64
  %mul = mul nuw i64 %conv3, %conv
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %7 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %8 to i64
  %shl = shl i64 %mul, %sh_prom
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %9 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m_sectbb_log, align 1
  %conv11 = zext i8 %10 to i32
  %shl12 = shl nuw i32 1, %conv11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %11 = getelementptr inbounds i8, ptr %map.i, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %11, align 8
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl, ptr %map.i, align 8
  store i32 %shl12, ptr %11, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %tp, ptr noundef %4, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xfs_sb_buf_ops, ptr %b_ops, align 4
  %b_lru.i = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %b_lru.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %b_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %b_lru.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.end.xfs_buf_oneshot.exit_crit_edge

if.end.xfs_buf_oneshot.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_buf_oneshot.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %b_lru_ref.i = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b_lru_ref.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %b_lru_ref.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %b_lru_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp sgt i32 %20, 1
  br i1 %cmp.i, label %lor.lhs.false.i.xfs_buf_oneshot.exit_crit_edge, label %if.end.i

lor.lhs.false.i.xfs_buf_oneshot.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_buf_oneshot.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_lru_ref.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %b_lru_ref.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %b_lru_ref.i, align 4
  br label %xfs_buf_oneshot.exit

xfs_buf_oneshot.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.xfs_buf_oneshot.exit_crit_edge, %if.end.xfs_buf_oneshot.exit_crit_edge
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp, align 4
  %24 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_buf_oneshot.exit, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_validate_stripe_geometry(ptr noundef %mp, i64 noundef %sunit, i64 noundef %swidth, i32 noundef %sectorsize, i1 noundef zeroext %silent) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %swidth)
  %cmp = icmp sgt i64 %swidth, 2147483647
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  br i1 %silent, label %if.then.return_crit_edge, label %if.then1

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.6, i64 noundef %swidth) #9
  br label %return

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %sunit, i64 %swidth)
  %cmp3 = icmp sgt i64 %sunit, %swidth
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end2
  br i1 %silent, label %if.then4.return_crit_edge, label %if.then6

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.7, i64 noundef %sunit, i64 noundef %swidth) #9
  br label %return

if.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sectorsize)
  %tobool9.not = icmp eq i32 %sectorsize, 0
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %land.lhs.true

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %conv = trunc i64 %sunit to i32
  %rem = srem i32 %conv, %sectorsize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end15_crit_edge, label %if.then11

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %land.lhs.true
  br i1 %silent, label %if.then11.return_crit_edge, label %if.then13

if.then11.return_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.8, i64 noundef %sunit, i32 noundef %sectorsize) #9
  br label %return

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sunit)
  %tobool16.not = icmp eq i64 %sunit, 0
  %tobool16.not.not = xor i1 %tobool16.not, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %swidth)
  %tobool18.not = icmp eq i64 %swidth, 0
  %or.cond = and i1 %tobool18.not, %tobool16.not.not
  br i1 %or.cond, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end15
  br i1 %silent, label %if.then19.return_crit_edge, label %if.then21

if.then19.return_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.9, i64 noundef %sunit) #9
  br label %return

if.end23:                                         ; preds = %if.end15
  %or.cond73 = or i1 %tobool18.not, %tobool16.not.not
  br i1 %or.cond73, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end23
  br i1 %silent, label %if.then27.return_crit_edge, label %if.then29

if.then27.return_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.10, i64 noundef %swidth) #9
  br label %return

if.end31:                                         ; preds = %if.end23
  br i1 %tobool16.not, label %if.end31.return_crit_edge, label %land.lhs.true33

if.end31.return_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true33:                                  ; preds = %if.end31
  %conv34 = trunc i64 %swidth to i32
  %conv35 = trunc i64 %sunit to i32
  %rem36 = srem i32 %conv34, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem36)
  %tobool37.not = icmp eq i32 %rem36, 0
  %brmerge = or i1 %tobool37.not, %silent
  br i1 %brmerge, label %land.lhs.true33.return_crit_edge, label %if.then40

land.lhs.true33.return_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then40:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.11, i64 noundef %swidth, i64 noundef %sunit) #9
  br label %return

return:                                           ; preds = %if.then40, %land.lhs.true33.return_crit_edge, %if.end31.return_crit_edge, %if.then29, %if.then27.return_crit_edge, %if.then21, %if.then19.return_crit_edge, %if.then13, %if.then11.return_crit_edge, %if.then6, %if.then4.return_crit_edge, %if.then1, %if.then.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then1 ], [ false, %if.then.return_crit_edge ], [ false, %if.then6 ], [ false, %if.then4.return_crit_edge ], [ false, %if.then13 ], [ false, %if.then11.return_crit_edge ], [ false, %if.then21 ], [ false, %if.then19.return_crit_edge ], [ false, %if.then29 ], [ false, %if.then27.return_crit_edge ], [ false, %if.then40 ], [ %tobool37.not, %land.lhs.true33.return_crit_edge ], [ true, %if.end31.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_validate_sb_common(ptr noundef %mp, ptr noundef %bp, ptr noundef readonly %sbp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %3) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.12) #9
  br label %cleanup346

if.end:                                           ; preds = %entry
  %sb_versionnum.i.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 15
  %4 = ptrtoint ptr %sb_versionnum.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sb_versionnum.i.i, align 4
  %6 = and i16 %5, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %6)
  %cmp.i.i = icmp eq i16 %6, 5
  br i1 %cmp.i.i, label %if.then5, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i16 %5 to i32
  %and.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  %and6.i = and i32 %conv.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp ne i32 %and6.i, 0
  %and11.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp ne i32 %and11.i, 0
  %not.or.cond.i = and i1 %cmp.i, %tobool.not.i
  %or.cond33.i = select i1 %not.or.cond.i, i1 %tobool12.not.i, i1 false
  %and17.i = and i32 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %or.cond34.i = select i1 %or.cond33.i, i1 %tobool18.not.i, i1 false
  br i1 %or.cond34.i, label %lor.lhs.false.i, label %if.end.i.if.then2_crit_edge

if.end.i.if.then2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

lor.lhs.false.i:                                  ; preds = %if.end.i
  %and21.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %lor.lhs.false.i.if.else_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %sb_features2.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 44
  %7 = ptrtoint ptr %sb_features2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_features2.i, align 8
  %and23.i = and i32 %8, -651
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true.i.if.then2_crit_edge

land.lhs.true.i.if.then2_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true.i.if.then2_crit_edge, %if.end.i.if.then2_crit_edge
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.13) #9
  br label %cleanup346

if.then5:                                         ; preds = %if.end
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 1
  %9 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %10)
  %cmp = icmp ult i32 %10, 1024
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.14, i32 noundef %10, i32 noundef 1024) #9
  br label %cleanup346

if.end8:                                          ; preds = %if.then5
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 34
  %11 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sb_qflags, align 8
  %13 = and i16 %12, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.15) #9
  br label %cleanup346

if.end10:                                         ; preds = %if.end8
  %sb_features_incompat = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 48
  %14 = ptrtoint ptr %sb_features_incompat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_features_incompat, align 8
  %and11 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end28_crit_edge, label %if.then13

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then13:                                        ; preds = %if.end10
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 17
  %16 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_inodesize, align 8
  %conv14 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv14, 6
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 20
  %18 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sb_blocklog, align 8
  %conv15 = zext i8 %19 to i32
  %shr = lshr i32 %mul, %conv15
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 37
  %20 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sb_inoalignmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %shr)
  %cmp16.not = icmp eq i32 %21, %shr
  br i1 %cmp16.not, label %if.then13.if.end28_crit_edge, label %if.then18

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.16, i32 noundef %21, i32 noundef %shr) #9
  br label %cleanup346

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge
  %sb_qflags22 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 34
  %22 = ptrtoint ptr %sb_qflags22 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sb_qflags22, align 8
  %24 = and i16 %23, 1920
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool25.not = icmp eq i16 %24, 0
  br i1 %tobool25.not, label %if.else.if.end28_crit_edge, label %if.then26

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.17) #9
  br label %cleanup346

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then13.if.end28_crit_edge, %if.end10.if.end28_crit_edge
  %sb_logstart = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 6
  %25 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sb_logstart, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp29 = icmp eq i64 %26, 0
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %27 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m_logdev_targp, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %29 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m_ddev_targp, align 8
  %cmp31 = icmp eq ptr %28, %30
  br i1 %cmp29, label %land.rhs, label %land.rhs40

land.rhs:                                         ; preds = %if.end28
  br i1 %cmp31, label %if.then35, label %land.rhs.if.end53_crit_edge, !prof !95

land.rhs.if.end53_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then35:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.18) #9
  br label %cleanup346

land.rhs40:                                       ; preds = %if.end28
  br i1 %cmp31, label %land.rhs40.if.end53_crit_edge, label %if.then52, !prof !94

land.rhs40.if.end53_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.19) #9
  br label %cleanup346

if.end53:                                         ; preds = %land.rhs40.if.end53_crit_edge, %land.rhs.if.end53_crit_edge
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 11
  %31 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sb_agblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not = icmp eq i32 %32, 0
  br i1 %tobool54.not, label %if.end53.if.end62_crit_edge, label %if.then55

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then55:                                        ; preds = %if.end53
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 2
  %33 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %34)
  %cmp164.i = icmp ult i64 %34, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !94

if.then168.i:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i = trunc i64 %34 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %32
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %35 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %35
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %34) #12, !srcloc !96
  %asmresult.i263.i = extractvalue { i64, i64 } %36, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %36, 1
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t564 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t564, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool59.not = icmp ne i32 %__rem.0.i, 0
  %inc = zext i1 %tobool59.not to i32
  %spec.select = add i32 %dividend.addr.0.i.off0, %inc
  br label %if.end62

if.end62:                                         ; preds = %div_u64_rem.exit, %if.end53.if.end62_crit_edge
  %agcount.0 = phi i32 [ 0, %if.end53.if.end62_crit_edge ], [ %spec.select, %div_u64_rem.exit ]
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 12
  %37 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp63 = icmp eq i32 %38, 0
  br i1 %cmp63, label %if.end62.if.then250_crit_edge, label %lor.lhs.false, !prof !95

if.end62.if.then250_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false:                                    ; preds = %if.end62
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 16
  %39 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sb_sectsize, align 2
  %41 = add i16 %40, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32257, i16 %41)
  %42 = icmp ult i16 %41, -32257
  br i1 %42, label %lor.lhs.false.if.then250_crit_edge, label %lor.lhs.false73, !prof !97

lor.lhs.false.if.then250_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false73:                                  ; preds = %lor.lhs.false
  %conv65 = zext i16 %40 to i32
  %sb_sectlog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 21
  %43 = ptrtoint ptr %sb_sectlog to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sb_sectlog, align 1
  %conv74 = zext i8 %44 to i32
  %45 = add i8 %44, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %45)
  %46 = icmp ult i8 %45, 7
  %shl = shl nuw i32 1, %conv74
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv65)
  %cmp87.not = icmp eq i32 %shl, %conv65
  %or.cond471 = select i1 %46, i1 %cmp87.not, i1 false
  br i1 %or.cond471, label %lor.lhs.false89, label %lor.lhs.false73.if.then250_crit_edge, !prof !98

lor.lhs.false73.if.then250_crit_edge:             ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false89:                                  ; preds = %lor.lhs.false73
  %sb_blocksize90 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 1
  %47 = ptrtoint ptr %sb_blocksize90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sb_blocksize90, align 4
  %49 = add i32 %48, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65025, i32 %49)
  %50 = icmp ult i32 %49, -65025
  br i1 %50, label %lor.lhs.false89.if.then250_crit_edge, label %lor.lhs.false97, !prof !97

lor.lhs.false89.if.then250_crit_edge:             ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false97:                                  ; preds = %lor.lhs.false89
  %sb_blocklog98 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 20
  %51 = ptrtoint ptr %sb_blocklog98 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sb_blocklog98, align 8
  %conv99 = zext i8 %52 to i32
  %53 = add i8 %52, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %53)
  %54 = icmp ult i8 %53, 8
  %shl111 = shl nuw i32 1, %conv99
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shl111)
  %cmp112.not = icmp eq i32 %48, %shl111
  %or.cond474 = select i1 %54, i1 %cmp112.not, i1 false
  br i1 %or.cond474, label %lor.lhs.false114, label %lor.lhs.false97.if.then250_crit_edge, !prof !98

lor.lhs.false97.if.then250_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false114:                                 ; preds = %lor.lhs.false97
  %sb_dirblklog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 40
  %55 = ptrtoint ptr %sb_dirblklog to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sb_dirblklog, align 8
  %conv115 = zext i8 %56 to i32
  %add = add nuw nsw i32 %conv115, %conv99
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp118 = icmp ugt i32 %add, 16
  br i1 %cmp118, label %lor.lhs.false114.if.then250_crit_edge, label %lor.lhs.false120, !prof !95

lor.lhs.false114.if.then250_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false120:                                 ; preds = %lor.lhs.false114
  %sb_inodesize121 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 17
  %57 = ptrtoint ptr %sb_inodesize121 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sb_inodesize121, align 8
  %conv122 = zext i16 %58 to i32
  %59 = add i16 %58, -2049
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1793, i16 %59)
  %60 = icmp ult i16 %59, -1793
  br i1 %60, label %lor.lhs.false120.if.then250_crit_edge, label %lor.lhs.false130, !prof !97

lor.lhs.false120.if.then250_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false130:                                 ; preds = %lor.lhs.false120
  %sb_inodelog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 22
  %61 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sb_inodelog, align 2
  %conv131 = zext i8 %62 to i32
  %63 = and i8 %62, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %63)
  %64 = icmp eq i8 %63, 8
  %shl144 = shl nuw i32 1, %conv131
  call void @__sanitizer_cov_trace_cmp4(i32 %shl144, i32 %conv122)
  %cmp145.not = icmp eq i32 %shl144, %conv122
  %or.cond477 = select i1 %64, i1 %cmp145.not, i1 false
  br i1 %or.cond477, label %lor.lhs.false147, label %lor.lhs.false130.if.then250_crit_edge, !prof !98

lor.lhs.false130.if.then250_crit_edge:            ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false147:                                 ; preds = %lor.lhs.false130
  %sb_logsunit = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 43
  %65 = ptrtoint ptr %sb_logsunit to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sb_logsunit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %66)
  %cmp148 = icmp ugt i32 %66, 262144
  br i1 %cmp148, label %lor.lhs.false147.if.then250_crit_edge, label %lor.lhs.false150, !prof !95

lor.lhs.false147.if.then250_crit_edge:            ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false150:                                 ; preds = %lor.lhs.false147
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 18
  %67 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sb_inopblock, align 2
  %conv151 = zext i16 %68 to i32
  %sub = add nsw i32 %48, -1
  %add155 = add nuw nsw i32 %sub, %conv122
  %div = udiv i32 %add155, %conv122
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv151)
  %cmp158.not = icmp eq i32 %div, %conv151
  br i1 %cmp158.not, label %lor.lhs.false160, label %lor.lhs.false150.if.then250_crit_edge, !prof !94

lor.lhs.false150.if.then250_crit_edge:            ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false160:                                 ; preds = %lor.lhs.false150
  %conv162 = zext i32 %32 to i64
  %sb_blocklog163 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %69 = ptrtoint ptr %sb_blocklog163 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sb_blocklog163, align 8
  %sh_prom = zext i8 %70 to i64
  %shl165 = shl i64 %conv162, %sh_prom
  %71 = add i64 %shl165, -1099511627777
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1099494850561, i64 %71)
  %72 = icmp ult i64 %71, -1099494850561
  br i1 %72, label %lor.lhs.false160.if.then250_crit_edge, label %lor.lhs.false178, !prof !97

lor.lhs.false160.if.then250_crit_edge:            ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false178:                                 ; preds = %lor.lhs.false160
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 24
  %73 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sb_agblklog, align 4
  %conv179 = zext i8 %74 to i32
  %sub181 = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub181)
  %tobool.not.i.i = icmp eq i32 %sub181, 0
  %75 = tail call i32 @llvm.ctlz.i32(i32 %sub181, i1 true) #9, !range !92
  %sub.i.op.i.op = sub nuw nsw i32 32, %75
  %add183 = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.op.i.op
  call void @__sanitizer_cov_trace_cmp4(i32 %add183, i32 %conv179)
  %cmp184.not = icmp eq i32 %add183, %conv179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agcount.0)
  %cmp187 = icmp ne i32 %agcount.0, 0
  %or.cond479 = select i1 %cmp184.not, i1 %cmp187, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %agcount.0, i32 %38)
  %cmp191.not = icmp eq i32 %agcount.0, %38
  %or.cond562 = select i1 %or.cond479, i1 %cmp191.not, i1 false
  br i1 %or.cond562, label %lor.lhs.false193, label %lor.lhs.false178.if.then250_crit_edge, !prof !98

lor.lhs.false178.if.then250_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false193:                                 ; preds = %lor.lhs.false178
  %sub198 = sub nsw i32 %conv99, %conv131
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 23
  %76 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sb_inopblog, align 1
  %conv199 = zext i8 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub198, i32 %conv199)
  %cmp200.not = icmp eq i32 %sub198, %conv199
  br i1 %cmp200.not, label %lor.lhs.false202, label %lor.lhs.false193.if.then250_crit_edge, !prof !94

lor.lhs.false193.if.then250_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false202:                                 ; preds = %lor.lhs.false193
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 10
  %78 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sb_rextsize, align 8
  %mul204 = mul i32 %79, %48
  %80 = add i32 %mul204, -1073741825
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073737729, i32 %80)
  %81 = icmp ult i32 %80, -1073737729
  br i1 %81, label %lor.lhs.false202.if.then250_crit_edge, label %lor.lhs.false213, !prof !97

lor.lhs.false202.if.then250_crit_edge:            ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false213:                                 ; preds = %lor.lhs.false202
  %sb_imax_pct = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 27
  %82 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sb_imax_pct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %83)
  %cmp215 = icmp ugt i8 %83, 100
  br i1 %cmp215, label %lor.lhs.false213.if.then250_crit_edge, label %lor.lhs.false217, !prof !95

lor.lhs.false213.if.then250_crit_edge:            ; preds = %lor.lhs.false213
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false217:                                 ; preds = %lor.lhs.false213
  %sb_dblocks218 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 2
  %84 = ptrtoint ptr %sb_dblocks218 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %sb_dblocks218, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %85)
  %cmp219 = icmp eq i64 %85, 0
  br i1 %cmp219, label %lor.lhs.false217.if.then250_crit_edge, label %lor.lhs.false221, !prof !95

lor.lhs.false217.if.then250_crit_edge:            ; preds = %lor.lhs.false217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false221:                                 ; preds = %lor.lhs.false217
  %conv224 = zext i32 %agcount.0 to i64
  %mul227 = mul nuw i64 %conv224, %conv162
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %mul227)
  %cmp228 = icmp ugt i64 %85, %mul227
  br i1 %cmp228, label %lor.lhs.false221.if.then250_crit_edge, label %lor.lhs.false230, !prof !95

lor.lhs.false221.if.then250_crit_edge:            ; preds = %lor.lhs.false221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.lhs.false230:                                 ; preds = %lor.lhs.false221
  %sub233 = add i32 %agcount.0, -1
  %conv234 = zext i32 %sub233 to i64
  %mul237 = mul nuw i64 %conv234, %conv162
  %add238 = add nuw i64 %mul237, 64
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %add238)
  %cmp239 = icmp ult i64 %85, %add238
  br i1 %cmp239, label %lor.lhs.false230.if.then250_crit_edge, label %lor.rhs, !prof !95

lor.lhs.false230.if.then250_crit_edge:            ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

lor.rhs:                                          ; preds = %lor.lhs.false230
  %sb_shared_vn = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 36
  %86 = ptrtoint ptr %sb_shared_vn to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sb_shared_vn, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp242.not = icmp eq i8 %87, 0
  br i1 %cmp242.not, label %if.end264, label %lor.rhs.if.then250_crit_edge, !prof !94

lor.rhs.if.then250_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250

if.then250:                                       ; preds = %lor.rhs.if.then250_crit_edge, %lor.lhs.false230.if.then250_crit_edge, %lor.lhs.false221.if.then250_crit_edge, %lor.lhs.false217.if.then250_crit_edge, %lor.lhs.false213.if.then250_crit_edge, %lor.lhs.false202.if.then250_crit_edge, %lor.lhs.false193.if.then250_crit_edge, %lor.lhs.false178.if.then250_crit_edge, %lor.lhs.false160.if.then250_crit_edge, %lor.lhs.false150.if.then250_crit_edge, %lor.lhs.false147.if.then250_crit_edge, %lor.lhs.false130.if.then250_crit_edge, %lor.lhs.false120.if.then250_crit_edge, %lor.lhs.false114.if.then250_crit_edge, %lor.lhs.false97.if.then250_crit_edge, %lor.lhs.false89.if.then250_crit_edge, %lor.lhs.false73.if.then250_crit_edge, %lor.lhs.false.if.then250_crit_edge, %if.end62.if.then250_crit_edge
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.20) #9
  br label %cleanup346

if.end264:                                        ; preds = %lor.rhs
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 3
  %88 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sb_rblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %cmp265 = icmp eq i64 %89, 0
  br i1 %cmp265, label %if.then267, label %if.else162.i.i

if.then267:                                       ; preds = %if.end264
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 4
  %90 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %sb_rextents, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %91)
  %cmp268.not = icmp eq i64 %91, 0
  br i1 %cmp268.not, label %lor.lhs.false270, label %if.then267.if.then280_crit_edge

if.then267.if.then280_crit_edge:                  ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then280

lor.lhs.false270:                                 ; preds = %if.then267
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 13
  %92 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sb_rbmblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp271.not = icmp eq i32 %93, 0
  br i1 %cmp271.not, label %lor.lhs.false273, label %lor.lhs.false270.if.then280_crit_edge

lor.lhs.false270.if.then280_crit_edge:            ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then280

lor.lhs.false273:                                 ; preds = %lor.lhs.false270
  %sb_rextslog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 25
  %94 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sb_rextslog, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp275.not = icmp eq i8 %95, 0
  br i1 %cmp275.not, label %lor.lhs.false277, label %lor.lhs.false273.if.then280_crit_edge

lor.lhs.false273.if.then280_crit_edge:            ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then280

lor.lhs.false277:                                 ; preds = %lor.lhs.false273
  %sb_frextents = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 31
  %96 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %sb_frextents, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %cmp278.not = icmp eq i64 %97, 0
  br i1 %cmp278.not, label %lor.lhs.false277.if.end312_crit_edge, label %lor.lhs.false277.if.then280_crit_edge

lor.lhs.false277.if.then280_crit_edge:            ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then280

lor.lhs.false277.if.end312_crit_edge:             ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end312

if.then280:                                       ; preds = %lor.lhs.false277.if.then280_crit_edge, %lor.lhs.false273.if.then280_crit_edge, %lor.lhs.false270.if.then280_crit_edge, %if.then267.if.then280_crit_edge
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.22) #9
  br label %cleanup346

if.else162.i.i:                                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %89)
  %cmp164.i.i = icmp ult i64 %89, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !94

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %89 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %79
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %79, i64 %89) #12, !srcloc !96
  %asmresult1.i.i.i = extractvalue { i64, i64 } %98, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %sb_rextents286 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 4
  %99 = ptrtoint ptr %sb_rextents286 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %sb_rextents286, align 8
  %mul288 = shl nuw nsw i32 %48, 3
  %sub.i507 = add nsw i32 %mul288, -1
  %conv.i508 = zext i32 %sub.i507 to i64
  %add.i509 = add i64 %100, %conv.i508
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i509)
  %cmp168.i = icmp ult i64 %add.i509, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !94

if.then172.i:                                     ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv173.i554 = trunc i64 %add.i509 to i32
  %div176.i = udiv i32 %conv173.i554, %mul288
  %conv177.i = zext i32 %div176.i to i64
  br label %howmany_64.exit

if.else178.i:                                     ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %101 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul288, i64 %add.i509) #12, !srcloc !96
  %asmresult1.i.i555 = extractvalue { i64, i64 } %101, 1
  br label %howmany_64.exit

howmany_64.exit:                                  ; preds = %if.else178.i, %if.then172.i
  %x.addr.0.i = phi i64 [ %conv177.i, %if.then172.i ], [ %asmresult1.i.i555, %if.else178.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %dividend.addr.0.i.i)
  %cmp291.not = icmp eq i64 %100, %dividend.addr.0.i.i
  br i1 %cmp291.not, label %lor.lhs.false293, label %howmany_64.exit.cleanup308_crit_edge

howmany_64.exit.cleanup308_crit_edge:             ; preds = %howmany_64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

lor.lhs.false293:                                 ; preds = %howmany_64.exit
  %sb_rextslog294 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 25
  %102 = ptrtoint ptr %sb_rextslog294 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %sb_rextslog294, align 1
  %conv295 = zext i8 %103 to i32
  %conv297 = trunc i64 %dividend.addr.0.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv297)
  %tobool.not.i.i556 = icmp eq i32 %conv297, 0
  %104 = tail call i32 @llvm.ctlz.i32(i32 %conv297, i1 true) #9, !range !92
  %sub.i.op.i557 = xor i32 %104, 31
  %sub.i558 = select i1 %tobool.not.i.i556, i32 -1, i32 %sub.i.op.i557
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i558, i32 %conv295)
  %cmp299.not = icmp eq i32 %sub.i558, %conv295
  br i1 %cmp299.not, label %lor.lhs.false301, label %lor.lhs.false293.cleanup308_crit_edge

lor.lhs.false293.cleanup308_crit_edge:            ; preds = %lor.lhs.false293
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

lor.lhs.false301:                                 ; preds = %lor.lhs.false293
  %sb_rbmblocks302 = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 13
  %105 = ptrtoint ptr %sb_rbmblocks302 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sb_rbmblocks302, align 4
  %conv303 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %x.addr.0.i, i64 %conv303)
  %cmp304.not = icmp eq i64 %x.addr.0.i, %conv303
  br i1 %cmp304.not, label %lor.lhs.false301.if.end312_crit_edge, label %lor.lhs.false301.cleanup308_crit_edge

lor.lhs.false301.cleanup308_crit_edge:            ; preds = %lor.lhs.false301
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

lor.lhs.false301.if.end312_crit_edge:             ; preds = %lor.lhs.false301
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end312

cleanup308:                                       ; preds = %lor.lhs.false301.cleanup308_crit_edge, %lor.lhs.false293.cleanup308_crit_edge, %howmany_64.exit.cleanup308_crit_edge
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.23) #9
  br label %cleanup346

if.end312:                                        ; preds = %lor.lhs.false301.if.end312_crit_edge, %lor.lhs.false277.if.end312_crit_edge
  %107 = ptrtoint ptr %sb_versionnum.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sb_versionnum.i.i, align 4
  %sb_unit = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 38
  %109 = ptrtoint ptr %sb_unit to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sb_unit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool316 = icmp eq i32 %110, 0
  %111 = and i16 %108, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %112 = icmp ne i16 %111, 0
  %tobool323.not = xor i1 %tobool316, %112
  br i1 %tobool323.not, label %if.end325, label %if.then324

if.then324:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.24) #9
  br label %cleanup346

if.end325:                                        ; preds = %if.end312
  %conv327 = zext i32 %110 to i64
  %113 = ptrtoint ptr %sb_blocklog163 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sb_blocklog163, align 8
  %sh_prom331 = zext i8 %114 to i64
  %shl332 = shl i64 %conv327, %sh_prom331
  %sb_width = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 39
  %115 = ptrtoint ptr %sb_width to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sb_width, align 4
  %conv333 = zext i32 %116 to i64
  %shl338 = shl i64 %conv333, %sh_prom331
  %call339 = tail call zeroext i1 @xfs_validate_stripe_geometry(ptr noundef %mp, i64 noundef %shl332, i64 noundef %shl338, i32 noundef 0, i1 noundef zeroext false)
  br i1 %call339, label %if.end341, label %if.end325.cleanup346_crit_edge

if.end325.cleanup346_crit_edge:                   ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup346

if.end341:                                        ; preds = %if.end325
  %117 = ptrtoint ptr %sb_inodesize121 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %sb_inodesize121, align 8
  %conv343 = zext i16 %118 to i32
  %119 = add nsw i32 %conv343, -256
  %120 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %120)
  %121 = icmp ult i32 %120, 8
  br i1 %121, label %switch.hole_check, label %if.end341.sw.default_crit_edge

if.end341.sw.default_crit_edge:                   ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %if.end341.sw.default_crit_edge
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.25, i32 noundef %conv343) #9
  br label %cleanup346

switch.hole_check:                                ; preds = %if.end341
  %switch.maskindex = trunc i32 %120 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %122 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %switch.lobit.not = icmp eq i8 %122, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.hole_check.cleanup346_crit_edge

switch.hole_check.cleanup346_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup346

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

cleanup346:                                       ; preds = %switch.hole_check.cleanup346_crit_edge, %sw.default, %if.end325.cleanup346_crit_edge, %if.then324, %cleanup308, %if.then280, %if.then250, %if.then52, %if.then35, %if.then26, %if.then18, %if.then9, %if.then6, %if.then2, %if.then
  %retval.3 = phi i32 [ -117, %if.then6 ], [ -117, %if.then9 ], [ -22, %if.then35 ], [ -22, %if.then52 ], [ -117, %if.then250 ], [ -117, %if.then280 ], [ -117, %if.then324 ], [ -38, %sw.default ], [ -117, %cleanup308 ], [ -117, %if.then26 ], [ -22, %if.then2 ], [ -22, %if.then ], [ -22, %if.then18 ], [ -117, %if.end325.cleanup346_crit_edge ], [ 0, %switch.hole_check.cleanup346_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_validate_sb_read(ptr noundef %mp, ptr nocapture noundef readonly %sbp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_versionnum.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 15
  %0 = ptrtoint ptr %sb_versionnum.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_versionnum.i, align 4
  %2 = and i16 %1, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %2)
  %cmp.i = icmp eq i16 %2, 5
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %sb_features_compat.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 46
  %3 = ptrtoint ptr %sb_features_compat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_features_compat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i28.not = icmp eq i32 %4, 0
  br i1 %cmp.i28.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.26, i32 noundef %4) #9
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.27) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %sb_features_ro_compat.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 47
  %5 = ptrtoint ptr %sb_features_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_features_ro_compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %6)
  %cmp.i29 = icmp ugt i32 %6, 15
  br i1 %cmp.i29, label %if.then5, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %and6 = and i32 %6, -16
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.28, i32 noundef %and6) #9
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %7 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %m_opstate.i, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.then8, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.29) #9
  br label %return.sink.split

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %sb_features_incompat.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 48
  %10 = ptrtoint ptr %sb_features_incompat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_features_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %11)
  %cmp.i30 = icmp ugt i32 %11, 31
  br i1 %cmp.i30, label %if.then12, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %and13 = and i32 %11, -32
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.31, i32 noundef %and13) #9
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then12, %if.then8
  %.str.32.sink = phi ptr [ @.str.32, %if.then12 ], [ @.str.30, %if.then8 ]
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull %.str.32.sink) #9
  br label %return

return:                                           ; preds = %return.sink.split, %if.end10.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end10.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_ioerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_validate_sb_write(ptr noundef %mp, ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %sbp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %0 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_maps.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sb_inprogress = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 26
  %4 = ptrtoint ptr %sb_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_inprogress, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %sb_fdblocks = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 30
  %6 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_fdblocks, align 8
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 2
  %8 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp2 = icmp ugt i64 %7, %9
  br i1 %cmp2, label %land.lhs.true1.if.then_crit_edge, label %lor.lhs.false

land.lhs.true1.if.then_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true1
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 28
  %10 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_icount, align 8
  %call3 = tail call zeroext i1 @xfs_verify_icount(ptr noundef %mp, i64 noundef %11) #9
  br i1 %call3, label %lor.lhs.false4, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %sb_ifree = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 29
  %12 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_ifree, align 8
  %14 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_icount, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp6 = icmp ugt i64 %13, %15
  br i1 %cmp6, label %lor.lhs.false4.if.then_crit_edge, label %lor.lhs.false4.if.end_crit_edge

lor.lhs.false4.if.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %land.lhs.true1.if.then_crit_edge
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.33) #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sb_versionnum.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 15
  %16 = ptrtoint ptr %sb_versionnum.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_versionnum.i, align 4
  %18 = and i16 %17, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %18)
  %cmp.i = icmp eq i16 %18, 5
  br i1 %cmp.i, label %if.end9, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9:                                          ; preds = %if.end
  %sb_features_compat.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 46
  %19 = ptrtoint ptr %sb_features_compat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_features_compat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i49.not = icmp eq i32 %20, 0
  br i1 %cmp.i49.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.34, i32 noundef %20) #9
  br label %return

if.end12:                                         ; preds = %if.end9
  %sb_features_ro_compat.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 47
  %21 = ptrtoint ptr %sb_features_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_features_ro_compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %22)
  %cmp.i50 = icmp ugt i32 %22, 15
  br i1 %cmp.i50, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %and15 = and i32 %22, -16
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.35, i32 noundef %and15) #9
  br label %return

if.end16:                                         ; preds = %if.end12
  %sb_features_incompat.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 48
  %23 = ptrtoint ptr %sb_features_incompat.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_features_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %24)
  %cmp.i51 = icmp ugt i32 %24, 31
  br i1 %cmp.i51, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %and19 = and i32 %24, -32
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.36, i32 noundef %and19) #9
  br label %return

if.end20:                                         ; preds = %if.end16
  %sb_features_log_incompat.i = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 49
  %25 = ptrtoint ptr %sb_features_log_incompat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_features_log_incompat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i52.not = icmp eq i32 %26, 0
  br i1 %cmp.i52.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.37, i32 noundef %26) #9
  br label %return

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sb_lsn = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 53
  %27 = ptrtoint ptr %sb_lsn to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sb_lsn, align 8
  %call25 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %mp, i64 noundef %28) #9
  %. = select i1 %call25, i32 0, i32 -117
  br label %return

return:                                           ; preds = %if.end24, %if.then22, %if.then18, %if.then14, %if.then11, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %if.then11 ], [ -117, %if.then14 ], [ -117, %if.then18 ], [ -117, %if.then22 ], [ -117, %if.then ], [ 0, %if.end.return_crit_edge ], [ %., %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_icount(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_get_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 832, i32 10}
!2 = !{ptr @xfs_sb_buf_ops, !3, !"xfs_sb_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 831, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 839, i32 10}
!6 = !{ptr @xfs_sb_quiet_buf_ops, !7, !"xfs_sb_quiet_buf_ops", i1 false, i1 false}
!7 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 838, i32 26}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 992, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1013, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1166, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1215, i32 1}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1222, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1229, i32 1}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1237, i32 1}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1244, i32 1}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 1251, i32 1}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 265, i32 16}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 270, i32 16}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 280, i32 1}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 288, i32 7}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 304, i32 1}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 312, i32 1}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 319, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 327, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 375, i32 18}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 383, i32 4}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 391, i32 5}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 406, i32 5}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 417, i32 18}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 435, i32 16}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 145, i32 1}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 148, i32 1}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 153, i32 1}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 158, i32 1}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 160, i32 1}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 167, i32 1}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 171, i32 1}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 199, i32 16}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 213, i32 1}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 220, i32 1}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 227, i32 1}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/libxfs/xfs_sb.c", i32 235, i32 1}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2155796107}
!89 = !{i64 2155796254}
!90 = !{i64 2155796763}
!91 = !{i64 2155796475}
!92 = !{i32 0, i32 33}
!93 = !{!"auto-init"}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2148503472, i64 2148503752, i64 2148504086, i64 2148504420}
!97 = !{!"branch_weights", i32 4001, i32 4000000}
!98 = !{!"branch_weights", i32 -294967296, i32 6003000}
