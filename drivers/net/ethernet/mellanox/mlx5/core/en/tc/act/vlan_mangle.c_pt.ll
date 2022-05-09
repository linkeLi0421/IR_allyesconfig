; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/vlan_mangle.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/vlan_mangle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_act = type { ptr, ptr, ptr }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.222, ptr }
%union.anon.222 = type { %struct.anon.230 }
%struct.anon.230 = type { i32, i64, i64, i64, i32 }
%struct.anon.224 = type { i32, i32, i32, i32 }
%struct.mlx5e_tc_flow_parse_attr = type { [32 x ptr], [32 x %struct.mlx5e_mpls_info], ptr, %struct.mlx5_flow_spec, %struct.mlx5e_tc_mod_hdr_acts, [32 x i32], %struct.ethhdr, %struct.mlx5e_tc_act_parse_state }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx5e_tc_act_parse_state = type { i32, ptr, ptr, i8, i8, i8, i8, i8, ptr, %struct.mlx5e_mpls_info, [2 x %struct.pedit_headers_action], [32 x i32], i32, ptr }
%struct.pedit_headers_action = type { %struct.pedit_headers, %struct.pedit_headers, i32 }
%struct.pedit_headers = type { %struct.ethhdr, %struct.vlan_hdr, %struct.iphdr, %struct.ipv6hdr, %struct.tcphdr, %struct.udphdr }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.anon.223 = type { i16, i16, i8 }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.239 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.239 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.240], ptr, ptr }
%struct.anon.240 = type { i32, ptr, ptr, ptr, ptr, i32 }

@mlx5e_tc_act_vlan_add_rewrite_action.__msg = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mlx5_core: VLAN rewrite action must have VLAN protocol match\00", [35 x i8] zeroinitializer }, align 32
@mlx5e_tc_act_vlan_add_rewrite_action.__msg.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mlx5_core: Changing VLAN prio is not supported\00", [49 x i8] zeroinitializer }, align 32
@mlx5e_tc_act_vlan_mangle = dso_local global { %struct.mlx5e_tc_act, [20 x i8] } { %struct.mlx5e_tc_act { ptr @tc_act_can_offload_vlan_mangle, ptr @tc_act_parse_vlan_mangle, ptr null }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 36, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 43, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"mlx5e_tc_act_vlan_mangle\00", align 1
@___asan_gen_.9 = private constant [67 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/vlan_mangle.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 84, i32 21 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg, ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg.1, ptr @mlx5e_tc_act_vlan_mangle], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_vlan_mangle to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_act_vlan_add_rewrite_action(ptr noundef %priv, i32 noundef %namespace, ptr nocapture noundef readonly %act, ptr noundef %parse_attr, ptr noundef %hdrs, ptr nocapture noundef %action, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %pedit_act = alloca %struct.flow_action_entry, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, 4095
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pedit_act) #4
  %4 = getelementptr inbounds i8, ptr %pedit_act, i32 16
  %5 = call ptr @memset(ptr %4, i32 255, i32 56)
  %6 = ptrtoint ptr %pedit_act to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 13, ptr %pedit_act, align 8
  %hw_index = getelementptr inbounds %struct.flow_action_entry, ptr %pedit_act, i32 0, i32 1
  %7 = getelementptr inbounds %struct.flow_action_entry, ptr %pedit_act, i32 0, i32 5
  %8 = call ptr @memset(ptr %hw_index, i32 0, i32 16)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %7, align 8
  %offset = getelementptr inbounds %struct.anon.224, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 14, ptr %offset, align 4
  %mask = getelementptr inbounds %struct.flow_action_entry, ptr %pedit_act, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -4096, ptr %mask, align 8
  %val = getelementptr inbounds %struct.anon.224, ptr %7, i32 0, i32 3
  %conv3 = zext i16 %3 to i32
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv3, ptr %val, align 4
  %cookie = getelementptr inbounds %struct.flow_action_entry, ptr %pedit_act, i32 0, i32 6
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cookie, align 8
  %14 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action, align 4
  %spec = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %parse_attr, i32 0, i32 3
  %call = tail call ptr @mlx5e_get_match_headers_criteria(i32 noundef %15, ptr noundef %spec) #4
  %16 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %action, align 4
  %call5 = tail call ptr @mlx5e_get_match_headers_value(i32 noundef %17, ptr noundef %spec) #4
  %add.ptr = getelementptr i32, ptr %call, i32 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %20 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %add.ptr7 = getelementptr i32, ptr %call5, i32 4
  %21 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr7, align 4
  %23 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not = icmp eq i32 %23, 0
  br i1 %tobool10.not, label %land.lhs.true.do.body_crit_edge, label %if.end13

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_act_vlan_add_rewrite_action.__msg) #4
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg, ptr %extack, align 4
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true
  %add.ptr14 = getelementptr i32, ptr %call, i32 3
  %25 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr14, align 4
  %shr15 = lshr i32 %26, 13
  %conv17 = and i32 %shr15, 7
  %add.ptr18 = getelementptr i32, ptr %call5, i32 3
  %27 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr18, align 4
  %shr19 = lshr i32 %28, 13
  %prio = getelementptr inbounds %struct.anon.223, ptr %0, i32 0, i32 2
  %29 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %prio, align 4
  %conv22 = zext i8 %30 to i32
  %and25 = and i32 %conv17, %shr19
  call void @__sanitizer_cov_trace_cmp4(i32 %and25, i32 %conv22)
  %cmp.not = icmp eq i32 %and25, %conv22
  br i1 %cmp.not, label %if.end36, label %do.body28

do.body28:                                        ; preds = %if.end13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_act_vlan_add_rewrite_action.__msg.1) #4
  %tobool30.not = icmp eq ptr %extack, null
  br i1 %tobool30.not, label %do.body28.cleanup_crit_edge, label %if.then31

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = call i32 @mlx5e_tc_act_pedit_parse_action(ptr noundef %priv, ptr noundef nonnull %pedit_act, i32 noundef %namespace, ptr noundef %parse_attr, ptr noundef %hdrs, ptr noundef null, ptr noundef %extack) #4
  %32 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %action, align 4
  %or = or i32 %33, 64
  store i32 %or, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then31, %do.body28.cleanup_crit_edge, %if.then12, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ -95, %if.then12 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then31 ], [ -95, %do.body28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pedit_act) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_get_match_headers_criteria(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_get_match_headers_value(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_act_pedit_parse_action(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc_act_can_offload_vlan_mangle(ptr nocapture noundef readnone %parse_state, ptr nocapture noundef readnone %act, i32 noundef %act_index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_act_parse_vlan_mangle(ptr noundef %parse_state, ptr nocapture noundef readonly %act, ptr noundef %priv, ptr nocapture noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flow = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %0 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow, align 4
  %call = tail call i32 @mlx5e_get_flow_namespace(ptr noundef %1) #4
  %parse_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 5
  %2 = ptrtoint ptr %parse_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parse_attr, align 4
  %hdrs = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 10
  %extack = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extack, align 4
  %call1 = tail call i32 @mlx5e_tc_act_vlan_add_rewrite_action(ptr noundef %priv, i32 noundef %call, ptr noundef %act, ptr noundef %3, ptr noundef %hdrs, ptr noundef %attr, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp = icmp eq i32 %call, 8
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %out_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 4
  %6 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_count, align 4
  %split_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 3
  %8 = ptrtoint ptr %split_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %split_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_get_flow_namespace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/vlan_mangle.c", i32 36, i32 3}
!2 = !{ptr @mlx5e_tc_act_vlan_add_rewrite_action.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/vlan_mangle.c", i32 43, i32 3}
!4 = !{ptr @mlx5e_tc_act_vlan_mangle, !5, !"mlx5e_tc_act_vlan_mangle", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/vlan_mangle.c", i32 84, i32 21}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
