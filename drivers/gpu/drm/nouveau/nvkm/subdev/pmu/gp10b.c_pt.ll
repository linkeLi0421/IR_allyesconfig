; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.141, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, i32 }
%struct.anon.142 = type { ptr, i32 }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon.136, %struct.anon.137, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.140, [0 x %struct.nvkm_sclass] }
%struct.anon.136 = type { ptr, i32 }
%struct.anon.137 = type { ptr, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv_pmu_acr_bootstrap_multiple_falcons_cmd = type { %struct.nv_pmu_acr_cmd, i32, i32, i32, i32, i32 }
%struct.nv_pmu_acr_cmd = type { %struct.nvfw_falcon_msg, i8 }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.nv_pmu_acr_bootstrap_multiple_falcons_msg = type { %struct.nv_pmu_acr_msg, i32 }
%struct.nv_pmu_acr_msg = type { %struct.nvfw_falcon_msg, i8 }

@gp10b_pmu_fwif = internal constant { [3 x %struct.nvkm_pmu_fwif], [48 x i8] } { [3 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 0, ptr @gm20b_pmu_load, ptr @gp10b_pmu, ptr @gp10b_pmu_acr }, %struct.nvkm_pmu_fwif { i32 -1, ptr @gm200_pmu_nofw, ptr @gp10b_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gp10b_pmu = internal constant { %struct.nvkm_pmu_func, [40 x i8] } { %struct.nvkm_pmu_func { ptr @gm200_pmu_flcn, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, ptr @gf100_pmu_enabled, ptr null, ptr null, ptr null, ptr @gt215_pmu_intr, ptr null, ptr @gm20b_pmu_recv, ptr @gm20b_pmu_initmsg, ptr null }, [40 x i8] zeroinitializer }, align 32
@gp10b_pmu_acr = internal constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 4, i32 52, ptr @gm20b_pmu_acr_bld_write, ptr @gm20b_pmu_acr_bld_patch, ptr @gm20b_pmu_acr_boot, i64 13, ptr @gm20b_pmu_acr_bootstrap_falcon, ptr @gp10b_pmu_acr_bootstrap_multiple_falcons }, [56 x i8] zeroinitializer }, align 32
@gm200_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"gp10b_pmu_fwif\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 95, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"gp10b_pmu\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 80, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"gp10b_pmu_acr\00", align 1
@___asan_gen_.8 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 66, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gp10b_pmu_fwif, ptr @gp10b_pmu, ptr @gp10b_pmu_acr], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp10b_pmu_fwif to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp10b_pmu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp10b_pmu_acr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp10b_pmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gp10b_pmu_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm20b_pmu_recv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_initmsg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm20b_pmu_acr_bld_write(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm20b_pmu_acr_bld_patch(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_acr_boot(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_acr_bootstrap_falcon(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp10b_pmu_acr_bootstrap_multiple_falcons(ptr noundef %falcon, i32 noundef %mask) #0 align 64 {
entry:
  %cmd = alloca %struct.nv_pmu_acr_bootstrap_multiple_falcons_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cmd) #4
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 28)
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %cmd, align 4
  %size = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 28, ptr %size, align 1
  %cmd_type = getelementptr inbounds %struct.nv_pmu_acr_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %cmd_type, align 4
  %falcon_mask = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_multiple_falcons_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %falcon_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mask, ptr %falcon_mask, align 4
  %hpq = getelementptr i8, ptr %falcon, i32 456
  %5 = ptrtoint ptr %hpq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hpq, align 4
  %subdev = getelementptr i8, ptr %falcon, i32 -52
  %call4 = call i32 @nvkm_falcon_cmdq_send(ptr noundef %6, ptr noundef nonnull %cmd, ptr noundef nonnull @gp10b_pmu_acr_bootstrap_multiple_falcons_cb, ptr noundef %subdev, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %falcon_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %falcon_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %8)
  %cmp6.not = icmp eq i32 %call4, %8
  %. = select i1 %cmp6.not, i32 0, i32 -5
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %call4, %entry.if.end8_crit_edge ], [ %., %if.then ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cmd) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gp10b_pmu_acr_bootstrap_multiple_falcons_cb(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %hdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %falcon_mask = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_multiple_falcons_msg, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %falcon_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %falcon_mask, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @gp10b_pmu_fwif, !1, !"gp10b_pmu_fwif", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c", i32 95, i32 1}
!2 = !{ptr @gp10b_pmu, !3, !"gp10b_pmu", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c", i32 80, i32 1}
!4 = !{ptr @gp10b_pmu_acr, !5, !"gp10b_pmu_acr", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c", i32 66, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
