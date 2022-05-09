; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_attr_inactive.c_pt.bc'
source_filename = "../fs/xfs/xfs_attr_inactive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_da3_icnode_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_da_node_entry = type { i32, i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32, i32, i16, i16, i16, i32, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { i16, i16 }
%struct.xfs_attr3_leafblock = type { %struct.xfs_attr3_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_attr3_leaf_hdr = type { %struct.xfs_da3_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map], i32 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_attr_leaf_map = type { i16, i16 }
%struct.xfs_attr_leaf_entry = type { i32, i16, i8, i8 }
%struct.xfs_attr_leafblock = type { %struct.xfs_attr_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_attr_leaf_hdr = type { %struct.xfs_da_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map] }
%struct.xfs_attr_leaf_name_remote = type { i32, i32, i8, [1 x i8] }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"! XFS_NOT_DQATTACHED(mp, dp)\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/xfs/xfs_attr_inactive.c\00", [37 x i8] zeroinitializer }, align 32
@xfs_ifork_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmap != 1\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 15342, i64 16062, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 16, i64 15342, i64 16062, i64 64494, i64 65214]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 338, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [30 x i8] c"../fs/xfs/xfs_attr_inactive.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 56, i32 7 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_inactive(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  %trans = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trans) #4
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %trans, align 4, !annotation !14
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 60
  %3 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_qflags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 1
  %5 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_udquot, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge, !prof !15

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and2 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true4

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 2
  %7 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_gdquot, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %land.lhs.true4.cond.false_crit_edge, label %land.lhs.true4.lor.rhs_crit_edge, !prof !15

land.lhs.true4.lor.rhs_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

lor.rhs:                                          ; preds = %land.lhs.true4.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %and7 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.rhs.cond.end_crit_edge, label %land.rhs

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

land.rhs:                                         ; preds = %lor.rhs
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 3
  %9 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_pdquot, align 4
  %cmp9.not = icmp eq ptr %10, null
  br i1 %cmp9.not, label %land.rhs.cond.false_crit_edge, label %land.rhs.cond.end_crit_edge, !prof !15

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 338) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge, %lor.rhs.cond.end_crit_edge
  tail call void @xfs_ilock(ptr noundef %dp, i32 noundef 8) #4
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 23
  %11 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp13.not = icmp eq i8 %12, 0
  br i1 %cmp13.not, label %cond.end.out_destroy_fork_crit_edge, label %if.end

cond.end.out_destroy_fork_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_destroy_fork

if.end:                                           ; preds = %cond.end
  tail call void @xfs_iunlock(ptr noundef %dp, i32 noundef 8) #4
  %tr_attrinval = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 65, i32 14
  %call = call i32 @xfs_trans_alloc(ptr noundef %2, ptr noundef %tr_attrinval, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %trans) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.out_destroy_fork_crit_edge

if.end.out_destroy_fork_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_destroy_fork

if.end17:                                         ; preds = %if.end
  call void @xfs_ilock(ptr noundef %dp, i32 noundef 4) #4
  %13 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp20.not = icmp eq i8 %14, 0
  br i1 %cmp20.not, label %if.end17.out_cancel_crit_edge, label %if.end23

if.end17.out_cancel_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cancel

if.end23:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans, align 4
  call void @xfs_trans_ijoin(ptr noundef %16, ptr noundef %dp, i32 noundef 0) #4
  %call24 = call i32 @xfs_inode_hasattr(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.end39_crit_edge, label %land.lhs.true26

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

land.lhs.true26:                                  ; preds = %if.end23
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 6
  %17 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp28.not = icmp eq i8 %20, 1
  br i1 %cmp28.not, label %land.lhs.true26.if.end39_crit_edge, label %if.then30

land.lhs.true26.if.end39_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then30:                                        ; preds = %land.lhs.true26
  %call31 = call fastcc i32 @xfs_attr3_root_inactive(ptr noundef nonnull %trans, ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then30.out_cancel_crit_edge

if.then30.out_cancel_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cancel

if.end34:                                         ; preds = %if.then30
  %call.i = call i32 @xfs_itruncate_extents_flags(ptr noundef nonnull %trans, ptr noundef %dp, i32 noundef 1, i64 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.end34.out_cancel_crit_edge

if.end34.out_cancel_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cancel

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.end39:                                         ; preds = %if.end34.if.end39_crit_edge, %land.lhs.true26.if.end39_crit_edge, %if.end23.if.end39_crit_edge
  %21 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trans, align 4
  call void @xfs_attr_fork_remove(ptr noundef %dp, ptr noundef %22) #4
  %23 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans, align 4
  %call40 = call i32 @xfs_trans_commit(ptr noundef %24) #4
  br label %cleanup.sink.split

out_cancel:                                       ; preds = %if.end34.out_cancel_crit_edge, %if.then30.out_cancel_crit_edge, %if.end17.out_cancel_crit_edge
  %error.0 = phi i32 [ %call31, %if.then30.out_cancel_crit_edge ], [ %call.i, %if.end34.out_cancel_crit_edge ], [ 0, %if.end17.out_cancel_crit_edge ]
  %25 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans, align 4
  call void @xfs_trans_cancel(ptr noundef %26) #4
  br label %out_destroy_fork

out_destroy_fork:                                 ; preds = %out_cancel, %if.end.out_destroy_fork_crit_edge, %cond.end.out_destroy_fork_crit_edge
  %tobool48.not = phi i1 [ true, %if.end.out_destroy_fork_crit_edge ], [ false, %cond.end.out_destroy_fork_crit_edge ], [ false, %out_cancel ]
  %lock_mode.0 = phi i32 [ 0, %if.end.out_destroy_fork_crit_edge ], [ 8, %cond.end.out_destroy_fork_crit_edge ], [ 4, %out_cancel ]
  %error.1 = phi i32 [ %call, %if.end.out_destroy_fork_crit_edge ], [ 0, %cond.end.out_destroy_fork_crit_edge ], [ %error.0, %out_cancel ]
  %i_afp41 = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 6
  %27 = ptrtoint ptr %i_afp41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_afp41, align 8
  %tobool42.not = icmp eq ptr %28, null
  br i1 %tobool42.not, label %out_destroy_fork.if.end47_crit_edge, label %if.then43

out_destroy_fork.if.end47_crit_edge:              ; preds = %out_destroy_fork
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then43:                                        ; preds = %out_destroy_fork
  call void @__sanitizer_cov_trace_pc() #6
  call void @xfs_idestroy_fork(ptr noundef nonnull %28) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %29 = load ptr, ptr @xfs_ifork_cache, align 4
  %30 = ptrtoint ptr %i_afp41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_afp41, align 8
  call void @kmem_cache_free(ptr noundef %29, ptr noundef %31) #4
  %32 = ptrtoint ptr %i_afp41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %i_afp41, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %out_destroy_fork.if.end47_crit_edge
  br i1 %tobool48.not, label %if.end47.cleanup_crit_edge, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end47.cleanup.sink.split_crit_edge, %if.end39
  %lock_mode.0.sink = phi i32 [ 4, %if.end39 ], [ %lock_mode.0, %if.end47.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call40, %if.end39 ], [ %error.1, %if.end47.cleanup.sink.split_crit_edge ]
  call void @xfs_iunlock(ptr noundef %dp, i32 noundef %lock_mode.0.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end47.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end47.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trans) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inode_hasattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr3_root_inactive(ptr noundef %trans, ptr noundef %dp) #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #4
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !14
  %3 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans, align 4
  %call = call i32 @xfs_da3_node_read(ptr noundef %4, ptr noundef %dp, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_maps.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 16
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %magic, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %sw.epilog.thread [
    i16 -322, label %if.end.sw.bb_crit_edge
    i16 16062, label %if.end.sw.bb_crit_edge44
    i16 -1042, label %if.end.sw.bb3_crit_edge
    i16 15342, label %if.end.sw.bb3_crit_edge45
  ]

if.end.sw.bb3_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

if.end.sw.bb_crit_edge44:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge44
  %call2 = call fastcc i32 @xfs_attr3_node_inactive(ptr noundef %trans, ptr noundef %dp, ptr noundef %6, i32 noundef 1)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge45
  %call4 = call fastcc i32 @xfs_attr3_leaf_inactive(ptr noundef %trans, ptr noundef %dp, ptr noundef %6)
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  call void @__xfs_buf_mark_corrupt(ptr noundef %6, ptr noundef blockaddress(@xfs_attr3_root_inactive, %sw.epilog.thread)) #4
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans, align 4
  %18 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %17, ptr noundef %19) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %error.0 = phi i32 [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool5.not = icmp eq i32 %error.0, 0
  br i1 %tobool5.not, label %if.end7, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  %20 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_ddev_targp, align 8
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_attr_geo, align 32
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fsbcount, align 4
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %28 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %m_blkbb_log, align 1
  %conv8 = zext i8 %29 to i32
  %shl = shl i32 %27, %conv8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #4
  %30 = getelementptr inbounds i8, ptr %map.i, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %30, align 8
  %32 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %10, ptr %map.i, align 8
  store i32 %shl, ptr %30, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %21, ptr noundef %23, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %33 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bp, align 4
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trans, align 4
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  call void @xfs_trans_brelse(ptr noundef %38, ptr noundef %34) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  call void @xfs_trans_binval(ptr noundef %38, ptr noundef %34) #4
  %call16 = call i32 @xfs_trans_roll_inode(ptr noundef %trans, ptr noundef %dp) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.end7.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %if.then14 ], [ %call16, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ %error.0, %sw.epilog.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -117, %sw.epilog.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_attr_fork_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_idestroy_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_node_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr3_node_inactive(ptr noundef %trans, ptr noundef %dp, ptr noundef %bp, i32 noundef %level) #3 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp.addr = alloca ptr, align 4
  %child_bp = alloca ptr, align 4
  %ichdr = alloca %struct.xfs_da3_icnode_hdr, align 4
  %phdr = alloca %struct.xfs_da3_icnode_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bp, ptr %bp.addr, align 4
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_bp) #4
  %3 = ptrtoint ptr %child_bp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %child_bp, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ichdr) #4
  %4 = call ptr @memset(ptr %ichdr, i32 255, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %level)
  %cmp = icmp sgt i32 %level, 5
  br i1 %cmp, label %__here, label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  tail call void @__xfs_buf_mark_corrupt(ptr noundef %bp, ptr noundef blockaddress(@xfs_attr3_node_inactive, %__here)) #4
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %7 = ptrtoint ptr %bp.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bp.addr, align 4
  tail call void @xfs_trans_brelse(ptr noundef %6, ptr noundef %8) #4
  br label %cleanup51

if.end:                                           ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %9 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_addr, align 4
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %2, ptr noundef nonnull %ichdr, ptr noundef %10) #4
  %11 = ptrtoint ptr %bp.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp.addr, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_maps.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %count = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %ichdr, i32 0, i32 3
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trans, align 4
  call void @xfs_trans_brelse(ptr noundef %20, ptr noundef %12) #4
  br label %cleanup51

if.end3:                                          ; preds = %if.end
  %btree = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %ichdr, i32 0, i32 5
  %21 = ptrtoint ptr %btree to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btree, align 4
  %before = getelementptr inbounds %struct.xfs_da_node_entry, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %before, align 4
  %25 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans, align 4
  call void @xfs_trans_brelse(ptr noundef %26, ptr noundef %12) #4
  %add = add nsw i32 %level, 1
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 13
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 7
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 28
  %27 = getelementptr inbounds i8, ptr %map.i, i32 8
  %btree42 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %phdr, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %if.end46.for.cond_crit_edge, %if.end3
  %child_fsb.0 = phi i32 [ %24, %if.end3 ], [ %child_fsb.2, %if.end46.for.cond_crit_edge ]
  %i.0 = phi i32 [ 0, %if.end3 ], [ %add30, %if.end46.for.cond_crit_edge ]
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count, align 2
  %conv = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv)
  %cmp5 = icmp ult i32 %i.0, %conv
  br i1 %cmp5, label %for.body, label %for.cond.cleanup51_crit_edge

for.cond.cleanup51_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

for.body:                                         ; preds = %for.cond
  %30 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans, align 4
  %call7 = call i32 @xfs_da3_node_read(ptr noundef %31, ptr noundef %dp, i32 noundef %child_fsb.0, ptr noundef nonnull %child_bp, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.cleanup51_crit_edge

for.body.cleanup51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.end10:                                         ; preds = %for.body
  %32 = ptrtoint ptr %child_bp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %child_bp, align 4
  %b_maps.i96 = getelementptr inbounds %struct.xfs_buf, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %b_maps.i96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_maps.i96, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %b_addr12 = getelementptr inbounds %struct.xfs_buf, ptr %33, i32 0, i32 16
  %38 = ptrtoint ptr %b_addr12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_addr12, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %magic, align 4
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %41, label %sw.epilog.thread [
    i16 -322, label %if.end10.sw.bb_crit_edge
    i16 16062, label %if.end10.sw.bb_crit_edge133
    i16 -1042, label %if.end10.sw.bb15_crit_edge
    i16 15342, label %if.end10.sw.bb15_crit_edge134
  ]

if.end10.sw.bb15_crit_edge134:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

if.end10.sw.bb15_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

if.end10.sw.bb_crit_edge133:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge133
  %call14 = call fastcc i32 @xfs_attr3_node_inactive(ptr noundef %trans, ptr noundef %dp, ptr noundef %33, i32 noundef %add)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end10.sw.bb15_crit_edge, %if.end10.sw.bb15_crit_edge134
  %call16 = call fastcc i32 @xfs_attr3_leaf_inactive(ptr noundef %trans, ptr noundef %dp, ptr noundef %33)
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  call void @__xfs_buf_mark_corrupt(ptr noundef %33, ptr noundef blockaddress(@xfs_attr3_node_inactive, %sw.epilog.thread)) #4
  %43 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trans, align 4
  %45 = ptrtoint ptr %child_bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %child_bp, align 4
  call void @xfs_trans_brelse(ptr noundef %44, ptr noundef %46) #4
  br label %cleanup51

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb
  %error.0 = phi i32 [ %call16, %sw.bb15 ], [ %call14, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool19.not = icmp eq i32 %error.0, 0
  br i1 %tobool19.not, label %if.end21, label %sw.epilog.cleanup51_crit_edge

sw.epilog.cleanup51_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.end21:                                         ; preds = %sw.epilog
  %47 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans, align 4
  %49 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m_ddev_targp, align 8
  %51 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %m_attr_geo, align 32
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fsbcount, align 4
  %55 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %m_blkbb_log, align 1
  %conv22 = zext i8 %56 to i32
  %shl = shl i32 %54, %conv22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #4
  %57 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 -1, ptr %27, align 8
  %58 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %37, ptr %map.i, align 8
  store i32 %shl, ptr %27, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %48, ptr noundef %50, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %child_bp) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup51_crit_edge

if.end21.cleanup51_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.end26:                                         ; preds = %if.end21
  %59 = ptrtoint ptr %bp.addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bp.addr, align 4
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %60, i32 0, i32 31
  %61 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool27.not = icmp eq i32 %62, 0
  %63 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %trans, align 4
  %65 = ptrtoint ptr %child_bp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %child_bp, align 4
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @xfs_trans_brelse(ptr noundef %64, ptr noundef %66) #4
  br label %cleanup51

if.end29:                                         ; preds = %if.end26
  call void @xfs_trans_binval(ptr noundef %64, ptr noundef %66) #4
  %add30 = add nuw nsw i32 %i.0, 1
  %67 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %count, align 2
  %conv32 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %conv32)
  %cmp33 = icmp ult i32 %add30, %conv32
  br i1 %cmp33, label %if.then35, label %if.end29.if.end46_crit_edge

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then35:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %phdr) #4
  %69 = call ptr @memset(ptr %phdr, i32 255, i32 20)
  %70 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trans, align 4
  %call36 = call i32 @xfs_da3_node_read_mapped(ptr noundef %71, ptr noundef %dp, i64 noundef %16, ptr noundef nonnull %bp.addr, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dp, align 8
  %74 = ptrtoint ptr %bp.addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bp.addr, align 4
  %b_addr41 = getelementptr inbounds %struct.xfs_buf, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %b_addr41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_addr41, align 4
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %73, ptr noundef nonnull %phdr, ptr noundef %77) #4
  %78 = ptrtoint ptr %btree42 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btree42, align 4
  %before45 = getelementptr %struct.xfs_da_node_entry, ptr %79, i32 %add30, i32 1
  %80 = ptrtoint ptr %before45 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %before45, align 4
  %82 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans, align 4
  %84 = ptrtoint ptr %bp.addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bp.addr, align 4
  call void @xfs_trans_brelse(ptr noundef %83, ptr noundef %85) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %phdr) #4
  br label %if.end46

cleanup:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %phdr) #4
  br label %cleanup51

if.end46:                                         ; preds = %cleanup.thread, %if.end29.if.end46_crit_edge
  %child_fsb.2 = phi i32 [ %child_fsb.0, %if.end29.if.end46_crit_edge ], [ %81, %cleanup.thread ]
  %call47 = call i32 @xfs_trans_roll_inode(ptr noundef %trans, ptr noundef %dp) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.for.cond_crit_edge, label %if.end46.cleanup51_crit_edge

if.end46.cleanup51_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.end46.for.cond_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

cleanup51:                                        ; preds = %if.end46.cleanup51_crit_edge, %cleanup, %if.then28, %if.end21.cleanup51_crit_edge, %sw.epilog.cleanup51_crit_edge, %sw.epilog.thread, %for.body.cleanup51_crit_edge, %for.cond.cleanup51_crit_edge, %if.then2, %__here
  %retval.3 = phi i32 [ -117, %__here ], [ %62, %if.then28 ], [ %call36, %cleanup ], [ 0, %if.then2 ], [ -117, %sw.epilog.thread ], [ 0, %for.cond.cleanup51_crit_edge ], [ %call47, %if.end46.cleanup51_crit_edge ], [ %call.i, %if.end21.cleanup51_crit_edge ], [ %error.0, %sw.epilog.cleanup51_crit_edge ], [ %call7, %for.body.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ichdr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_bp) #4
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr3_leaf_inactive(ptr nocapture noundef readonly %trans, ptr noundef %dp, ptr noundef %bp) unnamed_addr #3 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #4
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %1 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_attr_geo, align 32
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %6, ptr noundef nonnull %ichdr, ptr noundef %4) #4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %4, i32 0, i32 2
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %4, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %4, i32 0, i32 1
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp38.not = icmp eq i16 %8, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %9 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %10)
  %cmp.i = icmp eq i16 %10, 15342
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %entry1.039 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %retval.0.i, %for.body.preheader ]
  %nameidx = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry1.039, i32 0, i32 1
  %11 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nameidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry1.039, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 2
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %17)
  %cmp.i.i.i = icmp eq i16 %17, 15342
  %retval.0.i.i.i = select i1 %cmp.i.i.i, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i, i32 %i.040, i32 1
  %18 = ptrtoint ptr %nameidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nameidx.i.i, align 4
  %idxprom.i.i = zext i16 %19 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %4, i32 %idxprom.i.i
  %20 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not = icmp eq i32 %21, 0
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.end8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %22 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dp, align 8
  %valuelen = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %valuelen, align 4
  %call9 = call i32 @xfs_attr3_rmt_blocks(ptr noundef %23, i32 noundef %25) #4
  %26 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.i.i, align 4
  %call11 = call fastcc i32 @xfs_attr3_rmt_stale(ptr noundef %dp, i32 noundef %27, i32 noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end8.for.inc_crit_edge, label %if.end8.cleanup15_crit_edge

if.end8.cleanup15_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry1.039, i32 1
  %inc = add nuw nsw i32 %i.040, 1
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count, align 2
  %conv = zext i16 %29 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %30 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans, align 4
  call void @xfs_trans_brelse(ptr noundef %31, ptr noundef %bp) #4
  br label %cleanup15

cleanup15:                                        ; preds = %for.end, %if.end8.cleanup15_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call11, %if.end8.cleanup15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_binval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da3_node_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_node_read_mapped(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_attr3_leaf_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_rmt_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr3_rmt_stale(ptr noundef %dp, i32 noundef %blkno, i32 noundef %blkcnt) #3 align 64 {
entry:
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #4
  %0 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkcnt)
  %cmp28 = icmp sgt i32 %blkcnt, 0
  br i1 %cmp28, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %blkcnt.addr.030 = phi i32 [ %blkcnt, %while.body.lr.ph ], [ %conv16, %if.end11.while.body_crit_edge ]
  %blkno.addr.029 = phi i32 [ %blkno, %while.body.lr.ph ], [ %conv13, %if.end11.while.body_crit_edge ]
  %1 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nmap, align 4
  %conv = zext i32 %blkno.addr.029 to i64
  %conv127 = zext i32 %blkcnt.addr.030 to i64
  %call = call i32 @xfs_bmapi_read(ptr noundef %dp, i64 noundef %conv, i64 noundef %conv127, ptr noundef nonnull %map, ptr noundef nonnull %nmap, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.not = icmp eq i32 %3, 1
  br i1 %cmp2.not, label %if.end7, label %__here, !prof !19

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 8
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  call void @xfs_corruption_error(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 56, ptr noundef blockaddress(@xfs_attr3_rmt_stale, %__here)) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @xfs_attr_rmtval_stale(ptr noundef %dp, ptr noundef nonnull %map, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %br_blockcount, align 8
  %8 = trunc i64 %7 to i32
  %conv13 = add i32 %blkno.addr.029, %8
  %conv16 = sub i32 %blkcnt.addr.030, %8
  %cmp = icmp sgt i32 %conv16, 0
  br i1 %cmp, label %if.end11.while.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %__here, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %entry.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_rmtval_stale(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_itruncate_extents_flags(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_attr_inactive.c", i32 338, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_attr_inactive.c", i32 56, i32 7}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2155805377}
!17 = !{i64 2155804403}
!18 = !{i64 2155804855}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2155804006}
