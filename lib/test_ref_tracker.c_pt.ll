; ModuleID = '/llk/IR_all_yes/lib/test_ref_tracker.c_pt.bc'
source_filename = "../lib/test_ref_tracker.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@__initcall__kmod_test_ref_tracker__173_112_test_ref_tracker_init6 = internal global ptr @test_ref_tracker_init, section ".initcall6.init", align 4
@__exitcall_test_ref_tracker_exit = internal global ptr @test_ref_tracker_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [43 x i8] c"test_ref_tracker.file=lib/test_ref_tracker\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [32 x i8] c"test_ref_tracker.license=GPL v2\00", section ".modinfo", align 1
@ref_dir = internal global { %struct.ref_tracker_dir, [60 x i8] } zeroinitializer, align 32
@test_ref_tracker_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@test_ref_tracker_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&test_ref_tracker_timer)\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tracker = internal global { [20 x ptr], [48 x i8] } zeroinitializer, align 32
@test_ref_timer_done = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ref_tracker_dir_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dir->lock\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"ref_dir\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 14, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"test_ref_tracker_timer\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 54, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 69, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"tracker\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 15, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"test_ref_timer_done\00", align 1
@___asan_gen_.18 = private constant [26 x i8] c"../lib/test_ref_tracker.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 55, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"../include/linux/ref_tracker.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 27, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_test_ref_tracker_exit, ptr @__initcall__kmod_test_ref_tracker__173_112_test_ref_tracker_init6, ptr @test_ref_tracker_exit, ptr @ref_dir, ptr @test_ref_tracker_init.__key, ptr @test_ref_tracker_timer, ptr @.str, ptr @tracker, ptr @test_ref_timer_done, ptr @ref_tracker_dir_init.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_dir to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ref_tracker_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ref_tracker_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracker to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ref_timer_done to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_tracker_dir_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_ref_tracker_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_ref_tracker_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  store volatile ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 3), ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 3), align 4
  store ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 3), ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 3, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 4), ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 4), align 4
  store ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 4), ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 4, i32 1), align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @ref_dir, ptr noundef nonnull @.str.1, ptr noundef nonnull @ref_tracker_dir_init.__key, i16 noundef signext 3) #7
  store i32 100, ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 2), i32 noundef 4) #7
  store volatile i32 1, ptr getelementptr inbounds (%struct.ref_tracker_dir, ptr @ref_dir, i32 0, i32 2), align 4
  %call1.i = tail call i32 @stack_depot_init() #7
  tail call void @init_timer_key(ptr noundef nonnull @test_ref_tracker_timer, ptr noundef nonnull @test_ref_tracker_timer_func, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @test_ref_tracker_init.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %call = tail call i32 @mod_timer(ptr noundef nonnull @test_ref_tracker_timer, i32 noundef %add) #7
  tail call fastcc void @alloctest_ref_tracker_alloc1()
  tail call fastcc void @alloctest_ref_tracker_alloc2()
  tail call fastcc void @alloctest_ref_tracker_alloc3()
  tail call fastcc void @alloctest_ref_tracker_alloc4()
  tail call fastcc void @alloctest_ref_tracker_alloc5()
  tail call fastcc void @alloctest_ref_tracker_alloc6()
  tail call fastcc void @alloctest_ref_tracker_alloc7()
  tail call fastcc void @alloctest_ref_tracker_alloc8()
  tail call fastcc void @alloctest_ref_tracker_alloc9()
  tail call fastcc void @alloctest_ref_tracker_alloc10()
  tail call fastcc void @alloctest_ref_tracker_alloc11()
  tail call fastcc void @alloctest_ref_tracker_alloc12()
  tail call fastcc void @alloctest_ref_tracker_alloc13()
  tail call fastcc void @alloctest_ref_tracker_alloc14()
  tail call fastcc void @alloctest_ref_tracker_alloc15()
  tail call fastcc void @alloctest_ref_tracker_alloc16()
  tail call fastcc void @alloctest_ref_tracker_alloc17()
  tail call fastcc void @alloctest_ref_tracker_alloc18()
  tail call fastcc void @alloctest_ref_tracker_alloc19()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 2, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [20 x ptr], ptr @tracker, i32 0, i32 %i.04
  tail call fastcc void @alloctest_ref_tracker_free(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @alloctest_ref_tracker_free(ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 2))
  %call.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @test_ref_timer_done, i32 noundef 4) #7
  %1 = load volatile i32, ptr @test_ref_timer_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not6 = icmp eq i32 %1, 0
  br i1 %tobool.not6, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @test_ref_timer_done, i32 noundef 4) #7
  %2 = load volatile i32, ptr @test_ref_timer_done, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  tail call void @ref_tracker_dir_exit(ptr noundef nonnull @ref_dir) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_ref_tracker_timer_func(ptr nocapture noundef readnone %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef nonnull @tracker, i32 noundef 2592) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @test_ref_timer_done, i32 noundef 4) #7
  store volatile i32 1, ptr @test_ref_timer_done, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc1() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 1), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc2() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 2), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc3() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 3), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc4() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 4), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc5() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 5), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc6() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 6), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc7() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 7), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc8() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 8), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc9() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 9), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc10() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 10), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc11() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 11), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc12() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 12), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc13() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 13), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc14() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 14), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc15() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 15), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc16() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 16), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc17() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 17), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc18() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 18), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_alloc19() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_alloc(ptr noundef nonnull @ref_dir, ptr noundef getelementptr inbounds ([20 x ptr], ptr @tracker, i32 0, i32 19), i32 noundef 3264) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloctest_ref_tracker_free(ptr noundef %trackerp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @ref_tracker_free(ptr noundef nonnull @ref_dir, ptr noundef %trackerp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ref_tracker_dir_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_depot_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_test_ref_tracker__173_112_test_ref_tracker_init6, !1, !"__initcall__kmod_test_ref_tracker__173_112_test_ref_tracker_init6", i1 false, i1 false}
!1 = !{!"../lib/test_ref_tracker.c", i32 112, i32 1}
!2 = !{ptr @__exitcall_test_ref_tracker_exit, !3, !"__exitcall_test_ref_tracker_exit", i1 false, i1 false}
!3 = !{!"../lib/test_ref_tracker.c", i32 113, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../lib/test_ref_tracker.c", i32 115, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @test_ref_tracker_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../lib/test_ref_tracker.c", i32 69, i32 2}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ref_tracker_dir_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../include/linux/ref_tracker.h", i32 27, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ref_dir, !14, !"ref_dir", i1 false, i1 false}
!14 = !{!"../lib/test_ref_tracker.c", i32 14, i32 31}
!15 = !{ptr @test_ref_tracker_timer, !16, !"test_ref_tracker_timer", i1 false, i1 false}
!16 = !{!"../lib/test_ref_tracker.c", i32 54, i32 26}
!17 = !{ptr @tracker, !18, !"tracker", i1 false, i1 false}
!18 = !{!"../lib/test_ref_tracker.c", i32 15, i32 28}
!19 = !{ptr @test_ref_timer_done, !20, !"test_ref_timer_done", i1 false, i1 false}
!20 = !{!"../lib/test_ref_tracker.c", i32 55, i32 17}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
