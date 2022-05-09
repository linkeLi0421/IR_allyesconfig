; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 4094]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 178, i64 182]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 4094]
@__sancov_gen_cov_switch_values.3 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_ConfigRFReg_8723B(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %Addr, i32 noundef %Data, i32 noundef %RF_PATH, i32 noundef %RegAddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %Addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %Addr, label %if.else [
    i32 254, label %entry.if.then_crit_edge
    i32 4094, label %entry.if.then_crit_edge67
  ]

entry.if.then_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge67
  tail call void @msleep(i32 noundef 50) #2
  br label %if.end37

if.else:                                          ; preds = %entry
  %1 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %2, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #2
  %4 = zext i32 %Addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %Addr, label %if.else.if.end37_crit_edge [
    i32 182, label %if.then3
    i32 178, label %if.then16
  ]

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

if.then3:                                         ; preds = %if.else
  %5 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pDM_Odm, align 8
  %call = tail call i32 @rtw_hal_read_rfreg(ptr noundef %6, i32 noundef %RF_PATH, i32 noundef 182, i32 noundef -1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #2
  %cmp6.not.unshifted = xor i32 %call, %Data
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp6.not.unshifted)
  %cmp6.not = icmp ult i32 %cmp6.not.unshifted, 256
  br i1 %cmp6.not, label %if.then3.if.end37_crit_edge, label %while.body

if.then3.if.end37_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

while.body:                                       ; preds = %if.then3
  %8 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %9, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #2
  %11 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pDM_Odm, align 8
  %call9 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %12, i32 noundef %RF_PATH, i32 noundef 182, i32 noundef -1) #2
  %cmp6.not.unshifted.1 = xor i32 %call9, %Data
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp6.not.unshifted.1)
  %cmp6.not.1 = icmp ult i32 %cmp6.not.unshifted.1, 256
  br i1 %cmp6.not.1, label %while.body.if.end37_crit_edge, label %while.body.1

while.body.if.end37_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

while.body.1:                                     ; preds = %while.body
  %13 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %14, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #2
  %16 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pDM_Odm, align 8
  %call9.1 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %17, i32 noundef %RF_PATH, i32 noundef 182, i32 noundef -1) #2
  %cmp6.not.unshifted.2 = xor i32 %call9.1, %Data
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp6.not.unshifted.2)
  %cmp6.not.2 = icmp ult i32 %cmp6.not.unshifted.2, 256
  br i1 %cmp6.not.2, label %while.body.1.if.end37_crit_edge, label %while.body.2

while.body.1.if.end37_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

while.body.2:                                     ; preds = %while.body.1
  %18 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %19, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #2
  %21 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pDM_Odm, align 8
  %call9.2 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %22, i32 noundef %RF_PATH, i32 noundef 182, i32 noundef -1) #2
  %cmp6.not.unshifted.3 = xor i32 %call9.2, %Data
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp6.not.unshifted.3)
  %cmp6.not.3 = icmp ult i32 %cmp6.not.unshifted.3, 256
  br i1 %cmp6.not.3, label %while.body.2.if.end37_crit_edge, label %while.body.3

while.body.2.if.end37_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

while.body.3:                                     ; preds = %while.body.2
  %23 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %24, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #2
  %26 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pDM_Odm, align 8
  %call9.3 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %27, i32 noundef %RF_PATH, i32 noundef 182, i32 noundef -1) #2
  %cmp6.not.unshifted.4 = xor i32 %call9.3, %Data
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp6.not.unshifted.4)
  %cmp6.not.4 = icmp ult i32 %cmp6.not.unshifted.4, 256
  br i1 %cmp6.not.4, label %while.body.3.if.end37_crit_edge, label %while.body.4

while.body.3.if.end37_crit_edge:                  ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

while.body.4:                                     ; preds = %while.body.3
  %28 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %29, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #2
  %31 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pDM_Odm, align 8
  %call9.4 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %32, i32 noundef %RF_PATH, i32 noundef 182, i32 noundef -1) #2
  %cmp6.not.unshifted.5 = xor i32 %call9.4, %Data
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp6.not.unshifted.5)
  %cmp6.not.5 = icmp ult i32 %cmp6.not.unshifted.5, 256
  br i1 %cmp6.not.5, label %while.body.4.if.end37_crit_edge, label %while.body.5

while.body.4.if.end37_crit_edge:                  ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #4
  %33 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %34, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #2
  %36 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pDM_Odm, align 8
  %call9.5 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %37, i32 noundef %RF_PATH, i32 noundef 182, i32 noundef -1) #2
  br label %if.end37

if.then16:                                        ; preds = %if.else
  %38 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pDM_Odm, align 8
  %call20 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %39, i32 noundef %RF_PATH, i32 noundef 178, i32 noundef -1) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #2
  br label %while.cond21

while.cond21:                                     ; preds = %while.body24.while.cond21_crit_edge, %if.then16
  %getvalue17.0 = phi i32 [ %call20, %if.then16 ], [ %call29, %while.body24.while.cond21_crit_edge ]
  %count18.0 = phi i8 [ 0, %if.then16 ], [ %inc25, %while.body24.while.cond21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %getvalue17.0, i32 %Data)
  %cmp22.not = icmp eq i32 %getvalue17.0, %Data
  br i1 %cmp22.not, label %while.cond21.if.end37_crit_edge, label %while.body24

while.cond21.if.end37_crit_edge:                  ; preds = %while.cond21
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

while.body24:                                     ; preds = %while.cond21
  %inc25 = add nuw nsw i8 %count18.0, 1
  %41 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %42, i32 noundef %RF_PATH, i32 noundef %RegAddr, i32 noundef 1048575, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #2
  %44 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %45, i32 noundef %RF_PATH, i32 noundef 24, i32 noundef 1048575, i32 noundef 64519) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #2
  %47 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pDM_Odm, align 8
  %call29 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %48, i32 noundef %RF_PATH, i32 noundef 178, i32 noundef -1) #2
  %cmp31 = icmp ugt i8 %count18.0, 4
  br i1 %cmp31, label %while.body24.if.end37_crit_edge, label %while.body24.while.cond21_crit_edge

while.body24.while.cond21_crit_edge:              ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond21

while.body24.if.end37_crit_edge:                  ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end37

if.end37:                                         ; preds = %while.body24.if.end37_crit_edge, %while.cond21.if.end37_crit_edge, %while.body.5, %while.body.4.if.end37_crit_edge, %while.body.3.if.end37_crit_edge, %while.body.2.if.end37_crit_edge, %while.body.1.if.end37_crit_edge, %while.body.if.end37_crit_edge, %if.then3.if.end37_crit_edge, %if.else.if.end37_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_ConfigRF_RadioA_8723B(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %Addr, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @odm_ConfigRFReg_8723B(ptr noundef %pDM_Odm, i32 noundef %Addr, i32 noundef %Data, i32 noundef 0, i32 noundef %Addr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_ConfigMAC_8723B(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %Addr, i8 noundef zeroext %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %call = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef %Addr, i8 noundef zeroext %Data) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_ConfigBB_AGC_8723B(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %Addr, i32 noundef %Bitmask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %1, i32 noundef %Addr, i32 noundef %Bitmask, i32 noundef %Data) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_ConfigBB_PHY_REG_PG_8723B(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %RfPath, i32 noundef %Addr, i32 noundef %Bitmask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %Addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %Addr, label %if.else [
    i32 254, label %entry.if.then_crit_edge
    i32 4094, label %entry.if.then_crit_edge4
  ]

entry.if.then_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge4
  tail call void @msleep(i32 noundef 50) #2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %1 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pDM_Odm, align 8
  tail call void @PHY_StoreTxPowerByRate(ptr noundef %2, i32 noundef %RfPath, i32 noundef %Addr, i32 noundef %Bitmask, i32 noundef %Data) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_StoreTxPowerByRate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_ConfigBB_PHY_8723B(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %Addr, i32 noundef %Bitmask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %Addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %Addr, label %if.else15 [
    i32 254, label %if.then
    i32 253, label %while.body.preheader
    i32 252, label %if.then5
    i32 251, label %if.then8
    i32 250, label %if.then11
    i32 249, label %if.then14
  ]

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #2
  br label %if.end20

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @msleep(i32 noundef 50) #2
  br label %if.end20

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #2
  br label %if.end20

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #2
  br label %if.end20

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #2
  br label %if.end20

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #2
  br label %if.end20

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %11, i32 noundef %Addr, i32 noundef %Bitmask, i32 noundef %Data) #2
  br label %if.end20

if.end20:                                         ; preds = %if.else15, %if.then14, %if.then11, %if.then8, %if.then5, %if.then, %while.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_ConfigBB_TXPWR_LMT_8723B(ptr nocapture noundef readonly %pDM_Odm, ptr noundef %Regulation, ptr noundef %Bandwidth, ptr noundef %RateSection, ptr noundef %RfPath, ptr noundef %Channel, ptr noundef %PowerLimit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  tail call void @PHY_SetTxPowerLimit(ptr noundef %1, ptr noundef %Regulation, ptr noundef %Bandwidth, ptr noundef %RateSection, ptr noundef %RfPath, ptr noundef %Channel, ptr noundef %PowerLimit) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetTxPowerLimit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
