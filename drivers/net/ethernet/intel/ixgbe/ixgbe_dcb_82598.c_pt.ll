; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c"
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
define dso_local i32 @ixgbe_dcb_config_rx_arbiter_82598(ptr noundef %hw, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %prio_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 20640) #3
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
  %or = or i32 %call, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %add.ptr.i = getelementptr i8, ptr %1, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !10
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 15616) #3
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i48 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i48, label %ixgbe_write_reg.exit.for.body.preheader_crit_edge, label %do.body1.i50

ixgbe_write_reg.exit.for.body.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

do.body1.i50:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call1, -71
  %or3 = or i32 %and, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %or3) #3
  %add.ptr.i49 = getelementptr i8, ptr %4, i32 15616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %5) #3, !srcloc !10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i50, %ixgbe_write_reg.exit.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit55.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %ixgbe_write_reg.exit55.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %refill, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %arrayidx7 = getelementptr i16, ptr %max, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx7, align 2
  %arrayidx11 = getelementptr i8, ptr %prio_type, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i52 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i52, label %for.body.ixgbe_write_reg.exit55_crit_edge, label %do.body1.i54

for.body.ixgbe_write_reg.exit55_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit55

do.body1.i54:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %mul, 15392
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp13 = icmp eq i8 %11, 2
  %conv8 = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %conv8, 12
  %conv5 = zext i16 %7 to i32
  %or9 = or i32 %shl, %conv5
  %or15 = or i32 %or9, -2147483648
  %spec.select = select i1 %cmp13, i32 %or15, i32 %or9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #3
  %add.ptr.i53 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %14) #3, !srcloc !10
  br label %ixgbe_write_reg.exit55

ixgbe_write_reg.exit55:                           ; preds = %do.body1.i54, %for.body.ixgbe_write_reg.exit55_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %ixgbe_write_reg.exit55.for.body_crit_edge

ixgbe_write_reg.exit55.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit55
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %ixgbe_write_reg.exit55
  %call17 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12032) #3
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i56 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i56, label %for.end.ixgbe_write_reg.exit59_crit_edge, label %do.body1.i58

for.end.ixgbe_write_reg.exit59_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit59

do.body1.i58:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %or20 = or i32 %call17, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %17 = tail call i32 @llvm.bswap.i32(i32 %or20) #3
  %add.ptr.i57 = getelementptr i8, ptr %16, i32 12032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %17) #3, !srcloc !10
  br label %ixgbe_write_reg.exit59

ixgbe_write_reg.exit59:                           ; preds = %do.body1.i58, %for.end.ixgbe_write_reg.exit59_crit_edge
  %call21 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12288) #3
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i60 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i60, label %ixgbe_write_reg.exit59.ixgbe_write_reg.exit63_crit_edge, label %do.body1.i62

ixgbe_write_reg.exit59.ixgbe_write_reg.exit63_crit_edge: ; preds = %ixgbe_write_reg.exit59
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit63

do.body1.i62:                                     ; preds = %ixgbe_write_reg.exit59
  call void @__sanitizer_cov_trace_pc() #5
  %and22 = and i32 %call21, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %and22) #3
  %add.ptr.i61 = getelementptr i8, ptr %19, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %20) #3, !srcloc !10
  br label %ixgbe_write_reg.exit63

ixgbe_write_reg.exit63:                           ; preds = %do.body1.i62, %ixgbe_write_reg.exit59.ixgbe_write_reg.exit63_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82598(ptr noundef %hw, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %bwg_id, ptr nocapture noundef readonly %prio_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32576) #3
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.for.body.preheader_crit_edge, label %do.body1.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call, -786497
  %or1 = or i32 %and, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or1) #3
  %add.ptr.i = getelementptr i8, ptr %1, i32 32576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit49.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %ixgbe_write_reg.exit49.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %max, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %arrayidx5 = getelementptr i16, ptr %refill, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx5, align 2
  %arrayidx9 = getelementptr i8, ptr %bwg_id, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %arrayidx14 = getelementptr i8, ptr %prio_type, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i46 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i46, label %for.body.ixgbe_write_reg.exit49_crit_edge, label %do.body1.i48

for.body.ixgbe_write_reg.exit49_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit49

do.body1.i48:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl nuw nsw i32 %indvars.iv, 6
  %add = or i32 %mul, 24620
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp22 = icmp eq i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp16 = icmp eq i8 %10, 1
  %conv3 = zext i16 %4 to i32
  %shl = shl nuw nsw i32 %conv3, 12
  %conv6 = zext i16 %6 to i32
  %or7 = or i32 %shl, %conv6
  %conv10 = zext i8 %8 to i32
  %shl11 = shl nuw nsw i32 %conv10, 9
  %or12 = or i32 %or7, %shl11
  %or18 = or i32 %or12, 1073741824
  %spec.select = select i1 %cmp16, i32 %or18, i32 %or12
  %or25 = or i32 %spec.select, -2147483648
  %reg.1 = select i1 %cmp22, i32 %or25, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %13 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #3
  %add.ptr.i47 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %13) #3, !srcloc !10
  br label %ixgbe_write_reg.exit49

ixgbe_write_reg.exit49:                           ; preds = %do.body1.i48, %for.body.ixgbe_write_reg.exit49_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %ixgbe_write_reg.exit49.for.body_crit_edge

ixgbe_write_reg.exit49.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit49
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %ixgbe_write_reg.exit49
  call void @__sanitizer_cov_trace_pc() #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_config_tx_data_arbiter_82598(ptr noundef %hw, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %bwg_id, ptr nocapture noundef readonly %prio_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 52480) #3
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.for.body.preheader_crit_edge, label %do.body1.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call, -353
  %or = or i32 %and, 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %add.ptr.i = getelementptr i8, ptr %1, i32 52480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit53.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %ixgbe_write_reg.exit53.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %refill, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %arrayidx4 = getelementptr i16, ptr %max, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx4, align 2
  %arrayidx8 = getelementptr i8, ptr %bwg_id, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 1
  %arrayidx13 = getelementptr i8, ptr %prio_type, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13, align 1
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i50 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i50, label %for.body.ixgbe_write_reg.exit53_crit_edge, label %do.body1.i52

for.body.ixgbe_write_reg.exit53_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit53

do.body1.i52:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %mul, 52512
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp21 = icmp eq i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp15 = icmp eq i8 %10, 1
  %conv5 = zext i16 %6 to i32
  %shl = shl nuw nsw i32 %conv5, 12
  %conv2 = zext i16 %4 to i32
  %or6 = or i32 %shl, %conv2
  %conv9 = zext i8 %8 to i32
  %shl10 = shl nuw nsw i32 %conv9, 9
  %or11 = or i32 %or6, %shl10
  %or17 = or i32 %or11, 1073741824
  %spec.select = select i1 %cmp15, i32 %or17, i32 %or11
  %or24 = or i32 %spec.select, -2147483648
  %reg.1 = select i1 %cmp21, i32 %or24, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %13 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #3
  %add.ptr.i51 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %13) #3, !srcloc !10
  br label %ixgbe_write_reg.exit53

ixgbe_write_reg.exit53:                           ; preds = %do.body1.i52, %for.body.ixgbe_write_reg.exit53_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %ixgbe_write_reg.exit53.for.body_crit_edge

ixgbe_write_reg.exit53.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit53
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %ixgbe_write_reg.exit53
  %call27 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32256) #3
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i54 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i54, label %for.end.ixgbe_write_reg.exit57_crit_edge, label %do.body1.i56

for.end.ixgbe_write_reg.exit57_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit57

do.body1.i56:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %or28 = or i32 %call27, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %or28) #3
  %add.ptr.i55 = getelementptr i8, ptr %15, i32 32256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %16) #3, !srcloc !10
  br label %ixgbe_write_reg.exit57

ixgbe_write_reg.exit57:                           ; preds = %do.body1.i56, %for.end.ixgbe_write_reg.exit57_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_config_pfc_82598(ptr noundef %hw, i8 noundef zeroext %pfc_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 15616) #3
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
  %and = and i32 %call, -25
  %or = or i32 %and, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %add.ptr.i = getelementptr i8, ptr %1, i32 15616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !10
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 20608) #3
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i77 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i77, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit80_crit_edge, label %do.body1.i79

ixgbe_write_reg.exit.ixgbe_write_reg.exit80_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit80

do.body1.i79:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pfc_en)
  %tobool.not = icmp eq i8 %pfc_en, 0
  %and2 = and i32 %call1, -49153
  %or3 = or i32 %and2, 16384
  %spec.select = select i1 %tobool.not, i32 %and2, i32 %or3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #3
  %add.ptr.i78 = getelementptr i8, ptr %4, i32 20608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %5) #3, !srcloc !10
  br label %ixgbe_write_reg.exit80

ixgbe_write_reg.exit80:                           ; preds = %do.body1.i79, %ixgbe_write_reg.exit.ixgbe_write_reg.exit80_crit_edge
  %conv5 = zext i8 %pfc_en to i32
  %fc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ixgbe_write_reg.exit80
  %indvars.iv = phi i32 [ 0, %ixgbe_write_reg.exit80 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %indvars.iv
  %and7 = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end14

if.then9:                                         ; preds = %for.body
  %mul = shl nuw nsw i32 %indvars.iv, 3
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i81 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i81, label %if.then9.ixgbe_write_reg.exit84_crit_edge, label %do.body1.i83

if.then9.ixgbe_write_reg.exit84_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit84

do.body1.i83:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  %add = add nuw nsw i32 %mul, 12832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i82 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 0) #3, !srcloc !10
  br label %ixgbe_write_reg.exit84

ixgbe_write_reg.exit84:                           ; preds = %do.body1.i83, %if.then9.ixgbe_write_reg.exit84_crit_edge
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i85 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i85, label %ixgbe_write_reg.exit84.for.inc_crit_edge, label %do.body1.i87

ixgbe_write_reg.exit84.for.inc_crit_edge:         ; preds = %ixgbe_write_reg.exit84
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body1.i87:                                     ; preds = %ixgbe_write_reg.exit84
  call void @__sanitizer_cov_trace_pc() #5
  %add13 = add nuw nsw i32 %mul, 12896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i86 = getelementptr i8, ptr %9, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 0) #3, !srcloc !10
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx19 = getelementptr [8 x i32], ptr %fc, i32 0, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  %shl20 = shl i32 %13, 10
  %or21 = or i32 %shl20, -2147483648
  %mul23 = shl nuw nsw i32 %indvars.iv, 3
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i89 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i89, label %if.end14.ixgbe_write_reg.exit92_crit_edge, label %do.body1.i91

if.end14.ixgbe_write_reg.exit92_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit92

do.body1.i91:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %add24 = add nuw nsw i32 %mul23, 12832
  %shl15 = shl i32 %11, 10
  %or16 = or i32 %shl15, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %or16) #3
  %add.ptr.i90 = getelementptr i8, ptr %15, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %16) #3, !srcloc !10
  br label %ixgbe_write_reg.exit92

ixgbe_write_reg.exit92:                           ; preds = %do.body1.i91, %if.end14.ixgbe_write_reg.exit92_crit_edge
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i93 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i93, label %ixgbe_write_reg.exit92.for.inc_crit_edge, label %do.body1.i95

ixgbe_write_reg.exit92.for.inc_crit_edge:         ; preds = %ixgbe_write_reg.exit92
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body1.i95:                                     ; preds = %ixgbe_write_reg.exit92
  call void @__sanitizer_cov_trace_pc() #5
  %add27 = add nuw nsw i32 %mul23, 12896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %19 = tail call i32 @llvm.bswap.i32(i32 %or21) #3
  %add.ptr.i94 = getelementptr i8, ptr %18, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %19) #3, !srcloc !10
  br label %for.inc

for.inc:                                          ; preds = %do.body1.i95, %ixgbe_write_reg.exit92.for.inc_crit_edge, %do.body1.i87, %ixgbe_write_reg.exit84.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  %pause_time = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pause_time, align 4
  %conv29 = zext i16 %21 to i32
  %mul30 = mul nuw i32 %conv29, 65537
  %22 = tail call i32 @llvm.bswap.i32(i32 %mul30) #3
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i97 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i97, label %for.end.ixgbe_write_reg.exit100_crit_edge, label %do.body1.i99

for.end.ixgbe_write_reg.exit100_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit100

do.body1.i99:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i98 = getelementptr i8, ptr %24, i32 12800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %22) #3, !srcloc !10
  br label %ixgbe_write_reg.exit100

ixgbe_write_reg.exit100:                          ; preds = %do.body1.i99, %for.end.ixgbe_write_reg.exit100_crit_edge
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i97.1 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i97.1, label %ixgbe_write_reg.exit100.ixgbe_write_reg.exit100.1_crit_edge, label %do.body1.i99.1

ixgbe_write_reg.exit100.ixgbe_write_reg.exit100.1_crit_edge: ; preds = %ixgbe_write_reg.exit100
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit100.1

do.body1.i99.1:                                   ; preds = %ixgbe_write_reg.exit100
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i98.1 = getelementptr i8, ptr %26, i32 12804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.1, i32 %22) #3, !srcloc !10
  br label %ixgbe_write_reg.exit100.1

ixgbe_write_reg.exit100.1:                        ; preds = %do.body1.i99.1, %ixgbe_write_reg.exit100.ixgbe_write_reg.exit100.1_crit_edge
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i97.2 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i97.2, label %ixgbe_write_reg.exit100.1.ixgbe_write_reg.exit100.2_crit_edge, label %do.body1.i99.2

ixgbe_write_reg.exit100.1.ixgbe_write_reg.exit100.2_crit_edge: ; preds = %ixgbe_write_reg.exit100.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit100.2

do.body1.i99.2:                                   ; preds = %ixgbe_write_reg.exit100.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i98.2 = getelementptr i8, ptr %28, i32 12808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.2, i32 %22) #3, !srcloc !10
  br label %ixgbe_write_reg.exit100.2

ixgbe_write_reg.exit100.2:                        ; preds = %do.body1.i99.2, %ixgbe_write_reg.exit100.1.ixgbe_write_reg.exit100.2_crit_edge
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i97.3 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i97.3, label %ixgbe_write_reg.exit100.2.ixgbe_write_reg.exit100.3_crit_edge, label %do.body1.i99.3

ixgbe_write_reg.exit100.2.ixgbe_write_reg.exit100.3_crit_edge: ; preds = %ixgbe_write_reg.exit100.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit100.3

do.body1.i99.3:                                   ; preds = %ixgbe_write_reg.exit100.2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr.i98.3 = getelementptr i8, ptr %30, i32 12812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.3, i32 %22) #3, !srcloc !10
  br label %ixgbe_write_reg.exit100.3

ixgbe_write_reg.exit100.3:                        ; preds = %do.body1.i99.3, %ixgbe_write_reg.exit100.2.ixgbe_write_reg.exit100.3_crit_edge
  %31 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pause_time, align 4
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i101 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i101, label %ixgbe_write_reg.exit100.3.ixgbe_write_reg.exit104_crit_edge, label %do.body1.i103

ixgbe_write_reg.exit100.3.ixgbe_write_reg.exit104_crit_edge: ; preds = %ixgbe_write_reg.exit100.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit104

do.body1.i103:                                    ; preds = %ixgbe_write_reg.exit100.3
  call void @__sanitizer_cov_trace_pc() #5
  %35 = lshr i16 %32, 1
  %div = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %36 = tail call i32 @llvm.bswap.i32(i32 %div) #3
  %add.ptr.i102 = getelementptr i8, ptr %34, i32 12960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %36) #3, !srcloc !10
  br label %ixgbe_write_reg.exit104

ixgbe_write_reg.exit104:                          ; preds = %do.body1.i103, %ixgbe_write_reg.exit100.3.ixgbe_write_reg.exit104_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_hw_config_82598(ptr noundef %hw, i8 noundef zeroext %pfc_en, ptr nocapture noundef readonly %refill, ptr nocapture noundef readonly %max, ptr nocapture noundef readonly %bwg_id, ptr nocapture noundef readonly %prio_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_dcb_config_rx_arbiter_82598(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %prio_type)
  %call1 = tail call i32 @ixgbe_dcb_config_tx_desc_arbiter_82598(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type)
  %call2 = tail call i32 @ixgbe_dcb_config_tx_data_arbiter_82598(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type)
  %call3 = tail call i32 @ixgbe_dcb_config_pfc_82598(ptr noundef %hw, i8 noundef zeroext %pfc_en)
  br label %for.body.i

for.body.i:                                       ; preds = %ixgbe_write_reg.exit4.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %ixgbe_write_reg.exit4.i.for.body.i_crit_edge ]
  %conv10.i = phi i32 [ 0, %entry ], [ %conv.i, %ixgbe_write_reg.exit4.i.for.body.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %conv10.i, 2
  %add.i = add nuw nsw i32 %mul.i, 8960
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i) #3
  %mul7.i = mul nuw nsw i32 %indvars.iv.i, 16843009
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
  %or.i = or i32 %call.i, %mul7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #3, !srcloc !10
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %for.body.i.ixgbe_write_reg.exit.i_crit_edge
  %add14.i = add nuw nsw i32 %mul.i, 8964
  %call15.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add14.i) #3
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i1.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i1.i, label %ixgbe_write_reg.exit.i.ixgbe_write_reg.exit4.i_crit_edge, label %do.body1.i3.i

ixgbe_write_reg.exit.i.ixgbe_write_reg.exit4.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit4.i

do.body1.i3.i:                                    ; preds = %ixgbe_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %or18.i = or i32 %call15.i, %mul7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #3
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %5) #3, !srcloc !10
  br label %ixgbe_write_reg.exit4.i

ixgbe_write_reg.exit4.i:                          ; preds = %do.body1.i3.i, %ixgbe_write_reg.exit.i.ixgbe_write_reg.exit4.i_crit_edge
  %add24.i = add nuw nsw i32 %conv10.i, 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %conv.i = and i32 %add24.i, 255
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %cond.end.preheader.i, label %ixgbe_write_reg.exit4.i.for.body.i_crit_edge

ixgbe_write_reg.exit4.i.for.body.i_crit_edge:     ; preds = %ixgbe_write_reg.exit4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cond.end.preheader.i:                             ; preds = %ixgbe_write_reg.exit4.i
  %call40.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29440) #3
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i5.i, label %cond.end.preheader.i.ixgbe_write_reg.exit8.i_crit_edge, label %do.body1.i7.i

cond.end.preheader.i.ixgbe_write_reg.exit8.i_crit_edge: ; preds = %cond.end.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit8.i

do.body1.i7.i:                                    ; preds = %cond.end.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %call40.i) #3
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 29440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %8) #3, !srcloc !10
  br label %ixgbe_write_reg.exit8.i

ixgbe_write_reg.exit8.i:                          ; preds = %do.body1.i7.i, %cond.end.preheader.i.ixgbe_write_reg.exit8.i_crit_edge
  %call40.1.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29444) #3
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.1.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i5.1.i, label %ixgbe_write_reg.exit8.i.ixgbe_write_reg.exit8.1.i_crit_edge, label %do.body1.i7.1.i

ixgbe_write_reg.exit8.i.ixgbe_write_reg.exit8.1.i_crit_edge: ; preds = %ixgbe_write_reg.exit8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit8.1.i

do.body1.i7.1.i:                                  ; preds = %ixgbe_write_reg.exit8.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.1.i = or i32 %call40.1.i, 16843009
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or43.1.i) #3
  %add.ptr.i6.1.i = getelementptr i8, ptr %10, i32 29444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.1.i, i32 %11) #3, !srcloc !10
  br label %ixgbe_write_reg.exit8.1.i

ixgbe_write_reg.exit8.1.i:                        ; preds = %do.body1.i7.1.i, %ixgbe_write_reg.exit8.i.ixgbe_write_reg.exit8.1.i_crit_edge
  %call40.2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29448) #3
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.2.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i5.2.i, label %ixgbe_write_reg.exit8.1.i.ixgbe_write_reg.exit8.2.i_crit_edge, label %do.body1.i7.2.i

ixgbe_write_reg.exit8.1.i.ixgbe_write_reg.exit8.2.i_crit_edge: ; preds = %ixgbe_write_reg.exit8.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit8.2.i

do.body1.i7.2.i:                                  ; preds = %ixgbe_write_reg.exit8.1.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.2.i = or i32 %call40.2.i, 33686018
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %or43.2.i) #3
  %add.ptr.i6.2.i = getelementptr i8, ptr %13, i32 29448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.2.i, i32 %14) #3, !srcloc !10
  br label %ixgbe_write_reg.exit8.2.i

ixgbe_write_reg.exit8.2.i:                        ; preds = %do.body1.i7.2.i, %ixgbe_write_reg.exit8.1.i.ixgbe_write_reg.exit8.2.i_crit_edge
  %call40.3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29452) #3
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.3.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i5.3.i, label %ixgbe_write_reg.exit8.2.i.ixgbe_write_reg.exit8.3.i_crit_edge, label %do.body1.i7.3.i

ixgbe_write_reg.exit8.2.i.ixgbe_write_reg.exit8.3.i_crit_edge: ; preds = %ixgbe_write_reg.exit8.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit8.3.i

do.body1.i7.3.i:                                  ; preds = %ixgbe_write_reg.exit8.2.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.3.i = or i32 %call40.3.i, 50529027
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %17 = tail call i32 @llvm.bswap.i32(i32 %or43.3.i) #3
  %add.ptr.i6.3.i = getelementptr i8, ptr %16, i32 29452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.3.i, i32 %17) #3, !srcloc !10
  br label %ixgbe_write_reg.exit8.3.i

ixgbe_write_reg.exit8.3.i:                        ; preds = %do.body1.i7.3.i, %ixgbe_write_reg.exit8.2.i.ixgbe_write_reg.exit8.3.i_crit_edge
  %call40.4.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29456) #3
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.4.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i5.4.i, label %ixgbe_write_reg.exit8.3.i.ixgbe_write_reg.exit8.4.i_crit_edge, label %do.body1.i7.4.i

ixgbe_write_reg.exit8.3.i.ixgbe_write_reg.exit8.4.i_crit_edge: ; preds = %ixgbe_write_reg.exit8.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit8.4.i

do.body1.i7.4.i:                                  ; preds = %ixgbe_write_reg.exit8.3.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.4.i = or i32 %call40.4.i, 67372036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %or43.4.i) #3
  %add.ptr.i6.4.i = getelementptr i8, ptr %19, i32 29456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.4.i, i32 %20) #3, !srcloc !10
  br label %ixgbe_write_reg.exit8.4.i

ixgbe_write_reg.exit8.4.i:                        ; preds = %do.body1.i7.4.i, %ixgbe_write_reg.exit8.3.i.ixgbe_write_reg.exit8.4.i_crit_edge
  %call40.5.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29460) #3
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.5.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i5.5.i, label %ixgbe_write_reg.exit8.4.i.ixgbe_write_reg.exit8.5.i_crit_edge, label %do.body1.i7.5.i

ixgbe_write_reg.exit8.4.i.ixgbe_write_reg.exit8.5.i_crit_edge: ; preds = %ixgbe_write_reg.exit8.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit8.5.i

do.body1.i7.5.i:                                  ; preds = %ixgbe_write_reg.exit8.4.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.5.i = or i32 %call40.5.i, 84215045
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %23 = tail call i32 @llvm.bswap.i32(i32 %or43.5.i) #3
  %add.ptr.i6.5.i = getelementptr i8, ptr %22, i32 29460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.5.i, i32 %23) #3, !srcloc !10
  br label %ixgbe_write_reg.exit8.5.i

ixgbe_write_reg.exit8.5.i:                        ; preds = %do.body1.i7.5.i, %ixgbe_write_reg.exit8.4.i.ixgbe_write_reg.exit8.5.i_crit_edge
  %call40.6.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29464) #3
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.6.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i5.6.i, label %ixgbe_write_reg.exit8.5.i.ixgbe_write_reg.exit8.6.i_crit_edge, label %do.body1.i7.6.i

ixgbe_write_reg.exit8.5.i.ixgbe_write_reg.exit8.6.i_crit_edge: ; preds = %ixgbe_write_reg.exit8.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_write_reg.exit8.6.i

do.body1.i7.6.i:                                  ; preds = %ixgbe_write_reg.exit8.5.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.6.i = or i32 %call40.6.i, 101058054
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %26 = tail call i32 @llvm.bswap.i32(i32 %or43.6.i) #3
  %add.ptr.i6.6.i = getelementptr i8, ptr %25, i32 29464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.6.i, i32 %26) #3, !srcloc !10
  br label %ixgbe_write_reg.exit8.6.i

ixgbe_write_reg.exit8.6.i:                        ; preds = %do.body1.i7.6.i, %ixgbe_write_reg.exit8.5.i.ixgbe_write_reg.exit8.6.i_crit_edge
  %call40.7.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 29468) #3
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i5.7.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i5.7.i, label %ixgbe_write_reg.exit8.6.i.ixgbe_dcb_config_tc_stats_82598.exit_crit_edge, label %do.body1.i7.7.i

ixgbe_write_reg.exit8.6.i.ixgbe_dcb_config_tc_stats_82598.exit_crit_edge: ; preds = %ixgbe_write_reg.exit8.6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgbe_dcb_config_tc_stats_82598.exit

do.body1.i7.7.i:                                  ; preds = %ixgbe_write_reg.exit8.6.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.7.i = or i32 %call40.7.i, 117901063
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %29 = tail call i32 @llvm.bswap.i32(i32 %or43.7.i) #3
  %add.ptr.i6.7.i = getelementptr i8, ptr %28, i32 29468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.7.i, i32 %29) #3, !srcloc !10
  br label %ixgbe_dcb_config_tc_stats_82598.exit

ixgbe_dcb_config_tc_stats_82598.exit:             ; preds = %do.body1.i7.7.i, %ixgbe_write_reg.exit8.6.i.ixgbe_dcb_config_tc_stats_82598.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
!9 = !{i64 2157261681}
!10 = !{i64 5018012}
