; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_phylink.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_phylink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sparx5_port_status = type { i8, i8, i32, i8, i32, i32 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }

@sparx5_phylink_pcs_ops = dso_local constant { %struct.phylink_pcs_ops, [44 x i8] } { %struct.phylink_pcs_ops { ptr null, ptr @sparx5_pcs_get_state, ptr @sparx5_pcs_config, ptr @sparx5_pcs_aneg_restart, ptr null }, [44 x i8] zeroinitializer }, align 32
@sparx5_phylink_mac_ops = dso_local constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr null, ptr null, ptr @sparx5_phylink_mac_config, ptr null, ptr null, ptr @sparx5_phylink_mac_link_down, ptr @sparx5_phylink_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port PCS config failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"port config failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@___asan_gen_.2 = private unnamed_addr constant [23 x i8] c"sparx5_phylink_pcs_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 125, i32 30 }
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"sparx5_phylink_mac_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 131, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 116, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [58 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_phylink.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 56, i32 26 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @sparx5_phylink_pcs_ops, ptr @sparx5_phylink_mac_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_phylink_pcs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_phylink_mac_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_pcs_get_state(ptr noundef %pcs, ptr nocapture noundef %state) #0 align 64 {
entry:
  %status = alloca %struct.sparx5_port_status, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pcs, i32 -84
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status) #5
  %0 = call ptr @memset(ptr %status, i32 255, i32 20)
  %sparx5 = getelementptr i8, ptr %pcs, i32 -80
  %1 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sparx5, align 4
  %call1 = call i32 @sparx5_get_port_status(ptr noundef %2, ptr noundef %add.ptr.i, ptr noundef nonnull %status) #5
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %link_down = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 1
  %5 = ptrtoint ptr %link_down to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %link_down, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %phi.sel = select i1 %tobool2.not, i8 -128, i8 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i8 [ 0, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %link3 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %8 = ptrtoint ptr %link3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %link3, align 4
  %bf.clear = and i8 %bf.load, 95
  %bf.set = or i8 %bf.clear, %7
  %an_complete = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 3
  %9 = ptrtoint ptr %an_complete to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %an_complete, align 4, !range !17
  %bf.shl8 = shl nuw nsw i8 %10, 5
  %bf.set10 = or i8 %bf.set, %bf.shl8
  store i8 %bf.set10, ptr %link3, align 4
  %speed = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 2
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 4
  %speed12 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %13 = ptrtoint ptr %speed12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %speed12, align 4
  %duplex = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 4
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex, align 4
  %duplex13 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %duplex13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %duplex13, align 4
  %pause = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 5
  %17 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pause, align 4
  %pause14 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %19 = ptrtoint ptr %pause14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pause14, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_pcs_config(ptr noundef %pcs, i32 noundef %mode, i32 noundef %interface, ptr noundef %advertising, i1 noundef zeroext %permit_pause_to_mac) #0 align 64 {
entry:
  %conf = alloca %struct.sparx5_port_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pcs, i32 -84
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %conf) #5
  %conf1 = getelementptr i8, ptr %pcs, i32 -68
  %0 = call ptr @memcpy(ptr %conf, ptr %conf1, i32 40)
  %power_down = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 6
  %1 = ptrtoint ptr %power_down to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %power_down, align 1
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %interface, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  %inband = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 5
  %frombool3 = zext i1 %cmp.i to i8
  %3 = ptrtoint ptr %inband to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool3, ptr %inband, align 4
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %advertising, align 4
  %autoneg = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 7
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 6
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %autoneg, align 2
  %pause_adv = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 10
  %10 = ptrtoint ptr %pause_adv to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pause_adv, align 4
  %11 = load volatile i32, ptr %advertising, align 4
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %pause_adv to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %pause_adv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %advertising, align 4
  %16 = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pause_adv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pause_adv, align 4
  %or13 = or i32 %18, 256
  store i32 %or13, ptr %pause_adv, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %19 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %interface, label %if.end14.if.end22_crit_edge [
    i32 23, label %if.end14.if.then16_crit_edge
    i32 26, label %if.end14.if.then16_crit_edge51
    i32 27, label %if.end14.if.then16_crit_edge52
  ]

if.end14.if.then16_crit_edge52:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end14.if.then16_crit_edge51:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.end14.if.then16_crit_edge51, %if.end14.if.then16_crit_edge52
  %20 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %advertising, align 4
  %22 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  %media20 = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 4
  %. = select i1 %tobool18.not, i32 2, i32 1
  %23 = ptrtoint ptr %media20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %media20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end14.if.end22_crit_edge
  %speed.i = getelementptr i8, ptr %pcs, i32 -60
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed.i, align 4
  %speed1.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %26 = ptrtoint ptr %speed1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i = icmp eq i32 %25, %27
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

lor.lhs.false.i:                                  ; preds = %if.end22
  %28 = ptrtoint ptr %conf1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %conf1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %interface)
  %cmp3.not.i = icmp eq i32 %29, %interface
  br i1 %cmp3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.end26_crit_edge

lor.lhs.false.i.if.end26_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %autoneg.i = getelementptr i8, ptr %pcs, i32 -46
  %30 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %autoneg.i, align 2, !range !17
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %8)
  %cmp8.not.i = icmp eq i8 %31, %8
  br i1 %cmp8.not.i, label %lor.lhs.false10.i, label %lor.lhs.false4.i.if.end26_crit_edge

lor.lhs.false4.i.if.end26_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

lor.lhs.false10.i:                                ; preds = %lor.lhs.false4.i
  %pause_adv.i = getelementptr i8, ptr %pcs, i32 -40
  %32 = ptrtoint ptr %pause_adv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pause_adv.i, align 4
  %34 = ptrtoint ptr %pause_adv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pause_adv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp12.not.i = icmp eq i32 %33, %35
  br i1 %cmp12.not.i, label %lor.lhs.false14.i, label %lor.lhs.false10.i.if.end26_crit_edge

lor.lhs.false10.i.if.end26_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

lor.lhs.false14.i:                                ; preds = %lor.lhs.false10.i
  %power_down.i = getelementptr i8, ptr %pcs, i32 -47
  %36 = ptrtoint ptr %power_down.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %power_down.i, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp20.not.i = icmp eq i8 %37, 0
  br i1 %cmp20.not.i, label %port_conf_has_changed.exit, label %lor.lhs.false14.i.if.end26_crit_edge

lor.lhs.false14.i.if.end26_crit_edge:             ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

port_conf_has_changed.exit:                       ; preds = %lor.lhs.false14.i
  %media.i = getelementptr i8, ptr %pcs, i32 -52
  %38 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %media.i, align 4
  %media23.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 4
  %40 = ptrtoint ptr %media23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %media23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp24.not.i.not = icmp eq i32 %39, %41
  br i1 %cmp24.not.i.not, label %port_conf_has_changed.exit.cleanup_crit_edge, label %port_conf_has_changed.exit.if.end26_crit_edge

port_conf_has_changed.exit.if.end26_crit_edge:    ; preds = %port_conf_has_changed.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

port_conf_has_changed.exit.cleanup_crit_edge:     ; preds = %port_conf_has_changed.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %port_conf_has_changed.exit.if.end26_crit_edge, %lor.lhs.false14.i.if.end26_crit_edge, %lor.lhs.false10.i.if.end26_crit_edge, %lor.lhs.false4.i.if.end26_crit_edge, %lor.lhs.false.i.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %sparx5 = getelementptr i8, ptr %pcs, i32 -80
  %42 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sparx5, align 4
  %call27 = call i32 @sparx5_port_pcs_set(ptr noundef %43, ptr noundef %add.ptr.i, ptr noundef nonnull %conf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str, i32 noundef %call27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end26.cleanup_crit_edge, %port_conf_has_changed.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %port_conf_has_changed.exit.cleanup_crit_edge ], [ %call27, %if.then29 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %conf) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sparx5_pcs_aneg_restart(ptr nocapture noundef %pcs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sparx5_phylink_mac_config(ptr nocapture noundef %config, i32 noundef %mode, ptr nocapture noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sparx5_phylink_mac_link_down(ptr nocapture noundef %config, i32 noundef %mode, i32 noundef %interface) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_phylink_mac_link_up(ptr nocapture noundef readonly %config, ptr nocapture noundef readnone %phy, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #0 align 64 {
entry:
  %conf = alloca %struct.sparx5_port_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1200
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %conf) #5
  %conf2 = getelementptr i8, ptr %1, i32 1216
  %2 = call ptr @memcpy(ptr %conf, ptr %conf2, i32 40)
  %duplex3 = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 3
  %3 = ptrtoint ptr %duplex3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %duplex, ptr %duplex3, align 4
  %pause = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 9
  %cond = select i1 %tx_pause, i32 2, i32 0
  %cond6 = zext i1 %rx_pause to i32
  %or8 = or i32 %cond, %cond6
  %4 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or8, ptr %pause, align 4
  %speed9 = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %5 = ptrtoint ptr %speed9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %speed, ptr %speed9, align 4
  %sparx5 = getelementptr i8, ptr %1, i32 1204
  %6 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sparx5, align 4
  %call10 = call i32 @sparx5_port_config(ptr noundef %7, ptr noundef %add.ptr.i, ptr noundef nonnull %conf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %call10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %conf) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_get_port_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_port_pcs_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_port_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @sparx5_phylink_pcs_ops, !1, !"sparx5_phylink_pcs_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_phylink.c", i32 125, i32 30}
!2 = !{ptr @sparx5_phylink_mac_ops, !3, !"sparx5_phylink_mac_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_phylink.c", i32 131, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_phylink.c", i32 116, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_phylink.c", i32 56, i32 26}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
