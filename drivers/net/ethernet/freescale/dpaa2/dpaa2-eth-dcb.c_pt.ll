; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpni_congestion_notification_cfg = type { i32, i32, i32, i64, i64, %struct.dpni_dest_cfg, i16 }
%struct.dpni_dest_cfg = type { i32, i32, i8 }
%struct.dpni_link_cfg = type { i32, i64 }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }

@dpaa2_eth_dcbnl_ops = dso_local constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_dcbnl_ieee_getpfc, ptr @dpaa2_eth_dcbnl_ieee_setpfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_dcbnl_getcap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_dcbnl_getdcbx, ptr @dpaa2_eth_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Pause support must be enabled in order for PFC to work!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpni_set_link_cfg failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dpni_set_congestion_notification failed\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 9]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"dpaa2_eth_dcbnl_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 144, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 81, i32 24 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 91, i32 23 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [56 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-dcb.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 53, i32 8 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @dpaa2_eth_dcbnl_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_eth_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpaa2_eth_dcbnl_ieee_getpfc(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr i8, ptr %net_dev, i32 164864
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %options, align 8
  %and = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pfc1 = getelementptr i8, ptr %net_dev, i32 164912
  %2 = call ptr @memcpy(ptr %pfc, ptr %pfc1, i32 136)
  %num_tcs = getelementptr i8, ptr %net_dev, i32 164793
  %3 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_tcs, align 1
  %5 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pfc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_dcbnl_ieee_setpfc(ptr noundef %net_dev, ptr nocapture noundef readonly %pfc) #1 align 64 {
entry:
  %cfg.i = alloca %struct.dpni_congestion_notification_cfg, align 8
  %link_cfg = alloca %struct.dpni_link_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_cfg) #7
  %0 = ptrtoint ptr %link_cfg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %link_cfg, align 8
  %mbc = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %1 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mbc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pfc3 = getelementptr i8, ptr %net_dev, i32 164912
  %pfc_en = getelementptr i8, ptr %net_dev, i32 164913
  %5 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pfc_en, align 1
  %pfc_en5 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %7 = ptrtoint ptr %pfc_en5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfc_en5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp = icmp eq i8 %6, %8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %link_state = getelementptr i8, ptr %net_dev, i32 164856
  %options = getelementptr i8, ptr %net_dev, i32 164864
  %9 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %options, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 2
  %13 = lshr i32 %11, 3
  %14 = xor i32 %12, %13
  %xor.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool8.i = icmp ne i32 %xor.i, 0
  %and.i = and i64 %10, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %call10.not = xor i1 %tobool8.i, true
  %brmerge = select i1 %tobool.i.not, i1 true, i1 %call10.not
  br i1 %brmerge, label %if.then16, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %net_dev, ptr noundef nonnull @.str) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end9.if.end17_crit_edge
  %15 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_state, align 8
  %17 = ptrtoint ptr %link_cfg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %link_cfg, align 8
  %18 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %options, align 8
  %options22 = getelementptr inbounds %struct.dpni_link_cfg, ptr %link_cfg, i32 0, i32 1
  %20 = ptrtoint ptr %pfc_en5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pfc_en5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp eq i8 %21, 0
  %and = and i64 %19, -17
  %masksel = select i1 %tobool24.not, i64 0, i64 16
  %storemerge = or i64 %masksel, %and
  %22 = ptrtoint ptr %options22 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %storemerge, ptr %options22, align 8
  %mc_io = getelementptr i8, ptr %net_dev, i32 164832
  %23 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mc_io, align 8
  %mc_token = getelementptr i8, ptr %net_dev, i32 164848
  %25 = ptrtoint ptr %mc_token to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mc_token, align 8
  %call29 = call i32 @dpni_set_link_cfg(ptr noundef %24, i32 noundef 0, i16 noundef zeroext %26, ptr noundef nonnull %link_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  %27 = ptrtoint ptr %pfc_en5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pfc_en5, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #7
  %29 = call ptr @memset(ptr %cfg.i, i32 0, i32 48)
  %notification_mode.i = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg.i, i32 0, i32 6
  %30 = ptrtoint ptr %notification_mode.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 64, ptr %notification_mode.i, align 4
  %31 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %cfg.i, align 8
  %message_ctx.i = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg.i, i32 0, i32 3
  %num_tcs.i = getelementptr i8, ptr %net_dev, i32 164793
  %32 = call ptr @memset(ptr %message_ctx.i, i32 0, i32 16)
  %33 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_tcs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp41.not.i = icmp eq i8 %34, 0
  br i1 %cmp41.not.i, label %if.end32.if.end37_crit_edge, label %for.body.lr.ph.i

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.body.lr.ph.i:                                 ; preds = %if.end32
  %conv40.i = zext i8 %34 to i32
  %conv.i.i = zext i8 %28 to i32
  %num_channels.i = getelementptr i8, ptr %net_dev, i32 164716
  %threshold_entry.i = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg.i, i32 0, i32 1
  %threshold_exit.i = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg.i, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %35 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_tcs.i, align 1
  %conv.i = zext i8 %36 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end37_crit_edge

for.cond.i.if.end37_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv43.i = phi i32 [ %conv40.i, %for.body.lr.ph.i ], [ %conv.i, %for.cond.i.for.body.i_crit_edge ]
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %conv2.i = trunc i32 %i.042.i to i8
  %shl.i.i = shl nuw i32 1, %i.042.i
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_channels.i, align 4
  %conv3.i = zext i8 %38 to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 10
  %div.i = udiv i32 %mul.i, %conv43.i
  %div737.i = lshr i32 %div.i, 1
  %39 = ptrtoint ptr %threshold_entry.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div737.i, ptr %threshold_entry.i, align 4
  %mul16.i = mul nuw nsw i32 %div737.i, 3
  %div1739.i = lshr i32 %mul16.i, 2
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %threshold_entry.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %threshold_entry.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %div1739.i, %if.then.i ], [ 0, %if.else.i ]
  %41 = ptrtoint ptr %threshold_exit.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge.i, ptr %threshold_exit.i, align 8
  %42 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mc_io, align 8
  %44 = ptrtoint ptr %mc_token to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mc_token, align 8
  %call21.i = call i32 @dpni_set_congestion_notification(ptr noundef %43, i32 noundef 0, i16 noundef zeroext %45, i32 noundef 0, i8 noundef zeroext %conv2.i, ptr noundef nonnull %cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %dpaa2_eth_set_pfc_cn.exit

dpaa2_eth_set_pfc_cn.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.2) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #7
  br label %cleanup

if.end37:                                         ; preds = %for.cond.i.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #7
  %48 = call ptr @memcpy(ptr %pfc3, ptr %pfc, i32 136)
  %49 = ptrtoint ptr %pfc_en5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pfc_en5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool40 = icmp ne i8 %50, 0
  %conv42 = zext i1 %tobool40 to i8
  %pfc_enabled = getelementptr i8, ptr %net_dev, i32 164910
  %51 = ptrtoint ptr %pfc_enabled to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv42, ptr %pfc_enabled, align 2
  call void @dpaa2_eth_set_rx_taildrop(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool8.i, i1 noundef zeroext %tobool40) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %dpaa2_eth_set_pfc_cn.exit, %if.then31, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.then31 ], [ 0, %if.end37 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call21.i, %dpaa2_eth_set_pfc_cn.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dpaa2_eth_dcbnl_getcap(ptr nocapture noundef readonly %net_dev, i32 noundef %capid, ptr nocapture noundef writeonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %capid, label %sw.default [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 6, label %sw.bb1
    i32 9, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_tcs = getelementptr i8, ptr %net_dev, i32 164793
  %1 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_tcs, align 1
  %conv = zext i8 %2 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %conv2 = trunc i32 %shl to i8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dcbx_mode = getelementptr i8, ptr %net_dev, i32 164911
  %3 = ptrtoint ptr %dcbx_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dcbx_mode, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.default ], [ %4, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %cap, align 1
  ret i8 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dpaa2_eth_dcbnl_getdcbx(ptr nocapture noundef readonly %net_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_mode = getelementptr i8, ptr %net_dev, i32 164911
  %0 = ptrtoint ptr %dcbx_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_mode, align 1
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dpaa2_eth_dcbnl_setdcbx(ptr nocapture noundef readonly %net_dev, i8 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_mode = getelementptr i8, ptr %net_dev, i32 164911
  %0 = ptrtoint ptr %dcbx_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_mode, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %mode)
  %cmp.not = icmp ne i8 %1, %mode
  %conv3 = zext i1 %cmp.not to i8
  ret i8 %conv3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpni_set_link_cfg(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_eth_set_rx_taildrop(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpni_set_congestion_notification(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @dpaa2_eth_dcbnl_ops, !1, !"dpaa2_eth_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-dcb.c", i32 144, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-dcb.c", i32 81, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-dcb.c", i32 91, i32 23}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-dcb.c", i32 53, i32 8}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
