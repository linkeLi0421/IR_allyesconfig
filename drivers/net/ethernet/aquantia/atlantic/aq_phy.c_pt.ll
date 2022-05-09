; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aq_mdio_busy_wait(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #2
  %add.i = add i64 %call, 100000000
  %call229 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp30 = icmp eq i32 %call229, 0
  br i1 %cmp30, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call i64 @ktime_get() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i, label %if.then6, label %cond.false

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call7 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %phi.cmp = icmp eq i32 %call7, 0
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #2
  %call2 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then6, %entry.for.end_crit_edge
  %val.0 = phi i1 [ %phi.cmp, %if.then6 ], [ true, %entry.for.end_crit_edge ], [ true, %cond.false.for.end_crit_edge ]
  ret i1 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_mdio_busy_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @aq_mdio_read_word(ptr noundef %aq_hw, i16 noundef zeroext %mmd, i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 21
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %phy_id, align 8
  %shl = shl i16 %1, 5
  %or = or i16 %shl, %mmd
  %conv3 = zext i16 %addr to i32
  tail call void @hw_atl_glb_mdio_iface4_set(ptr noundef %aq_hw, i32 noundef %conv3) #2
  %2 = and i16 %or, 1023
  %and6 = zext i16 %2 to i32
  %or8 = or i32 %and6, 45056
  tail call void @hw_atl_glb_mdio_iface2_set(ptr noundef %aq_hw, i32 noundef %or8) #2
  %call.i = tail call i64 @ktime_get() #2
  %add.i.i = add i64 %call.i, 100000000
  %call229.i = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i)
  %cmp30.i = icmp eq i32 %call229.i, 0
  br i1 %cmp30.i, label %entry.aq_mdio_busy_wait.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.aq_mdio_busy_wait.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call7.i = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  br label %aq_mdio_busy_wait.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #2
  %call2.i = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.aq_mdio_busy_wait.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i

cond.false.i.aq_mdio_busy_wait.exit_crit_edge:    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit

aq_mdio_busy_wait.exit:                           ; preds = %cond.false.i.aq_mdio_busy_wait.exit_crit_edge, %if.then6.i, %entry.aq_mdio_busy_wait.exit_crit_edge
  %or12 = or i32 %and6, 36864
  tail call void @hw_atl_glb_mdio_iface2_set(ptr noundef %aq_hw, i32 noundef %or12) #2
  %call.i23 = tail call i64 @ktime_get() #2
  %add.i.i24 = add i64 %call.i23, 100000000
  %call229.i25 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i25)
  %cmp30.i26 = icmp eq i32 %call229.i25, 0
  br i1 %cmp30.i26, label %aq_mdio_busy_wait.exit.aq_mdio_busy_wait.exit37_crit_edge, label %aq_mdio_busy_wait.exit.land.lhs.true.i29_crit_edge

aq_mdio_busy_wait.exit.land.lhs.true.i29_crit_edge: ; preds = %aq_mdio_busy_wait.exit
  br label %land.lhs.true.i29

aq_mdio_busy_wait.exit.aq_mdio_busy_wait.exit37_crit_edge: ; preds = %aq_mdio_busy_wait.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit37

land.lhs.true.i29:                                ; preds = %cond.false.i35.land.lhs.true.i29_crit_edge, %aq_mdio_busy_wait.exit.land.lhs.true.i29_crit_edge
  %call3.i27 = tail call i64 @ktime_get() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i27, i64 %add.i.i24)
  %cmp3.i.i28 = icmp sgt i64 %call3.i27, %add.i.i24
  br i1 %cmp3.i.i28, label %if.then6.i32, label %cond.false.i35

if.then6.i32:                                     ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #4
  %call7.i30 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  br label %aq_mdio_busy_wait.exit37

cond.false.i35:                                   ; preds = %land.lhs.true.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #2
  %call2.i33 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  %cmp.i34 = icmp eq i32 %call2.i33, 0
  br i1 %cmp.i34, label %cond.false.i35.aq_mdio_busy_wait.exit37_crit_edge, label %cond.false.i35.land.lhs.true.i29_crit_edge

cond.false.i35.land.lhs.true.i29_crit_edge:       ; preds = %cond.false.i35
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i29

cond.false.i35.aq_mdio_busy_wait.exit37_crit_edge: ; preds = %cond.false.i35
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit37

aq_mdio_busy_wait.exit37:                         ; preds = %cond.false.i35.aq_mdio_busy_wait.exit37_crit_edge, %if.then6.i32, %aq_mdio_busy_wait.exit.aq_mdio_busy_wait.exit37_crit_edge
  %call14 = tail call i32 @hw_atl_glb_mdio_iface5_get(ptr noundef %aq_hw) #2
  %conv15 = trunc i32 %call14 to i16
  ret i16 %conv15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_glb_mdio_iface4_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_glb_mdio_iface2_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_glb_mdio_iface5_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_mdio_write_word(ptr noundef %aq_hw, i16 noundef zeroext %mmd, i16 noundef zeroext %addr, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 21
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %phy_id, align 8
  %shl = shl i16 %1, 5
  %or = or i16 %shl, %mmd
  %conv3 = zext i16 %addr to i32
  tail call void @hw_atl_glb_mdio_iface4_set(ptr noundef %aq_hw, i32 noundef %conv3) #2
  %2 = and i16 %or, 1023
  %and6 = zext i16 %2 to i32
  %or8 = or i32 %and6, 45056
  tail call void @hw_atl_glb_mdio_iface2_set(ptr noundef %aq_hw, i32 noundef %or8) #2
  %call.i = tail call i64 @ktime_get() #2
  %add.i.i = add i64 %call.i, 100000000
  %call229.i = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i)
  %cmp30.i = icmp eq i32 %call229.i, 0
  br i1 %cmp30.i, label %entry.aq_mdio_busy_wait.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.aq_mdio_busy_wait.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call7.i = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  br label %aq_mdio_busy_wait.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #2
  %call2.i = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.aq_mdio_busy_wait.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i

cond.false.i.aq_mdio_busy_wait.exit_crit_edge:    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit

aq_mdio_busy_wait.exit:                           ; preds = %cond.false.i.aq_mdio_busy_wait.exit_crit_edge, %if.then6.i, %entry.aq_mdio_busy_wait.exit_crit_edge
  %conv9 = zext i16 %data to i32
  tail call void @hw_atl_glb_mdio_iface3_set(ptr noundef %aq_hw, i32 noundef %conv9) #2
  %or15 = or i32 %and6, 40960
  tail call void @hw_atl_glb_mdio_iface2_set(ptr noundef %aq_hw, i32 noundef %or15) #2
  %call.i24 = tail call i64 @ktime_get() #2
  %add.i.i25 = add i64 %call.i24, 100000000
  %call229.i26 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i26)
  %cmp30.i27 = icmp eq i32 %call229.i26, 0
  br i1 %cmp30.i27, label %aq_mdio_busy_wait.exit.aq_mdio_busy_wait.exit38_crit_edge, label %aq_mdio_busy_wait.exit.land.lhs.true.i30_crit_edge

aq_mdio_busy_wait.exit.land.lhs.true.i30_crit_edge: ; preds = %aq_mdio_busy_wait.exit
  br label %land.lhs.true.i30

aq_mdio_busy_wait.exit.aq_mdio_busy_wait.exit38_crit_edge: ; preds = %aq_mdio_busy_wait.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit38

land.lhs.true.i30:                                ; preds = %cond.false.i36.land.lhs.true.i30_crit_edge, %aq_mdio_busy_wait.exit.land.lhs.true.i30_crit_edge
  %call3.i28 = tail call i64 @ktime_get() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i28, i64 %add.i.i25)
  %cmp3.i.i29 = icmp sgt i64 %call3.i28, %add.i.i25
  br i1 %cmp3.i.i29, label %if.then6.i33, label %cond.false.i36

if.then6.i33:                                     ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #4
  %call7.i31 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  br label %aq_mdio_busy_wait.exit38

cond.false.i36:                                   ; preds = %land.lhs.true.i30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #2
  %call2.i34 = tail call i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) #2
  %cmp.i35 = icmp eq i32 %call2.i34, 0
  br i1 %cmp.i35, label %cond.false.i36.aq_mdio_busy_wait.exit38_crit_edge, label %cond.false.i36.land.lhs.true.i30_crit_edge

cond.false.i36.land.lhs.true.i30_crit_edge:       ; preds = %cond.false.i36
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i30

cond.false.i36.aq_mdio_busy_wait.exit38_crit_edge: ; preds = %cond.false.i36
  call void @__sanitizer_cov_trace_pc() #4
  br label %aq_mdio_busy_wait.exit38

aq_mdio_busy_wait.exit38:                         ; preds = %cond.false.i36.aq_mdio_busy_wait.exit38_crit_edge, %if.then6.i33, %aq_mdio_busy_wait.exit.aq_mdio_busy_wait.exit38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_glb_mdio_iface3_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext %mmd, i16 noundef zeroext %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #2
  %add.i = add i64 %call, 100000000
  %call233 = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call233)
  %cmp34 = icmp eq i32 %call233, 1
  br i1 %cmp34, label %entry.if.end19_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call i64 @ktime_get() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i, label %if.then6, label %cond.false

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %phi.cmp.not = icmp eq i32 %call7, 1
  br i1 %phi.cmp.not, label %if.then6.if.end19_crit_edge, label %if.then6.err_exit_crit_edge

if.then6.err_exit_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %err_exit

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #2
  %call2 = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %aq_hw) #2
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %cond.false.if.end19_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true

cond.false.if.end19_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.end19:                                         ; preds = %cond.false.if.end19_crit_edge, %if.then6.if.end19_crit_edge, %entry.if.end19_crit_edge
  %call20 = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %aq_hw, i16 noundef zeroext %mmd, i16 noundef zeroext %address)
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %aq_hw, i32 noundef 1, i32 noundef 0) #2
  br label %err_exit

err_exit:                                         ; preds = %if.end19, %if.then6.err_exit_crit_edge
  %err.0 = phi i16 [ %call20, %if.end19 ], [ -1, %if.then6.err_exit_crit_edge ]
  ret i16 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_sem_mdio_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_glb_cpu_sem_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_phy_write_reg(ptr noundef %aq_hw, i16 noundef zeroext %mmd, i16 noundef zeroext %address, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #2
  %add.i = add i64 %call, 100000000
  %call231 = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call231)
  %cmp32 = icmp eq i32 %call231, 1
  br i1 %cmp32, label %entry.if.end19_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call i64 @ktime_get() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i, label %if.then6, label %cond.false

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %aq_hw) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %phi.cmp.not = icmp eq i32 %call7, 1
  br i1 %phi.cmp.not, label %if.then6.if.end19_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #2
  %call2 = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %aq_hw) #2
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %cond.false.if.end19_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true

cond.false.if.end19_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.end19:                                         ; preds = %cond.false.if.end19_crit_edge, %if.then6.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @aq_mdio_write_word(ptr noundef %aq_hw, i16 noundef zeroext %mmd, i16 noundef zeroext %address, i16 noundef zeroext %data)
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %aq_hw, i32 noundef 1, i32 noundef 0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aq_phy_init_phy_id(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 21
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_id, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %call = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 1, i16 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp4.not = icmp eq i16 %call, -1
  br i1 %cmp4.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %1 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %phy_id, align 8
  %inc = add i16 %2, 1
  store i16 %inc, ptr %phy_id, align 8
  %cmp = icmp ult i16 %inc, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %3 = xor i1 %cmp4.not, true
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aq_phy_init(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 21
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %phy_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %1)
  %cmp = icmp eq i16 %1, 32
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %phy_id, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %call.i = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 1, i16 noundef zeroext 3) #2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i)
  %cmp4.not.i = icmp eq i16 %call.i, -1
  br i1 %cmp4.not.i, label %for.inc.i, label %for.body.i.if.end3_crit_edge

for.body.i.if.end3_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

for.inc.i:                                        ; preds = %for.body.i
  %3 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_id, align 8
  %inc.i = add i16 %4, 1
  store i16 %inc.i, ptr %phy_id, align 8
  %cmp.i = icmp ult i16 %inc.i, 32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.end3:                                          ; preds = %for.body.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 1, i16 noundef zeroext 2)
  %conv5 = zext i16 %call4 to i32
  %shl = shl nuw i32 %conv5, 16
  %call6 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 1, i16 noundef zeroext 3)
  %conv7 = zext i16 %call6 to i32
  %or = or i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp8 = icmp eq i32 %or, -1
  br i1 %cmp8, label %if.then10, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 32, ptr %phy_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end3.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then10 ], [ true, %if.end3.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_phy_disable_ptp(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 798)
  %0 = and i16 %call, -1025
  tail call void @aq_phy_write_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 798, i16 noundef zeroext %0)
  %call.1 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 797)
  %1 = and i16 %call.1, -1025
  tail call void @aq_phy_write_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 797, i16 noundef zeroext %1)
  %call.2 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 796)
  %2 = and i16 %call.2, -1025
  tail call void @aq_phy_write_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 796, i16 noundef zeroext %2)
  %call.3 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 795)
  %3 = and i16 %call.3, -1025
  tail call void @aq_phy_write_reg(ptr noundef %aq_hw, i16 noundef zeroext 30, i16 noundef zeroext 795, i16 noundef zeroext %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"ptp_registers", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_phy.c", i32 155, i32 19}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
