; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/e1000_mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id, i1 noundef zeroext %unlock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then6

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %size2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 4
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size2, align 4
  %4 = tail call i16 @llvm.umin.i16(i16 %3, i16 %size)
  %call = tail call i32 %1(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %4, i16 noundef zeroext %mbx_id, i1 noundef zeroext %unlock) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %entry.if.end10_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then6 ], [ -15, %entry.if.end10_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %size2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %size2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %size)
  %cmp = icmp ult i16 %1, %size
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else:                                          ; preds = %entry
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else.if.end8_crit_edge, label %if.then5

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then5 ], [ 0, %if.else.if.end8_crit_edge ], [ -15, %entry.if.end8_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_msg(ptr noundef %hw, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %check_for_msg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 5
  %0 = ptrtoint ptr %check_for_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_for_msg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then ], [ -15, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_ack(ptr noundef %hw, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %check_for_ack = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 6
  %0 = ptrtoint ptr %check_for_ack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_for_ack, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then ], [ -15, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_rst(ptr noundef %hw, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %check_for_rst = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 7
  %0 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_for_rst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then ], [ -15, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_unlock_mbx(ptr noundef %hw, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %unlock = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 8
  %0 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unlock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then ], [ -15, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @igb_init_mbx_params_pf(ptr nocapture noundef writeonly %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %timeout, align 4
  %usec_delay = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 3
  %1 = ptrtoint ptr %usec_delay to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %usec_delay, align 4
  %size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %size, align 4
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @igb_read_mbx_pf, ptr %read, align 4
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @igb_write_mbx_pf, ptr %write, align 4
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 3
  %5 = ptrtoint ptr %read_posted to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @igb_read_posted_mbx, ptr %read_posted, align 4
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 4
  %6 = ptrtoint ptr %write_posted to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @igb_write_posted_mbx, ptr %write_posted, align 4
  %check_for_msg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 5
  %7 = ptrtoint ptr %check_for_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @igb_check_for_msg_pf, ptr %check_for_msg, align 4
  %check_for_ack = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 6
  %8 = ptrtoint ptr %check_for_ack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @igb_check_for_ack_pf, ptr %check_for_ack, align 4
  %check_for_rst = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 7
  %9 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @igb_check_for_rst_pf, ptr %check_for_rst, align 4
  %unlock = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 8
  %10 = ptrtoint ptr %unlock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @igb_release_mbx_lock_pf, ptr %unlock, align 4
  %stats = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1
  %11 = call ptr @memset(ptr %stats, i32 0, i32 20)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_read_mbx_pf(ptr noundef %hw, ptr nocapture noundef writeonly %msg, i16 noundef zeroext %size, i16 noundef zeroext %vf_number, i1 noundef zeroext %unlock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr3.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %conv.i = zext i16 %vf_number to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 3072
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i.do.body.i_crit_edge, %entry
  %count.0.i = phi i32 [ 10, %entry ], [ %dec.i, %if.end17.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %do.body7.i, !prof !9

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 134217728) #4, !srcloc !11
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %do.body.i.if.end.i_crit_edge
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add.i) #4
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp71.not = icmp eq i16 %size, 0
  br i1 %cmp71.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul = shl nuw nsw i32 %conv.i, 6
  %add = add nuw nsw i32 %mul, 2048
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

if.end17.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.not.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp.not.i, label %if.end17.i.out_no_read_crit_edge, label %if.end17.i.do.body.i_crit_edge

if.end17.i.do.body.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end17.i.out_no_read_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_no_read

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add5 = add nuw nsw i32 %add, %shl
  %call6 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add5) #4
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call6, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %4 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %unlock, label %do.body, label %do.body26

do.body:                                          ; preds = %for.end
  br i1 %tobool11.not, label %do.body.if.end53_crit_edge, label %do.body16, !prof !9

do.body.if.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %arrayidx22 = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx22, i32 33554432) #4, !srcloc !11
  br label %if.end53

do.body26:                                        ; preds = %for.end
  br i1 %tobool11.not, label %do.body26.if.end53_crit_edge, label %do.body43, !prof !9

do.body26.if.end53_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.body43:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %arrayidx49 = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx49, i32 167772160) #4, !srcloc !11
  br label %if.end53

if.end53:                                         ; preds = %do.body43, %do.body26.if.end53_crit_edge, %do.body16, %do.body.if.end53_crit_edge
  %msgs_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1, i32 1
  %6 = ptrtoint ptr %msgs_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgs_rx, align 4
  %inc54 = add i32 %7, 1
  store i32 %inc54, ptr %msgs_rx, align 4
  br label %out_no_read

out_no_read:                                      ; preds = %if.end53, %if.end17.i.out_no_read_crit_edge
  %ret_val.0.i70 = phi i32 [ 0, %if.end53 ], [ -15, %if.end17.i.out_no_read_crit_edge ]
  ret i32 %ret_val.0.i70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_write_mbx_pf(ptr noundef %hw, ptr nocapture noundef readonly %msg, i16 noundef zeroext %size, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr3.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %conv.i = zext i16 %vf_number to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 3072
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i.do.body.i_crit_edge, %entry
  %count.0.i = phi i32 [ 10, %entry ], [ %dec.i, %if.end17.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %do.body7.i, !prof !9

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 134217728) #4, !srcloc !11
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %do.body.i.if.end.i_crit_edge
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add.i) #4
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end

if.end17.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.not.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp.not.i, label %if.end17.i.out_no_write_crit_edge, label %if.end17.i.do.body.i_crit_edge

if.end17.i.do.body.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end17.i.out_no_write_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_no_write

if.end:                                           ; preds = %if.end.i
  %shl.i = shl nuw i32 1, %conv.i
  %call.i.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3200) #4
  %and.i.i = and i32 %call.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.igb_check_for_msg_pf.exit_crit_edge, label %if.then.i.i

if.end.igb_check_for_msg_pf.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_check_for_msg_pf.exit

if.then.i.i:                                      ; preds = %if.end
  %3 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool3.not.i.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body8.i.i, !prof !9

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

do.body8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #4
  %arrayidx.i.i = getelementptr i8, ptr %4, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %5) #4, !srcloc !11
  br label %if.then.i

if.then.i:                                        ; preds = %do.body8.i.i, %if.then.i.i.if.then.i_crit_edge
  %reqs.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1, i32 3
  %6 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqs.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %reqs.i, align 4
  br label %igb_check_for_msg_pf.exit

igb_check_for_msg_pf.exit:                        ; preds = %if.then.i, %if.end.igb_check_for_msg_pf.exit_crit_edge
  %shl.i69 = shl i32 65536, %conv.i
  %call.i.i70 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3200) #4
  %and.i.i71 = and i32 %call.i.i70, %shl.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool.not.i.i72 = icmp eq i32 %and.i.i71, 0
  br i1 %tobool.not.i.i72, label %igb_check_for_msg_pf.exit.igb_check_for_ack_pf.exit_crit_edge, label %if.then.i.i75

igb_check_for_msg_pf.exit.igb_check_for_ack_pf.exit_crit_edge: ; preds = %igb_check_for_msg_pf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_check_for_ack_pf.exit

if.then.i.i75:                                    ; preds = %igb_check_for_msg_pf.exit
  %8 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool3.not.i.i74 = icmp eq ptr %9, null
  br i1 %tobool3.not.i.i74, label %if.then.i.i75.if.then.i79_crit_edge, label %do.body8.i.i77, !prof !9

if.then.i.i75.if.then.i79_crit_edge:              ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i79

do.body8.i.i77:                                   ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i69) #4
  %arrayidx.i.i76 = getelementptr i8, ptr %9, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i76, i32 %10) #4, !srcloc !11
  br label %if.then.i79

if.then.i79:                                      ; preds = %do.body8.i.i77, %if.then.i.i75.if.then.i79_crit_edge
  %acks.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1, i32 2
  %11 = ptrtoint ptr %acks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %acks.i, align 4
  %inc.i78 = add i32 %12, 1
  store i32 %inc.i78, ptr %acks.i, align 4
  br label %igb_check_for_ack_pf.exit

igb_check_for_ack_pf.exit:                        ; preds = %if.then.i79, %igb_check_for_msg_pf.exit.igb_check_for_ack_pf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp86.not = icmp eq i16 %size, 0
  br i1 %cmp86.not, label %igb_check_for_ack_pf.exit.do.body22_crit_edge, label %do.body.lr.ph

igb_check_for_ack_pf.exit.do.body22_crit_edge:    ; preds = %igb_check_for_ack_pf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

do.body.lr.ph:                                    ; preds = %igb_check_for_ack_pf.exit
  %mul = shl nuw nsw i32 %conv.i, 6
  %add = add nuw nsw i32 %mul, 2048
  %wide.trip.count = zext i16 %size to i32
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %do.body.lr.ph
  %indvars.iv = phi i32 [ 0, %do.body.lr.ph ], [ %indvars.iv.next, %if.end19.do.body_crit_edge ]
  %13 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %do.body.if.end19_crit_edge, label %do.body12, !prof !9

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add17 = add nuw nsw i32 %add, %shl
  %arrayidx18 = getelementptr i8, ptr %14, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx18, i32 %17) #4, !srcloc !11
  br label %if.end19

if.end19:                                         ; preds = %do.body12, %do.body.if.end19_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end19.do.body22_crit_edge, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end19.do.body22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

do.body22:                                        ; preds = %if.end19.do.body22_crit_edge, %igb_check_for_ack_pf.exit.do.body22_crit_edge
  %18 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %do.body22.if.end46_crit_edge, label %do.body39, !prof !9

do.body22.if.end46_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.body39:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %arrayidx45 = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx45, i32 16777216) #4, !srcloc !11
  br label %if.end46

if.end46:                                         ; preds = %do.body39, %do.body22.if.end46_crit_edge
  %stats = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats, align 4
  %inc49 = add i32 %21, 1
  store i32 %inc49, ptr %stats, align 4
  br label %out_no_write

out_no_write:                                     ; preds = %if.end46, %if.end17.i.out_no_write_crit_edge
  %ret_val.0.i84 = phi i32 [ 0, %if.end46 ], [ -15, %if.end17.i.out_no_write_crit_edge ]
  ret i32 %ret_val.0.i84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_read_posted_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %timeout.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %lor.lhs.false.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end
  %check_for_msg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 5
  %4 = ptrtoint ptr %check_for_msg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_for_msg.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then3_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call39.i = tail call i32 %5(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool6.not40.i = icmp eq i32 %call39.i, 0
  br i1 %tobool6.not40.i, label %while.cond.preheader.i.if.then3_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.then3_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %usec_delay.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cond.false13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %countdown.041.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %dec.i, %cond.false13.i.while.body.i_crit_edge ]
  %dec.i = add i32 %countdown.041.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool7.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool7.not.i, label %if.then17.i, label %cond.false13.i

cond.false13.i:                                   ; preds = %while.body.i
  %6 = ptrtoint ptr %usec_delay.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #4
  %9 = ptrtoint ptr %check_for_msg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_for_msg.i, align 4
  %call.i = tail call i32 %10(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %cond.false13.i.if.then3_crit_edge, label %cond.false13.i.while.body.i_crit_edge

cond.false13.i.while.body.i_crit_edge:            ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

cond.false13.i.if.then3_crit_edge:                ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then17.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %timeout.i, align 4
  br label %out

if.then3:                                         ; preds = %cond.false13.i.if.then3_crit_edge, %while.cond.preheader.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 4
  %call6 = tail call i32 %13(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id, i1 noundef zeroext true) #4
  br label %out

out:                                              ; preds = %if.then3, %if.then17.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call6, %if.then3 ], [ -15, %entry.out_crit_edge ], [ -15, %if.then17.i ], [ -15, %if.end.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_write_posted_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 %1(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then6:                                         ; preds = %if.end
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then6.out_crit_edge, label %lor.lhs.false.i

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false.i:                                  ; preds = %if.then6
  %check_for_ack.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 6
  %6 = ptrtoint ptr %check_for_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_for_ack.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.out_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call39.i = tail call i32 %7(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool6.not40.i = icmp eq i32 %call39.i, 0
  br i1 %tobool6.not40.i, label %while.cond.preheader.i.out_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.out_crit_edge:             ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %usec_delay.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cond.false13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %countdown.041.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %dec.i, %cond.false13.i.while.body.i_crit_edge ]
  %dec.i = add i32 %countdown.041.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool7.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool7.not.i, label %if.then17.i, label %cond.false13.i

cond.false13.i:                                   ; preds = %while.body.i
  %8 = ptrtoint ptr %usec_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #4
  %11 = ptrtoint ptr %check_for_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %check_for_ack.i, align 4
  %call.i = tail call i32 %12(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %cond.false13.i.out_crit_edge, label %cond.false13.i.while.body.i_crit_edge

cond.false13.i.while.body.i_crit_edge:            ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

cond.false13.i.out_crit_edge:                     ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then17.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %timeout, align 4
  br label %out

out:                                              ; preds = %if.then17.i, %cond.false13.i.out_crit_edge, %while.cond.preheader.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.then6.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ -15, %lor.lhs.false.out_crit_edge ], [ -15, %entry.out_crit_edge ], [ 0, %lor.lhs.false.i.out_crit_edge ], [ -15, %if.then17.i ], [ -15, %if.then6.out_crit_edge ], [ 0, %while.cond.preheader.i.out_crit_edge ], [ 0, %cond.false13.i.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_check_for_msg_pf(ptr noundef %hw, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_number to i32
  %shl = shl nuw i32 1, %conv
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3200) #4
  %and.i = and i32 %call.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %entry
  %hw_addr2.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %if.then.i.if.then_crit_edge, label %do.body8.i, !prof !9

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.body8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl) #4
  %arrayidx.i = getelementptr i8, ptr %1, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %2) #4, !srcloc !11
  br label %if.then

if.then:                                          ; preds = %do.body8.i, %if.then.i.if.then_crit_edge
  %reqs = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1, i32 3
  %3 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqs, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %reqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.then ], [ -15, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_check_for_ack_pf(ptr noundef %hw, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_number to i32
  %shl = shl i32 65536, %conv
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3200) #4
  %and.i = and i32 %call.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %entry
  %hw_addr2.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %if.then.i.if.then_crit_edge, label %do.body8.i, !prof !9

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.body8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl) #4
  %arrayidx.i = getelementptr i8, ptr %1, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %2) #4, !srcloc !11
  br label %if.then

if.then:                                          ; preds = %do.body8.i, %if.then.i.if.then_crit_edge
  %acks = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1, i32 2
  %3 = ptrtoint ptr %acks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %acks, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %acks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.then ], [ -15, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_check_for_rst_pf(ptr noundef %hw, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3208) #4
  %conv = zext i16 %vf_number to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %call, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.body8, !prof !9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %arrayidx = getelementptr i8, ptr %1, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %do.body8, %if.then.if.end_crit_edge
  %rsts = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 1, i32 4
  %3 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rsts, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %rsts, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.end ], [ -15, %entry.if.end15_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_release_mbx_lock_pf(ptr noundef %hw, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_number to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 3072
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add) #4
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %do.body

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body:                                          ; preds = %entry
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.body.if.end17_crit_edge, label %do.body8, !prof !9

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %and11 = and i32 %call, -9
  %2 = tail call i32 @llvm.bswap.i32(i32 %and11)
  %arrayidx = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !11
  br label %if.end17

if.end17:                                         ; preds = %do.body8, %do.body.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156018082}
!11 = !{i64 3000930}
!12 = !{i64 2156033658}
!13 = !{i64 2156037323}
!14 = !{i64 2156010615}
!15 = !{i64 2156026275}
!16 = !{i64 2156029923}
!17 = !{i64 2156014400}
!18 = !{i64 2156022488}
