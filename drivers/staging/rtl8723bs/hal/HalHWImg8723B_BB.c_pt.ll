; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c"
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

@Array_MP_8723B_AGC_TAB = internal constant { [262 x i32], [264 x i8] } { [262 x i32] [i32 3192, i32 -50331647, i32 3192, i32 -67043327, i32 3192, i32 -83755007, i32 3192, i32 -100466687, i32 3192, i32 -117178367, i32 3192, i32 -133890047, i32 3192, i32 -150601727, i32 3192, i32 -167313407, i32 3192, i32 -184025087, i32 3192, i32 -200736767, i32 3192, i32 -217448447, i32 3192, i32 -234160127, i32 3192, i32 -250871807, i32 3192, i32 -267583487, i32 3192, i32 -284295167, i32 3192, i32 -301006847, i32 3192, i32 -317718527, i32 3192, i32 -334430207, i32 3192, i32 -351141887, i32 3192, i32 -367853567, i32 3192, i32 -384565247, i32 3192, i32 -401276927, i32 3192, i32 -417988607, i32 3192, i32 -434700287, i32 3192, i32 -451411967, i32 3192, i32 -468123647, i32 3192, i32 -484835327, i32 3192, i32 -1524957183, i32 3192, i32 -1541668863, i32 3192, i32 -1558380543, i32 3192, i32 1730019329, i32 3192, i32 1713307649, i32 3192, i32 1696595969, i32 3192, i32 1679884289, i32 3192, i32 1663172609, i32 3192, i32 1243807745, i32 3192, i32 1227096065, i32 3192, i32 1210384385, i32 3192, i32 1193672705, i32 3192, i32 1176961025, i32 3192, i32 1160249345, i32 3192, i32 1143537665, i32 3192, i32 1126825985, i32 3192, i32 1110114305, i32 3192, i32 690749441, i32 3192, i32 674037761, i32 3192, i32 657326081, i32 3192, i32 640614401, i32 3192, i32 170917889, i32 3192, i32 154206209, i32 3192, i32 137494529, i32 3192, i32 120782849, i32 3192, i32 104071169, i32 3192, i32 87359489, i32 3192, i32 70647809, i32 3192, i32 53936129, i32 3192, i32 37224449, i32 3192, i32 20512769, i32 3192, i32 20578305, i32 3192, i32 20643841, i32 3192, i32 20709377, i32 3192, i32 20774913, i32 3192, i32 20840449, i32 3192, i32 20905985, i32 3192, i32 -62914559, i32 3192, i32 -79626239, i32 3192, i32 -96337919, i32 3192, i32 -113049599, i32 3192, i32 -129761279, i32 3192, i32 -146472959, i32 3192, i32 -163184639, i32 3192, i32 -179896319, i32 3192, i32 -196607999, i32 3192, i32 -213319679, i32 3192, i32 -230031359, i32 3192, i32 -246743039, i32 3192, i32 -263454719, i32 3192, i32 -280166399, i32 3192, i32 -296878079, i32 3192, i32 -313589759, i32 3192, i32 -330301439, i32 3192, i32 -347013119, i32 3192, i32 -363724799, i32 3192, i32 -380436479, i32 3192, i32 -397148159, i32 3192, i32 -413859839, i32 3192, i32 -430571519, i32 3192, i32 -447283199, i32 3192, i32 -463994879, i32 3192, i32 -480706559, i32 3192, i32 -1504051199, i32 3192, i32 -1520762879, i32 3192, i32 -1537474559, i32 3192, i32 -1554186239, i32 3192, i32 1734213633, i32 3192, i32 1717501953, i32 3192, i32 1700790273, i32 3192, i32 1684078593, i32 3192, i32 1667366913, i32 3192, i32 1650655233, i32 3192, i32 1633943553, i32 3192, i32 1214578689, i32 3192, i32 1197867009, i32 3192, i32 1181155329, i32 3192, i32 1164443649, i32 3192, i32 1147731969, i32 3192, i32 1131020289, i32 3192, i32 1114308609, i32 3192, i32 678166529, i32 3192, i32 661454849, i32 3192, i32 644743169, i32 3192, i32 628031489, i32 3192, i32 611319809, i32 3192, i32 158400513, i32 3192, i32 141688833, i32 3192, i32 124977153, i32 3192, i32 108265473, i32 3192, i32 91553793, i32 3192, i32 74842113, i32 3192, i32 58130433, i32 3192, i32 41418753, i32 3192, i32 24707073, i32 3192, i32 24772609, i32 3192, i32 24838145, i32 3192, i32 24903681, i32 3192, i32 24969217, i32 3192, i32 25034753, i32 3192, i32 25100289, i32 3152, i32 1767191586, i32 3152, i32 1767191584, i32 2084, i32 3736068], [264 x i8] zeroinitializer }, align 32
@Array_MP_8723B_PHY_REG = internal constant { [386 x i32], [408 x i8] } { [386 x i32] [i32 2048, i32 -2147221504, i32 2052, i32 3, i32 2056, i32 64512, i32 2060, i32 10, i32 2064, i32 268440369, i32 2068, i32 34356496, i32 2072, i32 35652485, i32 2076, i32 0, i32 2080, i32 16777472, i32 2084, i32 1638916, i32 2088, i32 0, i32 2092, i32 0, i32 2096, i32 0, i32 2100, i32 0, i32 2104, i32 0, i32 2108, i32 0, i32 2112, i32 65536, i32 2116, i32 0, i32 2120, i32 0, i32 2124, i32 0, i32 2128, i32 0, i32 2132, i32 0, i32 2136, i32 1452937641, i32 2140, i32 16777236, i32 2144, i32 1727398160, i32 2148, i32 102696521, i32 2152, i32 0, i32 2156, i32 656877312, i32 2160, i32 117442400, i32 2164, i32 620773376, i32 2168, i32 2056, i32 2172, i32 0, i32 2176, i32 -1342174180, i32 2180, i32 1, i32 2184, i32 0, i32 2188, i32 -859832128, i32 2192, i32 2048, i32 2196, i32 -2, i32 2200, i32 1076895760, i32 2204, i32 7364688, i32 2304, i32 0, i32 2308, i32 35, i32 2312, i32 0, i32 2316, i32 -2129522415, i32 2320, i32 2, i32 2324, i32 513, i32 2560, i32 13649864, i32 2564, i32 -2130739188, i32 2568, i32 -1937538304, i32 2572, i32 780079631, i32 2576, i32 -1795114120, i32 2580, i32 286576680, i32 2584, i32 8917271, i32 2588, i32 -1995174144, i32 2592, i32 437977088, i32 2596, i32 151917335, i32 2600, i32 516, i32 2604, i32 13828096, i32 2672, i32 270515968, i32 2676, i32 7, i32 2680, i32 2304, i32 2684, i32 576390662, i32 2688, i32 562062480, i32 2860, i32 0, i32 3072, i32 1208425792, i32 3076, i32 60839441, i32 3080, i32 228, i32 3084, i32 1819044972, i32 3088, i32 142606336, i32 3092, i32 1073742080, i32 3096, i32 142606336, i32 3100, i32 1073742080, i32 3104, i32 0, i32 3108, i32 0, i32 3112, i32 0, i32 3116, i32 0, i32 3120, i32 1776921668, i32 3124, i32 1184256687, i32 3128, i32 1232689556, i32 3132, i32 177706780, i32 3136, i32 528236607, i32 3140, i32 65719, i32 3144, i32 -335412985, i32 3148, i32 8323967, i32 3152, i32 1767191584, i32 3156, i32 1136394388, i32 3160, i32 78153, i32 3164, i32 2426002, i32 3168, i32 0, i32 3172, i32 1897038987, i32 3176, i32 1203768319, i32 3180, i32 54, i32 3184, i32 746520589, i32 3188, i32 33951963, i32 3192, i32 31, i32 3196, i32 12129810, i32 3200, i32 956301540, i32 3204, i32 552992768, i32 3208, i32 1073742080, i32 3212, i32 538968064, i32 3216, i32 134682, i32 3220, i32 0, i32 3224, i32 134682, i32 3228, i32 32639, i32 3232, i32 0, i32 3236, i32 196768, i32 3240, i32 0, i32 3244, i32 0, i32 3248, i32 0, i32 3252, i32 0, i32 3256, i32 0, i32 3260, i32 671088640, i32 3264, i32 0, i32 3268, i32 0, i32 3272, i32 0, i32 3276, i32 0, i32 3280, i32 0, i32 3284, i32 0, i32 3288, i32 1689396263, i32 3292, i32 7760178, i32 3296, i32 2236962, i32 3300, i32 0, i32 3304, i32 929317634, i32 3308, i32 798479372, i32 3328, i32 1856, i32 3332, i32 1073873921, i32 3336, i32 36991, i32 3340, i32 536936961, i32 3344, i32 -1604111565, i32 3348, i32 859028563, i32 3352, i32 2056215407, i32 3372, i32 -862480011, i32 3376, i32 0, i32 3380, i32 -2141159424, i32 3384, i32 0, i32 3388, i32 1209171, i32 3392, i32 0, i32 3396, i32 0, i32 3400, i32 0, i32 3404, i32 0, i32 3408, i32 1681331210, i32 3412, i32 0, i32 3416, i32 642, i32 3420, i32 805511268, i32 3424, i32 1179901544, i32 3428, i32 72452668, i32 3432, i32 8449, i32 3436, i32 706747414, i32 3440, i32 403846702, i32 3444, i32 841753120, i32 3448, i32 932900, i32 3584, i32 757935405, i32 3588, i32 757935405, i32 3592, i32 59778861, i32 3600, i32 757935405, i32 3604, i32 757935405, i32 3608, i32 757935405, i32 3612, i32 757935405, i32 3624, i32 0, i32 3632, i32 268491807, i32 3636, i32 268471327, i32 3640, i32 34865410, i32 3644, i32 1746273474, i32 3648, i32 16808960, i32 3652, i32 16795648, i32 3656, i32 -83886080, i32 3660, i32 10449, i32 3664, i32 268491807, i32 3668, i32 268471327, i32 3672, i32 34865410, i32 3676, i32 672533765, i32 3680, i32 8, i32 3688, i32 1779030, i32 3692, i32 12583062, i32 3696, i32 12583062, i32 3700, i32 16777302, i32 3704, i32 16777236, i32 3708, i32 16777302, i32 3712, i32 16777236, i32 3716, i32 12583062, i32 3720, i32 16777302, i32 3724, i32 12583062, i32 3792, i32 12583062, i32 3796, i32 12583062, i32 3800, i32 12583062, i32 3804, i32 214, i32 3808, i32 214, i32 3820, i32 29360150, i32 3860, i32 3, i32 3916, i32 0, i32 3840, i32 768, i32 2080, i32 16777472, i32 2048, i32 -2096889856], [408 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"Array_MP_8723B_AGC_TAB\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 84, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"Array_MP_8723B_PHY_REG\00", align 1
@___asan_gen_.5 = private constant [52 x i8] c"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 284, i32 12 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @Array_MP_8723B_AGC_TAB, ptr @Array_MP_8723B_PHY_REG], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Array_MP_8723B_AGC_TAB to i32), i32 1048, i32 1312, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Array_MP_8723B_PHY_REG to i32), i32 1544, i32 1952, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ReadAndConfig_MP_8723B_AGC_TAB(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0248 = phi i32 [ 0, %entry ], [ %add145, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %i.0248
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0248, 1
  %arrayidx1 = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp2 = icmp ult i32 %1, 1073741824
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @odm_ConfigBB_AGC_8723B(ptr noundef %pDM_Odm, i32 noundef %1, i32 noundef -1, i32 noundef %3) #3
  br label %cleanup

if.else:                                          ; preds = %for.body
  %4 = and i32 %1, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %4)
  %cmp4 = icmp eq i32 %4, 536870912
  br i1 %cmp4, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %i.0248)
  %cmp8 = icmp ugt i32 %i.0248, 259
  br i1 %cmp8, label %if.then6.for.end_crit_edge, label %if.then6.while.cond91.preheader_crit_edge

if.then6.while.cond91.preheader_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond91.preheader

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.else15:                                        ; preds = %if.else
  %call = tail call fastcc zeroext i1 @CheckPositive(ptr noundef %pDM_Odm, i32 noundef %1, i32 noundef %3)
  br i1 %call, label %do.body42, label %if.then16

if.then16:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %i.0248)
  %cmp44 = icmp ugt i32 %i.0248, 259
  br i1 %cmp44, label %if.then16.while.end_crit_edge, label %do.body29

if.then16.while.end_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body29:                                        ; preds = %if.then16
  %add18 = add nuw nsw i32 %i.0248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %i.0248)
  %cmp31 = icmp ugt i32 %i.0248, 257
  br i1 %cmp31, label %do.body29.while.end_crit_edge, label %while.cond.preheader

do.body29.while.end_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body42:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %i.0248)
  %cmp60 = icmp ugt i32 %i.0248, 257
  br i1 %cmp60, label %do.body42.for.end_crit_edge, label %if.end63

do.body42.for.end_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end63:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  %add43 = add nuw nsw i32 %i.0248, 2
  br label %while.cond91.preheader

while.cond91.preheader:                           ; preds = %if.end63, %if.then6.while.cond91.preheader_crit_edge
  %.sink = phi i32 [ 4, %if.end63 ], [ 2, %if.then6.while.cond91.preheader_crit_edge ]
  %i.0248.sink = phi i32 [ %add43, %if.end63 ], [ %i.0248, %if.then6.while.cond91.preheader_crit_edge ]
  %add7 = add nuw nsw i32 %i.0248, %.sink
  %arrayidx12 = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %add7
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %6)
  %cmp92235 = icmp ult i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %add7)
  %cmp96236 = icmp ult i32 %add7, 260
  %or.cond229237 = select i1 %cmp92235, i1 %cmp96236, i1 false
  br i1 %or.cond229237, label %while.cond91.preheader.while.body99_crit_edge, label %while.cond91.preheader.while.cond116.preheader_crit_edge

while.cond91.preheader.while.cond116.preheader_crit_edge: ; preds = %while.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond116.preheader

while.cond91.preheader.while.body99_crit_edge:    ; preds = %while.cond91.preheader
  br label %while.body99

while.cond.preheader:                             ; preds = %do.body29
  %add30 = add nuw nsw i32 %i.0248, 4
  %arrayidx36 = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %add30
  %7 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %8)
  %cmp73231 = icmp ult i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0248)
  %cmp75232 = icmp ult i32 %i.0248, 256
  %or.cond233 = select i1 %cmp73231, i1 %cmp75232, i1 false
  br i1 %or.cond233, label %while.cond.preheader.do.body77_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.cond.preheader.do.body77_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body77

do.body77:                                        ; preds = %do.body77.do.body77_crit_edge, %while.cond.preheader.do.body77_crit_edge
  %i.4234 = phi i32 [ %add78, %do.body77.do.body77_crit_edge ], [ %add30, %while.cond.preheader.do.body77_crit_edge ]
  %add78 = add nuw nsw i32 %i.4234, 2
  %arrayidx84 = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %add78
  %9 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %10)
  %cmp73 = icmp ult i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %i.4234)
  %cmp75 = icmp ult i32 %i.4234, 258
  %or.cond = select i1 %cmp73, i1 %cmp75, i1 false
  br i1 %or.cond, label %do.body77.do.body77_crit_edge, label %do.body77.while.end_crit_edge

do.body77.while.end_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body77.do.body77_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body77

while.end:                                        ; preds = %do.body77.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge, %do.body29.while.end_crit_edge, %if.then16.while.end_crit_edge
  %i.4.lcssa = phi i32 [ %add30, %while.cond.preheader.while.end_crit_edge ], [ %add18, %do.body29.while.end_crit_edge ], [ %i.0248, %if.then16.while.end_crit_edge ], [ %add78, %do.body77.while.end_crit_edge ]
  %sub89 = add nsw i32 %i.4.lcssa, -2
  br label %cleanup

while.cond116.preheader:                          ; preds = %while.body99.while.cond116.preheader_crit_edge, %while.cond91.preheader.while.cond116.preheader_crit_edge
  %i.6.lcssa = phi i32 [ %add7, %while.cond91.preheader.while.cond116.preheader_crit_edge ], [ %add101, %while.body99.while.cond116.preheader_crit_edge ]
  %v1.5.lcssa = phi i32 [ %6, %while.cond91.preheader.while.cond116.preheader_crit_edge ], [ %14, %while.body99.while.cond116.preheader_crit_edge ]
  %11 = and i32 %v1.5.lcssa, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %11)
  %cmp118.not243 = icmp ne i32 %11, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %i.6.lcssa)
  %cmp122244 = icmp ult i32 %i.6.lcssa, 260
  %or.cond230245 = select i1 %cmp118.not243, i1 %cmp122244, i1 false
  br i1 %or.cond230245, label %while.cond116.preheader.do.body126_crit_edge, label %while.cond116.preheader.cleanup_crit_edge

while.cond116.preheader.cleanup_crit_edge:        ; preds = %while.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond116.preheader.do.body126_crit_edge:     ; preds = %while.cond116.preheader
  br label %do.body126

while.body99:                                     ; preds = %while.body99.while.body99_crit_edge, %while.cond91.preheader.while.body99_crit_edge
  %add108.pn.in = phi i32 [ %i.6238, %while.body99.while.body99_crit_edge ], [ %i.0248.sink, %while.cond91.preheader.while.body99_crit_edge ]
  %v1.5239 = phi i32 [ %14, %while.body99.while.body99_crit_edge ], [ %6, %while.cond91.preheader.while.body99_crit_edge ]
  %i.6238 = phi i32 [ %add101, %while.body99.while.body99_crit_edge ], [ %add7, %while.cond91.preheader.while.body99_crit_edge ]
  %add108.pn = add nuw nsw i32 %add108.pn.in, 3
  %v2.3240.in = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %add108.pn
  %12 = ptrtoint ptr %v2.3240.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %v2.3240 = load i32, ptr %v2.3240.in, align 4
  tail call void @odm_ConfigBB_AGC_8723B(ptr noundef %pDM_Odm, i32 noundef %v1.5239, i32 noundef -1, i32 noundef %v2.3240) #3
  %add101 = add nuw nsw i32 %i.6238, 2
  %arrayidx107 = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %add101
  %13 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %14)
  %cmp92 = icmp ult i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %i.6238)
  %cmp96 = icmp ult i32 %i.6238, 258
  %or.cond229 = select i1 %cmp92, i1 %cmp96, i1 false
  br i1 %or.cond229, label %while.body99.while.body99_crit_edge, label %while.body99.while.cond116.preheader_crit_edge

while.body99.while.cond116.preheader_crit_edge:   ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond116.preheader

while.body99.while.body99_crit_edge:              ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body99

do.body126:                                       ; preds = %do.body126.do.body126_crit_edge, %while.cond116.preheader.do.body126_crit_edge
  %i.8246 = phi i32 [ %add127, %do.body126.do.body126_crit_edge ], [ %i.6.lcssa, %while.cond116.preheader.do.body126_crit_edge ]
  %add127 = add nuw nsw i32 %i.8246, 2
  %arrayidx133 = getelementptr i32, ptr @Array_MP_8723B_AGC_TAB, i32 %add127
  %15 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx133, align 4
  %17 = and i32 %16, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %17)
  %cmp118.not = icmp ne i32 %17, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %i.8246)
  %cmp122 = icmp ult i32 %i.8246, 258
  %or.cond230 = select i1 %cmp118.not, i1 %cmp122, i1 false
  br i1 %or.cond230, label %do.body126.do.body126_crit_edge, label %do.body126.cleanup_crit_edge

do.body126.cleanup_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body126.do.body126_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body126

cleanup:                                          ; preds = %do.body126.cleanup_crit_edge, %while.cond116.preheader.cleanup_crit_edge, %while.end, %if.then
  %i.11 = phi i32 [ %i.0248, %if.then ], [ %sub89, %while.end ], [ %i.6.lcssa, %while.cond116.preheader.cleanup_crit_edge ], [ %add127, %do.body126.cleanup_crit_edge ]
  %add145 = add nuw nsw i32 %i.11, 2
  %cmp = icmp ult i32 %i.11, 260
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.body42.for.end_crit_edge, %if.then6.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigBB_AGC_8723B(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @CheckPositive(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %Condition1, i32 noundef %Condition2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %BoardType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 19
  %0 = ptrtoint ptr %BoardType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %BoardType, align 1
  %and = lshr i8 %1, 4
  %2 = and i8 %and, 1
  %3 = lshr i8 %1, 2
  %shl5 = and i8 %3, 2
  %or = or i8 %2, %shl5
  %4 = lshr i8 %1, 5
  %shl10 = and i8 %4, 4
  %or11 = or i8 %or, %shl10
  %5 = lshr i8 %1, 3
  %shl16 = and i8 %5, 8
  %or17 = or i8 %or11, %shl16
  %6 = shl i8 %1, 2
  %shl22 = and i8 %6, 16
  %or23 = or i8 %or17, %shl22
  %CutVersion = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 16
  %7 = ptrtoint ptr %CutVersion to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CutVersion, align 8
  %conv25 = zext i8 %8 to i32
  %shl26 = shl nuw i32 %conv25, 24
  %SupportPlatform = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 12
  %9 = ptrtoint ptr %SupportPlatform to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %SupportPlatform, align 1
  %conv27 = zext i8 %10 to i32
  %shl28 = shl nuw nsw i32 %conv27, 16
  %or29 = or i32 %shl28, %shl26
  %PackageType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 20
  %11 = ptrtoint ptr %PackageType to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %PackageType, align 4
  %conv30 = zext i8 %12 to i32
  %shl31 = shl nuw nsw i32 %conv30, 12
  %or32 = or i32 %or29, %shl31
  %SupportInterface = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 14
  %13 = ptrtoint ptr %SupportInterface to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %SupportInterface, align 8
  %conv33 = zext i8 %14 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %or35 = or i32 %or32, %shl34
  %conv36 = zext i8 %or23 to i32
  %TypeGLNA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 21
  %15 = ptrtoint ptr %TypeGLNA to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %TypeGLNA, align 1
  %conv38 = zext i8 %16 to i32
  %TypeGPA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 22
  %17 = ptrtoint ptr %TypeGPA to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %TypeGPA, align 2
  %conv40 = zext i8 %18 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %or42 = or i32 %shl41, %conv38
  %TypeALNA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 23
  %19 = ptrtoint ptr %TypeALNA to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %TypeALNA, align 1
  %conv43 = zext i8 %20 to i32
  %shl44 = shl nuw nsw i32 %conv43, 16
  %or45 = or i32 %or42, %shl44
  %TypeAPA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 24
  %21 = ptrtoint ptr %TypeAPA to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %TypeAPA, align 8
  %conv46 = zext i8 %22 to i32
  %shl47 = shl nuw i32 %conv46, 24
  %or48 = or i32 %or45, %shl47
  %and49 = and i32 %Condition1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %cmp.not = icmp eq i32 %and49, 0
  %and52 = and i32 %or35, 61440
  call void @__sanitizer_cov_trace_cmp4(i32 %and49, i32 %and52)
  %cmp53.not = icmp eq i32 %and49, %and52
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp53.not
  br i1 %or.cond, label %if.end, label %entry.cleanup107_crit_edge

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup107

if.end:                                           ; preds = %entry
  %and55 = and i32 %Condition1, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56.not = icmp eq i32 %and55, 0
  %and60 = and i32 %shl26, 251658240
  call void @__sanitizer_cov_trace_cmp4(i32 %and55, i32 %and60)
  %cmp61.not = icmp eq i32 %and55, %and60
  %or.cond143 = select i1 %cmp56.not, i1 true, i1 %cmp61.not
  br i1 %or.cond143, label %if.end64, label %if.end.cleanup107_crit_edge

if.end.cleanup107_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup107

if.end64:                                         ; preds = %if.end
  %or35.masked = and i32 %or35, 986880
  %and66 = or i32 %or35.masked, %conv36
  %23 = xor i32 %and66, 987135
  %24 = and i32 %23, %Condition1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp68 = icmp eq i32 %24, 0
  br i1 %cmp68, label %if.then70, label %if.end64.cleanup107_crit_edge

if.end64.cleanup107_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup107

if.then70:                                        ; preds = %if.end64
  %and71 = and i32 %Condition1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %cmp72 = icmp eq i32 %and71, 0
  br i1 %cmp72, label %if.then70.cleanup107_crit_edge, label %if.end75

if.then70.cleanup107_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup107

if.end75:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #5
  %and76 = and i32 %Condition1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %cmp77.not = icmp eq i32 %and76, 0
  %spec.select = select i1 %cmp77.not, i32 0, i32 255
  %and82 = and i32 %Condition1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp83.not = icmp eq i32 %and82, 0
  %or86 = or i32 %spec.select, 65280
  %bitMask.1 = select i1 %cmp83.not, i32 %spec.select, i32 %or86
  %and88 = and i32 %Condition1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %cmp89.not = icmp eq i32 %and88, 0
  %or92 = or i32 %bitMask.1, 16711680
  %bitMask.2 = select i1 %cmp89.not, i32 %bitMask.1, i32 %or92
  %and94 = and i32 %Condition1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %cmp95.not = icmp eq i32 %and94, 0
  %or98 = or i32 %bitMask.2, -16777216
  %bitMask.3 = select i1 %cmp95.not, i32 %bitMask.2, i32 %or98
  %25 = xor i32 %or48, %Condition2
  %26 = and i32 %25, %bitMask.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp102 = icmp eq i32 %26, 0
  br label %cleanup107

cleanup107:                                       ; preds = %if.end75, %if.then70.cleanup107_crit_edge, %if.end64.cleanup107_crit_edge, %if.end.cleanup107_crit_edge, %entry.cleanup107_crit_edge
  %retval.1 = phi i1 [ false, %entry.cleanup107_crit_edge ], [ false, %if.end.cleanup107_crit_edge ], [ true, %if.then70.cleanup107_crit_edge ], [ false, %if.end64.cleanup107_crit_edge ], [ %cmp102, %if.end75 ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ReadAndConfig_MP_8723B_PHY_REG(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0248 = phi i32 [ 0, %entry ], [ %add145, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %i.0248
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0248, 1
  %arrayidx1 = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp2 = icmp ult i32 %1, 1073741824
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @odm_ConfigBB_PHY_8723B(ptr noundef %pDM_Odm, i32 noundef %1, i32 noundef -1, i32 noundef %3) #3
  br label %cleanup

if.else:                                          ; preds = %for.body
  %4 = and i32 %1, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %4)
  %cmp4 = icmp eq i32 %4, 536870912
  br i1 %cmp4, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %i.0248)
  %cmp8 = icmp ugt i32 %i.0248, 383
  br i1 %cmp8, label %if.then6.for.end_crit_edge, label %if.then6.while.cond91.preheader_crit_edge

if.then6.while.cond91.preheader_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond91.preheader

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.else15:                                        ; preds = %if.else
  %call = tail call fastcc zeroext i1 @CheckPositive(ptr noundef %pDM_Odm, i32 noundef %1, i32 noundef %3)
  br i1 %call, label %do.body42, label %if.then16

if.then16:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %i.0248)
  %cmp44 = icmp ugt i32 %i.0248, 383
  br i1 %cmp44, label %if.then16.while.end_crit_edge, label %do.body29

if.then16.while.end_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body29:                                        ; preds = %if.then16
  %add18 = add nuw nsw i32 %i.0248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 381, i32 %i.0248)
  %cmp31 = icmp ugt i32 %i.0248, 381
  br i1 %cmp31, label %do.body29.while.end_crit_edge, label %while.cond.preheader

do.body29.while.end_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body42:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 381, i32 %i.0248)
  %cmp60 = icmp ugt i32 %i.0248, 381
  br i1 %cmp60, label %do.body42.for.end_crit_edge, label %if.end63

do.body42.for.end_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end63:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  %add43 = add nuw nsw i32 %i.0248, 2
  br label %while.cond91.preheader

while.cond91.preheader:                           ; preds = %if.end63, %if.then6.while.cond91.preheader_crit_edge
  %.sink = phi i32 [ 4, %if.end63 ], [ 2, %if.then6.while.cond91.preheader_crit_edge ]
  %i.0248.sink = phi i32 [ %add43, %if.end63 ], [ %i.0248, %if.then6.while.cond91.preheader_crit_edge ]
  %add7 = add nuw nsw i32 %i.0248, %.sink
  %arrayidx12 = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %add7
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %6)
  %cmp92235 = icmp ult i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %add7)
  %cmp96236 = icmp ult i32 %add7, 384
  %or.cond229237 = select i1 %cmp92235, i1 %cmp96236, i1 false
  br i1 %or.cond229237, label %while.cond91.preheader.while.body99_crit_edge, label %while.cond91.preheader.while.cond116.preheader_crit_edge

while.cond91.preheader.while.cond116.preheader_crit_edge: ; preds = %while.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond116.preheader

while.cond91.preheader.while.body99_crit_edge:    ; preds = %while.cond91.preheader
  br label %while.body99

while.cond.preheader:                             ; preds = %do.body29
  %add30 = add nuw nsw i32 %i.0248, 4
  %arrayidx36 = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %add30
  %7 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %8)
  %cmp73231 = icmp ult i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 380, i32 %i.0248)
  %cmp75232 = icmp ult i32 %i.0248, 380
  %or.cond233 = select i1 %cmp73231, i1 %cmp75232, i1 false
  br i1 %or.cond233, label %while.cond.preheader.do.body77_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.cond.preheader.do.body77_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body77

do.body77:                                        ; preds = %do.body77.do.body77_crit_edge, %while.cond.preheader.do.body77_crit_edge
  %i.4234 = phi i32 [ %add78, %do.body77.do.body77_crit_edge ], [ %add30, %while.cond.preheader.do.body77_crit_edge ]
  %add78 = add nuw nsw i32 %i.4234, 2
  %arrayidx84 = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %add78
  %9 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %10)
  %cmp73 = icmp ult i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 382, i32 %i.4234)
  %cmp75 = icmp ult i32 %i.4234, 382
  %or.cond = select i1 %cmp73, i1 %cmp75, i1 false
  br i1 %or.cond, label %do.body77.do.body77_crit_edge, label %do.body77.while.end_crit_edge

do.body77.while.end_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.body77.do.body77_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body77

while.end:                                        ; preds = %do.body77.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge, %do.body29.while.end_crit_edge, %if.then16.while.end_crit_edge
  %i.4.lcssa = phi i32 [ %add30, %while.cond.preheader.while.end_crit_edge ], [ %add18, %do.body29.while.end_crit_edge ], [ %i.0248, %if.then16.while.end_crit_edge ], [ %add78, %do.body77.while.end_crit_edge ]
  %sub89 = add nsw i32 %i.4.lcssa, -2
  br label %cleanup

while.cond116.preheader:                          ; preds = %while.body99.while.cond116.preheader_crit_edge, %while.cond91.preheader.while.cond116.preheader_crit_edge
  %i.6.lcssa = phi i32 [ %add7, %while.cond91.preheader.while.cond116.preheader_crit_edge ], [ %add101, %while.body99.while.cond116.preheader_crit_edge ]
  %v1.5.lcssa = phi i32 [ %6, %while.cond91.preheader.while.cond116.preheader_crit_edge ], [ %14, %while.body99.while.cond116.preheader_crit_edge ]
  %11 = and i32 %v1.5.lcssa, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %11)
  %cmp118.not243 = icmp ne i32 %11, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %i.6.lcssa)
  %cmp122244 = icmp ult i32 %i.6.lcssa, 384
  %or.cond230245 = select i1 %cmp118.not243, i1 %cmp122244, i1 false
  br i1 %or.cond230245, label %while.cond116.preheader.do.body126_crit_edge, label %while.cond116.preheader.cleanup_crit_edge

while.cond116.preheader.cleanup_crit_edge:        ; preds = %while.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond116.preheader.do.body126_crit_edge:     ; preds = %while.cond116.preheader
  br label %do.body126

while.body99:                                     ; preds = %while.body99.while.body99_crit_edge, %while.cond91.preheader.while.body99_crit_edge
  %add108.pn.in = phi i32 [ %i.6238, %while.body99.while.body99_crit_edge ], [ %i.0248.sink, %while.cond91.preheader.while.body99_crit_edge ]
  %v1.5239 = phi i32 [ %14, %while.body99.while.body99_crit_edge ], [ %6, %while.cond91.preheader.while.body99_crit_edge ]
  %i.6238 = phi i32 [ %add101, %while.body99.while.body99_crit_edge ], [ %add7, %while.cond91.preheader.while.body99_crit_edge ]
  %add108.pn = add nuw nsw i32 %add108.pn.in, 3
  %v2.3240.in = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %add108.pn
  %12 = ptrtoint ptr %v2.3240.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %v2.3240 = load i32, ptr %v2.3240.in, align 4
  tail call void @odm_ConfigBB_PHY_8723B(ptr noundef %pDM_Odm, i32 noundef %v1.5239, i32 noundef -1, i32 noundef %v2.3240) #3
  %add101 = add nuw nsw i32 %i.6238, 2
  %arrayidx107 = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %add101
  %13 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %14)
  %cmp92 = icmp ult i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 382, i32 %i.6238)
  %cmp96 = icmp ult i32 %i.6238, 382
  %or.cond229 = select i1 %cmp92, i1 %cmp96, i1 false
  br i1 %or.cond229, label %while.body99.while.body99_crit_edge, label %while.body99.while.cond116.preheader_crit_edge

while.body99.while.cond116.preheader_crit_edge:   ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond116.preheader

while.body99.while.body99_crit_edge:              ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body99

do.body126:                                       ; preds = %do.body126.do.body126_crit_edge, %while.cond116.preheader.do.body126_crit_edge
  %i.8246 = phi i32 [ %add127, %do.body126.do.body126_crit_edge ], [ %i.6.lcssa, %while.cond116.preheader.do.body126_crit_edge ]
  %add127 = add nuw nsw i32 %i.8246, 2
  %arrayidx133 = getelementptr i32, ptr @Array_MP_8723B_PHY_REG, i32 %add127
  %15 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx133, align 4
  %17 = and i32 %16, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %17)
  %cmp118.not = icmp ne i32 %17, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 382, i32 %i.8246)
  %cmp122 = icmp ult i32 %i.8246, 382
  %or.cond230 = select i1 %cmp118.not, i1 %cmp122, i1 false
  br i1 %or.cond230, label %do.body126.do.body126_crit_edge, label %do.body126.cleanup_crit_edge

do.body126.cleanup_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body126.do.body126_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body126

cleanup:                                          ; preds = %do.body126.cleanup_crit_edge, %while.cond116.preheader.cleanup_crit_edge, %while.end, %if.then
  %i.11 = phi i32 [ %i.0248, %if.then ], [ %sub89, %while.end ], [ %i.6.lcssa, %while.cond116.preheader.cleanup_crit_edge ], [ %add127, %do.body126.cleanup_crit_edge ]
  %add145 = add nuw nsw i32 %i.11, 2
  %cmp = icmp ult i32 %i.11, 384
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.body42.for.end_crit_edge, %if.then6.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigBB_PHY_8723B(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %PhyRegPgVersion = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 3
  %0 = ptrtoint ptr %PhyRegPgVersion to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %PhyRegPgVersion, align 4
  %PhyRegPgValueType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 2
  %1 = ptrtoint ptr %PhyRegPgValueType to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %PhyRegPgValueType, align 8
  tail call void @odm_ConfigBB_PHY_REG_PG_8723B(ptr noundef %pDM_Odm, i32 noundef 0, i32 noundef 3592, i32 noundef 65280, i32 noundef 14336) #3
  tail call void @odm_ConfigBB_PHY_REG_PG_8723B(ptr noundef %pDM_Odm, i32 noundef 0, i32 noundef 2156, i32 noundef -256, i32 noundef 842282496) #3
  tail call void @odm_ConfigBB_PHY_REG_PG_8723B(ptr noundef %pDM_Odm, i32 noundef 0, i32 noundef 3584, i32 noundef -1, i32 noundef 1078084676) #3
  tail call void @odm_ConfigBB_PHY_REG_PG_8723B(ptr noundef %pDM_Odm, i32 noundef 0, i32 noundef 3588, i32 noundef -1, i32 noundef 674379320) #3
  tail call void @odm_ConfigBB_PHY_REG_PG_8723B(ptr noundef %pDM_Odm, i32 noundef 0, i32 noundef 3600, i32 noundef -1, i32 noundef 943735364) #3
  tail call void @odm_ConfigBB_PHY_REG_PG_8723B(ptr noundef %pDM_Odm, i32 noundef 0, i32 noundef 3604, i32 noundef -1, i32 noundef 640693302) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigBB_PHY_REG_PG_8723B(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @Array_MP_8723B_AGC_TAB, !1, !"Array_MP_8723B_AGC_TAB", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c", i32 84, i32 12}
!2 = !{ptr @Array_MP_8723B_PHY_REG, !3, !"Array_MP_8723B_PHY_REG", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c", i32 284, i32 12}
!4 = distinct !{null, !5, !"Array_MP_8723B_PHY_REG_PG", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c", i32 545, i32 12}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
