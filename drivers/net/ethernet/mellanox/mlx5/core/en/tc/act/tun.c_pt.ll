; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/tun.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/tun.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_act = type { ptr, ptr, ptr }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.221, ptr }
%union.anon.221 = type { %struct.anon.226 }
%struct.anon.226 = type { i32, i64, i64, i64, i32 }
%struct.mlx5e_tc_act_parse_state = type { i32, ptr, ptr, i8, i8, i8, i8, i8, ptr, %struct.mlx5e_mpls_info, [2 x %struct.pedit_headers_action], [32 x i32], i32, ptr }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.pedit_headers_action = type { %struct.pedit_headers, %struct.pedit_headers, i32 }
%struct.pedit_headers = type { %struct.ethhdr, %struct.vlan_hdr, %struct.iphdr, %struct.ipv6hdr, %struct.tcphdr, %struct.udphdr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }

@mlx5e_tc_act_tun_encap = dso_local global { %struct.mlx5e_tc_act, [20 x i8] } { %struct.mlx5e_tc_act { ptr @tc_act_can_offload_tun_encap, ptr @tc_act_parse_tun_encap, ptr null }, [20 x i8] zeroinitializer }, align 32
@mlx5e_tc_act_tun_decap = dso_local global { %struct.mlx5e_tc_act, [20 x i8] } { %struct.mlx5e_tc_act { ptr @tc_act_can_offload_tun_decap, ptr @tc_act_parse_tun_decap, ptr null }, [20 x i8] zeroinitializer }, align 32
@tc_act_can_offload_tun_encap.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlx5_core: Zero tunnel attributes is not supported\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"mlx5e_tc_act_tun_encap\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 53, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"mlx5e_tc_act_tun_decap\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 58, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.8 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/tun.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 14, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mlx5e_tc_act_tun_encap, ptr @mlx5e_tc_act_tun_decap, ptr @tc_act_can_offload_tun_encap.__msg], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_tun_encap to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_tun_decap to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_act_can_offload_tun_encap.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tc_act_can_offload_tun_encap(ptr nocapture noundef readonly %parse_state, ptr nocapture noundef readonly %act, i32 noundef %act_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_act_can_offload_tun_encap.__msg) #5
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %if.then2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tc_act_can_offload_tun_encap.__msg, ptr %4, align 4
  br label %return

return:                                           ; preds = %if.then2, %do.body.return_crit_edge, %entry.return_crit_edge
  %6 = xor i1 %tobool.not, true
  ret i1 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc_act_parse_tun_encap(ptr nocapture noundef writeonly %parse_state, ptr nocapture noundef readonly %act, ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %attr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tun_info = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 8
  %3 = ptrtoint ptr %tun_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %tun_info, align 4
  %encap = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 4
  %4 = ptrtoint ptr %encap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %encap, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc_act_can_offload_tun_decap(ptr nocapture noundef readnone %parse_state, ptr nocapture noundef readnone %act, i32 noundef %act_index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tc_act_parse_tun_decap(ptr nocapture noundef writeonly %parse_state, ptr nocapture noundef readnone %act, ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %attr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %decap = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 5
  %0 = ptrtoint ptr %decap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %decap, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mlx5e_tc_act_tun_encap, !1, !"mlx5e_tc_act_tun_encap", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/tun.c", i32 53, i32 21}
!2 = !{ptr @mlx5e_tc_act_tun_decap, !3, !"mlx5e_tc_act_tun_decap", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/tun.c", i32 58, i32 21}
!4 = !{ptr @tc_act_can_offload_tun_encap.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/tun.c", i32 14, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
