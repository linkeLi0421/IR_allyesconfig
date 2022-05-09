; ModuleID = '/llk/IR_all_yes/kernel/rcu/sync.c_pt.bc'
source_filename = "../kernel/rcu/sync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rcu_sync_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rsp->gp_wait\00", [18 x i8] zeroinitializer }, align 32
@rcu_sync_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/rcu/sync.c\00", [46 x i8] zeroinitializer }, align 32
@rcu_sync_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_exit.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_dtor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_dtor.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_dtor.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_func.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 24, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [21 x i8] c"../kernel/rcu/sync.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 129, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @rcu_sync_init.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_sync_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_sync_init(ptr noundef %rsp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rsp, i32 0, i32 68)
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %gp_wait, ptr noundef nonnull @.str, ptr noundef nonnull @rcu_sync_init.__key) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rcu_sync_enter_start(ptr nocapture noundef %rsp) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 1
  %0 = ptrtoint ptr %gp_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gp_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %gp_count, align 4
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %rsp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_sync_enter(ptr noundef %rsp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %gp_wait) #4
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsp, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body3, label %do.body56.critedge

do.body3:                                         ; preds = %entry
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %rsp, align 4
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 1
  %3 = ptrtoint ptr %gp_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gp_count, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then53, label %land.rhs

land.rhs:                                         ; preds = %do.body3
  %.b99 = load i1, ptr @rcu_sync_enter.__already_done, align 1
  br i1 %.b99, label %if.then53.critedge, label %if.then16, !prof !29

if.then16:                                        ; preds = %land.rhs
  store i1 true, ptr @rcu_sync_enter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef 9, ptr noundef null) #4
  %5 = ptrtoint ptr %gp_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gp_count, align 4
  %inc.c102 = add i32 %6, 1
  br label %if.then53

if.then53.critedge:                               ; preds = %land.rhs
  %inc.c = add i32 %4, 1
  br label %if.then53

if.then53:                                        ; preds = %if.then53.critedge, %if.then16, %do.body3
  %.sink = phi i32 [ %inc.c102, %if.then16 ], [ %inc.c, %if.then53.critedge ], [ 1, %do.body3 ]
  %7 = ptrtoint ptr %gp_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %gp_count, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %gp_wait) #4
  tail call void @synchronize_rcu() #4
  %cb_head = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 3
  tail call void @rcu_sync_func(ptr noundef %cb_head)
  br label %cleanup83

do.body56.critedge:                               ; preds = %entry
  %gp_count49.c106 = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 1
  %8 = ptrtoint ptr %gp_count49.c106 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gp_count49.c106, align 4
  %inc.c107 = add i32 %9, 1
  store i32 %inc.c107, ptr %gp_count49.c106, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %gp_wait) #4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 155) #4
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %rsp, align 4
  %cmp67 = icmp sgt i32 %11, 1
  br i1 %cmp67, label %cleanup83, label %if.end69

if.end69:                                         ; preds = %do.body56.critedge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %call110 = call i32 @prepare_to_wait_event(ptr noundef %gp_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %13 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %rsp, align 4
  %cmp76111 = icmp sgt i32 %14, 1
  br i1 %cmp76111, label %for.end, label %cleanup

cleanup:                                          ; preds = %cleanup, %if.end69
  call void @schedule() #4
  %call = call i32 @prepare_to_wait_event(ptr noundef %gp_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %15 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %rsp, align 4
  %cmp76 = icmp sgt i32 %16, 1
  br i1 %cmp76, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end69
  call void @finish_wait(ptr noundef %gp_wait, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %cleanup83

cleanup83:                                        ; preds = %for.end, %do.body56.critedge, %if.then53
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_sync_func(ptr noundef %rhp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rhp, i32 -60
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.rhs, label %if.end32

land.rhs:                                         ; preds = %entry
  %.b166 = load i1, ptr @rcu_sync_func.__already_done, align 1
  br i1 %.b166, label %if.end32, label %if.then, !prof !29

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rcu_sync_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 78, i32 noundef 9, ptr noundef null) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs, %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr, align 4
  %cmp46 = icmp eq i32 %3, 2
  br i1 %cmp46, label %land.rhs53, label %if.end91

land.rhs53:                                       ; preds = %if.end32
  %.b164165 = load i1, ptr @rcu_sync_func.__already_done.5, align 1
  br i1 %.b164165, label %if.end91, label %if.then64, !prof !29

if.then64:                                        ; preds = %land.rhs53
  store i1 true, ptr @rcu_sync_func.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 9, ptr noundef null) #4
  br label %if.end91

if.end91:                                         ; preds = %if.then64, %land.rhs53, %if.end32
  %gp_wait = getelementptr i8, ptr %rhp, i32 -52
  %call103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gp_wait) #4
  %gp_count = getelementptr i8, ptr %rhp, i32 -56
  %4 = ptrtoint ptr %gp_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gp_count, align 4
  %tobool108.not = icmp eq i32 %5, 0
  br i1 %tobool108.not, label %if.else, label %do.body114

do.body114:                                       ; preds = %if.end91
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %add.ptr, align 4
  tail call void @__wake_up_locked(ptr noundef %gp_wait, i32 noundef 3, i32 noundef 1) #4
  br label %if.end147

if.else:                                          ; preds = %if.end91
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %cmp122 = icmp eq i32 %8, 4
  br i1 %cmp122, label %do.body129, label %do.body140

do.body129:                                       ; preds = %if.else
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 3, ptr %add.ptr, align 4
  tail call void @call_rcu(ptr noundef %rhp, ptr noundef nonnull @rcu_sync_func) #4
  br label %if.end147

do.body140:                                       ; preds = %if.else
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %add.ptr, align 4
  br label %if.end147

if.end147:                                        ; preds = %do.body140, %do.body129, %do.body114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gp_wait, i32 noundef %call103) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_sync_exit(ptr noundef %rsp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rsp, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.rhs, label %if.end31

land.rhs:                                         ; preds = %entry
  %.b146 = load i1, ptr @rcu_sync_exit.__already_done, align 1
  br i1 %.b146, label %if.end31, label %if.then, !prof !29

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rcu_sync_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 170, i32 noundef 9, ptr noundef null) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs, %entry
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 1
  %2 = ptrtoint ptr %gp_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %gp_count, align 4
  %cmp44 = icmp eq i32 %3, 0
  br i1 %cmp44, label %land.rhs51, label %if.end89

land.rhs51:                                       ; preds = %if.end31
  %.b144145 = load i1, ptr @rcu_sync_exit.__already_done.2, align 1
  br i1 %.b144145, label %if.end89, label %if.then62, !prof !29

if.then62:                                        ; preds = %land.rhs51
  store i1 true, ptr @rcu_sync_exit.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 9, ptr noundef null) #4
  br label %if.end89

if.end89:                                         ; preds = %if.then62, %land.rhs51, %if.end31
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %gp_wait) #4
  %4 = ptrtoint ptr %gp_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gp_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %gp_count, align 4
  %tobool98.not = icmp eq i32 %dec, 0
  br i1 %tobool98.not, label %if.then99, label %if.end128

if.then99:                                        ; preds = %if.end89
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsp, align 4
  switch i32 %7, label %if.end128 [
    i32 2, label %do.body107
    i32 3, label %do.body120
  ]

do.body107:                                       ; preds = %if.then99
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 3, ptr %rsp, align 4
  %cb_head.i = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %cb_head.i, ptr noundef nonnull @rcu_sync_func) #4
  br label %if.end128

do.body120:                                       ; preds = %if.then99
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 4, ptr %rsp, align 4
  br label %if.end128

if.end128:                                        ; preds = %do.body120, %do.body107, %if.then99, %if.end89
  tail call void @_raw_spin_unlock_irq(ptr noundef %gp_wait) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_sync_dtor(ptr noundef %rsp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 1
  %0 = ptrtoint ptr %gp_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %gp_count, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end32, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b190 = load i1, ptr @rcu_sync_dtor.__already_done, align 1
  br i1 %.b190, label %if.end32, label %if.then, !prof !29

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rcu_sync_dtor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 9, ptr noundef null) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs, %entry
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rsp, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.rhs52, label %if.end90

land.rhs52:                                       ; preds = %if.end32
  %.b186189 = load i1, ptr @rcu_sync_dtor.__already_done.3, align 1
  br i1 %.b186189, label %if.end90, label %if.then63, !prof !29

if.then63:                                        ; preds = %land.rhs52
  store i1 true, ptr @rcu_sync_dtor.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 194, i32 noundef 9, ptr noundef null) #4
  br label %if.end90

if.end90:                                         ; preds = %if.then63, %land.rhs52, %if.end32
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %rsp, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %gp_wait) #4
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsp, align 4
  %cmp99 = icmp eq i32 %5, 4
  br i1 %cmp99, label %if.end111.thread, label %if.end111

if.end111.thread:                                 ; preds = %if.end90
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 3, ptr %rsp, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %gp_wait) #4
  br label %if.then116

if.end111:                                        ; preds = %if.end90
  tail call void @_raw_spin_unlock_irq(ptr noundef %gp_wait) #4
  %cmp115.not = icmp eq i32 %5, 0
  br i1 %cmp115.not, label %if.end172, label %if.then116

if.then116:                                       ; preds = %if.end111, %if.end111.thread
  tail call void @rcu_barrier() #4
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rsp, align 4
  %cmp119.not = icmp eq i32 %8, 0
  br i1 %cmp119.not, label %if.end172, label %land.rhs126

land.rhs126:                                      ; preds = %if.then116
  %.b187188 = load i1, ptr @rcu_sync_dtor.__already_done.4, align 1
  br i1 %.b187188, label %if.end172, label %if.then137, !prof !29

if.then137:                                       ; preds = %land.rhs126
  store i1 true, ptr @rcu_sync_dtor.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 204, i32 noundef 9, ptr noundef null) #4
  br label %if.end172

if.end172:                                        ; preds = %if.then137, %land.rhs126, %if.then116, %if.end111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @rcu_sync_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/rcu/sync.c", i32 24, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/rcu/sync.c", i32 129, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../kernel/rcu/sync.c", i32 170, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/rcu/sync.c", i32 171, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../kernel/rcu/sync.c", i32 193, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../kernel/rcu/sync.c", i32 194, i32 2}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/rcu/sync.c", i32 204, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../kernel/rcu/sync.c", i32 78, i32 2}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../kernel/rcu/sync.c", i32 79, i32 2}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
