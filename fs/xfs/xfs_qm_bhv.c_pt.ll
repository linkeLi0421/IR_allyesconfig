; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_qm_bhv.c_pt.bc'
source_filename = "../fs/xfs/xfs_qm_bhv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
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
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"changing quota state\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"please mount with%s%s%s%s.\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"out quota\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" usrquota\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" grpquota\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" prjquota\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 100, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 101, i32 16 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 102, i32 20 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 102, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 103, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 104, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [23 x i8] c"../fs/xfs/xfs_qm_bhv.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 105, i32 20 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_statvfs(ptr nocapture noundef readonly %ip, ptr nocapture noundef %statp) local_unnamed_addr #0 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #5
  %2 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !23
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %3 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_projid, align 8
  %call = call i32 @xfs_qm_dqget(ptr noundef %1, i32 noundef %4, i8 noundef zeroext 2, i1 noundef zeroext false, ptr noundef nonnull %dqp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dqp, align 4
  call fastcc void @xfs_fill_statvfs_from_dquot(ptr noundef %statp, ptr noundef %6)
  call void @xfs_qm_dqput(ptr noundef %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqget(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_fill_statvfs_from_dquot(ptr nocapture noundef %statp, ptr nocapture noundef readonly %dqp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cond.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.end:                                         ; preds = %entry
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hardlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool4.not = icmp eq i64 %3, 0
  br i1 %tobool4.not, label %cond.end.if.end_crit_edge, label %cond.end.land.lhs.true_crit_edge

cond.end.land.lhs.true_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %cond74 = phi i64 [ %3, %cond.end.land.lhs.true_crit_edge ], [ %1, %entry.land.lhs.true_crit_edge ]
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 2
  %4 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %cond74)
  %cmp = icmp ugt i64 %5, %cond74
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %cond74, ptr %f_blocks, align 8
  %7 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %q_blk, align 8
  %9 = tail call i64 @llvm.usub.sat.i64(i64 %cond74, i64 %8)
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 4
  %10 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %f_bavail, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 3
  %11 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %9, ptr %f_bfree, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %q_ino = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10
  %softlimit16 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %softlimit16 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %softlimit16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool17.not = icmp eq i64 %13, 0
  br i1 %tobool17.not, label %cond.end24, label %if.end.land.lhs.true27_crit_edge

if.end.land.lhs.true27_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true27

cond.end24:                                       ; preds = %if.end
  %hardlimit23 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %hardlimit23 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hardlimit23, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool26.not = icmp eq i64 %15, 0
  br i1 %tobool26.not, label %cond.end24.if.end43_crit_edge, label %cond.end24.land.lhs.true27_crit_edge

cond.end24.land.lhs.true27_crit_edge:             ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true27

cond.end24.if.end43_crit_edge:                    ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true27:                                  ; preds = %cond.end24.land.lhs.true27_crit_edge, %if.end.land.lhs.true27_crit_edge
  %cond2577 = phi i64 [ %15, %cond.end24.land.lhs.true27_crit_edge ], [ %13, %if.end.land.lhs.true27_crit_edge ]
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 5
  %16 = ptrtoint ptr %f_files to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %f_files, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %cond2577)
  %cmp28 = icmp ugt i64 %17, %cond2577
  br i1 %cmp28, label %if.then29, label %land.lhs.true27.if.end43_crit_edge

land.lhs.true27.if.end43_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %cond2577, ptr %f_files, align 8
  %19 = ptrtoint ptr %q_ino to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %q_ino, align 8
  %21 = tail call i64 @llvm.usub.sat.i64(i64 %cond2577, i64 %20)
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %statp, i32 0, i32 6
  %22 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %f_ffree, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then29, %land.lhs.true27.if.end43_crit_edge, %cond.end24.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_newmount(ptr noundef %mp, ptr nocapture noundef writeonly %needquotamount, ptr nocapture noundef writeonly %quotaflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.land.lhs.true18.critedge_crit_edge, label %land.end

entry.land.lhs.true18.critedge_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true18.critedge

land.end:                                         ; preds = %entry
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %2 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sb_qflags, align 16
  %4 = and i16 %3, 73
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %land.end.land.lhs.true18.critedge_crit_edge, label %if.end

land.end.land.lhs.true18.critedge_crit_edge:      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true18.critedge

if.end:                                           ; preds = %land.end
  %5 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sb_qflags, align 16
  %conv4 = zext i16 %6 to i32
  %and5 = and i32 %conv4, 1
  %and9 = and i32 %conv4, 8
  %and13 = and i32 %conv4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %phi.cmp = icmp eq i32 %and5, 0
  br i1 %phi.cmp, label %if.end.land.lhs.true18.critedge_crit_edge, label %land.lhs.true

if.end.land.lhs.true18.critedge_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true18.critedge

land.lhs.true:                                    ; preds = %if.end
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %7 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_qflags, align 4
  %and15 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true.land.lhs.true46_crit_edge, label %land.lhs.true.lor.lhs.false22_crit_edge

land.lhs.true.lor.lhs.false22_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false22

land.lhs.true.land.lhs.true46_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

land.lhs.true18.critedge:                         ; preds = %if.end.land.lhs.true18.critedge_crit_edge, %land.end.land.lhs.true18.critedge_crit_edge, %entry.land.lhs.true18.critedge_crit_edge
  %pquotaondisk.0146 = phi i32 [ %and9, %if.end.land.lhs.true18.critedge_crit_edge ], [ 0, %land.end.land.lhs.true18.critedge_crit_edge ], [ 0, %entry.land.lhs.true18.critedge_crit_edge ]
  %gquotaondisk.0143 = phi i32 [ %and13, %if.end.land.lhs.true18.critedge_crit_edge ], [ 0, %land.end.land.lhs.true18.critedge_crit_edge ], [ 0, %entry.land.lhs.true18.critedge_crit_edge ]
  %9 = phi i1 [ true, %if.end.land.lhs.true18.critedge_crit_edge ], [ false, %land.end.land.lhs.true18.critedge_crit_edge ], [ false, %entry.land.lhs.true18.critedge_crit_edge ]
  %m_qflags19 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %10 = ptrtoint ptr %m_qflags19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_qflags19, align 4
  %and20 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true18.critedge.lor.lhs.false22_crit_edge, label %land.lhs.true18.critedge.land.lhs.true46_crit_edge

land.lhs.true18.critedge.land.lhs.true46_crit_edge: ; preds = %land.lhs.true18.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

land.lhs.true18.critedge.lor.lhs.false22_crit_edge: ; preds = %land.lhs.true18.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true18.critedge.lor.lhs.false22_crit_edge, %land.lhs.true.lor.lhs.false22_crit_edge
  %pquotaondisk.0145 = phi i32 [ %and9, %land.lhs.true.lor.lhs.false22_crit_edge ], [ %pquotaondisk.0146, %land.lhs.true18.critedge.lor.lhs.false22_crit_edge ]
  %gquotaondisk.0142 = phi i32 [ %and13, %land.lhs.true.lor.lhs.false22_crit_edge ], [ %gquotaondisk.0143, %land.lhs.true18.critedge.lor.lhs.false22_crit_edge ]
  %uquotaondisk.0139 = phi i1 [ false, %land.lhs.true.lor.lhs.false22_crit_edge ], [ true, %land.lhs.true18.critedge.lor.lhs.false22_crit_edge ]
  %12 = phi i1 [ true, %land.lhs.true.lor.lhs.false22_crit_edge ], [ %9, %land.lhs.true18.critedge.lor.lhs.false22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gquotaondisk.0142)
  %tobool23.not = icmp eq i32 %gquotaondisk.0142, 0
  %m_qflags31 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %13 = ptrtoint ptr %m_qflags31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_qflags31, align 4
  %and32 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool23.not, label %land.lhs.true30.critedge, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %lor.lhs.false22
  br i1 %tobool33.not, label %land.lhs.true24.land.lhs.true46_crit_edge, label %land.lhs.true24.lor.lhs.false34_crit_edge

land.lhs.true24.lor.lhs.false34_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false34

land.lhs.true24.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

land.lhs.true30.critedge:                         ; preds = %lor.lhs.false22
  br i1 %tobool33.not, label %land.lhs.true30.critedge.lor.lhs.false34_crit_edge, label %land.lhs.true30.critedge.land.lhs.true46_crit_edge

land.lhs.true30.critedge.land.lhs.true46_crit_edge: ; preds = %land.lhs.true30.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

land.lhs.true30.critedge.lor.lhs.false34_crit_edge: ; preds = %land.lhs.true30.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true30.critedge.lor.lhs.false34_crit_edge, %land.lhs.true24.lor.lhs.false34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pquotaondisk.0145)
  %tobool35.not = icmp eq i32 %pquotaondisk.0145, 0
  %m_qflags43 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %15 = ptrtoint ptr %m_qflags43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_qflags43, align 4
  %and44 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool35.not, label %land.lhs.true42.critedge, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %lor.lhs.false34
  br i1 %tobool45.not, label %land.lhs.true36.land.lhs.true46_crit_edge, label %land.lhs.true36.if.end57_crit_edge

land.lhs.true36.if.end57_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true36.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

land.lhs.true42.critedge:                         ; preds = %lor.lhs.false34
  br i1 %tobool45.not, label %land.lhs.true42.critedge.if.end57_crit_edge, label %land.lhs.true42.critedge.land.lhs.true46_crit_edge

land.lhs.true42.critedge.land.lhs.true46_crit_edge: ; preds = %land.lhs.true42.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

land.lhs.true42.critedge.if.end57_crit_edge:      ; preds = %land.lhs.true42.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true46:                                  ; preds = %land.lhs.true42.critedge.land.lhs.true46_crit_edge, %land.lhs.true36.land.lhs.true46_crit_edge, %land.lhs.true30.critedge.land.lhs.true46_crit_edge, %land.lhs.true24.land.lhs.true46_crit_edge, %land.lhs.true18.critedge.land.lhs.true46_crit_edge, %land.lhs.true.land.lhs.true46_crit_edge
  %pquotaondisk.0147 = phi i32 [ 0, %land.lhs.true42.critedge.land.lhs.true46_crit_edge ], [ 1, %land.lhs.true36.land.lhs.true46_crit_edge ], [ %pquotaondisk.0145, %land.lhs.true30.critedge.land.lhs.true46_crit_edge ], [ %pquotaondisk.0145, %land.lhs.true24.land.lhs.true46_crit_edge ], [ %pquotaondisk.0146, %land.lhs.true18.critedge.land.lhs.true46_crit_edge ], [ %and9, %land.lhs.true.land.lhs.true46_crit_edge ]
  %gquotaondisk.0144 = phi i32 [ %gquotaondisk.0142, %land.lhs.true42.critedge.land.lhs.true46_crit_edge ], [ %gquotaondisk.0142, %land.lhs.true36.land.lhs.true46_crit_edge ], [ 0, %land.lhs.true30.critedge.land.lhs.true46_crit_edge ], [ 1, %land.lhs.true24.land.lhs.true46_crit_edge ], [ %gquotaondisk.0143, %land.lhs.true18.critedge.land.lhs.true46_crit_edge ], [ %and13, %land.lhs.true.land.lhs.true46_crit_edge ]
  %uquotaondisk.0140 = phi i1 [ %uquotaondisk.0139, %land.lhs.true42.critedge.land.lhs.true46_crit_edge ], [ %uquotaondisk.0139, %land.lhs.true36.land.lhs.true46_crit_edge ], [ %uquotaondisk.0139, %land.lhs.true30.critedge.land.lhs.true46_crit_edge ], [ %uquotaondisk.0139, %land.lhs.true24.land.lhs.true46_crit_edge ], [ true, %land.lhs.true18.critedge.land.lhs.true46_crit_edge ], [ false, %land.lhs.true.land.lhs.true46_crit_edge ]
  %17 = phi i1 [ %12, %land.lhs.true42.critedge.land.lhs.true46_crit_edge ], [ %12, %land.lhs.true36.land.lhs.true46_crit_edge ], [ %12, %land.lhs.true30.critedge.land.lhs.true46_crit_edge ], [ %12, %land.lhs.true24.land.lhs.true46_crit_edge ], [ %9, %land.lhs.true18.critedge.land.lhs.true46_crit_edge ], [ true, %land.lhs.true.land.lhs.true46_crit_edge ]
  %call47 = tail call i32 @xfs_dev_is_read_only(ptr noundef %mp, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.end57_crit_edge, label %if.then49

land.lhs.true46.if.end57_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %17, ptr @.str.3, ptr @.str.2
  %cond52 = select i1 %uquotaondisk.0140, ptr @.str.3, ptr @.str.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gquotaondisk.0144)
  %tobool53.not = icmp eq i32 %gquotaondisk.0144, 0
  %cond54 = select i1 %tobool53.not, ptr @.str.3, ptr @.str.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pquotaondisk.0147)
  %tobool55.not = icmp eq i32 %pquotaondisk.0147, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.3, ptr @.str.6
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef nonnull %cond52, ptr noundef nonnull %cond54, ptr noundef nonnull %cond56) #5
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true46.if.end57_crit_edge, %land.lhs.true42.critedge.if.end57_crit_edge, %land.lhs.true36.if.end57_crit_edge
  %18 = phi i1 [ %12, %land.lhs.true36.if.end57_crit_edge ], [ %17, %land.lhs.true46.if.end57_crit_edge ], [ %12, %land.lhs.true42.critedge.if.end57_crit_edge ]
  %m_qflags58 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %19 = ptrtoint ptr %m_qflags58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_qflags58, align 4
  %and59 = and i32 %20, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp ne i32 %and59, 0
  %brmerge = or i1 %18, %tobool60.not
  br i1 %brmerge, label %if.then63, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63:                                        ; preds = %if.end57
  br i1 %18, label %land.lhs.true65, label %if.then63.if.else_crit_edge

if.then63.if.else_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true65:                                  ; preds = %if.then63
  %and67 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true65.lor.lhs.false75_crit_edge, label %land.lhs.true69

land.lhs.true65.lor.lhs.false75_crit_edge:        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false75

land.lhs.true69:                                  ; preds = %land.lhs.true65
  %sb_qflags71 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %21 = ptrtoint ptr %sb_qflags71 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sb_qflags71, align 16
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp = icmp eq i16 %23, 0
  br i1 %cmp, label %land.lhs.true69.if.else_crit_edge, label %land.lhs.true69.lor.lhs.false75_crit_edge

land.lhs.true69.lor.lhs.false75_crit_edge:        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false75

land.lhs.true69.if.else_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false75:                                  ; preds = %land.lhs.true69.lor.lhs.false75_crit_edge, %land.lhs.true65.lor.lhs.false75_crit_edge
  %and77 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %lor.lhs.false75.lor.lhs.false86_crit_edge, label %land.lhs.true79

lor.lhs.false75.lor.lhs.false86_crit_edge:        ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false86

land.lhs.true79:                                  ; preds = %lor.lhs.false75
  %sb_qflags81 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %24 = ptrtoint ptr %sb_qflags81 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sb_qflags81, align 16
  %26 = and i16 %25, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp84 = icmp eq i16 %26, 0
  br i1 %cmp84, label %land.lhs.true79.if.else_crit_edge, label %land.lhs.true79.lor.lhs.false86_crit_edge

land.lhs.true79.lor.lhs.false86_crit_edge:        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false86

land.lhs.true79.if.else_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false86:                                  ; preds = %land.lhs.true79.lor.lhs.false86_crit_edge, %lor.lhs.false75.lor.lhs.false86_crit_edge
  %and88 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %lor.lhs.false86.if.then97_crit_edge, label %land.lhs.true90

lor.lhs.false86.if.then97_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then97

land.lhs.true90:                                  ; preds = %lor.lhs.false86
  %sb_qflags92 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %27 = ptrtoint ptr %sb_qflags92 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sb_qflags92, align 16
  %29 = and i16 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp95 = icmp eq i16 %29, 0
  br i1 %cmp95, label %land.lhs.true90.if.else_crit_edge, label %land.lhs.true90.if.then97_crit_edge

land.lhs.true90.if.then97_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then97

land.lhs.true90.if.else_crit_edge:                ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then97:                                        ; preds = %land.lhs.true90.if.then97_crit_edge, %lor.lhs.false86.if.then97_crit_edge
  tail call void @xfs_qm_mount_quotas(ptr noundef %mp) #5
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true90.if.else_crit_edge, %land.lhs.true79.if.else_crit_edge, %land.lhs.true69.if.else_crit_edge, %if.then63.if.else_crit_edge
  %30 = ptrtoint ptr %needquotamount to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %needquotamount, align 4
  %31 = ptrtoint ptr %m_qflags58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_qflags58, align 4
  %33 = ptrtoint ptr %quotaflags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %quotaflags, align 4
  store i32 0, ptr %m_qflags58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then97, %if.end57.cleanup_crit_edge, %if.then49
  %retval.0 = phi i32 [ -1, %if.then49 ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dev_is_read_only(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_mount_quotas(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_qm_bhv.c", i32 100, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_qm_bhv.c", i32 101, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_qm_bhv.c", i32 102, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_qm_bhv.c", i32 102, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_qm_bhv.c", i32 103, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_qm_bhv.c", i32 104, i32 20}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_qm_bhv.c", i32 105, i32 20}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
