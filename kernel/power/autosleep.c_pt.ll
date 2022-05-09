; ModuleID = '/llk/IR_all_yes/kernel/power/autosleep.c_pt.bc'
source_filename = "../kernel/power/autosleep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@autosleep_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@autosleep_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@suspend_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @suspend_work, i64 4), ptr getelementptr (i8, ptr @suspend_work, i64 4) }, ptr @try_to_suspend, %struct.lockdep_map { ptr @suspend_work, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@autosleep_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @autosleep_lock, i64 52), ptr getelementptr (i8, ptr @autosleep_lock, i64 52) }, ptr @autosleep_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@autosleep_ws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"autosleep\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"suspend_work\00", [19 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"autosleep_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"autosleep_lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"autosleep_state\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 16, i32 24 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"autosleep_wq\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 17, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"suspend_work\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"autosleep_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"autosleep_ws\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 25, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 119, i32 46 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 67, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [28 x i8] c"../kernel/power/autosleep.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 24, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @autosleep_state, ptr @autosleep_wq, ptr @suspend_work, ptr @autosleep_lock, ptr @autosleep_ws, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autosleep_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autosleep_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autosleep_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autosleep_ws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @queue_up_suspend_work() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @autosleep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr @autosleep_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @suspend_work) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pm_autosleep_state() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @autosleep_state, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_autosleep_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @autosleep_lock, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_autosleep_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @autosleep_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_autosleep_set_state(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @autosleep_ws, align 4
  tail call void @__pm_stay_awake(ptr noundef %0) #5
  tail call void @mutex_lock_nested(ptr noundef nonnull @autosleep_lock, i32 noundef 0) #5
  store i32 %state, ptr @autosleep_state, align 4
  %1 = load ptr, ptr @autosleep_ws, align 4
  tail call void @__pm_relax(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp sgt i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @pm_wakep_autosleep_enabled(i1 noundef zeroext true) #5
  %2 = load i32, ptr @autosleep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load ptr, ptr @autosleep_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef nonnull @suspend_work) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pm_wakep_autosleep_enabled(i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @autosleep_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakep_autosleep_enabled(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_autosleep_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wakeup_source_register(ptr noundef null, ptr noundef nonnull @.str) #5
  store ptr %call, ptr @autosleep_ws, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655362, i32 noundef 1) #5
  store ptr %call1, ptr @autosleep_wq, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @autosleep_ws, align 4
  tail call void @wakeup_source_unregister(ptr noundef %0) #5
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.end4 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wakeup_source_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_source_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @try_to_suspend(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %initial_count = alloca i32, align 4
  %final_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %initial_count) #5
  %0 = ptrtoint ptr %initial_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %initial_count, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %final_count) #5
  %1 = ptrtoint ptr %final_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %final_count, align 4, !annotation !24
  %call = call zeroext i1 @pm_get_wakeup_count(ptr noundef nonnull %initial_count, i1 noundef zeroext true) #5
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef nonnull @autosleep_lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %initial_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %initial_count, align 4
  %call1 = call zeroext i1 @pm_save_wakeup_count(i32 noundef %3) #5
  br i1 %call1, label %lor.lhs.false, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %4 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %if.end3, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @autosleep_lock) #5
  br label %out

if.end3:                                          ; preds = %lor.lhs.false
  %5 = load i32, ptr @autosleep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef nonnull @autosleep_lock) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp7 = icmp sgt i32 %5, 3
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = call i32 @hibernate() #5
  br label %if.end11

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call i32 @pm_suspend(i32 noundef %5) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  call void @mutex_unlock(ptr noundef nonnull @autosleep_lock) #5
  %call12 = call zeroext i1 @pm_get_wakeup_count(ptr noundef nonnull %final_count, i1 noundef zeroext false) #5
  br i1 %call12, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %final_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %final_count, align 4
  %8 = ptrtoint ptr %initial_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %initial_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp15 = icmp eq i32 %7, %9
  br i1 %cmp15, label %if.then16, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call i32 @schedule_timeout_uninterruptible(i32 noundef 50) #5
  br label %out

out:                                              ; preds = %if.then16, %if.end14.out_crit_edge, %if.end11.out_crit_edge, %if.then2, %entry.out_crit_edge
  %10 = load i32, ptr @autosleep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp sgt i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %11 = load ptr, ptr @autosleep_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef nonnull @suspend_work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %final_count) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %initial_count) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_get_wakeup_count(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_save_wakeup_count(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hibernate() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_suspend(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/power/autosleep.c", i32 119, i32 46}
!2 = !{ptr @autosleep_state, !3, !"autosleep_state", i1 false, i1 false}
!3 = !{!"../kernel/power/autosleep.c", i32 16, i32 24}
!4 = !{ptr @autosleep_wq, !5, !"autosleep_wq", i1 false, i1 false}
!5 = !{!"../kernel/power/autosleep.c", i32 17, i32 33}
!6 = !{ptr @autosleep_ws, !7, !"autosleep_ws", i1 false, i1 false}
!7 = !{!"../kernel/power/autosleep.c", i32 25, i32 30}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/power/autosleep.c", i32 67, i32 8}
!10 = !{ptr @suspend_work, !9, !"suspend_work", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/power/autosleep.c", i32 24, i32 8}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @autosleep_lock, !12, !"autosleep_lock", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
