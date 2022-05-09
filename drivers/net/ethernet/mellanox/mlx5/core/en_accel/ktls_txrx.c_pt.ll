; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_txrx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_set_tls_static_params_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %struct.mlx5_wqe_tls_static_params_seg }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon }
%union.anon = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.0, i64, i32, [28 x i8] }
%union.anon.0 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%struct.mlx5_wqe_tls_static_params_seg = type { [64 x i8] }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.mlx5e_set_tls_progress_params_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_tls_progress_params_seg }
%struct.mlx5_wqe_tls_progress_params_seg = type { i32, [12 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_ktls_build_static_params(ptr nocapture noundef %wqe, i16 noundef zeroext %pc, i32 noundef %sqn, ptr nocapture noundef readonly %info, i32 noundef %tis_tir_num, i32 noundef %key_id, i32 noundef %resync_tcp_sn, i1 noundef zeroext %fence, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %uctrl = getelementptr inbounds %struct.mlx5e_set_tls_static_params_wqe, ptr %wqe, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %conv1 = zext i16 %pc to i32
  %shl = shl nuw nsw i32 %conv1, 8
  %conv2 = select i1 %cmp, i32 16777216, i32 33554432
  %or = or i32 %conv2, %shl
  %or4 = or i32 %or, 37
  %0 = ptrtoint ptr %wqe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or4, ptr %wqe, align 4
  %shl5 = shl i32 %sqn, 8
  %or6 = or i32 %shl5, 12
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %wqe, i32 0, i32 1
  %1 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or6, ptr %qpn_ds, align 4
  %conv9 = select i1 %fence, i8 32, i8 0
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %wqe, i32 0, i32 4
  %2 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv9, ptr %fm_ce_se, align 1
  %shl10 = shl i32 %tis_tir_num, 8
  %3 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %wqe, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl10, ptr %3, align 4
  %5 = ptrtoint ptr %uctrl to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %uctrl, align 8
  %6 = getelementptr inbounds %struct.mlx5e_set_tls_static_params_wqe, ptr %wqe, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %6, align 2
  %params = getelementptr inbounds %struct.mlx5e_set_tls_static_params_wqe, ptr %wqe, i32 0, i32 3
  %salt2.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %info, i32 0, i32 3
  %rec_seq4.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %info, i32 0, i32 4
  %add.ptr.i = getelementptr %struct.mlx5e_set_tls_static_params_wqe, ptr %wqe, i32 0, i32 3, i32 0, i32 20
  %add.ptr6.i = getelementptr %struct.mlx5e_set_tls_static_params_wqe, ptr %wqe, i32 0, i32 3, i32 0, i32 8
  %8 = ptrtoint ptr %salt2.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %salt2.i, align 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %add.ptr.i, align 1
  %11 = ptrtoint ptr %rec_seq4.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %rec_seq4.i, align 1
  %13 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr6.i, align 1
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %params, align 4
  %and.i = and i32 %15, 16777200
  %or53.i = or i32 %and.i, -1996488703
  store i32 %or53.i, ptr %params, align 4
  %add.ptr62.i = getelementptr %struct.mlx5e_set_tls_static_params_wqe, ptr %wqe, i32 0, i32 3, i32 0, i32 16
  %16 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %resync_tcp_sn, ptr %add.ptr62.i, align 4
  %add.ptr75.i = getelementptr %struct.mlx5e_set_tls_static_params_wqe, ptr %wqe, i32 0, i32 3, i32 0, i32 32
  %17 = ptrtoint ptr %add.ptr75.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr75.i, align 4
  %and76.i = and i32 %18, -16777216
  %and77.i = and i32 %key_id, 16777215
  %or79.i = or i32 %and76.i, %and77.i
  store i32 %or79.i, ptr %add.ptr75.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_ktls_build_progress_params(ptr nocapture noundef %wqe, i16 noundef zeroext %pc, i32 noundef %sqn, i32 noundef %tis_tir_num, i1 noundef zeroext %fence, i32 noundef %next_record_tcp_sn, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %conv1 = zext i16 %pc to i32
  %shl = shl nuw nsw i32 %conv1, 8
  %conv2 = select i1 %cmp, i32 16777216, i32 33554432
  %or = or i32 %conv2, %shl
  %or4 = or i32 %or, 32
  %0 = ptrtoint ptr %wqe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or4, ptr %wqe, align 4
  %shl5 = shl i32 %sqn, 8
  %or6 = or i32 %shl5, 2
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %wqe, i32 0, i32 1
  %1 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or6, ptr %qpn_ds, align 4
  %conv9 = select i1 %fence, i8 32, i8 0
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %wqe, i32 0, i32 4
  %2 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv9, ptr %fm_ce_se, align 1
  %params = getelementptr inbounds %struct.mlx5e_set_tls_progress_params_wqe, ptr %wqe, i32 0, i32 1
  %ctx1.i = getelementptr inbounds %struct.mlx5e_set_tls_progress_params_wqe, ptr %wqe, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tis_tir_num, ptr %params, align 4
  %4 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %next_record_tcp_sn, ptr %ctx1.i, align 4
  %add.ptr13.i = getelementptr %struct.mlx5e_set_tls_progress_params_wqe, ptr %wqe, i32 0, i32 1, i32 1, i32 8
  %5 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr13.i, align 4
  %and27.i = and i32 %6, 268435455
  store i32 %and27.i, ptr %add.ptr13.i, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
