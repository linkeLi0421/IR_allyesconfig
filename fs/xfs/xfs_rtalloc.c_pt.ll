; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_rtalloc.c_pt.bc'
source_filename = "../fs/xfs/xfs_rtalloc.c"
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
%struct.xfs_growfs_rt = type { i64, i32 }
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
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nsbp->sb_rextents != 0\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/xfs_rtalloc.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"xfs_isilocked(mp->m_rbmip, XFS_ILOCK_EXCL)\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"minlen > 0 && minlen <= maxlen\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*len >= minlen && *len <= maxlen\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Filesystem has a realtime volume, use rtdev=device option\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"realtime mount -- %llu != %llu\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"realtime device size check failed\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mp->m_rbmip != NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mp->m_rsumip != NULL\00", [43 x i8] zeroinitializer }, align 32
@xfs_rtbuf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not allocate realtime summary cache\00", [54 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sum > 0\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"minlen % prod == 0 && maxlen % prod == 0\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"maxlen != 0\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"minlen != 0\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1038, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1188, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1189, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1226, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1257, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1271, i32 16 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1280, i32 16 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1302, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1309, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 892, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 271, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 132, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 641, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 642, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [24 x i8] c"../fs/xfs/xfs_rtalloc.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 701, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_growfs_rt(ptr noundef %mp, ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %sumbno = alloca i64, align 8
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sumbno) #9
  %1 = ptrtoint ptr %sumbno to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sumbno, align 8, !annotation !42
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup754_crit_edge

entry.cleanup754_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end:                                           ; preds = %entry
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %2 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup754_crit_edge, label %if.end2

if.end.cleanup754_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end2:                                          ; preds = %if.end
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 9
  %4 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rbmip, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end2.cleanup754_crit_edge, label %lor.lhs.false

if.end2.cleanup754_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

lor.lhs.false:                                    ; preds = %if.end2
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 10
  %6 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_rsumip, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup754_crit_edge, label %if.end6

lor.lhs.false.cleanup754_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end6:                                          ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %in, align 8
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 3
  %10 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_rblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.not = icmp ugt i64 %9, %11
  br i1 %cmp.not, label %if.end8, label %if.end6.cleanup754_crit_edge

if.end6.cleanup754_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp10.not = icmp eq i64 %11, 0
  br i1 %cmp10.not, label %if.end8.if.end13_crit_edge, label %land.lhs.true

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %extsize = getelementptr inbounds %struct.xfs_growfs_rt, ptr %in, i32 0, i32 1
  %12 = ptrtoint ptr %extsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extsize, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 10
  %14 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_rextsize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp11.not = icmp eq i32 %13, %15
  br i1 %cmp11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup754_crit_edge

land.lhs.true.cleanup754_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  %extsize14 = getelementptr inbounds %struct.xfs_growfs_rt, ptr %in, i32 0, i32 1
  %16 = ptrtoint ptr %extsize14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extsize14, align 8
  %conv = zext i32 %17 to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %18 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %19 to i64
  %shl = shl i64 %conv, %sh_prom
  %20 = add i64 %shl, -1073741825
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1073737729, i64 %20)
  %21 = icmp ult i64 %20, -1073737729
  br i1 %21, label %if.end13.cleanup754_crit_edge, label %if.end30

if.end13.cleanup754_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end30:                                         ; preds = %if.end13
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i, align 8
  %24 = and i64 %23, 786432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %.not1159 = icmp eq i64 %24, 0
  br i1 %.not1159, label %if.end37, label %if.end30.cleanup754_crit_edge

if.end30.cleanup754_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end37:                                         ; preds = %if.end30
  %call39 = tail call i32 @xfs_sb_validate_fsb_count(ptr noundef %mp, i64 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup754_crit_edge

if.end37.cleanup754_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end42:                                         ; preds = %if.end37
  %25 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m_rtdev_targp, align 64
  %sub = add i64 %9, -1
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %27 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %m_blkbb_log, align 1
  %conv44 = zext i8 %28 to i32
  %sh_prom45 = zext i8 %28 to i64
  %shl46 = shl i64 %sub, %sh_prom45
  %shl49 = shl nuw i32 1, %conv44
  %call50 = call i32 @xfs_buf_read_uncached(ptr noundef %26, i64 noundef %shl46, i32 noundef %shl49, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end42.cleanup754_crit_edge

if.end42.cleanup754_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end53:                                         ; preds = %if.end42
  %29 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %30) #9
  call void @xfs_buf_rele(ptr noundef %30) #9
  %31 = ptrtoint ptr %extsize14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %extsize14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %9)
  %cmp231 = icmp ult i64 %9, 4294967296
  br i1 %cmp231, label %if.then235, label %if.else241, !prof !43

if.then235:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %conv236 = trunc i64 %9 to i32
  %div239 = udiv i32 %conv236, %32
  %conv240 = zext i32 %div239 to i64
  br label %if.end245

if.else241:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %33 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %9) #12, !srcloc !44
  %asmresult1.i = extractvalue { i64, i64 } %33, 1
  br label %if.end245

if.end245:                                        ; preds = %if.else241, %if.then235
  %nrextents.0 = phi i64 [ %conv240, %if.then235 ], [ %asmresult1.i, %if.else241 ]
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %34 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sb_blocksize, align 4
  %mul247 = shl i32 %35, 3
  %sub.i1113 = add i32 %mul247, -1
  %conv.i1114 = zext i32 %sub.i1113 to i64
  %add.i = add i64 %nrextents.0, %conv.i1114
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp168.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !43

if.then172.i:                                     ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  %conv173.i = trunc i64 %add.i to i32
  %div176.i = udiv i32 %conv173.i, %mul247
  %conv177.i = zext i32 %div176.i to i64
  br label %howmany_64.exit

if.else178.i:                                     ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul247, i64 %add.i) #12, !srcloc !44
  %asmresult1.i.i = extractvalue { i64, i64 } %36, 1
  br label %howmany_64.exit

howmany_64.exit:                                  ; preds = %if.else178.i, %if.then172.i
  %x.addr.0.i = phi i64 [ %conv177.i, %if.then172.i ], [ %asmresult1.i.i, %if.else178.i ]
  %conv249 = trunc i64 %x.addr.0.i to i32
  %conv250 = trunc i64 %nrextents.0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv250)
  %tobool.not.i.i1116 = icmp eq i32 %conv250, 0
  %37 = call i32 @llvm.ctlz.i32(i32 %conv250, i1 true) #9, !range !45
  %sub.i.op.i1117 = shl nuw nsw i32 %37, 2
  %sub.i.op.i1117.op = xor i32 %sub.i.op.i1117, 124
  %sub.i.op.i1117.op.op = add nuw nsw i32 %sub.i.op.i1117.op, 4
  %mul255 = select i1 %tobool.not.i.i1116, i32 1024, i32 %sub.i.op.i1117.op.op
  %mul256 = mul i32 %mul255, %conv249
  %conv257 = zext i32 %mul256 to i64
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %38 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m_blockmask, align 8
  %conv258 = zext i32 %39 to i64
  %add259 = add nuw nsw i64 %conv257, %conv258
  %40 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sb_blocklog, align 8
  %sh_prom263 = zext i8 %41 to i64
  %shr264 = lshr i64 %add259, %sh_prom263
  %conv265 = trunc i64 %shr264 to i32
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %42 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sb_logblocks, align 32
  %shr274 = lshr i32 %43, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr274, i32 %conv265)
  %cmp275 = icmp ult i32 %shr274, %conv265
  br i1 %cmp275, label %howmany_64.exit.cleanup754_crit_edge, label %if.end278

howmany_64.exit.cleanup754_crit_edge:             ; preds = %howmany_64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end278:                                        ; preds = %howmany_64.exit
  %44 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m_rbmip, align 8
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_disk_size, align 8
  %add282 = add i64 %47, %conv258
  %shr287 = lshr i64 %add282, %sh_prom263
  %conv288 = trunc i64 %shr287 to i32
  %48 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %m_rsumip, align 4
  %i_disk_size290 = getelementptr inbounds %struct.xfs_inode, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %i_disk_size290 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_disk_size290, align 8
  %call301 = call fastcc i32 @xfs_growfs_rt_alloc(ptr noundef %mp, i32 noundef %conv288, i32 noundef %conv249, ptr noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.end304, label %if.end278.cleanup754_crit_edge

if.end278.cleanup754_crit_edge:                   ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end304:                                        ; preds = %if.end278
  %add293 = add i64 %51, %conv258
  %shr298 = lshr i64 %add293, %sh_prom263
  %conv299 = trunc i64 %shr298 to i32
  %52 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %m_rsumip, align 4
  %call306 = call fastcc i32 @xfs_growfs_rt_alloc(ptr noundef %mp, i32 noundef %conv299, i32 noundef %conv265, ptr noundef %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.end309, label %if.end304.cleanup754_crit_edge

if.end304.cleanup754_crit_edge:                   ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.end309:                                        ; preds = %if.end304
  %m_rsum_cache = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 18
  %54 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %m_rsum_cache, align 16
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 13
  %56 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sb_rbmblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv249)
  %cmp310.not = icmp eq i32 %57, %conv249
  br i1 %cmp310.not, label %if.end309.if.end313_crit_edge, label %if.then312

if.end309.if.end313_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

if.then312:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @xfs_alloc_rsum_cache(ptr noundef %mp, i32 noundef %conv249)
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %if.end309.if.end313_crit_edge
  %call314 = call ptr @kmem_alloc(i32 noundef 3712, i32 noundef 0) #9
  %58 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sb_rbmblocks, align 4
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %60 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %sb_rextents, align 8
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %62 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %m_blkbit_log, align 4
  %conv316 = zext i8 %63 to i32
  %notmask = shl nsw i32 -1, %conv316
  %sub318 = xor i32 %notmask, -1
  %conv319 = sext i32 %sub318 to i64
  %and320 = and i64 %61, %conv319
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and320)
  %cmp321 = icmp ne i64 %and320, 0
  %conv322.neg = sext i1 %cmp321 to i32
  %sub323 = add i32 %59, %conv322.neg
  %conv324 = zext i32 %sub323 to i64
  %conv325 = and i64 %x.addr.0.i, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv325, i64 %conv324)
  %cmp3261160 = icmp ugt i64 %conv325, %conv324
  br i1 %cmp3261160, label %for.body.lr.ph, label %if.end313.if.end741_crit_edge

if.end313.if.end741_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end741

for.body.lr.ph:                                   ; preds = %if.end313
  %sb_rextsize330 = getelementptr inbounds %struct.xfs_sb, ptr %call314, i32 0, i32 10
  %sb_rbmblocks333 = getelementptr inbounds %struct.xfs_sb, ptr %call314, i32 0, i32 13
  %sb_blocksize336 = getelementptr inbounds %struct.xfs_sb, ptr %call314, i32 0, i32 1
  %sb_rblocks349 = getelementptr inbounds %struct.xfs_sb, ptr %call314, i32 0, i32 3
  %sb_rextents351 = getelementptr inbounds %struct.xfs_sb, ptr %call314, i32 0, i32 4
  %sb_rextslog = getelementptr inbounds %struct.xfs_sb, ptr %call314, i32 0, i32 25
  %m_rsumlevels = getelementptr inbounds %struct.xfs_mount, ptr %call314, i32 0, i32 57
  %m_rsumsize = getelementptr inbounds %struct.xfs_mount, ptr %call314, i32 0, i32 58
  %tr_growrtfree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 21
  %m_rsumlevels657 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 57
  %sb_rextsize668 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 10
  %sb_rextslog707 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 25
  %m_rsumsize732 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 58
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %bmbno.01161 = phi i64 [ %conv324, %for.body.lr.ph ], [ %add331, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %64 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !42
  %65 = call ptr @memcpy(ptr %call314, ptr %mp, i32 3712)
  %66 = ptrtoint ptr %extsize14 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %extsize14, align 8
  %68 = ptrtoint ptr %sb_rextsize330 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %sb_rextsize330, align 8
  %add331 = add nuw nsw i64 %bmbno.01161, 1
  %conv332 = trunc i64 %add331 to i32
  %69 = ptrtoint ptr %sb_rbmblocks333 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv332, ptr %sb_rbmblocks333, align 4
  %mul335 = shl i64 %add331, 3
  %70 = ptrtoint ptr %sb_blocksize336 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sb_blocksize336, align 4
  %conv337 = zext i32 %71 to i64
  %conv340 = zext i32 %67 to i64
  %mul338 = mul i64 %mul335, %conv340
  %mul341 = mul i64 %mul338, %conv337
  %72 = call i64 @llvm.umin.i64(i64 %9, i64 %mul341)
  %73 = ptrtoint ptr %sb_rblocks349 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %sb_rblocks349, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %72)
  %cmp561 = icmp ult i64 %72, 4294967296
  br i1 %cmp561, label %if.then569, label %if.else578, !prof !43

if.then569:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv571 = trunc i64 %72 to i32
  %div575 = udiv i32 %conv571, %67
  %conv576 = zext i32 %div575 to i64
  br label %if.end583

if.else578:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %74 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %67, i64 %72) #12, !srcloc !44
  %asmresult1.i1130 = extractvalue { i64, i64 } %74, 1
  br label %if.end583

if.end583:                                        ; preds = %if.else578, %if.then569
  %div552.sink = phi i64 [ %asmresult1.i1130, %if.else578 ], [ %conv576, %if.then569 ]
  %75 = ptrtoint ptr %sb_rextents351 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %div552.sink, ptr %sb_rextents351, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %div552.sink)
  %cmp586.not = icmp eq i64 %div552.sink, 0
  br i1 %cmp586.not, label %cond.false595, label %if.end583.cond.end596_crit_edge, !prof !46

if.end583.cond.end596_crit_edge:                  ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end596

cond.false595:                                    ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1038) #9
  br label %cond.end596

cond.end596:                                      ; preds = %cond.false595, %if.end583.cond.end596_crit_edge
  %76 = ptrtoint ptr %sb_rextents351 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %sb_rextents351, align 8
  %conv598 = trunc i64 %77 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv598)
  %tobool.not.i.i1133 = icmp eq i32 %conv598, 0
  %78 = call i32 @llvm.ctlz.i32(i32 %conv598, i1 true) #9, !range !45
  %sub.i.op.i1134 = xor i32 %78, 31
  %sub.i1135 = select i1 %tobool.not.i.i1133, i32 -1, i32 %sub.i.op.i1134
  %conv600 = trunc i32 %sub.i1135 to i8
  %79 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv600, ptr %sb_rextslog, align 1
  %conv602 = and i32 %sub.i1135, 255
  %add603 = add nuw nsw i32 %conv602, 1
  %80 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add603, ptr %m_rsumlevels, align 4
  %81 = ptrtoint ptr %sb_rbmblocks333 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sb_rbmblocks333, align 4
  %mul604 = shl i32 %82, 2
  %mul606 = mul i32 %mul604, %add603
  %conv607 = zext i32 %mul606 to i64
  %83 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %m_blockmask, align 8
  %conv609 = zext i32 %84 to i64
  %add610 = add nuw nsw i64 %conv607, %conv609
  %85 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sb_blocklog, align 8
  %sh_prom614 = zext i8 %86 to i64
  %87 = shl nsw i64 -1, %sh_prom614
  %shl622 = and i64 %add610, %87
  %conv623 = trunc i64 %shl622 to i32
  %88 = ptrtoint ptr %m_rsumsize to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv623, ptr %m_rsumsize, align 8
  %call624 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_growrtfree, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call624)
  %tobool625.not = icmp eq i32 %call624, 0
  br i1 %tobool625.not, label %if.end627, label %cond.end596.for.end_crit_edge

cond.end596.for.end_crit_edge:                    ; preds = %cond.end596
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end627:                                        ; preds = %cond.end596
  %89 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %m_rbmip, align 8
  call void @xfs_ilock(ptr noundef %90, i32 noundef 100663300) #9
  %91 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tp, align 4
  %93 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %m_rbmip, align 8
  call void @xfs_trans_ijoin(ptr noundef %92, ptr noundef %94, i32 noundef 4) #9
  %95 = ptrtoint ptr %sb_rbmblocks333 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sb_rbmblocks333, align 4
  %97 = ptrtoint ptr %sb_blocksize336 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sb_blocksize336, align 4
  %mul632 = mul i32 %98, %96
  %conv633 = zext i32 %mul632 to i64
  %99 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %m_rbmip, align 8
  %i_disk_size635 = getelementptr inbounds %struct.xfs_inode, ptr %100, i32 0, i32 18
  %101 = ptrtoint ptr %i_disk_size635 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv633, ptr %i_disk_size635, align 8
  %102 = load ptr, ptr %m_rbmip, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %102, i32 0, i32 27
  %i_disk_size639 = getelementptr inbounds %struct.xfs_inode, ptr %102, i32 0, i32 18
  %103 = ptrtoint ptr %i_disk_size639 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %i_disk_size639, align 8
  call fastcc void @i_size_write(ptr noundef %i_vnode.i, i64 noundef %104)
  %105 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tp, align 4
  %107 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %m_rbmip, align 8
  call void @xfs_trans_log_inode(ptr noundef %106, ptr noundef %108, i32 noundef 1) #9
  %109 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %m_rsumip, align 4
  call void @xfs_ilock(ptr noundef %110, i32 noundef 117440516) #9
  %111 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tp, align 4
  %113 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %m_rsumip, align 4
  call void @xfs_trans_ijoin(ptr noundef %112, ptr noundef %114, i32 noundef 4) #9
  %115 = ptrtoint ptr %m_rsumsize to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %m_rsumsize, align 8
  %conv644 = zext i32 %116 to i64
  %117 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %m_rsumip, align 4
  %i_disk_size646 = getelementptr inbounds %struct.xfs_inode, ptr %118, i32 0, i32 18
  %119 = ptrtoint ptr %i_disk_size646 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv644, ptr %i_disk_size646, align 8
  %120 = load ptr, ptr %m_rsumip, align 4
  %i_vnode.i1136 = getelementptr inbounds %struct.xfs_inode, ptr %120, i32 0, i32 27
  %i_disk_size650 = getelementptr inbounds %struct.xfs_inode, ptr %120, i32 0, i32 18
  %121 = ptrtoint ptr %i_disk_size650 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %i_disk_size650, align 8
  call fastcc void @i_size_write(ptr noundef %i_vnode.i1136, i64 noundef %122)
  %123 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tp, align 4
  %125 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %m_rsumip, align 4
  call void @xfs_trans_log_inode(ptr noundef %124, ptr noundef %126, i32 noundef 1) #9
  %127 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sb_rbmblocks, align 4
  %129 = ptrtoint ptr %sb_rbmblocks333 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sb_rbmblocks333, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp654.not = icmp eq i32 %128, %130
  br i1 %cmp654.not, label %lor.lhs.false656, label %if.end627.if.then661_crit_edge

if.end627.if.then661_crit_edge:                   ; preds = %if.end627
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then661

lor.lhs.false656:                                 ; preds = %if.end627
  %131 = ptrtoint ptr %m_rsumlevels657 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %m_rsumlevels657, align 4
  %133 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %m_rsumlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp659.not = icmp eq i32 %132, %134
  br i1 %cmp659.not, label %lor.lhs.false656.if.end666_crit_edge, label %lor.lhs.false656.if.then661_crit_edge

lor.lhs.false656.if.then661_crit_edge:            ; preds = %lor.lhs.false656
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then661

lor.lhs.false656.if.end666_crit_edge:             ; preds = %lor.lhs.false656
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end666

if.then661:                                       ; preds = %lor.lhs.false656.if.then661_crit_edge, %if.end627.if.then661_crit_edge
  %135 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tp, align 4
  %call662 = call fastcc i32 @xfs_rtcopy_summary(ptr noundef %mp, ptr noundef %call314, ptr noundef %136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call662)
  %tobool663.not = icmp eq i32 %call662, 0
  br i1 %tobool663.not, label %if.then661.if.end666_crit_edge, label %if.then661.error_cancel_crit_edge

if.then661.error_cancel_crit_edge:                ; preds = %if.then661
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_cancel

if.then661.if.end666_crit_edge:                   ; preds = %if.then661
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end666

if.end666:                                        ; preds = %if.then661.if.end666_crit_edge, %lor.lhs.false656.if.end666_crit_edge
  %137 = ptrtoint ptr %sb_rextsize330 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sb_rextsize330, align 8
  %139 = ptrtoint ptr %sb_rextsize668 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sb_rextsize668, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %cmp669.not = icmp eq i32 %138, %140
  br i1 %cmp669.not, label %if.end666.if.end676_crit_edge, label %if.then671

if.end666.if.end676_crit_edge:                    ; preds = %if.end666
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end676

if.then671:                                       ; preds = %if.end666
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tp, align 4
  %sub674 = sub i32 %138, %140
  %conv675 = zext i32 %sub674 to i64
  call void @xfs_trans_mod_sb(ptr noundef %142, i32 noundef 512, i64 noundef %conv675) #9
  br label %if.end676

if.end676:                                        ; preds = %if.then671, %if.end666.if.end676_crit_edge
  %143 = ptrtoint ptr %sb_rbmblocks333 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sb_rbmblocks333, align 4
  %145 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %sb_rbmblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp679.not = icmp eq i32 %144, %146
  br i1 %cmp679.not, label %if.end676.if.end686_crit_edge, label %if.then681

if.end676.if.end686_crit_edge:                    ; preds = %if.end676
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end686

if.then681:                                       ; preds = %if.end676
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tp, align 4
  %sub684 = sub i32 %144, %146
  %conv685 = zext i32 %sub684 to i64
  call void @xfs_trans_mod_sb(ptr noundef %148, i32 noundef 1024, i64 noundef %conv685) #9
  br label %if.end686

if.end686:                                        ; preds = %if.then681, %if.end676.if.end686_crit_edge
  %149 = ptrtoint ptr %sb_rblocks349 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %sb_rblocks349, align 8
  %151 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %sb_rblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %150, i64 %152)
  %cmp689.not = icmp eq i64 %150, %152
  br i1 %cmp689.not, label %if.end686.if.end695_crit_edge, label %if.then691

if.end686.if.end695_crit_edge:                    ; preds = %if.end686
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end695

if.then691:                                       ; preds = %if.end686
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tp, align 4
  %sub694 = sub i64 %150, %152
  call void @xfs_trans_mod_sb(ptr noundef %154, i32 noundef 2048, i64 noundef %sub694) #9
  br label %if.end695

if.end695:                                        ; preds = %if.then691, %if.end686.if.end695_crit_edge
  %155 = ptrtoint ptr %sb_rextents351 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %sb_rextents351, align 8
  %157 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %sb_rextents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %156, i64 %158)
  %cmp698.not = icmp eq i64 %156, %158
  br i1 %cmp698.not, label %if.end695.if.end704_crit_edge, label %if.then700

if.end695.if.end704_crit_edge:                    ; preds = %if.end695
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end704

if.then700:                                       ; preds = %if.end695
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tp, align 4
  %sub703 = sub i64 %156, %158
  call void @xfs_trans_mod_sb(ptr noundef %160, i32 noundef 4096, i64 noundef %sub703) #9
  br label %if.end704

if.end704:                                        ; preds = %if.then700, %if.end695.if.end704_crit_edge
  %161 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sb_rextslog, align 1
  %163 = ptrtoint ptr %sb_rextslog707 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %sb_rextslog707, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %164)
  %cmp709.not = icmp eq i8 %162, %164
  br i1 %cmp709.not, label %if.end704.if.end718_crit_edge, label %if.then711

if.end704.if.end718_crit_edge:                    ; preds = %if.end704
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end718

if.then711:                                       ; preds = %if.end704
  call void @__sanitizer_cov_trace_pc() #11
  %conv708 = zext i8 %164 to i32
  %conv706 = zext i8 %162 to i32
  %165 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tp, align 4
  %sub716 = sub nsw i32 %conv706, %conv708
  %conv717 = sext i32 %sub716 to i64
  call void @xfs_trans_mod_sb(ptr noundef %166, i32 noundef 8192, i64 noundef %conv717) #9
  br label %if.end718

if.end718:                                        ; preds = %if.then711, %if.end704.if.end718_crit_edge
  %167 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %bp, align 4
  %168 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %tp, align 4
  %170 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %sb_rextents, align 8
  %172 = ptrtoint ptr %sb_rextents351 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %sb_rextents351, align 8
  %sub722 = sub i64 %173, %171
  %conv723 = trunc i64 %sub722 to i32
  %call724 = call i32 @xfs_rtfree_range(ptr noundef %call314, ptr noundef %169, i64 noundef %171, i32 noundef %conv723, ptr noundef nonnull %bp, ptr noundef nonnull %sumbno) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call724)
  %tobool725.not = icmp eq i32 %call724, 0
  br i1 %tobool725.not, label %if.end727, label %if.end718.error_cancel_crit_edge

if.end718.error_cancel_crit_edge:                 ; preds = %if.end718
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_cancel

error_cancel:                                     ; preds = %if.end718.error_cancel_crit_edge, %if.then661.error_cancel_crit_edge
  %error.1 = phi i32 [ %call662, %if.then661.error_cancel_crit_edge ], [ %call724, %if.end718.error_cancel_crit_edge ]
  %174 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %175) #9
  br label %for.end

if.end727:                                        ; preds = %if.end718
  %176 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %tp, align 4
  %178 = ptrtoint ptr %sb_rextents351 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %sb_rextents351, align 8
  %180 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %sb_rextents, align 8
  %sub730 = sub i64 %179, %181
  call void @xfs_trans_mod_sb(ptr noundef %177, i32 noundef 16, i64 noundef %sub730) #9
  %182 = ptrtoint ptr %m_rsumlevels657 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %add603, ptr %m_rsumlevels657, align 4
  %183 = ptrtoint ptr %m_rsumsize732 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv623, ptr %m_rsumsize732, align 8
  %184 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %tp, align 4
  %call733 = call i32 @xfs_trans_commit(ptr noundef %185) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call733)
  %tobool734.not = icmp eq i32 %call733, 0
  br i1 %tobool734.not, label %cleanup, label %if.end727.for.end_crit_edge

if.end727.for.end_crit_edge:                      ; preds = %if.end727
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %if.end727
  %186 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %m_features.i, align 8
  %or737 = or i64 %187, 4194304
  store i64 %or737, ptr %m_features.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  %cmp326 = icmp ult i64 %add331, %conv325
  br i1 %cmp326, label %cleanup.for.body_crit_edge, label %cleanup.if.end741_crit_edge

cleanup.if.end741_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end741

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end727.for.end_crit_edge, %error_cancel, %cond.end596.for.end_crit_edge
  %error.2.ph = phi i32 [ %error.1, %error_cancel ], [ %call624, %cond.end596.for.end_crit_edge ], [ %call733, %if.end727.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  br label %out_free

if.end741:                                        ; preds = %cleanup.if.end741_crit_edge, %if.end313.if.end741_crit_edge
  %call742 = call i32 @xfs_update_secondary_sbs(ptr noundef %mp) #9
  br label %out_free

out_free:                                         ; preds = %if.end741, %for.end
  %error.4 = phi i32 [ %error.2.ph, %for.end ], [ %call742, %if.end741 ]
  call void @kvfree(ptr noundef %call314) #9
  %188 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %m_rsum_cache, align 16
  %cmp744.not = icmp eq ptr %55, %189
  br i1 %cmp744.not, label %out_free.cleanup754_crit_edge, label %if.then746

out_free.cleanup754_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup754

if.then746:                                       ; preds = %out_free
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.4)
  %tobool747.not = icmp eq i32 %error.4, 0
  br i1 %tobool747.not, label %if.else751, label %if.then748

if.then748:                                       ; preds = %if.then746
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree(ptr noundef %189) #9
  %190 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %55, ptr %m_rsum_cache, align 16
  br label %cleanup754

if.else751:                                       ; preds = %if.then746
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree(ptr noundef %55) #9
  br label %cleanup754

cleanup754:                                       ; preds = %if.else751, %if.then748, %out_free.cleanup754_crit_edge, %if.end304.cleanup754_crit_edge, %if.end278.cleanup754_crit_edge, %howmany_64.exit.cleanup754_crit_edge, %if.end42.cleanup754_crit_edge, %if.end37.cleanup754_crit_edge, %if.end30.cleanup754_crit_edge, %if.end13.cleanup754_crit_edge, %land.lhs.true.cleanup754_crit_edge, %if.end6.cleanup754_crit_edge, %lor.lhs.false.cleanup754_crit_edge, %if.end2.cleanup754_crit_edge, %if.end.cleanup754_crit_edge, %entry.cleanup754_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup754_crit_edge ], [ -22, %if.end.cleanup754_crit_edge ], [ -22, %lor.lhs.false.cleanup754_crit_edge ], [ -22, %if.end2.cleanup754_crit_edge ], [ -22, %if.end6.cleanup754_crit_edge ], [ -22, %land.lhs.true.cleanup754_crit_edge ], [ -22, %if.end13.cleanup754_crit_edge ], [ -95, %if.end30.cleanup754_crit_edge ], [ %call39, %if.end37.cleanup754_crit_edge ], [ %call50, %if.end42.cleanup754_crit_edge ], [ -22, %howmany_64.exit.cleanup754_crit_edge ], [ %call301, %if.end278.cleanup754_crit_edge ], [ %call306, %if.end304.cleanup754_crit_edge ], [ %error.4, %if.then748 ], [ 0, %if.else751 ], [ %error.4, %out_free.cleanup754_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sumbno) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sb_validate_fsb_count(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_read_uncached(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_growfs_rt_alloc(ptr noundef %mp, i32 noundef %oblocks, i32 noundef %nblocks, ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %nmap = alloca i32, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #9
  %1 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #9
  %2 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nmap, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !42
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 10
  %4 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rsumip, align 4
  %cmp = icmp eq ptr %5, %ip
  %. = select i1 %cmp, i32 20, i32 19
  call void @__sanitizer_cov_trace_cmp4(i32 %oblocks, i32 %nblocks)
  %cmp1124 = icmp ult i32 %oblocks, %nblocks
  br i1 %cmp1124, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 43
  %tr_growrtalloc = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 19
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 1
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  %tr_growrtzero = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 20
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %m_bsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 26
  %6 = getelementptr inbounds i8, ptr %map.i, i32 8
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %oblocks.addr.0125 = phi i32 [ %oblocks, %while.body.lr.ph ], [ %add25.lcssa.off0, %for.end.while.body_crit_edge ]
  %sub = sub i32 %nblocks, %oblocks.addr.0125
  %7 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_bm_maxlevels, align 8
  %sub2 = add i32 %sub, -1
  %add = add i32 %sub2, %8
  %call = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_growrtalloc, i32 noundef %add, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %while.body
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #9
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %10, ptr noundef %ip, i32 noundef 4) #9
  %call5 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_trans_cancel_crit_edge

if.end4.out_trans_cancel_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end8:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nmap, align 4
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %conv = zext i32 %oblocks.addr.0125 to i64
  %conv10 = zext i32 %sub to i64
  %call11 = call i32 @xfs_bmapi_write(ptr noundef %13, ptr noundef %ip, i64 noundef %conv, i64 noundef %conv10, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %map, ptr noundef nonnull %nmap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end8.out_trans_cancel_crit_edge

if.end8.out_trans_cancel_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

land.lhs.true:                                    ; preds = %if.end8
  %14 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp13 = icmp slt i32 %15, 1
  br i1 %cmp13, label %land.lhs.true.out_trans_cancel_crit_edge, label %if.end19

land.lhs.true.out_trans_cancel_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end19:                                         ; preds = %land.lhs.true
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  %call20 = call i32 @xfs_trans_commit(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %map, align 8
  %20 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %br_blockcount, align 8
  %add25120 = add i64 %21, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add25120)
  %cmp26121 = icmp ult i64 %19, %add25120
  %extract.t = trunc i64 %add25120 to i32
  br i1 %cmp26121, label %for.body.preheader, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end23
  %22 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %br_startblock, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %fsbno.0123 = phi i64 [ %inc60, %for.inc.for.body_crit_edge ], [ %23, %for.body.preheader ]
  %bno.0122 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ %19, %for.body.preheader ]
  %call29 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_growrtzero, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %for.body
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #9
  %24 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %25, ptr noundef %ip, i32 noundef 4) #9
  %26 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sb_agblklog, align 4
  %conv33 = zext i8 %27 to i32
  %sh_prom = zext i8 %27 to i64
  %shr = lshr i64 %fsbno.0123, %sh_prom
  %conv35 = and i64 %shr, 4294967295
  %28 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_agblocks, align 4
  %conv37 = zext i32 %29 to i64
  %mul = mul nuw i64 %conv35, %conv37
  %notmask.i = shl nsw i32 -1, %conv33
  %sub.i = xor i32 %notmask.i, -1
  %30 = trunc i64 %fsbno.0123 to i32
  %conv43 = and i32 %sub.i, %30
  %conv44 = zext i32 %conv43 to i64
  %add45 = add nuw i64 %mul, %conv44
  %31 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom47 = zext i8 %32 to i64
  %shl = shl i64 %add45, %sh_prom47
  %33 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tp, align 4
  %35 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_ddev_targp, align 8
  %37 = ptrtoint ptr %m_bsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_bsize, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %6, align 8
  %40 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %shl, ptr %map.i, align 8
  store i32 %38, ptr %6, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %34, ptr noundef %36, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end51, label %if.end32.out_trans_cancel_crit_edge

if.end32.out_trans_cancel_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end51:                                         ; preds = %if.end32
  %41 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tp, align 4
  %43 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bp, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %42, ptr noundef %44, i32 noundef %.) #9
  %45 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 35
  %47 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @xfs_rtbuf_ops, ptr %b_ops, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 16
  %48 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_addr, align 4
  %50 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sb_blocksize, align 4
  %52 = call ptr @memset(ptr %49, i32 0, i32 %51)
  %53 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tp, align 4
  %55 = load ptr, ptr %bp, align 4
  %56 = load i32, ptr %sb_blocksize, align 4
  %sub55 = add i32 %56, -1
  call void @xfs_trans_log_buf(ptr noundef %54, ptr noundef %55, i32 noundef 0, i32 noundef %sub55) #9
  %57 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tp, align 4
  %call56 = call i32 @xfs_trans_commit(ptr noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.inc, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end51
  %inc = add nuw i64 %bno.0122, 1
  %inc60 = add i64 %fsbno.0123, 1
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %map, align 8
  %61 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %br_blockcount, align 8
  %add25 = add i64 %62, %60
  %cmp26 = icmp ult i64 %inc, %add25
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %extract.t129 = trunc i64 %add25 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end23.for.end_crit_edge
  %add25.lcssa.off0 = phi i32 [ %extract.t, %if.end23.for.end_crit_edge ], [ %extract.t129, %for.end.loopexit ]
  %cmp1 = icmp ult i32 %add25.lcssa.off0, %nblocks
  br i1 %cmp1, label %for.end.while.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out_trans_cancel:                                 ; preds = %if.end32.out_trans_cancel_crit_edge, %land.lhs.true.out_trans_cancel_crit_edge, %if.end8.out_trans_cancel_crit_edge, %if.end4.out_trans_cancel_crit_edge
  %error.1 = phi i32 [ %call.i, %if.end32.out_trans_cancel_crit_edge ], [ -28, %land.lhs.true.out_trans_cancel_crit_edge ], [ %call11, %if.end8.out_trans_cancel_crit_edge ], [ %call5, %if.end4.out_trans_cancel_crit_edge ]
  %63 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %64) #9
  br label %cleanup

cleanup:                                          ; preds = %out_trans_cancel, %for.end.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_trans_cancel ], [ 0, %entry.cleanup_crit_edge ], [ %call56, %if.end51.cleanup_crit_edge ], [ %call29, %for.body.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_alloc_rsum_cache(ptr noundef %mp, i32 noundef %rbmblocks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %rbmblocks, i32 noundef 3520, i32 noundef -1) #13
  %m_rsum_cache = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 18
  %0 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i.i, ptr %m_rsum_cache, align 16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.10) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !48
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %18 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %37 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !43

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  %48 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtcopy_summary(ptr noundef %omp, ptr noundef %nmp, ptr noundef %tp) unnamed_addr #3 align 64 {
entry:
  %bp = alloca ptr, align 4
  %sum = alloca i32, align 4
  %sumbno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum) #9
  %0 = ptrtoint ptr %sum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sum, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sumbno) #9
  %1 = ptrtoint ptr %sumbno to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sumbno, align 8, !annotation !42
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp, align 4
  %m_rsumlevels = getelementptr inbounds %struct.xfs_mount, ptr %omp, i32 0, i32 57
  %3 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_rsumlevels, align 4
  %log.051 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %log.051)
  %cmp52 = icmp sgt i32 %log.051, -1
  br i1 %cmp52, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %omp, i32 0, i32 13
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc
  %log.0 = add i32 %log.053, -1
  %cmp = icmp sgt i32 %log.0, -1
  br i1 %cmp, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.cleanup_crit_edge

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %log.053 = phi i32 [ %log.051, %for.body.lr.ph ], [ %log.0, %for.cond.loopexit.for.body_crit_edge ]
  %5 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_rbmblocks, align 4
  %sub1 = add i32 %6, -1
  %conv = zext i32 %sub1 to i64
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body
  %bbno.050 = phi i64 [ %conv, %for.body ], [ %dec, %for.inc.for.body5_crit_edge ]
  %call.i = call i32 @xfs_rtmodify_summary_int(ptr noundef %omp, ptr noundef %tp, i32 noundef %log.053, i64 noundef %bbno.050, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull %sumbno, ptr noundef nonnull %sum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %for.body5.cleanup_crit_edge

for.body5.cleanup_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body5
  %7 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %sub10 = sub i32 0, %8
  %call11 = call i32 @xfs_rtmodify_summary(ptr noundef %omp, ptr noundef %tp, i32 noundef %log.053, i64 noundef %bbno.050, i32 noundef %sub10, ptr noundef nonnull %bp, ptr noundef nonnull %sumbno) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sum, align 4
  %call15 = call i32 @xfs_rtmodify_summary(ptr noundef %nmp, ptr noundef %tp, i32 noundef %log.053, i64 noundef %bbno.050, i32 noundef %10, ptr noundef nonnull %bp, ptr noundef nonnull %sumbno) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp sgt i32 %12, 0
  br i1 %cmp19, label %if.end18.for.inc_crit_edge, label %cond.false, !prof !43

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cond.false:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 132) #9
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %if.end18.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %dec = add nsw i64 %bbno.050, -1
  %cmp3 = icmp sgt i64 %bbno.050, 0
  br i1 %cmp3, label %for.inc.for.body5_crit_edge, label %for.cond.loopexit

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.body5.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ %call.i, %for.body5.cleanup_crit_edge ], [ 0, %for.cond.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sumbno) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_sb(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtfree_range(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_update_secondary_sbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtallocate_extent(ptr noundef %tp, i64 noundef %bno, i32 noundef %minlen, i32 noundef %maxlen, ptr nocapture noundef %len, i32 noundef %wasdel, i32 noundef %prod, ptr nocapture noundef writeonly %rtblock) local_unnamed_addr #0 align 64 {
entry:
  %r = alloca i64, align 8
  %sb = alloca i64, align 8
  %sumbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #9
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %r, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb) #9
  %3 = ptrtoint ptr %sb to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sb, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sumbp) #9
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rbmip, align 8
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %5, i32 noundef 4) #9
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !43

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1188) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %6 = add i32 %minlen, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %maxlen)
  %7 = icmp ult i32 %6, %maxlen
  br i1 %7, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !43

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1189) #9
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prod)
  %cmp12 = icmp ugt i32 %prod, 1
  br i1 %cmp12, label %if.then, label %cond.end11.if.end23_crit_edge

cond.end11.if.end23_crit_edge:                    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then:                                          ; preds = %cond.end11
  %rem = urem i32 %maxlen, %prod
  %sub = sub i32 %maxlen, %rem
  %rem15 = urem i32 %minlen, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem15)
  %tobool16.not = icmp eq i32 %rem15, 0
  %sub18 = sub i32 %prod, %rem15
  %add = select i1 %tobool16.not, i32 0, i32 %sub18
  %minlen.addr.0 = add i32 %add, %minlen
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %minlen.addr.0)
  %cmp20 = icmp ult i32 %sub, %minlen.addr.0
  br i1 %cmp20, label %if.then.cleanup60.sink.split_crit_edge, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then.cleanup60.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60.sink.split

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %cond.end11.if.end23_crit_edge
  %maxlen.addr.1 = phi i32 [ %maxlen, %cond.end11.if.end23_crit_edge ], [ %sub, %if.then.if.end23_crit_edge ]
  %minlen.addr.1 = phi i32 [ %minlen, %cond.end11.if.end23_crit_edge ], [ %minlen.addr.0, %if.then.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bno)
  %cmp24 = icmp eq i64 %bno, 0
  br label %retry

retry:                                            ; preds = %if.else54.retry_crit_edge, %if.end23
  %prod.addr.0 = phi i32 [ %prod, %if.end23 ], [ 1, %if.else54.retry_crit_edge ]
  %8 = ptrtoint ptr %sumbp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sumbp, align 4
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call fastcc i32 @xfs_rtallocate_extent_size(ptr noundef %1, ptr noundef %tp, i32 noundef %minlen.addr.1, i32 noundef %maxlen.addr.1, ptr noundef %len, ptr noundef nonnull %sumbp, ptr noundef nonnull %sb, i32 noundef %prod.addr.0, ptr noundef nonnull %r)
  br label %if.end28

if.else:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = call fastcc i32 @xfs_rtallocate_extent_near(ptr noundef %1, ptr noundef %tp, i64 noundef %bno, i32 noundef %minlen.addr.1, i32 noundef %maxlen.addr.1, ptr noundef %len, ptr noundef nonnull %sumbp, ptr noundef nonnull %sb, i32 noundef %prod.addr.0, ptr noundef nonnull %r)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  %error.0 = phi i32 [ %call26, %if.then25 ], [ %call27, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool29.not = icmp eq i32 %error.0, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup60_crit_edge

if.end28.cleanup60_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

if.end31:                                         ; preds = %if.end28
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %r, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp32.not = icmp eq i64 %10, -1
  br i1 %cmp32.not, label %if.else54, label %if.then33

if.then33:                                        ; preds = %if.end31
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %minlen.addr.1)
  %cmp34.not = icmp uge i32 %12, %minlen.addr.1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %maxlen.addr.1)
  %cmp36 = icmp ule i32 %12, %maxlen.addr.1
  %spec.select100 = and i1 %cmp34.not, %cmp36
  br i1 %spec.select100, label %if.then33.cond.end46_crit_edge, label %cond.false45, !prof !43

if.then33.cond.end46_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end46

cond.false45:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1226) #9
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %if.then33.cond.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wasdel)
  %tobool47.not = icmp eq i32 %wasdel, 0
  %sub51 = sub i32 0, %12
  %conv52 = sext i32 %sub51 to i64
  %. = select i1 %tobool47.not, i32 16, i32 32
  call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef %., i64 noundef %conv52) #9
  br label %cleanup60.sink.split

if.else54:                                        ; preds = %if.end31
  %cmp55 = icmp ugt i32 %prod.addr.0, 1
  br i1 %cmp55, label %if.else54.retry_crit_edge, label %if.else54.cleanup60.sink.split_crit_edge

if.else54.cleanup60.sink.split_crit_edge:         ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60.sink.split

if.else54.retry_crit_edge:                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

cleanup60.sink.split:                             ; preds = %if.else54.cleanup60.sink.split_crit_edge, %cond.end46, %if.then.cleanup60.sink.split_crit_edge
  %.sink110 = phi i64 [ -1, %if.then.cleanup60.sink.split_crit_edge ], [ %10, %cond.end46 ], [ %10, %if.else54.cleanup60.sink.split_crit_edge ]
  %13 = ptrtoint ptr %rtblock to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %.sink110, ptr %rtblock, align 8
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup60.sink.split, %if.end28.cleanup60_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup60.sink.split ], [ %error.0, %if.end28.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sumbp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtallocate_extent_size(ptr noundef %mp, ptr noundef %tp, i32 noundef %minlen, i32 noundef %maxlen, ptr nocapture noundef writeonly %len, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr nocapture noundef writeonly %rtblock) unnamed_addr #3 align 64 {
entry:
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %sum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #9
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %n, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #9
  %1 = ptrtoint ptr %r to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %r, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum) #9
  %2 = ptrtoint ptr %sum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sum, align 4, !annotation !42
  %rem = urem i32 %minlen, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.rhs, label %entry.cond.false_crit_edge, !prof !43

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %rem1 = urem i32 %maxlen, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %land.rhs.cond.end_crit_edge, label %land.rhs.cond.false_crit_edge, !prof !43

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 641) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp4.not = icmp eq i32 %maxlen, 0
  br i1 %cmp4.not, label %cond.false12, label %cond.end.cond.end13_crit_edge, !prof !46

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 642) #9
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %3 = tail call i32 @llvm.ctlz.i32(i32 %maxlen, i1 true) #9, !range !45
  %sub.i.op.i = xor i32 %3, 31
  %sub.i = select i1 %cmp4.not, i32 -1, i32 %sub.i.op.i
  %m_rsumlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 57
  %4 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_rsumlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp14224 = icmp ult i32 %sub.i, %5
  br i1 %cmp14224, label %for.cond15.preheader.lr.ph, label %cond.end13.for.end45_crit_edge

cond.end13.for.end45_crit_edge:                   ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

for.cond15.preheader.lr.ph:                       ; preds = %cond.end13
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 13
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc43.for.cond15.preheader_crit_edge, %for.cond15.preheader.lr.ph
  %l.0225 = phi i32 [ %sub.i.op.i, %for.cond15.preheader.lr.ph ], [ %inc44, %for.inc43.for.cond15.preheader_crit_edge ]
  %6 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_rbmblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16222.not = icmp eq i32 %7, 0
  br i1 %cmp16222.not, label %for.cond15.preheader.for.inc43_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.inc43_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc43

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.0223 = phi i32 [ %inc, %for.inc.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %conv = sext i32 %i.0223 to i64
  %call.i = call i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %l.0225, i64 noundef %conv, i32 noundef 0, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef nonnull %sum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end, label %for.body17.cleanup_crit_edge

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body17
  %8 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool20.not, label %if.end.for.inc_crit_edge, label %if.end22

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end22:                                         ; preds = %if.end
  %call24 = call fastcc i32 @xfs_rtallocate_extent_block(ptr noundef %mp, ptr noundef %tp, i64 noundef %conv, i32 noundef %maxlen, i32 noundef %maxlen, ptr noundef %len, ptr noundef nonnull %n, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr noundef nonnull %r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %r, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %11)
  %cmp28.not = icmp eq i64 %11, -1
  br i1 %cmp28.not, label %if.end31, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end27
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %n, align 8
  %14 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %13, %sh_prom
  %add = add nuw i32 %i.0223, 1
  %conv33 = sext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv33)
  %cmp34 = icmp ugt i64 %shr, %conv33
  br i1 %cmp34, label %if.then36, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %16 = trunc i64 %shr to i32
  %conv41 = add i32 %16, -1
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.end31.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %i.1 = phi i32 [ %conv41, %if.then36 ], [ %i.0223, %if.end31.for.inc_crit_edge ], [ %i.0223, %if.end.for.inc_crit_edge ]
  %inc = add i32 %i.1, 1
  %17 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_rbmblocks, align 4
  %cmp16 = icmp ult i32 %inc, %18
  br i1 %cmp16, label %for.inc.for.body17_crit_edge, label %for.inc.for.inc43_crit_edge

for.inc.for.inc43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc43

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.inc43:                                        ; preds = %for.inc.for.inc43_crit_edge, %for.cond15.preheader.for.inc43_crit_edge
  %inc44 = add nuw i32 %l.0225, 1
  %19 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_rsumlevels, align 4
  %cmp14 = icmp ult i32 %inc44, %20
  br i1 %cmp14, label %for.inc43.for.cond15.preheader_crit_edge, label %for.inc43.for.end45_crit_edge

for.inc43.for.end45_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

for.inc43.for.cond15.preheader_crit_edge:         ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond15.preheader

for.end45:                                        ; preds = %for.inc43.for.end45_crit_edge, %cond.end13.for.end45_crit_edge
  %dec = add i32 %maxlen, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %minlen)
  %cmp46 = icmp ult i32 %dec, %minlen
  br i1 %cmp46, label %for.end45.cleanup.sink.split_crit_edge, label %if.end49

for.end45.cleanup.sink.split_crit_edge:           ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end49:                                         ; preds = %for.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minlen)
  %cmp50.not = icmp eq i32 %minlen, 0
  br i1 %cmp50.not, label %cond.false59, label %if.end49.cond.end60_crit_edge, !prof !46

if.end49.cond.end60_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.false59:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 701) #9
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %if.end49.cond.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp61.not = icmp eq i32 %dec, 0
  br i1 %cmp61.not, label %cond.false70, label %cond.end60.cond.end71_crit_edge, !prof !46

cond.end60.cond.end71_crit_edge:                  ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end71

cond.false70:                                     ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 702) #9
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false70, %cond.end60.cond.end71_crit_edge
  %21 = call i32 @llvm.ctlz.i32(i32 %dec, i1 true) #9, !range !45
  %sub.i.op.i213 = xor i32 %21, 31
  %sub.i214 = select i1 %cmp61.not, i32 -1, i32 %sub.i.op.i213
  %22 = call i32 @llvm.ctlz.i32(i32 %minlen, i1 true) #9, !range !45
  %sub.i.op.i216 = xor i32 %22, 31
  %sub.i217 = select i1 %cmp50.not, i32 -1, i32 %sub.i.op.i216
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i214, i32 %sub.i217)
  %cmp75.not229 = icmp slt i32 %sub.i214, %sub.i217
  br i1 %cmp75.not229, label %cond.end71.cleanup.sink.split_crit_edge, label %for.cond78.preheader.lr.ph

cond.end71.cleanup.sink.split_crit_edge:          ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond78.preheader.lr.ph:                       ; preds = %cond.end71
  %sb_rbmblocks80 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 13
  %m_blkbit_log119 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  br label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.inc138.for.cond78.preheader_crit_edge, %for.cond78.preheader.lr.ph
  %l.1230 = phi i32 [ %sub.i214, %for.cond78.preheader.lr.ph ], [ %dec139, %for.inc138.for.cond78.preheader_crit_edge ]
  %23 = ptrtoint ptr %sb_rbmblocks80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_rbmblocks80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp81227.not = icmp eq i32 %24, 0
  br i1 %cmp81227.not, label %for.cond78.preheader.for.inc138_crit_edge, label %for.body83.lr.ph

for.cond78.preheader.for.inc138_crit_edge:        ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

for.body83.lr.ph:                                 ; preds = %for.cond78.preheader
  %shl = shl nuw i32 1, %l.1230
  %25 = call i32 @llvm.umax.i32(i32 %shl, i32 %minlen)
  %add99 = add nsw i32 %l.1230, 1
  %notmask = shl nsw i32 -1, %add99
  %sub101 = xor i32 %notmask, -1
  %26 = call i32 @llvm.umin.i32(i32 %dec, i32 %sub101)
  br label %for.body83

for.body83:                                       ; preds = %for.inc135.for.body83_crit_edge, %for.body83.lr.ph
  %i.2228 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc136, %for.inc135.for.body83_crit_edge ]
  %conv84 = sext i32 %i.2228 to i64
  %call.i218 = call i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %l.1230, i64 noundef %conv84, i32 noundef 0, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef nonnull %sum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool86.not = icmp eq i32 %call.i218, 0
  br i1 %tobool86.not, label %if.end88, label %for.body83.cleanup_crit_edge

for.body83.cleanup_crit_edge:                     ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %for.body83
  %27 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool89.not = icmp eq i32 %28, 0
  br i1 %tobool89.not, label %if.end88.for.inc135_crit_edge, label %if.end91

if.end88.for.inc135_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.end91:                                         ; preds = %if.end88
  %call111 = call fastcc i32 @xfs_rtallocate_extent_block(ptr noundef %mp, ptr noundef %tp, i64 noundef %conv84, i32 noundef %25, i32 noundef %26, ptr noundef %len, ptr noundef nonnull %n, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr noundef nonnull %r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end114:                                        ; preds = %if.end91
  %29 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %r, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %30)
  %cmp115.not = icmp eq i64 %30, -1
  br i1 %cmp115.not, label %if.end118, label %if.end114.cleanup.sink.split_crit_edge

if.end114.cleanup.sink.split_crit_edge:           ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end118:                                        ; preds = %if.end114
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %n, align 8
  %33 = ptrtoint ptr %m_blkbit_log119 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %m_blkbit_log119, align 4
  %sh_prom121 = zext i8 %34 to i64
  %shr122 = lshr i64 %32, %sh_prom121
  %add123 = add nuw i32 %i.2228, 1
  %conv124 = sext i32 %add123 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr122, i64 %conv124)
  %cmp125 = icmp ugt i64 %shr122, %conv124
  br i1 %cmp125, label %if.then127, label %if.end118.for.inc135_crit_edge

if.end118.for.inc135_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.then127:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %35 = trunc i64 %shr122 to i32
  %conv133 = add i32 %35, -1
  br label %for.inc135

for.inc135:                                       ; preds = %if.then127, %if.end118.for.inc135_crit_edge, %if.end88.for.inc135_crit_edge
  %i.3 = phi i32 [ %conv133, %if.then127 ], [ %i.2228, %if.end118.for.inc135_crit_edge ], [ %i.2228, %if.end88.for.inc135_crit_edge ]
  %inc136 = add i32 %i.3, 1
  %36 = ptrtoint ptr %sb_rbmblocks80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_rbmblocks80, align 4
  %cmp81 = icmp ult i32 %inc136, %37
  br i1 %cmp81, label %for.inc135.for.body83_crit_edge, label %for.inc135.for.inc138_crit_edge

for.inc135.for.inc138_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

for.inc135.for.body83_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body83

for.inc138:                                       ; preds = %for.inc135.for.inc138_crit_edge, %for.cond78.preheader.for.inc138_crit_edge
  %dec139 = add nsw i32 %l.1230, -1
  %cmp75.not.not = icmp sgt i32 %l.1230, %sub.i217
  br i1 %cmp75.not.not, label %for.inc138.for.cond78.preheader_crit_edge, label %for.inc138.cleanup.sink.split_crit_edge

for.inc138.cleanup.sink.split_crit_edge:          ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.inc138.for.cond78.preheader_crit_edge:        ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond78.preheader

cleanup.sink.split:                               ; preds = %for.inc138.cleanup.sink.split_crit_edge, %if.end114.cleanup.sink.split_crit_edge, %cond.end71.cleanup.sink.split_crit_edge, %for.end45.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ -1, %for.end45.cleanup.sink.split_crit_edge ], [ -1, %cond.end71.cleanup.sink.split_crit_edge ], [ %30, %if.end114.cleanup.sink.split_crit_edge ], [ -1, %for.inc138.cleanup.sink.split_crit_edge ], [ %11, %if.end27.cleanup.sink.split_crit_edge ]
  %38 = ptrtoint ptr %rtblock to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %.sink, ptr %rtblock, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end91.cleanup_crit_edge, %for.body83.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %for.body17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ %call111, %if.end91.cleanup_crit_edge ], [ %call.i218, %for.body83.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %call.i, %for.body17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtallocate_extent_near(ptr noundef %mp, ptr noundef %tp, i64 noundef %bno, i32 noundef %minlen, i32 noundef %maxlen, ptr nocapture noundef writeonly %len, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr nocapture noundef writeonly %rtblock) unnamed_addr #3 align 64 {
entry:
  %any = alloca i32, align 4
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %any) #9
  %0 = ptrtoint ptr %any to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %any, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #9
  %1 = ptrtoint ptr %n to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %n, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #9
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %r, align 8, !annotation !42
  %rem = urem i32 %minlen, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.rhs, label %entry.cond.false_crit_edge, !prof !43

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %rem1 = urem i32 %maxlen, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %land.rhs.cond.end_crit_edge, label %land.rhs.cond.false_crit_edge, !prof !43

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 441) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %3 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sb_rextents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %bno)
  %cmp4.not = icmp ugt i64 %4, %bno
  %sub = add i64 %4, -1
  %spec.select = select i1 %cmp4.not, i64 %bno, i64 %sub
  %conv = zext i32 %maxlen to i64
  %add = add i64 %spec.select, %conv
  %5 = tail call i64 @llvm.umin.i64(i64 %4, i64 %add)
  %sub14 = sub i64 %5, %spec.select
  %conv15 = trunc i64 %sub14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %minlen)
  %cmp16 = icmp ult i32 %conv15, %minlen
  br i1 %cmp16, label %cond.end.cleanup.sink.split_crit_edge, label %if.end19

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end19:                                         ; preds = %cond.end
  %call = call fastcc i32 @xfs_rtallocate_extent_exact(ptr noundef %mp, ptr noundef %tp, i64 noundef %spec.select, i32 noundef %minlen, i32 noundef %conv15, ptr noundef %len, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr noundef nonnull %r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %r, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp23.not = icmp eq i64 %7, -1
  br i1 %cmp23.not, label %if.end26, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end22
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %8 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %9 to i64
  %shr = lshr i64 %spec.select, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minlen)
  %cmp28.not = icmp eq i32 %minlen, 0
  br i1 %cmp28.not, label %cond.false37, label %if.end26.cond.end38_crit_edge, !prof !46

if.end26.cond.end38_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38

cond.false37:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 473) #9
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %if.end26.cond.end38_crit_edge
  %10 = tail call i32 @llvm.ctlz.i32(i32 %minlen, i1 true) #9, !range !45
  %sub.i.op.i = xor i32 %10, 31
  %sub.i = select i1 %cmp28.not, i32 -1, i32 %sub.i.op.i
  %m_rsumlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 57
  %11 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_rsumlevels, align 4
  %sub40264 = add i32 %12, -1
  %call43265 = call fastcc i32 @xfs_rtany_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i, i32 noundef %sub40264, i64 noundef %shr, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef nonnull %any)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43265)
  %tobool44.not266 = icmp eq i32 %call43265, 0
  br i1 %tobool44.not266, label %if.end46.lr.ph, label %cond.end38.cleanup_crit_edge

cond.end38.cleanup_crit_edge:                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46.lr.ph:                                   ; preds = %cond.end38
  %conv100 = trunc i64 %shr to i32
  %sb_rbmblocks124 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 13
  br label %if.end46

if.end46:                                         ; preds = %if.end144.if.end46_crit_edge, %if.end46.lr.ph
  %add42269 = phi i64 [ %shr, %if.end46.lr.ph ], [ %add42, %if.end144.if.end46_crit_edge ]
  %i.0267 = phi i32 [ 0, %if.end46.lr.ph ], [ %i.1, %if.end144.if.end46_crit_edge ]
  %13 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %any, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool47.not = icmp eq i32 %14, 0
  br i1 %tobool47.not, label %if.end46.if.end97_crit_edge, label %if.then48

if.end46.if.end97_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0267)
  %cmp49 = icmp sgt i32 %i.0267, -1
  br i1 %cmp49, label %if.then51, label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0267)
  %cmp63262.not = icmp eq i32 %i.0267, -1
  br i1 %cmp63262.not, label %for.cond62.preheader.for.end_crit_edge, label %for.cond62.preheader.for.body_crit_edge

for.cond62.preheader.for.body_crit_edge:          ; preds = %for.cond62.preheader
  br label %for.body

for.cond62.preheader.for.end_crit_edge:           ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then51:                                        ; preds = %if.then48
  %call54 = call fastcc i32 @xfs_rtallocate_extent_block(ptr noundef %mp, ptr noundef %tp, i64 noundef %add42269, i32 noundef %minlen, i32 noundef %conv15, ptr noundef %len, ptr noundef nonnull %n, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr noundef nonnull %r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %if.then51
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %r, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp58.not = icmp eq i64 %16, -1
  br i1 %cmp58.not, label %if.end57.if.end97_crit_edge, label %if.end57.cleanup.sink.split_crit_edge

if.end57.cleanup.sink.split_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end57.if.end97_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond62.preheader.for.body_crit_edge
  %j.0263 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ -1, %for.cond62.preheader.for.body_crit_edge ]
  %17 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_rsumlevels, align 4
  %sub66 = add i32 %18, -1
  %conv67 = sext i32 %j.0263 to i64
  %add68 = add i64 %shr, %conv67
  %call69 = call fastcc i32 @xfs_rtany_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i, i32 noundef %sub66, i64 noundef %add68, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef nonnull %any)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72:                                         ; preds = %for.body
  %19 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %any, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool73.not = icmp eq i32 %20, 0
  br i1 %tobool73.not, label %if.end75, label %if.end72.for.inc_crit_edge

if.end72.for.inc_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end75:                                         ; preds = %if.end72
  %call78 = call fastcc i32 @xfs_rtallocate_extent_block(ptr noundef %mp, ptr noundef %tp, i64 noundef %add68, i32 noundef %minlen, i32 noundef %conv15, ptr noundef %len, ptr noundef nonnull %n, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr noundef nonnull %r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %if.end75
  %21 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %r, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %22)
  %cmp82.not = icmp eq i64 %22, -1
  br i1 %cmp82.not, label %if.end81.for.inc_crit_edge, label %if.end81.cleanup.sink.split_crit_edge

if.end81.cleanup.sink.split_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end81.for.inc_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end81.for.inc_crit_edge, %if.end72.for.inc_crit_edge
  %dec = add nsw i32 %j.0263, -1
  %cmp63 = icmp sgt i32 %dec, %i.0267
  br i1 %cmp63, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond62.preheader.for.end_crit_edge
  %call88 = call fastcc i32 @xfs_rtallocate_extent_block(ptr noundef %mp, ptr noundef %tp, i64 noundef %add42269, i32 noundef %minlen, i32 noundef %conv15, ptr noundef %len, ptr noundef nonnull %n, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr noundef nonnull %r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %for.end
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %r, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %24)
  %cmp92.not = icmp eq i64 %24, -1
  br i1 %cmp92.not, label %if.end91.if.end97_crit_edge, label %if.end91.cleanup.sink.split_crit_edge

if.end91.cleanup.sink.split_crit_edge:            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end91.if.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.end97:                                         ; preds = %if.end91.if.end97_crit_edge, %if.end57.if.end97_crit_edge, %if.end46.if.end97_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0267)
  %cmp98 = icmp sgt i32 %i.0267, 0
  %sub101 = sub i32 %conv100, %i.0267
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub101)
  %cmp102 = icmp sgt i32 %sub101, -1
  %or.cond = select i1 %cmp98, i1 %cmp102, i1 false
  br i1 %or.cond, label %if.then104, label %if.else106

if.then104:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %sub105 = sub nsw i32 0, %i.0267
  br label %if.end144

if.else106:                                       ; preds = %if.end97
  br i1 %cmp98, label %land.lhs.true109, label %land.lhs.true120

land.lhs.true109:                                 ; preds = %if.else106
  %add111 = add i32 %i.0267, %conv100
  %25 = ptrtoint ptr %sb_rbmblocks124 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_rbmblocks124, align 4
  %sub113 = add i32 %26, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add111, i32 %sub113)
  %cmp114 = icmp ult i32 %add111, %sub113
  br i1 %cmp114, label %if.then116, label %land.lhs.true109.cleanup.sink.split_crit_edge

land.lhs.true109.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then116:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw i32 %i.0267, 1
  br label %if.end144

land.lhs.true120:                                 ; preds = %if.else106
  %27 = ptrtoint ptr %sb_rbmblocks124 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sb_rbmblocks124, align 4
  %sub125 = add i32 %28, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub101, i32 %sub125)
  %cmp126 = icmp ult i32 %sub101, %sub125
  br i1 %cmp126, label %if.then128, label %land.lhs.true133.critedge

if.then128:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #11
  %sub129 = sub i32 1, %i.0267
  br label %if.end144

land.lhs.true133.critedge:                        ; preds = %land.lhs.true120
  %add135 = add i32 %i.0267, %conv100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add135)
  %cmp136 = icmp sgt i32 %add135, 0
  br i1 %cmp136, label %if.then138, label %land.lhs.true133.critedge.cleanup.sink.split_crit_edge

land.lhs.true133.critedge.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true133.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then138:                                       ; preds = %land.lhs.true133.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %dec139 = add i32 %i.0267, -1
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %if.then128, %if.then116, %if.then104
  %i.1 = phi i32 [ %sub105, %if.then104 ], [ %inc, %if.then116 ], [ %sub129, %if.then128 ], [ %dec139, %if.then138 ]
  %29 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_rsumlevels, align 4
  %sub40 = add i32 %30, -1
  %conv41 = sext i32 %i.1 to i64
  %add42 = add i64 %shr, %conv41
  %call43 = call fastcc i32 @xfs_rtany_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i, i32 noundef %sub40, i64 noundef %add42, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef nonnull %any)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end144.if.end46_crit_edge, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end144.if.end46_crit_edge:                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

cleanup.sink.split:                               ; preds = %land.lhs.true133.critedge.cleanup.sink.split_crit_edge, %land.lhs.true109.cleanup.sink.split_crit_edge, %if.end91.cleanup.sink.split_crit_edge, %if.end81.cleanup.sink.split_crit_edge, %if.end57.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %cond.end.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ -1, %cond.end.cleanup.sink.split_crit_edge ], [ %7, %if.end22.cleanup.sink.split_crit_edge ], [ %22, %if.end81.cleanup.sink.split_crit_edge ], [ %16, %if.end57.cleanup.sink.split_crit_edge ], [ %24, %if.end91.cleanup.sink.split_crit_edge ], [ -1, %land.lhs.true109.cleanup.sink.split_crit_edge ], [ -1, %land.lhs.true133.critedge.cleanup.sink.split_crit_edge ]
  %31 = ptrtoint ptr %rtblock to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %.sink, ptr %rtblock, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end144.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %cond.end38.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end19.cleanup_crit_edge ], [ %call43265, %cond.end38.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %call78, %if.end75.cleanup_crit_edge ], [ %call69, %for.body.cleanup_crit_edge ], [ %call43, %if.end144.cleanup_crit_edge ], [ %call54, %if.then51.cleanup_crit_edge ], [ %call88, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %any) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtmount_init(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !42
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 3
  %1 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sb_rblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %3 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_rtdev_targp, align 64
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sb_rextslog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 25
  %5 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_rextslog, align 1
  %conv = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv, 1
  %m_rsumlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 57
  %7 = ptrtoint ptr %m_rsumlevels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %m_rsumlevels, align 4
  %mul = shl nuw nsw i32 %add, 2
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 13
  %8 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_rbmblocks, align 4
  %mul5 = mul i32 %mul, %9
  %m_rsumsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 58
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %10 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_blocksize, align 4
  %sub = add i32 %11, -1
  %add7 = add i32 %sub, %mul5
  %12 = urem i32 %add7, %11
  %mul8 = sub i32 %add7, %12
  %13 = ptrtoint ptr %m_rsumsize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul8, ptr %m_rsumsize, align 8
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 10
  %14 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %m_rsumip, align 4
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 9
  %15 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %m_rbmip, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %16 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %m_blkbb_log, align 1
  %conv12 = zext i8 %17 to i32
  %sh_prom = zext i8 %17 to i64
  %shl = shl i64 %2, %sh_prom
  %shl15 = shl nuw i32 1, %conv12
  %sub16 = add i32 %shl15, -1
  %conv17 = sext i32 %sub16 to i64
  %add18 = add i64 %shl, %conv17
  %shr = ashr i64 %add18, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %2)
  %cmp24.not = icmp eq i64 %shr, %2
  br i1 %cmp24.not, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.6, i64 noundef %shr, i64 noundef %2) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end3
  %conv44 = sext i32 %shl15 to i64
  %sub45 = sub i64 %shl, %conv44
  %call = call i32 @xfs_buf_read_uncached(ptr noundef nonnull %4, i64 noundef %sub45, i32 noundef %shl15, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %19) #9
  call void @xfs_buf_rele(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then49, %if.then26, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then2 ], [ -27, %if.then26 ], [ %call, %if.then49 ], [ 0, %if.end50 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtmount_inodes(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_rbmino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 8
  %0 = ptrtoint ptr %sb_rbmino to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_rbmino, align 8
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 9
  %call = tail call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %m_rbmip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rbmip, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !46

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1302) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %sb_rsumino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 9
  %4 = ptrtoint ptr %sb_rsumino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb_rsumino, align 8
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 10
  %call4 = tail call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef %m_rsumip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_rbmip, align 8
  tail call void @xfs_irele(ptr noundef %7) #9
  br label %cleanup

if.end8:                                          ; preds = %cond.end
  %8 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_rsumip, align 4
  %cmp10.not = icmp eq ptr %9, null
  br i1 %cmp10.not, label %cond.false18, label %if.end8.cond.end19_crit_edge, !prof !46

if.end8.cond.end19_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end19

cond.false18:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1309) #9
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %if.end8.cond.end19_crit_edge
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 13
  %10 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_rbmblocks, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %11, i32 noundef 3520, i32 noundef -1) #13
  %m_rsum_cache.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 18
  %12 = ptrtoint ptr %m_rsum_cache.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %m_rsum_cache.i, align 16
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %cond.end19.cleanup_crit_edge

cond.end19.cleanup_crit_edge:                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %cond.end19.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %cond.end19.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_rtunmount_inodes(ptr nocapture noundef readonly %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rsum_cache = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 18
  %0 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_rsum_cache, align 16
  tail call void @kvfree(ptr noundef %1) #9
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 9
  %2 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rbmip, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_irele(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 10
  %4 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rsumip, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_irele(ptr noundef nonnull %5) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtpick_extent(ptr nocapture noundef readonly %mp, ptr noundef %tp, i32 noundef %len, ptr nocapture noundef writeonly %pick) local_unnamed_addr #0 align 64 {
entry:
  %b = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #9
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 9
  %0 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_rbmip, align 8
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %1, i32 noundef 4) #9
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !43

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1345) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rbmip, align 8
  %i_atime = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 27, i32 15
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_diflags, align 2
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i16 %5, 4
  %7 = ptrtoint ptr %i_diflags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %or, ptr %i_diflags, align 2
  %8 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %i_atime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %9 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_atime, align 8
  %shr.i.i = lshr i64 %10, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %xfs_highbit64.exit.thread58

xfs_highbit64.exit.thread58:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #9, !range !45
  %add.i.i = sub nuw nsw i32 64, %11
  br label %if.else

if.end.i.i:                                       ; preds = %if.end
  %conv1.i.i = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #9, !range !45
  %sub.i6.i.i = sub nuw nsw i32 32, %12
  br i1 %tobool.not.i5.i.i, label %if.then12, label %if.end.i.i.if.else_crit_edge

if.end.i.i.if.else_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then12:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %b, align 8
  br label %if.end37

if.else:                                          ; preds = %if.end.i.i.if.else_crit_edge, %xfs_highbit64.exit.thread58
  %retval.0.i.i61 = phi i32 [ %add.i.i, %xfs_highbit64.exit.thread58 ], [ %sub.i6.i.i, %if.end.i.i.if.else_crit_edge ]
  %sub.i = add nsw i32 %retval.0.i.i61, -1
  %sh_prom = zext i32 %sub.i to i64
  %shl.neg = shl nsw i64 -1, %sh_prom
  %sub = add i64 %shl.neg, %10
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %14 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_rextents, align 8
  %shl13 = shl i64 %sub, 1
  %add = or i64 %shl13, 1
  %mul = mul i64 %15, %add
  %sh_prom15 = zext i32 %retval.0.i.i61 to i64
  %shr = lshr i64 %mul, %sh_prom15
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shr, ptr %b, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %15)
  %cmp18.not = icmp ult i64 %shr, %15
  br i1 %cmp18.not, label %if.else.if.end24_crit_edge, label %if.then20

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i64 @div64_u64_rem(i64 noundef %shr, i64 noundef %15, ptr noundef nonnull %b) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.else.if.end24_crit_edge
  %17 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b, align 8
  %conv25 = zext i32 %len to i64
  %add26 = add i64 %18, %conv25
  %19 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sb_rextents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add26, i64 %20)
  %cmp29 = icmp ugt i64 %add26, %20
  br i1 %cmp29, label %if.then31, label %if.end24.if.end37_crit_edge

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %sub35 = sub i64 %20, %conv25
  %21 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub35, ptr %b, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end24.if.end37_crit_edge, %if.then12
  %add38 = add i64 %10, 1
  %22 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add38, ptr %i_atime, align 8
  %23 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_rbmip, align 8
  call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %24, i32 noundef 1) #9
  %25 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %b, align 8
  %27 = ptrtoint ptr %pick to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %pick, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtmodify_summary(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtmodify_summary_int(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtallocate_extent_block(ptr noundef %mp, ptr noundef %tp, i64 noundef %bbno, i32 noundef %minlen, i32 noundef %maxlen, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %nextp, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr nocapture noundef writeonly %rtblock) unnamed_addr #3 align 64 {
entry:
  %i = alloca i64, align 8
  %next = alloca i64, align 8
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #9
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %next, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #9
  %1 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %stat, align 4, !annotation !42
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %2 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %3 to i64
  %shl = shl i64 %bbno, %sh_prom
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shl, ptr %i, align 8
  %add = add i64 %bbno, 1
  %shl4 = shl i64 %add, %sh_prom
  %sub = add i64 %shl4, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %sub)
  %cmp.not124 = icmp ugt i64 %shl, %sub
  br i1 %cmp.not124, label %entry.if.end61_crit_edge, label %for.body.lr.ph

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

for.body.lr.ph:                                   ; preds = %entry
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %conv23 = zext i32 %minlen to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i64 [ %shl, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bestlen.0127 = phi i64 [ 0, %for.body.lr.ph ], [ %bestlen.2, %for.inc.for.body_crit_edge ]
  %besti.0126 = phi i64 [ -1, %for.body.lr.ph ], [ %besti.2, %for.inc.for.body_crit_edge ]
  %maxlen.addr.0125 = phi i32 [ %maxlen, %for.body.lr.ph ], [ %conv11, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_rextents, align 8
  %conv6 = zext i32 %maxlen.addr.0125 to i64
  %add7 = add i64 %5, %conv6
  %8 = call i64 @llvm.umin.i64(i64 %7, i64 %add7)
  %sub10 = sub i64 %8, %5
  %conv11 = trunc i64 %sub10 to i32
  %call = call i32 @xfs_rtcheck_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %5, i32 noundef %conv11, i32 noundef 1, ptr noundef nonnull %next, ptr noundef nonnull %stat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup62_crit_edge

for.body.cleanup62_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end
  %conv11.le145 = trunc i64 %sub10 to i32
  %11 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i, align 8
  %call14 = call fastcc i32 @xfs_rtallocate_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %12, i32 noundef %conv11.le145, ptr noundef %rbpp, ptr noundef %rsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then13.cleanup62_crit_edge

if.then13.cleanup62_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv11.le145, ptr %len, align 4
  %14 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i, align 8
  br label %cleanup62.sink.split

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %minlen)
  %cmp19 = icmp ugt i32 %conv11, %minlen
  br i1 %cmp19, label %if.then21, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %next, align 8
  %18 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i, align 8
  %sub22 = sub i64 %17, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %sub22, i64 %conv23)
  %cmp24.not = icmp uge i64 %sub22, %conv23
  call void @__sanitizer_cov_trace_cmp8(i64 %sub22, i64 %bestlen.0127)
  %cmp26 = icmp ugt i64 %sub22, %bestlen.0127
  %or.cond = select i1 %cmp24.not, i1 %cmp26, i1 false
  %besti.1 = select i1 %or.cond, i64 %19, i64 %besti.0126
  %bestlen.1 = select i1 %or.cond, i64 %sub22, i64 %bestlen.0127
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end18.if.end30_crit_edge
  %besti.2 = phi i64 [ %besti.1, %if.then21 ], [ %besti.0126, %if.end18.if.end30_crit_edge ]
  %bestlen.2 = phi i64 [ %bestlen.1, %if.then21 ], [ %bestlen.0127, %if.end18.if.end30_crit_edge ]
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %next, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %sub)
  %cmp31 = icmp ult i64 %21, %sub
  br i1 %cmp31, label %if.then33, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then33:                                        ; preds = %if.end30
  %call34 = call i32 @xfs_rtfind_forw(ptr noundef %mp, ptr noundef %tp, i64 noundef %21, i64 noundef %sub, ptr noundef nonnull %i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc, label %if.then33.cleanup62_crit_edge

if.then33.cleanup62_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

for.inc:                                          ; preds = %if.then33
  %22 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8
  %cmp.not = icmp ugt i64 %inc, %sub
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %conv11.le = trunc i64 %sub10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.le, i32 %minlen)
  %cmp39 = icmp ule i32 %conv11.le, %minlen
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %besti.2)
  %cmp42.not = icmp eq i64 %besti.2, -1
  %or.cond116 = select i1 %cmp39, i1 true, i1 %cmp42.not
  br i1 %or.cond116, label %for.end.if.end61_crit_edge, label %if.then44

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prod)
  %cmp45 = icmp ugt i32 %prod, 1
  %extract.t115 = trunc i64 %bestlen.2 to i32
  br i1 %cmp45, label %if.else162.i, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.else162.i:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bestlen.2)
  %cmp164.i = icmp ult i64 %bestlen.2, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !43

if.then168.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem170.i = urem i32 %extract.t115, %prod
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %prod, i64 %bestlen.2) #12, !srcloc !44
  %asmresult.i4.i = extractvalue { i64, i64 } %24, 0
  %shr.i.i = lshr i64 %asmresult.i4.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %extract.t = sub i32 %extract.t115, %__rem.0.i
  br label %if.end54

if.end54:                                         ; preds = %div_u64_rem.exit, %if.then44.if.end54_crit_edge
  %bestlen.4.off0 = phi i32 [ %extract.t115, %if.then44.if.end54_crit_edge ], [ %extract.t, %div_u64_rem.exit ]
  %call56 = call fastcc i32 @xfs_rtallocate_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %besti.2, i32 noundef %bestlen.4.off0, ptr noundef %rbpp, ptr noundef %rsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.cleanup62_crit_edge

if.end54.cleanup62_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %bestlen.4.off0, ptr %len, align 4
  br label %cleanup62.sink.split

if.end61:                                         ; preds = %for.end.if.end61_crit_edge, %entry.if.end61_crit_edge
  %26 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %next, align 8
  %28 = ptrtoint ptr %nextp to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %nextp, align 8
  br label %cleanup62.sink.split

cleanup62.sink.split:                             ; preds = %if.end61, %if.end59, %if.end17
  %besti.2.lcssa.sink = phi i64 [ %besti.2, %if.end59 ], [ -1, %if.end61 ], [ %15, %if.end17 ]
  %29 = ptrtoint ptr %rtblock to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %besti.2.lcssa.sink, ptr %rtblock, align 8
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup62.sink.split, %if.end54.cleanup62_crit_edge, %if.then33.cleanup62_crit_edge, %if.then13.cleanup62_crit_edge, %for.body.cleanup62_crit_edge
  %retval.1 = phi i32 [ %call14, %if.then13.cleanup62_crit_edge ], [ %call56, %if.end54.cleanup62_crit_edge ], [ 0, %cleanup62.sink.split ], [ %call34, %if.then33.cleanup62_crit_edge ], [ %call, %for.body.cleanup62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtcheck_range(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtallocate_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, ptr noundef %rbpp, ptr noundef %rsb) unnamed_addr #3 align 64 {
entry:
  %postblock = alloca i64, align 8
  %preblock = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %postblock) #9
  %0 = ptrtoint ptr %postblock to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %postblock, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %preblock) #9
  %1 = ptrtoint ptr %preblock to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %preblock, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %start
  %sub = add i64 %add, -1
  %call = call i32 @xfs_rtfind_back(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i64 noundef 0, ptr noundef nonnull %preblock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %2 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_rextents, align 8
  %sub1 = add i64 %3, -1
  %call2 = call i32 @xfs_rtfind_forw(ptr noundef %mp, ptr noundef %tp, i64 noundef %sub, i64 noundef %sub1, ptr noundef nonnull %postblock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %postblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %postblock, align 8
  %add6 = add i64 %5, 1
  %6 = ptrtoint ptr %preblock to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %preblock, align 8
  %sub7 = sub i64 %add6, %7
  %shr.i.i = lshr i64 %sub7, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #9, !range !45
  %add.i.i = sub nuw nsw i32 64, %8
  br label %xfs_highbit64.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = trunc i64 %sub7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %9 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #9, !range !45
  %sub.i6.i.i = sub nuw nsw i32 32, %9
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %xfs_highbit64.exit

xfs_highbit64.exit:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, -1
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %10 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %11 to i64
  %shr = lshr i64 %7, %sh_prom
  %call10 = call i32 @xfs_rtmodify_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i, i64 noundef %shr, i32 noundef -1, ptr noundef %rbpp, ptr noundef %rsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %xfs_highbit64.exit.cleanup_crit_edge

xfs_highbit64.exit.cleanup_crit_edge:             ; preds = %xfs_highbit64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %xfs_highbit64.exit
  %12 = ptrtoint ptr %preblock to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %preblock, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %start)
  %cmp = icmp ult i64 %13, %start
  br i1 %cmp, label %if.then15, label %if.end13.if.end26_crit_edge

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then15:                                        ; preds = %if.end13
  %sub16 = sub i64 %start, %13
  %shr.i.i83 = lshr i64 %sub16, 32
  %conv.i.i84 = trunc i64 %shr.i.i83 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %conv.i.i84, 0
  br i1 %tobool.not.i.i85, label %if.end.i.i92, label %if.then.i.i87

if.then.i.i87:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call i32 @llvm.ctlz.i32(i32 %conv.i.i84, i1 true) #9, !range !45
  %add.i.i86 = sub nuw nsw i32 64, %14
  br label %xfs_highbit64.exit95

if.end.i.i92:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i88 = trunc i64 %sub16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i88)
  %tobool.not.i5.i.i89 = icmp eq i32 %conv1.i.i88, 0
  %15 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i88, i1 true) #9, !range !45
  %sub.i6.i.i90 = sub nuw nsw i32 32, %15
  %cond.i7.i.i91 = select i1 %tobool.not.i5.i.i89, i32 0, i32 %sub.i6.i.i90
  br label %xfs_highbit64.exit95

xfs_highbit64.exit95:                             ; preds = %if.end.i.i92, %if.then.i.i87
  %retval.0.i.i93 = phi i32 [ %add.i.i86, %if.then.i.i87 ], [ %cond.i7.i.i91, %if.end.i.i92 ]
  %sub.i94 = add nsw i32 %retval.0.i.i93, -1
  %16 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom20 = zext i8 %17 to i64
  %shr21 = lshr i64 %13, %sh_prom20
  %call22 = call i32 @xfs_rtmodify_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i94, i64 noundef %shr21, i32 noundef 1, ptr noundef %rbpp, ptr noundef %rsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %xfs_highbit64.exit95.if.end26_crit_edge, label %xfs_highbit64.exit95.cleanup_crit_edge

xfs_highbit64.exit95.cleanup_crit_edge:           ; preds = %xfs_highbit64.exit95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

xfs_highbit64.exit95.if.end26_crit_edge:          ; preds = %xfs_highbit64.exit95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %xfs_highbit64.exit95.if.end26_crit_edge, %if.end13.if.end26_crit_edge
  %18 = ptrtoint ptr %postblock to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %postblock, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %sub)
  %cmp27 = icmp ugt i64 %19, %sub
  br i1 %cmp27, label %if.then29, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then29:                                        ; preds = %if.end26
  %sub30 = sub i64 %19, %sub
  %shr.i.i96 = lshr i64 %sub30, 32
  %conv.i.i97 = trunc i64 %shr.i.i96 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %conv.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.end.i.i105, label %if.then.i.i100

if.then.i.i100:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %20 = call i32 @llvm.ctlz.i32(i32 %conv.i.i97, i1 true) #9, !range !45
  %add.i.i99 = sub nuw nsw i32 64, %20
  br label %xfs_highbit64.exit108

if.end.i.i105:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i101 = trunc i64 %sub30 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i101)
  %tobool.not.i5.i.i102 = icmp eq i32 %conv1.i.i101, 0
  %21 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i101, i1 true) #9, !range !45
  %sub.i6.i.i103 = sub nuw nsw i32 32, %21
  %cond.i7.i.i104 = select i1 %tobool.not.i5.i.i102, i32 0, i32 %sub.i6.i.i103
  br label %xfs_highbit64.exit108

xfs_highbit64.exit108:                            ; preds = %if.end.i.i105, %if.then.i.i100
  %retval.0.i.i106 = phi i32 [ %add.i.i99, %if.then.i.i100 ], [ %cond.i7.i.i104, %if.end.i.i105 ]
  %sub.i107 = add nsw i32 %retval.0.i.i106, -1
  %22 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom35 = zext i8 %23 to i64
  %shr36 = lshr i64 %add, %sh_prom35
  %call37 = call i32 @xfs_rtmodify_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i107, i64 noundef %shr36, i32 noundef 1, ptr noundef %rbpp, ptr noundef %rsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %xfs_highbit64.exit108.if.end41_crit_edge, label %xfs_highbit64.exit108.cleanup_crit_edge

xfs_highbit64.exit108.cleanup_crit_edge:          ; preds = %xfs_highbit64.exit108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

xfs_highbit64.exit108.if.end41_crit_edge:         ; preds = %xfs_highbit64.exit108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %xfs_highbit64.exit108.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %call42 = call i32 @xfs_rtmodify_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %xfs_highbit64.exit108.cleanup_crit_edge, %xfs_highbit64.exit95.cleanup_crit_edge, %xfs_highbit64.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call10, %xfs_highbit64.exit.cleanup_crit_edge ], [ %call22, %xfs_highbit64.exit95.cleanup_crit_edge ], [ %call37, %xfs_highbit64.exit108.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %preblock) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %postblock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtfind_forw(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtfind_back(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtmodify_range(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtallocate_extent_exact(ptr noundef %mp, ptr noundef %tp, i64 noundef %bno, i32 noundef %minlen, i32 noundef %maxlen, ptr nocapture noundef writeonly %len, ptr noundef %rbpp, ptr noundef %rsb, i32 noundef %prod, ptr nocapture noundef writeonly %rtblock) unnamed_addr #3 align 64 {
entry:
  %isfree = alloca i32, align 4
  %next = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isfree) #9
  %0 = ptrtoint ptr %isfree to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %isfree, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #9
  %1 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %next, align 8, !annotation !42
  %rem = urem i32 %minlen, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.rhs, label %entry.cond.false_crit_edge, !prof !43

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %rem1 = urem i32 %maxlen, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %land.rhs.cond.end_crit_edge, label %land.rhs.cond.false_crit_edge, !prof !43

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 358) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  %call = call i32 @xfs_rtcheck_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %bno, i32 noundef %maxlen, i32 noundef 1, ptr noundef nonnull %next, ptr noundef nonnull %isfree) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %2 = ptrtoint ptr %isfree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isfree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i32 @xfs_rtallocate_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %bno, i32 noundef %maxlen, ptr noundef %rbpp, ptr noundef %rsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.cleanup.sink.split.sink.split_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %next, align 8
  %sub = sub i64 %5, %bno
  %conv = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %minlen)
  %cmp12 = icmp ult i32 %conv, %minlen
  br i1 %cmp12, label %if.end11.cleanup.sink.split_crit_edge, label %if.end15

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prod)
  %cmp16 = icmp ugt i32 %prod, 1
  br i1 %cmp16, label %land.lhs.true, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end15
  %rem18 = urem i32 %conv, %prod
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18)
  %tobool19.not = icmp eq i32 %rem18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end26_crit_edge, label %if.then20

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %land.lhs.true
  %sub21 = sub i32 %conv, %rem18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21, i32 %minlen)
  %cmp22 = icmp ult i32 %sub21, %minlen
  br i1 %cmp22, label %if.then20.cleanup.sink.split_crit_edge, label %if.then20.if.end26_crit_edge

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20.cleanup.sink.split_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %maxlen.addr.0 = phi i32 [ %sub21, %if.then20.if.end26_crit_edge ], [ %conv, %land.lhs.true.if.end26_crit_edge ], [ %conv, %if.end15.if.end26_crit_edge ]
  %call27 = call fastcc i32 @xfs_rtallocate_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %bno, i32 noundef %maxlen.addr.0, ptr noundef %rbpp, ptr noundef %rsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup.sink.split.sink.split_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end26.cleanup.sink.split.sink.split_crit_edge, %if.then6.cleanup.sink.split.sink.split_crit_edge
  %maxlen.sink = phi i32 [ %maxlen, %if.then6.cleanup.sink.split.sink.split_crit_edge ], [ %maxlen.addr.0, %if.end26.cleanup.sink.split.sink.split_crit_edge ]
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %maxlen.sink, ptr %len, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then20.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge
  %bno.sink = phi i64 [ -1, %if.end11.cleanup.sink.split_crit_edge ], [ -1, %if.then20.cleanup.sink.split_crit_edge ], [ %bno, %cleanup.sink.split.sink.split ]
  %7 = ptrtoint ptr %rtblock to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %bno.sink, ptr %rtblock, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end26.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.end.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isfree) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtany_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %low, i32 noundef %high, i64 noundef %bbno, ptr noundef %rbpp, ptr noundef %rsb, ptr nocapture noundef writeonly %stat) unnamed_addr #3 align 64 {
entry:
  %sum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum) #9
  %0 = ptrtoint ptr %sum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sum, align 4, !annotation !42
  %m_rsum_cache = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 18
  %1 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_rsum_cache, align 16
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom = trunc i64 %bbno to i32
  %arrayidx = getelementptr i8, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = tail call i32 @llvm.smax.i32(i32 %conv, i32 %low)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %low.addr.0 = phi i32 [ %low, %entry.if.end_crit_edge ], [ %5, %land.lhs.true ]
  call void @__sanitizer_cov_trace_cmp4(i32 %low.addr.0, i32 %high)
  %cmp7.not51 = icmp sgt i32 %low.addr.0, %high
  br i1 %cmp7.not51, label %if.end.out_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %log.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %low.addr.0, %if.end.for.body_crit_edge ]
  %call.i = call i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %log.052, i64 noundef %bbno, i32 noundef 0, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef nonnull %sum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %6 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %for.inc, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc:                                          ; preds = %if.end11
  %inc = add i32 %log.052, 1
  %cmp7.not = icmp sgt i32 %inc, %high
  br i1 %cmp7.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end11.out_crit_edge, %if.end.out_crit_edge
  %log.0.lcssa = phi i32 [ %low.addr.0, %if.end.out_crit_edge ], [ %inc, %for.inc.out_crit_edge ], [ %log.052, %if.end11.out_crit_edge ]
  %storemerge = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ 1, %if.end11.out_crit_edge ]
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %stat, align 4
  %9 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_rsum_cache, align 16
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %out.cleanup_crit_edge, label %land.lhs.true17

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true17:                                  ; preds = %out
  %idxprom19 = trunc i64 %bbno to i32
  %arrayidx20 = getelementptr i8, ptr %10, i32 %idxprom19
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %log.0.lcssa, i32 %conv21)
  %cmp22 = icmp sgt i32 %log.0.lcssa, %conv21
  br i1 %cmp22, label %if.then24, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  %conv25 = trunc i32 %log.0.lcssa to i8
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv25, ptr %arrayidx20, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %land.lhs.true17.cleanup_crit_edge, %out.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %out.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1038, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1188, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1189, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1226, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1257, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1271, i32 16}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1280, i32 16}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1302, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_rtalloc.c", i32 1309, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_rtalloc.c", i32 892, i32 16}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_rtalloc.c", i32 132, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_rtalloc.c", i32 641, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_rtalloc.c", i32 642, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_rtalloc.c", i32 701, i32 2}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148502768, i64 2148503048, i64 2148503382, i64 2148503716}
!45 = !{i32 0, i32 33}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2153155114}
!48 = !{i64 2149709365}
!49 = !{i64 2149714297}
!50 = !{i64 2149736009}
!51 = !{i64 2149740901}
!52 = !{i64 2149817358}
!53 = !{i64 2149817683}
!54 = !{i64 2153166976}
