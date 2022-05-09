; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_dim.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_dim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dim_cq_moder = type { i16, i16, i16, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rx_dim_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %cur_moder = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur_moder) #3
  %0 = ptrtoint ptr %cur_moder to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cur_moder, align 8, !annotation !9
  %mode = getelementptr i8, ptr %work, i32 49
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mode, align 1
  %profile_ix = getelementptr i8, ptr %work, i32 48
  %3 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %profile_ix, align 8
  %conv = zext i8 %4 to i32
  call void @net_dim_get_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %cur_moder, i8 noundef zeroext %2, i32 noundef %conv) #3
  %mdev = getelementptr i8, ptr %work, i32 168
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %mcq = getelementptr i8, ptr %work, i32 -2656
  %7 = ptrtoint ptr %cur_moder to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %cur_moder, align 8
  %moder.sroa.0.0.extract.shift.i = lshr i32 %.fca.0.load, 16
  %moder.sroa.0.0.extract.trunc.i = trunc i32 %moder.sroa.0.0.extract.shift.i to i16
  %moder.sroa.2.0.extract.trunc.i = trunc i32 %.fca.0.load to i16
  %call.i = call i32 @mlx5_core_modify_cq_moderation(ptr noundef %6, ptr noundef %mcq, i16 noundef zeroext %moder.sroa.0.0.extract.trunc.i, i16 noundef zeroext %moder.sroa.2.0.extract.trunc.i) #3
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_moder) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tx_dim_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %cur_moder = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur_moder) #3
  %0 = ptrtoint ptr %cur_moder to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cur_moder, align 8, !annotation !9
  %mode = getelementptr i8, ptr %work, i32 49
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mode, align 1
  %profile_ix = getelementptr i8, ptr %work, i32 48
  %3 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %profile_ix, align 8
  %conv = zext i8 %4 to i32
  call void @net_dim_get_tx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %cur_moder, i8 noundef zeroext %2, i32 noundef %conv) #3
  %mdev = getelementptr i8, ptr %work, i32 492
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 4
  %mcq = getelementptr i8, ptr %work, i32 336
  %7 = ptrtoint ptr %cur_moder to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %cur_moder, align 8
  %moder.sroa.0.0.extract.shift.i = lshr i32 %.fca.0.load, 16
  %moder.sroa.0.0.extract.trunc.i = trunc i32 %moder.sroa.0.0.extract.shift.i to i16
  %moder.sroa.2.0.extract.trunc.i = trunc i32 %.fca.0.load to i16
  %call.i = call i32 @mlx5_core_modify_cq_moderation(ptr noundef %6, ptr noundef %mcq, i16 noundef zeroext %moder.sroa.0.0.extract.trunc.i, i16 noundef zeroext %moder.sroa.2.0.extract.trunc.i) #3
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_moder) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_tx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_modify_cq_moderation(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
