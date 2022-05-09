; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/lut.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/lut.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/dispnv50/lut.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kmsLut\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 42, i32 8 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/lut.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 73, i32 36 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_lut_load(ptr nocapture noundef readonly %lut, i32 noundef %buffer, ptr noundef readonly %blob, ptr nocapture noundef readonly %load) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %blob, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %map58 = getelementptr [2 x %struct.nvif_mem], ptr %lut, i32 0, i32 %buffer, i32 0, i32 6
  %0 = ptrtoint ptr %map58 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map58, align 8
  %addr459 = getelementptr [2 x %struct.nvif_mem], ptr %lut, i32 0, i32 %buffer, i32 3
  %2 = ptrtoint ptr %addr459 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr459, align 8
  %extract.t64 = trunc i64 %3 to i32
  br label %if.then

cond.end:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %blob, i32 0, i32 5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %map = getelementptr [2 x %struct.nvif_mem], ptr %lut, i32 0, i32 %buffer, i32 0, i32 6
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %addr4 = getelementptr [2 x %struct.nvif_mem], ptr %lut, i32 0, i32 %buffer, i32 3
  %8 = ptrtoint ptr %addr4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %addr4, align 8
  %tobool5.not = icmp eq ptr %5, null
  %extract.t65 = trunc i64 %9 to i32
  br i1 %tobool5.not, label %cond.end.if.then_crit_edge, label %if.else

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %cond.end.thread
  %.off063 = phi i32 [ %extract.t64, %cond.end.thread ], [ %extract.t65, %cond.end.if.then_crit_edge ]
  %10 = phi ptr [ %1, %cond.end.thread ], [ %7, %cond.end.if.then_crit_edge ]
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 8192, i32 noundef 3264, i32 noundef -1) #6
  %tobool6.not = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not, label %do.end, label %if.then.for.body_crit_edge, !prof !13

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef null) #3
  br label %if.end37

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.066 to i16
  %conv31 = shl i16 %i.0.tr, 6
  %arrayidx32 = getelementptr %struct.drm_color_lut, ptr %call.i.i, i32 %i.066
  %blue = getelementptr %struct.drm_color_lut, ptr %call.i.i, i32 %i.066, i32 2
  %11 = ptrtoint ptr %blue to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv31, ptr %blue, align 2
  %green = getelementptr %struct.drm_color_lut, ptr %call.i.i, i32 %i.066, i32 1
  %12 = ptrtoint ptr %green to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv31, ptr %green, align 2
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv31, ptr %arrayidx32, align 2
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %load(ptr noundef nonnull %call.i.i, i32 noundef 1024, ptr noundef %10) #3
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #3
  br label %if.end37

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %blob, i32 0, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  %div1.i = lshr i32 %15, 3
  tail call void %load(ptr noundef nonnull %5, i32 noundef %div1.i, ptr noundef %7) #3
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end, %do.end
  %.off0 = phi i32 [ %.off063, %do.end ], [ %.off063, %for.end ], [ %extract.t65, %if.else ]
  ret i32 %.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_lut_fini(ptr noundef %lut) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvif_mem_dtor(ptr noundef %lut) #3
  %arrayidx.1 = getelementptr [2 x %struct.nvif_mem], ptr %lut, i32 0, i32 1
  tail call void @nvif_mem_dtor(ptr noundef %arrayidx.1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_lut_init(ptr nocapture noundef readonly %disp, ptr noundef %mmu, ptr noundef %lut) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %oclass = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36976, i32 %3)
  %cmp = icmp slt i32 %3, 36976
  %mul = select i1 %cmp, i32 2056, i32 8200
  %conv = zext i32 %mul to i64
  %call = tail call i32 @nvif_mem_ctor_map(ptr noundef %mmu, ptr noundef nonnull @.str.1, i8 noundef zeroext 1, i64 noundef %conv, ptr noundef %lut) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup3_crit_edge

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup3

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.1 = getelementptr [2 x %struct.nvif_mem], ptr %lut, i32 0, i32 1
  %call.1 = tail call i32 @nvif_mem_ctor_map(ptr noundef %mmu, ptr noundef nonnull @.str.1, i8 noundef zeroext 1, i64 noundef %conv, ptr noundef %arrayidx.1) #3
  br label %cleanup3

cleanup3:                                         ; preds = %for.cond, %entry.cleanup3_crit_edge
  %retval.2 = phi i32 [ %call, %entry.cleanup3_crit_edge ], [ %call.1, %for.cond ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_map(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/lut.c", i32 42, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/lut.c", i32 73, i32 36}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
