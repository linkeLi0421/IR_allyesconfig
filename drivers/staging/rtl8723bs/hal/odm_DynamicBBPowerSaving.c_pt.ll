; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_odm_t = type { ptr, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i8, i32, i8, i64, i64, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, %struct.odm_noise_monitor, [32 x ptr], i8, %struct.odm_phy_dbg_info, ptr, %struct.fat_t, %struct.dig_t, %struct.ps_t, %struct.dynamic_primary_CCA, %struct.rxhp_t, %struct.ra_t, %struct.false_ALARM_STATISTICS, %struct.false_ALARM_STATISTICS, %struct.swat_t, i8, %struct.cfo_tracking, %struct.edca_t, i32, %struct.pathdiv_t, ptr, ptr, ptr, i8, %struct.timer_list, i8, i8, i8, i8, %struct.timer_list, i8, %struct.odm_rate_adaptive, %struct.ant_detected_info, %struct.odm_rf_cal_t, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.odm_noise_monitor = type { [4 x i8], i16 }
%struct.odm_phy_dbg_info = type { [4 x i8], i32, i32, i32, i8, [4 x i32] }
%struct.fat_t = type { [6 x i8], i8, i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dig_t = type { i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, ptr }
%struct.ps_t = type { i8, i8, i8, i8, i32, i8, i32, i32, i32, i32 }
%struct.dynamic_primary_CCA = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rxhp_t = type { i8, i8, [80 x i8], i8, i8, i8, i8, i8, i8, i8, %struct.timer_list }
%struct.ra_t = type { i8 }
%struct.false_ALARM_STATISTICS = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.swat_t = type { i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.timer_list, %struct.timer_list, i32, i8 }
%struct.cfo_tracking = type { i8, i8, i8, i8, i8, [2 x i32], i32, i32, i32, i8, i8 }
%struct.edca_t = type { i8, i8, i32 }
%struct.pathdiv_t = type { i8, [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.odm_rate_adaptive = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ant_detected_info = type { i8, i32, i32, i32 }
%struct.odm_rf_cal_t = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [8 x i8], i8, [14 x %struct.iqk_matrix_regs_setting], i8, i8, i8, i8, i8, [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [3 x [2 x i32]]], [2 x [2 x [2 x i32]]], [2 x [2 x i32]], i8, i8, i8, i8, i8, i8, [2 x i32] }
%struct.iqk_matrix_regs_setting = type { i8, [3 x [8 x i32]], [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @odm_DynamicBBPowerSavingInit(ptr nocapture noundef writeonly %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_PSTable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132
  %Rssi_val_min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 4
  %0 = ptrtoint ptr %DM_PSTable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33686018, ptr %DM_PSTable, align 4
  %1 = ptrtoint ptr %Rssi_val_min to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %Rssi_val_min, align 4
  %initialize = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 5
  %2 = ptrtoint ptr %initialize to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %initialize, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_RF_Saving(ptr noundef %pDM_VOID, i8 noundef zeroext %bForceInNormal) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %PatchID = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 28
  %0 = ptrtoint ptr %PatchID to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %PatchID, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %1)
  %cmp = icmp eq i8 %1, 40
  %spec.select = select i1 %cmp, i32 50, i32 30
  %spec.select129 = select i1 %cmp, i32 45, i32 25
  %initialize = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 5
  %2 = ptrtoint ptr %initialize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialize, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp eq i8 %3, 0
  br i1 %cmp3, label %if.then5, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pDM_VOID, align 8
  %call = tail call i32 @rtw_hal_read_bbreg(ptr noundef %5, i32 noundef 2164, i32 noundef -1) #3
  %and = lshr i32 %call, 14
  %shr = and i32 %and, 115
  %Reg874 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 6
  %6 = ptrtoint ptr %Reg874 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %Reg874, align 4
  %7 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pDM_VOID, align 8
  %call7 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %8, i32 noundef 3184, i32 noundef -1) #3
  %and8 = lshr i32 %call7, 3
  %shr9 = and i32 %and8, 1
  %RegC70 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 7
  %9 = ptrtoint ptr %RegC70 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr9, ptr %RegC70, align 4
  %10 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pDM_VOID, align 8
  %call11 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %11, i32 noundef 2140, i32 noundef -1) #3
  %shr13 = lshr i32 %call11, 24
  %Reg85C = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 8
  %12 = ptrtoint ptr %Reg85C to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr13, ptr %Reg85C, align 4
  %13 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pDM_VOID, align 8
  %call15 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %14, i32 noundef 2676, i32 noundef -1) #3
  %and16 = lshr i32 %call15, 12
  %shr17 = and i32 %and16, 15
  %RegA74 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 9
  %15 = ptrtoint ptr %RegA74 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr17, ptr %RegA74, align 4
  %16 = ptrtoint ptr %initialize to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %initialize, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %entry.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bForceInNormal)
  %tobool.not = icmp eq i8 %bForceInNormal, 0
  br i1 %tobool.not, label %if.then20, label %if.else52

if.then20:                                        ; preds = %if.end19
  %RSSI_Min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 64
  %17 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %RSSI_Min, align 1
  %conv21 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp22.not = icmp eq i8 %18, -1
  br i1 %cmp22.not, label %if.else49, label %if.then24

if.then24:                                        ; preds = %if.then20
  %PreRFState = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 2
  %19 = ptrtoint ptr %PreRFState to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %PreRFState, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp26 = icmp eq i8 %20, 1
  br i1 %cmp26, label %if.then28, label %if.else37

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv21)
  %cmp32.not = icmp ugt i32 %spec.select, %conv21
  %CurRFState35 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 3
  br i1 %cmp32.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %CurRFState35 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %CurRFState35, align 1
  br label %if.end54

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %CurRFState35 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %CurRFState35, align 1
  br label %if.end54

if.else37:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select129, i32 %conv21)
  %cmp41.not = icmp ult i32 %spec.select129, %conv21
  %CurRFState46 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 3
  br i1 %cmp41.not, label %if.else45, label %if.then43

if.then43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %CurRFState46 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %CurRFState46, align 1
  br label %if.end54

if.else45:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %CurRFState46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %CurRFState46, align 1
  br label %if.end54

if.else49:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  %CurRFState50 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 3
  %25 = ptrtoint ptr %CurRFState50 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %CurRFState50, align 1
  br label %if.end54

if.else52:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %CurRFState53 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 3
  %26 = ptrtoint ptr %CurRFState53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %CurRFState53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.else49, %if.else45, %if.then43, %if.else, %if.then34
  %PreRFState55 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 2
  %27 = ptrtoint ptr %PreRFState55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %PreRFState55, align 2
  %CurRFState57 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 3
  %29 = ptrtoint ptr %CurRFState57 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %CurRFState57, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp59.not = icmp eq i8 %28, %30
  br i1 %cmp59.not, label %if.end54.if.end87_crit_edge, label %if.then61

if.end54.if.end87_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp64 = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pDM_VOID, align 8
  br i1 %cmp64, label %if.then66, label %if.else74

if.then66:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rtw_hal_write_bbreg(ptr noundef %32, i32 noundef 2164, i32 noundef 1835008, i32 noundef 2) #3
  %33 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %34, i32 noundef 3184, i32 noundef 8, i32 noundef 0) #3
  %35 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %36, i32 noundef 2140, i32 noundef -16777216, i32 noundef 99) #3
  %37 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %38, i32 noundef 2164, i32 noundef 49152, i32 noundef 2) #3
  %39 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %40, i32 noundef 2676, i32 noundef 61440, i32 noundef 3) #3
  %41 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %42, i32 noundef 2072, i32 noundef 268435456, i32 noundef 0) #3
  br label %if.end84

if.else74:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #5
  %Reg87476 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 6
  %43 = ptrtoint ptr %Reg87476 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %Reg87476, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %32, i32 noundef 2164, i32 noundef 1884160, i32 noundef %44) #3
  %45 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pDM_VOID, align 8
  %RegC7078 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 7
  %47 = ptrtoint ptr %RegC7078 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %RegC7078, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %46, i32 noundef 3184, i32 noundef 8, i32 noundef %48) #3
  %49 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pDM_VOID, align 8
  %Reg85C80 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 8
  %51 = ptrtoint ptr %Reg85C80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %Reg85C80, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %50, i32 noundef 2140, i32 noundef -16777216, i32 noundef %52) #3
  %53 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pDM_VOID, align 8
  %RegA7482 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 132, i32 9
  %55 = ptrtoint ptr %RegA7482 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %RegA7482, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %54, i32 noundef 2676, i32 noundef 61440, i32 noundef %56) #3
  br label %if.end84

if.end84:                                         ; preds = %if.else74, %if.then66
  %.sink130 = phi i32 [ 0, %if.else74 ], [ 1, %if.then66 ]
  %57 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %58, i32 noundef 2072, i32 noundef 268435456, i32 noundef %.sink130) #3
  %59 = ptrtoint ptr %CurRFState57 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %CurRFState57, align 1
  %61 = ptrtoint ptr %PreRFState55 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %PreRFState55, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %if.end54.if.end87_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
