; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/device.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv_device_time_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_user_func = type { ptr, ptr }

@nvif_device_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/nouveau/nvif/device.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvifDevice\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 34, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nvif/device.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 54, i32 51 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nvif_device_time(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nv_device_time_v0, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %user = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #3
  %2 = call ptr @memset(ptr %args, i32 0, i32 16)
  %call = call i32 @nvif_object_mthd(ptr noundef %device, i32 noundef 1, ptr noundef nonnull %args, i32 noundef 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end29_crit_edge, label %land.rhs

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

land.rhs:                                         ; preds = %if.then
  %.b48 = load i1, ptr @nvif_device_time.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end29_crit_edge, label %if.then8, !prof !14

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @nvif_device_time.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef null) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then8, %land.rhs.if.end29_crit_edge, %if.then.if.end29_crit_edge
  %time = getelementptr inbounds %struct.nv_device_time_v0, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %time, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #3
  br label %return

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %time40 = getelementptr inbounds %struct.nvif_user_func, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %time40 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %time40, align 4
  %call42 = tail call i64 %6(ptr noundef %user) #3
  br label %return

return:                                           ; preds = %if.end37, %if.end29
  %retval.0 = phi i64 [ %call42, %if.end37 ], [ %4, %if.end29 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_device_dtor(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvif_user_dtor(ptr noundef %device) #3
  %runlist = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 2
  %0 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runlist, align 8
  tail call void @kfree(ptr noundef %1) #3
  %2 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %runlist, align 8
  tail call void @nvif_object_dtor(ptr noundef %device) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_user_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_device_ctor(ptr noundef %parent, ptr noundef %name, i32 noundef %handle, i32 noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.1, ptr %name
  %call = tail call i32 @nvif_object_ctor(ptr noundef %parent, ptr noundef nonnull %spec.select, i32 noundef %handle, i32 noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %device) #3
  %runlist = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 2
  %0 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %runlist, align 8
  %user = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 4
  %1 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %user, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %info = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %info, align 8
  %call3 = tail call i32 @nvif_object_mthd(ptr noundef %device, i32 noundef 0, ptr noundef %info, i32 noundef 104) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/device.c", i32 34, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvif/device.c", i32 54, i32 51}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 2000, i32 1}
