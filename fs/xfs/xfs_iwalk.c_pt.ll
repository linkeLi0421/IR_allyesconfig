; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_iwalk.c_pt.bc'
source_filename = "../fs/xfs/xfs_iwalk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_iwalk_ag = type { %struct.xfs_pwork, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, ptr, i8 }
%struct.xfs_pwork = type { %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_pwork_ctl = type { ptr, ptr, ptr, %struct.wait_queue_head, %struct.atomic_t, i32 }
%struct.xfs_inobt_rec_incore = type { i32, i16, i8, i8, i64 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"agno < mp->m_sb.sb_agcount\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_iwalk.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"!(flags & ~XFS_IWALK_FLAGS_ALL)\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_iwalk\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"!(flags & ~XFS_INOBT_WALK_FLAGS_ALL)\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iwag->recs == NULL\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pag->pag_agno == XFS_INO_TO_AGNO(mp, iwag->startino)\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iwag->lastino >= rec_fsino\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"has_more\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"*has_more != 1\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iwag->nr_recs < iwag->sz_recs\00", [34 x i8] zeroinitializer }, align 32
@xfs_inode_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iwag->nr_recs > 0\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"next_agino >= irec->ir_startino + XFS_INODES_PER_CHUNK\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iwalk_ag_rec = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_iwalk_ag_rec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 575, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 576, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 656, i32 55 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 761, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 158, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 415, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 436, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 474, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 309, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 336, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 364, i32 2 }
@___asan_gen_.53 = private constant [22 x i8] c"../fs/xfs/xfs_iwalk.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 369, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 3753, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iwalk(ptr noundef %mp, ptr noundef %tp, i64 noundef %startino, i32 noundef %flags, ptr noundef %iwalk_fn, i32 noundef %inode_records, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %iwag = alloca %struct.xfs_iwalk_ag, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %iwag) #9
  %0 = getelementptr inbounds i8, ptr %iwag, i32 56
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %2 = call ptr @memset(ptr %iwag, i32 0, i32 48)
  %mp1 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 1
  %3 = ptrtoint ptr %mp1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mp, ptr %mp1, align 8
  %tp2 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 2
  %4 = ptrtoint ptr %tp2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tp, ptr %tp2, align 4
  %pag = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 3
  %5 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pag, align 8
  %startino3 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 4
  %6 = ptrtoint ptr %startino3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %startino, ptr %startino3, align 8
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %7 = ptrtoint ptr %recs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %recs, align 8
  %sz_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inode_records)
  %cmp.i = icmp eq i32 %inode_records, 0
  %spec.store.select.i = select i1 %cmp.i, i32 2048, i32 %inode_records
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %spec.store.select.i)
  %cmp1.i = icmp ult i32 %spec.store.select.i, 2048
  br i1 %cmp1.i, label %cond.end.i, label %entry.cond.end.thread.i_crit_edge

entry.cond.end.thread.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %entry
  %phi.bo.i = add nsw i32 %spec.store.select.i, -1
  %phi.bo15.i = or i32 %phi.bo.i, 63
  %8 = mul i32 %phi.bo15.i, 5
  %phi.bo17.i = add i32 %8, 5
  %phi.bo1819.i = lshr i32 %phi.bo17.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %phi.bo17.i)
  %cmp3.i = icmp ugt i32 %phi.bo17.i, 767
  br i1 %cmp3.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i.xfs_iwalk_prefetch.exit_crit_edge

cond.end.i.xfs_iwalk_prefetch.exit_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_iwalk_prefetch.exit

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %entry.cond.end.thread.i_crit_edge
  %cond22.i = phi i32 [ %phi.bo1819.i, %cond.end.i.cond.end.thread.i_crit_edge ], [ 40, %entry.cond.end.thread.i_crit_edge ]
  br label %xfs_iwalk_prefetch.exit

xfs_iwalk_prefetch.exit:                          ; preds = %cond.end.thread.i, %cond.end.i.xfs_iwalk_prefetch.exit_crit_edge
  %9 = phi i32 [ %cond22.i, %cond.end.thread.i ], [ 2, %cond.end.i.xfs_iwalk_prefetch.exit_crit_edge ]
  %10 = ptrtoint ptr %sz_recs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sz_recs, align 4
  %nr_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 8
  %11 = ptrtoint ptr %nr_recs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nr_recs, align 8
  %iwalk_fn4 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 9
  %12 = ptrtoint ptr %iwalk_fn4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %iwalk_fn, ptr %iwalk_fn4, align 4
  %inobt_walk_fn = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 10
  %13 = ptrtoint ptr %inobt_walk_fn to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %inobt_walk_fn, align 8
  %data5 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 11
  %14 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %data5, align 4
  %trim_start = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 12
  %15 = ptrtoint ptr %trim_start to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %trim_start, align 8
  %bf.set8 = and i8 %bf.load, 31
  %bf.clear10 = or i8 %bf.set8, -64
  store i8 %bf.clear10, ptr %trim_start, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %16 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %17 to i64
  %shr = lshr i64 %startino, %sh_prom
  %conv = trunc i64 %shr to i32
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %18 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp = icmp ugt i32 %19, %conv
  br i1 %cmp, label %xfs_iwalk_prefetch.exit.cond.end_crit_edge, label %cond.false, !prof !43

xfs_iwalk_prefetch.exit.cond.end_crit_edge:       ; preds = %xfs_iwalk_prefetch.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %xfs_iwalk_prefetch.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 575) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_iwalk_prefetch.exit.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool15.not = icmp ult i32 %flags, 2
  br i1 %tobool15.not, label %cond.end.cond.end26_crit_edge, label %cond.false25, !prof !43

cond.end.cond.end26_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 576) #9
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.end.cond.end26_crit_edge
  %call27 = call fastcc i32 @xfs_iwalk_alloc(ptr noundef nonnull %iwag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end, label %cond.end26.cleanup_crit_edge

cond.end26.cleanup_crit_edge:                     ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end26
  %call29 = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %conv) #9
  %cmp30.not73 = icmp eq ptr %call29, null
  br i1 %cmp30.not73, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %and42 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag12.075 = phi ptr [ %call29, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %agno.074 = phi i32 [ %conv, %for.body.lr.ph ], [ %add.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %20 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pag12.075, ptr %pag, align 8
  %call33 = call fastcc i32 @xfs_iwalk_ag(ptr noundef nonnull %iwag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end36:                                         ; preds = %for.body
  %add = add i32 %agno.074, 1
  %conv37 = zext i32 %add to i64
  %21 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agino_log, align 8
  %sh_prom40 = zext i32 %22 to i64
  %shl = shl i64 %conv37, %sh_prom40
  %23 = ptrtoint ptr %startino3 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl, ptr %startino3, align 8
  br i1 %tobool43.not, label %if.end45, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end45:                                         ; preds = %if.end36
  %24 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pag, align 8
  %25 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %26, -1
  %27 = ptrtoint ptr %pag12.075 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pag12.075, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag12.075, i32 0, i32 1
  %29 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %30, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag12.075) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i70 = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i70, label %if.end45.for.end_crit_edge, label %xfs_perag_next.exit

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

xfs_perag_next.exit:                              ; preds = %if.end45
  %call.i = call ptr @xfs_perag_get(ptr noundef %28, i32 noundef %add.i) #9
  %cmp30.not = icmp eq ptr %call.i, null
  br i1 %cmp30.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %if.end45.for.end_crit_edge, %if.end36.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %pag12.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ null, %if.end45.for.end_crit_edge ], [ %call29, %if.end36.for.end_crit_edge ], [ %pag12.075, %for.body.for.end_crit_edge ], [ null, %xfs_perag_next.exit.for.end_crit_edge ]
  %error.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %if.end45.for.end_crit_edge ], [ 0, %if.end36.for.end_crit_edge ], [ %call33, %for.body.for.end_crit_edge ], [ 0, %xfs_perag_next.exit.for.end_crit_edge ]
  %31 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pag, align 8
  %tobool51.not = icmp eq ptr %32, null
  br i1 %tobool51.not, label %for.end.if.end53_crit_edge, label %if.then52

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_perag_put(ptr noundef %pag12.0.lcssa) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %for.end.if.end53_crit_edge
  call fastcc void @xfs_iwalk_free(ptr noundef nonnull %iwag)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %cond.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end53 ], [ %call27, %cond.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %iwag) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iwalk_alloc(ptr nocapture noundef %iwag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %0 = ptrtoint ptr %recs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recs, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !43

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 158) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %nr_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 8
  %2 = ptrtoint ptr %nr_recs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nr_recs, align 8
  %sz_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 7
  %3 = ptrtoint ptr %sz_recs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sz_recs, align 4
  %mul = shl i32 %4, 4
  %call = tail call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 8) #9
  %5 = ptrtoint ptr %recs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %recs, align 8
  %cmp4 = icmp eq ptr %call, null
  %. = select i1 %cmp4, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iwalk_ag(ptr noundef %iwag) #3 align 64 {
entry:
  %agi_bp = alloca ptr, align 4
  %cur = alloca ptr, align 4
  %has_more = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mp1 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 1
  %0 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp1, align 8
  %pag2 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 3
  %2 = ptrtoint ptr %pag2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pag2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agi_bp) #9
  %4 = ptrtoint ptr %agi_bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %agi_bp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur) #9
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cur, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_more) #9
  %6 = ptrtoint ptr %has_more to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %has_more, align 4, !annotation !44
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %startino = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 4
  %9 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %startino, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %11 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %12 to i64
  %shr = lshr i64 %10, %sh_prom
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp = icmp eq i32 %8, %conv
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !43

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 415) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %13 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %startino, align 8
  %conv6 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agino_log, align 8
  %sh_prom9 = zext i32 %16 to i64
  %notmask = shl nsw i64 -1, %sh_prom9
  %17 = trunc i64 %notmask to i32
  %conv10 = xor i32 %17, -1
  %and = and i32 %conv10, %conv6
  %call = call fastcc i32 @xfs_iwalk_ag_start(ptr noundef %iwag, i32 noundef %and, ptr noundef nonnull %cur, ptr noundef nonnull %agi_bp, ptr noundef nonnull %has_more)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not154 = icmp eq i32 %call, 0
  br i1 %tobool11.not154, label %land.rhs.lr.ph, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.rhs.lr.ph:                                   ; preds = %cond.end
  %pctl.i = getelementptr inbounds %struct.xfs_pwork, ptr %iwag, i32 0, i32 1
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %nr_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 8
  %lastino = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 5
  %skip_empty = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 12
  %iwalk_fn = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 9
  %sz_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %18 = ptrtoint ptr %has_more to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %has_more, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 423, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  %20 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pctl.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %while.body.if.end_crit_edge, label %xfs_pwork_want_abort.exit

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

xfs_pwork_want_abort.exit:                        ; preds = %while.body
  %error.i.i = getelementptr inbounds %struct.xfs_pwork_ctl, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.i.i.not = icmp eq i32 %23, 0
  br i1 %tobool1.i.i.not, label %xfs_pwork_want_abort.exit.if.end_crit_edge, label %xfs_pwork_want_abort.exit.out_crit_edge

xfs_pwork_want_abort.exit.out_crit_edge:          ; preds = %xfs_pwork_want_abort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

xfs_pwork_want_abort.exit.if.end_crit_edge:       ; preds = %xfs_pwork_want_abort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %xfs_pwork_want_abort.exit.if.end_crit_edge, %while.body.if.end_crit_edge
  %24 = ptrtoint ptr %recs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %recs, align 8
  %26 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_recs, align 8
  %arrayidx = getelementptr %struct.xfs_inobt_rec_incore, ptr %25, i32 %27
  %28 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur, align 4
  %call15 = call i32 @xfs_inobt_get_rec(ptr noundef %29, ptr noundef %arrayidx, ptr noundef nonnull %has_more) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %30 = ptrtoint ptr %has_more to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %has_more, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not = icmp eq i32 %31, 0
  br i1 %tobool17.not, label %lor.lhs.false.while.end_crit_edge, label %if.end19

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end19:                                         ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pag_agno, align 4
  %conv21 = zext i32 %33 to i64
  %34 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %agino_log, align 8
  %sh_prom24 = zext i32 %35 to i64
  %shl25 = shl i64 %conv21, %sh_prom24
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 8
  %conv26 = zext i32 %37 to i64
  %or = or i64 %shl25, %conv26
  %38 = ptrtoint ptr %lastino to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lastino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %39)
  %cmp27.not = icmp eq i64 %39, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %or)
  %cmp30.not = icmp ult i64 %39, %or
  %or.cond = select i1 %cmp27.not, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.end42, label %__here, !prof !45

__here:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  call void @xfs_corruption_error(ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef blockaddress(@xfs_iwalk_ag, %__here)) #9
  br label %out

if.end42:                                         ; preds = %if.end19
  %sub43 = add i64 %or, 63
  %40 = ptrtoint ptr %lastino to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sub43, ptr %lastino, align 8
  %41 = ptrtoint ptr %skip_empty to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %skip_empty, align 8
  %42 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool45.not = icmp eq i8 %42, 0
  br i1 %tobool45.not, label %if.end42.if.end56_crit_edge, label %land.lhs.true46

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true46:                                  ; preds = %if.end42
  %ir_freecount = getelementptr %struct.xfs_inobt_rec_incore, ptr %25, i32 %27, i32 3
  %43 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ir_freecount, align 1
  %ir_count = getelementptr %struct.xfs_inobt_rec_incore, ptr %25, i32 %27, i32 2
  %45 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ir_count, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp49 = icmp eq i8 %44, %46
  br i1 %cmp49, label %if.then51, label %land.lhs.true46.if.end56_crit_edge

land.lhs.true46.if.end56_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51:                                        ; preds = %land.lhs.true46
  %47 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur, align 4
  %call52 = call i32 @xfs_btree_increment(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %has_more) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.cleanup_crit_edge, label %if.then51.out_crit_edge

if.then51.out_crit_edge:                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true46.if.end56_crit_edge, %if.end42.if.end56_crit_edge
  %49 = ptrtoint ptr %iwalk_fn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iwalk_fn, align 4
  %tobool57.not = icmp eq ptr %50, null
  br i1 %tobool57.not, label %if.end56.if.end59_crit_edge, label %if.then58

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @xfs_iwalk_ichunk_ra(ptr noundef %1, ptr noundef %3, ptr noundef %arrayidx)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  %51 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_recs, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %nr_recs, align 8
  %53 = ptrtoint ptr %sz_recs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sz_recs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %54)
  %cmp61 = icmp ult i32 %inc, %54
  br i1 %cmp61, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.end59
  %55 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur, align 4
  %call64 = call i32 @xfs_btree_increment(ptr noundef %56, i32 noundef 0, ptr noundef nonnull %has_more) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %lor.lhs.false66, label %if.then63.out_crit_edge

if.then63.out_crit_edge:                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false66:                                  ; preds = %if.then63
  %57 = ptrtoint ptr %has_more to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %has_more, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool67.not = icmp eq i32 %58, 0
  br i1 %tobool67.not, label %lor.lhs.false66.while.end_crit_edge, label %lor.lhs.false66.cleanup_crit_edge

lor.lhs.false66.cleanup_crit_edge:                ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false66.while.end_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end70:                                         ; preds = %if.end59
  %59 = ptrtoint ptr %has_more to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %has_more, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool71.not = icmp eq i32 %60, 0
  br i1 %tobool71.not, label %cond.false79, label %if.end70.cond.end80_crit_edge, !prof !47

if.end70.cond.end80_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end80

cond.false79:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 474) #9
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %if.end70.cond.end80_crit_edge
  %call81 = call fastcc i32 @xfs_iwalk_run_callbacks(ptr noundef %iwag, ptr noundef nonnull %cur, ptr noundef nonnull %agi_bp, ptr noundef nonnull %has_more)
  br label %cleanup

cleanup:                                          ; preds = %cond.end80, %lor.lhs.false66.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  %error.1 = phi i32 [ %call81, %cond.end80 ], [ 0, %lor.lhs.false66.cleanup_crit_edge ], [ 0, %if.then51.cleanup_crit_edge ]
  %tobool11.not = icmp eq i32 %error.1, 0
  br i1 %tobool11.not, label %cleanup.land.rhs_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %lor.lhs.false66.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %61 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_recs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp84.not = icmp eq i32 %62, 0
  br i1 %cmp84.not, label %while.end.out_crit_edge, label %if.end89

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end89:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = call fastcc i32 @xfs_iwalk_run_callbacks(ptr noundef %iwag, ptr noundef nonnull %cur, ptr noundef nonnull %agi_bp, ptr noundef nonnull %has_more)
  br label %out

out:                                              ; preds = %if.end89, %while.end.out_crit_edge, %cleanup.out_crit_edge, %if.then63.out_crit_edge, %if.then51.out_crit_edge, %__here, %if.end.out_crit_edge, %xfs_pwork_want_abort.exit.out_crit_edge, %cond.end.out_crit_edge
  %error.3 = phi i32 [ 0, %while.end.out_crit_edge ], [ %call90, %if.end89 ], [ -117, %__here ], [ %call, %cond.end.out_crit_edge ], [ %error.1, %cleanup.out_crit_edge ], [ 0, %xfs_pwork_want_abort.exit.out_crit_edge ], [ %call64, %if.then63.out_crit_edge ], [ %call52, %if.then51.out_crit_edge ], [ %call15, %if.end.out_crit_edge ]
  %tp = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 2
  %63 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tp, align 4
  %65 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %out.if.end.i_crit_edge, label %if.then.i

out.if.end.i_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_btree_del_cursor(ptr noundef nonnull %66, i32 noundef %error.3) #9
  %67 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %cur, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %out.if.end.i_crit_edge
  %68 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %agi_bp, align 4
  %tobool1.not.i = icmp eq ptr %69, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup91_crit_edge, label %if.then2.i

if.end.i.cleanup91_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_trans_brelse(ptr noundef %64, ptr noundef nonnull %69) #9
  br label %cleanup91

cleanup91:                                        ; preds = %if.then2.i, %if.end.i.cleanup91_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_more) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agi_bp) #9
  ret i32 %error.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iwalk_free(ptr nocapture noundef %iwag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %0 = ptrtoint ptr %recs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recs, align 8
  tail call void @kvfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %recs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %recs, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iwalk_threaded(ptr noundef %mp, i64 noundef %startino, i32 noundef %flags, ptr noundef %iwalk_fn, i32 noundef %inode_records, i1 noundef zeroext %polled, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %pctl = alloca %struct.xfs_pwork_ctl, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pctl) #9
  %0 = call ptr @memset(ptr %pctl, i32 255, i32 72)
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %1 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %2 to i64
  %shr = lshr i64 %startino, %sh_prom
  %conv = trunc i64 %shr to i32
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %3 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp ugt i32 %4, %conv
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !43

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 653) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool3.not = icmp ult i32 %flags, 2
  br i1 %tobool3.not, label %cond.end.cond.end14_crit_edge, label %cond.false13, !prof !43

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 654) #9
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %call = call i32 @xfs_pwork_init(ptr noundef %mp, ptr noundef nonnull %pctl, ptr noundef nonnull @xfs_iwalk_ag_work, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end, label %cond.end14.cleanup47_crit_edge

cond.end14.cleanup47_crit_edge:                   ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

if.end:                                           ; preds = %cond.end14
  %call16 = call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %conv) #9
  %cmp17.not80 = icmp eq ptr %call16, null
  br i1 %cmp17.not80, label %if.end.if.end42_crit_edge, label %for.body.lr.ph

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.body.lr.ph:                                   ; preds = %if.end
  %error.i = getelementptr inbounds %struct.xfs_pwork_ctl, ptr %pctl, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inode_records)
  %cmp.i = icmp eq i32 %inode_records, 0
  %spec.store.select.i = select i1 %cmp.i, i32 2048, i32 %inode_records
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %spec.store.select.i)
  %cmp1.i = icmp ugt i32 %spec.store.select.i, 2047
  %phi.bo.i = add nsw i32 %spec.store.select.i, -1
  %phi.bo15.i = or i32 %phi.bo.i, 63
  %5 = mul i32 %phi.bo15.i, 5
  %phi.bo17.i = add i32 %5, 5
  %phi.bo1819.i = lshr i32 %phi.bo17.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %phi.bo17.i)
  %cmp3.i = icmp ugt i32 %phi.bo17.i, 767
  %and33 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %brmerge = select i1 %cmp1.i, i1 true, i1 %cmp3.i
  %.mux = select i1 %cmp1.i, i32 40, i32 %phi.bo1819.i
  %6 = select i1 %brmerge, i32 %.mux, i32 2
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.082 = phi ptr [ %call16, %for.body.lr.ph ], [ %call.i74, %xfs_perag_next.exit.for.body_crit_edge ]
  %startino.addr.081 = phi i64 [ %startino, %for.body.lr.ph ], [ %shl, %xfs_perag_next.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.i.not, label %if.end21, label %for.body.if.then41.critedge_crit_edge

for.body.if.then41.critedge_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.critedge

if.end21:                                         ; preds = %for.body
  %call.i = call ptr @kmem_alloc(i32 noundef 112, i32 noundef 16) #9
  %mp23 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %mp23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mp, ptr %mp23, align 8
  %pag_ref = getelementptr inbounds %struct.xfs_perag, ptr %pag.082, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %pag_ref, i32 1, i32 3, i32 1) #9
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref, ptr %pag_ref, i32 1, ptr elementtype(i32) %pag_ref) #9, !srcloc !48
  %pag24 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %pag24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pag.082, ptr %pag24, align 8
  %iwalk_fn25 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %iwalk_fn25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %iwalk_fn, ptr %iwalk_fn25, align 4
  %data26 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %data26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %data26, align 4
  %startino27 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %startino27 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %startino.addr.081, ptr %startino27, align 8
  %sz_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %sz_recs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %6, ptr %sz_recs, align 4
  %lastino = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %lastino to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %lastino, align 8
  call void @xfs_pwork_queue(ptr noundef nonnull %pctl, ptr noundef %call.i) #9
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag.082, i32 0, i32 1
  %17 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pag_agno, align 4
  %add = add i32 %18, 1
  %conv29 = zext i32 %add to i64
  %19 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %agino_log, align 8
  %sh_prom32 = zext i32 %20 to i64
  %shl = shl i64 %conv29, %sh_prom32
  br i1 %tobool34.not, label %for.inc, label %if.end21.if.then41.critedge_crit_edge

if.end21.if.then41.critedge_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.critedge

for.inc:                                          ; preds = %if.end21
  %21 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %22, -1
  %23 = ptrtoint ptr %pag.082 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pag.082, align 4
  %25 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pag_agno, align 4
  %add.i = add i32 %26, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.082) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i73 = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i73, label %for.inc.if.end42_crit_edge, label %xfs_perag_next.exit

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

xfs_perag_next.exit:                              ; preds = %for.inc
  %call.i74 = call ptr @xfs_perag_get(ptr noundef %24, i32 noundef %add.i) #9
  %cmp17.not = icmp eq ptr %call.i74, null
  br i1 %cmp17.not, label %xfs_perag_next.exit.if.end42_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

xfs_perag_next.exit.if.end42_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41.critedge:                               ; preds = %if.end21.if.then41.critedge_crit_edge, %for.body.if.then41.critedge_crit_edge
  %pag.082.lcssa = phi ptr [ %pag.082, %for.body.if.then41.critedge_crit_edge ], [ %call16, %if.end21.if.then41.critedge_crit_edge ]
  call void @xfs_perag_put(ptr noundef nonnull %pag.082.lcssa) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then41.critedge, %xfs_perag_next.exit.if.end42_crit_edge, %for.inc.if.end42_crit_edge, %if.end.if.end42_crit_edge
  br i1 %polled, label %if.then44, label %if.end42.if.end45_crit_edge

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_pwork_poll(ptr noundef nonnull %pctl) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42.if.end45_crit_edge
  %call46 = call i32 @xfs_pwork_destroy(ptr noundef nonnull %pctl) #9
  br label %cleanup47

cleanup47:                                        ; preds = %if.end45, %cond.end14.cleanup47_crit_edge
  %retval.0 = phi i32 [ %call46, %if.end45 ], [ %call, %cond.end14.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pctl) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_pwork_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_iwalk_ag_work(ptr noundef %mp, ptr noundef %pwork) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pctl.i = getelementptr inbounds %struct.xfs_pwork, ptr %pwork, i32 0, i32 1
  %0 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctl.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %xfs_pwork_want_abort.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

xfs_pwork_want_abort.exit:                        ; preds = %entry
  %error.i.i = getelementptr inbounds %struct.xfs_pwork_ctl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.i.not = icmp eq i32 %3, 0
  br i1 %tobool1.i.i.not, label %xfs_pwork_want_abort.exit.if.end_crit_edge, label %xfs_pwork_want_abort.exit.out_crit_edge

xfs_pwork_want_abort.exit.out_crit_edge:          ; preds = %xfs_pwork_want_abort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

xfs_pwork_want_abort.exit.if.end_crit_edge:       ; preds = %xfs_pwork_want_abort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %xfs_pwork_want_abort.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @xfs_iwalk_alloc(ptr noundef %pwork)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %tp = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %pwork, i32 0, i32 2
  %call4 = tail call i32 @xfs_trans_alloc_empty(ptr noundef %mp, ptr noundef %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end3
  %drop_trans = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %pwork, i32 0, i32 12
  %4 = ptrtoint ptr %drop_trans to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %drop_trans, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %drop_trans, align 8
  %call8 = tail call fastcc i32 @xfs_iwalk_ag(ptr noundef %pwork)
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_trans_cancel(ptr noundef nonnull %6) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  tail call fastcc void @xfs_iwalk_free(ptr noundef %pwork)
  br label %out

out:                                              ; preds = %if.end13, %if.end3.out_crit_edge, %if.end.out_crit_edge, %xfs_pwork_want_abort.exit.out_crit_edge
  %error.0 = phi i32 [ 0, %xfs_pwork_want_abort.exit.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ %call4, %if.end3.out_crit_edge ], [ %call8, %if.end13 ]
  %pag = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %pwork, i32 0, i32 3
  %7 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pag, align 8
  tail call void @xfs_perag_put(ptr noundef %8) #9
  tail call void @kvfree(ptr noundef %pwork) #9
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_pwork_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_pwork_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_pwork_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inobt_walk(ptr noundef %mp, ptr noundef %tp, i64 noundef %startino, i32 noundef %flags, ptr noundef %inobt_walk_fn, i32 noundef %inobt_records, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %iwag = alloca %struct.xfs_iwalk_ag, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %iwag) #9
  %0 = getelementptr inbounds i8, ptr %iwag, i32 56
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %2 = call ptr @memset(ptr %iwag, i32 0, i32 48)
  %mp1 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 1
  %3 = ptrtoint ptr %mp1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mp, ptr %mp1, align 8
  %tp2 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 2
  %4 = ptrtoint ptr %tp2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tp, ptr %tp2, align 4
  %pag = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 3
  %5 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pag, align 8
  %startino3 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 4
  %6 = ptrtoint ptr %startino3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %startino, ptr %startino3, align 8
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %7 = ptrtoint ptr %recs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %recs, align 8
  %sz_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inobt_records)
  %cmp.i = icmp eq i32 %inobt_records, 0
  %8 = tail call i32 @llvm.umax.i32(i32 %inobt_records, i32 2) #9
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 256) #9
  %10 = select i1 %cmp.i, i32 256, i32 %9
  %11 = ptrtoint ptr %sz_recs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sz_recs, align 4
  %nr_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 8
  %12 = ptrtoint ptr %nr_recs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr_recs, align 8
  %iwalk_fn = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 9
  %13 = ptrtoint ptr %iwalk_fn to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %iwalk_fn, align 4
  %inobt_walk_fn4 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 10
  %14 = ptrtoint ptr %inobt_walk_fn4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %inobt_walk_fn, ptr %inobt_walk_fn4, align 8
  %data5 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 11
  %15 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data, ptr %data5, align 4
  %trim_start = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 12
  %16 = ptrtoint ptr %trim_start to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 31, ptr %trim_start, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %17 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %18 to i64
  %shr = lshr i64 %startino, %sh_prom
  %conv = trunc i64 %shr to i32
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %19 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp = icmp ugt i32 %20, %conv
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !43

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 760) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool15.not = icmp ult i32 %flags, 2
  br i1 %tobool15.not, label %cond.end.cond.end26_crit_edge, label %cond.false25, !prof !43

cond.end.cond.end26_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 761) #9
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.end.cond.end26_crit_edge
  %call27 = call fastcc i32 @xfs_iwalk_alloc(ptr noundef nonnull %iwag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end, label %cond.end26.cleanup_crit_edge

cond.end26.cleanup_crit_edge:                     ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end26
  %call29 = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %conv) #9
  %cmp30.not73 = icmp eq ptr %call29, null
  br i1 %cmp30.not73, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %and42 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag12.074 = phi ptr [ %call29, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pag12.074, ptr %pag, align 8
  %call33 = call fastcc i32 @xfs_iwalk_ag(ptr noundef nonnull %iwag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end36:                                         ; preds = %for.body
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag12.074, i32 0, i32 1
  %22 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pag_agno, align 4
  %add = add i32 %23, 1
  %conv37 = zext i32 %add to i64
  %24 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agino_log, align 8
  %sh_prom40 = zext i32 %25 to i64
  %shl = shl i64 %conv37, %sh_prom40
  %26 = ptrtoint ptr %startino3 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shl, ptr %startino3, align 8
  br i1 %tobool43.not, label %if.end45, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end45:                                         ; preds = %if.end36
  %27 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pag, align 8
  %28 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %29, -1
  %30 = ptrtoint ptr %pag12.074 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pag12.074, align 4
  %32 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pag_agno, align 4
  %add.i = add i32 %33, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag12.074) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i71 = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i71, label %if.end45.for.end_crit_edge, label %xfs_perag_next.exit

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

xfs_perag_next.exit:                              ; preds = %if.end45
  %call.i = call ptr @xfs_perag_get(ptr noundef %31, i32 noundef %add.i) #9
  %cmp30.not = icmp eq ptr %call.i, null
  br i1 %cmp30.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %if.end45.for.end_crit_edge, %if.end36.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %pag12.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ null, %if.end45.for.end_crit_edge ], [ %call29, %if.end36.for.end_crit_edge ], [ %pag12.074, %for.body.for.end_crit_edge ], [ null, %xfs_perag_next.exit.for.end_crit_edge ]
  %error.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %if.end45.for.end_crit_edge ], [ 0, %if.end36.for.end_crit_edge ], [ %call33, %for.body.for.end_crit_edge ], [ 0, %xfs_perag_next.exit.for.end_crit_edge ]
  %34 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pag, align 8
  %tobool51.not = icmp eq ptr %35, null
  br i1 %tobool51.not, label %for.end.if.end53_crit_edge, label %if.then52

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_perag_put(ptr noundef %pag12.0.lcssa) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %for.end.if.end53_crit_edge
  call fastcc void @xfs_iwalk_free(ptr noundef nonnull %iwag)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %cond.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end53 ], [ %call27, %cond.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %iwag) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iwalk_ag_start(ptr nocapture noundef %iwag, i32 noundef %agino, ptr noundef %curpp, ptr noundef %agi_bpp, ptr noundef %has_more) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mp1 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 1
  %0 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp1, align 8
  %tp2 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 2
  %2 = ptrtoint ptr %tp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp2, align 4
  %pag3 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 3
  %4 = ptrtoint ptr %pag3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pag3, align 8
  %nr_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 8
  %6 = ptrtoint ptr %nr_recs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nr_recs, align 8
  %call = tail call i32 @xfs_inobt_cur(ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef 4, ptr noundef %curpp, ptr noundef %agi_bpp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agino)
  %cmp = icmp eq i32 %agino, 0
  %7 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curpp, align 4
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @xfs_inobt_lookup(ptr noundef %8, i32 noundef 0, i32 noundef 2, ptr noundef %has_more) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @xfs_inobt_lookup(ptr noundef %8, i32 noundef %agino, i32 noundef 1, ptr noundef %has_more) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %has_more to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %has_more, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %if.end10.out_advance_crit_edge, label %if.end13

if.end10.out_advance_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_advance

if.end13:                                         ; preds = %if.end10
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %11 = ptrtoint ptr %recs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recs, align 8
  %13 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_recs, align 8
  %arrayidx = getelementptr %struct.xfs_inobt_rec_incore, ptr %12, i32 %14
  %15 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %curpp, align 4
  %call15 = tail call i32 @xfs_inobt_get_rec(ptr noundef %16, ptr noundef %arrayidx, ptr noundef %has_more) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %has_more to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %has_more, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp19.not = icmp eq i32 %18, 1
  br i1 %cmp19.not, label %if.end23, label %__here, !prof !43

__here:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 309, ptr noundef blockaddress(@xfs_iwalk_ag_start, %__here)) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %20 to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %21 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %22 to i64
  %shl = shl i64 %conv, %sh_prom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %24, 63
  %conv24 = zext i32 %sub to i64
  %or = or i64 %shl, %conv24
  %lastino = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 5
  %25 = ptrtoint ptr %lastino to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or, ptr %lastino, align 8
  %26 = load i32, ptr %arrayidx, align 8
  %add26 = add i32 %26, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %agino)
  %cmp27.not = icmp ugt i32 %add26, %agino
  br i1 %cmp27.not, label %if.end30, label %if.end23.out_advance_crit_edge

if.end23.out_advance_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_advance

if.end30:                                         ; preds = %if.end23
  %trim_start = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 12
  %27 = ptrtoint ptr %trim_start to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %trim_start, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool31.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xfs_iwalk_adjust_start(i32 noundef %agino, ptr noundef %arrayidx)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %28 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_recs, align 8
  %inc = add i32 %29, 1
  store i32 %inc, ptr %nr_recs, align 8
  %sz_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 7
  %30 = ptrtoint ptr %sz_recs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sz_recs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %31)
  %cmp36 = icmp ult i32 %inc, %31
  br i1 %cmp36, label %if.end33.out_advance_crit_edge, label %cond.false45, !prof !43

if.end33.out_advance_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_advance

cond.false45:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 336) #9
  br label %out_advance

out_advance:                                      ; preds = %cond.false45, %if.end33.out_advance_crit_edge, %if.end23.out_advance_crit_edge, %if.end10.out_advance_crit_edge
  %32 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %curpp, align 4
  %call46 = tail call i32 @xfs_btree_increment(ptr noundef %33, i32 noundef 0, ptr noundef %has_more) #9
  br label %cleanup

cleanup:                                          ; preds = %out_advance, %__here, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ -117, %__here ], [ %call46, %out_advance ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inobt_get_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_increment(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iwalk_ichunk_ra(ptr noundef %mp, ptr nocapture noundef readonly %pag, ptr nocapture noundef readonly %irec) unnamed_addr #3 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #9
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %1 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irec, align 8
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %3 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %4 to i32
  %shr = lshr i32 %2, %conv
  call void @blk_start_plug(ptr noundef nonnull %plug) #9
  %inodes_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 3
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %blocks_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 4
  %5 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %inodes_per_cluster, align 8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %6 = phi i32 [ %.pr, %entry ], [ %16, %if.end.for.body_crit_edge ]
  %i.015 = phi i32 [ 0, %entry ], [ %add4, %if.end.for.body_crit_edge ]
  %agbno.014 = phi i32 [ %shr, %entry ], [ %add, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %6)
  %cmp.i = icmp ugt i32 %6, 63
  br i1 %cmp.i, label %for.body.xfs_inobt_maskn.exit_crit_edge, label %cond.false.i

for.body.xfs_inobt_maskn.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_inobt_maskn.exit

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom.i = zext i32 %6 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %phi.bo.i = xor i64 %notmask.i, -1
  br label %xfs_inobt_maskn.exit

xfs_inobt_maskn.exit:                             ; preds = %cond.false.i, %for.body.xfs_inobt_maskn.exit_crit_edge
  %cond.i = phi i64 [ %phi.bo.i, %cond.false.i ], [ -1, %for.body.xfs_inobt_maskn.exit_crit_edge ]
  %sh_prom1.i = zext i32 %i.015 to i64
  %shl2.i = shl i64 %cond.i, %sh_prom1.i
  %7 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ir_free, align 8
  %neg = xor i64 %8, -1
  %and = and i64 %shl2.i, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %xfs_inobt_maskn.exit.if.end_crit_edge, label %if.then

xfs_inobt_maskn.exit.if.end_crit_edge:            ; preds = %xfs_inobt_maskn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %xfs_inobt_maskn.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pag_agno, align 4
  %11 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blocks_per_cluster, align 4
  call void @xfs_btree_reada_bufs(ptr noundef %mp, i32 noundef %10, i32 noundef %agbno.014, i32 noundef %12, ptr noundef nonnull @xfs_inode_buf_ops) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_inobt_maskn.exit.if.end_crit_edge
  %13 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocks_per_cluster, align 4
  %add = add i32 %14, %agbno.014
  %15 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inodes_per_cluster, align 8
  %add4 = add i32 %16, %i.015
  %cmp = icmp ult i32 %add4, 64
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @blk_finish_plug(ptr noundef nonnull %plug) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iwalk_run_callbacks(ptr noundef %iwag, ptr noundef %curpp, ptr noundef %agi_bpp, ptr noundef %has_more) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mp1 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 1
  %0 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp1, align 8
  %lastino = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 5
  %2 = ptrtoint ptr %lastino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lastino, align 8
  %conv = trunc i64 %3 to i32
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %4 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %5 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %6 = trunc i64 %notmask to i32
  %conv2 = xor i32 %6, -1
  %and = and i32 %conv2, %conv
  %add = add i32 %and, 1
  %nr_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 8
  %7 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_recs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !47

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 364) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %tp = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 2
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  %11 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %curpp, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %cond.end.if.end.i_crit_edge, label %if.then.i

cond.end.if.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_btree_del_cursor(ptr noundef nonnull %12, i32 noundef 0) #9
  %13 = ptrtoint ptr %curpp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %curpp, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end.if.end.i_crit_edge
  %14 = ptrtoint ptr %agi_bpp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agi_bpp, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.end.i.xfs_iwalk_del_inobt.exit_crit_edge, label %if.then2.i

if.end.i.xfs_iwalk_del_inobt.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_iwalk_del_inobt.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_trans_brelse(ptr noundef %10, ptr noundef nonnull %15) #9
  %16 = ptrtoint ptr %agi_bpp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %agi_bpp, align 4
  br label %xfs_iwalk_del_inobt.exit

xfs_iwalk_del_inobt.exit:                         ; preds = %if.then2.i, %if.end.i.xfs_iwalk_del_inobt.exit_crit_edge
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %17 = ptrtoint ptr %recs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %recs, align 8
  %19 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_recs, align 8
  %sub6 = add i32 %20, -1
  %arrayidx = getelementptr %struct.xfs_inobt_rec_incore, ptr %18, i32 %sub6
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 8
  %add7 = add i32 %22, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add7)
  %cmp8.not = icmp ult i32 %add, %add7
  br i1 %cmp8.not, label %cond.false17, label %xfs_iwalk_del_inobt.exit.cond.end18_crit_edge, !prof !47

xfs_iwalk_del_inobt.exit.cond.end18_crit_edge:    ; preds = %xfs_iwalk_del_inobt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end18

cond.false17:                                     ; preds = %xfs_iwalk_del_inobt.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 369) #9
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %xfs_iwalk_del_inobt.exit.cond.end18_crit_edge
  %drop_trans = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 12
  %23 = ptrtoint ptr %drop_trans to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %drop_trans, align 8
  %24 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool19.not = icmp eq i8 %24, 0
  br i1 %tobool19.not, label %cond.end18.if.end_crit_edge, label %if.then

cond.end18.if.end_crit_edge:                      ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_cancel(ptr noundef %26) #9
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %tp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end18.if.end_crit_edge
  %call = tail call fastcc i32 @xfs_iwalk_ag_recs(ptr noundef %iwag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %28 = ptrtoint ptr %nr_recs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %nr_recs, align 8
  %tobool26.not = icmp eq ptr %has_more, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %drop_trans to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load30 = load i8, ptr %drop_trans, align 8
  %30 = and i8 %bf.load30, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool34.not = icmp eq i8 %30, 0
  br i1 %tobool34.not, label %if.end28.if.end41_crit_edge, label %if.then35

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then35:                                        ; preds = %if.end28
  %call37 = tail call i32 @xfs_trans_alloc_empty(ptr noundef %1, ptr noundef %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.if.end41_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %if.end28.if.end41_crit_edge
  %31 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tp, align 4
  %pag = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 3
  %33 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pag, align 8
  %call43 = tail call i32 @xfs_inobt_cur(ptr noundef %1, ptr noundef %32, ptr noundef %34, i32 noundef 4, ptr noundef %curpp, ptr noundef %agi_bpp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %curpp, align 4
  %call47 = tail call i32 @xfs_inobt_lookup(ptr noundef %36, i32 noundef %add, i32 noundef 2, ptr noundef nonnull %has_more) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end41.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end46 ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %call37, %if.then35.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inobt_cur(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inobt_lookup(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iwalk_adjust_start(i32 noundef %agino, ptr nocapture noundef %irec) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irec, align 8
  %sub = sub i32 %agino, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %2 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ir_free, align 8
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc1, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %i.010 to i64
  %shl = shl nuw i64 1, %sh_prom
  %4 = and i64 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.not = icmp eq i64 %4, 0
  br i1 %tobool.not.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ir_freecount, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr %ir_freecount, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc1 = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc1, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub)
  %cmp.i = icmp ugt i32 %sub, 63
  br i1 %cmp.i, label %for.end.xfs_inobt_maskn.exit_crit_edge, label %cond.false.i

for.end.xfs_inobt_maskn.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_inobt_maskn.exit

cond.false.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom.i = zext i32 %sub to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %phi.bo.i = xor i64 %notmask.i, -1
  br label %xfs_inobt_maskn.exit

xfs_inobt_maskn.exit:                             ; preds = %cond.false.i, %for.end.xfs_inobt_maskn.exit_crit_edge
  %cond.i = phi i64 [ %phi.bo.i, %cond.false.i ], [ -1, %for.end.xfs_inobt_maskn.exit_crit_edge ]
  %ir_free2 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %7 = ptrtoint ptr %ir_free2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ir_free2, align 8
  %or = or i64 %8, %cond.i
  store i64 %or, ptr %ir_free2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_reada_bufs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iwalk_ag_recs(ptr nocapture noundef readonly %iwag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mp1 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 1
  %0 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp1, align 8
  %tp2 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 2
  %2 = ptrtoint ptr %tp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp2, align 4
  %nr_recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 8
  %4 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_recs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp85.not = icmp eq i32 %5, 0
  br i1 %cmp85.not, label %entry.cleanup38_crit_edge, label %for.body.lr.ph

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

for.body.lr.ph:                                   ; preds = %entry
  %pag3 = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 3
  %6 = ptrtoint ptr %pag3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pag3, align 8
  %recs = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 6
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %pctl.i = getelementptr inbounds %struct.xfs_pwork, ptr %iwag, i32 0, i32 1
  %inobt_walk_fn = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 10
  %data = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 11
  %iwalk_fn = getelementptr inbounds %struct.xfs_iwalk_ag, ptr %iwag, i32 0, i32 9
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc35.for.body_crit_edge ]
  %8 = ptrtoint ptr %recs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recs, align 8
  %arrayidx = getelementptr %struct.xfs_inobt_rec_incore, ptr %9, i32 %i.086
  %10 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_iwalk_ag_rec(ptr noundef %1, i32 noundef %11, ptr noundef %arrayidx)
  %12 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pctl.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %for.body.if.end_crit_edge, label %xfs_pwork_want_abort.exit

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

xfs_pwork_want_abort.exit:                        ; preds = %for.body
  %error.i.i = getelementptr inbounds %struct.xfs_pwork_ctl, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.i.i.not = icmp eq i32 %15, 0
  br i1 %tobool1.i.i.not, label %xfs_pwork_want_abort.exit.if.end_crit_edge, label %xfs_pwork_want_abort.exit.cleanup38_crit_edge

xfs_pwork_want_abort.exit.cleanup38_crit_edge:    ; preds = %xfs_pwork_want_abort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

xfs_pwork_want_abort.exit.if.end_crit_edge:       ; preds = %xfs_pwork_want_abort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %xfs_pwork_want_abort.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %16 = ptrtoint ptr %inobt_walk_fn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inobt_walk_fn, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %18 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pag_agno, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %call7 = tail call i32 %17(ptr noundef %1, ptr noundef %3, i32 noundef %19, ptr noundef %arrayidx, ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.if.end11_crit_edge, label %if.then4.cleanup38_crit_edge

if.then4.cleanup38_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %22 = ptrtoint ptr %iwalk_fn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iwalk_fn, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %if.end11.for.inc35_crit_edge, label %for.cond15.preheader

if.end11.for.inc35_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35

for.cond15.preheader:                             ; preds = %if.end11
  %ir_free = getelementptr %struct.xfs_inobt_rec_incore, ptr %9, i32 %i.086, i32 4
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.cond15.preheader
  %j.084 = phi i32 [ 0, %for.cond15.preheader ], [ %inc, %for.inc.for.body17_crit_edge ]
  %24 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pctl.i, align 4
  %tobool.not.i.i75 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i75, label %for.body17.if.end21_crit_edge, label %xfs_pwork_want_abort.exit79

for.body17.if.end21_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

xfs_pwork_want_abort.exit79:                      ; preds = %for.body17
  %error.i.i76 = getelementptr inbounds %struct.xfs_pwork_ctl, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %error.i.i76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error.i.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.i.i77.not = icmp eq i32 %27, 0
  br i1 %tobool1.i.i77.not, label %xfs_pwork_want_abort.exit79.if.end21_crit_edge, label %xfs_pwork_want_abort.exit79.cleanup38_crit_edge

xfs_pwork_want_abort.exit79.cleanup38_crit_edge:  ; preds = %xfs_pwork_want_abort.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

xfs_pwork_want_abort.exit79.if.end21_crit_edge:   ; preds = %xfs_pwork_want_abort.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %xfs_pwork_want_abort.exit79.if.end21_crit_edge, %for.body17.if.end21_crit_edge
  %sh_prom = zext i32 %j.084 to i64
  %shl = shl nuw i64 1, %sh_prom
  %28 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ir_free, align 8
  %and = and i64 %29, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool22.not = icmp eq i64 %and, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end24:                                         ; preds = %if.end21
  %30 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %31 to i64
  %32 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %agino_log, align 8
  %sh_prom26 = zext i32 %33 to i64
  %shl27 = shl i64 %conv, %sh_prom26
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 8
  %add = add i32 %35, %j.084
  %conv28 = zext i32 %add to i64
  %or = or i64 %shl27, %conv28
  %36 = ptrtoint ptr %iwalk_fn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iwalk_fn, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %call31 = tail call i32 %37(ptr noundef %1, ptr noundef %3, i64 noundef %or, ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end24.for.inc_crit_edge, label %if.end24.cleanup38_crit_edge

if.end24.cleanup38_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end24.for.inc_crit_edge, %if.end21.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.084, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.for.inc35_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.inc.for.inc35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35

for.inc35:                                        ; preds = %for.inc.for.inc35_crit_edge, %if.end11.for.inc35_crit_edge
  %inc36 = add nuw i32 %i.086, 1
  %40 = ptrtoint ptr %nr_recs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_recs, align 8
  %cmp = icmp ult i32 %inc36, %41
  br i1 %cmp, label %for.inc35.for.body_crit_edge, label %for.inc35.cleanup38_crit_edge

for.inc35.cleanup38_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup38:                                        ; preds = %for.inc35.cleanup38_crit_edge, %if.end24.cleanup38_crit_edge, %xfs_pwork_want_abort.exit79.cleanup38_crit_edge, %if.then4.cleanup38_crit_edge, %xfs_pwork_want_abort.exit.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup38_crit_edge ], [ 0, %xfs_pwork_want_abort.exit79.cleanup38_crit_edge ], [ %call31, %if.end24.cleanup38_crit_edge ], [ 0, %for.inc35.cleanup38_crit_edge ], [ 0, %xfs_pwork_want_abort.exit.cleanup38_crit_edge ], [ %call7, %if.then4.cleanup38_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iwalk_ag_rec(ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iwalk_ag_rec, i32 0, i32 1), ptr blockaddress(@trace_xfs_iwalk_ag_rec, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %call42 = tail call i32 @__traceiter_xfs_iwalk_ag_rec(ptr noundef null, ptr noundef %mp, i32 noundef %agno, ptr noundef %irec) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !33) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !33) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iwalk_ag_rec, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iwalk_ag_rec, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_iwalk_ag_rec.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_iwalk_ag_rec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 3772, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !33) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iwalk_ag_rec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #4 = { argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_iwalk.c", i32 575, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_iwalk.c", i32 576, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_iwalk.c", i32 656, i32 55}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_iwalk.c", i32 761, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_iwalk.c", i32 158, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_iwalk.c", i32 415, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_iwalk.c", i32 436, i32 7}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_iwalk.c", i32 474, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_iwalk.c", i32 309, i32 6}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_iwalk.c", i32 336, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_iwalk.c", i32 364, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_iwalk.c", i32 369, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trace.h", i32 3753, i32 1}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 4001, i32 1}
!46 = !{i64 2166303946}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2148636256, i64 2148636282, i64 2148636311, i64 2148636345, i64 2148636376, i64 2148636399}
!49 = !{i64 2166301327}
!50 = !{i64 2148264244, i64 2148264249, i64 2148264262, i64 2148264306, i64 2148264340, i64 2148264361}
!51 = !{i64 2165641942}
!52 = !{i64 2165642165}
!53 = !{i64 2149966337}
!54 = !{i64 2149967373}
