; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/user.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_user_func = type { ptr, ptr }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_sclass = type { i32, i32, i32 }

@nvif_userc361 = external dso_local constant %struct.nvif_user_func, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvifUsermode\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [39 x i8] c"../drivers/gpu/drm/nouveau/nvif/user.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 56, i32 56 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_user_dtor(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %user = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %object = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 4, i32 1
  tail call void @nvif_object_dtor(ptr noundef %object) #3
  %2 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %user, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_user_ctor(ptr noundef %device, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %sclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %user = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #3
  %2 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !11
  %call = call i32 @nvif_object_sclass_get(ptr noundef %device, ptr noundef nonnull %sclass) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end27.thread

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp779.not = icmp eq i32 %call, 0
  br i1 %cmp779.not, label %for.cond.preheader.if.end27.thread76_crit_edge, label %for.body8.lr.ph

for.cond.preheader.if.end27.thread76_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.thread76

if.end27.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #3
  br label %cleanup

for.body8.lr.ph:                                  ; preds = %for.cond.preheader
  %3 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sclass, align 4
  br label %for.body8

if.end27.thread76:                                ; preds = %for.inc.if.end27.thread76_crit_edge, %for.cond.preheader.if.end27.thread76_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #3
  br label %cleanup

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %j.080 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc.for.body8_crit_edge ]
  %arrayidx11 = getelementptr %struct.nvif_sclass, ptr %4, i32 %j.080
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50017, i32 %6)
  %cmp13 = icmp eq i32 %6, 50017
  br i1 %cmp13, label %land.lhs.true, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body8
  %minver = getelementptr %struct.nvif_sclass, ptr %4, i32 %j.080, i32 1
  %7 = ptrtoint ptr %minver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %minver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp16.not = icmp sgt i32 %8, -1
  br i1 %cmp16.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %maxver = getelementptr %struct.nvif_sclass, ptr %4, i32 %j.080, i32 2
  %9 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp21.not = icmp slt i32 %10, -1
  br i1 %cmp21.not, label %land.lhs.true17.for.inc_crit_edge, label %if.end30

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.080, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.if.end27.thread76_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8

for.inc.if.end27.thread76_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.thread76

if.end30:                                         ; preds = %land.lhs.true17
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #3
  %tobool32.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool32.not, ptr @.str, ptr %name
  %object36 = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 4, i32 1
  %call37 = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef 50017, ptr noundef null, i32 noundef 0, ptr noundef %object36) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %call43 = call i32 @nvif_object_map(ptr noundef %object36, ptr noundef null, i32 noundef 0) #3
  %11 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nvif_userc361, ptr %user, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end30.cleanup_crit_edge, %if.end27.thread76, %if.end27.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ 0, %entry.cleanup_crit_edge ], [ %call37, %if.end30.cleanup_crit_edge ], [ -19, %if.end27.thread ], [ -19, %if.end27.thread76 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/user.c", i32 56, i32 56}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
