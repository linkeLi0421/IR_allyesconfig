; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils_fw2x.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils_fw2x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }

@aq_fw_2x_ops = dso_local constant { %struct.aq_fw_ops, [60 x i8] } { %struct.aq_fw_ops { ptr @aq_fw2x_init, ptr @aq_fw2x_deinit, ptr null, ptr @aq_fw2x_renegotiate, ptr @aq_fw2x_get_mac_permanent, ptr @aq_fw2x_set_link_speed, ptr @aq_fw2x_set_state, ptr @aq_fw2x_update_link_status, ptr @aq_fw2x_update_stats, ptr null, ptr @aq_fw2x_get_phy_temp, ptr @aq_fw2x_get_flow_control, ptr @aq_fw2x_set_flow_control, ptr @aq_fw2x_led_control, ptr @aq_fw2x_set_phyloopback, ptr @aq_fw2x_set_power, ptr @aq_fw2x_send_fw_request, ptr @aq_fw3x_enable_ptp, ptr @aq_fw3x_adjust_ptp, ptr @aq_fw2x_set_eee_rate, ptr @aq_fw2x_get_eee_rate, ptr @aq_fw2x_set_downshift, ptr @aq_fw2x_set_media_detect, ptr @aq_fw2x_get_link_capabilities, ptr @aq_fw2x_send_macsec_req }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"aq_fw_2x_ops\00", align 1
@___asan_gen_.5 = private constant [69 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils_fw2x.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 706, i32 24 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @aq_fw_2x_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_fw_2x_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_init(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 10000000
  %call.i94 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 864) #4
  %mbox_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %0 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i94, ptr %mbox_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.not95 = icmp eq i32 %call.i94, 0
  br i1 %cmp.not95, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call4 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call4, %add.i
  br i1 %cmp3.i, label %if.then7, label %cond.false

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call.i80 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 864) #4
  %1 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.i80, ptr %mbox_addr, align 4
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 864) #4
  %3 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %mbox_addr, align 4
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then7, %entry.for.end_crit_edge
  %call23 = tail call i64 @ktime_get() #4
  %add.i81 = add i64 %call23, 100000000
  %call.i8296 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 820) #4
  %rpc_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 16
  %4 = ptrtoint ptr %rpc_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i8296, ptr %rpc_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8296)
  %cmp28.not97 = icmp eq i32 %call.i8296, 0
  br i1 %cmp28.not97, label %for.end.land.lhs.true32_crit_edge, label %for.end.for.end51_crit_edge

for.end.for.end51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end51

for.end.land.lhs.true32_crit_edge:                ; preds = %for.end
  br label %land.lhs.true32

land.lhs.true32:                                  ; preds = %cond.false45.land.lhs.true32_crit_edge, %for.end.land.lhs.true32_crit_edge
  %call33 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i81)
  %cmp3.i84 = icmp sgt i64 %call33, %add.i81
  br i1 %cmp3.i84, label %if.then36, label %cond.false45

if.then36:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  %call.i87 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 820) #4
  %5 = ptrtoint ptr %rpc_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i87, ptr %rpc_addr, align 8
  br label %for.end51

cond.false45:                                     ; preds = %land.lhs.true32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  %call.i82 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 820) #4
  %7 = ptrtoint ptr %rpc_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i82, ptr %rpc_addr, align 8
  %cmp28.not = icmp eq i32 %call.i82, 0
  br i1 %cmp28.not, label %cond.false45.land.lhs.true32_crit_edge, label %cond.false45.for.end51_crit_edge

cond.false45.for.end51_crit_edge:                 ; preds = %cond.false45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end51

cond.false45.land.lhs.true32_crit_edge:           ; preds = %cond.false45
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true32

for.end51:                                        ; preds = %cond.false45.for.end51_crit_edge, %if.then36, %for.end.for.end51_crit_edge
  %settings_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 17
  %8 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbox_addr, align 4
  %add.i88 = add i32 %9, 268
  %call.i89 = tail call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %add.i88, ptr noundef %settings_addr, i32 noundef 1) #4
  ret i32 %call.i89
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_deinit(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef 0) #4
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %or.i = or i32 %call.i, 4194304
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %or.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_renegotiate(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %or = or i32 %call, -2147483648
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %or) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_get_mac_permanent(ptr noundef %self, ptr nocapture noundef writeonly %mac) #0 align 64 {
entry:
  %mac_addr = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 868) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mac_addr) #4
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mac_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %add = add i32 %call, 160
  %call1 = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %add, ptr noundef nonnull %mac_addr, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_addr, align 8
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac_addr, align 8
  %arrayidx4 = getelementptr inbounds [2 x i32], ptr %mac_addr, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %9 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_addr, align 8
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mac, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %mac_addr, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac_addr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_link_speed(ptr noundef %self, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc.i = trunc i32 %speed to i12
  %rev.i = tail call i12 @llvm.bitreverse.i12(i12 %trunc.i) #4
  %mask.i = and i12 %rev.i, -256
  %0 = zext i12 %mask.i to i32
  %and16.i = shl i32 %speed, 1
  %1 = and i32 %and16.i, 32
  %2 = or i32 %1, %0
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %2) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_state(ptr noundef %self, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %1 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aq_nic_cfg, align 8
  %eee_speeds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %2, i32 0, i32 37
  %3 = ptrtoint ptr %eee_speeds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eee_speeds, align 4
  %and.i = and i32 %call, -4198145
  %and.i.i = shl i32 %4, 2
  %5 = and i32 %and.i.i, 2048
  %and1.i.i = and i32 %4, 1024
  %and6.i.i = lshr i32 %4, 2
  %6 = and i32 %and6.i.i, 512
  %and11.i.i = lshr i32 %4, 4
  %7 = and i32 %and11.i.i, 256
  %8 = or i32 %and1.i.i, %and.i
  %9 = or i32 %8, %5
  %10 = or i32 %9, %6
  %or.i = or i32 %10, %7
  %fc = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %2, i32 0, i32 13
  %11 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc, align 8
  %and.i9 = and i32 %or.i, -4194329
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %12, label %sw.bb.sw.epilog_crit_edge [
    i32 3, label %sw.bb.sw.bb.i_crit_edge
    i32 2, label %sw.bb.sw.bb.i_crit_edge13
    i32 1, label %sw.bb1.i
  ]

sw.bb.sw.bb.i_crit_edge13:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge13
  %or.i10 = or i32 %or.i, 24
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %or2.i = or i32 %and.i9, 16
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %call, 4194304
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1.i, %sw.bb.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %mpi_state.1 = phi i32 [ %call, %entry.sw.epilog_crit_edge ], [ %or, %sw.bb2 ], [ %and.i9, %sw.bb.sw.epilog_crit_edge ], [ %or2.i, %sw.bb1.i ], [ %or.i10, %sw.bb.i ]
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %mpi_state.1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_update_link_status(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 880) #4
  %and = and i32 %call, 3872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then:                                          ; preds = %entry
  %and1 = and i32 %call, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.else:                                          ; preds = %if.then
  %and4 = and i32 %call, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else8, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.else8:                                         ; preds = %if.else
  %and9 = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.else8.if.end31_crit_edge

if.else8.if.end31_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.else13:                                        ; preds = %if.else8
  %and14 = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.else13.if.end31_crit_edge

if.else13.if.end31_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.else18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  %and19 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %. = select i1 %tobool20.not, i32 10000, i32 100
  br label %if.end31

if.end31:                                         ; preds = %if.else18, %if.else13.if.end31_crit_edge, %if.else8.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then.if.end31_crit_edge, %entry.if.end31_crit_edge
  %.sink = phi i32 [ 10000, %if.then.if.end31_crit_edge ], [ 5000, %if.else.if.end31_crit_edge ], [ 2500, %if.else8.if.end31_crit_edge ], [ 1000, %if.else13.if.end31_crit_edge ], [ %., %if.else18 ], [ 0, %entry.if.end31_crit_edge ]
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %aq_link_status, align 4
  %full_duplex = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %full_duplex, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_update_stats(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %and = and i32 %call, 1073741824
  %xor = xor i32 %call, 1073741824
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %xor) #4
  %call1 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call1, 10000000
  %call.i43 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and444 = and i32 %call.i43, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and444)
  %cmp.not45 = icmp eq i32 %and, %and444
  br i1 %cmp.not45, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call5 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %if.then8, label %cond.false

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call.i41 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %.pre = and i32 %call.i41, 1073741824
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #4
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and4 = and i32 %call.i, 1073741824
  %cmp.not = icmp eq i32 %and, %and4
  br i1 %cmp.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then8, %entry.for.end_crit_edge
  %and18.pre-phi = phi i32 [ %and444, %entry.for.end_crit_edge ], [ %.pre, %if.then8 ], [ %and4, %cond.false.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and18.pre-phi)
  %cmp19.not = icmp eq i32 %and, %and18.pre-phi
  br i1 %cmp19.not, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = tail call i32 @hw_atl_utils_update_stats(ptr noundef %self) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_get_phy_temp(ptr noundef %self, ptr nocapture noundef writeonly %temp) #0 align 64 {
entry:
  %temp_res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_res) #4
  %0 = ptrtoint ptr %temp_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp_res, align 4, !annotation !11
  %mbox_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %1 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbox_addr, align 4
  %add = add i32 %2, 80
  %xor = xor i32 %call, 262144
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %xor) #4
  %call1 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call1, 10000000
  %call.i48 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %3 = xor i32 %call.i48, %call
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not49 = icmp eq i32 %4, 0
  br i1 %cmp.not49, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call5 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %if.then8, label %cond.false

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call.i47 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #4
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %6 = xor i32 %call.i, %call
  %7 = and i32 %6, 262144
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then8, %entry.for.end_crit_edge
  %call20 = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %add, ptr noundef nonnull %temp_res, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %temp_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp_res, align 4
  %sext = shl i32 %9, 16
  %conv25 = ashr exact i32 %sext, 16
  %mul26 = mul nsw i32 %conv25, 1000
  %div = sdiv i32 %mul26, 256
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_res) #4
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_get_flow_control(ptr noundef %self, ptr nocapture noundef %fcmode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and = lshr i32 %call.i, 2
  %0 = and i32 %and, 2
  %and1 = lshr i32 %call.i, 4
  %1 = and i32 %and1, 1
  %2 = or i32 %1, %0
  %3 = ptrtoint ptr %fcmode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fcmode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_flow_control(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %fc = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc, align 8
  %and.i = and i32 %call, -25
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %entry.aq_fw2x_upd_flow_control_bits.exit_crit_edge [
    i32 3, label %entry.sw.bb.i_crit_edge
    i32 2, label %entry.sw.bb.i_crit_edge5
    i32 1, label %sw.bb1.i
  ]

entry.sw.bb.i_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

entry.aq_fw2x_upd_flow_control_bits.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %aq_fw2x_upd_flow_control_bits.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge5
  %or.i = or i32 %call, 24
  br label %aq_fw2x_upd_flow_control_bits.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or2.i = or i32 %and.i, 16
  br label %aq_fw2x_upd_flow_control_bits.exit

aq_fw2x_upd_flow_control_bits.exit:               ; preds = %sw.bb1.i, %sw.bb.i, %entry.aq_fw2x_upd_flow_control_bits.exit_crit_edge
  %mpi_state.0 = phi i32 [ %and.i, %entry.aq_fw2x_upd_flow_control_bits.exit_crit_edge ], [ %or2.i, %sw.bb1.i ], [ %or.i, %sw.bb.i ]
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %mpi_state.0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_led_control(ptr noundef %self, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ver_actual = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 13
  %0 = ptrtoint ptr %fw_ver_actual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_ver_actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50397222, i32 %1)
  %cmp = icmp ult i32 %1, 50397222
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 796, i32 noundef %mode) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_phyloopback(ptr noundef %self, i32 noundef %mode, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 3, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.sink19 = phi i32 [ -67108865, %sw.bb1 ], [ -134217729, %entry.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 67108864, %sw.bb1 ], [ 134217728, %entry.cleanup.sink.split_crit_edge ]
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %and = and i32 %call, %.sink19
  %masksel18 = select i1 %enable, i32 %.sink, i32 0
  %mpi_opts.0 = or i32 %and, %masksel18
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %mpi_opts.0) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_power(ptr noundef %self, i32 noundef %power_state, ptr nocapture noundef readonly %mac) #0 align 64 {
entry:
  %rpc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %wol = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rpc.i) #4
  %4 = ptrtoint ptr %rpc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rpc.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end21.i_crit_edge, label %if.then.i

if.then.if.end21.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then.i:                                        ; preds = %if.then
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef 4194304) #4
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call.i57.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and358.i = and i32 %call.i57.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358.i)
  %cmp.not59.i = icmp eq i32 %and358.i, 0
  br i1 %cmp.not59.i, label %if.then.i.land.lhs.true.i_crit_edge, label %if.then.i.if.end21.i_crit_edge

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then.i.land.lhs.true.i_crit_edge:              ; preds = %if.then.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.then.i.land.lhs.true.i_crit_edge
  %call6.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call6.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then9.i, label %cond.false.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i56.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  br label %if.end21.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  %call.i.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and3.i = and i32 %call.i.i, 4194304
  %cmp.not.i = icmp eq i32 %and3.i, 0
  br i1 %cmp.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.if.end21.i_crit_edge

cond.false.i.if.end21.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

if.end21.i:                                       ; preds = %cond.false.i.if.end21.i_crit_edge, %if.then9.i, %if.then.i.if.end21.i_crit_edge, %if.then.if.end21.i_crit_edge
  %wol_bits.0.i = phi i32 [ 0, %if.then.if.end21.i_crit_edge ], [ 65536, %if.then9.i ], [ 65536, %if.then.i.if.end21.i_crit_edge ], [ 65536, %cond.false.i.if.end21.i_crit_edge ]
  %6 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_nic_cfg, align 8
  %wol23.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %wol23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wol23.i, align 4
  %and24.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end21.i.if.end36.i_crit_edge, label %if.then26.i

if.end21.i.if.end36.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.then26.i:                                      ; preds = %if.end21.i
  %call28.i = call i32 @hw_atl_utils_fw_rpc_wait(ptr noundef %self, ptr noundef nonnull %rpc.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then26.i.aq_fw2x_set_wol.exit_crit_edge, label %if.end31.i

if.then26.i.aq_fw2x_set_wol.exit_crit_edge:       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %aq_fw2x_set_wol.exit

if.end31.i:                                       ; preds = %if.then26.i
  %or27.i = or i32 %wol_bits.0.i, 25165824
  %10 = ptrtoint ptr %rpc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rpc.i, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 88)
  %mac_addr.i = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, ptr %11, i32 0, i32 1, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %mac_addr.i, ptr %mac, i32 6)
  %len.i = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, ptr %11, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 84, ptr %len.i, align 1
  %call32.i = call i32 @hw_atl_utils_fw_rpc_call(ptr noundef %self, i32 noundef 88) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end31.i.aq_fw2x_set_wol.exit_crit_edge, label %if.end31.i.if.end36.i_crit_edge

if.end31.i.if.end36.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.end31.i.aq_fw2x_set_wol.exit_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %aq_fw2x_set_wol.exit

if.end36.i:                                       ; preds = %if.end31.i.if.end36.i_crit_edge, %if.end21.i.if.end36.i_crit_edge
  %wol_bits.1.i = phi i32 [ %or27.i, %if.end31.i.if.end36.i_crit_edge ], [ %wol_bits.0.i, %if.end21.i.if.end36.i_crit_edge ]
  %err.0.i = phi i32 [ %call32.i, %if.end31.i.if.end36.i_crit_edge ], [ 0, %if.end21.i.if.end36.i_crit_edge ]
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %wol_bits.1.i) #4
  br label %aq_fw2x_set_wol.exit

aq_fw2x_set_wol.exit:                             ; preds = %if.end36.i, %if.end31.i.aq_fw2x_set_wol.exit_crit_edge, %if.then26.i.aq_fw2x_set_wol.exit_crit_edge
  %err.1.i = phi i32 [ %call28.i, %if.then26.i.aq_fw2x_set_wol.exit_crit_edge ], [ %call32.i, %if.end31.i.aq_fw2x_set_wol.exit_crit_edge ], [ %err.0.i, %if.end36.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rpc.i) #4
  br label %if.end

if.end:                                           ; preds = %aq_fw2x_set_wol.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %err.1.i, %aq_fw2x_set_wol.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_send_fw_request(ptr noundef %self, ptr noundef %fw_req, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div43 = lshr i32 %size, 2
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp ne i32 %rem, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add nuw nsw i32 %div43, %inc
  %call = tail call i32 @hw_atl_write_fwcfg_dwords(ptr noundef %self, ptr noundef %fw_req, i32 noundef %spec.select) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end2

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_exit

if.end2:                                          ; preds = %entry
  %call3 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %and = and i32 %call3, 4096
  %xor = xor i32 %call3, 4096
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %xor) #4
  %call4 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call4, 10000000
  %call.i46 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and747 = and i32 %call.i46, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and747)
  %cmp8.not48 = icmp eq i32 %and, %and747
  br i1 %cmp8.not48, label %if.end2.land.lhs.true_crit_edge, label %if.end2.for.end_crit_edge

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end2.land.lhs.true_crit_edge:                  ; preds = %if.end2
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end2.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %cond.false

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call.i44 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %.pre = and i32 %call.i44, 4096
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #4
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and7 = and i32 %call.i, 4096
  %cmp8.not = icmp eq i32 %and, %and7
  br i1 %cmp8.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then15, %if.end2.for.end_crit_edge
  %and25.pre-phi = phi i32 [ %and747, %if.end2.for.end_crit_edge ], [ %.pre, %if.then15 ], [ %and7, %cond.false.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and25.pre-phi)
  %cmp26.not = icmp eq i32 %and, %and25.pre-phi
  %cond = select i1 %cmp26.not, i32 -110, i32 0
  br label %err_exit

err_exit:                                         ; preds = %for.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call, %entry.err_exit_crit_edge ], [ %cond, %for.end ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_fw3x_enable_ptp(ptr noundef %self, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 892) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %and = and i32 %call, -1114113
  %masksel = select i1 %tobool.not, i32 0, i32 1114112
  %ptp_opts.0 = or i32 %and, %masksel
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 888, i32 noundef %ptp_opts.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_fw3x_adjust_ptp(ptr noundef %self, i64 noundef %adj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %adj to i32
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 20640, i32 noundef %conv) #4
  %shr1 = lshr i64 %adj, 32
  %conv3 = trunc i64 %shr1 to i32
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 20644, i32 noundef %conv3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_eee_rate(ptr noundef %self, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %and.i = and i32 %call, -3841
  %and.i.i = shl i32 %speed, 2
  %0 = and i32 %and.i.i, 2048
  %and1.i.i = and i32 %speed, 1024
  %1 = or i32 %0, %and1.i.i
  %and6.i.i = lshr i32 %speed, 2
  %2 = and i32 %and6.i.i, 512
  %3 = or i32 %1, %2
  %and11.i.i = lshr i32 %speed, 4
  %4 = and i32 %and11.i.i, 256
  %5 = or i32 %3, %4
  %or.i = or i32 %5, %and.i
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %or.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_get_eee_rate(ptr noundef %self, ptr nocapture noundef writeonly %rate, ptr nocapture noundef writeonly %supported_rates) #0 align 64 {
entry:
  %caps_hi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caps_hi) #4
  %0 = ptrtoint ptr %caps_hi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %caps_hi, align 4, !annotation !11
  %mbox_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %1 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbox_addr, align 4
  %add = add i32 %2, 136
  %call = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %add, ptr noundef nonnull %caps_hi, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %caps_hi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps_hi, align 4
  %and.i = lshr i32 %4, 2
  %5 = and i32 %and.i, 512
  %and1.i = and i32 %4, 1024
  %6 = or i32 %5, %and1.i
  %and6.i = shl i32 %4, 2
  %7 = and i32 %and6.i, 2048
  %8 = or i32 %6, %7
  %and11.i = shl i32 %4, 4
  %9 = and i32 %and11.i, 4096
  %10 = or i32 %8, %9
  %11 = ptrtoint ptr %supported_rates to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %supported_rates, align 4
  %call.i = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #4
  %and.i11 = lshr i32 %call.i, 2
  %12 = and i32 %and.i11, 512
  %and1.i12 = and i32 %call.i, 1024
  %13 = or i32 %12, %and1.i12
  %and6.i13 = shl i32 %call.i, 2
  %14 = and i32 %and6.i13, 2048
  %15 = or i32 %13, %14
  %and11.i14 = shl i32 %call.i, 4
  %16 = and i32 %and11.i14, 4096
  %17 = or i32 %15, %16
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caps_hi) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_downshift(ptr noundef %self, i32 noundef %counter) #0 align 64 {
entry:
  %counter.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %counter.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %counter, ptr %counter.addr, align 4
  %call = call i32 @hw_atl_write_fwsettings_dwords(ptr noundef %self, i32 noundef 4, ptr noundef nonnull %counter.addr, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #4
  %1 = ptrtoint ptr %counter.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %counter.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  %and = and i32 %call1, -524289
  %masksel = select i1 %tobool2.not, i32 0, i32 524288
  %mpi_opts.0 = or i32 %masksel, %and
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 876, i32 noundef %mpi_opts.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_set_media_detect(ptr noundef %self, i1 noundef zeroext %on) #0 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #4
  %fw_ver_actual = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 13
  %0 = ptrtoint ptr %fw_ver_actual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_ver_actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50397274, i32 %1)
  %cmp = icmp ult i32 %1, 50397274
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i1 %on to i32
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %enable, align 4
  %call = call i32 @hw_atl_write_fwsettings_dwords(ptr noundef %self, i32 noundef 152, ptr noundef nonnull %enable, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_get_link_capabilities(ptr noundef %self) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !11
  %mbox_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %1 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbox_addr, align 4
  %add = add i32 %2, 132
  %call = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %add, ptr noundef nonnull %val, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw2x_send_macsec_req(ptr noundef %hw, ptr noundef %req, ptr noundef %response) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  %tobool1.not = icmp eq ptr %response, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !11
  %mbox_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 15
  %1 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbox_addr.i, align 4
  %add.i = add i32 %2, 132
  %call.i = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %hw, i32 noundef %add.i, ptr noundef nonnull %val.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %aq_fw2x_get_link_capabilities.exit, label %aq_fw2x_get_link_capabilities.exit.thread

aq_fw2x_get_link_capabilities.exit.thread:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

aq_fw2x_get_link_capabilities.exit:               ; preds = %if.end
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  %and = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %aq_fw2x_get_link_capabilities.exit.cleanup_crit_edge, label %if.end4

aq_fw2x_get_link_capabilities.exit.cleanup_crit_edge: ; preds = %aq_fw2x_get_link_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %aq_fw2x_get_link_capabilities.exit
  %call5 = call i32 @hw_atl_write_fwcfg_dwords(ptr noundef %hw, ptr noundef nonnull %req, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = call i32 @aq_hw_read_reg(ptr noundef %hw, i32 noundef 872) #4
  %xor = xor i32 %call8, 32768
  call void @aq_hw_write_reg(ptr noundef %hw, i32 noundef 872, i32 noundef %xor) #4
  %call9 = call i64 @ktime_get() #4
  %add.i62 = add i64 %call9, 10000000
  %call.i6370 = call i32 @aq_hw_read_reg(ptr noundef %hw, i32 noundef 880) #4
  %and1271 = and i32 %call.i6370, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %xor, i32 %and1271)
  %cmp13.not72 = icmp eq i32 %xor, %and1271
  br i1 %cmp13.not72, label %if.end7.land.lhs.true_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge
  %call17 = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i62)
  %cmp3.i = icmp sgt i64 %call17, %add.i62
  br i1 %cmp3.i, label %if.then20, label %cond.false

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call.i65 = call i32 @aq_hw_read_reg(ptr noundef %hw, i32 noundef 880) #4
  %.pre = and i32 %call.i65, 32768
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748) #4
  %call.i63 = call i32 @aq_hw_read_reg(ptr noundef %hw, i32 noundef 880) #4
  %and12 = and i32 %call.i63, 32768
  %cmp13.not = icmp eq i32 %xor, %and12
  br i1 %cmp13.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then20, %if.end7.for.end_crit_edge
  %and30.pre-phi = phi i32 [ %and1271, %if.end7.for.end_crit_edge ], [ %.pre, %if.then20 ], [ %and12, %cond.false.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %xor, i32 %and30.pre-phi)
  %cmp31.not = icmp eq i32 %xor, %and30.pre-phi
  br i1 %cmp31.not, label %for.end.cleanup_crit_edge, label %if.end34

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %rpc_addr = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 16
  %6 = ptrtoint ptr %rpc_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rpc_addr, align 8
  %add = add i32 %7, 4
  %call35 = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %hw, i32 noundef %add, ptr noundef nonnull %response, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %aq_fw2x_get_link_capabilities.exit.cleanup_crit_edge, %aq_fw2x_get_link_capabilities.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %aq_fw2x_get_link_capabilities.exit.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -5, %for.end.cleanup_crit_edge ], [ -95, %aq_fw2x_get_link_capabilities.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_fw_downld_dwords(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_fw_rpc_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_fw_rpc_call(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_write_fwcfg_dwords(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_write_fwsettings_dwords(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i12 @llvm.bitreverse.i12(i12) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @aq_fw_2x_ops, !1, !"aq_fw_2x_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils_fw2x.c", i32 706, i32 24}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
