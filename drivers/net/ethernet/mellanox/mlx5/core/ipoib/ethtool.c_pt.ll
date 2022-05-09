; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/ipoib/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.155, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.155 = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.156, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.156 = type { [3 x i32], [3 x i32], [3 x i32] }

@mlx5i_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1587, i32 0, ptr @mlx5i_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_get_coalesce, ptr @mlx5i_set_coalesce, ptr @mlx5i_get_ringparam, ptr @mlx5i_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_get_strings, ptr null, ptr @mlx5i_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_get_sset_count, ptr @mlx5i_get_rxnfc, ptr @mlx5i_set_rxnfc, ptr @mlx5i_flash_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_get_channels, ptr @mlx5i_set_channels, ptr null, ptr null, ptr null, ptr @mlx5i_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mlx5i_pkey_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @mlx5i_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_core[ib_ipoib]\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"mlx5i_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 250, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"mlx5i_pkey_ethtool_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 274, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ethtool.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 42, i32 27 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mlx5i_ethtool_ops, ptr @mlx5i_pkey_ethtool_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_pkey_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_get_drvinfo(ptr noundef %dev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  tail call void @mlx5e_ethtool_get_drvinfo(ptr noundef %mlx5e_priv, ptr noundef %drvinfo) #4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_get_coalesce(ptr noundef %netdev, ptr noundef %coal, ptr noundef %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_get_coalesce(ptr noundef %mlx5e_priv, ptr noundef %coal, ptr noundef %kernel_coal) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_set_coalesce(ptr noundef %netdev, ptr noundef %coal, ptr noundef %kernel_coal, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_set_coalesce(ptr noundef %mlx5e_priv, ptr noundef %coal, ptr noundef %kernel_coal, ptr noundef %extack) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_get_ringparam(ptr noundef %dev, ptr noundef %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  tail call void @mlx5e_ethtool_get_ringparam(ptr noundef %mlx5e_priv, ptr noundef %param) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_set_ringparam(ptr noundef %dev, ptr noundef %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_set_ringparam(ptr noundef %mlx5e_priv, ptr noundef %param) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_get_strings(ptr noundef %dev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  tail call void @mlx5e_ethtool_get_strings(ptr noundef %mlx5e_priv, i32 noundef %stringset, ptr noundef %data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_get_ethtool_stats(ptr noundef %dev, ptr noundef %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  tail call void @mlx5e_ethtool_get_ethtool_stats(ptr noundef %mlx5e_priv, ptr noundef %stats, ptr noundef %data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_get_sset_count(ptr noundef %dev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_get_sset_count(ptr noundef %mlx5e_priv, i32 noundef %sset) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_get_rxnfc(ptr noundef %dev, ptr noundef %info, ptr noundef %rule_locs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_get_rxnfc(ptr noundef %mlx5e_priv, ptr noundef %info, ptr noundef %rule_locs) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_set_rxnfc(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fs1 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs1, align 8
  %and.i = and i32 %1, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  %call3 = tail call i32 @mlx5e_ethtool_set_rxnfc(ptr noundef %mlx5e_priv, ptr noundef %cmd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_flash_device(ptr noundef %netdev, ptr noundef %flash) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_flash_device(ptr noundef %mlx5e_priv, ptr noundef %flash) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_get_channels(ptr noundef %dev, ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  tail call void @mlx5e_ethtool_get_channels(ptr noundef %mlx5e_priv, ptr noundef %ch) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_set_channels(ptr noundef %dev, ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_set_channels(ptr noundef %mlx5e_priv, ptr noundef %ch) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_get_ts_info(ptr noundef %netdev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  %call1 = tail call i32 @mlx5e_ethtool_get_ts_info(ptr noundef %mlx5e_priv, ptr noundef %info) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %link_ksettings) #0 align 64 {
entry:
  %ib_link_width_oper = alloca i16, align 2
  %ib_proto_oper = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11388
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ib_link_width_oper) #4
  %2 = ptrtoint ptr %ib_link_width_oper to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ib_link_width_oper, align 2, !annotation !15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ib_proto_oper) #4
  %3 = ptrtoint ptr %ib_proto_oper to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %ib_proto_oper, align 2, !annotation !15
  %call2 = call i32 @mlx5_query_ib_port_oper(ptr noundef %1, ptr noundef nonnull %ib_link_width_oper, ptr noundef nonnull %ib_proto_oper, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1
  %4 = call ptr @memset(ptr %link_modes, i32 0, i32 24)
  %5 = ptrtoint ptr %ib_link_width_oper to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ib_link_width_oper, align 2
  %7 = ptrtoint ptr %ib_proto_oper to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ib_proto_oper, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end.cleanup_crit_edge [
    i16 1, label %if.end.if.end.i_crit_edge
    i16 2, label %sw.bb1.i.i
    i16 4, label %if.end.sw.bb2.i.i_crit_edge
    i16 8, label %if.end.sw.bb2.i.i_crit_edge27
    i16 16, label %sw.bb3.i.i
    i16 32, label %sw.bb4.i.i
    i16 64, label %sw.bb5.i.i
    i16 128, label %sw.bb6.i.i
  ]

if.end.sw.bb2.i.i_crit_edge27:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2.i.i

if.end.sw.bb2.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2.i.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %if.end.sw.bb2.i.i_crit_edge, %if.end.sw.bb2.i.i_crit_edge27
  br label %if.end.i

sw.bb3.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

sw.bb4.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

sw.bb5.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

sw.bb6.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.if.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 2500, %if.end.if.end.i_crit_edge ], [ 5000, %sw.bb1.i.i ], [ 10000, %sw.bb2.i.i ], [ 14000, %sw.bb3.i.i ], [ 25000, %sw.bb4.i.i ], [ 50000, %sw.bb5.i.i ], [ 100000, %sw.bb6.i.i ]
  %10 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %6, label %if.end.i.cleanup_crit_edge [
    i16 1, label %if.end.i.mlx5i_get_speed_settings.exit_crit_edge
    i16 2, label %sw.bb1.i11.i
    i16 4, label %sw.bb2.i12.i
    i16 8, label %sw.bb3.i13.i
    i16 16, label %sw.bb4.i14.i
  ]

if.end.i.mlx5i_get_speed_settings.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5i_get_speed_settings.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1.i11.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5i_get_speed_settings.exit

sw.bb2.i12.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5i_get_speed_settings.exit

sw.bb3.i13.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5i_get_speed_settings.exit

sw.bb4.i14.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5i_get_speed_settings.exit

mlx5i_get_speed_settings.exit:                    ; preds = %sw.bb4.i14.i, %sw.bb3.i13.i, %sw.bb2.i12.i, %sw.bb1.i11.i, %if.end.i.mlx5i_get_speed_settings.exit_crit_edge
  %retval.0.i16.ph.i = phi i32 [ 1, %if.end.i.mlx5i_get_speed_settings.exit_crit_edge ], [ 2, %sw.bb1.i11.i ], [ 4, %sw.bb2.i12.i ], [ 8, %sw.bb3.i13.i ], [ 12, %sw.bb4.i14.i ]
  %mul22.i = mul nuw nsw i32 %retval.0.i16.ph.i, %retval.0.i.ph.i
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %port, align 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %autoneg, align 1
  %speed12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %14 = ptrtoint ptr %speed12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul22.i, ptr %speed12, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlx5i_get_speed_settings.exit, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5i_get_speed_settings.exit ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ib_proto_oper) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ib_link_width_oper) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_drvinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_coalesce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_ringparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_ringparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_strings(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_ethtool_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_sset_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_rxnfc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_rxnfc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_flash_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_channels(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_channels(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_ib_port_oper(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mlx5i_ethtool_ops, !1, !"mlx5i_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ethtool.c", i32 250, i32 26}
!2 = !{ptr @mlx5i_pkey_ethtool_ops, !3, !"mlx5i_pkey_ethtool_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ethtool.c", i32 274, i32 26}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ethtool.c", i32 42, i32 27}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
