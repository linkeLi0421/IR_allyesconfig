; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_dir2_readdir.c_pt.bc'
source_filename = "../fs/xfs/xfs_dir2_readdir.c"
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_dir2_sf_hdr = type { i8, i8, [8 x i8] }
%struct.xfs_dir2_sf_entry = type { i8, [2 x i8], [0 x i8] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_dir2_data_unused = type { i16, i16, i16 }
%struct.xfs_dir2_data_entry = type { i64, i8, [0 x i8] }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.xfs_iext_cursor = type { ptr, i32 }

@xfs_dir3_filetype_table = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\08\04\02\06\01\0C\0A\0E", [23 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"S_ISDIR(VFS_I(dp)->i_mode)\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/xfs/xfs_dir2_readdir.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"xfs_isilocked(dp, XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL)\00", [41 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_xfs_readdir = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_readdir.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dp->i_df.if_format == XFS_DINODE_FMT_LOCAL\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dp->i_df.if_bytes == dp->i_disk_size\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dp->i_df.if_u1.if_data != NULL\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"!xfs_dir2_namecheck(sfep->name, sfep->namelen)\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"!xfs_dir2_namecheck(dep->name, dep->namelen)\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"xfs_dir3_filetype_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 25, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 523, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 524, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 761, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 108, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 60, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 61, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 62, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 88, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 98, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 120, i32 7 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [29 x i8] c"../fs/xfs/xfs_dir2_readdir.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 212, i32 7 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @xfs_dir3_filetype_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir3_filetype_table to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @xfs_dir3_get_dtype(ptr nocapture noundef readonly %mp, i8 noundef zeroext %filetype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %filetype)
  %cmp = icmp ugt i8 %filetype, 8
  %or.cond = or i1 %cmp, %tobool.i.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %filetype to i32
  %arrayidx = getelementptr [9 x i8], ptr @xfs_dir3_filetype_table, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i8 [ %3, %if.end3 ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_readdir(ptr noundef %tp, ptr noundef %dp, ptr noundef %ctx, i32 noundef %bufsize) local_unnamed_addr #1 align 64 {
entry:
  %args = alloca %struct.xfs_da_args, align 8
  %lock_mode = alloca i32, align 4
  %isblock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args) #8
  %0 = call ptr @memset(ptr %args, i32 0, i32 112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock_mode) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isblock) #8
  %1 = ptrtoint ptr %isblock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %isblock, align 4, !annotation !39
  tail call fastcc void @trace_xfs_readdir(ptr noundef %dp)
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %4 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_opstate.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %7 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_vnode.i, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp = icmp eq i16 %9, 16384
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !40

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 523) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %call4 = tail call zeroext i1 @xfs_isilocked(ptr noundef %dp, i32 noundef 3) #8
  br i1 %call4, label %cond.end.do.body14_crit_edge, label %cond.false12, !prof !40

cond.end.do.body14_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 524) #8
  br label %do.body14

do.body14:                                        ; preds = %cond.false12, %cond.end.do.body14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %10 = load ptr, ptr @xfsstats, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %xs_dir_getdents = getelementptr inbounds %struct.__xfsstats, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %xs_dir_getdents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xs_dir_getdents, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %xs_dir_getdents, align 8
  %21 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dp, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %22, i32 0, i32 92
  %23 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_stats, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %28, %25
  %29 = inttoptr i32 %add28 to ptr
  %xs_dir_getdents29 = getelementptr inbounds %struct.__xfsstats, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %xs_dir_getdents29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xs_dir_getdents29, align 8
  %inc30 = add i32 %31, 1
  store i32 %inc30, ptr %xs_dir_getdents29, align 8
  %dp33 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %32 = ptrtoint ptr %dp33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dp, ptr %dp33, align 8
  %33 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %m_dir_geo, align 4
  %36 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %args, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %37 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tp, ptr %trans, align 4
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 6
  %38 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp36 = icmp eq i8 %39, 1
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = call fastcc i32 @xfs_dir2_sf_getdents(ptr noundef nonnull %args, ptr noundef %ctx)
  br label %cleanup

if.end40:                                         ; preds = %do.body14
  %call41 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %dp) #8
  %40 = ptrtoint ptr %lock_mode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call41, ptr %lock_mode, align 4
  %call42 = call i32 @xfs_dir2_isblock(ptr noundef nonnull %args, ptr noundef nonnull %isblock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.out_unlock_crit_edge

if.end40.out_unlock_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end45:                                         ; preds = %if.end40
  %41 = ptrtoint ptr %isblock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %isblock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool46.not = icmp eq i32 %42, 0
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = call fastcc i32 @xfs_dir2_block_getdents(ptr noundef nonnull %args, ptr noundef %ctx, ptr noundef nonnull %lock_mode)
  br label %out_unlockthread-pre-split

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call fastcc i32 @xfs_dir2_leaf_getdents(ptr noundef nonnull %args, ptr noundef %ctx, i32 noundef %bufsize, ptr noundef nonnull %lock_mode)
  br label %out_unlockthread-pre-split

out_unlockthread-pre-split:                       ; preds = %if.end49, %if.then47
  %error.0.ph = phi i32 [ %call50, %if.end49 ], [ %call48, %if.then47 ]
  %43 = ptrtoint ptr %lock_mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %lock_mode, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlockthread-pre-split, %if.end40.out_unlock_crit_edge
  %44 = phi i32 [ %.pr, %out_unlockthread-pre-split ], [ %call41, %if.end40.out_unlock_crit_edge ]
  %error.0 = phi i32 [ %error.0.ph, %out_unlockthread-pre-split ], [ %call42, %if.end40.out_unlock_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool51.not = icmp eq i32 %44, 0
  br i1 %tobool51.not, label %out_unlock.cleanup_crit_edge, label %if.then52

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_iunlock(ptr noundef %dp, i32 noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %out_unlock.cleanup_crit_edge, %if.then38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.then38 ], [ -5, %entry.cleanup_crit_edge ], [ %error.0, %if.then52 ], [ %error.0, %out_unlock.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isblock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock_mode) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_readdir(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_readdir, i32 0, i32 1), ptr blockaddress(@trace_xfs_readdir, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !41

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !40

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !42
  %call42 = tail call i32 @__traceiter_xfs_readdir(ptr noundef null, ptr noundef %ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !40

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_readdir, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_readdir, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_readdir.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_readdir.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 761, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #8
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
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_sf_getdents(ptr nocapture noundef readonly %args, ptr noundef %ctx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !40

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 60) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %8 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_df, align 8
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp6 = icmp eq i64 %9, %11
  br i1 %cmp6, label %cond.end.cond.end16_crit_edge, label %cond.false15, !prof !40

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 61) #8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.end.cond.end16_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_u1, align 4
  %cmp18.not = icmp eq ptr %13, null
  br i1 %cmp18.not, label %cond.false27, label %cond.end16.cond.end28_crit_edge, !prof !46

cond.end16.cond.end28_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 62) #8
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end16.cond.end28_crit_edge
  %14 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_u1, align 4
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  %conv.i.i = shl i64 %17, 3
  %shl.i.i = and i64 %conv.i.i, 34359738360
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %19 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %5, i32 0, i32 7
  %20 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %datablk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv1.i.i)
  %cmp32 = icmp ult i32 %21, %conv1.i.i
  br i1 %cmp32, label %cond.end28.cleanup114_crit_edge, label %if.end

cond.end28.cleanup114_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

if.end:                                           ; preds = %cond.end28
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %5, i32 0, i32 15
  %22 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_entry_offset, align 4
  %conv.i.i176 = zext i32 %21 to i64
  %shl.i.i179 = shl i64 %conv.i.i176, %sh_prom.i.i
  %conv2.i.i = zext i32 %23 to i64
  %add.i.i = add i64 %shl.i.i179, %conv2.i.i
  %24 = lshr i64 %add.i.i, 3
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %add = add i32 %23, 16
  %conv2.i.i184 = zext i32 %add to i64
  %add.i.i185 = add i64 %shl.i.i179, %conv2.i.i184
  %25 = lshr i64 %add.i.i185, 3
  %conv41 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv41)
  %cmp42.not = icmp sgt i64 %17, %conv41
  br i1 %cmp42.not, label %if.end.if.end50_crit_edge, label %if.then44

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then44:                                        ; preds = %if.end
  %conv45 = and i64 %24, 2147483647
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv45, ptr %pos, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_ino, align 8
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %call.i = tail call i32 %30(ptr noundef %ctx, ptr noundef nonnull @.str.9, i32 noundef 1, i64 noundef %conv45, i64 noundef %28, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then44.if.end50_crit_edge, label %if.then44.cleanup114_crit_edge

if.then44.cleanup114_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50:                                         ; preds = %if.then44.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos, align 8
  %conv52 = and i64 %25, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv52)
  %cmp53.not = icmp sgt i64 %32, %conv52
  br i1 %cmp53.not, label %if.end50.if.end63_crit_edge, label %if.then55

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then55:                                        ; preds = %if.end50
  %call56 = tail call i64 @xfs_dir2_sf_get_parent_ino(ptr noundef %15) #8
  %conv58 = and i64 %25, 2147483647
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv58, ptr %pos, align 8
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 8
  %call.i188 = tail call i32 %35(ptr noundef %ctx, ptr noundef nonnull @.str.10, i32 noundef 2, i64 noundef %conv58, i64 noundef %call56, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp.i189 = icmp eq i32 %call.i188, 0
  br i1 %cmp.i189, label %if.then55.if.end63_crit_edge, label %if.then55.cleanup114_crit_edge

if.then55.cleanup114_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %if.then55.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp66214.not = icmp eq i8 %37, 0
  br i1 %cmp66214.not, label %if.end63.for.end_crit_edge, label %for.body.preheader

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end63
  %i8count.i = getelementptr inbounds %struct.xfs_dir2_sf_hdr, ptr %15, i32 0, i32 1
  %38 = ptrtoint ptr %i8count.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i8count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.i.i = icmp eq i8 %39, 0
  %sub.i.i = select i1 %cmp.i.i, i32 6, i32 10
  %add.ptr.i = getelementptr i8, ptr %15, i32 %sub.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %sfep.0216 = phi ptr [ %call76, %for.inc.for.body_crit_edge ], [ %add.ptr.i, %for.body.preheader ]
  %i.0215 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %40 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %datablk, align 4
  %offset.i = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0216, i32 0, i32 1
  %42 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %offset.i, align 1
  %conv.i.i190 = zext i32 %41 to i64
  %44 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i192 = zext i8 %45 to i64
  %shl.i.i193 = shl i64 %conv.i.i190, %sh_prom.i.i192
  %conv2.i.i194 = zext i16 %43 to i64
  %add.i.i195 = add i64 %shl.i.i193, %conv2.i.i194
  %46 = lshr i64 %add.i.i195, 3
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pos, align 8
  %conv72 = and i64 %46, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %conv72)
  %cmp73 = icmp sgt i64 %48, %conv72
  br i1 %cmp73, label %for.body.for.inc_crit_edge, label %if.end77

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end77:                                         ; preds = %for.body
  %call78 = tail call i64 @xfs_dir2_sf_get_ino(ptr noundef %3, ptr noundef %15, ptr noundef %sfep.0216) #8
  %call79 = tail call zeroext i8 @xfs_dir2_sf_get_ftype(ptr noundef %3, ptr noundef %sfep.0216) #8
  %conv81 = and i64 %46, 2147483647
  %49 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv81, ptr %pos, align 8
  %name = getelementptr inbounds %struct.xfs_dir2_sf_entry, ptr %sfep.0216, i32 0, i32 2
  %50 = ptrtoint ptr %sfep.0216 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sfep.0216, align 1
  %conv83 = zext i8 %51 to i32
  %call84 = tail call zeroext i1 @xfs_dir2_namecheck(ptr noundef %name, i32 noundef %conv83) #8
  br i1 %call84, label %if.end97, label %__here, !prof !40

__here:                                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef %53, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 122, ptr noundef blockaddress(@xfs_dir2_sf_getdents, %__here)) #8
  br label %cleanup114

if.end97:                                         ; preds = %if.end77
  %54 = ptrtoint ptr %sfep.0216 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sfep.0216, align 1
  %conv101 = zext i8 %55 to i32
  %56 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %m_features.i.i, align 8
  %and.i.i198 = and i64 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i198)
  %tobool.i.not.i199 = icmp eq i64 %and.i.i198, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call79)
  %cmp.i200 = icmp ugt i8 %call79, 8
  %or.cond.i = or i1 %cmp.i200, %tobool.i.not.i199
  br i1 %or.cond.i, label %if.end97.xfs_dir3_get_dtype.exit_crit_edge, label %if.end3.i

if.end97.xfs_dir3_get_dtype.exit_crit_edge:       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_get_dtype.exit

if.end3.i:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i201 = zext i8 %call79 to i32
  %arrayidx.i = getelementptr [9 x i8], ptr @xfs_dir3_filetype_table, i32 0, i32 %conv.i201
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i, align 1
  br label %xfs_dir3_get_dtype.exit

xfs_dir3_get_dtype.exit:                          ; preds = %if.end3.i, %if.end97.xfs_dir3_get_dtype.exit_crit_edge
  %retval.0.i = phi i8 [ %59, %if.end3.i ], [ 0, %if.end97.xfs_dir3_get_dtype.exit_crit_edge ]
  %conv103 = zext i8 %retval.0.i to i32
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 8
  %62 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %pos, align 8
  %call.i203 = tail call i32 %61(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv101, i64 noundef %63, i64 noundef %call78, i32 noundef %conv103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %cmp.i204 = icmp eq i32 %call.i203, 0
  br i1 %cmp.i204, label %xfs_dir3_get_dtype.exit.for.inc_crit_edge, label %xfs_dir3_get_dtype.exit.cleanup114_crit_edge

xfs_dir3_get_dtype.exit.cleanup114_crit_edge:     ; preds = %xfs_dir3_get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

xfs_dir3_get_dtype.exit.for.inc_crit_edge:        ; preds = %xfs_dir3_get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %xfs_dir3_get_dtype.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call76 = tail call ptr @xfs_dir2_sf_nextentry(ptr noundef %3, ptr noundef %15, ptr noundef %sfep.0216) #8
  %inc = add nuw nsw i32 %i.0215, 1
  %64 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %15, align 1
  %conv65 = zext i8 %65 to i32
  %cmp66 = icmp ult i32 %inc, %conv65
  br i1 %cmp66, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end63.for.end_crit_edge
  %66 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %datablk, align 4
  %add109 = add i32 %67, 1
  %conv.i.i205 = zext i32 %add109 to i64
  %68 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i207 = zext i8 %69 to i64
  %shl.i.i208 = shl i64 %conv.i.i205, %sh_prom.i.i207
  %70 = lshr i64 %shl.i.i208, 3
  %conv112 = and i64 %70, 2147483647
  %71 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv112, ptr %pos, align 8
  br label %cleanup114

cleanup114:                                       ; preds = %for.end, %xfs_dir3_get_dtype.exit.cleanup114_crit_edge, %__here, %if.then55.cleanup114_crit_edge, %if.then44.cleanup114_crit_edge, %cond.end28.cleanup114_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ 0, %cond.end28.cleanup114_crit_edge ], [ 0, %if.then44.cleanup114_crit_edge ], [ 0, %if.then55.cleanup114_crit_edge ], [ -117, %__here ], [ 0, %xfs_dir3_get_dtype.exit.cleanup114_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_isblock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_block_getdents(ptr nocapture noundef readonly %args, ptr noundef %ctx, ptr nocapture noundef %lock_mode) #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !39
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos, align 8
  %conv.i.i = shl i64 %6, 3
  %shl.i.i = and i64 %conv.i.i, 34359738360
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %8 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %datablk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv1.i.i)
  %cmp = icmp ult i32 %10, %conv1.i.i
  br i1 %cmp, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end:                                           ; preds = %entry
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %11 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans, align 4
  %call4 = call i32 @xfs_dir3_block_read(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup63_crit_edge

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %lock_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lock_mode, align 4
  call void @xfs_iunlock(ptr noundef %1, i32 noundef %14) #8
  %15 = ptrtoint ptr %lock_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %lock_mode, align 4
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  %conv8 = trunc i64 %17 to i32
  %shl.i.i109 = shl i32 %conv8, 3
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %sub.i.i = add i32 %19, -1
  %conv1.i.i110 = and i32 %sub.i.i, %shl.i.i109
  %20 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bp, align 4
  call void @xfs_dir3_data_check(ptr noundef %1, ptr noundef %21) #8
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_addr, align 4
  %call10 = call i32 @xfs_dir3_data_end_offset(ptr noundef %4, ptr noundef %25) #8
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %4, i32 0, i32 15
  %26 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_entry_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %call10)
  %cmp11129 = icmp ult i32 %27, %call10
  br i1 %cmp11129, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %offset.0130 = phi i32 [ %next_offset.0, %for.inc.for.body_crit_edge ], [ %27, %if.end6.for.body_crit_edge ]
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  %b_addr13 = getelementptr inbounds %struct.xfs_buf, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %b_addr13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_addr13, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 %offset.0130
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp17 = icmp eq i16 %33, -1
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %length, align 2
  %conv20 = zext i16 %35 to i32
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %38 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %namelen, align 8
  %conv22 = zext i8 %39 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %37, i32 0, i32 61
  %40 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv22, -1
  %sub.i = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  %add3.i = add nsw i32 %or.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0130, i32 %conv1.i.i110)
  %cmp25 = icmp ult i32 %offset.0130, %conv1.i.i110
  br i1 %cmp25, label %if.end21.for.inc_crit_edge, label %if.end28

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end28:                                         ; preds = %if.end21
  %42 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %datablk, align 4
  %conv.i.i111 = zext i32 %43 to i64
  %44 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i113 = zext i8 %45 to i64
  %shl.i.i114 = shl i64 %conv.i.i111, %sh_prom.i.i113
  %conv2.i.i = zext i32 %offset.0130 to i64
  %add.i.i = add i64 %shl.i.i114, %conv2.i.i
  %46 = lshr i64 %add.i.i, 3
  %and = and i64 %46, 2147483647
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %and, ptr %pos, align 8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %call34 = call zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef %49, ptr noundef %add.ptr) #8
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 2
  %50 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %namelen, align 8
  %conv36 = zext i8 %51 to i32
  %call37 = call zeroext i1 @xfs_dir2_namecheck(ptr noundef %name, i32 noundef %conv36) #8
  br i1 %call37, label %if.end43, label %__here, !prof !40

__here:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  call void @xfs_corruption_error(ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %53, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 214, ptr noundef blockaddress(@xfs_dir2_block_getdents, %__here)) #8
  br label %out_rele

if.end43:                                         ; preds = %if.end28
  %54 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %namelen, align 8
  %conv47 = zext i8 %55 to i32
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %add.ptr, align 8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %m_features.i.i115 = getelementptr inbounds %struct.xfs_mount, ptr %59, i32 0, i32 61
  %60 = ptrtoint ptr %m_features.i.i115 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %m_features.i.i115, align 8
  %and.i.i116 = and i64 %61, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i116)
  %tobool.i.not.i117 = icmp eq i64 %and.i.i116, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call34)
  %cmp.i = icmp ugt i8 %call34, 8
  %or.cond.i = or i1 %cmp.i, %tobool.i.not.i117
  br i1 %or.cond.i, label %if.end43.xfs_dir3_get_dtype.exit_crit_edge, label %if.end3.i

if.end43.xfs_dir3_get_dtype.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_get_dtype.exit

if.end3.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %call34 to i32
  %arrayidx.i = getelementptr [9 x i8], ptr @xfs_dir3_filetype_table, i32 0, i32 %conv.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i, align 1
  br label %xfs_dir3_get_dtype.exit

xfs_dir3_get_dtype.exit:                          ; preds = %if.end3.i, %if.end43.xfs_dir3_get_dtype.exit_crit_edge
  %retval.0.i = phi i8 [ %63, %if.end3.i ], [ 0, %if.end43.xfs_dir3_get_dtype.exit_crit_edge ]
  %conv50 = zext i8 %retval.0.i to i32
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 8
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %pos, align 8
  %call.i = call i32 %65(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv47, i64 noundef %67, i64 noundef %57, i32 noundef %conv50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i118 = icmp eq i32 %call.i, 0
  br i1 %cmp.i118, label %xfs_dir3_get_dtype.exit.for.inc_crit_edge, label %xfs_dir3_get_dtype.exit.out_rele_crit_edge

xfs_dir3_get_dtype.exit.out_rele_crit_edge:       ; preds = %xfs_dir3_get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_rele

xfs_dir3_get_dtype.exit.for.inc_crit_edge:        ; preds = %xfs_dir3_get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %xfs_dir3_get_dtype.exit.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %if.then19
  %conv20.pn.ph = phi i32 [ %add3.i, %if.end21.for.inc_crit_edge ], [ %conv20, %if.then19 ], [ %add3.i, %xfs_dir3_get_dtype.exit.for.inc_crit_edge ]
  %next_offset.0 = add i32 %conv20.pn.ph, %offset.0130
  %cmp11 = icmp ult i32 %next_offset.0, %call10
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %68 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %datablk, align 4
  %add57 = add i32 %69, 1
  %conv.i.i119 = zext i32 %add57 to i64
  %70 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i121 = zext i8 %71 to i64
  %shl.i.i122 = shl i64 %conv.i.i119, %sh_prom.i.i121
  %72 = lshr i64 %shl.i.i122, 3
  %conv60 = and i64 %72, 2147483647
  %73 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv60, ptr %pos, align 8
  br label %out_rele

out_rele:                                         ; preds = %for.end, %xfs_dir3_get_dtype.exit.out_rele_crit_edge, %__here
  %error.2 = phi i32 [ 0, %for.end ], [ -117, %__here ], [ 0, %xfs_dir3_get_dtype.exit.out_rele_crit_edge ]
  %74 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %trans, align 4
  %76 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %75, ptr noundef %77) #8
  br label %cleanup63

cleanup63:                                        ; preds = %out_rele, %if.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ %error.2, %out_rele ], [ 0, %entry.cleanup63_crit_edge ], [ %call4, %if.end.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_leaf_getdents(ptr nocapture noundef readonly %args, ptr noundef %ctx, i32 noundef %bufsize, ptr nocapture noundef %lock_mode) #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  %rablk = alloca i32, align 4
  %curoff = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bp, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rablk) #8
  %7 = ptrtoint ptr %rablk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rablk, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %curoff) #8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %9)
  %cmp = icmp sgt i64 %9, 4294967294
  br i1 %cmp, label %entry.cleanup119_crit_edge, label %if.end

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end:                                           ; preds = %entry
  %conv.i = shl i64 %9, 3
  %shl.i = and i64 %conv.i, 34359738360
  %10 = ptrtoint ptr %curoff to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl.i, ptr %curoff, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %6, i32 0, i32 15
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %6, i32 0, i32 3
  br label %while.body

while.condthread-pre-split:                       ; preds = %if.end95, %if.then61, %while.end.while.condthread-pre-split_crit_edge
  %.pr = phi i64 [ %add66, %if.then61 ], [ %add98, %if.end95 ], [ %add.i, %while.end.while.condthread-pre-split_crit_edge ]
  %bufsize.addr.1 = phi i32 [ %bufsize.addr.0219, %if.then61 ], [ %85, %if.end95 ], [ %bufsize.addr.0219, %while.end.while.condthread-pre-split_crit_edge ]
  %offset.3 = phi i32 [ %add64, %if.then61 ], [ %add96, %if.end95 ], [ %offset.1.lcssa, %while.end.while.condthread-pre-split_crit_edge ]
  %cmp4 = icmp ult i64 %.pr, 34359738368
  br i1 %cmp4, label %while.condthread-pre-split.while.body_crit_edge, label %while.condthread-pre-split.while.end103_crit_edge

while.condthread-pre-split.while.end103_crit_edge: ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end103

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %if.end
  %offset.0220 = phi i32 [ 0, %if.end ], [ %offset.3, %while.condthread-pre-split.while.body_crit_edge ]
  %bufsize.addr.0219 = phi i32 [ %bufsize, %if.end ], [ %bufsize.addr.1, %while.condthread-pre-split.while.body_crit_edge ]
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %while.body.if.end11_crit_edge, label %lor.lhs.false

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

lor.lhs.false:                                    ; preds = %while.body
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0220, i32 %14)
  %cmp6.not = icmp ult i32 %offset.0220, %14
  br i1 %cmp6.not, label %lor.lhs.false.if.end54_crit_edge, label %if.then10

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then10:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_brelse(ptr noundef %16, ptr noundef nonnull %12) #8
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %bp, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %while.body.if.end11_crit_edge
  %18 = ptrtoint ptr %lock_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lock_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp12 = icmp eq i32 %19, 0
  br i1 %cmp12, label %if.then14, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %1) #8
  %20 = ptrtoint ptr %lock_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call15, ptr %lock_mode, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %call17 = call fastcc i32 @xfs_dir2_leaf_readbuf(ptr noundef %args, i32 noundef %bufsize.addr.0219, ptr noundef nonnull %curoff, ptr noundef nonnull %rablk, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end16.while.end103_crit_edge

if.end16.while.end103_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end103

lor.lhs.false19:                                  ; preds = %if.end16
  %21 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bp, align 4
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %lor.lhs.false19.while.end103_crit_edge, label %if.end22

lor.lhs.false19.while.end103_crit_edge:           ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end103

if.end22:                                         ; preds = %lor.lhs.false19
  %23 = ptrtoint ptr %lock_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lock_mode, align 4
  tail call void @xfs_iunlock(ptr noundef %1, i32 noundef %24) #8
  %25 = ptrtoint ptr %lock_mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %lock_mode, align 4
  tail call void @xfs_dir3_data_check(ptr noundef %1, ptr noundef nonnull %22) #8
  %26 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_entry_offset, align 4
  %28 = ptrtoint ptr %curoff to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %curoff, align 8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %6, align 4
  %sub.i = add i32 %31, -1
  %32 = trunc i64 %29 to i32
  %conv1.i = and i32 %sub.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp24 = icmp eq i32 %conv1.i, 0
  br i1 %cmp24, label %if.then26, label %while.cond29.preheader

while.cond29.preheader:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv1.i)
  %cmp30217 = icmp ult i32 %27, %conv1.i
  br i1 %cmp30217, label %while.body32.lr.ph, label %while.cond29.preheader.while.end_crit_edge

while.cond29.preheader.while.end_crit_edge:       ; preds = %while.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body32.lr.ph:                               ; preds = %while.cond29.preheader
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %22, i32 0, i32 16
  %33 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_addr, align 4
  br label %while.body32

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %conv28 = zext i32 %27 to i64
  %add = add i64 %29, %conv28
  %35 = ptrtoint ptr %curoff to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add, ptr %curoff, align 8
  br label %if.end54

while.body32:                                     ; preds = %while.cond29.backedge.while.body32_crit_edge, %while.body32.lr.ph
  %offset.1218 = phi i32 [ %27, %while.body32.lr.ph ], [ %offset.1.be, %while.cond29.backedge.while.body32_crit_edge ]
  %add.ptr = getelementptr i8, ptr %34, i32 %offset.1218
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp34 = icmp eq i16 %37, -1
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #10
  %length37 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %38 = ptrtoint ptr %length37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %length37, align 2
  %conv38 = zext i16 %39 to i32
  %add39 = add i32 %offset.1218, %conv38
  br label %while.cond29.backedge

while.cond29.backedge:                            ; preds = %if.end40, %if.then36
  %offset.1.be = phi i32 [ %add39, %if.then36 ], [ %add45, %if.end40 ]
  %cmp30 = icmp ult i32 %offset.1.be, %conv1.i
  br i1 %cmp30, label %while.cond29.backedge.while.body32_crit_edge, label %while.cond29.backedge.while.end_crit_edge

while.cond29.backedge.while.end_crit_edge:        ; preds = %while.cond29.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond29.backedge.while.body32_crit_edge:     ; preds = %while.cond29.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body32

if.end40:                                         ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #10
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr, i32 0, i32 1
  %40 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %namelen, align 8
  %conv43 = zext i8 %41 to i32
  %42 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv43, -1
  %sub.i190 = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i190, 7
  %add3.i = add nuw i32 %offset.1218, 1
  %add45 = add i32 %add3.i, %or.i
  br label %while.cond29.backedge

while.end:                                        ; preds = %while.cond29.backedge.while.end_crit_edge, %while.cond29.preheader.while.end_crit_edge
  %offset.1.lcssa = phi i32 [ %27, %while.cond29.preheader.while.end_crit_edge ], [ %offset.1.be, %while.cond29.backedge.while.end_crit_edge ]
  %44 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %blklog.i, align 1
  %sh_prom.i = zext i8 %45 to i64
  %shr.i = ashr i64 %29, %sh_prom.i
  %conv.i192 = and i64 %shr.i, 4294967295
  %shl.i195 = shl i64 %conv.i192, %sh_prom.i
  %conv2.i = zext i32 %offset.1.lcssa to i64
  %add.i = add i64 %shl.i195, %conv2.i
  %46 = ptrtoint ptr %curoff to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i, ptr %curoff, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.lcssa, i32 %31)
  %cmp49.not = icmp ult i32 %offset.1.lcssa, %31
  br i1 %cmp49.not, label %while.end.if.end54_crit_edge, label %while.end.while.condthread-pre-split_crit_edge

while.end.while.condthread-pre-split_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.condthread-pre-split

while.end.if.end54_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %while.end.if.end54_crit_edge, %if.then26, %lor.lhs.false.if.end54_crit_edge
  %offset.2 = phi i32 [ %27, %if.then26 ], [ %offset.1.lcssa, %while.end.if.end54_crit_edge ], [ %offset.0220, %lor.lhs.false.if.end54_crit_edge ]
  %47 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bp, align 4
  %b_addr55 = getelementptr inbounds %struct.xfs_buf, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %b_addr55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_addr55, align 4
  %add.ptr56 = getelementptr i8, ptr %50, i32 %offset.2
  %51 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr56, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp59 = icmp eq i16 %52, -1
  br i1 %cmp59, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %length62 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr56, i32 0, i32 1
  %53 = ptrtoint ptr %length62 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %length62, align 2
  %conv63 = zext i16 %54 to i32
  %add64 = add i32 %offset.2, %conv63
  %55 = zext i16 %54 to i64
  %56 = ptrtoint ptr %curoff to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %curoff, align 8
  %add66 = add i64 %57, %55
  store i64 %add66, ptr %curoff, align 8
  br label %while.condthread-pre-split

if.end67:                                         ; preds = %if.end54
  %namelen70 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr56, i32 0, i32 1
  %58 = ptrtoint ptr %namelen70 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %namelen70, align 8
  %conv71 = zext i8 %59 to i32
  %60 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %m_features.i.i, align 8
  %and.i.i197 = and i64 %61, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i197)
  %tobool.i.not.i198 = icmp eq i64 %and.i.i197, 0
  %spec.select.v.i199 = select i1 %tobool.i.not.i198, i32 11, i32 12
  %spec.select.i200 = add nsw i32 %conv71, -1
  %sub.i201 = add nsw i32 %spec.select.i200, %spec.select.v.i199
  %or.i202 = or i32 %sub.i201, 7
  %add3.i203 = add nsw i32 %or.i202, 1
  %call73 = tail call zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef %3, ptr noundef %add.ptr56) #8
  %62 = ptrtoint ptr %curoff to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %curoff, align 8
  %64 = lshr i64 %63, 3
  %conv75 = and i64 %64, 2147483647
  %65 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv75, ptr %pos, align 8
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr56, i32 0, i32 2
  %66 = ptrtoint ptr %namelen70 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %namelen70, align 8
  %conv78 = zext i8 %67 to i32
  %call79 = tail call zeroext i1 @xfs_dir2_namecheck(ptr noundef %name, i32 noundef %conv78) #8
  br i1 %call79, label %if.end85, label %__here, !prof !40

__here:                                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %69, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 468, ptr noundef blockaddress(@xfs_dir2_leaf_getdents, %__here)) #8
  br label %while.end103

if.end85:                                         ; preds = %if.end67
  %70 = ptrtoint ptr %namelen70 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %namelen70, align 8
  %conv89 = zext i8 %71 to i32
  %72 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr56, align 8
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  %m_features.i.i205 = getelementptr inbounds %struct.xfs_mount, ptr %75, i32 0, i32 61
  %76 = ptrtoint ptr %m_features.i.i205 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %m_features.i.i205, align 8
  %and.i.i206 = and i64 %77, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i206)
  %tobool.i.not.i207 = icmp eq i64 %and.i.i206, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call73)
  %cmp.i = icmp ugt i8 %call73, 8
  %or.cond.i = or i1 %cmp.i, %tobool.i.not.i207
  br i1 %or.cond.i, label %if.end85.xfs_dir3_get_dtype.exit_crit_edge, label %if.end3.i

if.end85.xfs_dir3_get_dtype.exit_crit_edge:       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dir3_get_dtype.exit

if.end3.i:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i208 = zext i8 %call73 to i32
  %arrayidx.i = getelementptr [9 x i8], ptr @xfs_dir3_filetype_table, i32 0, i32 %conv.i208
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i, align 1
  br label %xfs_dir3_get_dtype.exit

xfs_dir3_get_dtype.exit:                          ; preds = %if.end3.i, %if.end85.xfs_dir3_get_dtype.exit_crit_edge
  %retval.0.i = phi i8 [ %79, %if.end3.i ], [ 0, %if.end85.xfs_dir3_get_dtype.exit_crit_edge ]
  %conv92 = zext i8 %retval.0.i to i32
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 8
  %82 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %pos, align 8
  %call.i = tail call i32 %81(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv89, i64 noundef %83, i64 noundef %73, i32 noundef %conv92) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i209 = icmp eq i32 %call.i, 0
  br i1 %cmp.i209, label %if.end95, label %xfs_dir3_get_dtype.exit.while.end103_crit_edge

xfs_dir3_get_dtype.exit.while.end103_crit_edge:   ; preds = %xfs_dir3_get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end103

if.end95:                                         ; preds = %xfs_dir3_get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add96 = add i32 %add3.i203, %offset.2
  %conv97 = sext i32 %add3.i203 to i64
  %add98 = add i64 %63, %conv97
  %84 = ptrtoint ptr %curoff to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %add98, ptr %curoff, align 8
  %85 = tail call i32 @llvm.usub.sat.i32(i32 %bufsize.addr.0219, i32 %add3.i203)
  br label %while.condthread-pre-split

while.end103:                                     ; preds = %xfs_dir3_get_dtype.exit.while.end103_crit_edge, %__here, %lor.lhs.false19.while.end103_crit_edge, %if.end16.while.end103_crit_edge, %while.condthread-pre-split.while.end103_crit_edge
  %error.3 = phi i32 [ -117, %__here ], [ 0, %lor.lhs.false19.while.end103_crit_edge ], [ %call17, %if.end16.while.end103_crit_edge ], [ 0, %xfs_dir3_get_dtype.exit.while.end103_crit_edge ], [ 0, %while.condthread-pre-split.while.end103_crit_edge ]
  %86 = ptrtoint ptr %curoff to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %curoff, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 34359738360, i64 %87)
  %cmp105 = icmp sgt i64 %87, 34359738360
  %88 = lshr i64 %87, 3
  %conv112 = and i64 %88, 2147483647
  %storemerge = select i1 %cmp105, i64 2147483647, i64 %conv112
  %89 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %storemerge, ptr %pos, align 8
  %90 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bp, align 4
  %tobool115.not = icmp eq ptr %91, null
  br i1 %tobool115.not, label %while.end103.cleanup119_crit_edge, label %if.then116

while.end103.cleanup119_crit_edge:                ; preds = %while.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.then116:                                       ; preds = %while.end103
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_brelse(ptr noundef %93, ptr noundef nonnull %91) #8
  br label %cleanup119

cleanup119:                                       ; preds = %if.then116, %while.end103.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup119_crit_edge ], [ %error.3, %if.then116 ], [ %error.3, %while.end103.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %curoff) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rablk) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_readdir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_dir2_sf_get_parent_ino(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_sf_nextentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_dir2_sf_get_ino(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir2_sf_get_ftype(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_dir2_namecheck(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_block_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir3_data_check(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_end_offset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir2_data_get_ftype(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dir2_leaf_readbuf(ptr nocapture noundef readonly %args, i32 noundef %bufsize, ptr nocapture noundef %cur_off, ptr nocapture noundef %ra_blk, ptr nocapture noundef writeonly %bpp) unnamed_addr #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %plug = alloca %struct.blk_plug, align 4
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #8
  %5 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #8
  %6 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #8
  %7 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !39
  %8 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !39
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %10 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans, align 4
  %call = tail call i32 @xfs_iread_extents(ptr noundef %11, ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %4, i32 0, i32 3
  %12 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %13 to i64
  %shr.i3.i = lshr i64 34359738368, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i3.i to i32
  %conv.i.i = zext i8 %13 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i2.i = zext i8 %15 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i2.i
  %shl.i.i = shl i32 %conv1.i.i, %sub.i.i
  %16 = ptrtoint ptr %cur_off to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cur_off, align 8
  %shr.i = ashr i64 %17, %sh_prom.i.i
  %conv1.i = trunc i64 %shr.i to i32
  %shl.i = shl i32 %conv1.i, %sub.i.i
  %conv = zext i32 %shl.i to i64
  %call6 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %1, ptr noundef %i_df, i64 noundef %conv, ptr noundef nonnull %icur, ptr noundef nonnull %map) #8
  br i1 %call6, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %map, align 8
  %conv9 = zext i32 %shl.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv9)
  %cmp.not = icmp ult i64 %19, %conv9
  br i1 %cmp.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %if.end8
  %sub = sub i32 %shl.i.i, %shl.i
  %conv14 = zext i32 %sub to i64
  call void @xfs_trim_extent(ptr noundef nonnull %map, i64 noundef %conv, i64 noundef %conv14) #8
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %map, align 8
  %conv16 = trunc i64 %21 to i32
  %22 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %blklog.i.i, align 1
  %conv.i.i163 = zext i8 %23 to i32
  %24 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i165 = zext i8 %25 to i32
  %sub.i.i166 = sub nsw i32 %conv.i.i163, %conv1.i.i165
  %shr.i.i = lshr i32 %conv16, %sub.i.i166
  %conv.i3.i = zext i32 %shr.i.i to i64
  %sh_prom.i.i167 = zext i8 %23 to i64
  %shl.i.i168 = shl i64 %conv.i3.i, %sh_prom.i.i167
  %26 = ptrtoint ptr %cur_off to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cur_off, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i168, i64 %27)
  %cmp18 = icmp sgt i64 %shl.i.i168, %27
  br i1 %cmp18, label %if.then20, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %cur_off to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %shl.i.i168, ptr %cur_off, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end12.if.end21_crit_edge
  %29 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans, align 4
  %call25 = call i32 @xfs_dir3_data_read(ptr noundef %30, ptr noundef %1, i32 noundef %conv16, i32 noundef 0, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end28:                                         ; preds = %if.end21
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  %add = add i32 %32, %bufsize
  %33 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fsblog.i.i, align 4
  %conv29 = zext i8 %34 to i32
  %notmask = shl nsw i32 -1, %conv29
  %sub30 = xor i32 %notmask, -1
  %add31 = add i32 %add, %sub30
  %div159 = lshr i32 %add31, %conv29
  %35 = ptrtoint ptr %ra_blk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ra_blk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %shl.i.i)
  %cmp35.not = icmp ult i32 %36, %shl.i.i
  br i1 %cmp35.not, label %if.else, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp38 = icmp eq i32 %36, 0
  br i1 %cmp38, label %if.then40, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %map, align 8
  %conv42 = trunc i64 %38 to i32
  %39 = ptrtoint ptr %ra_blk to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv42, ptr %ra_blk, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.else.if.end44_crit_edge
  %40 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %map, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %4, i32 0, i32 1
  %42 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fsbcount, align 4
  %44 = trunc i64 %41 to i32
  %conv48 = add i32 %43, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %conv48)
  %cmp49.not = icmp ugt i32 %shl.i.i, %conv48
  br i1 %cmp49.not, label %if.end52, label %if.end44.out_no_ra_crit_edge

if.end44.out_no_ra_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_ra

if.end52:                                         ; preds = %if.end44
  %conv46 = zext i32 %43 to i64
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  %45 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %conv46)
  %cmp55 = icmp ult i64 %46, %conv46
  br i1 %cmp55, label %land.lhs.true, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end52
  call void @xfs_iext_next(ptr noundef %i_df, ptr noundef nonnull %icur) #8
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %map) #8
  br i1 %call.i, label %land.lhs.true.if.end59_crit_edge, label %land.lhs.true.out_no_ra_crit_edge

land.lhs.true.out_no_ra_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_ra

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true.if.end59_crit_edge, %if.end52.if.end59_crit_edge
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %map, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %conv9)
  %cmp62.not = icmp ult i64 %48, %conv9
  br i1 %cmp62.not, label %if.end65, label %if.end59.out_no_ra_crit_edge

if.end59.out_no_ra_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_ra

if.end65:                                         ; preds = %if.end59
  %conv66 = zext i32 %conv48 to i64
  %sub67 = sub i32 %shl.i.i, %conv48
  %conv68 = zext i32 %sub67 to i64
  call void @xfs_trim_extent(ptr noundef nonnull %map, i64 noundef %conv66, i64 noundef %conv68) #8
  call void @blk_start_plug(ptr noundef nonnull %plug) #8
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %if.end65
  %ra_want.0 = phi i32 [ %div159, %if.end65 ], [ %ra_want.1171, %while.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ra_want.0)
  %cmp69 = icmp sgt i32 %ra_want.0, 0
  br i1 %cmp69, label %while.body, label %while.cond.while.end103_crit_edge

while.cond.while.end103_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end103

while.body:                                       ; preds = %while.cond
  %49 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fsbcount, align 4
  %51 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %map, align 8
  %conv73 = trunc i64 %52 to i32
  %sub74 = add i32 %50, -1
  %add75 = add i32 %sub74, %conv73
  %53 = urem i32 %add75, %50
  %mul = sub i32 %add75, %53
  br label %land.rhs

land.rhs:                                         ; preds = %if.end95.land.rhs_crit_edge, %while.body
  %ra_want.1175 = phi i32 [ %ra_want.0, %while.body ], [ %sub97, %if.end95.land.rhs_crit_edge ]
  %next_ra.0173 = phi i32 [ %mul, %while.body ], [ %add99, %if.end95.land.rhs_crit_edge ]
  %conv80 = zext i32 %next_ra.0173 to i64
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %map, align 8
  %56 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %br_blockcount, align 8
  %add83 = add i64 %57, %55
  call void @__sanitizer_cov_trace_cmp8(i64 %add83, i64 %conv80)
  %cmp84 = icmp ugt i64 %add83, %conv80
  br i1 %cmp84, label %while.body86, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body86:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %next_ra.0173, i32 %shl.i.i)
  %cmp87.not = icmp ult i32 %next_ra.0173, %shl.i.i
  br i1 %cmp87.not, label %if.end90, label %if.then89

if.then89:                                        ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %ra_blk to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl.i.i, ptr %ra_blk, align 4
  br label %while.end

if.end90:                                         ; preds = %while.body86
  %59 = ptrtoint ptr %ra_blk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ra_blk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %next_ra.0173, i32 %60)
  %cmp91 = icmp ugt i32 %next_ra.0173, %60
  br i1 %cmp91, label %if.then93, label %if.end90.if.end95_crit_edge

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %call94 = call i32 @xfs_dir3_data_readahead(ptr noundef %1, i32 noundef %next_ra.0173, i32 noundef 1) #8
  %61 = ptrtoint ptr %ra_blk to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %next_ra.0173, ptr %ra_blk, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end90.if.end95_crit_edge
  %62 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fsbcount, align 4
  %sub97 = sub i32 %ra_want.1175, %63
  %add99 = add i32 %63, %next_ra.0173
  %cmp78 = icmp sgt i32 %sub97, 0
  br i1 %cmp78, label %if.end95.land.rhs_crit_edge, label %if.end95.while.end_crit_edge

if.end95.while.end_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end95.land.rhs_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %if.end95.while.end_crit_edge, %if.then89, %land.rhs.while.end_crit_edge
  %ra_want.1171 = phi i32 [ %ra_want.1175, %if.then89 ], [ %ra_want.1175, %land.rhs.while.end_crit_edge ], [ %sub97, %if.end95.while.end_crit_edge ]
  call void @xfs_iext_next(ptr noundef %i_df, ptr noundef nonnull %icur) #8
  %call.i169 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %map) #8
  br i1 %call.i169, label %while.end.while.cond_crit_edge, label %if.then101

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then101:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %ra_blk to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl.i.i, ptr %ra_blk, align 4
  br label %while.end103

while.end103:                                     ; preds = %if.then101, %while.cond.while.end103_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #8
  br label %out

out:                                              ; preds = %out_no_ra, %while.end103, %if.end28.out_crit_edge, %if.end21.out_crit_edge, %if.end8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_crit_edge ], [ 0, %if.end8.out_crit_edge ], [ %call25, %if.end21.out_crit_edge ], [ 0, %if.end28.out_crit_edge ], [ 0, %out_no_ra ], [ 0, %while.end103 ], [ 0, %if.end.out_crit_edge ]
  %65 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bp, align 4
  %67 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %bpp, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %error.0

out_no_ra:                                        ; preds = %if.end59.out_no_ra_crit_edge, %land.lhs.true.out_no_ra_crit_edge, %if.end44.out_no_ra_crit_edge
  %68 = ptrtoint ptr %ra_blk to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl.i.i, ptr %ra_blk, align 4
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iread_extents(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trim_extent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_readahead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 523, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 524, i32 2}
!5 = !{ptr @xfs_dir3_filetype_table, !6, !"xfs_dir3_filetype_table", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 25, i32 22}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_trace.h", i32 761, i32 1}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 60, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 61, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 62, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 88, i32 22}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 98, i32 22}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 120, i32 7}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_dir2_readdir.c", i32 212, i32 7}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148257172, i64 2148257177, i64 2148257190, i64 2148257234, i64 2148257268, i64 2148257289}
!42 = !{i64 2157963518}
!43 = !{i64 2157963707}
!44 = !{i64 2149959265}
!45 = !{i64 2149960301}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2166313993}
!48 = !{i64 2166314673}
!49 = !{i64 2166316190}
