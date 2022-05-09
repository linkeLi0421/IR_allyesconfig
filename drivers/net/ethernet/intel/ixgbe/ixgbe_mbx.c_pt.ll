; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@mbx_ops_generic = dso_local constant { %struct.ixgbe_mbx_operations, [32 x i8] } { %struct.ixgbe_mbx_operations { ptr null, ptr @ixgbe_read_mbx_pf, ptr @ixgbe_write_mbx_pf, ptr @ixgbe_read_posted_mbx, ptr @ixgbe_write_posted_mbx, ptr @ixgbe_check_for_msg_pf, ptr @ixgbe_check_for_ack_pf, ptr @ixgbe_check_for_rst_pf }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"mbx_ops_generic\00", align 1
@___asan_gen_.2 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 426, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mbx_ops_generic], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbx_ops_generic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %size2 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 5
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size2, align 4
  %4 = tail call i16 @llvm.umin.i16(i16 %3, i16 %size)
  %read = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read, align 4
  %call = tail call i32 %6(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %4, i16 noundef zeroext %mbx_id) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ -100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size2 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %size2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %size2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %size)
  %cmp = icmp ult i16 %1, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbx1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %write = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %call = tail call i32 %5(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ -100, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_check_for_msg(ptr noundef %hw, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %check_for_msg = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %check_for_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_for_msg, align 4
  %call = tail call i32 %3(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_check_for_ack(ptr noundef %hw, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %check_for_ack = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %check_for_ack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_for_ack, align 4
  %call = tail call i32 %3(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_check_for_rst(ptr noundef %hw, i16 noundef zeroext %mbx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %check_for_rst = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_for_rst, align 4
  %call = tail call i32 %3(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ixgbe_init_mbx_params_pf(ptr nocapture noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %stats = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1
  %size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 5
  %2 = call ptr @memset(ptr %stats, i32 0, i32 28)
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_mbx_pf(ptr noundef %hw, ptr nocapture noundef writeonly %msg, i16 noundef zeroext %size, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %vf_number to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 19200
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.ixgbe_obtain_mbx_lock_pf.exit_crit_edge, label %do.body1.i.i

entry.ixgbe_obtain_mbx_lock_pf.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_obtain_mbx_lock_pf.exit

do.body1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217728) #4, !srcloc !12
  br label %ixgbe_obtain_mbx_lock_pf.exit

ixgbe_obtain_mbx_lock_pf.exit:                    ; preds = %do.body1.i.i, %entry.ixgbe_obtain_mbx_lock_pf.exit_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i) #4
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge, label %for.cond.preheader

ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge:  ; preds = %ixgbe_obtain_mbx_lock_pf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %ixgbe_obtain_mbx_lock_pf.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp21.not = icmp eq i16 %size, 0
  br i1 %cmp21.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul = shl nuw nsw i32 %conv.i, 6
  %add = add nuw nsw i32 %mul, 77824
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add5 = add nuw nsw i32 %add, %shl
  %call6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add5) #4
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
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
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %for.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.end.ixgbe_write_reg.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #4, !srcloc !12
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.end.ixgbe_write_reg.exit_crit_edge
  %msgs_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1, i32 1
  %5 = ptrtoint ptr %msgs_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msgs_rx, align 4
  %inc10 = add i32 %6, 1
  store i32 %inc10, ptr %msgs_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ -100, %ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_mbx_pf(ptr noundef %hw, ptr nocapture noundef readonly %msg, i16 noundef zeroext %size, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %vf_number to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 19200
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.ixgbe_obtain_mbx_lock_pf.exit_crit_edge, label %do.body1.i.i

entry.ixgbe_obtain_mbx_lock_pf.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_obtain_mbx_lock_pf.exit

do.body1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217728) #4, !srcloc !12
  br label %ixgbe_obtain_mbx_lock_pf.exit

ixgbe_obtain_mbx_lock_pf.exit:                    ; preds = %do.body1.i.i, %entry.ixgbe_obtain_mbx_lock_pf.exit_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i) #4
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge, label %if.end

ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge:  ; preds = %ixgbe_obtain_mbx_lock_pf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ixgbe_obtain_mbx_lock_pf.exit
  %rem.i = and i32 %conv.i, 15
  %shl.i = shl nuw nsw i32 1, %rem.i
  %2 = lshr i32 %conv.i, 2
  %mul.i.i = and i32 %2, 16380
  %add.i.i = add nuw nsw i32 %mul.i.i, 1808
  %call.i.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i.i) #4
  %and.i.i = and i32 %call.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.ixgbe_check_for_msg_pf.exit_crit_edge, label %if.then.i.i

if.end.ixgbe_check_for_msg_pf.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_check_for_msg_pf.exit

if.then.i.i:                                      ; preds = %if.end
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body1.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

do.body1.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #4, !srcloc !12
  br label %if.then.i

if.then.i:                                        ; preds = %do.body1.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %reqs.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1, i32 3
  %6 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqs.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %reqs.i, align 4
  br label %ixgbe_check_for_msg_pf.exit

ixgbe_check_for_msg_pf.exit:                      ; preds = %if.then.i, %if.end.ixgbe_check_for_msg_pf.exit_crit_edge
  %shl.i29 = shl nuw i32 65536, %rem.i
  %call.i.i32 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i.i) #4
  %and.i.i33 = and i32 %call.i.i32, %shl.i29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33)
  %tobool.not.i.i34 = icmp eq i32 %and.i.i33, 0
  br i1 %tobool.not.i.i34, label %ixgbe_check_for_msg_pf.exit.ixgbe_check_for_ack_pf.exit_crit_edge, label %if.then.i.i36

ixgbe_check_for_msg_pf.exit.ixgbe_check_for_ack_pf.exit_crit_edge: ; preds = %ixgbe_check_for_msg_pf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_check_for_ack_pf.exit

if.then.i.i36:                                    ; preds = %ixgbe_check_for_msg_pf.exit
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i.i35 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i.i35, label %if.then.i.i36.if.then.i40_crit_edge, label %do.body1.i.i.i38

if.then.i.i36.if.then.i40_crit_edge:              ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i40

do.body1.i.i.i38:                                 ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i29) #4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %9, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i37, i32 %10) #4, !srcloc !12
  br label %if.then.i40

if.then.i40:                                      ; preds = %do.body1.i.i.i38, %if.then.i.i36.if.then.i40_crit_edge
  %acks.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1, i32 2
  %11 = ptrtoint ptr %acks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %acks.i, align 4
  %inc.i39 = add i32 %12, 1
  store i32 %inc.i39, ptr %acks.i, align 4
  br label %ixgbe_check_for_ack_pf.exit

ixgbe_check_for_ack_pf.exit:                      ; preds = %if.then.i40, %ixgbe_check_for_msg_pf.exit.ixgbe_check_for_ack_pf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp47.not = icmp eq i16 %size, 0
  br i1 %cmp47.not, label %ixgbe_check_for_ack_pf.exit.for.end_crit_edge, label %for.body.lr.ph

ixgbe_check_for_ack_pf.exit.for.end_crit_edge:    ; preds = %ixgbe_check_for_ack_pf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %ixgbe_check_for_ack_pf.exit
  %mul = shl nuw nsw i32 %conv.i, 6
  %add = add nuw nsw i32 %mul, 77824
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %ixgbe_write_reg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i42, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add7 = add nuw nsw i32 %add, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #4, !srcloc !12
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ixgbe_write_reg.exit.for.end_crit_edge, label %ixgbe_write_reg.exit.for.body_crit_edge

ixgbe_write_reg.exit.for.body_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

ixgbe_write_reg.exit.for.end_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %ixgbe_write_reg.exit.for.end_crit_edge, %ixgbe_check_for_ack_pf.exit.for.end_crit_edge
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i43 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i43, label %for.end.ixgbe_write_reg.exit46_crit_edge, label %do.body1.i45

for.end.ixgbe_write_reg.exit46_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_write_reg.exit46

do.body1.i45:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i44 = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 16777216) #4, !srcloc !12
  br label %ixgbe_write_reg.exit46

ixgbe_write_reg.exit46:                           ; preds = %do.body1.i45, %for.end.ixgbe_write_reg.exit46_crit_edge
  %stats = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats, align 4
  %inc11 = add i32 %21, 1
  store i32 %inc11, ptr %stats, align 4
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit46, %ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit46 ], [ -100, %ixgbe_obtain_mbx_lock_pf.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_posted_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %timeout.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %while.cond.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.end
  %check_for_msg25.i = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %check_for_msg25.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_for_msg25.i, align 4
  %call26.i = tail call i32 %5(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool4.not27.i = icmp eq i32 %call26.i, 0
  br i1 %tobool4.not27.i, label %while.cond.preheader.i.if.end4_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.end4_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %usec_delay.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cond.false11.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %countdown.028.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %dec.i, %cond.false11.i.while.body.i_crit_edge ]
  %dec.i = add i32 %countdown.028.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %while.body.i.cleanup_crit_edge, label %cond.false11.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false11.i:                                   ; preds = %while.body.i
  %6 = ptrtoint ptr %usec_delay.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #4
  %9 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbx1, align 4
  %check_for_msg.i = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %check_for_msg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %check_for_msg.i, align 4
  %call.i = tail call i32 %12(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %cond.false11.i.if.end4_crit_edge, label %cond.false11.i.while.body.i_crit_edge

cond.false11.i.while.body.i_crit_edge:            ; preds = %cond.false11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

cond.false11.i.if.end4_crit_edge:                 ; preds = %cond.false11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end4:                                          ; preds = %cond.false11.i.if.end4_crit_edge, %while.cond.preheader.i.if.end4_crit_edge
  %13 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbx1, align 4
  %read = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read, align 4
  %call6 = tail call i32 %16(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -100, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ], [ -100, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_posted_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %write = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %call = tail call i32 %5(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size, i16 noundef zeroext %mbx_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %lor.lhs.false.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end6
  %8 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbx1, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %check_for_ack25.i = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %check_for_ack25.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %check_for_ack25.i, align 4
  %call26.i = tail call i32 %11(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool4.not27.i = icmp eq i32 %call26.i, 0
  br i1 %tobool4.not27.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %usec_delay.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cond.false11.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %countdown.028.i = phi i32 [ %7, %while.body.lr.ph.i ], [ %dec.i, %cond.false11.i.while.body.i_crit_edge ]
  %dec.i = add i32 %countdown.028.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %while.body.i.cleanup_crit_edge, label %cond.false11.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false11.i:                                   ; preds = %while.body.i
  %12 = ptrtoint ptr %usec_delay.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #4
  %15 = ptrtoint ptr %mbx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbx1, align 4
  %check_for_ack.i = getelementptr inbounds %struct.ixgbe_mbx_operations, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %check_for_ack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %check_for_ack.i, align 4
  %call.i = tail call i32 %18(ptr noundef %hw, i16 noundef zeroext %mbx_id) #4
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %cond.false11.i.cleanup_crit_edge, label %cond.false11.i.while.body.i_crit_edge

cond.false11.i.while.body.i_crit_edge:            ; preds = %cond.false11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

cond.false11.i.cleanup_crit_edge:                 ; preds = %cond.false11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %cond.false11.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -100, %lor.lhs.false.cleanup_crit_edge ], [ -100, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -100, %lor.lhs.false.i.cleanup_crit_edge ], [ -100, %if.end6.cleanup_crit_edge ], [ 0, %while.cond.preheader.i.cleanup_crit_edge ], [ 0, %cond.false11.i.cleanup_crit_edge ], [ -100, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_check_for_msg_pf(ptr noundef %hw, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_number to i32
  %rem = and i32 %conv, 15
  %shl = shl nuw nsw i32 1, %rem
  %0 = lshr i32 %conv, 2
  %mul.i = and i32 %0, 16380
  %add.i = add nuw nsw i32 %mul.i, 1808
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i) #4
  %and.i = and i32 %call.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.if.then_crit_edge, label %do.body1.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.body1.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl) #4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #4, !srcloc !12
  br label %if.then

if.then:                                          ; preds = %do.body1.i.i, %if.then.i.if.then_crit_edge
  %reqs = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1, i32 3
  %4 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqs, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %reqs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_check_for_ack_pf(ptr noundef %hw, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_number to i32
  %rem = and i32 %conv, 15
  %shl = shl nuw i32 65536, %rem
  %0 = lshr i32 %conv, 2
  %mul.i = and i32 %0, 16380
  %add.i = add nuw nsw i32 %mul.i, 1808
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i) #4
  %and.i = and i32 %call.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.if.then_crit_edge, label %do.body1.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.body1.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl) #4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #4, !srcloc !12
  br label %if.then

if.then:                                          ; preds = %do.body1.i.i, %if.then.i.if.then_crit_edge
  %acks = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1, i32 2
  %4 = ptrtoint ptr %acks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acks, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %acks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_check_for_rst_pf(ptr noundef %hw, i16 noundef zeroext %vf_number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %vf_number)
  %cmp = icmp ugt i16 %vf_number, 31
  %0 = and i16 %vf_number, 31
  %rem = zext i16 %0 to i32
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %entry.sw.bb4_crit_edge
    i32 4, label %entry.sw.bb4_crit_edge21
    i32 5, label %entry.sw.bb4_crit_edge22
    i32 6, label %entry.sw.bb4_crit_edge23
  ]

entry.sw.bb4_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.bb4_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.bb4_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cond3 = select i1 %cmp, i32 448, i32 1536
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge21, %entry.sw.bb4_crit_edge22, %entry.sw.bb4_crit_edge23
  %add = select i1 %cmp, i32 1796, i32 1792
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb
  %add.sink = phi i32 [ %add, %sw.bb4 ], [ %cond3, %sw.bb ]
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.sink) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %vflre.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call5, %sw.epilog.sink.split ]
  %shl = shl nuw i32 1, %rem
  %and6 = and i32 %vflre.0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add9 = select i1 %cmp, i32 1796, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #4, !srcloc !12
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %rsts = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 9, i32 1, i32 4
  %7 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rsts, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rsts, align 4
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ -100, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @mbx_ops_generic, !1, !"mbx_ops_generic", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c", i32 426, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2157264927}
!12 = !{i64 4988800}
