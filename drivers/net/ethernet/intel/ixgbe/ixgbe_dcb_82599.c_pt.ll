; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_config_rx_arbiter_82599(ptr noundef %hw, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %bwg_id, ptr nocapture noundef readonly %prio_type, ptr nocapture noundef readonly %prio_tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i = getelementptr i8, ptr %1, i32 9264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1174405120) #3, !srcloc !10
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %2 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prio_tc, align 1
  %arrayidx.1 = getelementptr i8, ptr %prio_tc, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %prio_tc, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %prio_tc, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %prio_tc, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %prio_tc, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.5, align 1
  %arrayidx.6 = getelementptr i8, ptr %prio_tc, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.6, align 1
  %arrayidx.7 = getelementptr i8, ptr %prio_tc, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.7, align 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i52 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i52, label %ixgbe_write_reg.exit.for.body8.preheader_crit_edge, label %do.body1.i54

ixgbe_write_reg.exit.for.body8.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8.preheader

do.body1.i54:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %conv2.7 = zext i8 %17 to i32
  %shl.7 = shl nuw nsw i32 %conv2.7, 21
  %conv2.6 = zext i8 %15 to i32
  %shl.6 = shl nuw nsw i32 %conv2.6, 18
  %conv2.5 = zext i8 %13 to i32
  %shl.5 = shl nuw nsw i32 %conv2.5, 15
  %conv2.4 = zext i8 %11 to i32
  %shl.4 = shl nuw nsw i32 %conv2.4, 12
  %conv2.3 = zext i8 %9 to i32
  %shl.3 = shl nuw nsw i32 %conv2.3, 9
  %conv2.2 = zext i8 %7 to i32
  %shl.2 = shl nuw nsw i32 %conv2.2, 6
  %conv2.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv2.1, 3
  %conv2 = zext i8 %3 to i32
  %or.1 = or i32 %shl.1, %conv2
  %or.2 = or i32 %shl.2, %or.1
  %or.3 = or i32 %shl.3, %or.2
  %or.4 = or i32 %shl.4, %or.3
  %or.5 = or i32 %shl.5, %or.4
  %or.6 = or i32 %shl.6, %or.5
  %or.7 = or i32 %shl.7, %or.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.7) #3
  %add.ptr.i53 = getelementptr i8, ptr %19, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %20) #3, !srcloc !10
  br label %for.body8.preheader

for.body8.preheader:                              ; preds = %do.body1.i54, %ixgbe_write_reg.exit.for.body8.preheader_crit_edge
  br label %for.body8

for.body8:                                        ; preds = %ixgbe_write_reg.exit59.for.body8_crit_edge, %for.body8.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %ixgbe_write_reg.exit59.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %arrayidx10 = getelementptr i16, ptr %refill, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx10, align 2
  %arrayidx13 = getelementptr i16, ptr %max, i32 %indvars.iv
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx13, align 2
  %arrayidx18 = getelementptr i8, ptr %bwg_id, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18, align 1
  %arrayidx23 = getelementptr i8, ptr %prio_type, i32 %indvars.iv
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx23, align 1
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i56 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i56, label %for.body8.ixgbe_write_reg.exit59_crit_edge, label %do.body1.i58

for.body8.ixgbe_write_reg.exit59_crit_edge:       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit59

do.body1.i58:                                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #5
  %mul29 = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %mul29, 8512
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp25 = icmp eq i8 %28, 2
  %conv14 = zext i16 %24 to i32
  %shl15 = shl nuw nsw i32 %conv14, 12
  %conv11 = zext i16 %22 to i32
  %or16 = or i32 %shl15, %conv11
  %conv19 = zext i8 %26 to i32
  %shl20 = shl nuw nsw i32 %conv19, 9
  %or21 = or i32 %or16, %shl20
  %or27 = or i32 %or21, -2147483648
  %spec.select = select i1 %cmp25, i32 %or27, i32 %or21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #3
  %add.ptr.i57 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %31) #3, !srcloc !10
  br label %ixgbe_write_reg.exit59

ixgbe_write_reg.exit59:                           ; preds = %do.body1.i58, %for.body8.ixgbe_write_reg.exit59_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end32, label %ixgbe_write_reg.exit59.for.body8_crit_edge

ixgbe_write_reg.exit59.for.body8_crit_edge:       ; preds = %ixgbe_write_reg.exit59
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8

for.end32:                                        ; preds = %ixgbe_write_reg.exit59
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i60 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i60, label %for.end32.ixgbe_write_reg.exit63_crit_edge, label %do.body1.i62

for.end32.ixgbe_write_reg.exit63_crit_edge:       ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit63

do.body1.i62:                                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i61 = getelementptr i8, ptr %33, i32 9264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 100663296) #3, !srcloc !10
  br label %ixgbe_write_reg.exit63

ixgbe_write_reg.exit63:                           ; preds = %do.body1.i62, %for.end32.ixgbe_write_reg.exit63_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(ptr noundef %hw, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %bwg_id, ptr nocapture noundef readonly %prio_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit57.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %ixgbe_write_reg.exit57.for.body_crit_edge ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %2 = shl nuw i32 %indvars.iv, 24
  %add.ptr.i = getelementptr i8, ptr %1, i32 18692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !10
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i54 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i54, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit57_crit_edge, label %do.body1.i56

ixgbe_write_reg.exit.ixgbe_write_reg.exit57_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit57

do.body1.i56:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i55 = getelementptr i8, ptr %4, i32 18696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 0) #3, !srcloc !10
  br label %ixgbe_write_reg.exit57

ixgbe_write_reg.exit57:                           ; preds = %do.body1.i56, %ixgbe_write_reg.exit.ixgbe_write_reg.exit57_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 128
  br i1 %exitcond.not, label %ixgbe_write_reg.exit57.for.body7_crit_edge, label %ixgbe_write_reg.exit57.for.body_crit_edge

ixgbe_write_reg.exit57.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit57
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

ixgbe_write_reg.exit57.for.body7_crit_edge:       ; preds = %ixgbe_write_reg.exit57
  br label %for.body7

for.body7:                                        ; preds = %ixgbe_write_reg.exit61.for.body7_crit_edge, %ixgbe_write_reg.exit57.for.body7_crit_edge
  %indvars.iv68 = phi i32 [ %indvars.iv.next69, %ixgbe_write_reg.exit61.for.body7_crit_edge ], [ 0, %ixgbe_write_reg.exit57.for.body7_crit_edge ]
  %arrayidx = getelementptr i16, ptr %max, i32 %indvars.iv68
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %arrayidx10 = getelementptr i16, ptr %refill, i32 %indvars.iv68
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx10, align 2
  %arrayidx13 = getelementptr i8, ptr %bwg_id, i32 %indvars.iv68
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13, align 1
  %arrayidx18 = getelementptr i8, ptr %prio_type, i32 %indvars.iv68
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i58 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i58, label %for.body7.ixgbe_write_reg.exit61_crit_edge, label %do.body1.i60

for.body7.ixgbe_write_reg.exit61_crit_edge:       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit61

do.body1.i60:                                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl nuw nsw i32 %indvars.iv68, 2
  %add = add nuw nsw i32 %mul, 18704
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp26 = icmp eq i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp20 = icmp eq i8 %12, 1
  %conv8 = zext i16 %6 to i32
  %shl = shl nuw nsw i32 %conv8, 12
  %conv11 = zext i16 %8 to i32
  %or = or i32 %shl, %conv11
  %conv14 = zext i8 %10 to i32
  %shl15 = shl nuw nsw i32 %conv14, 9
  %or16 = or i32 %or, %shl15
  %or22 = or i32 %or16, 1073741824
  %spec.select = select i1 %cmp20, i32 %or22, i32 %or16
  %or29 = or i32 %spec.select, -2147483648
  %reg.1 = select i1 %cmp26, i32 %or29, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #3
  %add.ptr.i59 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %15) #3, !srcloc !10
  br label %ixgbe_write_reg.exit61

ixgbe_write_reg.exit61:                           ; preds = %do.body1.i60, %for.body7.ixgbe_write_reg.exit61_crit_edge
  %indvars.iv.next69 = add nuw nsw i32 %indvars.iv68, 1
  %exitcond70.not = icmp eq i32 %indvars.iv.next69, 8
  br i1 %exitcond70.not, label %for.end34, label %ixgbe_write_reg.exit61.for.body7_crit_edge

ixgbe_write_reg.exit61.for.body7_crit_edge:       ; preds = %ixgbe_write_reg.exit61
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body7

for.end34:                                        ; preds = %ixgbe_write_reg.exit61
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i62 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i62, label %for.end34.ixgbe_write_reg.exit65_crit_edge, label %do.body1.i64

for.end34.ixgbe_write_reg.exit65_crit_edge:       ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit65

do.body1.i64:                                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i63 = getelementptr i8, ptr %17, i32 18688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 285212672) #3, !srcloc !10
  br label %ixgbe_write_reg.exit65

ixgbe_write_reg.exit65:                           ; preds = %do.body1.i64, %for.end34.ixgbe_write_reg.exit65_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_config_tx_data_arbiter_82599(ptr noundef %hw, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %bwg_id, ptr nocapture noundef readonly %prio_type, ptr nocapture noundef readonly %prio_tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i = getelementptr i8, ptr %1, i32 52480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1610678273) #3, !srcloc !10
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %2 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prio_tc, align 1
  %arrayidx.1 = getelementptr i8, ptr %prio_tc, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %prio_tc, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %prio_tc, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %prio_tc, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %prio_tc, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.5, align 1
  %arrayidx.6 = getelementptr i8, ptr %prio_tc, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.6, align 1
  %arrayidx.7 = getelementptr i8, ptr %prio_tc, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.7, align 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i64 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i64, label %ixgbe_write_reg.exit.for.body8.preheader_crit_edge, label %do.body1.i66

ixgbe_write_reg.exit.for.body8.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8.preheader

do.body1.i66:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %conv2.7 = zext i8 %17 to i32
  %shl.7 = shl nuw nsw i32 %conv2.7, 21
  %conv2.6 = zext i8 %15 to i32
  %shl.6 = shl nuw nsw i32 %conv2.6, 18
  %conv2.5 = zext i8 %13 to i32
  %shl.5 = shl nuw nsw i32 %conv2.5, 15
  %conv2.4 = zext i8 %11 to i32
  %shl.4 = shl nuw nsw i32 %conv2.4, 12
  %conv2.3 = zext i8 %9 to i32
  %shl.3 = shl nuw nsw i32 %conv2.3, 9
  %conv2.2 = zext i8 %7 to i32
  %shl.2 = shl nuw nsw i32 %conv2.2, 6
  %conv2.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv2.1, 3
  %conv2 = zext i8 %3 to i32
  %or.1 = or i32 %shl.1, %conv2
  %or.2 = or i32 %shl.2, %or.1
  %or.3 = or i32 %shl.3, %or.2
  %or.4 = or i32 %shl.4, %or.3
  %or.5 = or i32 %shl.5, %or.4
  %or.6 = or i32 %shl.6, %or.5
  %or.7 = or i32 %shl.7, %or.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.7) #3
  %add.ptr.i65 = getelementptr i8, ptr %19, i32 51200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %20) #3, !srcloc !10
  br label %for.body8.preheader

for.body8.preheader:                              ; preds = %do.body1.i66, %ixgbe_write_reg.exit.for.body8.preheader_crit_edge
  br label %for.body8

for.body8:                                        ; preds = %ixgbe_write_reg.exit71.for.body8_crit_edge, %for.body8.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %ixgbe_write_reg.exit71.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %arrayidx10 = getelementptr i16, ptr %refill, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx10, align 2
  %arrayidx13 = getelementptr i16, ptr %max, i32 %indvars.iv
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx13, align 2
  %arrayidx18 = getelementptr i8, ptr %bwg_id, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18, align 1
  %arrayidx23 = getelementptr i8, ptr %prio_type, i32 %indvars.iv
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx23, align 1
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i68 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i68, label %for.body8.ixgbe_write_reg.exit71_crit_edge, label %do.body1.i70

for.body8.ixgbe_write_reg.exit71_crit_edge:       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit71

do.body1.i70:                                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #5
  %mul37 = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %mul37, 52512
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp31 = icmp eq i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp25 = icmp eq i8 %28, 1
  %conv14 = zext i16 %24 to i32
  %shl15 = shl nuw nsw i32 %conv14, 12
  %conv11 = zext i16 %22 to i32
  %or16 = or i32 %shl15, %conv11
  %conv19 = zext i8 %26 to i32
  %shl20 = shl nuw nsw i32 %conv19, 9
  %or21 = or i32 %or16, %shl20
  %or27 = or i32 %or21, 1073741824
  %spec.select = select i1 %cmp25, i32 %or27, i32 %or21
  %or34 = or i32 %spec.select, -2147483648
  %reg.2 = select i1 %cmp31, i32 %or34, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #3
  %add.ptr.i69 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %31) #3, !srcloc !10
  br label %ixgbe_write_reg.exit71

ixgbe_write_reg.exit71:                           ; preds = %do.body1.i70, %for.body8.ixgbe_write_reg.exit71_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end40, label %ixgbe_write_reg.exit71.for.body8_crit_edge

ixgbe_write_reg.exit71.for.body8_crit_edge:       ; preds = %ixgbe_write_reg.exit71
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8

for.end40:                                        ; preds = %ixgbe_write_reg.exit71
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i72 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i72, label %for.end40.ixgbe_write_reg.exit75_crit_edge, label %do.body1.i74

for.end40.ixgbe_write_reg.exit75_crit_edge:       ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit75

do.body1.i74:                                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i73 = getelementptr i8, ptr %33, i32 52480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 536936449) #3, !srcloc !10
  br label %ixgbe_write_reg.exit75

ixgbe_write_reg.exit75:                           ; preds = %do.body1.i74, %for.end40.ixgbe_write_reg.exit75_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_config_pfc_82599(ptr noundef %hw, i8 noundef zeroext %pfc_en, ptr nocapture noundef readonly %prio_tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i = getelementptr i8, ptr %1, i32 15616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #3, !srcloc !10
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17044) #3
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %conv = zext i8 %pfc_en to i32
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i130 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i130, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit133_crit_edge, label %do.body1.i132

ixgbe_write_reg.exit.ixgbe_write_reg.exit133_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit133

do.body1.i132:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pfc_en)
  %tobool.not = icmp eq i8 %pfc_en, 0
  %or = and i32 %call, -4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  %shl = shl nuw nsw i32 %conv, 4
  %or1 = select i1 %cmp, i32 %shl, i32 2
  %reg.1.v = select i1 %tobool.not, i32 2, i32 6
  %and = or i32 %or, %reg.1.v
  %reg.1 = or i32 %and, %or1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #3
  %add.ptr.i131 = getelementptr i8, ptr %5, i32 17044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %6) #3, !srcloc !10
  br label %ixgbe_write_reg.exit133

ixgbe_write_reg.exit133:                          ; preds = %do.body1.i132, %ixgbe_write_reg.exit.ixgbe_write_reg.exit133_crit_edge
  %7 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %prio_tc, align 1
  %arrayidx.1 = getelementptr i8, ptr %prio_tc, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1, align 1
  %11 = tail call i8 @llvm.umax.i8(i8 %10, i8 %8)
  %arrayidx.2 = getelementptr i8, ptr %prio_tc, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %14 = tail call i8 @llvm.umax.i8(i8 %13, i8 %11)
  %arrayidx.3 = getelementptr i8, ptr %prio_tc, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3, align 1
  %17 = tail call i8 @llvm.umax.i8(i8 %16, i8 %14)
  %arrayidx.4 = getelementptr i8, ptr %prio_tc, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.4, align 1
  %20 = tail call i8 @llvm.umax.i8(i8 %19, i8 %17)
  %arrayidx.5 = getelementptr i8, ptr %prio_tc, i32 5
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5, align 1
  %23 = tail call i8 @llvm.umax.i8(i8 %22, i8 %20)
  %arrayidx.6 = getelementptr i8, ptr %prio_tc, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.6, align 1
  %26 = tail call i8 @llvm.umax.i8(i8 %25, i8 %23)
  %arrayidx.7 = getelementptr i8, ptr %prio_tc, i32 7
  %27 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.7, align 1
  %29 = tail call i8 @llvm.umax.i8(i8 %28, i8 %26)
  %conv15 = zext i8 %29 to i32
  %fc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4
  %30 = add nuw nsw i32 %conv15, 1
  %and29 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %and29.1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.1)
  %tobool30.not.1 = icmp eq i32 %and29.1, 0
  %and29.2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.2)
  %tobool30.not.2 = icmp eq i32 %and29.2, 0
  %and29.3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.3)
  %tobool30.not.3 = icmp eq i32 %and29.3, 0
  %and29.4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.4)
  %tobool30.not.4 = icmp eq i32 %and29.4, 0
  %and29.5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.5)
  %tobool30.not.5 = icmp eq i32 %and29.5, 0
  %and29.6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.6)
  %tobool30.not.6 = icmp eq i32 %and29.6, 0
  %and29.7 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.7)
  %tobool30.not.7 = icmp eq i32 %and29.7, 0
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %ixgbe_write_reg.exit145.for.cond19.preheader_crit_edge, %ixgbe_write_reg.exit133
  %i.1166 = phi i32 [ 0, %ixgbe_write_reg.exit133 ], [ %inc54, %ixgbe_write_reg.exit145.for.cond19.preheader_crit_edge ]
  %31 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %prio_tc, align 1
  %conv24 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24)
  %cmp25 = icmp ne i32 %i.1166, %conv24
  %brmerge = or i1 %cmp25, %tobool30.not
  br i1 %brmerge, label %for.inc33, label %for.cond19.preheader.if.then37.critedge_crit_edge

for.cond19.preheader.if.then37.critedge_crit_edge: ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.cond56.preheader:                             ; preds = %ixgbe_write_reg.exit145
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp57168 = icmp ult i8 %29, 7
  br i1 %cmp57168, label %for.cond56.preheader.for.body59_crit_edge, label %for.cond56.preheader.for.end66_crit_edge

for.cond56.preheader.for.end66_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end66

for.cond56.preheader.for.body59_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body59

for.inc33:                                        ; preds = %for.cond19.preheader
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1, align 1
  %conv24.1 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24.1)
  %cmp25.1 = icmp ne i32 %i.1166, %conv24.1
  %brmerge174 = or i1 %cmp25.1, %tobool30.not.1
  br i1 %brmerge174, label %for.inc33.1, label %for.inc33.if.then37.critedge_crit_edge

for.inc33.if.then37.critedge_crit_edge:           ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.inc33.1:                                      ; preds = %for.inc33
  %35 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.2, align 1
  %conv24.2 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24.2)
  %cmp25.2 = icmp ne i32 %i.1166, %conv24.2
  %brmerge175 = or i1 %cmp25.2, %tobool30.not.2
  br i1 %brmerge175, label %for.inc33.2, label %for.inc33.1.if.then37.critedge_crit_edge

for.inc33.1.if.then37.critedge_crit_edge:         ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.inc33.2:                                      ; preds = %for.inc33.1
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.3, align 1
  %conv24.3 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24.3)
  %cmp25.3 = icmp ne i32 %i.1166, %conv24.3
  %brmerge176 = or i1 %cmp25.3, %tobool30.not.3
  br i1 %brmerge176, label %for.inc33.3, label %for.inc33.2.if.then37.critedge_crit_edge

for.inc33.2.if.then37.critedge_crit_edge:         ; preds = %for.inc33.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.inc33.3:                                      ; preds = %for.inc33.2
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.4, align 1
  %conv24.4 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24.4)
  %cmp25.4 = icmp ne i32 %i.1166, %conv24.4
  %brmerge177 = or i1 %cmp25.4, %tobool30.not.4
  br i1 %brmerge177, label %for.inc33.4, label %for.inc33.3.if.then37.critedge_crit_edge

for.inc33.3.if.then37.critedge_crit_edge:         ; preds = %for.inc33.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.inc33.4:                                      ; preds = %for.inc33.3
  %41 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.5, align 1
  %conv24.5 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24.5)
  %cmp25.5 = icmp ne i32 %i.1166, %conv24.5
  %brmerge178 = or i1 %cmp25.5, %tobool30.not.5
  br i1 %brmerge178, label %for.inc33.5, label %for.inc33.4.if.then37.critedge_crit_edge

for.inc33.4.if.then37.critedge_crit_edge:         ; preds = %for.inc33.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.inc33.5:                                      ; preds = %for.inc33.4
  %43 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.6, align 1
  %conv24.6 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24.6)
  %cmp25.6 = icmp ne i32 %i.1166, %conv24.6
  %brmerge179 = or i1 %cmp25.6, %tobool30.not.6
  br i1 %brmerge179, label %for.inc33.6, label %for.inc33.5.if.then37.critedge_crit_edge

for.inc33.5.if.then37.critedge_crit_edge:         ; preds = %for.inc33.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.inc33.6:                                      ; preds = %for.inc33.5
  %45 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.7, align 1
  %conv24.7 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1166, i32 %conv24.7)
  %cmp25.7 = icmp ne i32 %i.1166, %conv24.7
  %brmerge180 = or i1 %cmp25.7, %tobool30.not.7
  br i1 %brmerge180, label %for.inc33.7, label %for.inc33.6.if.then37.critedge_crit_edge

for.inc33.6.if.then37.critedge_crit_edge:         ; preds = %for.inc33.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37.critedge

for.inc33.7:                                      ; preds = %for.inc33.6
  %mul45 = shl i32 %i.1166, 2
  %add46 = add nuw nsw i32 %mul45, 15360
  %call47 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add46) #3
  %sub = add i32 %call47, -24576
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i138 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i138, label %for.inc33.7.if.end50_crit_edge, label %do.body1.i140

for.inc33.7.if.end50_crit_edge:                   ; preds = %for.inc33.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then37.critedge:                               ; preds = %for.inc33.6.if.then37.critedge_crit_edge, %for.inc33.5.if.then37.critedge_crit_edge, %for.inc33.4.if.then37.critedge_crit_edge, %for.inc33.3.if.then37.critedge_crit_edge, %for.inc33.2.if.then37.critedge_crit_edge, %for.inc33.1.if.then37.critedge_crit_edge, %for.inc33.if.then37.critedge_crit_edge, %for.cond19.preheader.if.then37.critedge_crit_edge
  %arrayidx38 = getelementptr [8 x i32], ptr %fc, i32 0, i32 %i.1166
  %49 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx38, align 4
  %shl39 = shl i32 %50, 10
  %or40 = or i32 %shl39, -2147483648
  %arrayidx42 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 %i.1166
  %51 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx42, align 4
  %53 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i134 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i134, label %if.then37.critedge.if.end50_crit_edge, label %do.body1.i136

if.then37.critedge.if.end50_crit_edge:            ; preds = %if.then37.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

do.body1.i136:                                    ; preds = %if.then37.critedge
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl i32 %i.1166, 2
  %add = add nuw nsw i32 %mul, 12832
  %shl43 = shl i32 %52, 10
  %or44 = or i32 %shl43, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %55 = tail call i32 @llvm.bswap.i32(i32 %or44) #3
  %add.ptr.i135 = getelementptr i8, ptr %54, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %55) #3, !srcloc !10
  br label %if.end50

do.body1.i140:                                    ; preds = %for.inc33.7
  call void @__sanitizer_cov_trace_pc() #5
  %add49 = add nuw nsw i32 %mul45, 12832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i139 = getelementptr i8, ptr %48, i32 %add49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 0) #3, !srcloc !10
  br label %if.end50

if.end50:                                         ; preds = %do.body1.i140, %do.body1.i136, %if.then37.critedge.if.end50_crit_edge, %for.inc33.7.if.end50_crit_edge
  %reg.2 = phi i32 [ %or40, %if.then37.critedge.if.end50_crit_edge ], [ %or40, %do.body1.i136 ], [ %sub, %for.inc33.7.if.end50_crit_edge ], [ %sub, %do.body1.i140 ]
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i142 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i142, label %if.end50.ixgbe_write_reg.exit145_crit_edge, label %do.body1.i144

if.end50.ixgbe_write_reg.exit145_crit_edge:       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit145

do.body1.i144:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %mul51 = shl i32 %i.1166, 2
  %add52 = add nuw nsw i32 %mul51, 12896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %58 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #3
  %add.ptr.i143 = getelementptr i8, ptr %57, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %58) #3, !srcloc !10
  br label %ixgbe_write_reg.exit145

ixgbe_write_reg.exit145:                          ; preds = %do.body1.i144, %if.end50.ixgbe_write_reg.exit145_crit_edge
  %inc54 = add nuw nsw i32 %i.1166, 1
  %exitcond = icmp eq i32 %i.1166, %conv15
  br i1 %exitcond, label %for.cond56.preheader, label %ixgbe_write_reg.exit145.for.cond19.preheader_crit_edge

ixgbe_write_reg.exit145.for.cond19.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit145
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond19.preheader

for.body59:                                       ; preds = %ixgbe_write_reg.exit153.for.body59_crit_edge, %for.cond56.preheader.for.body59_crit_edge
  %i.2169 = phi i32 [ %inc65, %ixgbe_write_reg.exit153.for.body59_crit_edge ], [ %30, %for.cond56.preheader.for.body59_crit_edge ]
  %mul60 = shl nuw nsw i32 %i.2169, 2
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i146 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i146, label %for.body59.ixgbe_write_reg.exit149_crit_edge, label %do.body1.i148

for.body59.ixgbe_write_reg.exit149_crit_edge:     ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit149

do.body1.i148:                                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #5
  %add61 = add nuw nsw i32 %mul60, 12832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i147 = getelementptr i8, ptr %60, i32 %add61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 0) #3, !srcloc !10
  br label %ixgbe_write_reg.exit149

ixgbe_write_reg.exit149:                          ; preds = %do.body1.i148, %for.body59.ixgbe_write_reg.exit149_crit_edge
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i150 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i150, label %ixgbe_write_reg.exit149.ixgbe_write_reg.exit153_crit_edge, label %do.body1.i152

ixgbe_write_reg.exit149.ixgbe_write_reg.exit153_crit_edge: ; preds = %ixgbe_write_reg.exit149
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit153

do.body1.i152:                                    ; preds = %ixgbe_write_reg.exit149
  call void @__sanitizer_cov_trace_pc() #5
  %add63 = add nuw nsw i32 %mul60, 12896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i151 = getelementptr i8, ptr %62, i32 %add63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 0) #3, !srcloc !10
  br label %ixgbe_write_reg.exit153

ixgbe_write_reg.exit153:                          ; preds = %do.body1.i152, %ixgbe_write_reg.exit149.ixgbe_write_reg.exit153_crit_edge
  %inc65 = add nuw nsw i32 %i.2169, 1
  %exitcond172.not = icmp eq i32 %inc65, 8
  br i1 %exitcond172.not, label %ixgbe_write_reg.exit153.for.end66_crit_edge, label %ixgbe_write_reg.exit153.for.body59_crit_edge

ixgbe_write_reg.exit153.for.body59_crit_edge:     ; preds = %ixgbe_write_reg.exit153
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body59

ixgbe_write_reg.exit153.for.end66_crit_edge:      ; preds = %ixgbe_write_reg.exit153
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end66

for.end66:                                        ; preds = %ixgbe_write_reg.exit153.for.end66_crit_edge, %for.cond56.preheader.for.end66_crit_edge
  %pause_time = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %pause_time, align 4
  %conv68 = zext i16 %64 to i32
  %mul69 = mul nuw i32 %conv68, 65537
  %65 = tail call i32 @llvm.bswap.i32(i32 %mul69) #3
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i154 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i154, label %for.end66.ixgbe_write_reg.exit157_crit_edge, label %do.body1.i156

for.end66.ixgbe_write_reg.exit157_crit_edge:      ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit157

do.body1.i156:                                    ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i155 = getelementptr i8, ptr %67, i32 12800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %65) #3, !srcloc !10
  br label %ixgbe_write_reg.exit157

ixgbe_write_reg.exit157:                          ; preds = %do.body1.i156, %for.end66.ixgbe_write_reg.exit157_crit_edge
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i154.1 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i154.1, label %ixgbe_write_reg.exit157.ixgbe_write_reg.exit157.1_crit_edge, label %do.body1.i156.1

ixgbe_write_reg.exit157.ixgbe_write_reg.exit157.1_crit_edge: ; preds = %ixgbe_write_reg.exit157
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit157.1

do.body1.i156.1:                                  ; preds = %ixgbe_write_reg.exit157
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i155.1 = getelementptr i8, ptr %69, i32 12804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.1, i32 %65) #3, !srcloc !10
  br label %ixgbe_write_reg.exit157.1

ixgbe_write_reg.exit157.1:                        ; preds = %do.body1.i156.1, %ixgbe_write_reg.exit157.ixgbe_write_reg.exit157.1_crit_edge
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i154.2 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i154.2, label %ixgbe_write_reg.exit157.1.ixgbe_write_reg.exit157.2_crit_edge, label %do.body1.i156.2

ixgbe_write_reg.exit157.1.ixgbe_write_reg.exit157.2_crit_edge: ; preds = %ixgbe_write_reg.exit157.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit157.2

do.body1.i156.2:                                  ; preds = %ixgbe_write_reg.exit157.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i155.2 = getelementptr i8, ptr %71, i32 12808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.2, i32 %65) #3, !srcloc !10
  br label %ixgbe_write_reg.exit157.2

ixgbe_write_reg.exit157.2:                        ; preds = %do.body1.i156.2, %ixgbe_write_reg.exit157.1.ixgbe_write_reg.exit157.2_crit_edge
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i154.3 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i154.3, label %ixgbe_write_reg.exit157.2.ixgbe_write_reg.exit157.3_crit_edge, label %do.body1.i156.3

ixgbe_write_reg.exit157.2.ixgbe_write_reg.exit157.3_crit_edge: ; preds = %ixgbe_write_reg.exit157.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit157.3

do.body1.i156.3:                                  ; preds = %ixgbe_write_reg.exit157.2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i155.3 = getelementptr i8, ptr %73, i32 12812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.3, i32 %65) #3, !srcloc !10
  br label %ixgbe_write_reg.exit157.3

ixgbe_write_reg.exit157.3:                        ; preds = %do.body1.i156.3, %ixgbe_write_reg.exit157.2.ixgbe_write_reg.exit157.3_crit_edge
  %74 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pause_time, align 4
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i158 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i158, label %ixgbe_write_reg.exit157.3.ixgbe_write_reg.exit161_crit_edge, label %do.body1.i160

ixgbe_write_reg.exit157.3.ixgbe_write_reg.exit161_crit_edge: ; preds = %ixgbe_write_reg.exit157.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit161

do.body1.i160:                                    ; preds = %ixgbe_write_reg.exit157.3
  call void @__sanitizer_cov_trace_pc() #5
  %78 = lshr i16 %75, 1
  %div = zext i16 %78 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %79 = tail call i32 @llvm.bswap.i32(i32 %div) #3
  %add.ptr.i159 = getelementptr i8, ptr %77, i32 12960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %79) #3, !srcloc !10
  br label %ixgbe_write_reg.exit161

ixgbe_write_reg.exit161:                          ; preds = %do.body1.i160, %ixgbe_write_reg.exit157.3.ixgbe_write_reg.exit161_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_hw_config_82599(ptr noundef %hw, i8 noundef zeroext %pfc_en, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %bwg_id, ptr nocapture noundef readonly %prio_type, ptr nocapture noundef readonly %prio_tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_dcb_config_rx_arbiter_82599(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type, ptr noundef %prio_tc)
  %call1 = tail call i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type)
  %call2 = tail call i32 @ixgbe_dcb_config_tx_data_arbiter_82599(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type, ptr noundef %prio_tc)
  %call3 = tail call i32 @ixgbe_dcb_config_pfc_82599(ptr noundef %hw, i8 noundef zeroext %pfc_en, ptr noundef %prio_tc)
  br label %for.body.i

for.body.i:                                       ; preds = %ixgbe_write_reg.exit.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %ixgbe_write_reg.exit.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %for.body.i.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i

for.body.i.ixgbe_write_reg.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit.i

do.body1.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %mul4.i = shl nuw nsw i32 %indvars.iv.i, 2
  %add.i = add nuw nsw i32 %mul4.i, 8960
  %div1.i = lshr i32 %indvars.iv.i, 2
  %mul.i = mul nuw nsw i32 %div1.i, 16843009
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #3
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #3, !srcloc !10
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %for.body.i.ixgbe_write_reg.exit.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %ixgbe_write_reg.exit.i.for.body9.i_crit_edge, label %ixgbe_write_reg.exit.i.for.body.i_crit_edge

ixgbe_write_reg.exit.i.for.body.i_crit_edge:      ; preds = %ixgbe_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

ixgbe_write_reg.exit.i.for.body9.i_crit_edge:     ; preds = %ixgbe_write_reg.exit.i
  br label %for.body9.i

for.body9.i:                                      ; preds = %ixgbe_write_reg.exit5.i.for.body9.i_crit_edge, %ixgbe_write_reg.exit.i.for.body9.i_crit_edge
  %indvars.iv10.i = phi i32 [ %indvars.iv.next11.i, %ixgbe_write_reg.exit5.i.for.body9.i_crit_edge ], [ 0, %ixgbe_write_reg.exit.i.for.body9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv10.i)
  %cmp11.i = icmp ult i32 %indvars.iv10.i, 8
  br i1 %cmp11.i, label %for.body9.i.if.end48.i_crit_edge, label %if.else.i

for.body9.i.if.end48.i_crit_edge:                 ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.else.i:                                        ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %indvars.iv10.i)
  %cmp14.i = icmp ult i32 %indvars.iv10.i, 16
  br i1 %cmp14.i, label %if.else.i.if.end48.i_crit_edge, label %if.else17.i

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %indvars.iv10.i)
  %cmp19.i = icmp ult i32 %indvars.iv10.i, 20
  br i1 %cmp19.i, label %if.else17.i.if.end48.i_crit_edge, label %if.else22.i

if.else17.i.if.end48.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.else22.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %indvars.iv10.i)
  %cmp24.i = icmp ult i32 %indvars.iv10.i, 24
  br i1 %cmp24.i, label %if.else22.i.if.end48.i_crit_edge, label %if.else27.i

if.else22.i.if.end48.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.else27.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %indvars.iv10.i)
  %cmp29.i = icmp ult i32 %indvars.iv10.i, 26
  br i1 %cmp29.i, label %if.else27.i.if.end48.i_crit_edge, label %if.else32.i

if.else27.i.if.end48.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.else32.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %indvars.iv10.i)
  %cmp34.i = icmp ult i32 %indvars.iv10.i, 28
  br i1 %cmp34.i, label %if.else32.i.if.end48.i_crit_edge, label %if.else37.i

if.else32.i.if.end48.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.else37.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %indvars.iv10.i)
  %cmp39.i = icmp ult i32 %indvars.iv10.i, 30
  %..i = select i1 %cmp39.i, i32 101058054, i32 117901063
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else37.i, %if.else32.i.if.end48.i_crit_edge, %if.else27.i.if.end48.i_crit_edge, %if.else22.i.if.end48.i_crit_edge, %if.else17.i.if.end48.i_crit_edge, %if.else.i.if.end48.i_crit_edge, %for.body9.i.if.end48.i_crit_edge
  %reg.0.i = phi i32 [ 0, %for.body9.i.if.end48.i_crit_edge ], [ 16843009, %if.else.i.if.end48.i_crit_edge ], [ 33686018, %if.else17.i.if.end48.i_crit_edge ], [ 50529027, %if.else22.i.if.end48.i_crit_edge ], [ 67372036, %if.else27.i.if.end48.i_crit_edge ], [ 84215045, %if.else32.i.if.end48.i_crit_edge ], [ %..i, %if.else37.i ]
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i2.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i2.i, label %if.end48.i.ixgbe_write_reg.exit5.i_crit_edge, label %do.body1.i4.i

if.end48.i.ixgbe_write_reg.exit5.i_crit_edge:     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit5.i

do.body1.i4.i:                                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  %mul50.i = shl nuw nsw i32 %indvars.iv10.i, 2
  %add51.i = add nuw nsw i32 %mul50.i, 34304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #3
  %add.ptr.i3.i = getelementptr i8, ptr %4, i32 %add51.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %5) #3, !srcloc !10
  br label %ixgbe_write_reg.exit5.i

ixgbe_write_reg.exit5.i:                          ; preds = %do.body1.i4.i, %if.end48.i.ixgbe_write_reg.exit5.i_crit_edge
  %indvars.iv.next11.i = add nuw nsw i32 %indvars.iv10.i, 1
  %exitcond12.not.i = icmp eq i32 %indvars.iv.next11.i, 32
  br i1 %exitcond12.not.i, label %ixgbe_dcb_config_tc_stats_82599.exit, label %ixgbe_write_reg.exit5.i.for.body9.i_crit_edge

ixgbe_write_reg.exit5.i.for.body9.i_crit_edge:    ; preds = %ixgbe_write_reg.exit5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body9.i

ixgbe_dcb_config_tc_stats_82599.exit:             ; preds = %ixgbe_write_reg.exit5.i
  call void @__sanitizer_cov_trace_pc() #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2157263608}
!10 = !{i64 5019939}
