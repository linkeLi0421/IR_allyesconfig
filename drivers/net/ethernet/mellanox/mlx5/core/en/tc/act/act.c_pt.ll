; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/act.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/act.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_act = type { ptr, ptr, ptr }
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

@tc_acts_fdb = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @mlx5e_tc_act_accept, ptr @mlx5e_tc_act_drop, ptr @mlx5e_tc_act_trap, ptr @mlx5e_tc_act_goto, ptr @mlx5e_tc_act_mirred, ptr @mlx5e_tc_act_mirred, ptr @mlx5e_tc_act_redirect_ingress, ptr null, ptr @mlx5e_tc_act_vlan, ptr @mlx5e_tc_act_vlan, ptr @mlx5e_tc_act_vlan_mangle, ptr @mlx5e_tc_act_tun_encap, ptr @mlx5e_tc_act_tun_decap, ptr @mlx5e_tc_act_pedit, ptr @mlx5e_tc_act_pedit, ptr @mlx5e_tc_act_csum, ptr null, ptr @mlx5e_tc_act_ptype, ptr null, ptr null, ptr null, ptr @mlx5e_tc_act_sample, ptr null, ptr @mlx5e_tc_act_ct, ptr null, ptr @mlx5e_tc_act_mpls_push, ptr @mlx5e_tc_act_mpls_pop, ptr null, ptr null, ptr null], [40 x i8] zeroinitializer }, align 32
@tc_acts_nic = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @mlx5e_tc_act_accept, ptr @mlx5e_tc_act_drop, ptr null, ptr @mlx5e_tc_act_goto, ptr @mlx5e_tc_act_mirred_nic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_tc_act_pedit, ptr @mlx5e_tc_act_pedit, ptr @mlx5e_tc_act_csum, ptr @mlx5e_tc_act_mark, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_tc_act_ct, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [40 x i8] zeroinitializer }, align 32
@mlx5e_tc_act_accept = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_drop = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_trap = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_goto = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_mirred = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_redirect_ingress = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_vlan = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_vlan_mangle = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_tun_encap = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_tun_decap = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_pedit = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_csum = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_ptype = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_sample = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_ct = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_mpls_push = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_mpls_pop = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_mirred_nic = external dso_local global %struct.mlx5e_tc_act, align 4
@mlx5e_tc_act_mark = external dso_local global %struct.mlx5e_tc_act, align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"tc_acts_fdb\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 9, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"tc_acts_nic\00", align 1
@___asan_gen_.5 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/act.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 40, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @tc_acts_fdb, ptr @tc_acts_nic], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_acts_fdb to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_acts_nic to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_tc_act_get(i32 noundef %act_id, i32 noundef %ns_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ns_type)
  %cmp = icmp eq i32 %ns_type, 8
  %cond = select i1 %cmp, ptr @tc_acts_fdb, ptr @tc_acts_nic
  %arrayidx = getelementptr ptr, ptr %cond, i32 %act_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_tc_act_init_parse_state(ptr nocapture noundef writeonly %parse_state, ptr noundef %flow, ptr nocapture noundef readonly %flow_action, ptr noundef %extack) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %parse_state, i32 0, i32 608)
  %flow1 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %1 = ptrtoint ptr %flow1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %flow, ptr %flow1, align 4
  %2 = ptrtoint ptr %flow_action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flow_action, align 8
  %4 = ptrtoint ptr %parse_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %parse_state, align 4
  %extack2 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %5 = ptrtoint ptr %extack2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %extack, ptr %extack2, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @tc_acts_fdb, !1, !"tc_acts_fdb", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/act.c", i32 9, i32 29}
!2 = !{ptr @tc_acts_nic, !3, !"tc_acts_nic", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/act.c", i32 40, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
