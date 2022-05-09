; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/client.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvif_client_v0 = type { i8, [7 x i8], i64, [32 x i8] }
%struct.anon.0 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_nop_v0 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvif_ioctl_nop_v0 = type { i64 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvifClient\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nvif/client.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 74, i32 25 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_client_ioctl(ptr nocapture noundef readonly %client, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.nvif_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %ioctl = getelementptr inbounds %struct.nvif_driver, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioctl, align 4
  %priv = getelementptr inbounds %struct.nvif_object, ptr %client, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call = tail call i32 %3(ptr noundef %5, ptr noundef %data, i32 noundef %size, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_client_suspend(ptr nocapture noundef readonly %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.nvif_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %suspend = getelementptr inbounds %struct.nvif_driver, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %priv = getelementptr inbounds %struct.nvif_object, ptr %client, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call = tail call i32 %3(ptr noundef %5) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_client_resume(ptr nocapture noundef readonly %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.nvif_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %resume = getelementptr inbounds %struct.nvif_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %priv = getelementptr inbounds %struct.nvif_object, ptr %client, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call = tail call i32 %3(ptr noundef %5) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_client_dtor(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvif_object_dtor(ptr noundef %client) #4
  %driver = getelementptr inbounds %struct.nvif_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  %fini = getelementptr inbounds %struct.nvif_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %priv = getelementptr inbounds %struct.nvif_object, ptr %client, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void %3(ptr noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_client_ctor(ptr noundef %parent, ptr noundef %name, i64 noundef %device, ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nvif_client_v0, align 8
  %nop = alloca %struct.anon.0, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args) #4
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %args, align 8
  %device1 = getelementptr inbounds %struct.nvif_client_v0, ptr %args, i32 0, i32 2
  %1 = ptrtoint ptr %device1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %device, ptr %device1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nop) #4
  %2 = call ptr @memset(ptr %nop, i32 0, i32 32)
  %name3 = getelementptr inbounds %struct.nvif_client_v0, ptr %args, i32 0, i32 3
  %call = call ptr @strncpy(ptr noundef %name3, ptr noundef %name, i32 noundef 32)
  %cmp.not = icmp eq ptr %parent, %client
  %spec.select = select i1 %cmp.not, ptr null, ptr %parent
  %tobool.not = icmp eq ptr %name, null
  %cond7 = select i1 %tobool.not, ptr @.str, ptr %name
  %call9 = call i32 @nvif_object_ctor(ptr noundef %spec.select, ptr noundef nonnull %cond7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args, i32 noundef 48, ptr noundef %client) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %client12 = getelementptr inbounds %struct.nvif_object, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %client12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %client12, align 4
  %handle = getelementptr inbounds %struct.nvif_object, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %handle, align 4
  %route = getelementptr inbounds %struct.nvif_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %route, align 8
  %driver = getelementptr inbounds %struct.nvif_client, ptr %parent, i32 0, i32 1
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %driver14 = getelementptr inbounds %struct.nvif_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %driver14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %driver14, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %client, i32 0, i32 5
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %10(ptr noundef %12, ptr noundef nonnull %nop, i32 noundef 32, ptr noundef null) #4
  %nop18 = getelementptr inbounds %struct.anon.0, ptr %nop, i32 0, i32 1
  %13 = ptrtoint ptr %nop18 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %nop18, align 8
  %version19 = getelementptr inbounds %struct.nvif_client, ptr %client, i32 0, i32 2
  %15 = ptrtoint ptr %version19 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %version19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.then22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %if.end
  call void @nvif_object_dtor(ptr noundef %client) #4
  %16 = ptrtoint ptr %driver14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver14, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then22.cleanup_crit_edge, label %if.then.i

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then22
  %fini.i = getelementptr inbounds %struct.nvif_driver, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fini.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 4
  call void %19(ptr noundef %21) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %22 = ptrtoint ptr %driver14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %driver14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.then22.cleanup_crit_edge ], [ %call.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nop) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/client.c", i32 74, i32 25}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
