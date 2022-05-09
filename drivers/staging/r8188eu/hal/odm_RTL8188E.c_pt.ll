; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/odm_RTL8188E.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/odm_RTL8188E.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.odm_dm_struct = type { ptr, i8, i8, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x ptr], i16, [32 x %struct.odm_ra_info], %struct.odm_phy_dbg_info, %struct.fast_ant_train, %struct.rtw_dig, %struct.rtl_ps, %struct.false_alarm_stats, %struct.sw_ant_switch, %struct.edca_turbo, i8, %struct.odm_rate_adapt, %struct.odm_rf_cal, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_ra_info = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [5 x i16], i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_phy_dbg_info = type { [3 x i8], i64, i64, i64, [3 x i32] }
%struct.fast_ant_train = type { i8, i8, i8, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8 }
%struct.rtw_dig = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32 }
%struct.rtl_ps = type { i8, i8, i8, i32, i32, i32, i32 }
%struct.false_alarm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sw_ant_switch = type { i8, i8, i8 }
%struct.edca_turbo = type { i8, i8, i32 }
%struct.odm_rate_adapt = type { i8, i8, i8, i32 }
%struct.odm_rf_cal = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [2 x i8], i8, [8 x i8], i8, %struct.ijk_matrix_regs_set, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [2 x i32]], i8, i8, i8, i8, i8 }
%struct.ijk_matrix_regs_set = type { i8, [1 x [8 x i32]] }

@ODM_UpdateRxIdleAnt_88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016RxIdleAnt=AUX_ANT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ODM_UpdateRxIdleAnt_88E\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/r8188eu/hal/odm_RTL8188E.c\00", [53 x i8] zeroinitializer }, align 32
@ODM_UpdateRxIdleAnt_88E._entry_ptr = internal global ptr @ODM_UpdateRxIdleAnt_88E._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [46 x i8] c"../drivers/staging/r8188eu/hal/odm_RTL8188E.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 135, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @ODM_UpdateRxIdleAnt_88E._entry, ptr @ODM_UpdateRxIdleAnt_88E._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_UpdateRxIdleAnt_88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_AntennaDiversityInit_88E(ptr nocapture noundef %dm_odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %0 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %AntDivType, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end14_crit_edge [
    i8 2, label %if.then
    i8 1, label %if.then6
    i8 4, label %if.then12
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dm_odm, align 8
  %call.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %4, i32 noundef 76, i32 noundef -1) #5
  %or.i = or i32 %call.i, 41943040
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 76, i32 noundef -1, i32 noundef %or.i) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 2860, i32 noundef 4194304, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 2860, i32 noundef -2147483648, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 3236, i32 noundef -1, i32 noundef 160) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 2676, i32 noundef 128, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 2572, i32 noundef 16, i32 noundef 1) #5
  tail call void @ODM_UpdateRxIdleAnt_88E(ptr noundef %dm_odm, i8 noundef zeroext 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %4, i32 noundef 2324, i32 noundef 65535, i32 noundef 513) #5
  br label %if.end14

if.then6:                                         ; preds = %entry
  %5 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dm_odm, align 8
  %call.i20 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %6, i32 noundef 76, i32 noundef -1) #5
  %or.i21 = or i32 %call.i20, 41943040
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 76, i32 noundef -1, i32 noundef %or.i21) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2860, i32 noundef 4194304, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2860, i32 noundef -2147483648, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 3236, i32 noundef -1, i32 noundef 160) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2676, i32 noundef 128, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2572, i32 noundef 16, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2060, i32 noundef 2097152, i32 noundef 0) #5
  tail call void @ODM_UpdateRxIdleAnt_88E(ptr noundef %dm_odm, i8 noundef zeroext 0) #5
  %bIsMPChip.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 15
  %7 = ptrtoint ptr %bIsMPChip.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bIsMPChip.i, align 2, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2136, i32 noundef 1792, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2136, i32 noundef 14336, i32 noundef 2) #5
  br label %if.end14

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %6, i32 noundef 2324, i32 noundef -1, i32 noundef 513) #5
  br label %if.end14

if.then12:                                        ; preds = %entry
  %9 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dm_odm, align 8
  %call.i22 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %10, i32 noundef 76, i32 noundef -1) #5
  %or.i23 = or i32 %call.i22, 41943040
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 76, i32 noundef -1, i32 noundef %or.i23) #5
  %call1.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %10, i32 noundef 1972, i32 noundef -1) #5
  %or2.i = or i32 %call1.i, 196608
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 1972, i32 noundef -1, i32 noundef %or2.i) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 1972, i32 noundef 65535, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 1968, i32 noundef -1, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2860, i32 noundef 4194304, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2860, i32 noundef -2147483648, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 3236, i32 noundef -1, i32 noundef 160) #5
  %bIsMPChip.i24 = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 15
  %11 = ptrtoint ptr %bIsMPChip.i24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bIsMPChip.i24, align 2, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i25 = icmp eq i8 %12, 0
  br i1 %tobool.not.i25, label %if.then.i26, label %if.else.i27

if.then.i26:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2136, i32 noundef 1792, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2136, i32 noundef 14336, i32 noundef 2) #5
  br label %odm_FastAntTrainingInit.exit

if.else.i27:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2324, i32 noundef 255, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2324, i32 noundef 65280, i32 noundef 2) #5
  br label %odm_FastAntTrainingInit.exit

odm_FastAntTrainingInit.exit:                     ; preds = %if.else.i27, %if.then.i26
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2060, i32 noundef 2097152, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2148, i32 noundef 56, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2148, i32 noundef 448, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 2148, i32 noundef 7, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %10, i32 noundef 3152, i32 noundef 128, i32 noundef 1) #5
  br label %if.end14

if.end14:                                         ; preds = %odm_FastAntTrainingInit.exit, %if.else.i, %if.then.i, %if.then, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_UpdateRxIdleAnt_88E(ptr nocapture noundef %dm_odm, i8 noundef zeroext %Ant) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_odm, align 8
  %RxIdleAnt = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 10
  %2 = ptrtoint ptr %RxIdleAnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RxIdleAnt, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %Ant)
  %cmp.not = icmp eq i8 %3, %Ant
  br i1 %cmp.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %Ant)
  %cmp4 = icmp eq i8 %Ant, 0
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %4 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %AntDivType, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp8 = icmp eq i8 %5, 1
  %not.cmp8 = xor i1 %cmp8, true
  %cmp8.not.cmp8 = select i1 %cmp4, i1 %cmp8, i1 %not.cmp8
  %not.cmp8.cmp8 = select i1 %cmp4, i1 %not.cmp8, i1 %cmp8
  %OptionalAnt.0 = zext i1 %not.cmp8.cmp8 to i32
  %DefaultAnt.0 = zext i1 %cmp8.not.cmp8 to i32
  %AntDivType25 = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %6 = ptrtoint ptr %AntDivType25 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %AntDivType25, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %7, label %if.then.if.end38_crit_edge [
    i8 1, label %if.then29
    i8 2, label %if.then35
  ]

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then29:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2148, i32 noundef 56, i32 noundef %DefaultAnt.0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2148, i32 noundef 448, i32 noundef %OptionalAnt.0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2144, i32 noundef 28672, i32 noundef %DefaultAnt.0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 1752, i32 noundef 192, i32 noundef %DefaultAnt.0) #5
  br label %if.end38

if.then35:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2148, i32 noundef 56, i32 noundef %DefaultAnt.0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2148, i32 noundef 448, i32 noundef %OptionalAnt.0) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then29, %if.then.if.end38_crit_edge, %entry.if.end38_crit_edge
  %9 = ptrtoint ptr %RxIdleAnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %Ant, ptr %RxIdleAnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %Ant)
  %cmp41.not = icmp eq i8 %Ant, 0
  br i1 %cmp41.not, label %if.end38.if.end44_crit_edge, label %do.end

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.end38.if.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetBBReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_SetTxAntByTxInfo_88E(ptr nocapture noundef readonly %dm_odm, ptr nocapture noundef %pDesc, i8 noundef zeroext %macId) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %0 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %AntDivType, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 4, label %entry.if.then_crit_edge53
  ]

entry.if.then_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge53
  %add.ptr = getelementptr i8, ptr %pDesc, i32 8
  %idxprom = zext i8 %macId to i32
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %arrayidx = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 3, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %and.i = and i32 %4, -2
  %7 = and i8 %6, 1
  %and528.i.i = zext i8 %7 to i32
  %or.i = or i32 %and.i, %and528.i.i
  store i32 %or.i, ptr %add.ptr, align 4
  %arrayidx9 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 4, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %and.i29 = and i32 %or.i, -3
  %10 = shl i8 %9, 1
  %11 = and i8 %10, 2
  %mul.i.i32 = zext i8 %11 to i32
  %or.i34 = or i32 %and.i29, %mul.i.i32
  store i32 %or.i34, ptr %add.ptr, align 4
  %add.ptr11 = getelementptr i8, ptr %pDesc, i32 28
  %12 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr11, align 4
  %arrayidx13 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 5, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  %and.i42 = and i32 %13, -33
  %16 = shl i8 %15, 5
  %17 = and i8 %16, 32
  %mul.i.i45 = zext i8 %17 to i32
  %or.i47 = or i32 %and.i42, %mul.i.i45
  store i32 %or.i47, ptr %add.ptr11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ODM_AntselStatistics_88E(ptr nocapture noundef %dm_odm, i8 noundef zeroext %antsel_tr_mux, i32 noundef %MacId, i8 noundef zeroext %RxPWDBAll) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %0 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %AntDivType, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %1, label %entry.if.end40_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then18
  ]

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %antsel_tr_mux)
  %cmp3 = icmp eq i8 %antsel_tr_mux, 1
  %conv6 = zext i8 %RxPWDBAll to i32
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 6, i32 %MacId
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %conv6
  store i32 %add, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 8, i32 %MacId
  br label %if.end40.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 7, i32 %MacId
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %6, %conv6
  store i32 %add10, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 9, i32 %MacId
  br label %if.end40.sink.split

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %antsel_tr_mux)
  %cmp20 = icmp eq i8 %antsel_tr_mux, 0
  %conv23 = zext i8 %RxPWDBAll to i32
  br i1 %cmp20, label %if.then22, label %if.else30

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 6, i32 %MacId
  %7 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %8, %conv23
  store i32 %add26, ptr %arrayidx25, align 4
  %arrayidx28 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 8, i32 %MacId
  br label %if.end40.sink.split

if.else30:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx33 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 7, i32 %MacId
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %10, %conv23
  store i32 %add34, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 9, i32 %MacId
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.else30, %if.then22, %if.else, %if.then5
  %arrayidx36.sink61 = phi ptr [ %arrayidx36, %if.else30 ], [ %arrayidx28, %if.then22 ], [ %arrayidx7, %if.then5 ], [ %arrayidx11, %if.else ]
  %11 = ptrtoint ptr %arrayidx36.sink61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx36.sink61, align 4
  %inc37 = add i32 %12, 1
  store i32 %inc37, ptr %arrayidx36.sink61, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_AntennaDiversity_88E(ptr noundef %dm_odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_odm, align 8
  %SupportAbility = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 4
  %2 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SupportAbility, align 8
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bLinked = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 13
  %4 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bLinked, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %bBecomeLinked = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 11
  %6 = ptrtoint ptr %bBecomeLinked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bBecomeLinked, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 3152, i32 noundef 128, i32 noundef 0) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2560, i32 noundef 32768, i32 noundef 0) #5
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %8 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %AntDivType, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then6, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2060, i32 noundef 2097152, i32 noundef 0) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4.if.end7_crit_edge
  %10 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bLinked, align 4, !range !15
  %12 = ptrtoint ptr %bBecomeLinked to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bBecomeLinked, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool3.not, label %if.then14, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then14:                                        ; preds = %if.else
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 3152, i32 noundef 128, i32 noundef 1) #5
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2560, i32 noundef 32768, i32 noundef 1) #5
  %AntDivType15 = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %13 = ptrtoint ptr %AntDivType15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %AntDivType15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp17 = icmp eq i8 %14, 1
  br i1 %cmp17, label %if.then19, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2060, i32 noundef 2097152, i32 noundef 1) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then14.if.end20_crit_edge
  %15 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bLinked, align 4, !range !15
  %17 = ptrtoint ptr %bBecomeLinked to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %bBecomeLinked, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %if.else.if.end26_crit_edge
  %AntDivType27 = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %18 = ptrtoint ptr %AntDivType27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %AntDivType27, align 8
  %.off = add i8 %19, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then35, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then35:                                        ; preds = %if.end26
  %RxIdleAnt33.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end66.i.for.body.i_crit_edge, %if.then35
  %RxIdleAnt.0133.i = phi i8 [ 0, %if.then35 ], [ %RxIdleAnt.2.i, %if.end66.i.for.body.i_crit_edge ]
  %MaxRSSI.0132.i = phi i32 [ 0, %if.then35 ], [ %MaxRSSI.2.i, %if.end66.i.for.body.i_crit_edge ]
  %AntDivMaxRSSI.0131.i = phi i32 [ 0, %if.then35 ], [ %AntDivMaxRSSI.2.i, %if.end66.i.for.body.i_crit_edge ]
  %MinRSSI.0130.i = phi i32 [ 255, %if.then35 ], [ %MinRSSI.2.i, %if.end66.i.for.body.i_crit_edge ]
  %i.0128.i = phi i32 [ 0, %if.then35 ], [ %inc.i, %if.end66.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 17, i32 %i.0128.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.i.if.end66.i_crit_edge, label %if.then.i

for.body.i.if.end66.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx1.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 8, i32 %i.0128.i
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.not.i = icmp eq i32 %23, 0
  br i1 %cmp2.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 6, i32 %i.0128.i
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3.i, align 4
  %div.i = udiv i32 %25, %23
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %if.then.i.cond.end.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 9, i32 %i.0128.i
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp7.not.i = icmp eq i32 %27, 0
  br i1 %cmp7.not.i, label %cond.end.i.cond.end14.i_crit_edge, label %cond.true8.i

cond.end.i.cond.end14.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end14.i

cond.true8.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 7, i32 %i.0128.i
  %28 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx9.i, align 4
  %div12.i = udiv i32 %29, %27
  br label %cond.end14.i

cond.end14.i:                                     ; preds = %cond.true8.i, %cond.end.i.cond.end14.i_crit_edge
  %cond15.i = phi i32 [ %div12.i, %cond.true8.i ], [ 0, %cond.end.i.cond.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %cond15.i)
  %cmp16.not.i = icmp ult i32 %cond.i, %cond15.i
  %conv.i = zext i1 %cmp16.not.i to i8
  %30 = tail call i32 @llvm.umax.i32(i32 %cond.i, i32 %cond15.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %AntDivMaxRSSI.0131.i)
  %cmp24.i = icmp ugt i32 %30, %AntDivMaxRSSI.0131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %30)
  %cmp26.i = icmp ult i32 %30, 40
  %or.cond.i = and i1 %cmp24.i, %cmp26.i
  %AntDivMaxRSSI.1.i = select i1 %or.cond.i, i32 %30, i32 %AntDivMaxRSSI.0131.i
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 %MaxRSSI.0132.i) #5
  %32 = ptrtoint ptr %RxIdleAnt33.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %RxIdleAnt33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp35.i = icmp eq i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp38.i = icmp eq i32 %cond.i, 0
  %or.cond126.i = select i1 %cmp35.i, i1 %cmp38.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp43.i = icmp eq i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond15.i)
  %cmp46.i = icmp eq i32 %cond15.i, 0
  %or.cond127.i = select i1 %cmp43.i, i1 %cmp46.i, i1 false
  %spec.select.i = select i1 %or.cond127.i, i32 %cond.i, i32 %cond15.i
  %Main_RSSI.0.i = select i1 %or.cond126.i, i32 %cond15.i, i32 %cond.i
  %Aux_RSSI.0.i = select i1 %or.cond126.i, i32 %cond15.i, i32 %spec.select.i
  %34 = tail call i32 @llvm.umin.i32(i32 %Main_RSSI.0.i, i32 %Aux_RSSI.0.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %MinRSSI.0130.i)
  %cmp57.i = icmp ult i32 %34, %MinRSSI.0130.i
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %MinRSSI.0130.i) #5
  %RxIdleAnt.1.i = select i1 %cmp57.i, i8 %conv.i, i8 %RxIdleAnt.0133.i
  %36 = ptrtoint ptr %AntDivType27 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %AntDivType27, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp62.i = icmp eq i8 %37, 1
  br i1 %cmp62.i, label %if.then64.i, label %cond.end14.i.if.end66.i_crit_edge

cond.end14.i.if.end66.i_crit_edge:                ; preds = %cond.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.i

if.then64.i:                                      ; preds = %cond.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %cmp.i.i = xor i1 %cmp16.not.i, true
  %..i.i = zext i1 %cmp.i.i to i8
  %arrayidx.i.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 3, i32 %i.0128.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %..i.i, ptr %arrayidx.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 4, i32 %i.0128.i
  %39 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %arrayidx12.i.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 5, i32 %i.0128.i
  %40 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx12.i.i, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then64.i, %cond.end14.i.if.end66.i_crit_edge, %for.body.i.if.end66.i_crit_edge
  %MinRSSI.2.i = phi i32 [ %35, %if.then64.i ], [ %35, %cond.end14.i.if.end66.i_crit_edge ], [ %MinRSSI.0130.i, %for.body.i.if.end66.i_crit_edge ]
  %AntDivMaxRSSI.2.i = phi i32 [ %AntDivMaxRSSI.1.i, %if.then64.i ], [ %AntDivMaxRSSI.1.i, %cond.end14.i.if.end66.i_crit_edge ], [ %AntDivMaxRSSI.0131.i, %for.body.i.if.end66.i_crit_edge ]
  %MaxRSSI.2.i = phi i32 [ %31, %if.then64.i ], [ %31, %cond.end14.i.if.end66.i_crit_edge ], [ %MaxRSSI.0132.i, %for.body.i.if.end66.i_crit_edge ]
  %RxIdleAnt.2.i = phi i8 [ %RxIdleAnt.1.i, %if.then64.i ], [ %RxIdleAnt.1.i, %cond.end14.i.if.end66.i_crit_edge ], [ %RxIdleAnt.0133.i, %for.body.i.if.end66.i_crit_edge ]
  %arrayidx68.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 6, i32 %i.0128.i
  %41 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx68.i, align 4
  %arrayidx70.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 7, i32 %i.0128.i
  %42 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx70.i, align 4
  %arrayidx72.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 8, i32 %i.0128.i
  %43 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx72.i, align 4
  %arrayidx74.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 9, i32 %i.0128.i
  %44 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx74.i, align 4
  %inc.i = add nuw nsw i32 %i.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %odm_HWAntDiv.exit, label %if.end66.i.for.body.i_crit_edge

if.end66.i.for.body.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

odm_HWAntDiv.exit:                                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ODM_UpdateRxIdleAnt_88E(ptr noundef %dm_odm, i8 noundef zeroext %RxIdleAnt.2.i) #5
  %AntDiv_RSSI_max.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 22, i32 11
  %45 = ptrtoint ptr %AntDiv_RSSI_max.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %AntDivMaxRSSI.2.i, ptr %AntDiv_RSSI_max.i, align 4
  %RSSI_max.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 22, i32 12
  %46 = ptrtoint ptr %RSSI_max.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %MaxRSSI.2.i, ptr %RSSI_max.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %odm_HWAntDiv.exit, %if.end26.cleanup_crit_edge, %if.end7, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_PHY_QueryBBReg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/odm_RTL8188E.c", i32 135, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ODM_UpdateRxIdleAnt_88E._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ODM_UpdateRxIdleAnt_88E._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
