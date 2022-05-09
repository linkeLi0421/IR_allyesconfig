; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_dir2.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_dir2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_name = type { ptr, i32, i32 }
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
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
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
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@xfs_name_dotdot = dso_local global { %struct.xfs_name, [20 x i8] } { %struct.xfs_name { ptr @.str, i32 2, i32 2 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mp->m_sb.sb_versionnum & XFS_SB_VERSION_DIRV2BIT\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/xfs/libxfs/xfs_dir2.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"xfs_dir2_dirblock_bytes(&mp->m_sb) <= XFS_MAX_BLOCKSIZE\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"S_ISDIR(VFS_I(dp)->i_mode)\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"!ino_ok\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid inode number 0x%Lx\00", [37 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rval != 0 && args->dp->i_disk_size != args->geo->blksize\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bno == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bno > 0\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__tracepoint_xfs_dir2_grow_inode = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_dir2_grow_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dir2_shrink_inode = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir2_shrink_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.xfs_mode_to_ftype = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\05\03\00\02\00\04\00\01\00\07\00\06", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 22, i32 54 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"xfs_name_dotdot\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 22, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 99, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 100, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 181, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 200, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 201, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 202, i32 16 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 609, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 677, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 700, i32 3 }
@___asan_gen_.52 = private constant [28 x i8] c"../fs/xfs/libxfs/xfs_dir2.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 702, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2122, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 108, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"switch.table.xfs_mode_to_ftype\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @xfs_name_dotdot, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.xfs_mode_to_ftype], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_name_dotdot to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xfs_mode_to_ftype to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @xfs_mode_to_ftype(i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mode, 61440
  %0 = add nsw i32 %and, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %0)
  %1 = icmp ult i32 %0, 49152
  br i1 %1, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = lshr exact i32 %0, 12
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.xfs_mode_to_ftype, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ascii_ci_hashname(ptr nocapture noundef readonly %name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %hash.08 = phi i32 [ 0, %for.body.lr.ph ], [ %xor, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  %sub.i = add i8 %5, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %5, i8 %sub.i
  %conv = zext i8 %spec.select.i to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %hash.08, i32 %hash.08, i32 7) #11
  %xor = xor i32 %or.i, %conv
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %hash.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %xor, %for.body.for.end_crit_edge ]
  ret i32 %hash.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ascii_ci_compname(ptr nocapture noundef readonly %args, ptr nocapture noundef readonly %name, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %namelen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp.not = icmp eq i32 %1, %len
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp134 = icmp sgt i32 %len, 0
  br i1 %cmp134, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %result.035 = phi i32 [ 1, %for.body.lr.ph ], [ %result.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %3, i32 %i.036
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %name, i32 %i.036
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp5 = icmp eq i8 %5, %7
  br i1 %cmp5, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %conv.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 0
  %sub.i = add i8 %5, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %5, i8 %sub.i
  %conv.i29 = zext i8 %7 to i32
  %arrayidx.i30 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i29
  %11 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i30, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not.i31 = icmp eq i8 %13, 0
  %sub.i32 = add i8 %7, 32
  %spec.select.i33 = select i1 %cmp.not.i31, i8 %7, i8 %sub.i32
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %spec.select.i33)
  %cmp15.not = icmp eq i8 %spec.select.i, %spec.select.i33
  br i1 %cmp15.not, label %if.end8.for.inc_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %result.1 = phi i32 [ %result.035, %for.body.for.inc_crit_edge ], [ 2, %if.end8.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %result.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_da_mount(ptr nocapture noundef %mp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_versionnum = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 15
  %0 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sb_versionnum, align 4
  %2 = and i16 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !46

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 99) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %3 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sb_blocklog.i, align 8
  %conv.i = zext i8 %4 to i32
  %sb_dirblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 40
  %5 = ptrtoint ptr %sb_dirblklog.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_dirblklog.i, align 8
  %conv1.i = zext i8 %6 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 17
  br i1 %cmp, label %cond.end.cond.end13_crit_edge, label %cond.false12, !prof !47

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 100) #11
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %call.i = tail call ptr @kmem_alloc(i32 noundef 60, i32 noundef 24) #11
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %7 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %m_dir_geo, align 4
  %call.i151 = tail call ptr @kmem_alloc(i32 noundef 60, i32 noundef 24) #11
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 7
  %8 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i151, ptr %m_attr_geo, align 32
  %9 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_dir_geo, align 4
  %tobool17.not = icmp eq ptr %10, null
  %tobool19.not = icmp eq ptr %call.i151, null
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef %10) #11
  %11 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_attr_geo, align 32
  tail call void @kvfree(ptr noundef %12) #11
  br label %cleanup

if.end:                                           ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_blocklog.i, align 8
  %15 = ptrtoint ptr %sb_dirblklog.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_dirblklog.i, align 64
  %add = add i8 %16, %14
  %blklog = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %blklog to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add, ptr %blklog, align 1
  %18 = load i8, ptr %sb_blocklog.i, align 8
  %fsblog = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 2
  %19 = ptrtoint ptr %fsblog to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %fsblog, align 4
  %20 = load i8, ptr %sb_blocklog.i, align 8
  %conv.i153 = zext i8 %20 to i32
  %21 = load i8, ptr %sb_dirblklog.i, align 8
  %conv1.i155 = zext i8 %21 to i32
  %add.i156 = add nuw nsw i32 %conv1.i155, %conv.i153
  %shl.i157 = shl nuw i32 1, %add.i156
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl.i157, ptr %10, align 4
  %23 = load i8, ptr %sb_dirblklog.i, align 64
  %conv34 = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv34
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 1
  %24 = ptrtoint ptr %fsbcount to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl, ptr %fsbcount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 16, i32 64
  %27 = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 11
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select, ptr %31, align 4
  %33 = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 15
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select, ptr %33, align 4
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %10, align 4
  %sub = sub i32 %36, %spec.select
  %div147 = lshr i32 %sub, 3
  %leaf_max_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 9
  %37 = ptrtoint ptr %leaf_max_ents to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div147, ptr %leaf_max_ents, align 4
  %div47148 = lshr i32 %sub, 1
  %free_max_bests = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 12
  %38 = ptrtoint ptr %free_max_bests to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div47148, ptr %free_max_bests, align 4
  %add52 = or i32 %spec.select, 32
  %data_first_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 14
  %39 = ptrtoint ptr %data_first_offset to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add52, ptr %data_first_offset, align 4
  %40 = ptrtoint ptr %blklog to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %blklog, align 1
  %conv.i.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %fsblog to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fsblog, align 4
  %conv1.i4.i = zext i8 %43 to i32
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 7
  %44 = ptrtoint ptr %datablk to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %datablk, align 4
  %sh_prom.i.i163 = zext i8 %41 to i64
  %shr.i.i177 = lshr i64 34359738368, %sh_prom.i.i163
  %conv1.i.i = trunc i64 %shr.i.i177 to i32
  %sub.i.i167 = sub nsw i32 %conv.i.i, %conv1.i4.i
  %shl.i.i = shl i32 %conv1.i.i, %sub.i.i167
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 10
  %45 = ptrtoint ptr %leafblk to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl.i.i, ptr %leafblk, align 4
  %shr.i.i170178 = lshr i64 68719476736, %sh_prom.i.i163
  %conv1.i.i171 = trunc i64 %shr.i.i170178 to i32
  %shl.i.i176 = shl i32 %conv1.i.i171, %sub.i.i167
  %freeblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 13
  %46 = ptrtoint ptr %freeblk to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl.i.i176, ptr %freeblk, align 4
  %node_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 5
  %47 = ptrtoint ptr %node_ents to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div147, ptr %node_ents, align 4
  %mul = mul i32 %36, 37
  %div61 = udiv i32 %mul, 100
  %magicpct = getelementptr inbounds %struct.xfs_da_geometry, ptr %10, i32 0, i32 6
  %48 = ptrtoint ptr %magicpct to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div61, ptr %magicpct, align 4
  %49 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m_attr_geo, align 32
  %51 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sb_blocklog.i, align 8
  %blklog65 = getelementptr inbounds %struct.xfs_da_geometry, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %blklog65 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %blklog65, align 1
  %54 = load i8, ptr %sb_blocklog.i, align 8
  %fsblog68 = getelementptr inbounds %struct.xfs_da_geometry, ptr %50, i32 0, i32 2
  %55 = ptrtoint ptr %fsblog68 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %fsblog68, align 4
  %conv70 = zext i8 %52 to i32
  %shl71 = shl nuw i32 1, %conv70
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl71, ptr %50, align 4
  %fsbcount73 = getelementptr inbounds %struct.xfs_da_geometry, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %fsbcount73 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %fsbcount73, align 4
  %58 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %m_dir_geo, align 4
  %node_hdr_size75 = getelementptr inbounds %struct.xfs_da_geometry, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %node_hdr_size75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %node_hdr_size75, align 4
  %node_hdr_size76 = getelementptr inbounds %struct.xfs_da_geometry, ptr %50, i32 0, i32 4
  %62 = ptrtoint ptr %node_hdr_size76 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %node_hdr_size76, align 4
  %sub79 = sub i32 %shl71, %61
  %div80150 = lshr i32 %sub79, 3
  %node_ents81 = getelementptr inbounds %struct.xfs_da_geometry, ptr %50, i32 0, i32 5
  %63 = ptrtoint ptr %node_ents81 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div80150, ptr %node_ents81, align 4
  %mul83 = shl i32 37, %conv70
  %div84 = udiv i32 %mul83, 100
  %magicpct85 = getelementptr inbounds %struct.xfs_da_geometry, ptr %50, i32 0, i32 6
  %64 = ptrtoint ptr %magicpct85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div84, ptr %magicpct85, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_da_unmount(ptr nocapture noundef readonly %mp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_dir_geo, align 4
  tail call void @kvfree(ptr noundef %1) #11
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 7
  %2 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_attr_geo, align 32
  tail call void @kvfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_isempty(ptr nocapture noundef readonly %dp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !47

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 181) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 18
  %3 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp3 = icmp eq i64 %4, 0
  br i1 %cmp3, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 23
  %5 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp7.not = icmp eq i8 %6, 0
  br i1 %cmp7.not, label %cond.false12, label %cond.true9

cond.true9:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv6, 3
  br label %cond.end17

cond.false12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sb_inodesize, align 8
  %conv13 = zext i16 %10 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 61
  %11 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv13
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false12, %cond.true9
  %cond18 = phi i32 [ %shl, %cond.true9 ], [ %sub, %cond.false12 ]
  %conv19 = zext i32 %cond18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv19)
  %cmp20 = icmp sgt i64 %4, %conv19
  br i1 %cmp20, label %cond.end17.cleanup_crit_edge, label %if.end23

cond.end17.cleanup_crit_edge:                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #13
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 4
  %13 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_u1, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not = icmp eq i8 %16, 0
  %lnot.ext26 = zext i1 %tobool24.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %cond.end17.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext26, %if.end23 ], [ 1, %cond.end.cleanup_crit_edge ], [ 0, %cond.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_ino_validate(ptr noundef %mp, i64 noundef %ino) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xfs_verify_dir_ino(ptr noundef %mp, i64 noundef %ino) #11
  br i1 %call, label %lor.lhs.false, label %__here, !prof !47

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !48
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 200, ptr noundef blockaddress(@xfs_dir_ino_validate, %__here)) #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call zeroext i1 @xfs_errortag_test(ptr noundef %mp, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 201, i32 noundef 15) #11
  br i1 %call4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %__here
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.7, i64 noundef %ino) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_dir_ino(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_init(ptr noundef %tp, ptr noundef %dp, ptr nocapture noundef readonly %pdp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !47

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 221) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %3 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %t_mountp, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %pdp, i32 0, i32 4
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_ino, align 8
  %call3 = tail call i32 @xfs_dir_ino_validate(ptr noundef %4, i64 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call.i = tail call ptr @kmem_alloc(i32 noundef 112, i32 noundef 20) #11
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_dir_geo, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call.i, align 8
  %dp9 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %dp9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dp, ptr %dp9, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tp, ptr %trans, align 4
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_ino, align 8
  %call11 = tail call i32 @xfs_dir2_sf_create(ptr noundef nonnull %call.i, i64 noundef %15) #11
  tail call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end8 ], [ %call3, %cond.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_sf_create(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_createname(ptr noundef %tp, ptr noundef %dp, ptr nocapture noundef readonly %name, i64 noundef %inum, i32 noundef %total) local_unnamed_addr #4 align 64 {
entry:
  %last.i = alloca i64, align 8
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #11
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !49
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %1 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %i_vnode.i, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !47

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 254) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inum)
  %tobool3.not = icmp eq i64 %inum, 0
  br i1 %tobool3.not, label %cond.end.if.end25_crit_edge, label %if.then

cond.end.if.end25_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then:                                          ; preds = %cond.end
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  %call4 = tail call i32 @xfs_dir_ino_validate(ptr noundef %5, i64 noundef %inum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %6 = load ptr, ptr @xfsstats, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %xs_dir_create = getelementptr inbounds %struct.__xfsstats, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %xs_dir_create to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xs_dir_create, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %xs_dir_create, align 8
  %17 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dp, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %18, i32 0, i32 92
  %19 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_stats, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %24, %21
  %25 = inttoptr i32 %add20 to ptr
  %xs_dir_create21 = getelementptr inbounds %struct.__xfsstats, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %xs_dir_create21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xs_dir_create21, align 8
  %inc22 = add i32 %27, 1
  store i32 %inc22, ptr %xs_dir_create21, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.body7, %cond.end.if.end25_crit_edge
  %call.i = tail call ptr @kmem_alloc(i32 noundef 112, i32 noundef 20) #11
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %28 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_dir_geo, align 4
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %call.i, align 8
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %name32 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %name32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %name32, align 4
  %len = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %namelen, align 8
  %type = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  %conv33 = trunc i32 %40 to i8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv33, ptr %filetype, align 4
  %42 = load ptr, ptr %dp, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %42, i32 0, i32 61
  %43 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %44, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @xfs_ascii_ci_hashname(ptr noundef %name) #11
  br label %xfs_dir2_hashname.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 4
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %call4.i = tail call i32 @xfs_da_hashname(ptr noundef %46, i32 noundef %48) #11
  br label %xfs_dir2_hashname.exit

xfs_dir2_hashname.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 8
  %49 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i, ptr %hashval, align 8
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 9
  %50 = ptrtoint ptr %inumber to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %inum, ptr %inumber, align 8
  %dp36 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 10
  %51 = ptrtoint ptr %dp36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dp, ptr %dp36, align 8
  %total37 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 12
  %52 = ptrtoint ptr %total37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %total, ptr %total37, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 13
  %53 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %whichfork, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 11
  %54 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %tp, ptr %trans, align 4
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 24
  %spec.select = select i1 %tobool3.not, i32 13, i32 12
  %55 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select, ptr %op_flags, align 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 6
  %56 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp43 = icmp eq i8 %57, 1
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %xfs_dir2_hashname.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 @xfs_dir2_sf_addname(ptr noundef nonnull %call.i) #11
  br label %out_free

if.end47:                                         ; preds = %xfs_dir2_hashname.exit
  %call48 = call i32 @xfs_dir2_isblock(ptr noundef nonnull %call.i, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_free_crit_edge

if.end47.out_free_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end51:                                         ; preds = %if.end47
  %58 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool52.not = icmp eq i32 %59, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %call54 = tail call i32 @xfs_dir2_block_addname(ptr noundef nonnull %call.i) #11
  br label %out_free

if.end55:                                         ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last.i) #11
  %60 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -1, ptr %last.i, align 8, !annotation !49
  %61 = ptrtoint ptr %dp36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dp36, align 8
  %call.i102 = call i32 @xfs_bmap_last_offset(ptr noundef %62, ptr noundef nonnull %last.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i, label %if.end59, label %xfs_dir2_isleaf.exit

xfs_dir2_isleaf.exit:                             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last.i) #11
  br label %out_free

if.end59:                                         ; preds = %if.end55
  %63 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %last.i, align 8
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 8
  %leafblk.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %leafblk.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %leafblk.i, align 4
  %fsbcount.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %fsbcount.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fsbcount.i, align 4
  %add.i = add i32 %70, %68
  %conv.i = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %conv.i)
  %cmp.i = icmp eq i64 %64, %conv.i
  %conv2.i = zext i1 %cmp.i to i32
  %71 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv2.i, ptr %v, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last.i) #11
  br i1 %cmp.i, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = call i32 @xfs_dir2_leaf_addname(ptr noundef nonnull %call.i) #11
  br label %out_free

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = call i32 @xfs_dir2_node_addname(ptr noundef nonnull %call.i) #11
  br label %out_free

out_free:                                         ; preds = %if.else, %if.then61, %xfs_dir2_isleaf.exit, %if.then53, %if.end47.out_free_crit_edge, %if.then45
  %rval.0 = phi i32 [ %call46, %if.then45 ], [ %call48, %if.end47.out_free_crit_edge ], [ %call54, %if.then53 ], [ %call.i102, %xfs_dir2_isleaf.exit ], [ %call62, %if.then61 ], [ %call63, %if.else ]
  call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end25.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %out_free ], [ %call4, %if.then.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_hashname(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then, !prof !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @xfs_ascii_ci_hashname(ptr noundef %name)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %len = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call4 = tail call i32 @xfs_da_hashname(ptr noundef %3, i32 noundef %5) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_sf_addname(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_isblock(ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %vp) #4 align 64 {
entry:
  %last = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last) #11
  %0 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %last, align 8, !annotation !49
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  %call = call i32 @xfs_bmap_last_offset(ptr noundef %2, ptr noundef nonnull %last, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %last, align 8
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %10 to i64
  %shl = shl i64 %4, %sh_prom
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %conv2 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv2)
  %cmp = icmp eq i64 %shl, %conv2
  %conv3 = zext i1 %cmp to i32
  br i1 %cmp, label %land.rhs, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.rhs:                                         ; preds = %if.end
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 18
  %15 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %shl)
  %cmp10.not = icmp eq i64 %16, %shl
  br i1 %cmp10.not, label %land.rhs.if.end17_crit_edge, label %__here, !prof !47

land.rhs.if.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

__here:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !50
  call void @xfs_corruption_error(ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %8, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 611, ptr noundef blockaddress(@xfs_dir2_isblock, %__here)) #11
  br label %cleanup

if.end17:                                         ; preds = %land.rhs.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %17 = ptrtoint ptr %vp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv3, ptr %vp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %__here, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_block_addname(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_isleaf(ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %vp) local_unnamed_addr #4 align 64 {
entry:
  %last = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last) #11
  %0 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %last, align 8, !annotation !49
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  %call = call i32 @xfs_bmap_last_offset(ptr noundef %2, ptr noundef nonnull %last, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %last, align 8
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leafblk, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fsbcount, align 4
  %add = add i32 %10, %8
  %conv = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv)
  %cmp = icmp eq i64 %4, %conv
  %conv2 = zext i1 %cmp to i32
  %11 = ptrtoint ptr %vp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2, ptr %vp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_addname(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_node_addname(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_cilookup_result(ptr nocapture noundef %args, ptr nocapture noundef readonly %name, i32 noundef %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmpresult = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 25
  %0 = ptrtoint ptr %cmpresult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmpresult, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.then3_crit_edge [
    i32 0, label %entry.return_crit_edge
    i32 2, label %lor.lhs.false
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false:                                    ; preds = %entry
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %3 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %op_flags, align 8
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then3_crit_edge, label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %entry.if.then3_crit_edge
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %call = tail call ptr @kmem_alloc(i32 noundef %len, i32 noundef 12) #11
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %value, align 8
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %6 = call ptr @memcpy(ptr %call, ptr %name, i32 %len)
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %7 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %valuelen, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.end4.return_crit_edge, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ -17, %if.then3 ], [ -17, %if.end8 ], [ -2, %entry.return_crit_edge ], [ -12, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_lookup(ptr noundef %tp, ptr noundef %dp, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %inum, ptr noundef writeonly %ci_name) local_unnamed_addr #4 align 64 {
entry:
  %last.i = alloca i64, align 8
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #11
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !49
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %1 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %i_vnode.i, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %entry.do.body3_crit_edge, label %cond.false, !prof !47

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 351) #11
  br label %do.body3

do.body3:                                         ; preds = %cond.false, %entry.do.body3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %4 = load ptr, ptr @xfsstats, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %xs_dir_lookup = getelementptr inbounds %struct.__xfsstats, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %xs_dir_lookup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xs_dir_lookup, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %xs_dir_lookup, align 4
  %15 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 92
  %17 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_stats, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = load i32, ptr %cpu, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %22, %19
  %23 = inttoptr i32 %add16 to ptr
  %xs_dir_lookup17 = getelementptr inbounds %struct.__xfsstats, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %xs_dir_lookup17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xs_dir_lookup17, align 4
  %inc18 = add i32 %25, 1
  store i32 %inc18, ptr %xs_dir_lookup17, align 4
  %call.i = tail call ptr @kmem_alloc(i32 noundef 112, i32 noundef 20) #11
  %26 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m_dir_geo, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call.i, align 8
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %name24 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %name24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %name24, align 4
  %len = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %namelen, align 8
  %type = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  %conv25 = trunc i32 %38 to i8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv25, ptr %filetype, align 4
  %40 = load ptr, ptr %dp, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %40, i32 0, i32 61
  %41 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %42, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @xfs_ascii_ci_hashname(ptr noundef %name) #11
  br label %xfs_dir2_hashname.exit

if.end.i:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %call4.i = tail call i32 @xfs_da_hashname(ptr noundef %44, i32 noundef %46) #11
  br label %xfs_dir2_hashname.exit

xfs_dir2_hashname.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 8
  %47 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i, ptr %hashval, align 8
  %dp28 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 10
  %48 = ptrtoint ptr %dp28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dp, ptr %dp28, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 13
  %49 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %whichfork, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 11
  %50 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tp, ptr %trans, align 4
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 24
  %tobool29.not = icmp eq ptr %ci_name, null
  %spec.select = select i1 %tobool29.not, i32 8, i32 24
  %51 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select, ptr %op_flags, align 8
  %call31 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %dp) #11
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 6
  %52 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp33 = icmp eq i8 %53, 1
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %xfs_dir2_hashname.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 @xfs_dir2_sf_lookup(ptr noundef %call.i) #11
  br label %out_check_rval

if.end37:                                         ; preds = %xfs_dir2_hashname.exit
  %call38 = call i32 @xfs_dir2_isblock(ptr noundef %call.i, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.out_free_crit_edge

if.end37.out_free_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end41:                                         ; preds = %if.end37
  %54 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool42.not = icmp eq i32 %55, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 @xfs_dir2_block_lookup(ptr noundef %call.i) #11
  br label %out_check_rval

if.end45:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last.i) #11
  %56 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -1, ptr %last.i, align 8, !annotation !49
  %57 = ptrtoint ptr %dp28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dp28, align 8
  %call.i103 = call i32 @xfs_bmap_last_offset(ptr noundef %58, ptr noundef nonnull %last.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i, label %if.end49, label %xfs_dir2_isleaf.exit

xfs_dir2_isleaf.exit:                             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last.i) #11
  br label %out_free

if.end49:                                         ; preds = %if.end45
  %59 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %last.i, align 8
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 8
  %leafblk.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %leafblk.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %leafblk.i, align 4
  %fsbcount.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %fsbcount.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fsbcount.i, align 4
  %add.i = add i32 %66, %64
  %conv.i = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %conv.i)
  %cmp.i = icmp eq i64 %60, %conv.i
  %conv2.i = zext i1 %cmp.i to i32
  %67 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv2.i, ptr %v, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last.i) #11
  br i1 %cmp.i, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = call i32 @xfs_dir2_leaf_lookup(ptr noundef %call.i) #11
  br label %out_check_rval

if.else:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = call i32 @xfs_dir2_node_lookup(ptr noundef %call.i) #11
  br label %out_check_rval

out_check_rval:                                   ; preds = %if.else, %if.then51, %if.then43, %if.then35
  %rval.0 = phi i32 [ %call36, %if.then35 ], [ %call44, %if.then43 ], [ %call52, %if.then51 ], [ %call53, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %rval.0)
  %cmp55 = icmp eq i32 %rval.0, -17
  %spec.store.select = select i1 %cmp55, i32 0, i32 %rval.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool59.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool59.not, label %if.then60, label %out_check_rval.out_free_crit_edge

out_check_rval.out_free_crit_edge:                ; preds = %out_check_rval
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.then60:                                        ; preds = %out_check_rval
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 9
  %68 = ptrtoint ptr %inumber to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %inumber, align 8
  %70 = ptrtoint ptr %inum to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %inum, align 8
  br i1 %tobool29.not, label %if.then60.out_free_crit_edge, label %if.then62

if.then60.out_free_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 4
  %71 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %value, align 8
  %73 = ptrtoint ptr %ci_name to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %ci_name, align 4
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 5
  %74 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %valuelen, align 4
  %len64 = getelementptr inbounds %struct.xfs_name, ptr %ci_name, i32 0, i32 1
  %76 = ptrtoint ptr %len64 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %len64, align 4
  br label %out_free

out_free:                                         ; preds = %if.then62, %if.then60.out_free_crit_edge, %out_check_rval.out_free_crit_edge, %xfs_dir2_isleaf.exit, %if.end37.out_free_crit_edge
  %rval.1 = phi i32 [ %spec.store.select, %out_check_rval.out_free_crit_edge ], [ 0, %if.then62 ], [ 0, %if.then60.out_free_crit_edge ], [ %call38, %if.end37.out_free_crit_edge ], [ %call.i103, %xfs_dir2_isleaf.exit ]
  call void @xfs_iunlock(ptr noundef %dp, i32 noundef %call31) #11
  call void @kvfree(ptr noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #11
  ret i32 %rval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_sf_lookup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_block_lookup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_lookup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_node_lookup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_removename(ptr noundef %tp, ptr noundef %dp, ptr nocapture noundef readonly %name, i64 noundef %ino, i32 noundef %total) local_unnamed_addr #4 align 64 {
entry:
  %last.i = alloca i64, align 8
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #11
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !49
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %1 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %i_vnode.i, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %entry.do.body3_crit_edge, label %cond.false, !prof !47

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 428) #11
  br label %do.body3

do.body3:                                         ; preds = %cond.false, %entry.do.body3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %4 = load ptr, ptr @xfsstats, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %xs_dir_remove = getelementptr inbounds %struct.__xfsstats, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %xs_dir_remove to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xs_dir_remove, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %xs_dir_remove, align 4
  %15 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 92
  %17 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_stats, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = load i32, ptr %cpu, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %22, %19
  %23 = inttoptr i32 %add16 to ptr
  %xs_dir_remove17 = getelementptr inbounds %struct.__xfsstats, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %xs_dir_remove17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xs_dir_remove17, align 4
  %inc18 = add i32 %25, 1
  store i32 %inc18, ptr %xs_dir_remove17, align 4
  %call.i = tail call ptr @kmem_alloc(i32 noundef 112, i32 noundef 20) #11
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %do.body3.cleanup_crit_edge, label %if.end

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %do.body3
  %26 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m_dir_geo, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call.i, align 8
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %name25 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %name25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %name25, align 4
  %len = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %namelen, align 8
  %type = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  %conv26 = trunc i32 %38 to i8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv26, ptr %filetype, align 4
  %40 = load ptr, ptr %dp, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %40, i32 0, i32 61
  %41 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %42, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @xfs_ascii_ci_hashname(ptr noundef %name) #11
  br label %xfs_dir2_hashname.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %call4.i = tail call i32 @xfs_da_hashname(ptr noundef %44, i32 noundef %46) #11
  br label %xfs_dir2_hashname.exit

xfs_dir2_hashname.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 8
  %47 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i, ptr %hashval, align 8
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 9
  %48 = ptrtoint ptr %inumber to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %ino, ptr %inumber, align 8
  %dp29 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 10
  %49 = ptrtoint ptr %dp29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dp, ptr %dp29, align 8
  %total30 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 12
  %50 = ptrtoint ptr %total30 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %total, ptr %total30, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 13
  %51 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %whichfork, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 11
  %52 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %tp, ptr %trans, align 4
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 6
  %53 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp32 = icmp eq i8 %54, 1
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %xfs_dir2_hashname.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 @xfs_dir2_sf_removename(ptr noundef nonnull %call.i) #11
  br label %out_free

if.end36:                                         ; preds = %xfs_dir2_hashname.exit
  %call37 = call i32 @xfs_dir2_isblock(ptr noundef nonnull %call.i, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.out_free_crit_edge

if.end36.out_free_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end40:                                         ; preds = %if.end36
  %55 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool41.not = icmp eq i32 %56, 0
  br i1 %tobool41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 @xfs_dir2_block_removename(ptr noundef nonnull %call.i) #11
  br label %out_free

if.end44:                                         ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last.i) #11
  %57 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 -1, ptr %last.i, align 8, !annotation !49
  %58 = ptrtoint ptr %dp29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dp29, align 8
  %call.i83 = call i32 @xfs_bmap_last_offset(ptr noundef %59, ptr noundef nonnull %last.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i, label %if.end48, label %xfs_dir2_isleaf.exit

xfs_dir2_isleaf.exit:                             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last.i) #11
  br label %out_free

if.end48:                                         ; preds = %if.end44
  %60 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %last.i, align 8
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 8
  %leafblk.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %leafblk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %leafblk.i, align 4
  %fsbcount.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %fsbcount.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fsbcount.i, align 4
  %add.i = add i32 %67, %65
  %conv.i = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %conv.i)
  %cmp.i = icmp eq i64 %61, %conv.i
  %conv2.i = zext i1 %cmp.i to i32
  %68 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv2.i, ptr %v, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last.i) #11
  br i1 %cmp.i, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = call i32 @xfs_dir2_leaf_removename(ptr noundef nonnull %call.i) #11
  br label %out_free

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = call i32 @xfs_dir2_node_removename(ptr noundef nonnull %call.i) #11
  br label %out_free

out_free:                                         ; preds = %if.else, %if.then50, %xfs_dir2_isleaf.exit, %if.then42, %if.end36.out_free_crit_edge, %if.then34
  %rval.0 = phi i32 [ %call35, %if.then34 ], [ %call37, %if.end36.out_free_crit_edge ], [ %call43, %if.then42 ], [ %call.i83, %xfs_dir2_isleaf.exit ], [ %call51, %if.then50 ], [ %call52, %if.else ]
  call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.body3.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %out_free ], [ -12, %do.body3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_sf_removename(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_block_removename(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_removename(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_node_removename(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_replace(ptr noundef %tp, ptr noundef %dp, ptr nocapture noundef readonly %name, i64 noundef %inum, i32 noundef %total) local_unnamed_addr #4 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #11
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !49
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 27
  %1 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %i_vnode.i, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !47

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 486) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  %call3 = tail call i32 @xfs_dir_ino_validate(ptr noundef %5, i64 noundef %inum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call.i = tail call ptr @kmem_alloc(i32 noundef 112, i32 noundef 20) #11
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_dir_geo, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call.i, align 8
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %name10 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %name10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name10, align 4
  %len = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %namelen, align 8
  %type = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %conv11 = trunc i32 %18 to i8
  %filetype = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %filetype to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11, ptr %filetype, align 4
  %20 = load ptr, ptr %dp, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 61
  %21 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %22, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @xfs_ascii_ci_hashname(ptr noundef %name) #11
  br label %xfs_dir2_hashname.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %call4.i = tail call i32 @xfs_da_hashname(ptr noundef %24, i32 noundef %26) #11
  br label %xfs_dir2_hashname.exit

xfs_dir2_hashname.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %hashval, align 8
  %inumber = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %inumber to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %inum, ptr %inumber, align 8
  %dp14 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 10
  %29 = ptrtoint ptr %dp14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dp, ptr %dp14, align 8
  %total15 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 12
  %30 = ptrtoint ptr %total15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %total, ptr %total15, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 13
  %31 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %whichfork, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 11
  %32 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tp, ptr %trans, align 4
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 6
  %33 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp17 = icmp eq i8 %34, 1
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %xfs_dir2_hashname.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @xfs_dir2_sf_replace(ptr noundef nonnull %call.i) #11
  br label %out_free

if.end21:                                         ; preds = %xfs_dir2_hashname.exit
  %call22 = call i32 @xfs_dir2_isblock(ptr noundef nonnull %call.i, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_free_crit_edge

if.end21.out_free_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end25:                                         ; preds = %if.end21
  %35 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool26.not = icmp eq i32 %36, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 @xfs_dir2_block_replace(ptr noundef nonnull %call.i) #11
  br label %out_free

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @xfs_dir2_isleaf(ptr noundef nonnull %call.i, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.out_free_crit_edge

if.end29.out_free_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end33:                                         ; preds = %if.end29
  %37 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool34.not = icmp eq i32 %38, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 @xfs_dir2_leaf_replace(ptr noundef nonnull %call.i) #11
  br label %out_free

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call i32 @xfs_dir2_node_replace(ptr noundef nonnull %call.i) #11
  br label %out_free

out_free:                                         ; preds = %if.else, %if.then35, %if.end29.out_free_crit_edge, %if.then27, %if.end21.out_free_crit_edge, %if.then19
  %rval.0 = phi i32 [ %call20, %if.then19 ], [ %call22, %if.end21.out_free_crit_edge ], [ %call28, %if.then27 ], [ %call30, %if.end29.out_free_crit_edge ], [ %call36, %if.then35 ], [ %call37, %if.else ]
  tail call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %out_free ], [ %call3, %cond.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_sf_replace(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_block_replace(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_replace(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_node_replace(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir_canenter(ptr noundef %tp, ptr noundef %dp, ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_dir_createname(ptr noundef %tp, ptr noundef %dp, ptr noundef %name, i64 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_grow_inode(ptr noundef %args, i32 noundef %space, ptr nocapture noundef writeonly %dbp) local_unnamed_addr #4 align 64 {
entry:
  %bno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bno) #11
  tail call fastcc void @trace_xfs_dir2_grow_inode(ptr noundef %args, i32 noundef %space)
  %conv37 = zext i32 %space to i64
  %mul = shl i64 %conv37, 35
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %mul, %sh_prom
  %6 = ptrtoint ptr %bno to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shr, ptr %bno, align 8
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fsbcount, align 4
  %call = call i32 @xfs_da_grow_inode_int(ptr noundef %args, ptr noundef nonnull %bno, i32 noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args, align 8
  %13 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bno, align 8
  %conv4 = trunc i64 %14 to i32
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %16 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %18 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shr.i = lshr i32 %conv4, %sub.i
  %19 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %dbp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space)
  %cmp = icmp eq i32 %space, 0
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %conv8 = sext i32 %10 to i64
  %add = add i64 %14, %conv8
  %20 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_blocklog, align 8
  %sh_prom12 = zext i8 %21 to i64
  %shl = shl i64 %add, %sh_prom12
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %23)
  %cmp13 = icmp sgt i64 %shl, %23
  br i1 %cmp13, label %if.then15, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl, ptr %i_disk_size, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %25 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans, align 4
  call void @xfs_trans_log_inode(ptr noundef %26, ptr noundef %1, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bno) #11
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_grow_inode(ptr noundef %args, i32 noundef %idx) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_grow_inode, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_grow_inode, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !52
  %call42 = tail call i32 @__traceiter_xfs_dir2_grow_inode(ptr noundef null, ptr noundef %args, i32 noundef %idx) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_grow_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_grow_inode, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_grow_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dir2_grow_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2122, ptr noundef nonnull @.str.13) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
declare dso_local i32 @xfs_da_grow_inode_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_last_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %db, ptr noundef %bp) local_unnamed_addr #4 align 64 {
entry:
  %bno = alloca i64, align 8
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bno) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #11
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %done, align 4, !annotation !49
  tail call fastcc void @trace_xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %db)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %1 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp1, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %10 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %12 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %db, %sub.i
  %conv = zext i32 %shl.i to i64
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fsbcount, align 4
  %conv3 = zext i32 %14 to i64
  %call4 = call i32 @xfs_bunmapi(ptr noundef %6, ptr noundef %2, i64 noundef %conv, i64 noundef %conv3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %done) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !46

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 677) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  call void @xfs_trans_binval(ptr noundef %6, ptr noundef %bp) #11
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args, align 8
  %blklog.i81 = getelementptr inbounds %struct.xfs_da_geometry, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %blklog.i81 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %blklog.i81, align 1
  %sh_prom.i = zext i8 %20 to i64
  %shr.i87 = lshr i64 34359738368, %sh_prom.i
  %conv1.i82 = trunc i64 %shr.i87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i82, i32 %db)
  %cmp.not = icmp ugt i32 %conv1.i82, %db
  br i1 %cmp.not, label %if.end12, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %cond.end
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %2, i32 0, i32 18
  %21 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_disk_size, align 8
  %add = add nuw i32 %db, 1
  %conv.i83 = zext i32 %add to i64
  %shl.i86 = shl i64 %conv.i83, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %shl.i86)
  %cmp15 = icmp sgt i64 %22, %shl.i86
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %23 = ptrtoint ptr %bno to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %bno, align 8
  %call20 = call i32 @xfs_bmap_last_before(ptr noundef %6, ptr noundef %2, ptr noundef nonnull %bno, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args, align 8
  %datablk = getelementptr inbounds %struct.xfs_da_geometry, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %datablk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %datablk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %db)
  %cmp25 = icmp eq i32 %27, %db
  %28 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp28 = icmp eq i64 %29, 0
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  br i1 %cmp28, label %if.then27.if.end50_crit_edge, label %cond.false37, !prof !47

if.then27.if.end50_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

cond.false37:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 700) #11
  br label %if.end50

if.else:                                          ; preds = %if.end23
  br i1 %cmp28, label %cond.false48, label %if.else.if.end50_crit_edge, !prof !46

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

cond.false48:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 702) #11
  br label %if.end50

if.end50:                                         ; preds = %cond.false48, %if.else.if.end50_crit_edge, %cond.false37, %if.then27.if.end50_crit_edge
  %30 = ptrtoint ptr %bno to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bno, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 20
  %32 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %33 to i64
  %shl = shl i64 %31, %sh_prom
  %34 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %shl, ptr %i_disk_size, align 8
  call void @xfs_trans_log_inode(ptr noundef %6, ptr noundef %2, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bno) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir2_shrink_inode(ptr noundef %args, i32 noundef %idx) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_shrink_inode, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir2_shrink_inode, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !56
  %call42 = tail call i32 @__traceiter_xfs_dir2_shrink_inode(ptr noundef null, ptr noundef %args, i32 noundef %idx) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !57
  %13 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_shrink_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir2_shrink_inode, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dir2_shrink_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dir2_shrink_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2123, ptr noundef nonnull @.str.13) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
declare dso_local i32 @xfs_bunmapi(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_binval(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_last_before(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_dir2_namecheck(ptr noundef readonly %name, i32 noundef %length) local_unnamed_addr #7 align 64 {
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
  %call = tail call ptr @memchr(ptr noundef %name, i32 noundef 47, i32 noundef %length) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.rhs, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @memchr(ptr noundef %name, i32 noundef 0, i32 noundef %length) #14
  %tobool2.not = icmp eq ptr %call1, null
  br label %return

return:                                           ; preds = %land.rhs, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %tobool2.not, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_hashname(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dir2_compname(ptr noundef %args, ptr noundef %name, i32 noundef %len) local_unnamed_addr #4 align 64 {
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
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then, !prof !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @xfs_ascii_ci_compname(ptr noundef %args, ptr noundef %name, i32 noundef %len)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @xfs_da_compname(ptr noundef %args, ptr noundef %name, i32 noundef %len) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_compname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_grow_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir2_shrink_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 22, i32 54}
!2 = !{ptr @xfs_name_dotdot, !3, !"xfs_name_dotdot", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 22, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 99, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 100, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 181, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 200, i32 6}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 201, i32 6}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 202, i32 16}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 609, i32 6}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 677, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 700, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_dir2.c", i32 702, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trace.h", i32 2122, i32 1}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_trace.h", i32 2123, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2166322703}
!49 = !{!"auto-init"}
!50 = !{i64 2166332132}
!51 = !{i64 2148260774, i64 2148260779, i64 2148260792, i64 2148260836, i64 2148260870, i64 2148260891}
!52 = !{i64 2162115283}
!53 = !{i64 2162115502}
!54 = !{i64 2149962867}
!55 = !{i64 2149963903}
!56 = !{i64 2162132161}
!57 = !{i64 2162132384}
