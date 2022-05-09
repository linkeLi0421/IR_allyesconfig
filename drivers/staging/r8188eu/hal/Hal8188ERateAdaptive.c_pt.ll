; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@N_THRESHOLD_HIGH = internal constant { [28 x i16], [40 x i8] } { [28 x i16] [i16 4, i16 4, i16 8, i16 16, i16 24, i16 36, i16 48, i16 72, i16 96, i16 144, i16 192, i16 216, i16 60, i16 80, i16 100, i16 160, i16 240, i16 400, i16 560, i16 640, i16 300, i16 320, i16 480, i16 720, i16 1000, i16 1200, i16 1600, i16 2000], [40 x i8] zeroinitializer }, align 32
@N_THRESHOLD_LOW = internal constant { [28 x i16], [40 x i8] } { [28 x i16] [i16 2, i16 2, i16 4, i16 8, i16 12, i16 18, i16 24, i16 36, i16 48, i16 72, i16 96, i16 108, i16 30, i16 40, i16 50, i16 80, i16 120, i16 200, i16 280, i16 320, i16 150, i16 160, i16 240, i16 360, i16 500, i16 600, i16 800, i16 1000], [40 x i8] zeroinitializer }, align 32
@odm_RateDecision_8188E.DynamicTxRPTTimingCounter = internal global { i8, [31 x i8] } zeroinitializer, align 32
@RSSI_THRESHOLD = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\00\00\00\00\00\00\00\00$&*\18\1A\1D\1F!')*\00\00\00\1F#(*,", [36 x i8] zeroinitializer }, align 32
@RETRY_PENALTY_IDX = internal constant { [2 x [28 x i8]], [40 x i8] } { [2 x [28 x i8]] [[28 x i8] c"\04\04\04\05\04\04\05\07\07\07\08\0A\04\04\04\04\06\0A\0B\0D\05\05\07\07\08\0B\0D\0F", [28 x i8] c"\0A\0A\0B\0C\0A\0A\0B\0C\0D\10\13\14\0B\0C\0D\0E\0F\11\13\15\09\09\09\09\0C\0E\11\13"], [40 x i8] zeroinitializer }, align 32
@RETRY_PENALTY = internal constant { [23 x [6 x i8]], [54 x i8] } { [23 x [6 x i8]] [[6 x i8] c"\05\04\03\02\00\03", [6 x i8] c"\06\05\04\03\00\04", [6 x i8] c"\06\05\04\02\00\04", [6 x i8] c"\08\07\06\04\00\06", [6 x i8] c"\0A\09\08\06\00\08", [6 x i8] c"\0A\09\08\04\00\08", [6 x i8] c"\0A\09\08\02\00\08", [6 x i8] c"\0A\09\08\00\00\08", [6 x i8] c"\12\11\10\08\00\10", [6 x i8] c"\1A\19\18\10\00\18", [6 x i8] c"\22! \18\00 ", [6 x i8] c"\22\1F\1C\14\00 ", [6 x i8] c"\22\1F\1B\12\00 ", [6 x i8] c"\22\1F\1A\10\00 ", [6 x i8] c"\22\1E\16\10\00 ", [6 x i8] c"\22\1E\18\10\00 ", [6 x i8] c"1.(\10\000", [6 x i8] c"1- \00\000", [6 x i8] c"1-\16\12\000", [6 x i8] c"1(\18\10\000", [6 x i8] c"1 \12\0C\000", [6 x i8] c"1\16\12\0E\000", [6 x i8] c"1\10\10\00\000"], [54 x i8] zeroinitializer }, align 32
@RETRY_PENALTY_UP_IDX = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0C\0D\0D\0F\0D\0E\0F\0F\10\12\13\14\0F\10\10\12\12\13\14\15\11\11\12\13\13\13\14\15", [36 x i8] zeroinitializer }, align 32
@DROPING_NECESSARY = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\01\01\01\01\01\02\03\04\05\06\07\08\01\02\03\04\05\06\07\08\05\06\07\08\09\0A\0B\0C", [36 x i8] zeroinitializer }, align 32
@PendingForRateUpFail = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\0A\18(<", [27 x i8] zeroinitializer }, align 32
@DynamicTxRPTTiming = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 6250, i16 12500, i16 18750, i16 25000, i16 31250, i16 -28036], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 16, i64 6250, i64 12500, i64 18750, i64 25000, i64 31250]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 16, i64 6250, i64 12500, i64 18750, i64 25000, i64 31250]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"N_THRESHOLD_HIGH\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 57, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"N_THRESHOLD_LOW\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 62, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"DynamicTxRPTTimingCounter\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 212, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"RSSI_THRESHOLD\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 51, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"RETRY_PENALTY_IDX\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 35, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"RETRY_PENALTY\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 6, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"RETRY_PENALTY_UP_IDX\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 45, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"DROPING_NECESSARY\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 68, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"PendingForRateUpFail\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 74, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"DynamicTxRPTTiming\00", align 1
@___asan_gen_.34 = private constant [54 x i8] c"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 75, i32 12 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @N_THRESHOLD_HIGH, ptr @N_THRESHOLD_LOW, ptr @odm_RateDecision_8188E.DynamicTxRPTTimingCounter, ptr @RSSI_THRESHOLD, ptr @RETRY_PENALTY_IDX, ptr @RETRY_PENALTY, ptr @RETRY_PENALTY_UP_IDX, ptr @DROPING_NECESSARY, ptr @PendingForRateUpFail, ptr @DynamicTxRPTTiming], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @N_THRESHOLD_HIGH to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @N_THRESHOLD_LOW to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @odm_RateDecision_8188E.DynamicTxRPTTimingCounter to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSSI_THRESHOLD to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RETRY_PENALTY_IDX to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RETRY_PENALTY to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RETRY_PENALTY_UP_IDX to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DROPING_NECESSARY to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PendingForRateUpFail to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DynamicTxRPTTiming to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext %macid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pWirelessMode = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 7
  %0 = ptrtoint ptr %pWirelessMode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pWirelessMode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.end

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %phi.cast = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp ne i8 %3, -1
  %and = and i32 %phi.cast, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp.not, %tobool5.not
  br i1 %or.cond, label %if.else, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %if.end
  %and8 = and i32 %phi.cast, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else11, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and13 = and i32 %phi.cast, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select = select i1 %tobool14.not, i8 19, i8 3
  br label %if.end19

if.end19:                                         ; preds = %if.else11, %if.else.if.end19_crit_edge, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  %max_rate_idx.0 = phi i8 [ 19, %if.end.if.end19_crit_edge ], [ 11, %if.else.if.end19_crit_edge ], [ %spec.select, %if.else11 ], [ 19, %entry.if.end19_crit_edge ]
  %idxprom = zext i8 %macid to i32
  %arrayidx = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom
  %DecisionRate = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %DecisionRate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %max_rate_idx.0, ptr %DecisionRate, align 4
  %PreRate = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 8
  %5 = ptrtoint ptr %PreRate to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %max_rate_idx.0, ptr %PreRate, align 1
  %HighestRate = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 9
  %6 = ptrtoint ptr %HighestRate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %max_rate_idx.0, ptr %HighestRate, align 2
  %LowestRate = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 10
  %7 = ptrtoint ptr %LowestRate to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %LowestRate, align 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 4
  %RateMask = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %RateMask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %RateMask, align 4
  %RssiStaRA = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 4
  %10 = ptrtoint ptr %RssiStaRA to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %RssiStaRA, align 1
  %PreRssiStaRA = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %PreRssiStaRA to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %PreRssiStaRA, align 2
  %SGIEnable = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 6
  %12 = ptrtoint ptr %SGIEnable to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %SGIEnable, align 1
  %RAUseRate = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 2
  %13 = ptrtoint ptr %RAUseRate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %RAUseRate, align 4
  %NscDown = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 12
  %14 = ptrtoint ptr %NscDown to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 480, ptr %NscDown, align 4
  %NscUp = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 11
  %15 = ptrtoint ptr %NscUp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 480, ptr %NscUp, align 4
  %RateSGI = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 3
  %16 = ptrtoint ptr %RateSGI to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %RateSGI, align 4
  %Active = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 16
  %17 = ptrtoint ptr %Active to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %Active, align 2
  %RptTime = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 17
  %18 = ptrtoint ptr %RptTime to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -28036, ptr %RptTime, align 4
  %DROP = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 15
  %19 = ptrtoint ptr %DROP to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %DROP, align 4
  %RTY = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 13
  %TOTAL = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 14
  %20 = ptrtoint ptr %TOTAL to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %TOTAL, align 4
  %RAWaitingCounter = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 18
  %21 = ptrtoint ptr %RAWaitingCounter to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %RAWaitingCounter, align 2
  %RAPendingCounter = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 19
  %22 = ptrtoint ptr %RAPendingCounter to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %RAPendingCounter, align 1
  %PTActive = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 20
  %23 = call ptr @memset(ptr %RTY, i32 0, i32 10)
  %24 = ptrtoint ptr %PTActive to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %PTActive, align 4
  %PTTryState = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 21
  %25 = ptrtoint ptr %PTTryState to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %PTTryState, align 1
  %PTStage = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 22
  %26 = ptrtoint ptr %PTStage to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %PTStage, align 2
  %PTSmoothFactor = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 28
  %27 = ptrtoint ptr %PTSmoothFactor to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -64, ptr %PTSmoothFactor, align 4
  %PTStopCount = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %idxprom, i32 23
  %28 = call ptr @memset(ptr %PTStopCount, i32 0, i32 5)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_RAInfo_Init_all(ptr noundef %dm_odm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %CurrminRptTime = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 18
  %0 = ptrtoint ptr %CurrminRptTime to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %CurrminRptTime, align 8
  %call = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 0)
  %call.1 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 1)
  %call.2 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 2)
  %call.3 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 3)
  %call.4 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 4)
  %call.5 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 5)
  %call.6 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 6)
  %call.7 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 7)
  %call.8 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 8)
  %call.9 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 9)
  %call.10 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 10)
  %call.11 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 11)
  %call.12 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 12)
  %call.13 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 13)
  %call.14 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 14)
  %call.15 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 15)
  %call.16 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 16)
  %call.17 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 17)
  %call.18 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 18)
  %call.19 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 19)
  %call.20 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 20)
  %call.21 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 21)
  %call.22 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 22)
  %call.23 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 23)
  %call.24 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 24)
  %call.25 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 25)
  %call.26 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 26)
  %call.27 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 27)
  %call.28 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 28)
  %call.29 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 29)
  %call.30 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 30)
  %call.31 = tail call i32 @ODM_RAInfo_Init(ptr noundef %dm_odm, i8 noundef zeroext 31)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ODM_RA_GetShortGI_8188E(ptr noundef readonly %dm_odm, i8 noundef zeroext %macid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dm_odm, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %macid)
  %cmp1 = icmp ugt i8 %macid, 31
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %macid to i32
  %RateSGI = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 3
  %0 = ptrtoint ptr %RateSGI to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %RateSGI, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i8 [ %1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ODM_RA_GetDecisionRate_8188E(ptr noundef readonly %dm_odm, i8 noundef zeroext %macid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dm_odm, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %macid)
  %cmp1 = icmp ugt i8 %macid, 31
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %macid to i32
  %DecisionRate3 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 7
  %0 = ptrtoint ptr %DecisionRate3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %DecisionRate3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ODM_RA_GetHwPwrStatus_8188E(ptr noundef readonly %dm_odm, i8 noundef zeroext %macid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dm_odm, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %macid)
  %cmp1 = icmp ugt i8 %macid, 31
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %macid to i32
  %PTStage3 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 22
  %0 = ptrtoint ptr %PTStage3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %PTStage3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_RA_UpdateRateInfo_8188E(ptr noundef %dm_odm, i8 noundef zeroext %macid, i8 noundef zeroext %RateID, i32 noundef %RateMask, i8 noundef zeroext %SGIEnable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dm_odm, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %macid)
  %cmp1 = icmp ugt i8 %macid, 31
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %macid to i32
  %arrayidx = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %RateID, ptr %arrayidx, align 4
  %RateMask4 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 1
  %1 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %RateMask, ptr %RateMask4, align 4
  %SGIEnable5 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 6
  %2 = ptrtoint ptr %SGIEnable5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %SGIEnable, ptr %SGIEnable5, align 1
  %3 = zext i8 %RateID to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %RateID, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb5.i
    i8 3, label %sw.bb9.i
    i8 4, label %sw.bb13.i
    i8 5, label %sw.bb17.i
    i8 6, label %sw.bb21.i
    i8 12, label %sw.bb25.i
    i8 13, label %sw.bb29.i
    i8 14, label %sw.bb35.i
    i8 15, label %sw.bb41.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %RateMask4, align 4
  %and.i = and i32 %5, 261091349
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %RateMask4, align 4
  %and3.i = and i32 %7, 261091344
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %RateMask4, align 4
  %and7.i = and i32 %9, 261091333
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %RateMask4, align 4
  %and11.i = and i32 %11, 261091328
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %RateMask4, align 4
  %and15.i = and i32 %13, 4085
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %RateMask4, align 4
  %and19.i = and i32 %15, 4080
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %RateMask4, align 4
  %and23.i = and i32 %17, 13
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dm_odm, align 8
  %call.i = tail call i32 @rtw_read32(ptr noundef %19, i32 noundef 1092) #8
  %20 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %RateMask4, align 4
  %and27.i = and i32 %21, %call.i
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dm_odm, align 8
  %call31.i = tail call i32 @rtw_read32(ptr noundef %23, i32 noundef 1096) #8
  %24 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %RateMask4, align 4
  %and33.i = and i32 %25, %call31.i
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dm_odm, align 8
  %call37.i = tail call i32 @rtw_read32(ptr noundef %27, i32 noundef 1100) #8
  %28 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %RateMask4, align 4
  %and39.i = and i32 %29, %call37.i
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dm_odm, align 8
  %call43.i = tail call i32 @rtw_read32(ptr noundef %31, i32 noundef 1104) #8
  %32 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %RateMask4, align 4
  %and45.i = and i32 %33, %call43.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %RateMask4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %RateMask4, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb41.i, %sw.bb35.i, %sw.bb29.i, %sw.bb25.i, %sw.bb21.i, %sw.bb17.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %.sink.i = phi i32 [ %35, %sw.default.i ], [ %and45.i, %sw.bb41.i ], [ %and39.i, %sw.bb35.i ], [ %and33.i, %sw.bb29.i ], [ %and27.i, %sw.bb25.i ], [ %and23.i, %sw.bb21.i ], [ %and19.i, %sw.bb17.i ], [ %and15.i, %sw.bb13.i ], [ %and11.i, %sw.bb9.i ], [ %and7.i, %sw.bb5.i ], [ %and3.i, %sw.bb1.i ], [ %and.i, %sw.bb.i ]
  %RAUseRate48.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 2
  %36 = ptrtoint ptr %RAUseRate48.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink.i, ptr %RAUseRate48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink.i)
  %tobool.not.i = icmp eq i32 %.sink.i, 0
  br i1 %tobool.not.i, label %if.else76.i, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %i.05.i = phi i8 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ 28, %sw.epilog.i.for.body.i_crit_edge ]
  %conv502.i = zext i8 %i.05.i to i32
  %shl.i = shl nuw i32 1, %conv502.i
  %and54.i = and i32 %shl.i, %.sink.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %for.inc.i, label %if.then56.i

if.then56.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %HighestRate.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 9
  %37 = ptrtoint ptr %HighestRate.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %i.05.i, ptr %HighestRate.i, align 2
  br label %for.body66.preheader.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i8 %i.05.i, -1
  %cmp.not.i = icmp eq i8 %i.05.i, 0
  br i1 %cmp.not.i, label %for.inc.i.for.body66.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.body66.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66.preheader.i

for.body66.preheader.i:                           ; preds = %for.inc.i.for.body66.preheader.i_crit_edge, %if.then56.i
  %and70.i = and i32 %.sink.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %for.inc74.i, label %for.body66.preheader.i.if.end78.sink.split.i_crit_edge

for.body66.preheader.i.if.end78.sink.split.i_crit_edge: ; preds = %for.body66.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.i:                                      ; preds = %for.body66.preheader.i
  %and70.1.i = and i32 %.sink.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.1.i)
  %tobool71.not.1.i = icmp eq i32 %and70.1.i, 0
  br i1 %tobool71.not.1.i, label %for.inc74.1.i, label %for.inc74.i.if.end78.sink.split.i_crit_edge

for.inc74.i.if.end78.sink.split.i_crit_edge:      ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.1.i:                                    ; preds = %for.inc74.i
  %and70.2.i = and i32 %.sink.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.2.i)
  %tobool71.not.2.i = icmp eq i32 %and70.2.i, 0
  br i1 %tobool71.not.2.i, label %for.inc74.2.i, label %for.inc74.1.i.if.end78.sink.split.i_crit_edge

for.inc74.1.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.2.i:                                    ; preds = %for.inc74.1.i
  %and70.3.i = and i32 %.sink.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.3.i)
  %tobool71.not.3.i = icmp eq i32 %and70.3.i, 0
  br i1 %tobool71.not.3.i, label %for.inc74.3.i, label %for.inc74.2.i.if.end78.sink.split.i_crit_edge

for.inc74.2.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.3.i:                                    ; preds = %for.inc74.2.i
  %and70.4.i = and i32 %.sink.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.4.i)
  %tobool71.not.4.i = icmp eq i32 %and70.4.i, 0
  br i1 %tobool71.not.4.i, label %for.inc74.4.i, label %for.inc74.3.i.if.end78.sink.split.i_crit_edge

for.inc74.3.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.4.i:                                    ; preds = %for.inc74.3.i
  %and70.5.i = and i32 %.sink.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.5.i)
  %tobool71.not.5.i = icmp eq i32 %and70.5.i, 0
  br i1 %tobool71.not.5.i, label %for.inc74.5.i, label %for.inc74.4.i.if.end78.sink.split.i_crit_edge

for.inc74.4.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.5.i:                                    ; preds = %for.inc74.4.i
  %and70.6.i = and i32 %.sink.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.6.i)
  %tobool71.not.6.i = icmp eq i32 %and70.6.i, 0
  br i1 %tobool71.not.6.i, label %for.inc74.6.i, label %for.inc74.5.i.if.end78.sink.split.i_crit_edge

for.inc74.5.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.6.i:                                    ; preds = %for.inc74.5.i
  %and70.7.i = and i32 %.sink.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.7.i)
  %tobool71.not.7.i = icmp eq i32 %and70.7.i, 0
  br i1 %tobool71.not.7.i, label %for.inc74.7.i, label %for.inc74.6.i.if.end78.sink.split.i_crit_edge

for.inc74.6.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.7.i:                                    ; preds = %for.inc74.6.i
  %and70.8.i = and i32 %.sink.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.8.i)
  %tobool71.not.8.i = icmp eq i32 %and70.8.i, 0
  br i1 %tobool71.not.8.i, label %for.inc74.8.i, label %for.inc74.7.i.if.end78.sink.split.i_crit_edge

for.inc74.7.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.8.i:                                    ; preds = %for.inc74.7.i
  %and70.9.i = and i32 %.sink.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.9.i)
  %tobool71.not.9.i = icmp eq i32 %and70.9.i, 0
  br i1 %tobool71.not.9.i, label %for.inc74.9.i, label %for.inc74.8.i.if.end78.sink.split.i_crit_edge

for.inc74.8.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.9.i:                                    ; preds = %for.inc74.8.i
  %and70.10.i = and i32 %.sink.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.10.i)
  %tobool71.not.10.i = icmp eq i32 %and70.10.i, 0
  br i1 %tobool71.not.10.i, label %for.inc74.10.i, label %for.inc74.9.i.if.end78.sink.split.i_crit_edge

for.inc74.9.i.if.end78.sink.split.i_crit_edge:    ; preds = %for.inc74.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.10.i:                                   ; preds = %for.inc74.9.i
  %and70.11.i = and i32 %.sink.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.11.i)
  %tobool71.not.11.i = icmp eq i32 %and70.11.i, 0
  br i1 %tobool71.not.11.i, label %for.inc74.11.i, label %for.inc74.10.i.if.end78.sink.split.i_crit_edge

for.inc74.10.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.11.i:                                   ; preds = %for.inc74.10.i
  %and70.12.i = and i32 %.sink.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.12.i)
  %tobool71.not.12.i = icmp eq i32 %and70.12.i, 0
  br i1 %tobool71.not.12.i, label %for.inc74.12.i, label %for.inc74.11.i.if.end78.sink.split.i_crit_edge

for.inc74.11.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.12.i:                                   ; preds = %for.inc74.11.i
  %and70.13.i = and i32 %.sink.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.13.i)
  %tobool71.not.13.i = icmp eq i32 %and70.13.i, 0
  br i1 %tobool71.not.13.i, label %for.inc74.13.i, label %for.inc74.12.i.if.end78.sink.split.i_crit_edge

for.inc74.12.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.13.i:                                   ; preds = %for.inc74.12.i
  %and70.14.i = and i32 %.sink.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.14.i)
  %tobool71.not.14.i = icmp eq i32 %and70.14.i, 0
  br i1 %tobool71.not.14.i, label %for.inc74.14.i, label %for.inc74.13.i.if.end78.sink.split.i_crit_edge

for.inc74.13.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.14.i:                                   ; preds = %for.inc74.13.i
  %and70.15.i = and i32 %.sink.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.15.i)
  %tobool71.not.15.i = icmp eq i32 %and70.15.i, 0
  br i1 %tobool71.not.15.i, label %for.inc74.15.i, label %for.inc74.14.i.if.end78.sink.split.i_crit_edge

for.inc74.14.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.15.i:                                   ; preds = %for.inc74.14.i
  %and70.16.i = and i32 %.sink.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.16.i)
  %tobool71.not.16.i = icmp eq i32 %and70.16.i, 0
  br i1 %tobool71.not.16.i, label %for.inc74.16.i, label %for.inc74.15.i.if.end78.sink.split.i_crit_edge

for.inc74.15.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.16.i:                                   ; preds = %for.inc74.15.i
  %and70.17.i = and i32 %.sink.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.17.i)
  %tobool71.not.17.i = icmp eq i32 %and70.17.i, 0
  br i1 %tobool71.not.17.i, label %for.inc74.17.i, label %for.inc74.16.i.if.end78.sink.split.i_crit_edge

for.inc74.16.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.17.i:                                   ; preds = %for.inc74.16.i
  %and70.18.i = and i32 %.sink.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.18.i)
  %tobool71.not.18.i = icmp eq i32 %and70.18.i, 0
  br i1 %tobool71.not.18.i, label %for.inc74.18.i, label %for.inc74.17.i.if.end78.sink.split.i_crit_edge

for.inc74.17.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.18.i:                                   ; preds = %for.inc74.17.i
  %and70.19.i = and i32 %.sink.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.19.i)
  %tobool71.not.19.i = icmp eq i32 %and70.19.i, 0
  br i1 %tobool71.not.19.i, label %for.inc74.19.i, label %for.inc74.18.i.if.end78.sink.split.i_crit_edge

for.inc74.18.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.19.i:                                   ; preds = %for.inc74.18.i
  %and70.20.i = and i32 %.sink.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.20.i)
  %tobool71.not.20.i = icmp eq i32 %and70.20.i, 0
  br i1 %tobool71.not.20.i, label %for.inc74.20.i, label %for.inc74.19.i.if.end78.sink.split.i_crit_edge

for.inc74.19.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.20.i:                                   ; preds = %for.inc74.19.i
  %and70.21.i = and i32 %.sink.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.21.i)
  %tobool71.not.21.i = icmp eq i32 %and70.21.i, 0
  br i1 %tobool71.not.21.i, label %for.inc74.21.i, label %for.inc74.20.i.if.end78.sink.split.i_crit_edge

for.inc74.20.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.21.i:                                   ; preds = %for.inc74.20.i
  %and70.22.i = and i32 %.sink.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.22.i)
  %tobool71.not.22.i = icmp eq i32 %and70.22.i, 0
  br i1 %tobool71.not.22.i, label %for.inc74.22.i, label %for.inc74.21.i.if.end78.sink.split.i_crit_edge

for.inc74.21.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.22.i:                                   ; preds = %for.inc74.21.i
  %and70.23.i = and i32 %.sink.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.23.i)
  %tobool71.not.23.i = icmp eq i32 %and70.23.i, 0
  br i1 %tobool71.not.23.i, label %for.inc74.23.i, label %for.inc74.22.i.if.end78.sink.split.i_crit_edge

for.inc74.22.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.23.i:                                   ; preds = %for.inc74.22.i
  %and70.24.i = and i32 %.sink.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.24.i)
  %tobool71.not.24.i = icmp eq i32 %and70.24.i, 0
  br i1 %tobool71.not.24.i, label %for.inc74.24.i, label %for.inc74.23.i.if.end78.sink.split.i_crit_edge

for.inc74.23.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.24.i:                                   ; preds = %for.inc74.23.i
  %and70.25.i = and i32 %.sink.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.25.i)
  %tobool71.not.25.i = icmp eq i32 %and70.25.i, 0
  br i1 %tobool71.not.25.i, label %for.inc74.25.i, label %for.inc74.24.i.if.end78.sink.split.i_crit_edge

for.inc74.24.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.25.i:                                   ; preds = %for.inc74.24.i
  %and70.26.i = and i32 %.sink.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.26.i)
  %tobool71.not.26.i = icmp eq i32 %and70.26.i, 0
  br i1 %tobool71.not.26.i, label %for.inc74.26.i, label %for.inc74.25.i.if.end78.sink.split.i_crit_edge

for.inc74.25.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.26.i:                                   ; preds = %for.inc74.25.i
  %and70.27.i = and i32 %.sink.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.27.i)
  %tobool71.not.27.i = icmp eq i32 %and70.27.i, 0
  br i1 %tobool71.not.27.i, label %for.inc74.26.i.if.end78.i_crit_edge, label %for.inc74.26.i.if.end78.sink.split.i_crit_edge

for.inc74.26.i.if.end78.sink.split.i_crit_edge:   ; preds = %for.inc74.26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.sink.split.i

for.inc74.26.i.if.end78.i_crit_edge:              ; preds = %for.inc74.26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.else76.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %HighestRate57.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 9
  %38 = ptrtoint ptr %HighestRate57.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %HighestRate57.i, align 2
  br label %if.end78.sink.split.i

if.end78.sink.split.i:                            ; preds = %if.else76.i, %for.inc74.26.i.if.end78.sink.split.i_crit_edge, %for.inc74.25.i.if.end78.sink.split.i_crit_edge, %for.inc74.24.i.if.end78.sink.split.i_crit_edge, %for.inc74.23.i.if.end78.sink.split.i_crit_edge, %for.inc74.22.i.if.end78.sink.split.i_crit_edge, %for.inc74.21.i.if.end78.sink.split.i_crit_edge, %for.inc74.20.i.if.end78.sink.split.i_crit_edge, %for.inc74.19.i.if.end78.sink.split.i_crit_edge, %for.inc74.18.i.if.end78.sink.split.i_crit_edge, %for.inc74.17.i.if.end78.sink.split.i_crit_edge, %for.inc74.16.i.if.end78.sink.split.i_crit_edge, %for.inc74.15.i.if.end78.sink.split.i_crit_edge, %for.inc74.14.i.if.end78.sink.split.i_crit_edge, %for.inc74.13.i.if.end78.sink.split.i_crit_edge, %for.inc74.12.i.if.end78.sink.split.i_crit_edge, %for.inc74.11.i.if.end78.sink.split.i_crit_edge, %for.inc74.10.i.if.end78.sink.split.i_crit_edge, %for.inc74.9.i.if.end78.sink.split.i_crit_edge, %for.inc74.8.i.if.end78.sink.split.i_crit_edge, %for.inc74.7.i.if.end78.sink.split.i_crit_edge, %for.inc74.6.i.if.end78.sink.split.i_crit_edge, %for.inc74.5.i.if.end78.sink.split.i_crit_edge, %for.inc74.4.i.if.end78.sink.split.i_crit_edge, %for.inc74.3.i.if.end78.sink.split.i_crit_edge, %for.inc74.2.i.if.end78.sink.split.i_crit_edge, %for.inc74.1.i.if.end78.sink.split.i_crit_edge, %for.inc74.i.if.end78.sink.split.i_crit_edge, %for.body66.preheader.i.if.end78.sink.split.i_crit_edge
  %i.16.lcssa.wide.sink.i = phi i8 [ 0, %if.else76.i ], [ 0, %for.body66.preheader.i.if.end78.sink.split.i_crit_edge ], [ 1, %for.inc74.i.if.end78.sink.split.i_crit_edge ], [ 2, %for.inc74.1.i.if.end78.sink.split.i_crit_edge ], [ 3, %for.inc74.2.i.if.end78.sink.split.i_crit_edge ], [ 4, %for.inc74.3.i.if.end78.sink.split.i_crit_edge ], [ 5, %for.inc74.4.i.if.end78.sink.split.i_crit_edge ], [ 6, %for.inc74.5.i.if.end78.sink.split.i_crit_edge ], [ 7, %for.inc74.6.i.if.end78.sink.split.i_crit_edge ], [ 8, %for.inc74.7.i.if.end78.sink.split.i_crit_edge ], [ 9, %for.inc74.8.i.if.end78.sink.split.i_crit_edge ], [ 10, %for.inc74.9.i.if.end78.sink.split.i_crit_edge ], [ 11, %for.inc74.10.i.if.end78.sink.split.i_crit_edge ], [ 12, %for.inc74.11.i.if.end78.sink.split.i_crit_edge ], [ 13, %for.inc74.12.i.if.end78.sink.split.i_crit_edge ], [ 14, %for.inc74.13.i.if.end78.sink.split.i_crit_edge ], [ 15, %for.inc74.14.i.if.end78.sink.split.i_crit_edge ], [ 16, %for.inc74.15.i.if.end78.sink.split.i_crit_edge ], [ 17, %for.inc74.16.i.if.end78.sink.split.i_crit_edge ], [ 18, %for.inc74.17.i.if.end78.sink.split.i_crit_edge ], [ 19, %for.inc74.18.i.if.end78.sink.split.i_crit_edge ], [ 20, %for.inc74.19.i.if.end78.sink.split.i_crit_edge ], [ 21, %for.inc74.20.i.if.end78.sink.split.i_crit_edge ], [ 22, %for.inc74.21.i.if.end78.sink.split.i_crit_edge ], [ 23, %for.inc74.22.i.if.end78.sink.split.i_crit_edge ], [ 24, %for.inc74.23.i.if.end78.sink.split.i_crit_edge ], [ 25, %for.inc74.24.i.if.end78.sink.split.i_crit_edge ], [ 26, %for.inc74.25.i.if.end78.sink.split.i_crit_edge ], [ 27, %for.inc74.26.i.if.end78.sink.split.i_crit_edge ]
  %LowestRate.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 10
  %39 = ptrtoint ptr %LowestRate.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %i.16.lcssa.wide.sink.i, ptr %LowestRate.i, align 1
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end78.sink.split.i, %for.inc74.26.i.if.end78.i_crit_edge
  %HighestRate79.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 9
  %40 = ptrtoint ptr %HighestRate79.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %HighestRate79.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %41)
  %cmp81.i = icmp ugt i8 %41, 19
  br i1 %cmp81.i, label %if.then83.i, label %if.else84.i

if.then83.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  %PTModeSS.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 26
  %42 = ptrtoint ptr %PTModeSS.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %PTModeSS.i, align 2
  br label %if.end102.i

if.else84.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %41)
  %cmp87.i = icmp ugt i8 %41, 11
  br i1 %cmp87.i, label %if.then89.i, label %if.else91.i

if.then89.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #10
  %PTModeSS90.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 26
  %43 = ptrtoint ptr %PTModeSS90.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %PTModeSS90.i, align 2
  br label %if.end102.i

if.else91.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp94.i = icmp ugt i8 %41, 3
  %PTModeSS97.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 26
  br i1 %cmp94.i, label %if.then96.i, label %if.else98.i

if.then96.i:                                      ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %PTModeSS97.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %PTModeSS97.i, align 2
  br label %if.end102.i

if.else98.i:                                      ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %PTModeSS97.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %PTModeSS97.i, align 2
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else98.i, %if.then96.i, %if.then89.i, %if.then83.i
  %DecisionRate.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 7
  %46 = ptrtoint ptr %DecisionRate.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %DecisionRate.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %41)
  %cmp106.i = icmp ugt i8 %47, %41
  br i1 %cmp106.i, label %if.then108.i, label %if.end102.i.cleanup_crit_edge

if.end102.i.cleanup_crit_edge:                    ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then108.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %DecisionRate.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %41, ptr %DecisionRate.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then108.i, %if.end102.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_RA_SetRSSI_8188E(ptr noundef writeonly %dm_odm, i8 noundef zeroext %macid, i8 noundef zeroext %Rssi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dm_odm, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %macid)
  %cmp1 = icmp ugt i8 %macid, 31
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %macid to i32
  %RssiStaRA = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv, i32 4
  %0 = ptrtoint ptr %RssiStaRA to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %Rssi, ptr %RssiStaRA, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_RA_Set_TxRPT_Time(ptr nocapture noundef readonly %dm_odm, i16 noundef zeroext %minRptTime) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_odm, align 8
  %call = tail call i32 @rtw_write16(ptr noundef %1, i32 noundef 1264, i16 noundef zeroext %minRptTime) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_RA_TxRPT2Handle_8188E(ptr noundef %dm_odm, ptr nocapture noundef readonly %TxRPT_Buf, i16 noundef zeroext %TxRPT_Len, i32 noundef %macid_entry0, i32 noundef %macid_entry1) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %TxRPT_Len, 3
  br label %do.body

do.body:                                          ; preds = %if.end99.do.body_crit_edge, %entry
  %MacId.0 = phi i8 [ 0, %entry ], [ %inc108, %if.end99.do.body_crit_edge ]
  %pBuffer.0 = phi ptr [ %TxRPT_Buf, %entry ], [ %add.ptr107, %if.end99.do.body_crit_edge ]
  %minRptTime.0 = phi i16 [ -28036, %entry ], [ %95, %if.end99.do.body_crit_edge ]
  %conv1 = zext i8 %MacId.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %MacId.0)
  %cmp = icmp ugt i8 %MacId.0, 31
  %shl10 = shl nuw i32 1, %conv1
  %and11 = and i32 %shl10, %macid_entry0
  %arrayidx = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not155 = icmp eq i32 %and11, 0
  %tobool.not = select i1 %cmp, i1 true, i1 %tobool.not155
  br i1 %tobool.not, label %do.body.if.end99_crit_edge, label %if.then13

do.body.if.end99_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then13:                                        ; preds = %do.body
  %1 = ptrtoint ptr %pBuffer.0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pBuffer.0, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  %RTY = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 13
  %4 = ptrtoint ptr %RTY to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %RTY, align 4
  %add.ptr = getelementptr i8, ptr %pBuffer.0, i32 2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %conv18 = zext i8 %6 to i16
  %arrayidx20 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 13, i32 1
  %7 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv18, ptr %arrayidx20, align 2
  %add.ptr21 = getelementptr i8, ptr %pBuffer.0, i32 3
  %8 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr21, align 1
  %conv25 = zext i8 %9 to i16
  %arrayidx27 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 13, i32 2
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv25, ptr %arrayidx27, align 4
  %add.ptr28 = getelementptr i8, ptr %pBuffer.0, i32 4
  %11 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr28, align 1
  %conv32 = zext i8 %12 to i16
  %arrayidx34 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 13, i32 3
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv32, ptr %arrayidx34, align 2
  %add.ptr35 = getelementptr i8, ptr %pBuffer.0, i32 5
  %14 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr35, align 1
  %conv39 = zext i8 %15 to i16
  %arrayidx41 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 13, i32 4
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv39, ptr %arrayidx41, align 4
  %add.ptr42 = getelementptr i8, ptr %pBuffer.0, i32 6
  %17 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr42, align 1
  %conv46 = zext i8 %18 to i16
  %DROP = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 15
  %19 = ptrtoint ptr %DROP to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv46, ptr %DROP, align 4
  %conv49 = zext i16 %3 to i32
  %conv52 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv52, %conv49
  %conv55 = zext i8 %9 to i32
  %add56 = add nuw nsw i32 %add, %conv55
  %conv59 = zext i8 %12 to i32
  %add60 = add nuw nsw i32 %add56, %conv59
  %conv63 = zext i8 %15 to i32
  %add64 = add nuw nsw i32 %add60, %conv63
  %conv66 = zext i8 %18 to i32
  %add67 = add nuw nsw i32 %add64, %conv66
  %TOTAL = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 14
  %20 = ptrtoint ptr %TOTAL to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add67, ptr %TOTAL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add67)
  %cmp69.not = icmp eq i32 %add67, 0
  br i1 %cmp69.not, label %if.then13.if.end99_crit_edge, label %if.then71

if.then13.if.end99_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then71:                                        ; preds = %if.then13
  %PTActive = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 20
  %21 = ptrtoint ptr %PTActive to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %PTActive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool72.not = icmp eq i8 %22, 0
  br i1 %tobool72.not, label %if.else96, label %if.then73

if.then73:                                        ; preds = %if.then71
  %RAstage = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 27
  %23 = ptrtoint ptr %RAstage to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %RAstage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp75 = icmp ult i8 %24, 5
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @odm_RateDecision_8188E(ptr noundef %arrayidx)
  br label %if.end86

if.else78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp81 = icmp eq i8 %24, 5
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else78
  %PTTryState.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 21
  %25 = ptrtoint ptr %PTTryState.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %PTTryState.i, align 1
  %PTModeSS.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 26
  %26 = ptrtoint ptr %PTModeSS.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %PTModeSS.i, align 2
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %27, label %if.then83.sw.epilog.i_crit_edge [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb4.i
    i8 1, label %sw.bb12.i
    i8 0, label %sw.bb20.i
  ]

if.then83.sw.epilog.i_crit_edge:                  ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then83
  %DecisionRate.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 7
  %29 = ptrtoint ptr %DecisionRate.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %DecisionRate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %30)
  %cmp.i = icmp ugt i8 %30, 24
  br i1 %cmp.i, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %if.then83
  %DecisionRate5.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 7
  %31 = ptrtoint ptr %DecisionRate5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %DecisionRate5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %32)
  %cmp7.i = icmp ugt i8 %32, 16
  br i1 %cmp7.i, label %sw.bb4.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb4.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb12.i:                                        ; preds = %if.then83
  %DecisionRate13.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 7
  %33 = ptrtoint ptr %DecisionRate13.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %DecisionRate13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %34)
  %cmp15.i = icmp ugt i8 %34, 9
  br i1 %cmp15.i, label %sw.bb12.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb12.i.sw.epilog.i_crit_edge

sw.bb12.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb12.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb20.i:                                        ; preds = %if.then83
  %DecisionRate21.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 7
  %35 = ptrtoint ptr %DecisionRate21.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %DecisionRate21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp23.i = icmp ugt i8 %36, 2
  br i1 %cmp23.i, label %sw.bb20.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb20.i.sw.epilog.i_crit_edge

sw.bb20.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb20.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb20.i.sw.epilog.sink.split.i_crit_edge, %sw.bb12.i.sw.epilog.sink.split.i_crit_edge, %sw.bb4.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %37 = ptrtoint ptr %PTTryState.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %PTTryState.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb20.i.sw.epilog.i_crit_edge, %sw.bb12.i.sw.epilog.i_crit_edge, %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.then83.sw.epilog.i_crit_edge
  %RssiStaRA.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 4
  %38 = ptrtoint ptr %RssiStaRA.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %RssiStaRA.i, align 1
  %conv29.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %39)
  %cmp30.i = icmp ult i8 %39, 48
  br i1 %cmp30.i, label %if.then32.i, label %if.else.i

if.then32.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %PTStage.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 22
  %40 = ptrtoint ptr %PTStage.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %PTStage.i, align 2
  br label %odm_PTTryState_8188E.exit

if.else.i:                                        ; preds = %sw.epilog.i
  %41 = ptrtoint ptr %PTTryState.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %PTTryState.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp35.i = icmp eq i8 %42, 1
  br i1 %cmp35.i, label %if.then37.i, label %if.else83.i

if.then37.i:                                      ; preds = %if.else.i
  %PTStopCount.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 23
  %43 = ptrtoint ptr %PTStopCount.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %PTStopCount.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %44)
  %cmp39.i = icmp ugt i8 %44, 9
  br i1 %cmp39.i, label %if.then37.i.if.then59.i_crit_edge, label %lor.lhs.false.i

if.then37.i.if.then59.i_crit_edge:                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i

lor.lhs.false.i:                                  ; preds = %if.then37.i
  %PTPreRssi.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 25
  %45 = ptrtoint ptr %PTPreRssi.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %PTPreRssi.i, align 1
  %conv41.i = zext i8 %46 to i32
  %add.i = add nuw nsw i32 %conv29.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv41.i)
  %cmp44.i = icmp ult i32 %add.i, %conv41.i
  %sub.i = add nsw i32 %conv29.i, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv41.i)
  %cmp51.i = icmp sgt i32 %sub.i, %conv41.i
  %or.cond.i = select i1 %cmp44.i, i1 true, i1 %cmp51.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then59.i_crit_edge, label %lor.lhs.false53.i

lor.lhs.false.i.if.then59.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i

lor.lhs.false53.i:                                ; preds = %lor.lhs.false.i
  %DecisionRate54.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 7
  %47 = ptrtoint ptr %DecisionRate54.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %DecisionRate54.i, align 4
  %PTPreRate.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 24
  %49 = ptrtoint ptr %PTPreRate.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %PTPreRate.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp57.not.i = icmp eq i8 %48, %50
  br i1 %cmp57.not.i, label %if.else80.i, label %lor.lhs.false53.i.if.then59.i_crit_edge

lor.lhs.false53.i.if.then59.i_crit_edge:          ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i

if.then59.i:                                      ; preds = %lor.lhs.false53.i.if.then59.i_crit_edge, %lor.lhs.false.i.if.then59.i_crit_edge, %if.then37.i.if.then59.i_crit_edge
  %PTStage60.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 22
  %51 = ptrtoint ptr %PTStage60.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %PTStage60.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %switch.selectcmp.i = icmp eq i8 %52, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 3, i8 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %switch.selectcmp124.i = icmp eq i8 %52, 0
  %switch.select125.i = select i1 %switch.selectcmp124.i, i8 1, i8 %switch.select.i
  %53 = ptrtoint ptr %PTStage60.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %switch.select125.i, ptr %PTStage60.i, align 2
  %PTPreRssi78.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 25
  %54 = ptrtoint ptr %PTPreRssi78.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %39, ptr %PTPreRssi78.i, align 1
  %55 = ptrtoint ptr %PTStopCount.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %PTStopCount.i, align 1
  br label %odm_PTTryState_8188E.exit

if.else80.i:                                      ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %RAstage to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %RAstage, align 1
  %inc.i = add nuw nsw i8 %44, 1
  %57 = ptrtoint ptr %PTStopCount.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %inc.i, ptr %PTStopCount.i, align 1
  br label %odm_PTTryState_8188E.exit

if.else83.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %PTStage84.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 22
  %58 = ptrtoint ptr %PTStage84.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %PTStage84.i, align 2
  %59 = ptrtoint ptr %RAstage to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %RAstage, align 1
  br label %odm_PTTryState_8188E.exit

odm_PTTryState_8188E.exit:                        ; preds = %if.else83.i, %if.else80.i, %if.then59.i, %if.then32.i
  %DecisionRate88.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 7
  %60 = ptrtoint ptr %DecisionRate88.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %DecisionRate88.i, align 4
  %PTPreRate89.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 24
  %62 = ptrtoint ptr %PTPreRate89.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %PTPreRate89.i, align 4
  br label %if.end86

if.else84:                                        ; preds = %if.else78
  %63 = ptrtoint ptr %TOTAL to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %TOTAL, align 4
  %mul.i = shl i32 %64, 5
  %65 = ptrtoint ptr %RTY to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %RTY, align 2
  %conv3.i = zext i16 %66 to i32
  %mul7.i = mul nuw nsw i32 %conv3.i, 34
  call void @__sanitizer_cov_trace_cmp4(i32 %mul7.i, i32 %mul.i)
  %cmp8.i = icmp ugt i32 %mul7.i, %mul.i
  br i1 %cmp8.i, label %if.else84.odm_PTDecision_8188E.exit_crit_edge, label %for.inc.i

if.else84.odm_PTDecision_8188E.exit_crit_edge:    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_PTDecision_8188E.exit

for.inc.i:                                        ; preds = %if.else84
  %67 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx20, align 2
  %conv3.1.i = zext i16 %68 to i32
  %mul7.1.i = mul nuw nsw i32 %conv3.1.i, 31
  %add.1.i = add nuw nsw i32 %mul7.1.i, %mul7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %mul.i)
  %cmp8.1.i = icmp ugt i32 %add.1.i, %mul.i
  br i1 %cmp8.1.i, label %for.inc.i.odm_PTDecision_8188E.exit_crit_edge, label %for.inc.1.i

for.inc.i.odm_PTDecision_8188E.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_PTDecision_8188E.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %69 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx27, align 2
  %conv3.2.i = zext i16 %70 to i32
  %mul7.2.i = mul nuw nsw i32 %conv3.2.i, 30
  %add.2.i = add nuw nsw i32 %mul7.2.i, %add.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %mul.i)
  %cmp8.2.i = icmp ugt i32 %add.2.i, %mul.i
  br i1 %cmp8.2.i, label %for.inc.1.i.odm_PTDecision_8188E.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.odm_PTDecision_8188E.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_PTDecision_8188E.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx34, align 2
  %conv3.3.i = zext i16 %72 to i32
  %mul7.3.i = mul nuw nsw i32 %conv3.3.i, 24
  %add.3.i = add nuw nsw i32 %mul7.3.i, %add.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i, i32 %mul.i)
  %cmp8.3.i = icmp ugt i32 %add.3.i, %mul.i
  %spec.select.i = select i1 %cmp8.3.i, i32 1, i32 2
  br label %odm_PTDecision_8188E.exit

odm_PTDecision_8188E.exit:                        ; preds = %for.inc.2.i, %for.inc.1.i.odm_PTDecision_8188E.exit_crit_edge, %for.inc.i.odm_PTDecision_8188E.exit_crit_edge, %if.else84.odm_PTDecision_8188E.exit_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.else84.odm_PTDecision_8188E.exit_crit_edge ], [ 0, %for.inc.i.odm_PTDecision_8188E.exit_crit_edge ], [ 1, %for.inc.1.i.odm_PTDecision_8188E.exit_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %PTStage.i153 = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 22
  %73 = ptrtoint ptr %PTStage.i153 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %PTStage.i153, align 2
  %conv12.i = zext i8 %74 to i32
  %add13.i = add nuw nsw i32 %conv12.i, 1
  %75 = lshr i32 %add13.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %j.0.lcssa.i)
  %cmp18.i = icmp ugt i32 %75, %j.0.lcssa.i
  %sub.i154 = sub nsw i32 %75, %j.0.lcssa.i
  %phi.cast.i = shl nsw i32 %sub.i154, 4
  %stage_id.0.i = select i1 %cmp18.i, i32 %phi.cast.i, i32 0
  %PTSmoothFactor.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 28
  %76 = ptrtoint ptr %PTSmoothFactor.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %PTSmoothFactor.i, align 4
  %conv25.i = zext i8 %77 to i32
  %78 = lshr i32 %conv25.i, 1
  %79 = lshr i32 %conv25.i, 2
  %add30.i = add nuw nsw i32 %78, %79
  %add33.i = add nsw i32 %add30.i, %stage_id.0.i
  %80 = trunc i32 %add33.i to i8
  %conv35.i = add i8 %80, 2
  %81 = tail call i8 @llvm.umin.i8(i8 %conv35.i, i8 -64) #8
  %82 = ptrtoint ptr %PTSmoothFactor.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %PTSmoothFactor.i, align 4
  %83 = lshr i8 %81, 5
  %84 = and i8 %83, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp52.not.i = icmp eq i8 %84, 0
  %sub56.i = add nsw i8 %84, -1
  %85 = ptrtoint ptr %DROP to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %DROP, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %86)
  %cmp60.i = icmp ugt i16 %86, 3
  %87 = select i1 %cmp60.i, i1 true, i1 %cmp52.not.i
  %temp_stage.1.i = select i1 %87, i8 0, i8 %sub56.i
  %88 = ptrtoint ptr %PTStage.i153 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %temp_stage.1.i, ptr %PTStage.i153, align 2
  br label %if.end86

if.end86:                                         ; preds = %odm_PTDecision_8188E.exit, %odm_PTTryState_8188E.exit, %if.then77
  %89 = ptrtoint ptr %RAstage to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %RAstage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %90)
  %cmp89 = icmp ult i8 %90, 6
  br i1 %cmp89, label %if.then91, label %if.else93

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw nsw i8 %90, 1
  %91 = ptrtoint ptr %RAstage to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %inc, ptr %RAstage, align 1
  br label %if.end99

if.else93:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %RAstage to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %RAstage, align 1
  br label %if.end99

if.else96:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @odm_RateDecision_8188E(ptr noundef %arrayidx)
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.else93, %if.then91, %if.then13.if.end99_crit_edge, %do.body.if.end99_crit_edge
  %RptTime = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 19, i32 %conv1, i32 17
  %93 = ptrtoint ptr %RptTime to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %RptTime, align 4
  %95 = tail call i16 @llvm.umin.i16(i16 %minRptTime.0, i16 %94)
  %add.ptr107 = getelementptr i8, ptr %pBuffer.0, i32 8
  %inc108 = add i8 %MacId.0, 1
  %96 = zext i8 %inc108 to i16
  %cmp110 = icmp ugt i16 %0, %96
  br i1 %cmp110, label %if.end99.do.body_crit_edge, label %do.end

if.end99.do.body_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end99
  %CurrminRptTime.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 18
  %97 = ptrtoint ptr %CurrminRptTime.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %CurrminRptTime.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %95)
  %cmp.not.i = icmp eq i16 %98, %95
  br i1 %cmp.not.i, label %do.end.odm_RATxRPTTimerSetting.exit_crit_edge, label %if.then.i

do.end.odm_RATxRPTTimerSetting.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_RATxRPTTimerSetting.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dm_odm, align 8
  %call.i = tail call zeroext i8 @rtw_rpt_timer_cfg_cmd(ptr noundef %100, i16 noundef zeroext %95) #8
  %101 = ptrtoint ptr %CurrminRptTime.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %95, ptr %CurrminRptTime.i, align 8
  br label %odm_RATxRPTTimerSetting.exit

odm_RATxRPTTimerSetting.exit:                     ; preds = %if.then.i, %do.end.odm_RATxRPTTimerSetting.exit_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @odm_RateDecision_8188E(ptr noundef %pRaInfo) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %Active = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 16
  %0 = ptrtoint ptr %Active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %Active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end226_crit_edge, label %land.lhs.true

entry.if.end226_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

land.lhs.true:                                    ; preds = %entry
  %TOTAL = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 14
  %2 = ptrtoint ptr %TOTAL to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %TOTAL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end226_crit_edge, label %if.then

land.lhs.true.if.end226_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

if.then:                                          ; preds = %land.lhs.true
  %RssiStaRA = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 4
  %4 = ptrtoint ptr %RssiStaRA to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %RssiStaRA, align 1
  %conv2 = zext i8 %5 to i32
  %PreRssiStaRA = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 5
  %6 = ptrtoint ptr %PreRssiStaRA to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %PreRssiStaRA, align 2
  %conv3 = zext i8 %7 to i32
  %sub = add nsw i32 %conv3, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv2)
  %cmp4 = icmp sgt i32 %sub, %conv2
  %add = add nuw nsw i32 %conv3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv2)
  %cmp10 = icmp ult i32 %add, %conv2
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %RAWaitingCounter = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 18
  %8 = ptrtoint ptr %RAWaitingCounter to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %RAWaitingCounter, align 2
  %RAPendingCounter = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 19
  %9 = ptrtoint ptr %RAPendingCounter to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %RAPendingCounter, align 1
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %PreRate = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 8
  %10 = ptrtoint ptr %PreRate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %PreRate, align 1
  %HighestRate = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 9
  %12 = ptrtoint ptr %HighestRate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %HighestRate, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp15 = icmp ugt i8 %11, %13
  %14 = tail call i8 @llvm.umin.i8(i8 %11, i8 %13)
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr [28 x i8], ptr @RSSI_THRESHOLD, i32 0, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %16)
  %cmp24 = icmp ule i8 %5, %16
  %RtyPtID.0 = zext i1 %cmp24 to i32
  %arrayidx32 = getelementptr [2 x [28 x i8]], ptr @RETRY_PENALTY_IDX, i32 0, i32 %RtyPtID.0, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %RTY = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 13
  %19 = ptrtoint ptr %RTY to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %RTY, align 4
  %conv34 = zext i16 %20 to i32
  %idxprom35 = zext i8 %18 to i32
  %arrayidx36 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom35
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx36, align 1
  %conv38 = zext i8 %22 to i32
  %mul = mul nuw nsw i32 %conv38, %conv34
  %NscDown = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 12
  %23 = ptrtoint ptr %NscDown to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %NscDown, align 4
  %add39 = add i32 %mul, %24
  %arrayidx41 = getelementptr %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 13, i32 1
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx41, align 2
  %conv42 = zext i16 %26 to i32
  %arrayidx45 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom35, i32 1
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %28 to i32
  %mul47 = mul nuw nsw i32 %conv46, %conv42
  %add49 = add i32 %mul47, %add39
  %arrayidx51 = getelementptr %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx51, align 4
  %conv52 = zext i16 %30 to i32
  %arrayidx55 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom35, i32 2
  %31 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %32 to i32
  %mul57 = mul nuw nsw i32 %conv56, %conv52
  %add59 = add i32 %mul57, %add49
  %arrayidx61 = getelementptr %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 13, i32 3
  %33 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx61, align 2
  %conv62 = zext i16 %34 to i32
  %arrayidx65 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom35, i32 3
  %35 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %36 to i32
  %mul67 = mul nuw nsw i32 %conv66, %conv62
  %add69 = add i32 %mul67, %add59
  %arrayidx71 = getelementptr %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 13, i32 4
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx71, align 4
  %conv72 = zext i16 %38 to i32
  %arrayidx75 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom35, i32 4
  %39 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %40 to i32
  %mul77 = mul nuw nsw i32 %conv76, %conv72
  %add79 = add i32 %mul77, %add69
  store i32 %add79, ptr %NscDown, align 4
  %arrayidx84 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom35, i32 5
  %41 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %42 to i32
  %mul86 = mul i32 %3, %conv85
  %43 = tail call i32 @llvm.usub.sat.i32(i32 %add79, i32 %mul86)
  %arrayidx102 = getelementptr [28 x i8], ptr @RETRY_PENALTY_UP_IDX, i32 0, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx102, align 1
  %idxprom106 = zext i8 %45 to i32
  %arrayidx107 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom106
  %46 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx107, align 1
  %conv109 = zext i8 %47 to i32
  %mul110 = mul nuw nsw i32 %conv109, %conv34
  %NscUp = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 11
  %48 = ptrtoint ptr %NscUp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %NscUp, align 4
  %add111 = add i32 %mul110, %49
  %arrayidx117 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom106, i32 1
  %50 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %51 to i32
  %mul119 = mul nuw nsw i32 %conv118, %conv42
  %add121 = add i32 %mul119, %add111
  %arrayidx127 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom106, i32 2
  %52 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %53 to i32
  %mul129 = mul nuw nsw i32 %conv128, %conv52
  %add131 = add i32 %mul129, %add121
  %arrayidx137 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom106, i32 3
  %54 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %55 to i32
  %mul139 = mul nuw nsw i32 %conv138, %conv62
  %add141 = add i32 %mul139, %add131
  %arrayidx147 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom106, i32 4
  %56 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %57 to i32
  %mul149 = mul nuw nsw i32 %conv148, %conv72
  %add151 = add i32 %mul149, %add141
  store i32 %add151, ptr %NscUp, align 4
  %arrayidx156 = getelementptr [23 x [6 x i8]], ptr @RETRY_PENALTY, i32 0, i32 %idxprom106, i32 5
  %58 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %59 to i32
  %mul158 = mul i32 %3, %conv157
  %60 = tail call i32 @llvm.usub.sat.i32(i32 %add151, i32 %mul158)
  %arrayidx175 = getelementptr [28 x i16], ptr @N_THRESHOLD_LOW, i32 0, i32 %idxprom
  %61 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx175, align 2
  %conv176 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv176)
  %cmp177 = icmp ult i32 %43, %conv176
  br i1 %cmp177, label %if.end.if.then186_crit_edge, label %lor.lhs.false179

if.end.if.then186_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

lor.lhs.false179:                                 ; preds = %if.end
  %DROP = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 15
  %63 = ptrtoint ptr %DROP to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %DROP, align 4
  %arrayidx182 = getelementptr [28 x i8], ptr @DROPING_NECESSARY, i32 0, i32 %idxprom
  %65 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx182, align 1
  %67 = zext i8 %66 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %67)
  %cmp184 = icmp ugt i16 %64, %67
  br i1 %cmp184, label %lor.lhs.false179.if.then186_crit_edge, label %if.else187

lor.lhs.false179.if.then186_crit_edge:            ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

if.then186:                                       ; preds = %lor.lhs.false179.if.then186_crit_edge, %if.end.if.then186_crit_edge
  %cmp.i = icmp eq ptr %pRaInfo, null
  br i1 %cmp.i, label %if.then186.if.end197_crit_edge, label %if.end.i

if.then186.if.end197_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197

if.end.i:                                         ; preds = %if.then186
  %LowestRate1.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 10
  %68 = ptrtoint ptr %LowestRate1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %LowestRate1.i, align 1
  br i1 %cmp15, label %if.end.i.RateDownFinish.i_crit_edge, label %if.else.i

if.end.i.RateDownFinish.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateDownFinish.i

if.else.i:                                        ; preds = %if.end.i
  %RateSGI.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 3
  %70 = ptrtoint ptr %RateSGI.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %RateSGI.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i, label %if.else9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %RateSGI.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %RateSGI.i, align 4
  br label %RateDownFinish.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %69)
  %cmp12.i = icmp ugt i8 %11, %69
  br i1 %cmp12.i, label %for.cond.preheader.i, label %if.else9.i.RateDownFinish.i_crit_edge

if.else9.i.RateDownFinish.i_crit_edge:            ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateDownFinish.i

for.cond.preheader.i:                             ; preds = %if.else9.i
  %RAUseRate.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 2
  %73 = zext i8 %11 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %indvars.iv.i = phi i32 [ %73, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.cond.i_crit_edge ]
  %74 = trunc i32 %indvars.iv.i to i8
  %i.0.i = add i8 %74, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %i.0.i, i8 %69)
  %cmp23.i = icmp ugt i8 %i.0.i, %69
  br i1 %cmp23.i, label %for.body.i, label %for.cond.i.RateDownFinish.i_crit_edge

for.cond.i.RateDownFinish.i_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateDownFinish.i

for.body.i:                                       ; preds = %for.cond.i
  %conv21.i = zext i8 %i.0.i to i32
  %75 = ptrtoint ptr %RAUseRate.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %RAUseRate.i, align 4
  %shl.i = shl nuw i32 1, %conv21.i
  %and.i = and i32 %76, %shl.i
  %tobool26.not.i = icmp eq i32 %and.i, 0
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -1
  br i1 %tobool26.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.RateDownFinish.i_crit_edge

for.body.i.RateDownFinish.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateDownFinish.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

RateDownFinish.i:                                 ; preds = %for.body.i.RateDownFinish.i_crit_edge, %for.cond.i.RateDownFinish.i_crit_edge, %if.else9.i.RateDownFinish.i_crit_edge, %if.then7.i, %if.end.i.RateDownFinish.i_crit_edge
  %RateID.0.i = phi i8 [ %11, %if.then7.i ], [ %13, %if.end.i.RateDownFinish.i_crit_edge ], [ %69, %if.else9.i.RateDownFinish.i_crit_edge ], [ %11, %for.cond.i.RateDownFinish.i_crit_edge ], [ %i.0.i, %for.body.i.RateDownFinish.i_crit_edge ]
  %RAWaitingCounter.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 18
  %77 = ptrtoint ptr %RAWaitingCounter.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %RAWaitingCounter.i, align 2
  %79 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %78, label %if.else56.i [
    i8 1, label %if.then43.i
    i8 0, label %RateDownFinish.i.if.end60.i_crit_edge
  ]

RateDownFinish.i.if.end60.i_crit_edge:            ; preds = %RateDownFinish.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then43.i:                                      ; preds = %RateDownFinish.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %RAWaitingCounter.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 2, ptr %RAWaitingCounter.i, align 2
  %RAPendingCounter.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 19
  %81 = ptrtoint ptr %RAPendingCounter.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %RAPendingCounter.i, align 1
  %add48.i = add i8 %82, 1
  store i8 %add48.i, ptr %RAPendingCounter.i, align 1
  br label %if.end60.i

if.else56.i:                                      ; preds = %RateDownFinish.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %RAWaitingCounter.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %RAWaitingCounter.i, align 2
  %RAPendingCounter58.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 19
  %84 = ptrtoint ptr %RAPendingCounter58.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %RAPendingCounter58.i, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else56.i, %if.then43.i, %RateDownFinish.i.if.end60.i_crit_edge
  %RAPendingCounter61.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 19
  %85 = ptrtoint ptr %RAPendingCounter61.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %RAPendingCounter61.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %86)
  %cmp63.i = icmp ugt i8 %86, 3
  br i1 %cmp63.i, label %if.then65.i, label %if.end60.i.if.end67.i_crit_edge

if.end60.i.if.end67.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.then65.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %RAPendingCounter61.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 4, ptr %RAPendingCounter61.i, align 1
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then65.i, %if.end60.i.if.end67.i_crit_edge
  %DecisionRate.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 7
  %88 = ptrtoint ptr %DecisionRate.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %RateID.0.i, ptr %DecisionRate.i, align 4
  %RptTime.i.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 17
  %89 = ptrtoint ptr %RptTime.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %RptTime.i.i, align 4
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %90, label %for.inc.4.i.i [
    i16 6250, label %if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge
    i16 12500, label %if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge27
    i16 18750, label %for.end.fold.split.i.i
    i16 25000, label %for.end.fold.split2.i.i
    i16 31250, label %for.end.fold.split3.i.i
  ]

if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge27: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit.i

if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit.i

for.inc.4.i.i:                                    ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit.i

for.end.fold.split.i.i:                           ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit.i

for.end.fold.split2.i.i:                          ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit.i

for.end.fold.split3.i.i:                          ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit.i

odm_SetTxRPTTiming_8188E.exit.i:                  ; preds = %for.end.fold.split3.i.i, %for.end.fold.split2.i.i, %for.end.fold.split.i.i, %for.inc.4.i.i, %if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge, %if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge27
  %spec.select.i.i = phi i32 [ 0, %if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge ], [ 4, %for.inc.4.i.i ], [ 1, %for.end.fold.split.i.i ], [ 2, %for.end.fold.split2.i.i ], [ 3, %for.end.fold.split3.i.i ], [ 0, %if.end67.i.odm_SetTxRPTTiming_8188E.exit.i_crit_edge27 ]
  %arrayidx37.i.i = getelementptr [6 x i16], ptr @DynamicTxRPTTiming, i32 0, i32 %spec.select.i.i
  %92 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx37.i.i, align 2
  %94 = ptrtoint ptr %RptTime.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %RptTime.i.i, align 4
  br label %if.end197

if.else187:                                       ; preds = %lor.lhs.false179
  %arrayidx190 = getelementptr [28 x i16], ptr @N_THRESHOLD_HIGH, i32 0, i32 %idxprom
  %95 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx190, align 2
  %conv191 = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv191)
  %cmp192 = icmp ule i32 %60, %conv191
  %cmp.i3 = icmp eq ptr %pRaInfo, null
  %or.cond26 = or i1 %cmp.i3, %cmp192
  br i1 %or.cond26, label %if.else187.if.end197_crit_edge, label %if.end.i6

if.else187.if.end197_crit_edge:                   ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197

if.end.i6:                                        ; preds = %if.else187
  %RAWaitingCounter.i5 = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 18
  %97 = ptrtoint ptr %RAWaitingCounter.i5 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %RAWaitingCounter.i5, align 2
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %98, label %if.then10.i [
    i8 1, label %if.then4.i
    i8 0, label %if.end.i6.if.end12.i_crit_edge
  ]

if.end.i6.if.end12.i_crit_edge:                   ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %RAWaitingCounter.i5 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %RAWaitingCounter.i5, align 2
  %RAPendingCounter.i7 = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 19
  %101 = ptrtoint ptr %RAPendingCounter.i7 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %RAPendingCounter.i7, align 1
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %PreRssiStaRA to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %5, ptr %PreRssiStaRA, align 2
  br label %RateUpfinish.i

if.end12.i:                                       ; preds = %if.then4.i, %if.end.i6.if.end12.i_crit_edge
  %RptTime.i.i8 = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 17
  %103 = ptrtoint ptr %RptTime.i.i8 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 6250, ptr %RptTime.i.i8, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp15.i = icmp ult i8 %11, %13
  br i1 %cmp15.i, label %for.cond.preheader.i10, label %if.else27.i

for.cond.preheader.i10:                           ; preds = %if.end12.i
  %RAUseRate.i9 = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 2
  br label %for.cond.i12

for.cond.i12:                                     ; preds = %for.body.i16.for.cond.i12_crit_edge, %for.cond.preheader.i10
  %i.0.in.i = phi i8 [ %i.0.i11, %for.body.i16.for.cond.i12_crit_edge ], [ %11, %for.cond.preheader.i10 ]
  %i.0.i11 = add i8 %i.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %i.0.i11, i8 %13)
  %cmp22.not.i = icmp ugt i8 %i.0.i11, %13
  br i1 %cmp22.not.i, label %for.cond.i12.RateUpfinish.i_crit_edge, label %for.body.i16

for.cond.i12.RateUpfinish.i_crit_edge:            ; preds = %for.cond.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateUpfinish.i

for.body.i16:                                     ; preds = %for.cond.i12
  %conv20.i = zext i8 %i.0.i11 to i32
  %104 = ptrtoint ptr %RAUseRate.i9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %RAUseRate.i9, align 4
  %shl.i13 = shl nuw i32 1, %conv20.i
  %and.i14 = and i32 %105, %shl.i13
  %tobool.not.i15 = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i15, label %for.body.i16.for.cond.i12_crit_edge, label %for.body.i16.RateUpfinish.i_crit_edge

for.body.i16.RateUpfinish.i_crit_edge:            ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateUpfinish.i

for.body.i16.for.cond.i12_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i12

if.else27.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp30.i = icmp eq i8 %11, %13
  br i1 %cmp30.i, label %if.then32.i, label %if.else27.i.RateUpfinish.i_crit_edge

if.else27.i.RateUpfinish.i_crit_edge:             ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateUpfinish.i

if.then32.i:                                      ; preds = %if.else27.i
  %SGIEnable.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 6
  %106 = ptrtoint ptr %SGIEnable.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %SGIEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool34.not.i = icmp eq i8 %107, 0
  br i1 %tobool34.not.i, label %if.then32.i.if.then45.i_crit_edge, label %land.lhs.true.i

if.then32.i.if.then45.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i

land.lhs.true.i:                                  ; preds = %if.then32.i
  %RateSGI.i17 = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 3
  %108 = ptrtoint ptr %RateSGI.i17 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %RateSGI.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp36.not.i = icmp eq i8 %109, 1
  br i1 %cmp36.not.i, label %if.else40.i, label %if.then38.i

if.then38.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %RateSGI.i17 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %RateSGI.i17, align 4
  br label %RateUpfinish.i

if.else40.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp43.not.i = icmp eq i8 %107, 1
  br i1 %cmp43.not.i, label %if.else40.i.RateUpfinish.i_crit_edge, label %if.else40.i.if.then45.i_crit_edge

if.else40.i.if.then45.i_crit_edge:                ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i

if.else40.i.RateUpfinish.i_crit_edge:             ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %RateUpfinish.i

if.then45.i:                                      ; preds = %if.else40.i.if.then45.i_crit_edge, %if.then32.i.if.then45.i_crit_edge
  %RateSGI46.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 3
  %111 = ptrtoint ptr %RateSGI46.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %RateSGI46.i, align 4
  br label %RateUpfinish.i

RateUpfinish.i:                                   ; preds = %if.then45.i, %if.else40.i.RateUpfinish.i_crit_edge, %if.then38.i, %if.else27.i.RateUpfinish.i_crit_edge, %for.body.i16.RateUpfinish.i_crit_edge, %for.cond.i12.RateUpfinish.i_crit_edge, %if.then10.i
  %RateID.0.i18 = phi i8 [ %11, %if.then38.i ], [ %11, %if.then45.i ], [ %11, %if.else40.i.RateUpfinish.i_crit_edge ], [ %11, %if.then10.i ], [ %13, %if.else27.i.RateUpfinish.i_crit_edge ], [ %11, %for.cond.i12.RateUpfinish.i_crit_edge ], [ %i.0.i11, %for.body.i16.RateUpfinish.i_crit_edge ]
  %112 = ptrtoint ptr %RAWaitingCounter.i5 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %RAWaitingCounter.i5, align 2
  %conv53.i = zext i8 %113 to i32
  %RAPendingCounter54.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 19
  %114 = ptrtoint ptr %RAPendingCounter54.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %RAPendingCounter54.i, align 1
  %idxprom.i = zext i8 %115 to i32
  %arrayidx.i = getelementptr [5 x i8], ptr @PendingForRateUpFail, i32 0, i32 %idxprom.i
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i, align 1
  %conv55.i = zext i8 %117 to i32
  %add56.i = add nuw nsw i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add56.i, i32 %conv53.i)
  %cmp57.i = icmp eq i32 %add56.i, %conv53.i
  %inc63.i = add i8 %113, 1
  %storemerge.i = select i1 %cmp57.i, i8 0, i8 %inc63.i
  %118 = ptrtoint ptr %RAWaitingCounter.i5 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %storemerge.i, ptr %RAWaitingCounter.i5, align 2
  %DecisionRate.i19 = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 7
  %119 = ptrtoint ptr %DecisionRate.i19 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %RateID.0.i18, ptr %DecisionRate.i19, align 4
  br label %if.end197

if.end197:                                        ; preds = %RateUpfinish.i, %if.else187.if.end197_crit_edge, %odm_SetTxRPTTiming_8188E.exit.i, %if.then186.if.end197_crit_edge
  %DecisionRate = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 7
  %120 = ptrtoint ptr %DecisionRate to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %DecisionRate, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %121, i8 %13)
  %cmp201 = icmp ugt i8 %121, %13
  br i1 %cmp201, label %if.then203, label %if.end197.if.end206_crit_edge

if.end197.if.end206_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

if.then203:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %DecisionRate to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %13, ptr %DecisionRate, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then203, %if.end197.if.end206_crit_edge
  %123 = ptrtoint ptr %DecisionRate to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %DecisionRate, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %124, i8 %11)
  %cmp211 = icmp eq i8 %124, %11
  br i1 %cmp211, label %if.end218, label %if.end206.if.end223.sink.split_crit_edge

if.end206.if.end223.sink.split_crit_edge:         ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223.sink.split

if.end218:                                        ; preds = %if.end206
  %125 = load i8, ptr @odm_RateDecision_8188E.DynamicTxRPTTimingCounter, align 1
  %add215 = add i8 %125, 1
  store i8 %add215, ptr @odm_RateDecision_8188E.DynamicTxRPTTimingCounter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %add215)
  %cmp220 = icmp ugt i8 %add215, 3
  br i1 %cmp220, label %if.then222, label %if.end218.if.end223_crit_edge

if.end218.if.end223_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

if.then222:                                       ; preds = %if.end218
  %RptTime.i = getelementptr inbounds %struct.odm_ra_info, ptr %pRaInfo, i32 0, i32 17
  %126 = ptrtoint ptr %RptTime.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %RptTime.i, align 4
  %128 = zext i16 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %127, label %for.inc.4.i [
    i16 6250, label %if.then222.odm_SetTxRPTTiming_8188E.exit_crit_edge
    i16 12500, label %odm_SetTxRPTTiming_8188E.exit.fold.split
    i16 18750, label %for.end.fold.split.i
    i16 25000, label %for.end.fold.split2.i
    i16 31250, label %for.end.fold.split3.i
  ]

if.then222.odm_SetTxRPTTiming_8188E.exit_crit_edge: ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit

for.inc.4.i:                                      ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit

for.end.fold.split.i:                             ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit

for.end.fold.split2.i:                            ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit

for.end.fold.split3.i:                            ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit

odm_SetTxRPTTiming_8188E.exit.fold.split:         ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_SetTxRPTTiming_8188E.exit

odm_SetTxRPTTiming_8188E.exit:                    ; preds = %odm_SetTxRPTTiming_8188E.exit.fold.split, %for.end.fold.split3.i, %for.end.fold.split2.i, %for.end.fold.split.i, %for.inc.4.i, %if.then222.odm_SetTxRPTTiming_8188E.exit_crit_edge
  %idx.0.lcssa.i = phi i8 [ 0, %if.then222.odm_SetTxRPTTiming_8188E.exit_crit_edge ], [ 5, %for.inc.4.i ], [ 2, %for.end.fold.split.i ], [ 3, %for.end.fold.split2.i ], [ 4, %for.end.fold.split3.i ], [ 1, %odm_SetTxRPTTiming_8188E.exit.fold.split ]
  %129 = tail call i8 @llvm.umin.i8(i8 %idx.0.lcssa.i, i8 4) #8
  %130 = add nuw nsw i8 %129, 1
  %idxprom36.i = zext i8 %130 to i32
  %arrayidx37.i = getelementptr [6 x i16], ptr @DynamicTxRPTTiming, i32 0, i32 %idxprom36.i
  %131 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx37.i, align 2
  %133 = ptrtoint ptr %RptTime.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %RptTime.i, align 4
  br label %if.end223.sink.split

if.end223.sink.split:                             ; preds = %odm_SetTxRPTTiming_8188E.exit, %if.end206.if.end223.sink.split_crit_edge
  store i8 0, ptr @odm_RateDecision_8188E.DynamicTxRPTTimingCounter, align 1
  br label %if.end223

if.end223:                                        ; preds = %if.end223.sink.split, %if.end218.if.end223_crit_edge
  %134 = ptrtoint ptr %PreRate to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %124, ptr %PreRate, align 1
  %idxprom.i22 = zext i8 %124 to i32
  %arrayidx.i23 = getelementptr [28 x i16], ptr @N_THRESHOLD_HIGH, i32 0, i32 %idxprom.i22
  %135 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx.i23, align 2
  %conv.i = zext i16 %136 to i32
  %arrayidx2.i = getelementptr [28 x i16], ptr @N_THRESHOLD_LOW, i32 0, i32 %idxprom.i22
  %137 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx2.i, align 2
  %conv3.i = zext i16 %138 to i32
  %add.i = add nuw nsw i32 %conv3.i, %conv.i
  %139 = lshr i32 %add.i, 1
  %140 = ptrtoint ptr %NscUp to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %NscUp, align 4
  %141 = ptrtoint ptr %NscDown to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %139, ptr %NscDown, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.end223, %land.lhs.true.if.end226_crit_edge, %entry.if.end226_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_rpt_timer_cfg_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @N_THRESHOLD_HIGH, !1, !"N_THRESHOLD_HIGH", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 57, i32 12}
!2 = !{ptr @N_THRESHOLD_LOW, !3, !"N_THRESHOLD_LOW", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 62, i32 12}
!4 = !{ptr @odm_RateDecision_8188E.DynamicTxRPTTimingCounter, !5, !"DynamicTxRPTTimingCounter", i1 false, i1 false}
!5 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 212, i32 12}
!6 = !{ptr @RSSI_THRESHOLD, !7, !"RSSI_THRESHOLD", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 51, i32 11}
!8 = !{ptr @RETRY_PENALTY_IDX, !9, !"RETRY_PENALTY_IDX", i1 false, i1 false}
!9 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 35, i32 11}
!10 = !{ptr @RETRY_PENALTY, !11, !"RETRY_PENALTY", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 6, i32 11}
!12 = !{ptr @RETRY_PENALTY_UP_IDX, !13, !"RETRY_PENALTY_UP_IDX", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 45, i32 11}
!14 = !{ptr @DROPING_NECESSARY, !15, !"DROPING_NECESSARY", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 68, i32 11}
!16 = !{ptr @PendingForRateUpFail, !17, !"PendingForRateUpFail", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 74, i32 11}
!18 = !{ptr @DynamicTxRPTTiming, !19, !"DynamicTxRPTTiming", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 75, i32 12}
!20 = distinct !{null, !21, !"PT_PENALTY", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/hal/Hal8188ERateAdaptive.c", i32 32, i32 11}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
