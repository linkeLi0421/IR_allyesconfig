; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/timer.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nvif/timer.c\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nvif/timer.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 36, i32 7 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nvif_timer_wait_test(ptr nocapture noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 8
  %call = tail call i64 @nvif_device_time(ptr noundef %1) #3
  %reads = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 4
  %2 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reads, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %time11 = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 3
  %4 = ptrtoint ptr %time11 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %time11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %call)
  %cmp2 = icmp eq i64 %5, %call
  br i1 %cmp2, label %if.then3, label %if.end.if.end31.sink.split_crit_edge

if.end.if.end31.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31.sink.split

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %time0 = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 2
  %6 = ptrtoint ptr %time0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call, ptr %time0, align 8
  %time1 = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 3
  br label %if.end31.sink.split

if.then3:                                         ; preds = %if.end
  %inc = add i32 %3, 1
  %7 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %reads, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp5 = icmp eq i32 %3, 16
  br i1 %cmp5, label %do.end, label %if.then3.if.end31_crit_edge, !prof !11

if.then3.if.end31_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end31.sink.split:                              ; preds = %if.end.thread, %if.end.if.end31.sink.split_crit_edge
  %time1.sink = phi ptr [ %time1, %if.end.thread ], [ %time11, %if.end.if.end31.sink.split_crit_edge ]
  %8 = ptrtoint ptr %time1.sink to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call, ptr %time1.sink, align 8
  %9 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %reads, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then3.if.end31_crit_edge
  %time1158 = phi ptr [ %time11, %if.then3.if.end31_crit_edge ], [ %time1.sink, %if.end31.sink.split ]
  %10 = ptrtoint ptr %time1158 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %time1158, align 8
  %time033 = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 2
  %12 = ptrtoint ptr %time033 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %time033, align 8
  %sub = sub i64 %11, %13
  %limit = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 1
  %14 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %limit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %15)
  %cmp34 = icmp ugt i64 %sub, %15
  %.sub = select i1 %cmp34, i64 -110, i64 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  %retval.0 = phi i64 [ -110, %do.end ], [ %.sub, %if.end31 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_device_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nvif_timer_wait_init(ptr noundef %device, i64 noundef %nsec, ptr nocapture noundef writeonly %wait) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %device, ptr %wait, align 8
  %limit = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 1
  %1 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %nsec, ptr %limit, align 8
  %reads = getelementptr inbounds %struct.nvif_timer_wait, ptr %wait, i32 0, i32 4
  %2 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reads, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/timer.c", i32 36, i32 7}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
