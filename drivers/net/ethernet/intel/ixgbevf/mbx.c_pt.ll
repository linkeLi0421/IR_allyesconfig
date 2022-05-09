; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbevf/mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbevf/mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_mbx_info, i16, i16, i16, i16, i8, i8, i32 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, [6 x i8], [6 x i8], i32, i32, i8, i32, i32, i32 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_info = type { %struct.ixgbe_mbx_operations, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }

@ixgbevf_mbx_ops = dso_local constant { %struct.ixgbe_mbx_operations, [36 x i8] } { %struct.ixgbe_mbx_operations { ptr @ixgbevf_init_mbx_params_vf, ptr @ixgbevf_release_mbx_lock_vf, ptr @ixgbevf_read_mbx_vf, ptr @ixgbevf_write_mbx_vf, ptr @ixgbevf_check_for_msg_vf, ptr @ixgbevf_check_for_ack_vf, ptr @ixgbevf_check_for_rst_vf }, [36 x i8] zeroinitializer }, align 32
@ixgbevf_mbx_ops_legacy = dso_local constant { %struct.ixgbe_mbx_operations, [36 x i8] } { %struct.ixgbe_mbx_operations { ptr @ixgbevf_init_mbx_params_vf, ptr @ixgbevf_release_mbx_lock_vf_legacy, ptr @ixgbevf_read_mbx_vf_legacy, ptr @ixgbevf_write_mbx_vf_legacy, ptr @ixgbevf_check_for_msg_vf, ptr @ixgbevf_check_for_ack_vf, ptr @ixgbevf_check_for_rst_vf }, [36 x i8] zeroinitializer }, align 32
@ixgbevf_hv_mbx_ops = dso_local constant { %struct.ixgbe_mbx_operations, [36 x i8] } { %struct.ixgbe_mbx_operations { ptr @ixgbevf_init_mbx_params_vf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbevf_check_for_rst_vf }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"ixgbevf_mbx_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 489, i32 35 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"ixgbevf_mbx_ops_legacy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 499, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"ixgbevf_hv_mbx_ops\00", align 1
@___asan_gen_.8 = private constant [44 x i8] c"../drivers/net/ethernet/intel/ixgbevf/mbx.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 516, i32 35 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ixgbevf_mbx_ops, ptr @ixgbevf_mbx_ops_legacy, ptr @ixgbevf_hv_mbx_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_mbx_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_mbx_ops_legacy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_hv_mbx_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbevf_poll_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %check_for_msg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %check_for_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_for_msg, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %timeout = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %land.rhs.lr.ph.i

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.lr.ph.i:                                 ; preds = %lor.lhs.false4
  %size6 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %size6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size6, align 4
  %8 = tail call i16 @llvm.umin.i16(i16 %7, i16 %size)
  %udelay.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %countdown.027.i = phi i32 [ %5, %land.rhs.lr.ph.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %9 = ptrtoint ptr %check_for_msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_for_msg, align 4
  %call.i = tail call i32 %10(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then13, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %countdown.027.i, -1
  %11 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %udelay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read, align 4
  %call16 = tail call i32 %15(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %while.body.i.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %lor.lhs.false4.cleanup_crit_edge ], [ -4, %lor.lhs.false.cleanup_crit_edge ], [ -4, %entry.cleanup_crit_edge ], [ %call16, %if.then13 ], [ -6, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbevf_write_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %check_for_ack = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %check_for_ack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_for_ack, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %release = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %timeout = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %size9 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %size9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %size)
  %cmp = icmp ult i16 %9, %size
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %lor.lhs.false7.cleanup_crit_edge ], [ -4, %lor.lhs.false4.cleanup_crit_edge ], [ -4, %lor.lhs.false.cleanup_crit_edge ], [ -4, %entry.cleanup_crit_edge ], [ %call, %if.else ], [ -7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ixgbevf_init_mbx_params_vf(ptr nocapture noundef writeonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2000, ptr %timeout, align 4
  %udelay = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 500, ptr %udelay, align 4
  %size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %size, align 4
  %stats = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1
  %3 = call ptr @memset(ptr %stats, i32 0, i32 20)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbevf_release_mbx_lock_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %vf_mailbox1.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %vf_mailbox1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_mailbox1.i, align 4
  %2 = and i32 %call.i, 176
  %or4.i = or i32 %1, %2
  store i32 %or4.i, ptr %vf_mailbox1.i, align 4
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !15

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %1, %call.i
  %and = and i32 %or.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %add.ptr.i = getelementptr i8, ptr %4, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !17
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %entry.ixgbe_write_reg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_read_mbx_vf(ptr noundef %hw, ptr nocapture noundef writeonly %msg, i16 noundef zeroext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %vf_mailbox1.i.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %or.i.i.i = or i32 %1, %call.i.i.i
  %2 = and i32 %call.i.i.i, 176
  %or4.i.i.i = or i32 %1, %2
  store i32 %or4.i.i.i, ptr %vf_mailbox1.i.i.i, align 4
  %and.i.i = and i32 %or.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reqs.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 3
  %3 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqs.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %reqs.i, align 4
  %call.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %5 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %or.i.i = or i32 %6, %call.i.i
  %7 = and i32 %call.i.i, 176
  %or4.i.i = or i32 %6, %7
  store i32 %or4.i.i, ptr %vf_mailbox1.i.i.i, align 4
  %and.i = and i32 %or.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.ixgbevf_clear_msg_vf.exit_crit_edge, label %if.then.i22

if.end.ixgbevf_clear_msg_vf.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_msg_vf.exit

if.then.i22:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqs.i, align 4
  %inc.i21 = add i32 %9, 1
  store i32 %inc.i21, ptr %reqs.i, align 4
  %and3.i = and i32 %or4.i.i, -17
  %10 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and3.i, ptr %vf_mailbox1.i.i.i, align 4
  br label %ixgbevf_clear_msg_vf.exit

ixgbevf_clear_msg_vf.exit:                        ; preds = %if.then.i22, %if.end.ixgbevf_clear_msg_vf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp29.not = icmp eq i16 %size, 0
  br i1 %cmp29.not, label %ixgbevf_clear_msg_vf.exit.for.end_crit_edge, label %for.body.preheader

ixgbevf_clear_msg_vf.exit.for.end_crit_edge:      ; preds = %ixgbevf_clear_msg_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %ixgbevf_clear_msg_vf.exit
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %shl.i = shl nuw nsw i32 %indvars.iv, 2
  %add.i = add nuw nsw i32 %shl.i, 512
  %call.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %add.i) #5
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ixgbevf_clear_msg_vf.exit.for.end_crit_edge
  %call.i23 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %12 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %14 = and i32 %call.i23, 176
  %or4.i = or i32 %13, %14
  store i32 %or4.i, ptr %vf_mailbox1.i.i.i, align 4
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i24 = icmp eq ptr %16, null
  br i1 %tobool.not.i24, label %for.end.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !15

for.end.ixgbe_write_reg.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %call.i23, %13
  %or = or i32 %or.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %16, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #5, !srcloc !17
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %for.end.ixgbe_write_reg.exit_crit_edge
  %msgs_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 1
  %18 = ptrtoint ptr %msgs_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msgs_rx, align 4
  %inc6 = add i32 %19, 1
  store i32 %inc6, ptr %msgs_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %entry.cleanup_crit_edge
  %ret_val.0.i27 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %ret_val.0.i27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_write_mbx_vf(ptr noundef %hw, ptr nocapture noundef readonly %msg, i16 noundef zeroext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbevf_obtain_mbx_lock_vf(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_no_write_crit_edge

entry.out_no_write_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_write

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %vf_mailbox1.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_mailbox1.i.i, align 4
  %or.i.i = or i32 %1, %call.i.i
  %2 = and i32 %call.i.i, 176
  %or4.i.i = or i32 %1, %2
  store i32 %or4.i.i, ptr %vf_mailbox1.i.i, align 4
  %and.i = and i32 %or.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.ixgbevf_clear_msg_vf.exit_crit_edge, label %if.then.i

if.end.ixgbevf_clear_msg_vf.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_msg_vf.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reqs.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 3
  %3 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqs.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %reqs.i, align 4
  %and3.i = and i32 %or4.i.i, -17
  %5 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3.i, ptr %vf_mailbox1.i.i, align 4
  br label %ixgbevf_clear_msg_vf.exit

ixgbevf_clear_msg_vf.exit:                        ; preds = %if.then.i, %if.end.ixgbevf_clear_msg_vf.exit_crit_edge
  %call.i.i22 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %6 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vf_mailbox1.i.i, align 4
  %or.i.i24 = or i32 %7, %call.i.i22
  %8 = and i32 %call.i.i22, 176
  %or4.i.i25 = or i32 %7, %8
  store i32 %or4.i.i25, ptr %vf_mailbox1.i.i, align 4
  %and.i26 = and i32 %or.i.i24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %ixgbevf_clear_msg_vf.exit.ixgbevf_clear_ack_vf.exit_crit_edge, label %if.then.i30

ixgbevf_clear_msg_vf.exit.ixgbevf_clear_ack_vf.exit_crit_edge: ; preds = %ixgbevf_clear_msg_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_ack_vf.exit

if.then.i30:                                      ; preds = %ixgbevf_clear_msg_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %acks.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 2
  %9 = ptrtoint ptr %acks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %acks.i, align 4
  %inc.i28 = add i32 %10, 1
  store i32 %inc.i28, ptr %acks.i, align 4
  %and3.i29 = and i32 %or4.i.i25, -33
  %11 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and3.i29, ptr %vf_mailbox1.i.i, align 4
  br label %ixgbevf_clear_ack_vf.exit

ixgbevf_clear_ack_vf.exit:                        ; preds = %if.then.i30, %ixgbevf_clear_msg_vf.exit.ixgbevf_clear_ack_vf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp34.not = icmp eq i16 %size, 0
  br i1 %cmp34.not, label %ixgbevf_clear_ack_vf.exit.for.end_crit_edge, label %for.body.lr.ph

ixgbevf_clear_ack_vf.exit.for.end_crit_edge:      ; preds = %ixgbevf_clear_ack_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %ixgbevf_clear_ack_vf.exit
  %hw_addr.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg_array.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %ixgbe_write_reg_array.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg_array.exit_crit_edge, label %do.body4.i.i, !prof !15

for.body.ixgbe_write_reg_array.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg_array.exit

do.body4.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw nsw i32 %indvars.iv, 2
  %add.i = add nuw nsw i32 %shl.i, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #5, !srcloc !17
  br label %ixgbe_write_reg_array.exit

ixgbe_write_reg_array.exit:                       ; preds = %do.body4.i.i, %for.body.ixgbe_write_reg_array.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ixgbe_write_reg_array.exit.for.end_crit_edge, label %ixgbe_write_reg_array.exit.for.body_crit_edge

ixgbe_write_reg_array.exit.for.body_crit_edge:    ; preds = %ixgbe_write_reg_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

ixgbe_write_reg_array.exit.for.end_crit_edge:     ; preds = %ixgbe_write_reg_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %ixgbe_write_reg_array.exit.for.end_crit_edge, %ixgbevf_clear_ack_vf.exit.for.end_crit_edge
  %stats = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stats, align 4
  %inc4 = add i32 %18, 1
  store i32 %inc4, ptr %stats, align 4
  %call.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %19 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vf_mailbox1.i.i, align 4
  %21 = and i32 %call.i, 176
  %or4.i = or i32 %20, %21
  store i32 %or4.i, ptr %vf_mailbox1.i.i, align 4
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i31 = icmp eq ptr %23, null
  br i1 %tobool.not.i31, label %for.end.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !15

for.end.ixgbe_write_reg.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %call.i, %20
  %or = or i32 %or.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %23, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #5, !srcloc !17
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %for.end.ixgbe_write_reg.exit_crit_edge
  %timeout.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i32 = icmp eq i32 %26, 0
  br i1 %tobool.not.i32, label %ixgbe_write_reg.exit.out_no_write_crit_edge, label %lor.lhs.false.i

ixgbe_write_reg.exit.out_no_write_crit_edge:      ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_write

lor.lhs.false.i:                                  ; preds = %ixgbe_write_reg.exit
  %check_for_ack.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 5
  %27 = ptrtoint ptr %check_for_ack.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %check_for_ack.i, align 4
  %tobool2.not.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.out_no_write_crit_edge, label %land.rhs.lr.ph.i

lor.lhs.false.i.out_no_write_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_write

land.rhs.lr.ph.i:                                 ; preds = %lor.lhs.false.i
  %udelay.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %countdown.027.i = phi i32 [ %26, %land.rhs.lr.ph.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %29 = ptrtoint ptr %check_for_ack.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %check_for_ack.i, align 4
  %call.i33 = tail call i32 %30(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool6.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool6.not.i, label %land.rhs.i.out_no_write_crit_edge, label %while.body.i

land.rhs.i.out_no_write_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_write

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %countdown.027.i, -1
  %31 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %udelay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #5
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.out_no_write_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.out_no_write_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_write

out_no_write:                                     ; preds = %while.body.i.out_no_write_crit_edge, %land.rhs.i.out_no_write_crit_edge, %lor.lhs.false.i.out_no_write_crit_edge, %ixgbe_write_reg.exit.out_no_write_crit_edge, %entry.out_no_write_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_no_write_crit_edge ], [ -4, %lor.lhs.false.i.out_no_write_crit_edge ], [ -4, %ixgbe_write_reg.exit.out_no_write_crit_edge ], [ 0, %land.rhs.i.out_no_write_crit_edge ], [ -6, %while.body.i.out_no_write_crit_edge ]
  %release = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  tail call void %35(ptr noundef %hw) #5
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_check_for_msg_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %vf_mailbox1.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_mailbox1.i.i, align 4
  %or.i.i = or i32 %1, %call.i.i
  %2 = and i32 %call.i.i, 176
  %or4.i.i = or i32 %1, %2
  store i32 %or4.i.i, ptr %vf_mailbox1.i.i, align 4
  %and.i = and i32 %or.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reqs = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 3
  %3 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqs, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %reqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ -5, %entry.if.end_crit_edge ], [ 0, %if.then ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_check_for_ack_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %vf_mailbox1.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_mailbox1.i.i, align 4
  %or.i.i = or i32 %1, %call.i.i
  %2 = and i32 %call.i.i, 176
  %or4.i.i = or i32 %1, %2
  store i32 %or4.i.i, ptr %vf_mailbox1.i.i, align 4
  %and.i = and i32 %or.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i3 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %3 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vf_mailbox1.i.i, align 4
  %or.i.i5 = or i32 %4, %call.i.i3
  %5 = and i32 %call.i.i3, 176
  %or4.i.i6 = or i32 %4, %5
  store i32 %or4.i.i6, ptr %vf_mailbox1.i.i, align 4
  %and.i7 = and i32 %or.i.i5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i8, label %if.then.ixgbevf_clear_ack_vf.exit_crit_edge, label %if.then.i

if.then.ixgbevf_clear_ack_vf.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_ack_vf.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %acks.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 2
  %6 = ptrtoint ptr %acks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %acks.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %acks.i, align 4
  %and3.i = and i32 %or4.i.i6, -33
  %8 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3.i, ptr %vf_mailbox1.i.i, align 4
  br label %ixgbevf_clear_ack_vf.exit

ixgbevf_clear_ack_vf.exit:                        ; preds = %if.then.i, %if.then.ixgbevf_clear_ack_vf.exit_crit_edge
  %acks = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 2
  %9 = ptrtoint ptr %acks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %acks, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %acks, align 4
  br label %if.end

if.end:                                           ; preds = %ixgbevf_clear_ack_vf.exit, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ -5, %entry.if.end_crit_edge ], [ 0, %ixgbevf_clear_ack_vf.exit ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_check_for_rst_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %vf_mailbox1.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_mailbox1.i.i, align 4
  %or.i.i = or i32 %1, %call.i.i
  %2 = and i32 %call.i.i, 176
  %or4.i.i = or i32 %1, %2
  store i32 %or4.i.i, ptr %vf_mailbox1.i.i, align 4
  %and.i = and i32 %or.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i3 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %3 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vf_mailbox1.i.i, align 4
  %or.i.i5 = or i32 %4, %call.i.i3
  %5 = and i32 %call.i.i3, 176
  %or4.i.i6 = or i32 %4, %5
  store i32 %or4.i.i6, ptr %vf_mailbox1.i.i, align 4
  %and.i7 = and i32 %or.i.i5, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i8, label %if.then.ixgbevf_clear_rst_vf.exit_crit_edge, label %if.then.i

if.then.ixgbevf_clear_rst_vf.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_rst_vf.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rsts.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 4
  %6 = ptrtoint ptr %rsts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsts.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %rsts.i, align 4
  %and3.i = and i32 %or4.i.i6, -193
  %8 = ptrtoint ptr %vf_mailbox1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3.i, ptr %vf_mailbox1.i.i, align 4
  br label %ixgbevf_clear_rst_vf.exit

ixgbevf_clear_rst_vf.exit:                        ; preds = %if.then.i, %if.then.ixgbevf_clear_rst_vf.exit_crit_edge
  %rsts = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rsts, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %rsts, align 4
  br label %if.end

if.end:                                           ; preds = %ixgbevf_clear_rst_vf.exit, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ -5, %entry.if.end_crit_edge ], [ 0, %ixgbevf_clear_rst_vf.exit ]
  ret i32 %ret_val.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbevf_release_mbx_lock_vf_legacy(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_read_mbx_vf_legacy(ptr noundef %hw, ptr nocapture noundef writeonly %msg, i16 noundef zeroext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbevf_obtain_mbx_lock_vf(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.out_no_read_crit_edge

entry.out_no_read_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_read

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp13.not = icmp eq i16 %size, 0
  br i1 %cmp13.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %shl.i = shl nuw nsw i32 %indvars.iv, 2
  %add.i = add nuw nsw i32 %shl.i, 512
  %call.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %add.i) #5
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.end.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !15

for.end.ixgbe_write_reg.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %2, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #5, !srcloc !17
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %for.end.ixgbe_write_reg.exit_crit_edge
  %msgs_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 1
  %3 = ptrtoint ptr %msgs_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msgs_rx, align 4
  %inc5 = add i32 %4, 1
  store i32 %inc5, ptr %msgs_rx, align 4
  br label %out_no_read

out_no_read:                                      ; preds = %ixgbe_write_reg.exit, %entry.out_no_read_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_write_mbx_vf_legacy(ptr noundef %hw, ptr nocapture noundef readonly %msg, i16 noundef zeroext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbevf_obtain_mbx_lock_vf(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_no_write_crit_edge

entry.out_no_write_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_write

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %vf_mailbox1.i.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %or.i.i.i = or i32 %1, %call.i.i.i
  %2 = and i32 %call.i.i.i, 176
  %or4.i.i.i = or i32 %1, %2
  store i32 %or4.i.i.i, ptr %vf_mailbox1.i.i.i, align 4
  %and.i.i = and i32 %or.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.ixgbevf_check_for_msg_vf.exit_crit_edge, label %if.then.i

if.end.ixgbevf_check_for_msg_vf.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_check_for_msg_vf.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reqs.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 3
  %3 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqs.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %reqs.i, align 4
  br label %ixgbevf_check_for_msg_vf.exit

ixgbevf_check_for_msg_vf.exit:                    ; preds = %if.then.i, %if.end.ixgbevf_check_for_msg_vf.exit_crit_edge
  %call.i.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %5 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %or.i.i = or i32 %6, %call.i.i
  %7 = and i32 %call.i.i, 176
  %or4.i.i = or i32 %6, %7
  store i32 %or4.i.i, ptr %vf_mailbox1.i.i.i, align 4
  %and.i = and i32 %or.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ixgbevf_check_for_msg_vf.exit.ixgbevf_clear_msg_vf.exit_crit_edge, label %if.then.i20

ixgbevf_check_for_msg_vf.exit.ixgbevf_clear_msg_vf.exit_crit_edge: ; preds = %ixgbevf_check_for_msg_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_msg_vf.exit

if.then.i20:                                      ; preds = %ixgbevf_check_for_msg_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %reqs.i18 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 3
  %8 = ptrtoint ptr %reqs.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqs.i18, align 4
  %inc.i19 = add i32 %9, 1
  store i32 %inc.i19, ptr %reqs.i18, align 4
  %and3.i = and i32 %or4.i.i, -17
  %10 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and3.i, ptr %vf_mailbox1.i.i.i, align 4
  br label %ixgbevf_clear_msg_vf.exit

ixgbevf_clear_msg_vf.exit:                        ; preds = %if.then.i20, %ixgbevf_check_for_msg_vf.exit.ixgbevf_clear_msg_vf.exit_crit_edge
  %call.i.i.i21 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %11 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %or.i.i.i23 = or i32 %12, %call.i.i.i21
  %13 = and i32 %call.i.i.i21, 176
  %or4.i.i.i24 = or i32 %12, %13
  store i32 %or4.i.i.i24, ptr %vf_mailbox1.i.i.i, align 4
  %and.i.i25 = and i32 %or.i.i.i23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.not.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.not.i26, label %ixgbevf_clear_msg_vf.exit.ixgbevf_check_for_ack_vf.exit_crit_edge, label %if.then.i27

ixgbevf_clear_msg_vf.exit.ixgbevf_check_for_ack_vf.exit_crit_edge: ; preds = %ixgbevf_clear_msg_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_check_for_ack_vf.exit

if.then.i27:                                      ; preds = %ixgbevf_clear_msg_vf.exit
  %call.i.i3.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %14 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %or.i.i5.i = or i32 %15, %call.i.i3.i
  %16 = and i32 %call.i.i3.i, 176
  %or4.i.i6.i = or i32 %15, %16
  store i32 %or4.i.i6.i, ptr %vf_mailbox1.i.i.i, align 4
  %and.i7.i = and i32 %or.i.i5.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.then.i27.ixgbevf_clear_ack_vf.exit.i_crit_edge, label %if.then.i.i

if.then.i27.ixgbevf_clear_ack_vf.exit.i_crit_edge: ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_ack_vf.exit.i

if.then.i.i:                                      ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #7
  %acks.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 2
  %17 = ptrtoint ptr %acks.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %acks.i.i, align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %acks.i.i, align 4
  %and3.i.i = and i32 %or4.i.i6.i, -33
  %19 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and3.i.i, ptr %vf_mailbox1.i.i.i, align 4
  br label %ixgbevf_clear_ack_vf.exit.i

ixgbevf_clear_ack_vf.exit.i:                      ; preds = %if.then.i.i, %if.then.i27.ixgbevf_clear_ack_vf.exit.i_crit_edge
  %acks.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 2
  %20 = ptrtoint ptr %acks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %acks.i, align 4
  %inc.i28 = add i32 %21, 1
  store i32 %inc.i28, ptr %acks.i, align 4
  br label %ixgbevf_check_for_ack_vf.exit

ixgbevf_check_for_ack_vf.exit:                    ; preds = %ixgbevf_clear_ack_vf.exit.i, %ixgbevf_clear_msg_vf.exit.ixgbevf_check_for_ack_vf.exit_crit_edge
  %call.i.i30 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %22 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vf_mailbox1.i.i.i, align 4
  %or.i.i32 = or i32 %23, %call.i.i30
  %24 = and i32 %call.i.i30, 176
  %or4.i.i33 = or i32 %23, %24
  store i32 %or4.i.i33, ptr %vf_mailbox1.i.i.i, align 4
  %and.i34 = and i32 %or.i.i32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %ixgbevf_check_for_ack_vf.exit.ixgbevf_clear_ack_vf.exit_crit_edge, label %if.then.i39

ixgbevf_check_for_ack_vf.exit.ixgbevf_clear_ack_vf.exit_crit_edge: ; preds = %ixgbevf_check_for_ack_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbevf_clear_ack_vf.exit

if.then.i39:                                      ; preds = %ixgbevf_check_for_ack_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %acks.i36 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1, i32 2
  %25 = ptrtoint ptr %acks.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %acks.i36, align 4
  %inc.i37 = add i32 %26, 1
  store i32 %inc.i37, ptr %acks.i36, align 4
  %and3.i38 = and i32 %or4.i.i33, -33
  %27 = ptrtoint ptr %vf_mailbox1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and3.i38, ptr %vf_mailbox1.i.i.i, align 4
  br label %ixgbevf_clear_ack_vf.exit

ixgbevf_clear_ack_vf.exit:                        ; preds = %if.then.i39, %ixgbevf_check_for_ack_vf.exit.ixgbevf_clear_ack_vf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp41.not = icmp eq i16 %size, 0
  br i1 %cmp41.not, label %ixgbevf_clear_ack_vf.exit.for.end_crit_edge, label %for.body.lr.ph

ixgbevf_clear_ack_vf.exit.for.end_crit_edge:      ; preds = %ixgbevf_clear_ack_vf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %ixgbevf_clear_ack_vf.exit
  %hw_addr.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg_array.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %ixgbe_write_reg_array.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw_addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg_array.exit_crit_edge, label %do.body4.i.i, !prof !15

for.body.ixgbe_write_reg_array.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg_array.exit

do.body4.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw nsw i32 %indvars.iv, 2
  %add.i = add nuw nsw i32 %shl.i, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %32) #5, !srcloc !17
  br label %ixgbe_write_reg_array.exit

ixgbe_write_reg_array.exit:                       ; preds = %do.body4.i.i, %for.body.ixgbe_write_reg_array.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ixgbe_write_reg_array.exit.for.end_crit_edge, label %ixgbe_write_reg_array.exit.for.body_crit_edge

ixgbe_write_reg_array.exit.for.body_crit_edge:    ; preds = %ixgbe_write_reg_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

ixgbe_write_reg_array.exit.for.end_crit_edge:     ; preds = %ixgbe_write_reg_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %ixgbe_write_reg_array.exit.for.end_crit_edge, %ixgbevf_clear_ack_vf.exit.for.end_crit_edge
  %stats = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stats, align 4
  %inc6 = add i32 %34, 1
  store i32 %inc6, ptr %stats, align 4
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %35 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i40 = icmp eq ptr %36, null
  br i1 %tobool.not.i40, label %for.end.out_no_write_crit_edge, label %do.body4.i, !prof !15

for.end.out_no_write_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_write

do.body4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %36, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !17
  br label %out_no_write

out_no_write:                                     ; preds = %do.body4.i, %for.end.out_no_write_crit_edge, %entry.out_no_write_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbevf_obtain_mbx_lock_vf(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %vf_mailbox1.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 4
  %hw_addr.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %udelay = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 3
  br label %while.body

while.body:                                       ; preds = %cond.false11.while.body_crit_edge, %while.cond.preheader
  %dec38.in = phi i32 [ %1, %while.cond.preheader ], [ %dec38, %cond.false11.while.body_crit_edge ]
  %dec38 = add i32 %dec38.in, -1
  %call.i = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %2 = ptrtoint ptr %vf_mailbox1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vf_mailbox1.i, align 4
  %4 = and i32 %call.i, 176
  %or4.i = or i32 %3, %4
  store i32 %or4.i, ptr %vf_mailbox1.i, align 4
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %while.body.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !15

while.body.ixgbe_write_reg.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body4.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %call.i, %3
  %or = or i32 %or.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %6, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #5, !srcloc !17
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %while.body.ixgbe_write_reg.exit_crit_edge
  %call.i32 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef 764) #5
  %8 = ptrtoint ptr %vf_mailbox1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vf_mailbox1.i, align 4
  %or.i34 = or i32 %9, %call.i32
  %10 = and i32 %call.i32, 176
  %or4.i35 = or i32 %9, %10
  store i32 %or4.i35, ptr %vf_mailbox1.i, align 4
  %and = and i32 %or.i34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %cond.false11, label %ixgbe_write_reg.exit.cleanup_crit_edge

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false11:                                     ; preds = %ixgbe_write_reg.exit
  %11 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  %tobool3.not = icmp eq i32 %dec38, 0
  br i1 %tobool3.not, label %cond.false11.cleanup_crit_edge, label %cond.false11.while.body_crit_edge

cond.false11.while.body_crit_edge:                ; preds = %cond.false11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cond.false11.cleanup_crit_edge:                   ; preds = %cond.false11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %cond.false11.cleanup_crit_edge, %ixgbe_write_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %entry.cleanup_crit_edge ], [ 0, %ixgbe_write_reg.exit.cleanup_crit_edge ], [ -6, %cond.false11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ixgbevf_mbx_ops, !1, !"ixgbevf_mbx_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbevf/mbx.c", i32 489, i32 35}
!2 = !{ptr @ixgbevf_mbx_ops_legacy, !3, !"ixgbevf_mbx_ops_legacy", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbevf/mbx.c", i32 499, i32 35}
!4 = !{ptr @ixgbevf_hv_mbx_ops, !5, !"ixgbevf_hv_mbx_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbevf/mbx.c", i32 516, i32 35}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156266707}
!17 = !{i64 5000365}
