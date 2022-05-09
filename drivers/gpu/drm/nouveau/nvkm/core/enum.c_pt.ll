; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/enum.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/enum.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 47, i32 36 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 48, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/enum.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 48, i32 24 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_enum_find(ptr noundef readonly %en, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %name5 = getelementptr inbounds %struct.nvkm_enum, ptr %en, i32 0, i32 1
  %0 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name5, align 4
  %tobool.not6 = icmp eq ptr %1, null
  br i1 %tobool.not6, label %entry.return_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %en.addr.07 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %en, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %en.addr.07 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %en.addr.07, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %value)
  %cmp = icmp eq i32 %3, %value
  br i1 %cmp, label %while.body.return_crit_edge, label %if.end

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr %struct.nvkm_enum, ptr %en.addr.07, i32 1
  %name = getelementptr %struct.nvkm_enum, ptr %en.addr.07, i32 1, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %if.end.return_crit_edge, %while.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ %en.addr.07, %while.body.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_snprintbf(ptr nocapture noundef writeonly %data, i32 noundef %size, ptr nocapture noundef readonly %bf, i32 noundef %value) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp13 = icmp sgt i32 %size, 0
  br i1 %cmp13, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %data.addr.017 = phi ptr [ %data.addr.1, %if.end.land.rhs_crit_edge ], [ %data, %entry.land.rhs_crit_edge ]
  %space.0.off016 = phi i1 [ %space.1.off0, %if.end.land.rhs_crit_edge ], [ false, %entry.land.rhs_crit_edge ]
  %size.addr.015 = phi i32 [ %size.addr.1, %if.end.land.rhs_crit_edge ], [ %size, %entry.land.rhs_crit_edge ]
  %bf.addr.014 = phi ptr [ %incdec.ptr, %if.end.land.rhs_crit_edge ], [ %bf, %entry.land.rhs_crit_edge ]
  %name = getelementptr inbounds %struct.nvkm_bitfield, ptr %bf.addr.014, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %bf.addr.014 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bf.addr.014, align 4
  %and = and i32 %3, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %cond = select i1 %space.0.off016, ptr @.str.1, ptr @.str.2
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.addr.017, i32 noundef %size.addr.015, ptr noundef nonnull @.str, ptr noundef nonnull %cond, ptr noundef nonnull %1)
  %sub = sub i32 %size.addr.015, %call
  %add.ptr = getelementptr i8, ptr %data.addr.017, i32 %call
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %size.addr.1 = phi i32 [ %sub, %if.then ], [ %size.addr.015, %while.body.if.end_crit_edge ]
  %space.1.off0 = phi i1 [ true, %if.then ], [ %space.0.off016, %while.body.if.end_crit_edge ]
  %data.addr.1 = phi ptr [ %add.ptr, %if.then ], [ %data.addr.017, %while.body.if.end_crit_edge ]
  %incdec.ptr = getelementptr %struct.nvkm_bitfield, ptr %bf.addr.014, i32 1
  %cmp = icmp sgt i32 %size.addr.1, 0
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %data.addr.0.lcssa = phi ptr [ %data, %entry.while.end_crit_edge ], [ %data.addr.1, %if.end.while.end_crit_edge ], [ %data.addr.017, %land.rhs.while.end_crit_edge ]
  %4 = ptrtoint ptr %data.addr.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %data.addr.0.lcssa, align 1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/enum.c", i32 47, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/enum.c", i32 48, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/enum.c", i32 48, i32 24}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
