; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef100_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef100_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ef100_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @efx_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_msglevel, ptr @efx_ethtool_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef100_ethtool_get_ringparam, ptr null, ptr null, ptr @efx_ethtool_get_pauseparam, ptr @efx_ethtool_set_pauseparam, ptr @efx_ethtool_self_test, ptr @efx_ethtool_get_strings, ptr null, ptr @efx_ethtool_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_sset_count, ptr @efx_ethtool_get_rxnfc, ptr @efx_ethtool_set_rxnfc, ptr null, ptr @efx_ethtool_reset, ptr @efx_ethtool_get_rxfh_key_size, ptr @efx_ethtool_get_rxfh_indir_size, ptr @efx_ethtool_get_rxfh, ptr @efx_ethtool_set_rxfh, ptr @efx_ethtool_get_rxfh_context, ptr @efx_ethtool_set_rxfh_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_module_info, ptr @efx_ethtool_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_ethtool_get_link_ksettings, ptr @efx_ethtool_set_link_ksettings, ptr null, ptr @efx_ethtool_get_fecparam, ptr @efx_ethtool_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"ef100_ethtool_ops\00", align 1
@___asan_gen_.2 = private constant [44 x i8] c"../drivers/net/ethernet/sfc/ef100_ethtool.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 39, i32 26 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ef100_ethtool_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef100_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_drvinfo(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_msglevel(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_set_msglevel(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ef100_ethtool_get_ringparam(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16384, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16384, ptr %tx_max_pending, align 4
  %rxq_entries = getelementptr i8, ptr %net_dev, i32 3644
  %2 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxq_entries, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %txq_entries = getelementptr i8, ptr %net_dev, i32 3648
  %5 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txq_entries, align 64
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_pauseparam(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_pauseparam(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_self_test(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_strings(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ethtool_get_stats(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_sset_count(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxnfc(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_rxnfc(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_reset(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh_key_size(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh_indir_size(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_rxfh(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_rxfh_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_rxfh_context(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_module_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_module_eeprom(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_get_fecparam(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ethtool_set_fecparam(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ef100_ethtool_ops, !1, !"ef100_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef100_ethtool.c", i32 39, i32 26}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
