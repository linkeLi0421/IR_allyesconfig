; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/sample.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/sample.c"
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
%struct.mlx5e_tc_flow = type { %struct.rhash_head, ptr, i64, i32, [2 x ptr], %struct.list_head, ptr, %struct.list_head, ptr, [32 x %struct.encap_route_flow_item], [32 x %struct.encap_flow_item], ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.list_head, %struct.refcount_struct, %struct.callback_head, %struct.completion, %struct.completion, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.encap_route_flow_item = type { ptr, i32 }
%struct.encap_flow_item = type { ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.221, ptr }
%union.anon.221 = type { %struct.anon.226 }
%struct.anon.226 = type { i32, i64, i64, i64, i32 }
%struct.anon.225 = type { ptr, i32, i32, i8 }
%struct.mlx5e_sample_attr = type { i32, i32, i32, i32, i32, ptr }
%struct.psample_group = type { %struct.list_head, ptr, i32, i32, i32, %struct.callback_head }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.234 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.234 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.235], ptr, ptr }
%struct.anon.235 = type { i32, ptr, ptr, ptr, ptr, i32 }

@mlx5e_tc_act_sample = dso_local global { %struct.mlx5e_tc_act, [20 x i8] } { %struct.mlx5e_tc_act { ptr @tc_act_can_offload_sample, ptr @tc_act_parse_sample, ptr null }, [20 x i8] zeroinitializer }, align 32
@tc_act_can_offload_sample.__msg = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlx5_core: Sample action with connection tracking is not supported\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"mlx5e_tc_act_sample\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 48, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.5 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/sample.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 16, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @mlx5e_tc_act_sample, ptr @tc_act_can_offload_sample.__msg], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_sample to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_act_can_offload_sample.__msg to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tc_act_can_offload_sample(ptr nocapture noundef readonly %parse_state, ptr nocapture noundef readnone %act, i32 noundef %act_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %flow = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %2 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flow, align 4
  %flags.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !13
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_act_can_offload_sample.__msg) #3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tc_act_can_offload_sample.__msg, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %tobool.i.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_act_parse_sample(ptr nocapture noundef readonly %parse_state, ptr nocapture noundef readonly %act, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %rate = getelementptr inbounds %struct.anon.225, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %rate1 = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rate1, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %group_num = getelementptr inbounds %struct.psample_group, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %group_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %group_num, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call7.i.i, align 8
  %truncate = getelementptr inbounds %struct.anon.225, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %truncate, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %trunc_size = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trunc_size, align 8
  %trunc_size5 = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %trunc_size5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %trunc_size5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %sample_attr7 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 4
  %15 = ptrtoint ptr %sample_attr7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %sample_attr7, align 4
  %flow = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %16 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %flow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !15
  %flags.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %17, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @mlx5e_tc_act_sample, !1, !"mlx5e_tc_act_sample", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/sample.c", i32 48, i32 21}
!2 = !{ptr @tc_act_can_offload_sample.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/sample.c", i32 16, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2160505345}
!14 = !{i8 0, i8 2}
!15 = !{i64 2160504154}
