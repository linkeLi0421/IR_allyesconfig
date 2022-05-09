; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/disp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mclass = type { i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_sclass = type { i32, i32, i32 }

@nvif_disp_ctor.disps = internal constant { [17 x %struct.nvif_mclass], [56 x i8] } { [17 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 50800, i32 -1 }, %struct.nvif_mclass { i32 50544, i32 -1 }, %struct.nvif_mclass { i32 50032, i32 -1 }, %struct.nvif_mclass { i32 39024, i32 -1 }, %struct.nvif_mclass { i32 38768, i32 -1 }, %struct.nvif_mclass { i32 38256, i32 -1 }, %struct.nvif_mclass { i32 38000, i32 -1 }, %struct.nvif_mclass { i32 37488, i32 -1 }, %struct.nvif_mclass { i32 37232, i32 -1 }, %struct.nvif_mclass { i32 36976, i32 -1 }, %struct.nvif_mclass { i32 34160, i32 -1 }, %struct.nvif_mclass { i32 34928, i32 -1 }, %struct.nvif_mclass { i32 33648, i32 -1 }, %struct.nvif_mclass { i32 33392, i32 -1 }, %struct.nvif_mclass { i32 20592, i32 -1 }, %struct.nvif_mclass { i32 70, i32 -1 }, %struct.nvif_mclass zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvifDisp\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"disps\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 37, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [39 x i8] c"../drivers/gpu/drm/nouveau/nvif/disp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 61, i32 57 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nvif_disp_ctor.disps, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvif_disp_ctor.disps to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_disp_dtor(ptr noundef %disp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvif_object_dtor(ptr noundef %disp) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_disp_ctor(ptr noundef %device, ptr noundef %name, i32 noundef %oclass, ptr noundef %disp) local_unnamed_addr #0 align 64 {
entry:
  %sclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oclass)
  %tobool.not = icmp eq i32 %oclass, 0
  br i1 %tobool.not, label %if.else, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry.for.cond_crit_edge
  %_cid.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %entry.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.nvif_mclass, ptr @nvif_disp_ctor.disps, i32 %_cid.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %oclass)
  %cmp = icmp eq i32 %1, %oclass
  %or.cond = or i1 %tobool2.not, %cmp
  %inc = add nuw nsw i32 %_cid.0, 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %client90 = getelementptr inbounds %struct.nvif_object, ptr %disp, i32 0, i32 1
  %2 = ptrtoint ptr %client90 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %client90, align 4
  br i1 %tobool2.not, label %for.end.cleanup_crit_edge, label %for.end.if.end48_crit_edge

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #3
  %3 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !13
  %call = call i32 @nvif_object_sclass_get(ptr noundef %device, ptr noundef nonnull %sclass) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp10 = icmp sgt i32 %call, -1
  br i1 %cmp10, label %for.cond12.preheader, label %if.end43.thread108

if.end43.thread108:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #3
  %client110 = getelementptr inbounds %struct.nvif_object, ptr %disp, i32 0, i32 1
  %4 = ptrtoint ptr %client110 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %client110, align 4
  br label %cleanup

for.cond12.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1992.not = icmp eq i32 %call, 0
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.inc39.for.cond18.preheader_crit_edge, %for.cond12.preheader
  %5 = phi i32 [ 50800, %for.cond12.preheader ], [ %17, %for.inc39.for.cond18.preheader_crit_edge ]
  %i.097120 = phi i32 [ 0, %for.cond12.preheader ], [ %inc40, %for.inc39.for.cond18.preheader_crit_edge ]
  br i1 %cmp1992.not, label %for.cond18.preheader.for.inc39_crit_edge, label %for.body20.lr.ph

for.cond18.preheader.for.inc39_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc39

for.body20.lr.ph:                                 ; preds = %for.cond18.preheader
  %6 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sclass, align 4
  %version = getelementptr %struct.nvif_mclass, ptr @nvif_disp_ctor.disps, i32 %i.097120, i32 1
  br label %for.body20

for.body20:                                       ; preds = %for.inc36.for.body20_crit_edge, %for.body20.lr.ph
  %j.093 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc37, %for.inc36.for.body20_crit_edge ]
  %arrayidx23 = getelementptr %struct.nvif_sclass, ptr %7, i32 %j.093
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp25 = icmp eq i32 %5, %9
  br i1 %cmp25, label %land.lhs.true, label %for.body20.for.inc36_crit_edge

for.body20.for.inc36_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc36

land.lhs.true:                                    ; preds = %for.body20
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version, align 4
  %minver = getelementptr %struct.nvif_sclass, ptr %7, i32 %j.093, i32 1
  %12 = ptrtoint ptr %minver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %minver, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp28.not = icmp slt i32 %11, %13
  br i1 %cmp28.not, label %land.lhs.true.for.inc36_crit_edge, label %land.lhs.true29

land.lhs.true.for.inc36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc36

land.lhs.true29:                                  ; preds = %land.lhs.true
  %maxver = getelementptr %struct.nvif_sclass, ptr %7, i32 %j.093, i32 2
  %14 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp33.not = icmp sgt i32 %11, %15
  br i1 %cmp33.not, label %land.lhs.true29.for.inc36_crit_edge, label %if.end43.thread112

land.lhs.true29.for.inc36_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc36

for.inc36:                                        ; preds = %land.lhs.true29.for.inc36_crit_edge, %land.lhs.true.for.inc36_crit_edge, %for.body20.for.inc36_crit_edge
  %inc37 = add nuw nsw i32 %j.093, 1
  %exitcond.not = icmp eq i32 %inc37, %call
  br i1 %exitcond.not, label %for.inc36.for.inc39_crit_edge, label %for.inc36.for.body20_crit_edge

for.inc36.for.body20_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body20

for.inc36.for.inc39_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc39

for.inc39:                                        ; preds = %for.inc36.for.inc39_crit_edge, %for.cond18.preheader.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %i.097120, 1
  %arrayidx14 = getelementptr %struct.nvif_mclass, ptr @nvif_disp_ctor.disps, i32 %inc40
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %exitcond99 = icmp eq i32 %inc40, 16
  br i1 %exitcond99, label %if.end43, label %for.inc39.for.cond18.preheader_crit_edge

for.inc39.for.cond18.preheader_crit_edge:         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond18.preheader

if.end43.thread112:                               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #3
  %client114 = getelementptr inbounds %struct.nvif_object, ptr %disp, i32 0, i32 1
  %18 = ptrtoint ptr %client114 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %client114, align 4
  br label %if.end48

if.end43:                                         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #5
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #3
  %client = getelementptr inbounds %struct.nvif_object, ptr %disp, i32 0, i32 1
  %19 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %client, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end43.thread112, %for.end.if.end48_crit_edge
  %_cid.1107 = phi i32 [ %i.097120, %if.end43.thread112 ], [ %_cid.0, %for.end.if.end48_crit_edge ]
  %tobool50.not = icmp eq ptr %name, null
  %spec.select88 = select i1 %tobool50.not, ptr @.str, ptr %name
  %arrayidx55 = getelementptr [17 x %struct.nvif_mclass], ptr @nvif_disp_ctor.disps, i32 0, i32 %_cid.1107
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx55, align 4
  %call58 = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull %spec.select88, i32 noundef 0, i32 noundef %21, ptr noundef null, i32 noundef 0, ptr noundef %disp) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end43, %if.end43.thread108, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end48 ], [ -19, %if.end43 ], [ -19, %if.end43.thread108 ], [ -38, %for.end.cleanup_crit_edge ]
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @nvif_disp_ctor.disps, !1, !"disps", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/disp.c", i32 37, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvif/disp.c", i32 61, i32 57}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
