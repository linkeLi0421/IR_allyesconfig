; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm_DIG.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm_DIG.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@odm_PauseDIG.bPaused = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 6]
@___asan_gen_ = private constant [43 x i8] c"../drivers/staging/rtl8723bs/hal/odm_DIG.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"odm_PauseDIG.bPaused\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @odm_PauseDIG.bPaused], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @odm_PauseDIG.bPaused to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_NHMCounterStatisticsInit(ptr nocapture noundef readonly %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  %call = tail call i32 @rtw_write16(ptr noundef %1, i32 noundef 2198, i16 noundef zeroext 10000) #7
  %2 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_VOID, align 8
  %call2 = tail call i32 @rtw_write16(ptr noundef %3, i32 noundef 2194, i16 noundef zeroext -1) #7
  %4 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pDM_VOID, align 8
  %call4 = tail call i32 @rtw_write32(ptr noundef %5, i32 noundef 2200, i32 noundef -174) #7
  %6 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pDM_VOID, align 8
  %call6 = tail call i32 @rtw_write32(ptr noundef %7, i32 noundef 2204, i32 noundef -1) #7
  %8 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %9, i32 noundef 3624, i32 noundef 255, i32 noundef 255) #7
  %10 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %11, i32 noundef 2192, i32 noundef 1792, i32 noundef 7) #7
  %12 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %13, i32 noundef 3084, i32 noundef 128, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_NHMCounterStatistics(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  %call.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %1, i32 noundef 2264, i32 noundef -1) #7
  %conv.i = trunc i32 %call.i to i8
  %NHM_cnt_0.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 124
  %2 = ptrtoint ptr %NHM_cnt_0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %NHM_cnt_0.i, align 1
  %3 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %4, i32 noundef 2192, i32 noundef 2, i32 noundef 0) #7
  %5 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %6, i32 noundef 2192, i32 noundef 2, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_GetNHMCounterStatistics(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  %call = tail call i32 @rtw_hal_read_bbreg(ptr noundef %1, i32 noundef 2264, i32 noundef -1) #7
  %conv = trunc i32 %call to i8
  %NHM_cnt_0 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 124
  %2 = ptrtoint ptr %NHM_cnt_0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %NHM_cnt_0, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_NHMCounterStatisticsReset(ptr nocapture noundef readonly %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %1, i32 noundef 2192, i32 noundef 2, i32 noundef 0) #7
  %2 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %3, i32 noundef 2192, i32 noundef 2, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @odm_NHMBBInit(ptr nocapture noundef writeonly %pDM_VOID) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptivity_flag = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 110
  %0 = ptrtoint ptr %adaptivity_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %adaptivity_flag, align 1
  %tolerance_cnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 114
  %1 = ptrtoint ptr %tolerance_cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %tolerance_cnt, align 1
  %NHMCurTxOkcnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 115
  %2 = call ptr @memset(ptr %NHMCurTxOkcnt, i32 0, i32 32)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @odm_NHMBB(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pNumTxBytesUnicast = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 38
  %0 = ptrtoint ptr %pNumTxBytesUnicast to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pNumTxBytesUnicast, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %NHMLastTxOkcnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 117
  %4 = ptrtoint ptr %NHMLastTxOkcnt to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %NHMLastTxOkcnt, align 8
  %sub = sub i64 %3, %5
  %NHMCurTxOkcnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 115
  %6 = ptrtoint ptr %NHMCurTxOkcnt to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sub, ptr %NHMCurTxOkcnt, align 8
  %pNumRxBytesUnicast = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 39
  %7 = ptrtoint ptr %pNumRxBytesUnicast to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pNumRxBytesUnicast, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %NHMLastRxOkcnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 118
  %11 = ptrtoint ptr %NHMLastRxOkcnt to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %NHMLastRxOkcnt, align 8
  %sub1 = sub i64 %10, %12
  %NHMCurRxOkcnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 116
  %13 = ptrtoint ptr %NHMCurRxOkcnt to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %sub1, ptr %NHMCurRxOkcnt, align 8
  %14 = load i64, ptr %1, align 8
  store i64 %14, ptr %NHMLastTxOkcnt, align 8
  %15 = load i64, ptr %8, align 8
  store i64 %15, ptr %NHMLastRxOkcnt, align 8
  %add = add i64 %sub, 1
  %shl = shl i64 %sub1, 2
  %add8 = or i64 %shl, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add8)
  %cmp = icmp ugt i64 %add, %add8
  br i1 %cmp, label %if.then, label %if.else36

if.then:                                          ; preds = %entry
  %NHM_cnt_0 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 124
  %16 = ptrtoint ptr %NHM_cnt_0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %NHM_cnt_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -67, i8 %17)
  %cmp9 = icmp ugt i8 %17, -67
  br i1 %cmp9, label %if.then.if.then14_crit_edge, label %lor.lhs.false

if.then.if.then14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.then
  %adaptivity_flag = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 110
  %18 = ptrtoint ptr %adaptivity_flag to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %adaptivity_flag, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.then.if.then14_crit_edge
  %adaptivity_flag15 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 110
  %20 = ptrtoint ptr %adaptivity_flag15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %adaptivity_flag15, align 1
  %tolerance_cnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 114
  br label %if.end70.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %tolerance_cnt16 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 114
  %21 = ptrtoint ptr %tolerance_cnt16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tolerance_cnt16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp18 = icmp ult i8 %22, 3
  %add23 = add i8 %22, 1
  %storemerge101 = select i1 %cmp18, i8 %add23, i8 4
  %23 = ptrtoint ptr %tolerance_cnt16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge101, ptr %tolerance_cnt16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %storemerge101)
  %cmp30 = icmp ugt i8 %storemerge101, 3
  br i1 %cmp30, label %if.else.if.end70.sink.split_crit_edge, label %if.else.if.end70_crit_edge

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.else.if.end70.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.sink.split

if.else36:                                        ; preds = %entry
  %adaptivity_flag37 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 110
  %24 = ptrtoint ptr %adaptivity_flag37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adaptivity_flag37, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool38.not = icmp eq i8 %25, 0
  br i1 %tobool38.not, label %if.else36.if.else48_crit_edge, label %land.lhs.true

if.else36.if.else48_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else48

land.lhs.true:                                    ; preds = %if.else36
  %NHM_cnt_042 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 124
  %26 = ptrtoint ptr %NHM_cnt_042 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %NHM_cnt_042, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -55, i8 %27)
  %cmp44 = icmp ult i8 %27, -55
  br i1 %cmp44, label %if.then46, label %land.lhs.true.if.else48_crit_edge

land.lhs.true.if.else48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else48

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %tolerance_cnt47 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 114
  br label %if.end70.sink.split

if.else48:                                        ; preds = %land.lhs.true.if.else48_crit_edge, %if.else36.if.else48_crit_edge
  %tolerance_cnt49 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 114
  %28 = ptrtoint ptr %tolerance_cnt49 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tolerance_cnt49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp51 = icmp ult i8 %29, 3
  %add56 = add i8 %29, 1
  %storemerge = select i1 %cmp51, i8 %add56, i8 4
  %30 = ptrtoint ptr %tolerance_cnt49 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge, ptr %tolerance_cnt49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %storemerge)
  %cmp64 = icmp ugt i8 %storemerge, 3
  br i1 %cmp64, label %if.else48.if.end70.sink.split_crit_edge, label %if.else48.if.end70_crit_edge

if.else48.if.end70_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.else48.if.end70.sink.split_crit_edge:          ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.else48.if.end70.sink.split_crit_edge, %if.then46, %if.else.if.end70.sink.split_crit_edge, %if.then14
  %tolerance_cnt47.sink = phi ptr [ %tolerance_cnt47, %if.then46 ], [ %tolerance_cnt, %if.then14 ], [ %adaptivity_flag, %if.else.if.end70.sink.split_crit_edge ], [ %adaptivity_flag37, %if.else48.if.end70.sink.split_crit_edge ]
  %31 = ptrtoint ptr %tolerance_cnt47.sink to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %tolerance_cnt47.sink, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else48.if.end70_crit_edge, %if.else.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_SearchPwdBLowerBound(ptr noundef %pDM_VOID, i8 noundef zeroext %IGI_target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_DigTable.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %0 = ptrtoint ptr %DM_DigTable.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %DM_DigTable.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ODM_Write_DIG.exit_crit_edge

entry.ODM_Write_DIG.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_DIG.exit

if.end.i:                                         ; preds = %entry
  %CurIGValue.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %2 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CurIGValue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 80
  br i1 %cmp.not.i, label %if.end.i.ODM_Write_DIG.exit_crit_edge, label %if.then3.i

if.end.i.ODM_Write_DIG.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_DIG.exit

if.then3.i:                                       ; preds = %if.end.i
  %bPSDInProgress.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %4 = ptrtoint ptr %bPSDInProgress.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bPSDInProgress.i, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not.i = icmp eq i8 %5, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then3.i.if.end13.i_crit_edge

if.then3.i.if.end13.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_range_max.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %6 = ptrtoint ptr %rx_gain_range_max.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_gain_range_max.i, align 1
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 80) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.then3.i.if.end13.i_crit_edge
  %CurrentIGI.addr.0.i = phi i8 [ 80, %if.then3.i.if.end13.i_crit_edge ], [ %8, %if.then5.i ]
  %9 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i = zext i8 %CurrentIGI.addr.0.i to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %10, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i) #7
  %11 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %12, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i) #7
  %13 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %CurrentIGI.addr.0.i, ptr %CurIGValue.i, align 4
  br label %ODM_Write_DIG.exit

ODM_Write_DIG.exit:                               ; preds = %if.end13.i, %if.end.i.ODM_Write_DIG.exit_crit_edge, %entry.ODM_Write_DIG.exit_crit_edge
  %sub = add i8 %IGI_target, -80
  %TH_L2H_ini = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 94
  %14 = ptrtoint ptr %TH_L2H_ini to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %TH_L2H_ini, align 1
  %add = add i8 %sub, %15
  %16 = tail call i8 @llvm.smin.i8(i8 %add, i8 10)
  %TH_EDCCA_HL_diff = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 95
  %17 = ptrtoint ptr %TH_EDCCA_HL_diff to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %TH_EDCCA_HL_diff, align 2
  %sub10 = sub i8 %16, %18
  %19 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pDM_VOID, align 8
  %conv12 = zext i8 %16 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %20, i32 noundef 3148, i32 noundef 255, i32 noundef %conv12) #7
  %21 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pDM_VOID, align 8
  %conv14 = zext i8 %sub10 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %22, i32 noundef 3148, i32 noundef 16711680, i32 noundef %conv14) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  %txEdcca1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 119
  %txEdcca0 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 120
  %TxHangFlg79 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 112
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then47.for.cond.preheader_crit_edge, %ODM_Write_DIG.exit
  %TH_H2L_dmc.0142 = phi i8 [ %sub10, %ODM_Write_DIG.exit ], [ %sub62, %if.then47.for.cond.preheader_crit_edge ]
  %TH_L2H_dmc.0141 = phi i8 [ %16, %ODM_Write_DIG.exit ], [ %38, %if.then47.for.cond.preheader_crit_edge ]
  %IGI.0139 = phi i8 [ 80, %ODM_Write_DIG.exit ], [ %sub49, %if.then47.for.cond.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %cnt.0138 = phi i8 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pDM_VOID, align 8
  %call = tail call i32 @rtw_hal_read_bbreg(ptr noundef %29, i32 noundef 3572, i32 noundef -1) #7
  %and = and i32 %call, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %txEdcca1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %txEdcca1, align 8
  %add25 = add i8 %31, 1
  store i8 %add25, ptr %txEdcca1, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %and28 = and i32 %call, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else36, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %txEdcca1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %txEdcca1, align 8
  %add33 = add i8 %33, 1
  store i8 %add33, ptr %txEdcca1, align 8
  br label %for.inc

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %txEdcca0 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %txEdcca0, align 1
  %add38 = add i8 %35, 1
  store i8 %add38, ptr %txEdcca0, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else36, %if.then30, %if.then23
  %inc = add nuw nsw i8 %cnt.0138, 1
  %cmp19 = icmp ult i8 %cnt.0138, 19
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %36 = ptrtoint ptr %txEdcca1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %txEdcca1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %37)
  %cmp45 = icmp ugt i8 %37, 5
  br i1 %cmp45, label %if.then47, label %if.else78

if.then47:                                        ; preds = %for.end
  %sub49 = add i8 %IGI.0139, -1
  %add52 = add i8 %TH_L2H_dmc.0141, 1
  %38 = tail call i8 @llvm.smin.i8(i8 %add52, i8 10)
  %39 = ptrtoint ptr %TH_EDCCA_HL_diff to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %TH_EDCCA_HL_diff, align 2
  %sub62 = sub i8 %38, %40
  %41 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pDM_VOID, align 8
  %conv65 = zext i8 %38 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %42, i32 noundef 3148, i32 noundef 255, i32 noundef %conv65) #7
  %43 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pDM_VOID, align 8
  %conv67 = zext i8 %sub62 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %44, i32 noundef 3148, i32 noundef 16711680, i32 noundef %conv67) #7
  %45 = ptrtoint ptr %TxHangFlg79 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %TxHangFlg79, align 1
  %46 = ptrtoint ptr %txEdcca1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %txEdcca1, align 8
  %47 = ptrtoint ptr %txEdcca0 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %txEdcca0, align 1
  %cmp71 = icmp sgt i8 %add52, 9
  br i1 %cmp71, label %if.then73, label %if.then47.for.cond.preheader_crit_edge

if.then47.for.cond.preheader_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

if.then73:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %TxHangFlg79 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %TxHangFlg79, align 1
  br label %while.end86

if.else78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %TxHangFlg79 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %TxHangFlg79, align 1
  %50 = ptrtoint ptr %txEdcca1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %txEdcca1, align 8
  br label %while.end86

while.end86:                                      ; preds = %if.else78, %if.then73
  %sub62.lcssa.sink = phi i8 [ %sub62, %if.then73 ], [ %TH_H2L_dmc.0142, %if.else78 ]
  %.lcssa.sink = phi i8 [ %38, %if.then73 ], [ %TH_L2H_dmc.0141, %if.else78 ]
  %sub49.lcssa.sink = phi i8 [ %sub49, %if.then73 ], [ %IGI.0139, %if.else78 ]
  %Adaptivity_IGI_upper84 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 123
  %L2H_lb83 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 122
  %H2L_lb82 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 121
  %51 = ptrtoint ptr %txEdcca0 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %txEdcca0, align 1
  %52 = ptrtoint ptr %H2L_lb82 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %sub62.lcssa.sink, ptr %H2L_lb82, align 2
  %53 = ptrtoint ptr %L2H_lb83 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.lcssa.sink, ptr %L2H_lb83, align 1
  %54 = ptrtoint ptr %Adaptivity_IGI_upper84 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %sub49.lcssa.sink, ptr %Adaptivity_IGI_upper84, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_Write_DIG(ptr nocapture noundef %pDM_VOID, i8 noundef zeroext %CurrentIGI) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_DigTable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %0 = ptrtoint ptr %DM_DigTable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %DM_DigTable, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %CurIGValue = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %2 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CurIGValue, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %CurrentIGI)
  %cmp.not = icmp eq i8 %3, %CurrentIGI
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %bPSDInProgress = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %4 = ptrtoint ptr %bPSDInProgress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bPSDInProgress, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_range_max = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %6 = ptrtoint ptr %rx_gain_range_max to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_gain_range_max, align 1
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 %CurrentIGI)
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.then3.if.end13_crit_edge
  %CurrentIGI.addr.0 = phi i8 [ %CurrentIGI, %if.then3.if.end13_crit_edge ], [ %8, %if.then5 ]
  %9 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pDM_VOID, align 8
  %conv14 = zext i8 %CurrentIGI.addr.0 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %10, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14) #7
  %11 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %12, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14) #7
  %13 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %CurrentIGI.addr.0, ptr %CurIGValue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_AdaptivityInit(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %Carrier_Sense_enable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 113
  %0 = ptrtoint ptr %Carrier_Sense_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %Carrier_Sense_enable, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %spec.select = select i1 %cmp, i8 -9, i8 10
  %2 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 94
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 1
  %AdapEn_RSSI = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 99
  %4 = ptrtoint ptr %AdapEn_RSSI to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 20, ptr %AdapEn_RSSI, align 2
  %TH_EDCCA_HL_diff = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 95
  %5 = ptrtoint ptr %TH_EDCCA_HL_diff to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 7, ptr %TH_EDCCA_HL_diff, align 2
  %IGI_Base = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 96
  %6 = ptrtoint ptr %IGI_Base to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 50, ptr %IGI_Base, align 1
  %IGI_target = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 97
  %7 = ptrtoint ptr %IGI_target to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 28, ptr %IGI_target, align 8
  %ForceEDCCA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 98
  %8 = ptrtoint ptr %ForceEDCCA to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ForceEDCCA, align 1
  %NHM_disable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 111
  %9 = ptrtoint ptr %NHM_disable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %NHM_disable, align 2
  %TxHangFlg = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 112
  %10 = ptrtoint ptr %TxHangFlg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %TxHangFlg, align 1
  %txEdcca1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 119
  %adaptivity_flag.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 110
  %11 = ptrtoint ptr %adaptivity_flag.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %adaptivity_flag.i, align 1
  %tolerance_cnt.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 114
  %12 = call ptr @memset(ptr %txEdcca1, i32 0, i32 5)
  %13 = ptrtoint ptr %tolerance_cnt.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %tolerance_cnt.i, align 1
  %NHMCurTxOkcnt.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 115
  %14 = call ptr @memset(ptr %NHMCurTxOkcnt.i, i32 0, i32 32)
  %15 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %16, i32 noundef 1316, i32 noundef 2048, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_Adaptivity(ptr noundef %pDM_VOID, i8 noundef zeroext %IGI) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pBandWidth = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 43
  %2 = ptrtoint ptr %pBandWidth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pBandWidth, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.else11 [
    i8 0, label %if.then2
    i8 1, label %if.then7
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %IGI_Base = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 96
  %7 = ptrtoint ptr %IGI_Base to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %IGI_Base, align 1
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %IGI_Base8 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 96
  %9 = ptrtoint ptr %IGI_Base8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %IGI_Base8, align 1
  %add = add i8 %10, 2
  br label %if.end14

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %IGI_Base12 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 96
  %11 = ptrtoint ptr %IGI_Base12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %IGI_Base12, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then7, %if.then2
  %IGI_target.0 = phi i8 [ %8, %if.then2 ], [ %add, %if.then7 ], [ %12, %if.else11 ]
  %IGI_target15 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 97
  %13 = ptrtoint ptr %IGI_target15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %IGI_target.0, ptr %IGI_target15, align 8
  %TxHangFlg = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 112
  %14 = ptrtoint ptr %TxHangFlg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %TxHangFlg, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %if.then20

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %17, i32 noundef 2312, i32 noundef -1, i32 noundef 520) #7
  %18 = ptrtoint ptr %IGI_target15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %IGI_target15, align 8
  tail call void @odm_SearchPwdBLowerBound(ptr noundef %pDM_VOID, i8 noundef zeroext %19)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end14.if.end22_crit_edge
  %bLinked = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 62
  %20 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bLinked, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %if.end22.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end22
  %pChannel = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 44
  %22 = ptrtoint ptr %pChannel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pChannel, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %25)
  %cmp25 = icmp ugt i8 %25, -107
  br i1 %cmp25, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end30

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end30:                                         ; preds = %lor.lhs.false
  %ForceEDCCA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 98
  %26 = ptrtoint ptr %ForceEDCCA to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ForceEDCCA, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool31.not = icmp eq i8 %27, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.land.lhs.true_crit_edge

if.end30.land.lhs.true_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %RSSI_Min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 64
  %28 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %RSSI_Min, align 1
  %AdapEn_RSSI = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 99
  %30 = ptrtoint ptr %AdapEn_RSSI to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %AdapEn_RSSI, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp35 = icmp ugt i8 %29, %31
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then32, %if.end30.land.lhs.true_crit_edge
  %EDCCA_State.0.off0 = phi i1 [ true, %if.end30.land.lhs.true_crit_edge ], [ %cmp35, %if.then32 ]
  %Carrier_Sense_enable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 113
  %32 = ptrtoint ptr %Carrier_Sense_enable to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %Carrier_Sense_enable, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp55 = icmp eq i8 %33, 0
  br i1 %cmp55, label %land.lhs.true57, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true57:                                  ; preds = %land.lhs.true
  %NHM_disable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 111
  %34 = ptrtoint ptr %NHM_disable to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %NHM_disable, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp60 = icmp eq i8 %35, 0
  br i1 %cmp60, label %land.lhs.true62, label %land.lhs.true57.if.end69_crit_edge

land.lhs.true57.if.end69_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true62:                                  ; preds = %land.lhs.true57
  %36 = ptrtoint ptr %TxHangFlg to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %TxHangFlg, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp66 = icmp eq i8 %37, 0
  br i1 %cmp66, label %if.then68, label %land.lhs.true62.if.end69_crit_edge

land.lhs.true62.if.end69_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then68:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @odm_NHMBB(ptr noundef %pDM_VOID)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %land.lhs.true62.if.end69_crit_edge, %land.lhs.true57.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge
  br i1 %EDCCA_State.0.off0, label %if.then71, label %if.end69.cleanup.sink.split_crit_edge

if.end69.cleanup.sink.split_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %sub74 = sub i8 %IGI_target.0, %IGI
  %TH_L2H_ini = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 94
  %38 = ptrtoint ptr %TH_L2H_ini to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %TH_L2H_ini, align 1
  %add78 = add i8 %sub74, %39
  %40 = tail call i8 @llvm.smin.i8(i8 %add78, i8 10)
  %TH_EDCCA_HL_diff = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 95
  %41 = ptrtoint ptr %TH_EDCCA_HL_diff to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %TH_EDCCA_HL_diff, align 2
  %sub87 = sub i8 %40, %42
  %H2L_lb = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 121
  %43 = ptrtoint ptr %H2L_lb to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %H2L_lb, align 2
  %45 = tail call i8 @llvm.smax.i8(i8 %sub87, i8 %44)
  %L2H_lb = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 122
  %46 = ptrtoint ptr %L2H_lb to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %L2H_lb, align 1
  %48 = tail call i8 @llvm.smax.i8(i8 %40, i8 %47)
  %phi.cast = zext i8 %48 to i32
  %phi.cast153 = zext i8 %45 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then71, %if.end69.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge
  %TH_L2H_dmc.0.sink = phi i32 [ 127, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 127, %if.end22.cleanup.sink.split_crit_edge ], [ 127, %if.end69.cleanup.sink.split_crit_edge ], [ %phi.cast, %if.then71 ]
  %TH_H2L_dmc.1.sink = phi i32 [ 127, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 127, %if.end22.cleanup.sink.split_crit_edge ], [ 127, %if.end69.cleanup.sink.split_crit_edge ], [ %phi.cast153, %if.then71 ]
  %49 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %50, i32 noundef 3148, i32 noundef 255, i32 noundef %TH_L2H_dmc.0.sink) #7
  %51 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %52, i32 noundef 3148, i32 noundef 16711680, i32 noundef %TH_H2L_dmc.1.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_PauseDIG(ptr noundef %pDM_VOID, i32 noundef %PauseType, i8 noundef zeroext %IGIValue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %TxHangFlg = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 112
  %2 = ptrtoint ptr %TxHangFlg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %TxHangFlg, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.b4041 = load i1, ptr @odm_PauseDIG.bPaused, align 1
  %4 = and i32 %1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %.not = icmp eq i32 %4, 9
  %or.cond = select i1 %.b4041, i1 true, i1 %.not
  br i1 %or.cond, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %5 = zext i32 %PauseType to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %PauseType, label %if.end12.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  %and14 = and i32 %1, -2
  %conv15 = zext i32 %and14 to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %pDM_VOID, i32 noundef 1, i64 noundef %conv15) #7
  %.b3943 = load i1, ptr @odm_PauseDIG.bPaused, align 1
  br i1 %.b3943, label %sw.bb.if.end18_crit_edge, label %if.then17

sw.bb.if.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %CurIGValue = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %6 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %CurIGValue, align 4
  %IGIBackup = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 15
  %8 = ptrtoint ptr %IGIBackup to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %IGIBackup, align 1
  store i1 true, ptr @odm_PauseDIG.bPaused, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %sw.bb.if.end18_crit_edge
  %DM_DigTable.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %9 = ptrtoint ptr %DM_DigTable.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DM_DigTable.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %CurIGValue.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %11 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %CurIGValue.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %IGIValue)
  %cmp.not.i = icmp eq i8 %12, %IGIValue
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  %bPSDInProgress.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %13 = ptrtoint ptr %bPSDInProgress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bPSDInProgress.i, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then3.i.if.end13.i_crit_edge

if.then3.i.if.end13.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_range_max.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %15 = ptrtoint ptr %rx_gain_range_max.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rx_gain_range_max.i, align 1
  %17 = tail call i8 @llvm.umin.i8(i8 %16, i8 %IGIValue) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.then3.i.if.end13.i_crit_edge
  %CurrentIGI.addr.0.i = phi i8 [ %IGIValue, %if.then3.i.if.end13.i_crit_edge ], [ %17, %if.then5.i ]
  %18 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i = zext i8 %CurrentIGI.addr.0.i to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %19, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i) #7
  %20 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %21, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i) #7
  %22 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %CurrentIGI.addr.0.i, ptr %CurIGValue.i, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end12
  br i1 %.b4041, label %if.then21, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %sw.bb19
  %IGIBackup22 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 15
  %23 = ptrtoint ptr %IGIBackup22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %IGIBackup22, align 1
  %DM_DigTable.i44 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %25 = ptrtoint ptr %DM_DigTable.i44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %DM_DigTable.i44, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i45 = icmp eq i8 %26, 0
  br i1 %tobool.not.i45, label %if.end.i48, label %if.then21.ODM_Write_DIG.exit57_crit_edge

if.then21.ODM_Write_DIG.exit57_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_DIG.exit57

if.end.i48:                                       ; preds = %if.then21
  %CurIGValue.i46 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %27 = ptrtoint ptr %CurIGValue.i46 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %CurIGValue.i46, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %24)
  %cmp.not.i47 = icmp eq i8 %28, %24
  br i1 %cmp.not.i47, label %if.end.i48.ODM_Write_DIG.exit57_crit_edge, label %if.then3.i51

if.end.i48.ODM_Write_DIG.exit57_crit_edge:        ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_DIG.exit57

if.then3.i51:                                     ; preds = %if.end.i48
  %bPSDInProgress.i49 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %29 = ptrtoint ptr %bPSDInProgress.i49 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bPSDInProgress.i49, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not.i50 = icmp eq i8 %30, 0
  br i1 %tobool4.not.i50, label %if.then5.i53, label %if.then3.i51.if.end13.i56_crit_edge

if.then3.i51.if.end13.i56_crit_edge:              ; preds = %if.then3.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i56

if.then5.i53:                                     ; preds = %if.then3.i51
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_range_max.i52 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %31 = ptrtoint ptr %rx_gain_range_max.i52 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_gain_range_max.i52, align 1
  %33 = tail call i8 @llvm.umin.i8(i8 %32, i8 %24) #7
  br label %if.end13.i56

if.end13.i56:                                     ; preds = %if.then5.i53, %if.then3.i51.if.end13.i56_crit_edge
  %CurrentIGI.addr.0.i54 = phi i8 [ %24, %if.then3.i51.if.end13.i56_crit_edge ], [ %33, %if.then5.i53 ]
  %34 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i55 = zext i8 %CurrentIGI.addr.0.i54 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %35, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i55) #7
  %36 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %37, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i55) #7
  %38 = ptrtoint ptr %CurIGValue.i46 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %CurrentIGI.addr.0.i54, ptr %CurIGValue.i46, align 4
  br label %ODM_Write_DIG.exit57

ODM_Write_DIG.exit57:                             ; preds = %if.end13.i56, %if.end.i48.ODM_Write_DIG.exit57_crit_edge, %if.then21.ODM_Write_DIG.exit57_crit_edge
  store i1 false, ptr @odm_PauseDIG.bPaused, align 1
  %39 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %SupportAbility, align 4
  %or = or i32 %40, 1
  %conv24 = zext i32 %or to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %pDM_VOID, i32 noundef 1, i64 noundef %conv24) #7
  br label %cleanup

cleanup:                                          ; preds = %ODM_Write_DIG.exit57, %sw.bb19.cleanup_crit_edge, %if.end13.i, %if.end.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoUpdate(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @odm_DigAbort(ptr nocapture noundef readonly %pDM_VOID) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %2 = and i32 %1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %.not = icmp eq i32 %2, 9
  br i1 %.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %pbScanInProcess = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 49
  %3 = ptrtoint ptr %pbScanInProcess to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbScanInProcess, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %bDMInitialGainEnable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 152
  %7 = ptrtoint ptr %bDMInitialGainEnable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bDMInitialGainEnable, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end5.cleanup_crit_edge ], [ %cmp, %if.end8 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_DIGInit(ptr noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_DigTable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %0 = ptrtoint ptr %DM_DigTable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %DM_DigTable, align 4
  %bPSDInProgress = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %1 = ptrtoint ptr %bPSDInProgress to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bPSDInProgress, align 1
  %2 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_VOID, align 8
  %call = tail call i32 @rtw_hal_read_bbreg(ptr noundef %3, i32 noundef 3152, i32 noundef 127) #7
  %conv = trunc i32 %call to i8
  %CurIGValue = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %4 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %CurIGValue, align 4
  %RssiLowThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 4
  %5 = ptrtoint ptr %RssiLowThresh to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 35, ptr %RssiLowThresh, align 4
  %RssiHighThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 5
  %6 = ptrtoint ptr %RssiHighThresh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40, ptr %RssiHighThresh, align 4
  %FALowThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 6
  %7 = ptrtoint ptr %FALowThresh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 400, ptr %FALowThresh, align 4
  %FAHighThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 7
  %8 = ptrtoint ptr %FAHighThresh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %FAHighThresh, align 4
  %BackoffVal = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 16
  %9 = ptrtoint ptr %BackoffVal to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %BackoffVal, align 4
  %BackoffVal_range_max = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 17
  %10 = ptrtoint ptr %BackoffVal_range_max to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %BackoffVal_range_max, align 1
  %BackoffVal_range_min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 18
  %11 = ptrtoint ptr %BackoffVal_range_min to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -4, ptr %BackoffVal_range_min, align 2
  %PreCCK_CCAThres = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 22
  %12 = ptrtoint ptr %PreCCK_CCAThres to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %PreCCK_CCAThres, align 2
  %CurCCK_CCAThres = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 23
  %13 = ptrtoint ptr %CurCCK_CCAThres to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -125, ptr %CurCCK_CCAThres, align 1
  %ForbiddenIGI = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 28
  %14 = ptrtoint ptr %ForbiddenIGI to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 30, ptr %ForbiddenIGI, align 4
  %LargeFAHit = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 27
  %15 = ptrtoint ptr %LargeFAHit to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %LargeFAHit, align 1
  %Recover_cnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 29
  %16 = ptrtoint ptr %Recover_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %Recover_cnt, align 4
  %bMediaConnect_0 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 32
  %17 = ptrtoint ptr %bMediaConnect_0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bMediaConnect_0, align 2
  %bMediaConnect_1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 33
  %18 = ptrtoint ptr %bMediaConnect_1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bMediaConnect_1, align 1
  %bDMInitialGainEnable = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 152
  %19 = ptrtoint ptr %bDMInitialGainEnable to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bDMInitialGainEnable, align 1
  %DIG_Dynamic_MIN_0 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 30
  %20 = ptrtoint ptr %DIG_Dynamic_MIN_0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 30, ptr %DIG_Dynamic_MIN_0, align 4
  %DIG_Dynamic_MIN_1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 31
  %21 = ptrtoint ptr %DIG_Dynamic_MIN_1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 30, ptr %DIG_Dynamic_MIN_1, align 1
  %BT30_CurIGI = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 14
  %22 = ptrtoint ptr %BT30_CurIGI to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 50, ptr %BT30_CurIGI, align 2
  %rx_gain_range_max = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %23 = ptrtoint ptr %rx_gain_range_max to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 62, ptr %rx_gain_range_max, align 1
  %rx_gain_range_min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 20
  %24 = ptrtoint ptr %rx_gain_range_min to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 30, ptr %rx_gain_range_min, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_DIG(ptr noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %CurIGValue = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %0 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %CurIGValue, align 4
  %SupportAbility.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %2 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SupportAbility.i, align 4
  %4 = and i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %.not.i = icmp eq i32 %4, 9
  br i1 %.not.i, label %if.end5.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %entry
  %pbScanInProcess.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 49
  %5 = ptrtoint ptr %pbScanInProcess.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pbScanInProcess.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not.i = icmp eq i8 %8, 0
  br i1 %tobool6.not.i, label %odm_DigAbort.exit, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

odm_DigAbort.exit:                                ; preds = %if.end5.i
  %bDMInitialGainEnable.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 152
  %9 = ptrtoint ptr %bDMInitialGainEnable.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bDMInitialGainEnable.i, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  br i1 %cmp.i, label %odm_DigAbort.exit.cleanup_crit_edge, label %if.end

odm_DigAbort.exit.cleanup_crit_edge:              ; preds = %odm_DigAbort.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %odm_DigAbort.exit
  %adaptivity_flag = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 110
  %11 = ptrtoint ptr %adaptivity_flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %adaptivity_flag, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %Adaptivity_IGI_upper = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 123
  %13 = ptrtoint ptr %Adaptivity_IGI_upper to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %Adaptivity_IGI_upper, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %Adap_IGI_Upper.0 = phi i8 [ %14, %if.then2 ], [ 0, %if.end.if.end3_crit_edge ]
  %DIG_Dynamic_MIN_0 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 30
  %bLinked = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 62
  %15 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bLinked, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  %bMediaConnect_013 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 32
  %17 = ptrtoint ptr %bMediaConnect_013 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bMediaConnect_013, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %if.end108, label %if.then25

if.then25:                                        ; preds = %if.end3
  %bBtLimitedDig = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 72
  %19 = ptrtoint ptr %bBtLimitedDig to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bBtLimitedDig, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  %. = select i1 %tobool26.not, i32 15, i32 10
  %RSSI_Min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 64
  %21 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %RSSI_Min, align 1
  %conv32 = zext i8 %22 to i32
  %add = add nuw nsw i32 %., %conv32
  %23 = call i32 @llvm.umax.i32(i32 %add, i32 30)
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 90)
  %25 = trunc i32 %24 to i8
  %rx_gain_range_max47 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %26 = ptrtoint ptr %rx_gain_range_max47 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rx_gain_range_max47, align 1
  %27 = tail call i8 @llvm.umin.i8(i8 %22, i8 62)
  %28 = tail call i8 @llvm.umax.i8(i8 %27, i8 30)
  %bOneEntryOnly = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 66
  %29 = ptrtoint ptr %bOneEntryOnly to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bOneEntryOnly, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool81.not = icmp ne i8 %30, 0
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  %or.cond568 = select i1 %tobool81.not, i1 true, i1 %tobool83.not
  br i1 %or.cond568, label %if.then25.if.else111_crit_edge, label %if.then84

if.then25.if.else111_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else111

if.then84:                                        ; preds = %if.then25
  %AntDivType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 33
  %31 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %AntDivType, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %32, label %if.then84.if.else111_crit_edge [
    i8 1, label %if.then84.if.then97_crit_edge
    i8 4, label %if.then84.if.then97_crit_edge586
    i8 6, label %if.then84.if.then97_crit_edge587
  ]

if.then84.if.then97_crit_edge587:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then97

if.then84.if.then97_crit_edge586:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then97

if.then84.if.then97_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then97

if.then84.if.else111_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else111

if.then97:                                        ; preds = %if.then84.if.then97_crit_edge, %if.then84.if.then97_crit_edge586, %if.then84.if.then97_crit_edge587
  %AntDiv_RSSI_max = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 34
  %34 = ptrtoint ptr %AntDiv_RSSI_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %AntDiv_RSSI_max, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 62)
  %37 = trunc i32 %36 to i8
  br label %if.else111

if.end108:                                        ; preds = %if.end3
  %rx_gain_range_max75 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %38 = ptrtoint ptr %rx_gain_range_max75 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 90, ptr %rx_gain_range_max75, align 1
  br i1 %tobool14.not, label %if.end108.if.else111_crit_edge, label %if.end114.thread

if.end108.if.else111_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else111

if.end114.thread:                                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_range_min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 20
  %39 = ptrtoint ptr %rx_gain_range_min to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 30, ptr %rx_gain_range_min, align 4
  %ForbiddenIGI = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 28
  br label %if.end130.sink.split

if.else111:                                       ; preds = %if.end108.if.else111_crit_edge, %if.then97, %if.then84.if.else111_crit_edge, %if.then25.if.else111_crit_edge
  %brmerge = phi i1 [ %tobool14.not, %if.then97 ], [ %tobool14.not, %if.then84.if.else111_crit_edge ], [ %tobool14.not, %if.then25.if.else111_crit_edge ], [ true, %if.end108.if.else111_crit_edge ]
  %DIG_Dynamic_MIN.1564 = phi i8 [ %37, %if.then97 ], [ %28, %if.then84.if.else111_crit_edge ], [ %28, %if.then25.if.else111_crit_edge ], [ 30, %if.end108.if.else111_crit_edge ]
  %40 = phi i1 [ %tobool14.not, %if.then97 ], [ %tobool14.not, %if.then84.if.else111_crit_edge ], [ %tobool14.not, %if.then25.if.else111_crit_edge ], [ false, %if.end108.if.else111_crit_edge ]
  %rx_gain_range_min1.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 20
  %41 = ptrtoint ptr %rx_gain_range_min1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rx_gain_range_min1.i, align 4
  %Cnt_all.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 7
  %43 = ptrtoint ptr %Cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %Cnt_all.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %44)
  %cmp.i495 = icmp ugt i32 %44, 10000
  br i1 %cmp.i495, label %if.then.i, label %if.else32.i

if.then.i:                                        ; preds = %if.else111
  %LargeFAHit.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 27
  %45 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %LargeFAHit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp2.not.i = icmp eq i8 %46, 3
  br i1 %cmp2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i8 %46, 1
  %47 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %inc.i, ptr %LargeFAHit.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %ForbiddenIGI.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 28
  %48 = ptrtoint ptr %ForbiddenIGI.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ForbiddenIGI.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %1)
  %cmp8.i = icmp ult i8 %49, %1
  br i1 %cmp8.i, label %if.end13.thread.i, label %if.end13.i

if.end13.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %ForbiddenIGI.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %1, ptr %ForbiddenIGI.i, align 4
  %51 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %LargeFAHit.i, align 1
  br label %if.end114

if.end13.i:                                       ; preds = %if.end.i
  %52 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr.i = load i8, ptr %LargeFAHit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp16.i = icmp ugt i8 %.pr.i, 2
  br i1 %cmp16.i, label %if.then18.i, label %if.end13.i.if.end114_crit_edge

if.end13.i.if.end114_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv20.i = zext i8 %49 to i32
  %add.i = add nuw nsw i32 %conv20.i, 2
  %rx_gain_range_max.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %53 = ptrtoint ptr %rx_gain_range_max.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rx_gain_range_max.i, align 1
  %conv21.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv21.i)
  %cmp22.i = icmp ugt i32 %add.i, %conv21.i
  %conv29.i = trunc i32 %add.i to i8
  %rx_gain_range_min.0.i = select i1 %cmp22.i, i8 %54, i8 %conv29.i
  %Recover_cnt.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 29
  %55 = ptrtoint ptr %Recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1800, ptr %Recover_cnt.i, align 4
  br label %if.end114

if.else32.i:                                      ; preds = %if.else111
  %Recover_cnt33.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 29
  %56 = ptrtoint ptr %Recover_cnt33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %Recover_cnt33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp34.not.i = icmp eq i32 %57, 0
  br i1 %cmp34.not.i, label %if.else38.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %57, -1
  %58 = ptrtoint ptr %Recover_cnt33.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dec.i, ptr %Recover_cnt33.i, align 4
  br label %if.end114

if.else38.i:                                      ; preds = %if.else32.i
  %LargeFAHit39.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 27
  %59 = ptrtoint ptr %LargeFAHit39.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %LargeFAHit39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp41.i = icmp ult i8 %60, 3
  br i1 %cmp41.i, label %if.then43.i, label %if.else61.i

if.then43.i:                                      ; preds = %if.else38.i
  %ForbiddenIGI44.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 28
  %61 = ptrtoint ptr %ForbiddenIGI44.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ForbiddenIGI44.i, align 4
  %conv45.i = zext i8 %62 to i32
  %sub.i = add nsw i32 %conv45.i, -2
  %conv46.i = zext i8 %DIG_Dynamic_MIN.1564 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv46.i)
  %cmp47.i = icmp slt i32 %sub.i, %conv46.i
  br i1 %cmp47.i, label %if.then49.i, label %if.else51.i

if.then49.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %ForbiddenIGI44.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %DIG_Dynamic_MIN.1564, ptr %ForbiddenIGI44.i, align 4
  br label %if.end114

if.else51.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv55.i = trunc i32 %sub.i to i8
  %64 = ptrtoint ptr %ForbiddenIGI44.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv55.i, ptr %ForbiddenIGI44.i, align 4
  br label %if.end114

if.else61.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %LargeFAHit39.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %LargeFAHit39.i, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.else61.i, %if.else51.i, %if.then49.i, %if.then36.i, %if.then18.i, %if.end13.i.if.end114_crit_edge, %if.end13.thread.i
  %rx_gain_range_min.1.i = phi i8 [ %rx_gain_range_min.0.i, %if.then18.i ], [ %42, %if.end13.i.if.end114_crit_edge ], [ %42, %if.then36.i ], [ %DIG_Dynamic_MIN.1564, %if.then49.i ], [ %62, %if.else51.i ], [ %42, %if.else61.i ], [ %42, %if.end13.thread.i ]
  %66 = ptrtoint ptr %rx_gain_range_min1.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %rx_gain_range_min.1.i, ptr %rx_gain_range_min1.i, align 4
  br i1 %brmerge, label %if.end114.if.end130_crit_edge, label %if.then120

if.end114.if.end130_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then120:                                       ; preds = %if.end114
  %NumQryBeaconPkt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 128, i32 4
  %67 = ptrtoint ptr %NumQryBeaconPkt to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %NumQryBeaconPkt, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %68)
  %cmp122 = icmp ult i8 %68, 5
  br i1 %cmp122, label %land.lhs.true124, label %if.then120.if.end130_crit_edge

if.then120.if.end130_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

land.lhs.true124:                                 ; preds = %if.then120
  %bsta_state = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 63
  %69 = ptrtoint ptr %bsta_state to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bsta_state, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool125.not = icmp eq i8 %70, 0
  br i1 %tobool125.not, label %land.lhs.true124.if.end130_crit_edge, label %land.lhs.true124.if.end130.sink.split_crit_edge

land.lhs.true124.if.end130.sink.split_crit_edge:  ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.sink.split

land.lhs.true124.if.end130_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.end130.sink.split:                             ; preds = %land.lhs.true124.if.end130.sink.split_crit_edge, %if.end114.thread
  %ForbiddenIGI.sink = phi ptr [ %ForbiddenIGI, %if.end114.thread ], [ %rx_gain_range_min1.i, %land.lhs.true124.if.end130.sink.split_crit_edge ]
  %.ph = phi i1 [ false, %if.end114.thread ], [ %40, %land.lhs.true124.if.end130.sink.split_crit_edge ]
  %.ph582 = phi i1 [ true, %if.end114.thread ], [ false, %land.lhs.true124.if.end130.sink.split_crit_edge ]
  %DIG_Dynamic_MIN.1563567.ph = phi i8 [ 30, %if.end114.thread ], [ %DIG_Dynamic_MIN.1564, %land.lhs.true124.if.end130.sink.split_crit_edge ]
  %71 = ptrtoint ptr %ForbiddenIGI.sink to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 30, ptr %ForbiddenIGI.sink, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %land.lhs.true124.if.end130_crit_edge, %if.then120.if.end130_crit_edge, %if.end114.if.end130_crit_edge
  %72 = phi i1 [ %40, %if.end114.if.end130_crit_edge ], [ %40, %if.then120.if.end130_crit_edge ], [ %40, %land.lhs.true124.if.end130_crit_edge ], [ %.ph, %if.end130.sink.split ]
  %73 = phi i1 [ false, %if.end114.if.end130_crit_edge ], [ false, %if.then120.if.end130_crit_edge ], [ false, %land.lhs.true124.if.end130_crit_edge ], [ %.ph582, %if.end130.sink.split ]
  %DIG_Dynamic_MIN.1563567 = phi i8 [ %DIG_Dynamic_MIN.1564, %if.end114.if.end130_crit_edge ], [ %DIG_Dynamic_MIN.1564, %if.then120.if.end130_crit_edge ], [ %DIG_Dynamic_MIN.1564, %land.lhs.true124.if.end130_crit_edge ], [ %DIG_Dynamic_MIN.1563567.ph, %if.end130.sink.split ]
  %rx_gain_range_min131 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 20
  %74 = ptrtoint ptr %rx_gain_range_min131 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rx_gain_range_min131, align 4
  %rx_gain_range_max133 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %76 = ptrtoint ptr %rx_gain_range_max133 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rx_gain_range_max133, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp135 = icmp ugt i8 %75, %77
  br i1 %cmp135, label %if.then137, label %if.end130.if.end140_crit_edge

if.end130.if.end140_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then137:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %rx_gain_range_min131 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %rx_gain_range_min131, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %if.end130.if.end140_crit_edge
  %storemerge.i = select i1 %tobool4.not, i32 2000, i32 512
  %.sink14.i = select i1 %tobool4.not, i32 4000, i32 768
  %.sink.i = select i1 %tobool4.not, i32 5000, i32 1024
  br i1 %tobool4.not, label %if.else222, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %if.end140
  br i1 %72, label %if.then155, label %if.else178

if.then155:                                       ; preds = %lor.lhs.false152
  %LargeFAHit = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 27
  %79 = ptrtoint ptr %LargeFAHit to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %LargeFAHit, align 1
  %RSSI_Min156 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 64
  %80 = ptrtoint ptr %RSSI_Min156 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %RSSI_Min156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %81)
  %cmp159 = icmp ult i8 %81, 62
  br i1 %cmp159, label %if.then161, label %if.else170

if.then161:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  %82 = tail call i8 @llvm.umax.i8(i8 %1, i8 %81)
  br label %if.end260

if.else170:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  %83 = tail call i8 @llvm.umax.i8(i8 %1, i8 62)
  br label %if.end260

if.else178:                                       ; preds = %lor.lhs.false152
  %Cnt_all = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 7
  %84 = ptrtoint ptr %Cnt_all to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %Cnt_all, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %.sink.i)
  %cmp179 = icmp ugt i32 %85, %.sink.i
  br i1 %cmp179, label %if.then181, label %if.else185

if.then181:                                       ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #9
  %add183 = add i8 %1, 4
  br label %if.end204

if.else185:                                       ; preds = %if.else178
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %.sink14.i)
  %cmp188 = icmp ugt i32 %85, %.sink14.i
  br i1 %cmp188, label %if.then190, label %if.else194

if.then190:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #9
  %add192 = add i8 %1, 2
  br label %if.end204

if.else194:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %storemerge.i)
  %cmp197 = icmp ult i32 %85, %storemerge.i
  %sub = add i8 %1, -2
  %spec.select489 = select i1 %cmp197, i8 %sub, i8 %1
  br label %if.end204

if.end204:                                        ; preds = %if.else194, %if.then190, %if.then181
  %CurrentIGI.0 = phi i8 [ %add183, %if.then181 ], [ %add192, %if.then190 ], [ %spec.select489, %if.else194 ]
  %NumQryBeaconPkt206 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 128, i32 4
  %86 = ptrtoint ptr %NumQryBeaconPkt206 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %NumQryBeaconPkt206, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %87)
  %cmp208 = icmp ult i8 %87, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %85)
  %cmp212 = icmp ult i32 %85, 768
  %or.cond569 = select i1 %cmp208, i1 %cmp212, i1 false
  br i1 %or.cond569, label %land.lhs.true214, label %if.end204.if.end260_crit_edge

if.end204.if.end260_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end260

land.lhs.true214:                                 ; preds = %if.end204
  %bsta_state215 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 63
  %88 = ptrtoint ptr %bsta_state215 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bsta_state215, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool216.not = icmp eq i8 %89, 0
  br i1 %tobool216.not, label %land.lhs.true214.if.end260_crit_edge, label %if.then218

land.lhs.true214.if.end260_crit_edge:             ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end260

if.then218:                                       ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %rx_gain_range_min131 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rx_gain_range_min131, align 4
  br label %if.end260

if.else222:                                       ; preds = %if.end140
  br i1 %73, label %if.else222.if.end260_crit_edge, label %if.else229

if.else222.if.end260_crit_edge:                   ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end260

if.else229:                                       ; preds = %if.else222
  %Cnt_all230 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 7
  %92 = ptrtoint ptr %Cnt_all230 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %Cnt_all230, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %.sink.i)
  %cmp232 = icmp ugt i32 %93, %.sink.i
  br i1 %cmp232, label %if.then234, label %if.else238

if.then234:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #9
  %add236 = add i8 %1, 4
  br label %if.end260

if.else238:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %.sink14.i)
  %cmp241 = icmp ugt i32 %93, %.sink14.i
  br i1 %cmp241, label %if.then243, label %if.else247

if.then243:                                       ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #9
  %add245 = add i8 %1, 2
  br label %if.end260

if.else247:                                       ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %storemerge.i)
  %cmp250 = icmp ult i32 %93, %storemerge.i
  %sub254 = add i8 %1, -2
  %spec.select490 = select i1 %cmp250, i8 %sub254, i8 %1
  br label %if.end260

if.end260:                                        ; preds = %if.else247, %if.then243, %if.then234, %if.else222.if.end260_crit_edge, %if.then218, %land.lhs.true214.if.end260_crit_edge, %if.end204.if.end260_crit_edge, %if.else170, %if.then161
  %CurrentIGI.1 = phi i8 [ %91, %if.then218 ], [ %CurrentIGI.0, %land.lhs.true214.if.end260_crit_edge ], [ %CurrentIGI.0, %if.end204.if.end260_crit_edge ], [ %add236, %if.then234 ], [ %add245, %if.then243 ], [ %82, %if.then161 ], [ %83, %if.else170 ], [ 30, %if.else222.if.end260_crit_edge ], [ %spec.select490, %if.else247 ]
  %94 = ptrtoint ptr %rx_gain_range_min131 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rx_gain_range_min131, align 4
  %96 = tail call i8 @llvm.umax.i8(i8 %CurrentIGI.1, i8 %95)
  %97 = tail call i8 @llvm.umin.i8(i8 %96, i8 %77)
  %and278 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  %brmerge570 = select i1 %tobool279.not, i1 true, i1 %tobool.not
  br i1 %brmerge570, label %if.end260.if.end306_crit_edge, label %if.then286

if.end260.if.end306_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end306

if.then286:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #9
  %98 = tail call i8 @llvm.umin.i8(i8 %97, i8 %Adap_IGI_Upper.0)
  %IGI_LowerBound = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 102
  %99 = ptrtoint ptr %IGI_LowerBound to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %IGI_LowerBound, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp294.not = icmp ne i8 %100, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %98, i8 %100)
  %cmp300 = icmp ult i8 %98, %100
  %or.cond = select i1 %cmp294.not, i1 %cmp300, i1 false
  %spec.select494 = select i1 %or.cond, i8 %100, i8 %98
  br label %if.end306

if.end306:                                        ; preds = %if.then286, %if.end260.if.end306_crit_edge
  %CurrentIGI.5 = phi i8 [ %97, %if.end260.if.end306_crit_edge ], [ %spec.select494, %if.then286 ]
  %bBtHsOperation = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 70
  %101 = ptrtoint ptr %bBtHsOperation to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bBtHsOperation, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool307.not = icmp eq i8 %102, 0
  br i1 %tobool307.not, label %if.else336, label %if.then308

if.then308:                                       ; preds = %if.end306
  br i1 %tobool4.not, label %if.else325, label %if.then311

if.then311:                                       ; preds = %if.then308
  %BT30_CurIGI = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 14
  %103 = ptrtoint ptr %BT30_CurIGI to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %BT30_CurIGI, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %CurrentIGI.5)
  %cmp314 = icmp ugt i8 %104, %CurrentIGI.5
  %DM_DigTable.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %105 = ptrtoint ptr %DM_DigTable.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %DM_DigTable.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i496 = icmp ne i8 %106, 0
  br i1 %cmp314, label %if.then316, label %if.else317

if.then316:                                       ; preds = %if.then311
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %CurrentIGI.5)
  %cmp.not.i = icmp eq i8 %1, %CurrentIGI.5
  %or.cond571 = select i1 %tobool.not.i496, i1 true, i1 %cmp.not.i
  br i1 %or.cond571, label %if.then316.if.end319_crit_edge, label %if.then3.i

if.then316.if.end319_crit_edge:                   ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end319

if.then3.i:                                       ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #9
  %bPSDInProgress.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %107 = ptrtoint ptr %bPSDInProgress.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bPSDInProgress.i, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool4.not.i = icmp eq i8 %108, 0
  %109 = tail call i8 @llvm.umin.i8(i8 %77, i8 %CurrentIGI.5) #7
  %spec.select572 = select i1 %tobool4.not.i, i8 %109, i8 %CurrentIGI.5
  %110 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i = zext i8 %spec.select572 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %111, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i) #7
  br label %if.end319.sink.split

if.else317:                                       ; preds = %if.then311
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %104)
  %cmp.not.i503 = icmp eq i8 %1, %104
  %or.cond573 = select i1 %tobool.not.i496, i1 true, i1 %cmp.not.i503
  br i1 %or.cond573, label %if.else317.if.end319_crit_edge, label %if.then3.i507

if.else317.if.end319_crit_edge:                   ; preds = %if.else317
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end319

if.then3.i507:                                    ; preds = %if.else317
  call void @__sanitizer_cov_trace_pc() #9
  %bPSDInProgress.i505 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %112 = ptrtoint ptr %bPSDInProgress.i505 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bPSDInProgress.i505, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool4.not.i506 = icmp eq i8 %113, 0
  %114 = tail call i8 @llvm.umin.i8(i8 %77, i8 %104) #7
  %spec.select574 = select i1 %tobool4.not.i506, i8 %114, i8 %104
  %115 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i511 = zext i8 %spec.select574 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %116, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i511) #7
  br label %if.end319.sink.split

if.end319.sink.split:                             ; preds = %if.then3.i507, %if.then3.i
  %conv14.i511.sink = phi i32 [ %conv14.i511, %if.then3.i507 ], [ %conv14.i, %if.then3.i ]
  %spec.select574.sink = phi i8 [ %spec.select574, %if.then3.i507 ], [ %spec.select572, %if.then3.i ]
  %117 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %118, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i511.sink) #7
  %119 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %spec.select574.sink, ptr %CurIGValue, align 4
  br label %if.end319

if.end319:                                        ; preds = %if.end319.sink.split, %if.else317.if.end319_crit_edge, %if.then316.if.end319_crit_edge
  %120 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bLinked, align 1, !range !11
  %bMediaConnect_0322 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 32
  %122 = ptrtoint ptr %bMediaConnect_0322 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %bMediaConnect_0322, align 2
  %123 = ptrtoint ptr %DIG_Dynamic_MIN_0 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %DIG_Dynamic_MIN.1563567, ptr %DIG_Dynamic_MIN_0, align 4
  br label %cleanup

if.else325:                                       ; preds = %if.then308
  %bLinkInProcess = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 59
  %124 = ptrtoint ptr %bLinkInProcess to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bLinkInProcess, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool326.not = icmp eq i8 %125, 0
  br i1 %tobool326.not, label %if.else328, label %if.then327

if.then327:                                       ; preds = %if.else325
  %DM_DigTable.i514 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %126 = ptrtoint ptr %DM_DigTable.i514 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %DM_DigTable.i514, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i515 = icmp ne i8 %127, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %1)
  %cmp.not.i517 = icmp eq i8 %1, 28
  %or.cond575 = select i1 %tobool.not.i515, i1 true, i1 %cmp.not.i517
  br i1 %or.cond575, label %if.then327.cleanup_crit_edge, label %if.then3.i521

if.then327.cleanup_crit_edge:                     ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i521:                                    ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #9
  %bPSDInProgress.i519 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %128 = ptrtoint ptr %bPSDInProgress.i519 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bPSDInProgress.i519, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool4.not.i520 = icmp eq i8 %129, 0
  %130 = tail call i8 @llvm.umin.i8(i8 %77, i8 28) #7
  %spec.select576 = select i1 %tobool4.not.i520, i8 %130, i8 28
  %131 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i525 = zext i8 %spec.select576 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %132, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i525) #7
  %133 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %134, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i525) #7
  %135 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %spec.select576, ptr %CurIGValue, align 4
  br label %cleanup

if.else328:                                       ; preds = %if.else325
  %bBtConnectProcess = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 68
  %136 = ptrtoint ptr %bBtConnectProcess to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %bBtConnectProcess, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool329.not = icmp eq i8 %137, 0
  br i1 %tobool329.not, label %if.else331, label %if.then330

if.then330:                                       ; preds = %if.else328
  %DM_DigTable.i528 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %138 = ptrtoint ptr %DM_DigTable.i528 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %DM_DigTable.i528, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i529 = icmp ne i8 %139, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %1)
  %cmp.not.i531 = icmp eq i8 %1, 40
  %or.cond577 = select i1 %tobool.not.i529, i1 true, i1 %cmp.not.i531
  br i1 %or.cond577, label %if.then330.cleanup_crit_edge, label %if.then3.i535

if.then330.cleanup_crit_edge:                     ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i535:                                    ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #9
  %bPSDInProgress.i533 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %140 = ptrtoint ptr %bPSDInProgress.i533 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %bPSDInProgress.i533, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool4.not.i534 = icmp eq i8 %141, 0
  %142 = tail call i8 @llvm.umin.i8(i8 %77, i8 40) #7
  %spec.select578 = select i1 %tobool4.not.i534, i8 %142, i8 40
  %143 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i539 = zext i8 %spec.select578 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %144, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i539) #7
  %145 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %146, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i539) #7
  %147 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %spec.select578, ptr %CurIGValue, align 4
  br label %cleanup

if.else331:                                       ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #9
  %BT30_CurIGI332 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 14
  %148 = ptrtoint ptr %BT30_CurIGI332 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %BT30_CurIGI332, align 2
  tail call void @ODM_Write_DIG(ptr noundef %pDM_VOID, i8 noundef zeroext %149)
  br label %cleanup

if.else336:                                       ; preds = %if.end306
  %DM_DigTable.i542 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %150 = ptrtoint ptr %DM_DigTable.i542 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %DM_DigTable.i542, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i543 = icmp ne i8 %151, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %CurrentIGI.5)
  %cmp.not.i545 = icmp eq i8 %1, %CurrentIGI.5
  %or.cond579 = select i1 %tobool.not.i543, i1 true, i1 %cmp.not.i545
  br i1 %or.cond579, label %if.else336.ODM_Write_DIG.exit555_crit_edge, label %if.then3.i549

if.else336.ODM_Write_DIG.exit555_crit_edge:       ; preds = %if.else336
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_DIG.exit555

if.then3.i549:                                    ; preds = %if.else336
  call void @__sanitizer_cov_trace_pc() #9
  %bPSDInProgress.i547 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %152 = ptrtoint ptr %bPSDInProgress.i547 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %bPSDInProgress.i547, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool4.not.i548 = icmp eq i8 %153, 0
  %154 = tail call i8 @llvm.umin.i8(i8 %77, i8 %CurrentIGI.5) #7
  %spec.select580 = select i1 %tobool4.not.i548, i8 %154, i8 %CurrentIGI.5
  %155 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i553 = zext i8 %spec.select580 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %156, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i553) #7
  %157 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %158, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i553) #7
  %159 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %spec.select580, ptr %CurIGValue, align 4
  br label %ODM_Write_DIG.exit555

ODM_Write_DIG.exit555:                            ; preds = %if.then3.i549, %if.else336.ODM_Write_DIG.exit555_crit_edge
  %160 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %bLinked, align 1, !range !11
  %bMediaConnect_0339 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 32
  %162 = ptrtoint ptr %bMediaConnect_0339 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %bMediaConnect_0339, align 2
  %163 = ptrtoint ptr %DIG_Dynamic_MIN_0 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %DIG_Dynamic_MIN.1563567, ptr %DIG_Dynamic_MIN_0, align 4
  br label %cleanup

cleanup:                                          ; preds = %ODM_Write_DIG.exit555, %if.else331, %if.then3.i535, %if.then330.cleanup_crit_edge, %if.then3.i521, %if.then327.cleanup_crit_edge, %if.end319, %odm_DigAbort.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @odm_ForbiddenIGICheck(ptr nocapture noundef %pDM_VOID, i8 noundef zeroext %DIG_Dynamic_MIN, i8 noundef zeroext %CurrentIGI) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_gain_range_min1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 20
  %0 = ptrtoint ptr %rx_gain_range_min1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_gain_range_min1, align 4
  %Cnt_all = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 7
  %2 = ptrtoint ptr %Cnt_all to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Cnt_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %3)
  %cmp = icmp ugt i32 %3, 10000
  br i1 %cmp, label %if.then, label %if.else32

if.then:                                          ; preds = %entry
  %LargeFAHit = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 27
  %4 = ptrtoint ptr %LargeFAHit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %LargeFAHit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp2.not = icmp eq i8 %5, 3
  br i1 %cmp2.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i8 %5, 1
  %6 = ptrtoint ptr %LargeFAHit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %inc, ptr %LargeFAHit, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %ForbiddenIGI = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 28
  %7 = ptrtoint ptr %ForbiddenIGI to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ForbiddenIGI, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %CurrentIGI)
  %cmp8 = icmp ult i8 %8, %CurrentIGI
  br i1 %cmp8, label %if.end13.thread, label %if.end13

if.end13.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ForbiddenIGI to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %CurrentIGI, ptr %ForbiddenIGI, align 4
  %10 = ptrtoint ptr %LargeFAHit to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %LargeFAHit, align 1
  br label %if.end65

if.end13:                                         ; preds = %if.end
  %11 = ptrtoint ptr %LargeFAHit to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %LargeFAHit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp16 = icmp ugt i8 %.pr, 2
  br i1 %cmp16, label %if.then18, label %if.end13.if.end65_crit_edge

if.end13.if.end65_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ForbiddenIGI to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ForbiddenIGI, align 4
  %conv20 = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv20, 2
  %rx_gain_range_max = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %14 = ptrtoint ptr %rx_gain_range_max to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_gain_range_max, align 1
  %conv21 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv21)
  %cmp22 = icmp ugt i32 %add, %conv21
  %conv29 = trunc i32 %add to i8
  %rx_gain_range_min.0 = select i1 %cmp22, i8 %15, i8 %conv29
  %Recover_cnt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 29
  %16 = ptrtoint ptr %Recover_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1800, ptr %Recover_cnt, align 4
  br label %if.end65

if.else32:                                        ; preds = %entry
  %Recover_cnt33 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 29
  %17 = ptrtoint ptr %Recover_cnt33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Recover_cnt33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34.not = icmp eq i32 %18, 0
  br i1 %cmp34.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %18, -1
  %19 = ptrtoint ptr %Recover_cnt33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec, ptr %Recover_cnt33, align 4
  br label %if.end65

if.else38:                                        ; preds = %if.else32
  %LargeFAHit39 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 27
  %20 = ptrtoint ptr %LargeFAHit39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %LargeFAHit39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp41 = icmp ult i8 %21, 3
  br i1 %cmp41, label %if.then43, label %if.else61

if.then43:                                        ; preds = %if.else38
  %ForbiddenIGI44 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 28
  %22 = ptrtoint ptr %ForbiddenIGI44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ForbiddenIGI44, align 4
  %conv45 = zext i8 %23 to i32
  %sub = add nsw i32 %conv45, -2
  %conv46 = zext i8 %DIG_Dynamic_MIN to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv46)
  %cmp47 = icmp slt i32 %sub, %conv46
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %ForbiddenIGI44 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %DIG_Dynamic_MIN, ptr %ForbiddenIGI44, align 4
  br label %if.end65

if.else51:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %conv55 = trunc i32 %sub to i8
  %25 = ptrtoint ptr %ForbiddenIGI44 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv55, ptr %ForbiddenIGI44, align 4
  br label %if.end65

if.else61:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %LargeFAHit39 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %LargeFAHit39, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.else51, %if.then49, %if.then36, %if.then18, %if.end13.if.end65_crit_edge, %if.end13.thread
  %rx_gain_range_min.1 = phi i8 [ %rx_gain_range_min.0, %if.then18 ], [ %1, %if.end13.if.end65_crit_edge ], [ %1, %if.then36 ], [ %DIG_Dynamic_MIN, %if.then49 ], [ %23, %if.else51 ], [ %1, %if.else61 ], [ %1, %if.end13.thread ]
  ret i8 %rx_gain_range_min.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @odm_FAThresholdCheck(ptr nocapture noundef readonly %pDM_VOID, i1 noundef zeroext %bDFSBand, i1 noundef zeroext %bPerformance, i32 %RxTp, i32 %TxTp, ptr nocapture noundef writeonly %dm_FA_thres) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bLinked = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 62
  %0 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bLinked, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %brmerge = or i1 %bDFSBand, %bPerformance
  %or.cond = and i1 %brmerge, %tobool.not
  %storemerge = select i1 %or.cond, i32 512, i32 2000
  %.sink14 = select i1 %or.cond, i32 768, i32 4000
  %.sink = select i1 %or.cond, i32 1024, i32 5000
  %2 = ptrtoint ptr %dm_FA_thres to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %dm_FA_thres, align 4
  %3 = getelementptr i32, ptr %dm_FA_thres, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink14, ptr %3, align 4
  %5 = getelementptr i32, ptr %dm_FA_thres, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_DIGbyRSSI_LPS(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %RSSI_Min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 64
  %0 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %RSSI_Min, align 1
  %Cnt_all = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 7
  %2 = ptrtoint ptr %Cnt_all to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Cnt_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %3)
  %cmp = icmp ugt i32 %3, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add4 = add i8 %1, 9
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp7 = icmp ugt i32 %3, 15
  br i1 %cmp7, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add11 = add i8 %1, 7
  br label %if.end21

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp15 = icmp ult i32 %3, 4
  %spec.select.v = select i1 %cmp15, i8 3, i8 5
  %spec.select = add i8 %spec.select.v, %1
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then9, %if.then
  %CurrentIGI.0 = phi i8 [ %add4, %if.then ], [ %add11, %if.then9 ], [ %spec.select, %if.else13 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %1)
  %cmp25 = icmp ugt i8 %1, 40
  %sub24 = add i8 %1, -10
  %RSSI_Lower.0 = select i1 %cmp25, i8 %sub24, i8 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %CurrentIGI.0)
  %cmp35 = icmp ugt i8 %CurrentIGI.0, 62
  %4 = tail call i8 @llvm.umax.i8(i8 %CurrentIGI.0, i8 %RSSI_Lower.0)
  %CurrentIGI.1 = select i1 %cmp35, i8 62, i8 %4
  %DM_DigTable.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131
  %5 = ptrtoint ptr %DM_DigTable.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %DM_DigTable.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.ODM_Write_DIG.exit_crit_edge

if.end21.ODM_Write_DIG.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_DIG.exit

if.end.i:                                         ; preds = %if.end21
  %CurIGValue.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 12
  %7 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CurIGValue.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %CurrentIGI.1)
  %cmp.not.i = icmp eq i8 %8, %CurrentIGI.1
  br i1 %cmp.not.i, label %if.end.i.ODM_Write_DIG.exit_crit_edge, label %if.then3.i

if.end.i.ODM_Write_DIG.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_DIG.exit

if.then3.i:                                       ; preds = %if.end.i
  %bPSDInProgress.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 1
  %9 = ptrtoint ptr %bPSDInProgress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bPSDInProgress.i, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then3.i.if.end13.i_crit_edge

if.then3.i.if.end13.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_range_max.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 19
  %11 = ptrtoint ptr %rx_gain_range_max.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_gain_range_max.i, align 1
  %13 = tail call i8 @llvm.umin.i8(i8 %12, i8 %CurrentIGI.1) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.then3.i.if.end13.i_crit_edge
  %CurrentIGI.addr.0.i = phi i8 [ %CurrentIGI.1, %if.then3.i.if.end13.i_crit_edge ], [ %13, %if.then5.i ]
  %14 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pDM_VOID, align 8
  %conv14.i = zext i8 %CurrentIGI.addr.0.i to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %15, i32 noundef 3152, i32 noundef 127, i32 noundef %conv14.i) #7
  %16 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %17, i32 noundef 3160, i32 noundef 127, i32 noundef %conv14.i) #7
  %18 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %CurrentIGI.addr.0.i, ptr %CurIGValue.i, align 4
  br label %ODM_Write_DIG.exit

ODM_Write_DIG.exit:                               ; preds = %if.end13.i, %if.end.i.ODM_Write_DIG.exit_crit_edge, %if.end21.ODM_Write_DIG.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_FalseAlarmCounterStatistics(ptr noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %FalseAlmCnt1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136
  %2 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %3, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 1) #7
  %4 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %5, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 1) #7
  %6 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pDM_VOID, align 8
  %call = tail call i32 @rtw_hal_read_bbreg(ptr noundef %7, i32 noundef 3312, i32 noundef -1) #7
  %and4 = and i32 %call, 65535
  %Cnt_Fast_Fsync = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 8
  %8 = ptrtoint ptr %Cnt_Fast_Fsync to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and4, ptr %Cnt_Fast_Fsync, align 4
  %shr = lshr i32 %call, 16
  %Cnt_SB_Search_fail = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 9
  %9 = ptrtoint ptr %Cnt_SB_Search_fail to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %Cnt_SB_Search_fail, align 4
  %10 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pDM_VOID, align 8
  %call7 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %11, i32 noundef 3488, i32 noundef -1) #7
  %and8 = and i32 %call7, 65535
  %Cnt_OFDM_CCA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 10
  %12 = ptrtoint ptr %Cnt_OFDM_CCA to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and8, ptr %Cnt_OFDM_CCA, align 4
  %shr10 = lshr i32 %call7, 16
  %13 = ptrtoint ptr %FalseAlmCnt1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr10, ptr %FalseAlmCnt1, align 4
  %14 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pDM_VOID, align 8
  %call12 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %15, i32 noundef 3492, i32 noundef -1) #7
  %and13 = and i32 %call12, 65535
  %Cnt_Rate_Illegal = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 1
  %16 = ptrtoint ptr %Cnt_Rate_Illegal to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and13, ptr %Cnt_Rate_Illegal, align 4
  %shr15 = lshr i32 %call12, 16
  %Cnt_Crc8_fail = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 2
  %17 = ptrtoint ptr %Cnt_Crc8_fail to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr15, ptr %Cnt_Crc8_fail, align 4
  %18 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pDM_VOID, align 8
  %call17 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %19, i32 noundef 3496, i32 noundef -1) #7
  %and18 = and i32 %call17, 65535
  %Cnt_Mcs_fail = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 3
  %20 = ptrtoint ptr %Cnt_Mcs_fail to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and18, ptr %Cnt_Mcs_fail, align 4
  %21 = ptrtoint ptr %FalseAlmCnt1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %FalseAlmCnt1, align 4
  %23 = ptrtoint ptr %Cnt_Rate_Illegal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Cnt_Rate_Illegal, align 4
  %25 = ptrtoint ptr %Cnt_Crc8_fail to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %Cnt_Crc8_fail, align 4
  %27 = ptrtoint ptr %Cnt_Fast_Fsync to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %Cnt_Fast_Fsync, align 4
  %29 = ptrtoint ptr %Cnt_SB_Search_fail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %Cnt_SB_Search_fail, align 4
  %add = add i32 %22, %and18
  %add22 = add i32 %add, %24
  %add24 = add i32 %add22, %26
  %add26 = add i32 %add24, %28
  %add28 = add i32 %add26, %30
  %Cnt_Ofdm_fail = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 4
  %31 = ptrtoint ptr %Cnt_Ofdm_fail to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add28, ptr %Cnt_Ofdm_fail, align 4
  %32 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %33, i32 noundef 2604, i32 noundef 4096, i32 noundef 1) #7
  %34 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %35, i32 noundef 2604, i32 noundef 16384, i32 noundef 1) #7
  %36 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pDM_VOID, align 8
  %call32 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %37, i32 noundef 2652, i32 noundef 255) #7
  %Cnt_Cck_fail = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 6
  %38 = ptrtoint ptr %Cnt_Cck_fail to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call32, ptr %Cnt_Cck_fail, align 4
  %39 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pDM_VOID, align 8
  %call34 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %40, i32 noundef 2648, i32 noundef -16777216) #7
  %and35 = shl i32 %call34, 8
  %shl = and i32 %and35, 65280
  %41 = ptrtoint ptr %Cnt_Cck_fail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %Cnt_Cck_fail, align 4
  %add37 = add i32 %shl, %42
  store i32 %add37, ptr %Cnt_Cck_fail, align 4
  %43 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pDM_VOID, align 8
  %call39 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %44, i32 noundef 2656, i32 noundef -1) #7
  %trunc = trunc i32 %call39 to i16
  %rev = tail call i16 @llvm.bswap.i16(i16 %trunc)
  %or = zext i16 %rev to i32
  %Cnt_CCK_CCA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 11
  %45 = ptrtoint ptr %Cnt_CCK_CCA to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or, ptr %Cnt_CCK_CCA, align 4
  %46 = ptrtoint ptr %Cnt_Fast_Fsync to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %Cnt_Fast_Fsync, align 4
  %48 = ptrtoint ptr %Cnt_SB_Search_fail to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %Cnt_SB_Search_fail, align 4
  %add46 = add i32 %49, %47
  %50 = ptrtoint ptr %FalseAlmCnt1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %FalseAlmCnt1, align 4
  %add48 = add i32 %add46, %51
  %52 = ptrtoint ptr %Cnt_Rate_Illegal to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %Cnt_Rate_Illegal, align 4
  %add50 = add i32 %add48, %53
  %54 = ptrtoint ptr %Cnt_Crc8_fail to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %Cnt_Crc8_fail, align 4
  %add52 = add i32 %add50, %55
  %56 = ptrtoint ptr %Cnt_Mcs_fail to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %Cnt_Mcs_fail, align 4
  %add54 = add i32 %add52, %57
  %58 = ptrtoint ptr %Cnt_Cck_fail to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %Cnt_Cck_fail, align 4
  %add56 = add i32 %add54, %59
  %Cnt_all = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 7
  %60 = ptrtoint ptr %Cnt_all to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add56, ptr %Cnt_all, align 4
  %61 = ptrtoint ptr %Cnt_OFDM_CCA to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %Cnt_OFDM_CCA, align 4
  %add59 = add i32 %62, %or
  %Cnt_CCA_all = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 12
  %63 = ptrtoint ptr %Cnt_CCA_all to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add59, ptr %Cnt_CCA_all, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_CCKPacketDetectionThresh(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %2 = and i32 %1, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %2)
  %.not = icmp eq i32 %2, 40
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ExtLNA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 25
  %3 = ptrtoint ptr %ExtLNA to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ExtLNA, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %bLinked = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 62
  %5 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bLinked, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end7.if.end36.sink.split_crit_edge, label %if.then9

if.end7.if.end36.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.sink.split

if.then9:                                         ; preds = %if.end7
  %RSSI_Min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 64
  %7 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %RSSI_Min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %8)
  %cmp = icmp ugt i8 %8, 25
  br i1 %cmp, label %if.then9.if.end36_crit_edge, label %land.lhs.true

if.then9.if.end36_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp18 = icmp ugt i8 %8, 10
  br i1 %cmp18, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.if.end36.sink.split_crit_edge

land.lhs.true.if.end36.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.sink.split

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end36.sink.split:                              ; preds = %land.lhs.true.if.end36.sink.split_crit_edge, %if.end7.if.end36.sink.split_crit_edge
  %Cnt_Cck_fail30 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 136, i32 6
  %9 = ptrtoint ptr %Cnt_Cck_fail30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Cnt_Cck_fail30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %10)
  %cmp31 = icmp ugt i32 %10, 1000
  %.48 = select i1 %cmp31, i8 -125, i8 64
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %land.lhs.true.if.end36_crit_edge, %if.then9.if.end36_crit_edge
  %CurCCK_CCAThres.0 = phi i8 [ -51, %if.then9.if.end36_crit_edge ], [ -125, %land.lhs.true.if.end36_crit_edge ], [ %.48, %if.end36.sink.split ]
  %CurCCK_CCAThres1.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 23
  %11 = ptrtoint ptr %CurCCK_CCAThres1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %CurCCK_CCAThres1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %CurCCK_CCAThres.0)
  %cmp.not.i = icmp eq i8 %12, %CurCCK_CCAThres.0
  br i1 %cmp.not.i, label %if.end36.ODM_Write_CCK_CCA_Thres.exit_crit_edge, label %if.then.i

if.end36.ODM_Write_CCK_CCA_Thres.exit_crit_edge:  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %ODM_Write_CCK_CCA_Thres.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pDM_VOID, align 8
  %call.i = tail call i32 @rtw_write8(ptr noundef %14, i32 noundef 2570, i8 noundef zeroext %CurCCK_CCAThres.0) #7
  br label %ODM_Write_CCK_CCA_Thres.exit

ODM_Write_CCK_CCA_Thres.exit:                     ; preds = %if.then.i, %if.end36.ODM_Write_CCK_CCA_Thres.exit_crit_edge
  %15 = ptrtoint ptr %CurCCK_CCAThres1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %CurCCK_CCAThres1.i, align 1
  %PreCCK_CCAThres.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 22
  %17 = ptrtoint ptr %PreCCK_CCAThres.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %PreCCK_CCAThres.i, align 2
  store i8 %CurCCK_CCAThres.0, ptr %CurCCK_CCAThres1.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %ODM_Write_CCK_CCA_Thres.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_Write_CCK_CCA_Thres(ptr nocapture noundef %pDM_VOID, i8 noundef zeroext %CurCCK_CCAThres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %CurCCK_CCAThres1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 23
  %0 = ptrtoint ptr %CurCCK_CCAThres1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %CurCCK_CCAThres1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %CurCCK_CCAThres)
  %cmp.not = icmp eq i8 %1, %CurCCK_CCAThres
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_VOID, align 8
  %call = tail call i32 @rtw_write8(ptr noundef %3, i32 noundef 2570, i8 noundef zeroext %CurCCK_CCAThres) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %CurCCK_CCAThres1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %CurCCK_CCAThres1, align 1
  %PreCCK_CCAThres = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 131, i32 22
  %6 = ptrtoint ptr %PreCCK_CCAThres to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %PreCCK_CCAThres, align 2
  store i8 %CurCCK_CCAThres, ptr %CurCCK_CCAThres1, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"bPaused", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/odm_DIG.c", i32 320, i32 14}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
