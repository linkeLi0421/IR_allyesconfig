; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c"
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

@Array_MP_8723B_MAC_REG = internal constant { [206 x i32], [200 x i8] } { [206 x i32] [i32 47, i32 48, i32 53, i32 0, i32 57, i32 8, i32 78, i32 224, i32 100, i32 0, i32 103, i32 32, i32 1064, i32 10, i32 1065, i32 16, i32 1072, i32 0, i32 1073, i32 0, i32 1074, i32 0, i32 1075, i32 1, i32 1076, i32 4, i32 1077, i32 5, i32 1078, i32 7, i32 1079, i32 8, i32 1084, i32 4, i32 1085, i32 5, i32 1086, i32 7, i32 1087, i32 8, i32 1088, i32 93, i32 1089, i32 1, i32 1090, i32 0, i32 1092, i32 16, i32 1093, i32 0, i32 1094, i32 0, i32 1095, i32 0, i32 1096, i32 0, i32 1097, i32 240, i32 1098, i32 15, i32 1099, i32 62, i32 1100, i32 16, i32 1101, i32 0, i32 1102, i32 0, i32 1103, i32 0, i32 1104, i32 0, i32 1105, i32 240, i32 1106, i32 15, i32 1107, i32 0, i32 1110, i32 94, i32 1120, i32 102, i32 1121, i32 102, i32 1224, i32 255, i32 1225, i32 8, i32 1228, i32 255, i32 1229, i32 255, i32 1230, i32 1, i32 1280, i32 38, i32 1281, i32 162, i32 1282, i32 47, i32 1283, i32 0, i32 1284, i32 40, i32 1285, i32 163, i32 1286, i32 94, i32 1287, i32 0, i32 1288, i32 43, i32 1289, i32 164, i32 1290, i32 94, i32 1291, i32 0, i32 1292, i32 79, i32 1293, i32 164, i32 1294, i32 0, i32 1295, i32 0, i32 1298, i32 28, i32 1300, i32 10, i32 1302, i32 10, i32 1317, i32 79, i32 1360, i32 16, i32 1361, i32 16, i32 1369, i32 2, i32 1372, i32 80, i32 1373, i32 255, i32 1541, i32 48, i32 1544, i32 14, i32 1545, i32 42, i32 1568, i32 255, i32 1569, i32 255, i32 1570, i32 255, i32 1571, i32 255, i32 1572, i32 255, i32 1573, i32 255, i32 1574, i32 255, i32 1575, i32 255, i32 1592, i32 80, i32 1596, i32 10, i32 1597, i32 10, i32 1598, i32 14, i32 1599, i32 14, i32 1600, i32 64, i32 1602, i32 64, i32 1603, i32 0, i32 1618, i32 200, i32 1646, i32 5, i32 1792, i32 33, i32 1793, i32 67, i32 1794, i32 101, i32 1795, i32 135, i32 1800, i32 33, i32 1801, i32 67, i32 1802, i32 101, i32 1803, i32 135, i32 1893, i32 24, i32 1902, i32 4], [200 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"Array_MP_8723B_MAC_REG\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 82, i32 12 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @Array_MP_8723B_MAC_REG], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Array_MP_8723B_MAC_REG to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ReadAndConfig_MP_8723B_MAC_REG(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %BoardType.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 19
  %CutVersion.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 16
  %SupportPlatform.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 12
  %PackageType.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 20
  %SupportInterface.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 14
  %TypeGLNA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 21
  %TypeGPA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 22
  %TypeALNA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 23
  %TypeAPA.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0253 = phi i32 [ 0, %entry ], [ %add147, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %i.0253
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0253, 1
  %arrayidx1 = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp2 = icmp ult i32 %1, 1073741824
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %conv = trunc i32 %3 to i8
  tail call void @odm_ConfigMAC_8723B(ptr noundef %pDM_Odm, i32 noundef %1, i8 noundef zeroext %conv) #2
  br label %cleanup

if.else:                                          ; preds = %for.body
  %4 = and i32 %1, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %4)
  %cmp5 = icmp eq i32 %4, 536870912
  br i1 %cmp5, label %if.then7, label %if.else16

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 203, i32 %i.0253)
  %cmp9 = icmp ugt i32 %i.0253, 203
  br i1 %cmp9, label %if.then7.for.end_crit_edge, label %if.then7.while.cond92.preheader_crit_edge

if.then7.while.cond92.preheader_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond92.preheader

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.else16:                                        ; preds = %if.else
  %5 = ptrtoint ptr %BoardType.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %BoardType.i, align 1
  %and.i = lshr i8 %6, 4
  %7 = and i8 %and.i, 1
  %8 = lshr i8 %6, 2
  %shl5.i = and i8 %8, 2
  %or.i = or i8 %7, %shl5.i
  %9 = lshr i8 %6, 5
  %shl10.i = and i8 %9, 4
  %or11.i = or i8 %or.i, %shl10.i
  %10 = lshr i8 %6, 3
  %shl16.i = and i8 %10, 8
  %or17.i = or i8 %or11.i, %shl16.i
  %11 = shl i8 %6, 2
  %shl22.i = and i8 %11, 16
  %or23.i = or i8 %or17.i, %shl22.i
  %12 = ptrtoint ptr %CutVersion.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %CutVersion.i, align 8
  %conv25.i = zext i8 %13 to i32
  %shl26.i = shl nuw i32 %conv25.i, 24
  %14 = ptrtoint ptr %SupportPlatform.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %SupportPlatform.i, align 1
  %conv27.i = zext i8 %15 to i32
  %shl28.i = shl nuw nsw i32 %conv27.i, 16
  %or29.i = or i32 %shl28.i, %shl26.i
  %16 = ptrtoint ptr %PackageType.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %PackageType.i, align 4
  %conv30.i = zext i8 %17 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 12
  %or32.i = or i32 %or29.i, %shl31.i
  %18 = ptrtoint ptr %SupportInterface.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %SupportInterface.i, align 8
  %conv33.i = zext i8 %19 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 8
  %or35.i = or i32 %or32.i, %shl34.i
  %conv36.i = zext i8 %or23.i to i32
  %20 = ptrtoint ptr %TypeGLNA.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %TypeGLNA.i, align 1
  %conv38.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %TypeGPA.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %TypeGPA.i, align 2
  %conv40.i = zext i8 %23 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %or42.i = or i32 %shl41.i, %conv38.i
  %24 = ptrtoint ptr %TypeALNA.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %TypeALNA.i, align 1
  %conv43.i = zext i8 %25 to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 16
  %or45.i = or i32 %or42.i, %shl44.i
  %26 = ptrtoint ptr %TypeAPA.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %TypeAPA.i, align 8
  %conv46.i = zext i8 %27 to i32
  %shl47.i = shl nuw i32 %conv46.i, 24
  %or48.i = or i32 %or45.i, %shl47.i
  %and49.i = and i32 %1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %cmp.not.i = icmp eq i32 %and49.i, 0
  %and52.i = and i32 %or35.i, 61440
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i, i32 %and52.i)
  %cmp53.not.i = icmp eq i32 %and49.i, %and52.i
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp53.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.else16.if.then17_crit_edge

if.else16.if.then17_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then17

if.end.i:                                         ; preds = %if.else16
  %and55.i = and i32 %1, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %cmp56.not.i = icmp eq i32 %and55.i, 0
  %and60.i = and i32 %shl26.i, 251658240
  call void @__sanitizer_cov_trace_cmp4(i32 %and55.i, i32 %and60.i)
  %cmp61.not.i = icmp eq i32 %and55.i, %and60.i
  %or.cond143.i = select i1 %cmp56.not.i, i1 true, i1 %cmp61.not.i
  br i1 %or.cond143.i, label %if.end64.i, label %if.end.i.if.then17_crit_edge

if.end.i.if.then17_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then17

if.end64.i:                                       ; preds = %if.end.i
  %or35.masked.i = and i32 %or35.i, 986880
  %and66.i = or i32 %or35.masked.i, %conv36.i
  %28 = xor i32 %and66.i, 987135
  %29 = and i32 %28, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp68.i = icmp eq i32 %29, 0
  br i1 %cmp68.i, label %if.then70.i, label %if.end64.i.if.then17_crit_edge

if.end64.i.if.then17_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then17

if.then70.i:                                      ; preds = %if.end64.i
  %and71.i = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %cmp72.i = icmp eq i32 %and71.i, 0
  br i1 %cmp72.i, label %if.then70.i.do.body43_crit_edge, label %CheckPositive.exit

if.then70.i.do.body43_crit_edge:                  ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body43

CheckPositive.exit:                               ; preds = %if.then70.i
  %and76.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %cmp77.not.i = icmp eq i32 %and76.i, 0
  %spec.select.i = select i1 %cmp77.not.i, i32 0, i32 255
  %and82.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %cmp83.not.i = icmp eq i32 %and82.i, 0
  %or86.i = or i32 %spec.select.i, 65280
  %bitMask.1.i = select i1 %cmp83.not.i, i32 %spec.select.i, i32 %or86.i
  %and88.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %cmp89.not.i = icmp eq i32 %and88.i, 0
  %or92.i = or i32 %bitMask.1.i, 16711680
  %bitMask.2.i = select i1 %cmp89.not.i, i32 %bitMask.1.i, i32 %or92.i
  %and94.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %cmp95.not.i = icmp eq i32 %and94.i, 0
  %or98.i = or i32 %bitMask.2.i, -16777216
  %bitMask.3.i = select i1 %cmp95.not.i, i32 %bitMask.2.i, i32 %or98.i
  %30 = xor i32 %or48.i, %3
  %31 = and i32 %30, %bitMask.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp102.i = icmp eq i32 %31, 0
  br i1 %cmp102.i, label %CheckPositive.exit.do.body43_crit_edge, label %CheckPositive.exit.if.then17_crit_edge

CheckPositive.exit.if.then17_crit_edge:           ; preds = %CheckPositive.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then17

CheckPositive.exit.do.body43_crit_edge:           ; preds = %CheckPositive.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body43

if.then17:                                        ; preds = %CheckPositive.exit.if.then17_crit_edge, %if.end64.i.if.then17_crit_edge, %if.end.i.if.then17_crit_edge, %if.else16.if.then17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 203, i32 %i.0253)
  %cmp20 = icmp ugt i32 %i.0253, 203
  br i1 %cmp20, label %if.then17.while.end_crit_edge, label %do.body30

if.then17.while.end_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.body30:                                        ; preds = %if.then17
  %add19 = add nuw nsw i32 %i.0253, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %i.0253)
  %cmp32 = icmp ugt i32 %i.0253, 201
  br i1 %cmp32, label %do.body30.while.end_crit_edge, label %while.cond.preheader

do.body30.while.end_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.body43:                                        ; preds = %CheckPositive.exit.do.body43_crit_edge, %if.then70.i.do.body43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %i.0253)
  %cmp61 = icmp ugt i32 %i.0253, 201
  br i1 %cmp61, label %do.body43.for.end_crit_edge, label %if.end64

do.body43.for.end_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end64:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #4
  %add44 = add nuw nsw i32 %i.0253, 2
  br label %while.cond92.preheader

while.cond92.preheader:                           ; preds = %if.end64, %if.then7.while.cond92.preheader_crit_edge
  %.sink = phi i32 [ 4, %if.end64 ], [ 2, %if.then7.while.cond92.preheader_crit_edge ]
  %i.0253.sink = phi i32 [ %add44, %if.end64 ], [ %i.0253, %if.then7.while.cond92.preheader_crit_edge ]
  %add8 = add nuw nsw i32 %i.0253, %.sink
  %arrayidx13 = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %add8
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %33)
  %cmp93240 = icmp ult i32 %33, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %add8)
  %cmp97241 = icmp ult i32 %add8, 204
  %or.cond231242 = select i1 %cmp93240, i1 %cmp97241, i1 false
  br i1 %or.cond231242, label %while.cond92.preheader.while.body100_crit_edge, label %while.cond92.preheader.while.cond118.preheader_crit_edge

while.cond92.preheader.while.cond118.preheader_crit_edge: ; preds = %while.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond118.preheader

while.cond92.preheader.while.body100_crit_edge:   ; preds = %while.cond92.preheader
  br label %while.body100

while.cond.preheader:                             ; preds = %do.body30
  %add31 = add nuw nsw i32 %i.0253, 4
  %arrayidx37 = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %add31
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %35)
  %cmp74236 = icmp ult i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %i.0253)
  %cmp76237 = icmp ult i32 %i.0253, 200
  %or.cond238 = select i1 %cmp74236, i1 %cmp76237, i1 false
  br i1 %or.cond238, label %while.cond.preheader.do.body78_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.cond.preheader.do.body78_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body78

do.body78:                                        ; preds = %do.body78.do.body78_crit_edge, %while.cond.preheader.do.body78_crit_edge
  %i.4239 = phi i32 [ %add79, %do.body78.do.body78_crit_edge ], [ %add31, %while.cond.preheader.do.body78_crit_edge ]
  %add79 = add nuw nsw i32 %i.4239, 2
  %arrayidx85 = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %add79
  %36 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %37)
  %cmp74 = icmp ult i32 %37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 202, i32 %i.4239)
  %cmp76 = icmp ult i32 %i.4239, 202
  %or.cond = select i1 %cmp74, i1 %cmp76, i1 false
  br i1 %or.cond, label %do.body78.do.body78_crit_edge, label %do.body78.while.end_crit_edge

do.body78.while.end_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.body78.do.body78_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body78

while.end:                                        ; preds = %do.body78.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge, %do.body30.while.end_crit_edge, %if.then17.while.end_crit_edge
  %i.4.lcssa = phi i32 [ %add31, %while.cond.preheader.while.end_crit_edge ], [ %add19, %do.body30.while.end_crit_edge ], [ %i.0253, %if.then17.while.end_crit_edge ], [ %add79, %do.body78.while.end_crit_edge ]
  %sub90 = add nsw i32 %i.4.lcssa, -2
  br label %cleanup

while.cond118.preheader:                          ; preds = %while.body100.while.cond118.preheader_crit_edge, %while.cond92.preheader.while.cond118.preheader_crit_edge
  %i.6.lcssa = phi i32 [ %add8, %while.cond92.preheader.while.cond118.preheader_crit_edge ], [ %add103, %while.body100.while.cond118.preheader_crit_edge ]
  %v1.5.lcssa = phi i32 [ %33, %while.cond92.preheader.while.cond118.preheader_crit_edge ], [ %41, %while.body100.while.cond118.preheader_crit_edge ]
  %38 = and i32 %v1.5.lcssa, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %38)
  %cmp120.not248 = icmp ne i32 %38, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %i.6.lcssa)
  %cmp124249 = icmp ult i32 %i.6.lcssa, 204
  %or.cond232250 = select i1 %cmp120.not248, i1 %cmp124249, i1 false
  br i1 %or.cond232250, label %while.cond118.preheader.do.body128_crit_edge, label %while.cond118.preheader.cleanup_crit_edge

while.cond118.preheader.cleanup_crit_edge:        ; preds = %while.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.cond118.preheader.do.body128_crit_edge:     ; preds = %while.cond118.preheader
  br label %do.body128

while.body100:                                    ; preds = %while.body100.while.body100_crit_edge, %while.cond92.preheader.while.body100_crit_edge
  %add110.pn.in = phi i32 [ %i.6243, %while.body100.while.body100_crit_edge ], [ %i.0253.sink, %while.cond92.preheader.while.body100_crit_edge ]
  %v1.5244 = phi i32 [ %41, %while.body100.while.body100_crit_edge ], [ %33, %while.cond92.preheader.while.body100_crit_edge ]
  %i.6243 = phi i32 [ %add103, %while.body100.while.body100_crit_edge ], [ %add8, %while.cond92.preheader.while.body100_crit_edge ]
  %add110.pn = add nuw nsw i32 %add110.pn.in, 3
  %v2.3245.in = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %add110.pn
  %39 = ptrtoint ptr %v2.3245.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %v2.3245 = load i32, ptr %v2.3245.in, align 4
  %conv101 = trunc i32 %v2.3245 to i8
  tail call void @odm_ConfigMAC_8723B(ptr noundef %pDM_Odm, i32 noundef %v1.5244, i8 noundef zeroext %conv101) #2
  %add103 = add nuw nsw i32 %i.6243, 2
  %arrayidx109 = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %add103
  %40 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %41)
  %cmp93 = icmp ult i32 %41, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 202, i32 %i.6243)
  %cmp97 = icmp ult i32 %i.6243, 202
  %or.cond231 = select i1 %cmp93, i1 %cmp97, i1 false
  br i1 %or.cond231, label %while.body100.while.body100_crit_edge, label %while.body100.while.cond118.preheader_crit_edge

while.body100.while.cond118.preheader_crit_edge:  ; preds = %while.body100
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond118.preheader

while.body100.while.body100_crit_edge:            ; preds = %while.body100
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body100

do.body128:                                       ; preds = %do.body128.do.body128_crit_edge, %while.cond118.preheader.do.body128_crit_edge
  %i.8251 = phi i32 [ %add129, %do.body128.do.body128_crit_edge ], [ %i.6.lcssa, %while.cond118.preheader.do.body128_crit_edge ]
  %add129 = add nuw nsw i32 %i.8251, 2
  %arrayidx135 = getelementptr i32, ptr @Array_MP_8723B_MAC_REG, i32 %add129
  %42 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx135, align 4
  %44 = and i32 %43, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %44)
  %cmp120.not = icmp ne i32 %44, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 202, i32 %i.8251)
  %cmp124 = icmp ult i32 %i.8251, 202
  %or.cond232 = select i1 %cmp120.not, i1 %cmp124, i1 false
  br i1 %or.cond232, label %do.body128.do.body128_crit_edge, label %do.body128.cleanup_crit_edge

do.body128.cleanup_crit_edge:                     ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body128.do.body128_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body128

cleanup:                                          ; preds = %do.body128.cleanup_crit_edge, %while.cond118.preheader.cleanup_crit_edge, %while.end, %if.then
  %i.11 = phi i32 [ %i.0253, %if.then ], [ %sub90, %while.end ], [ %i.6.lcssa, %while.cond118.preheader.cleanup_crit_edge ], [ %add129, %do.body128.cleanup_crit_edge ]
  %add147 = add nuw nsw i32 %i.11, 2
  %cmp = icmp ult i32 %i.11, 204
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.body43.for.end_crit_edge, %if.then7.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigMAC_8723B(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
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

!0 = !{ptr @Array_MP_8723B_MAC_REG, !1, !"Array_MP_8723B_MAC_REG", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c", i32 82, i32 12}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
