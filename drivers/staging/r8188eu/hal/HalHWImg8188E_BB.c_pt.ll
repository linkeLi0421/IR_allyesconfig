; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c"
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

@array_agc_tab_1t_8188e = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 3192, i32 -83886079, i32 3192, i32 -83820543, i32 3192, i32 -83755007, i32 3192, i32 -83689471, i32 3192, i32 -83623935, i32 3192, i32 -83558399, i32 3192, i32 -100270079, i32 3192, i32 -116981759, i32 3192, i32 -133693439, i32 3192, i32 -150405119, i32 3192, i32 -167116799, i32 3192, i32 -183828479, i32 3192, i32 -200540159, i32 3192, i32 -217251839, i32 3192, i32 -233963519, i32 3192, i32 -250675199, i32 3192, i32 -267386879, i32 3192, i32 -284098559, i32 3192, i32 -300810239, i32 3192, i32 -317521919, i32 3192, i32 -334233599, i32 3192, i32 -350945279, i32 3192, i32 -367656959, i32 3192, i32 -384368639, i32 3192, i32 -401080319, i32 3192, i32 -417791999, i32 3192, i32 -434503679, i32 3192, i32 -451215359, i32 3192, i32 -467927039, i32 3192, i32 -484638719, i32 3192, i32 -501350399, i32 3192, i32 -518062079, i32 3192, i32 -1977614335, i32 3192, i32 -1994326015, i32 3192, i32 -2011037695, i32 3192, i32 -2027749375, i32 3192, i32 -2044461055, i32 3192, i32 -2061172735, i32 3192, i32 -2077884415, i32 3192, i32 -2094596095, i32 3192, i32 -2111307775, i32 3192, i32 1797849089, i32 3192, i32 1781137409, i32 3192, i32 1764425729, i32 3192, i32 1747714049, i32 3192, i32 1731002369, i32 3192, i32 1714290689, i32 3192, i32 1697579009, i32 3192, i32 1680867329, i32 3192, i32 1664155649, i32 3192, i32 1647443969, i32 3192, i32 1630732289, i32 3192, i32 1177812993, i32 3192, i32 1161101313, i32 3192, i32 1144389633, i32 3192, i32 1127677953, i32 3192, i32 1110966273, i32 3192, i32 1094254593, i32 3192, i32 1077542913, i32 3192, i32 1077608449, i32 3192, i32 1077673985, i32 3192, i32 1077739521, i32 3192, i32 1077805057, i32 3192, i32 1077870593, i32 3192, i32 -79691775, i32 3192, i32 -79626239, i32 3192, i32 -79560703, i32 3192, i32 -79495167, i32 3192, i32 -79429631, i32 3192, i32 -79364095, i32 3192, i32 -79298559, i32 3192, i32 -79233023, i32 3192, i32 -79167487, i32 3192, i32 -95879167, i32 3192, i32 -112590847, i32 3192, i32 -129302527, i32 3192, i32 -146014207, i32 3192, i32 -162725887, i32 3192, i32 -179437567, i32 3192, i32 -196149247, i32 3192, i32 -212860927, i32 3192, i32 -229572607, i32 3192, i32 -246284287, i32 3192, i32 -262995967, i32 3192, i32 -279707647, i32 3192, i32 -296419327, i32 3192, i32 -313131007, i32 3192, i32 -329842687, i32 3192, i32 -346554367, i32 3192, i32 -363266047, i32 3192, i32 -379977727, i32 3192, i32 -396689407, i32 3192, i32 -413401087, i32 3192, i32 -430112767, i32 3192, i32 -446824447, i32 3192, i32 -463536127, i32 3192, i32 -480247807, i32 3192, i32 -496959487, i32 3192, i32 -1016987647, i32 3192, i32 -1033699327, i32 3192, i32 -1050411007, i32 3192, i32 -1956315135, i32 3192, i32 -1973026815, i32 3192, i32 -1989738495, i32 3192, i32 -2006450175, i32 3192, i32 -2023161855, i32 3192, i32 -2039873535, i32 3192, i32 -2056585215, i32 3192, i32 -2073296895, i32 3192, i32 1735196673, i32 3192, i32 1718484993, i32 3192, i32 1701773313, i32 3192, i32 1685061633, i32 3192, i32 1668349953, i32 3192, i32 1651638273, i32 3192, i32 1634926593, i32 3192, i32 1618214913, i32 3192, i32 1182072833, i32 3192, i32 1165361153, i32 3192, i32 1148649473, i32 3192, i32 1131937793, i32 3192, i32 1115226113, i32 3192, i32 1098514433, i32 3192, i32 1081802753, i32 3192, i32 1081868289, i32 3192, i32 1081933825, i32 3192, i32 1081999361, i32 3192, i32 1082064897], [256 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016rtw_IOL_accquire_xmit_frame failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ODM_ReadAndConfig_AGC_TAB_1T_8188E\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c\00", [49 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry_ptr = internal global ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry, section ".printk_index", align 4
@ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"~~~ %s IOL_exec_cmds Failed !!!\0A\00", [63 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry_ptr.5 = internal global ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry.3, section ".printk_index", align 4
@array_phy_reg_1t_8188e = internal constant { [382 x i32], [360 x i8] } { [382 x i32] [i32 2048, i32 -2147221504, i32 2052, i32 3, i32 2056, i32 64512, i32 2060, i32 10, i32 2064, i32 268440369, i32 2068, i32 34356496, i32 2072, i32 35652485, i32 2076, i32 0, i32 2080, i32 16777472, i32 2084, i32 3736068, i32 2088, i32 0, i32 2092, i32 0, i32 2096, i32 0, i32 2100, i32 0, i32 2104, i32 0, i32 2108, i32 0, i32 2112, i32 65536, i32 2116, i32 0, i32 2120, i32 0, i32 2124, i32 0, i32 2128, i32 0, i32 2132, i32 0, i32 2136, i32 1452937641, i32 2140, i32 16777236, i32 2144, i32 1727398160, i32 2148, i32 102696521, i32 2152, i32 0, i32 2156, i32 656877312, i32 2160, i32 117442400, i32 2164, i32 620773376, i32 2168, i32 2056, i32 2172, i32 0, i32 2176, i32 -1342174180, i32 2180, i32 1, i32 2184, i32 0, i32 2188, i32 -859832128, i32 2192, i32 2048, i32 2196, i32 -2, i32 2200, i32 1076895760, i32 2204, i32 7364688, i32 2304, i32 0, i32 2308, i32 35, i32 2312, i32 0, i32 2316, i32 -2129522415, i32 2320, i32 2, i32 2324, i32 513, i32 2560, i32 13649864, i32 2564, i32 -2130771956, i32 2568, i32 -1937538304, i32 2572, i32 780079631, i32 2576, i32 -1795114120, i32 2580, i32 286576680, i32 2584, i32 8917271, i32 2588, i32 -1995174144, i32 2592, i32 437977088, i32 2596, i32 151917335, i32 2600, i32 516, i32 2604, i32 13828096, i32 2672, i32 270515968, i32 2676, i32 7, i32 2680, i32 2304, i32 2684, i32 576390662, i32 2688, i32 562066865, i32 2860, i32 -2147483648, i32 3072, i32 1208425792, i32 3076, i32 60839441, i32 3080, i32 228, i32 3084, i32 1819044972, i32 3088, i32 142606336, i32 3092, i32 1073742080, i32 3096, i32 142606336, i32 3100, i32 1073742080, i32 3104, i32 0, i32 3108, i32 0, i32 3112, i32 0, i32 3116, i32 0, i32 3120, i32 1776921671, i32 3124, i32 1184256687, i32 3128, i32 1232689556, i32 3132, i32 177706780, i32 3136, i32 528236607, i32 3140, i32 65719, i32 3144, i32 -335412985, i32 3148, i32 8323967, i32 3152, i32 1767191584, i32 3156, i32 1136394388, i32 3160, i32 78185, i32 3164, i32 2426002, i32 3168, i32 0, i32 3172, i32 1897038987, i32 3176, i32 1203768319, i32 3180, i32 54, i32 3184, i32 746520589, i32 3188, i32 33951963, i32 3192, i32 31, i32 3196, i32 12129810, i32 3200, i32 956301540, i32 3204, i32 552992768, i32 3208, i32 1073742080, i32 3212, i32 538968064, i32 3216, i32 595233, i32 3220, i32 0, i32 3224, i32 1185824, i32 3228, i32 32639, i32 3232, i32 0, i32 3236, i32 196768, i32 3240, i32 0, i32 3244, i32 0, i32 3248, i32 0, i32 3252, i32 0, i32 3256, i32 0, i32 3260, i32 671088640, i32 3264, i32 0, i32 3268, i32 0, i32 3272, i32 0, i32 3276, i32 0, i32 3280, i32 0, i32 3284, i32 0, i32 3288, i32 1689396263, i32 3292, i32 7760178, i32 3296, i32 2236962, i32 3300, i32 0, i32 3304, i32 929317634, i32 3308, i32 798479372, i32 3328, i32 1856, i32 3332, i32 132097, i32 3336, i32 36991, i32 3340, i32 536936961, i32 3344, i32 -1604111565, i32 3348, i32 859028547, i32 3352, i32 2056215407, i32 3372, i32 -862480011, i32 3376, i32 0, i32 3380, i32 -2141159424, i32 3384, i32 0, i32 3388, i32 1209171, i32 3392, i32 0, i32 3396, i32 0, i32 3400, i32 0, i32 3404, i32 0, i32 3408, i32 1681331210, i32 3412, i32 0, i32 3416, i32 642, i32 3420, i32 805511268, i32 3424, i32 1179901544, i32 3428, i32 72452668, i32 3432, i32 8449, i32 3436, i32 706747414, i32 3440, i32 403846702, i32 3444, i32 841753120, i32 3448, i32 932900, i32 3584, i32 757935405, i32 3588, i32 757935405, i32 3592, i32 59778861, i32 3600, i32 757935405, i32 3604, i32 757935405, i32 3608, i32 757935405, i32 3612, i32 757935405, i32 3624, i32 0, i32 3632, i32 268491807, i32 3636, i32 268471327, i32 3640, i32 34865410, i32 3644, i32 1746273474, i32 3648, i32 16808960, i32 3652, i32 16795648, i32 3656, i32 -83886080, i32 3660, i32 10449, i32 3664, i32 268491807, i32 3668, i32 268471327, i32 3672, i32 34865410, i32 3676, i32 672533765, i32 3680, i32 8, i32 3688, i32 1779108, i32 3692, i32 12582932, i32 3696, i32 12582932, i32 3700, i32 16777236, i32 3704, i32 16777236, i32 3708, i32 16777236, i32 3712, i32 16777236, i32 3716, i32 12582932, i32 3720, i32 16777236, i32 3724, i32 12582932, i32 3792, i32 12582932, i32 3796, i32 12582932, i32 3800, i32 12582932, i32 3804, i32 20, i32 3808, i32 20, i32 3820, i32 29360148, i32 3860, i32 3, i32 3916, i32 0, i32 3840, i32 768], [360 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_PHY_REG_1T_8188E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ODM_ReadAndConfig_PHY_REG_1T_8188E\00", [61 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_PHY_REG_1T_8188E._entry_ptr = internal global ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry, section ".printk_index", align 4
@ODM_ReadAndConfig_PHY_REG_1T_8188E._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016~~~ IOL Config %s Failed !!!\0A\00", [32 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_PHY_REG_1T_8188E._entry_ptr.9 = internal global ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry.7, section ".printk_index", align 4
@array_phy_reg_pg_8188e = internal constant { [264 x i32], [256 x i8] } { [264 x i32] [i32 3584, i32 -1, i32 101124105, i32 3588, i32 -1, i32 33686533, i32 3592, i32 65280, i32 6, i32 2156, i32 -256, i32 132096, i32 3600, i32 -1, i32 134810123, i32 3604, i32 -1, i32 16975367, i32 3608, i32 -1, i32 134810123, i32 3612, i32 -1, i32 16975367, i32 3584, i32 -1, i32 0, i32 3588, i32 -1, i32 0, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 0, i32 3604, i32 -1, i32 0, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 33686018, i32 3588, i32 -1, i32 131586, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 67372036, i32 3604, i32 -1, i32 132100, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 33686018, i32 3588, i32 -1, i32 131586, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 67372036, i32 3604, i32 -1, i32 132100, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 0, i32 3588, i32 -1, i32 0, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 0, i32 3604, i32 -1, i32 0, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 33686018, i32 3588, i32 -1, i32 131586, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 67372036, i32 3604, i32 -1, i32 132100, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 0, i32 3588, i32 -1, i32 0, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 0, i32 3604, i32 -1, i32 0, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 0, i32 3588, i32 -1, i32 0, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 0, i32 3604, i32 -1, i32 0, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 0, i32 3588, i32 -1, i32 0, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 0, i32 3604, i32 -1, i32 0, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 0, i32 3588, i32 -1, i32 0, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 0, i32 3604, i32 -1, i32 0, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0, i32 3584, i32 -1, i32 0, i32 3588, i32 -1, i32 0, i32 3592, i32 65280, i32 0, i32 2156, i32 -256, i32 0, i32 3600, i32 -1, i32 0, i32 3604, i32 -1, i32 0, i32 3608, i32 -1, i32 0, i32 3612, i32 -1, i32 0], [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.11 = internal global [9 x i64] [i64 7, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 2596]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 2596]
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"array_agc_tab_1t_8188e\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 38, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 189, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 240, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"array_phy_reg_1t_8188e\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 251, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 464, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 548, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"array_phy_reg_pg_8188e\00", align 1
@___asan_gen_.52 = private constant [50 x i8] c"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 558, i32 12 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry, ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry.3, ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry_ptr, ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry_ptr.5, ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry, ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry.7, ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry_ptr, ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry_ptr.9, ptr @array_agc_tab_1t_8188e, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @array_phy_reg_1t_8188e, ptr @.str.6, ptr @.str.8, ptr @array_phy_reg_pg_8188e], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_agc_tab_1t_8188e to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_phy_reg_1t_8188e to i32), i32 1528, i32 1888, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_phy_reg_pg_8188e to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ReadAndConfig_AGC_TAB_1T_8188E(ptr noundef %dm_odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_odm, align 8
  %call = tail call zeroext i1 @rtw_IOL_applied(ptr noundef %1) #3
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @rtw_IOL_accquire_xmit_frame(ptr noundef %1) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup125

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %pxmit_frame.0 = phi ptr [ %call3, %if.then.if.end7_crit_edge ], [ null, %entry.if.end7_crit_edge ]
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.body.outer.backedge, %if.end7
  %bndy_cnt.0215.ph = phi i8 [ 1, %if.end7 ], [ %bndy_cnt.0215.ph.be, %for.body.outer.backedge ]
  %i.0213.ph = phi i32 [ 0, %if.end7 ], [ %i.0213.ph.be, %for.body.outer.backedge ]
  br label %for.body

for.body:                                         ; preds = %cleanup.thread.for.body_crit_edge, %for.body.outer
  %i.0213 = phi i32 [ %add110223, %cleanup.thread.for.body_crit_edge ], [ %i.0213.ph, %for.body.outer ]
  %arrayidx = getelementptr i32, ptr @array_agc_tab_1t_8188e, i32 %i.0213
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add8 = add nuw nsw i32 %i.0213, 1
  %arrayidx9 = getelementptr i32, ptr @array_agc_tab_1t_8188e, i32 %add8
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp10 = icmp ult i32 %3, -842150451
  br i1 %cmp10, label %if.then11, label %if.else20

if.then11:                                        ; preds = %for.body
  br i1 %call, label %cleanup.thread227, label %cleanup.thread

if.else20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp.i = icmp eq i32 %3, -842150451
  br i1 %cmp.i, label %if.else20.while.cond56.preheader_crit_edge, label %if.end.i

if.else20.while.cond56.preheader_crit_edge:       ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond56.preheader

while.cond56.preheader:                           ; preds = %if.end9.i.while.cond56.preheader_crit_edge, %if.else20.while.cond56.preheader_crit_edge
  br label %while.cond56.outer

if.end.i:                                         ; preds = %if.else20
  %6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i = icmp ne i32 %6, 0
  %7 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 1792
  %or.cond.i = or i1 %cmp6.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end9.i, label %if.end.i.while.cond.preheader_crit_edge

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end9.i:                                        ; preds = %if.end.i
  %8 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.i = icmp ne i32 %8, 0
  %9 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %9)
  %cmp15.not.i = icmp eq i32 %9, 983040
  %or.cond1.i = or i1 %cmp13.i, %cmp15.not.i
  br i1 %or.cond1.i, label %if.end9.i.while.cond56.preheader_crit_edge, label %if.end9.i.while.cond.preheader_crit_edge

if.end9.i.while.cond.preheader_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end9.i.while.cond56.preheader_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond56.preheader

while.cond.preheader:                             ; preds = %if.end9.i.while.cond.preheader_crit_edge, %if.end.i.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %add27.pn.in = phi i32 [ %i.1, %land.rhs.while.cond_crit_edge ], [ %i.0213, %while.cond.preheader ]
  %add27.pn = add nuw nsw i32 %add27.pn.in, 3
  %v2.0.in = getelementptr i32, ptr @array_agc_tab_1t_8188e, i32 %add27.pn
  %10 = ptrtoint ptr %v2.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %v2.0 = load i32, ptr %v2.0.in, align 4
  %11 = zext i32 %v2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %v2.0, label %land.rhs [
    i32 57005, label %while.cond.cleanup_crit_edge
    i32 52719, label %while.cond.cleanup_crit_edge299
    i32 52685, label %while.cond.cleanup_crit_edge300
  ]

while.cond.cleanup_crit_edge300:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge299:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %i.1 = add nuw nsw i32 %add27.pn.in, 2
  %cmp38 = icmp ult i32 %add27.pn.in, 252
  br i1 %cmp38, label %land.rhs.while.cond_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.cond56:                                     ; preds = %if.else80, %while.cond56.outer
  %add52.pn.in = phi i32 [ %i.2, %if.else80 ], [ %add52.pn.in.ph, %while.cond56.outer ]
  %i.2 = add nuw nsw i32 %add52.pn.in, 2
  %add52.pn = add nuw nsw i32 %add52.pn.in, 3
  %v2.1.in = getelementptr i32, ptr @array_agc_tab_1t_8188e, i32 %add52.pn
  %12 = ptrtoint ptr %v2.1.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %v2.1 = load i32, ptr %v2.1.in, align 4
  %v1.0.in = getelementptr i32, ptr @array_agc_tab_1t_8188e, i32 %i.2
  %13 = ptrtoint ptr %v1.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %v1.0 = load i32, ptr %v1.0.in, align 4
  %14 = zext i32 %v2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %v2.1, label %land.rhs65 [
    i32 57005, label %while.cond56.while.end89_crit_edge
    i32 52719, label %while.cond56.while.end89_crit_edge301
    i32 52685, label %while.cond56.while.end89_crit_edge302
  ]

while.cond56.while.end89_crit_edge302:            ; preds = %while.cond56
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end89

while.cond56.while.end89_crit_edge301:            ; preds = %while.cond56
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end89

while.cond56.while.end89_crit_edge:               ; preds = %while.cond56
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end89

land.rhs65:                                       ; preds = %while.cond56
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %add52.pn.in)
  %cmp67 = icmp ult i32 %add52.pn.in, 252
  br i1 %cmp67, label %while.body70, label %land.rhs65.cleanup_crit_edge

land.rhs65.cleanup_crit_edge:                     ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body70:                                     ; preds = %land.rhs65
  br i1 %call, label %if.then72, label %if.else80

if.then72:                                        ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #5
  %call73 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call73)
  %tobool74.not = icmp ne i8 %call73, 0
  %inc76 = zext i1 %tobool74.not to i8
  %spec.select207 = add i8 %bndy_cnt.3.ph, %inc76
  %conv78 = trunc i32 %v1.0 to i16
  %call79 = tail call i32 @_rtw_IOL_append_WD_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext %conv78, i32 noundef %v2.1, i32 noundef -1) #3
  br label %while.cond56.outer

while.cond56.outer:                               ; preds = %if.then72, %while.cond56.preheader
  %bndy_cnt.3.ph = phi i8 [ %bndy_cnt.0215.ph, %while.cond56.preheader ], [ %spec.select207, %if.then72 ]
  %add52.pn.in.ph = phi i32 [ %i.0213, %while.cond56.preheader ], [ %i.2, %if.then72 ]
  br label %while.cond56

if.else80:                                        ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @odm_ConfigBB_AGC_8188E(ptr noundef %dm_odm, i32 noundef %v1.0, i32 noundef -1, i32 noundef %v2.1) #3
  br label %while.cond56

while.end89:                                      ; preds = %while.cond56.while.end89_crit_edge, %while.cond56.while.end89_crit_edge301, %while.cond56.while.end89_crit_edge302
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1)
  %cmp91.not209 = icmp ne i32 %v2.1, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %add52.pn.in)
  %cmp95210 = icmp ult i32 %add52.pn.in, 252
  %or.cond211 = select i1 %cmp91.not209, i1 %cmp95210, i1 false
  br i1 %or.cond211, label %while.end89.do.body99_crit_edge, label %while.end89.cleanup_crit_edge

while.end89.cleanup_crit_edge:                    ; preds = %while.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.end89.do.body99_crit_edge:                  ; preds = %while.end89
  br label %do.body99

do.body99:                                        ; preds = %do.body99.do.body99_crit_edge, %while.end89.do.body99_crit_edge
  %i.3212 = phi i32 [ %add100, %do.body99.do.body99_crit_edge ], [ %i.2, %while.end89.do.body99_crit_edge ]
  %add100 = add nuw nsw i32 %i.3212, 2
  %add102 = add nuw nsw i32 %i.3212, 3
  %arrayidx103 = getelementptr i32, ptr @array_agc_tab_1t_8188e, i32 %add102
  %15 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %16)
  %cmp91.not = icmp ne i32 %16, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %i.3212)
  %cmp95 = icmp ult i32 %i.3212, 252
  %or.cond = select i1 %cmp91.not, i1 %cmp95, i1 false
  br i1 %or.cond, label %do.body99.do.body99_crit_edge, label %do.body99.cleanup_crit_edge

do.body99.cleanup_crit_edge:                      ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body99.do.body99_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body99

cleanup:                                          ; preds = %do.body99.cleanup_crit_edge, %while.end89.cleanup_crit_edge, %land.rhs65.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.cond.cleanup_crit_edge299, %while.cond.cleanup_crit_edge300
  %i.5 = phi i32 [ %i.2, %while.end89.cleanup_crit_edge ], [ %add100, %do.body99.cleanup_crit_edge ], [ %i.2, %land.rhs65.cleanup_crit_edge ], [ %add27.pn.in, %land.rhs.cleanup_crit_edge ], [ %add27.pn.in, %while.cond.cleanup_crit_edge ], [ %add27.pn.in, %while.cond.cleanup_crit_edge299 ], [ %add27.pn.in, %while.cond.cleanup_crit_edge300 ]
  %bndy_cnt.7 = phi i8 [ %bndy_cnt.3.ph, %while.end89.cleanup_crit_edge ], [ %bndy_cnt.3.ph, %do.body99.cleanup_crit_edge ], [ %bndy_cnt.3.ph, %land.rhs65.cleanup_crit_edge ], [ %bndy_cnt.0215.ph, %land.rhs.cleanup_crit_edge ], [ %bndy_cnt.0215.ph, %while.cond.cleanup_crit_edge ], [ %bndy_cnt.0215.ph, %while.cond.cleanup_crit_edge299 ], [ %bndy_cnt.0215.ph, %while.cond.cleanup_crit_edge300 ]
  %add110 = add i32 %i.5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add110)
  %cmp = icmp ult i32 %add110, 256
  br i1 %cmp, label %cleanup.for.body.outer.backedge_crit_edge, label %for.end

cleanup.for.body.outer.backedge_crit_edge:        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.outer.backedge

for.body.outer.backedge:                          ; preds = %cleanup.thread227.for.body.outer.backedge_crit_edge, %cleanup.for.body.outer.backedge_crit_edge
  %bndy_cnt.0215.ph.be = phi i8 [ %spec.select, %cleanup.thread227.for.body.outer.backedge_crit_edge ], [ %bndy_cnt.7, %cleanup.for.body.outer.backedge_crit_edge ]
  %i.0213.ph.be = phi i32 [ %add110230, %cleanup.thread227.for.body.outer.backedge_crit_edge ], [ %add110, %cleanup.for.body.outer.backedge_crit_edge ]
  br label %for.body.outer

cleanup.thread227:                                ; preds = %if.then11
  %call14 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %tobool15.not = icmp ne i8 %call14, 0
  %inc = zext i1 %tobool15.not to i8
  %spec.select = add i8 %bndy_cnt.0215.ph, %inc
  %conv = trunc i32 %3 to i16
  %call18 = tail call i32 @_rtw_IOL_append_WD_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext %conv, i32 noundef %5, i32 noundef -1) #3
  %add110230 = add i32 %i.0213, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add110230)
  %cmp231 = icmp ult i32 %add110230, 256
  br i1 %cmp231, label %cleanup.thread227.for.body.outer.backedge_crit_edge, label %cleanup.thread227.if.then112_crit_edge

cleanup.thread227.if.then112_crit_edge:           ; preds = %cleanup.thread227
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then112

cleanup.thread227.for.body.outer.backedge_crit_edge: ; preds = %cleanup.thread227
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.outer.backedge

cleanup.thread:                                   ; preds = %if.then11
  tail call void @odm_ConfigBB_AGC_8188E(ptr noundef %dm_odm, i32 noundef %3, i32 noundef -1, i32 noundef %5) #3
  %add110223 = add i32 %i.0213, 2
  %cmp224 = icmp ult i32 %add110223, 256
  br i1 %cmp224, label %cleanup.thread.for.body_crit_edge, label %cleanup.thread.cleanup125_crit_edge

cleanup.thread.cleanup125_crit_edge:              ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup125

cleanup.thread.for.body_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %call, label %for.end.if.then112_crit_edge, label %for.end.cleanup125_crit_edge

for.end.cleanup125_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup125

for.end.if.then112_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then112

if.then112:                                       ; preds = %for.end.if.then112_crit_edge, %cleanup.thread227.if.then112_crit_edge
  %bndy_cnt.7225234 = phi i8 [ %bndy_cnt.7, %for.end.if.then112_crit_edge ], [ %spec.select, %cleanup.thread227.if.then112_crit_edge ]
  %17 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dm_odm, align 8
  %conv114 = zext i8 %bndy_cnt.7225234 to i32
  %call115 = tail call i32 @rtl8188e_IOL_exec_cmds_sync(ptr noundef %18, ptr noundef %pxmit_frame.0, i32 noundef 1000, i32 noundef %conv114) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.end120, label %if.then112.cleanup125_crit_edge

if.then112.cleanup125_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup125

do.end120:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #5
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #6
  br label %cleanup125

cleanup125:                                       ; preds = %do.end120, %if.then112.cleanup125_crit_edge, %for.end.cleanup125_crit_edge, %cleanup.thread.cleanup125_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then112.cleanup125_crit_edge ], [ 1, %do.end120 ], [ 0, %for.end.cleanup125_crit_edge ], [ 0, %cleanup.thread.cleanup125_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_IOL_applied(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_IOL_accquire_xmit_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_IOL_append_WD_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigBB_AGC_8188E(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_IOL_exec_cmds_sync(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ReadAndConfig_PHY_REG_1T_8188E(ptr noundef %dm_odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_odm, align 8
  %call = tail call zeroext i1 @rtw_IOL_applied(ptr noundef %1) #3
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @rtw_IOL_accquire_xmit_frame(ptr noundef %1) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup200

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %pxmit_frame.0 = phi ptr [ %call3, %if.then.if.end7_crit_edge ], [ null, %entry.if.end7_crit_edge ]
  %RFCalibrateInfo144 = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 29
  br label %for.body.outer

for.body.outer:                                   ; preds = %cleanup.for.body.outer_crit_edge, %if.end7
  %bndy_cnt.0320.ph = phi i8 [ %bndy_cnt.7, %cleanup.for.body.outer_crit_edge ], [ 1, %if.end7 ]
  %i.0318.ph = phi i32 [ %add185, %cleanup.for.body.outer_crit_edge ], [ 0, %if.end7 ]
  br label %for.body

for.body:                                         ; preds = %cleanup.thread.for.body_crit_edge, %for.body.outer
  %i.0318 = phi i32 [ %add185328, %cleanup.thread.for.body_crit_edge ], [ %i.0318.ph, %for.body.outer ]
  %arrayidx = getelementptr i32, ptr @array_phy_reg_1t_8188e, i32 %i.0318
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add8 = add nuw nsw i32 %i.0318, 1
  %arrayidx9 = getelementptr i32, ptr @array_phy_reg_1t_8188e, i32 %add8
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp10 = icmp ult i32 %3, -842150451
  br i1 %cmp10, label %if.then11, label %if.else53

if.then11:                                        ; preds = %for.body
  br i1 %call, label %if.then13, label %cleanup.thread

if.then13:                                        ; preds = %if.then11
  %call14 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %tobool15.not = icmp ne i8 %call14, 0
  %inc = zext i1 %tobool15.not to i8
  %spec.select = add i8 %bndy_cnt.0320.ph, %inc
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %if.then13.if.end43_crit_edge [
    i32 254, label %if.then19
    i32 253, label %if.then22
    i32 252, label %if.then26
    i32 251, label %if.then30
    i32 250, label %if.then34
    i32 249, label %if.then38
    i32 2596, label %if.then42
  ]

if.then13.if.end43_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %call20 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %cleanup

if.then22:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %call23 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %cleanup

if.then26:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %call27 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %cleanup

if.then30:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %call31 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %cleanup

if.then34:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %call35 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %cleanup

if.then38:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %call39 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %cleanup

if.then42:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %RFCalibrateInfo144 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %RFCalibrateInfo144, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then13.if.end43_crit_edge
  %conv = trunc i32 %3 to i16
  %call44 = tail call i32 @_rtw_IOL_append_WD_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext %conv, i32 noundef %5, i32 noundef -1) #3
  br label %cleanup

if.else53:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp.i = icmp eq i32 %3, -842150451
  br i1 %cmp.i, label %if.else53.while.cond89.preheader_crit_edge, label %if.end.i

if.else53.while.cond89.preheader_crit_edge:       ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond89.preheader

while.cond89.preheader:                           ; preds = %if.end9.i.while.cond89.preheader_crit_edge, %if.else53.while.cond89.preheader_crit_edge
  br label %while.cond89

if.end.i:                                         ; preds = %if.else53
  %8 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.i = icmp ne i32 %8, 0
  %9 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 1792
  %or.cond.i = or i1 %cmp6.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end9.i, label %if.end.i.while.cond.preheader_crit_edge

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end9.i:                                        ; preds = %if.end.i
  %10 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.i = icmp ne i32 %10, 0
  %11 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %11)
  %cmp15.not.i = icmp eq i32 %11, 983040
  %or.cond1.i = or i1 %cmp13.i, %cmp15.not.i
  br i1 %or.cond1.i, label %if.end9.i.while.cond89.preheader_crit_edge, label %if.end9.i.while.cond.preheader_crit_edge

if.end9.i.while.cond.preheader_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end9.i.while.cond89.preheader_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond89.preheader

while.cond.preheader:                             ; preds = %if.end9.i.while.cond.preheader_crit_edge, %if.end.i.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %add60.pn.in = phi i32 [ %i.1, %land.rhs.while.cond_crit_edge ], [ %i.0318, %while.cond.preheader ]
  %add60.pn = add nuw nsw i32 %add60.pn.in, 3
  %v2.0.in = getelementptr i32, ptr @array_phy_reg_1t_8188e, i32 %add60.pn
  %12 = ptrtoint ptr %v2.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %v2.0 = load i32, ptr %v2.0.in, align 4
  %13 = zext i32 %v2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %v2.0, label %land.rhs [
    i32 57005, label %while.cond.cleanup_crit_edge
    i32 52719, label %while.cond.cleanup_crit_edge386
    i32 52685, label %while.cond.cleanup_crit_edge387
  ]

while.cond.cleanup_crit_edge387:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge386:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %i.1 = add nuw nsw i32 %add60.pn.in, 2
  %cmp71 = icmp ult i32 %add60.pn.in, 378
  br i1 %cmp71, label %land.rhs.while.cond_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.cond89:                                     ; preds = %while.cond89.backedge, %while.cond89.preheader
  %bndy_cnt.3 = phi i8 [ %bndy_cnt.0320.ph, %while.cond89.preheader ], [ %bndy_cnt.3.be, %while.cond89.backedge ]
  %add85.pn.in = phi i32 [ %i.0318, %while.cond89.preheader ], [ %i.2, %while.cond89.backedge ]
  %i.2 = add nuw nsw i32 %add85.pn.in, 2
  %add85.pn = add nuw nsw i32 %add85.pn.in, 3
  %v2.1.in = getelementptr i32, ptr @array_phy_reg_1t_8188e, i32 %add85.pn
  %14 = ptrtoint ptr %v2.1.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %v2.1 = load i32, ptr %v2.1.in, align 4
  %v1.0.in = getelementptr i32, ptr @array_phy_reg_1t_8188e, i32 %i.2
  %15 = ptrtoint ptr %v1.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %v1.0 = load i32, ptr %v1.0.in, align 4
  %16 = zext i32 %v2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %v2.1, label %land.rhs98 [
    i32 57005, label %while.cond89.while.end164_crit_edge
    i32 52719, label %while.cond89.while.end164_crit_edge388
    i32 52685, label %while.cond89.while.end164_crit_edge389
  ]

while.cond89.while.end164_crit_edge389:           ; preds = %while.cond89
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end164

while.cond89.while.end164_crit_edge388:           ; preds = %while.cond89
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end164

while.cond89.while.end164_crit_edge:              ; preds = %while.cond89
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end164

land.rhs98:                                       ; preds = %while.cond89
  call void @__sanitizer_cov_trace_const_cmp4(i32 378, i32 %add85.pn.in)
  %cmp100 = icmp ult i32 %add85.pn.in, 378
  br i1 %cmp100, label %while.body103, label %land.rhs98.cleanup_crit_edge

land.rhs98.cleanup_crit_edge:                     ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body103:                                    ; preds = %land.rhs98
  br i1 %call, label %if.then105, label %if.else155

if.then105:                                       ; preds = %while.body103
  %call106 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call106)
  %tobool107.not = icmp ne i8 %call106, 0
  %inc109 = zext i1 %tobool107.not to i8
  %spec.select312 = add i8 %bndy_cnt.3, %inc109
  %17 = zext i32 %v1.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %v1.0, label %if.then105.if.end146_crit_edge [
    i32 254, label %if.then113
    i32 253, label %if.then118
    i32 252, label %if.then123
    i32 251, label %if.then128
    i32 250, label %if.then133
    i32 249, label %if.then138
    i32 2596, label %if.then143
  ]

if.then105.if.end146_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

if.then113:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  %call114 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %while.cond89.backedge

if.then118:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  %call119 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %while.cond89.backedge

if.then123:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  %call124 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %while.cond89.backedge

if.then128:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  %call129 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %while.cond89.backedge

if.then133:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  %call134 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %while.cond89.backedge

if.then138:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  %call139 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %while.cond89.backedge

if.then143:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %RFCalibrateInfo144 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %v2.1, ptr %RFCalibrateInfo144, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.then105.if.end146_crit_edge
  %conv147 = trunc i32 %v1.0 to i16
  %call148 = tail call i32 @_rtw_IOL_append_WD_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext %conv147, i32 noundef %v2.1, i32 noundef -1) #3
  br label %while.cond89.backedge

if.else155:                                       ; preds = %while.body103
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @odm_ConfigBB_PHY_8188E(ptr noundef %dm_odm, i32 noundef %v1.0, i32 noundef -1, i32 noundef %v2.1) #3
  br label %while.cond89.backedge

while.cond89.backedge:                            ; preds = %if.else155, %if.end146, %if.then138, %if.then133, %if.then128, %if.then123, %if.then118, %if.then113
  %bndy_cnt.3.be = phi i8 [ %spec.select312, %if.then113 ], [ %spec.select312, %if.then118 ], [ %spec.select312, %if.then123 ], [ %spec.select312, %if.then128 ], [ %spec.select312, %if.then133 ], [ %spec.select312, %if.then138 ], [ %spec.select312, %if.end146 ], [ %bndy_cnt.3, %if.else155 ]
  br label %while.cond89

while.end164:                                     ; preds = %while.cond89.while.end164_crit_edge, %while.cond89.while.end164_crit_edge388, %while.cond89.while.end164_crit_edge389
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1)
  %cmp166.not314 = icmp ne i32 %v2.1, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 378, i32 %add85.pn.in)
  %cmp170315 = icmp ult i32 %add85.pn.in, 378
  %or.cond316 = select i1 %cmp166.not314, i1 %cmp170315, i1 false
  br i1 %or.cond316, label %while.end164.do.body174_crit_edge, label %while.end164.cleanup_crit_edge

while.end164.cleanup_crit_edge:                   ; preds = %while.end164
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.end164.do.body174_crit_edge:                ; preds = %while.end164
  br label %do.body174

do.body174:                                       ; preds = %do.body174.do.body174_crit_edge, %while.end164.do.body174_crit_edge
  %i.3317 = phi i32 [ %add175, %do.body174.do.body174_crit_edge ], [ %i.2, %while.end164.do.body174_crit_edge ]
  %add175 = add nuw nsw i32 %i.3317, 2
  %add177 = add nuw nsw i32 %i.3317, 3
  %arrayidx178 = getelementptr i32, ptr @array_phy_reg_1t_8188e, i32 %add177
  %19 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %20)
  %cmp166.not = icmp ne i32 %20, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 378, i32 %i.3317)
  %cmp170 = icmp ult i32 %i.3317, 378
  %or.cond = select i1 %cmp166.not, i1 %cmp170, i1 false
  br i1 %or.cond, label %do.body174.do.body174_crit_edge, label %do.body174.cleanup_crit_edge

do.body174.cleanup_crit_edge:                     ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body174.do.body174_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body174

cleanup:                                          ; preds = %do.body174.cleanup_crit_edge, %while.end164.cleanup_crit_edge, %land.rhs98.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.cond.cleanup_crit_edge386, %while.cond.cleanup_crit_edge387, %if.end43, %if.then38, %if.then34, %if.then30, %if.then26, %if.then22, %if.then19
  %i.5 = phi i32 [ %i.0318, %if.then19 ], [ %i.0318, %if.then26 ], [ %i.0318, %if.then34 ], [ %i.0318, %if.end43 ], [ %i.0318, %if.then38 ], [ %i.0318, %if.then30 ], [ %i.0318, %if.then22 ], [ %i.2, %while.end164.cleanup_crit_edge ], [ %add175, %do.body174.cleanup_crit_edge ], [ %i.2, %land.rhs98.cleanup_crit_edge ], [ %add60.pn.in, %land.rhs.cleanup_crit_edge ], [ %add60.pn.in, %while.cond.cleanup_crit_edge ], [ %add60.pn.in, %while.cond.cleanup_crit_edge386 ], [ %add60.pn.in, %while.cond.cleanup_crit_edge387 ]
  %bndy_cnt.7 = phi i8 [ %spec.select, %if.then19 ], [ %spec.select, %if.then26 ], [ %spec.select, %if.then34 ], [ %spec.select, %if.end43 ], [ %spec.select, %if.then38 ], [ %spec.select, %if.then30 ], [ %spec.select, %if.then22 ], [ %bndy_cnt.3, %while.end164.cleanup_crit_edge ], [ %bndy_cnt.3, %do.body174.cleanup_crit_edge ], [ %bndy_cnt.3, %land.rhs98.cleanup_crit_edge ], [ %bndy_cnt.0320.ph, %land.rhs.cleanup_crit_edge ], [ %bndy_cnt.0320.ph, %while.cond.cleanup_crit_edge ], [ %bndy_cnt.0320.ph, %while.cond.cleanup_crit_edge386 ], [ %bndy_cnt.0320.ph, %while.cond.cleanup_crit_edge387 ]
  %add185 = add i32 %i.5, 2
  %cmp = icmp ult i32 %add185, 382
  br i1 %cmp, label %cleanup.for.body.outer_crit_edge, label %for.end

cleanup.for.body.outer_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.outer

cleanup.thread:                                   ; preds = %if.then11
  tail call void @odm_ConfigBB_PHY_8188E(ptr noundef %dm_odm, i32 noundef %3, i32 noundef -1, i32 noundef %5) #3
  %add185328 = add i32 %i.0318, 2
  %cmp329 = icmp ult i32 %add185328, 382
  br i1 %cmp329, label %cleanup.thread.for.body_crit_edge, label %cleanup.thread.cleanup200_crit_edge

cleanup.thread.cleanup200_crit_edge:              ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup200

cleanup.thread.for.body_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %call, label %if.then187, label %for.end.cleanup200_crit_edge

for.end.cleanup200_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup200

if.then187:                                       ; preds = %for.end
  %21 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dm_odm, align 8
  %conv189 = zext i8 %bndy_cnt.7 to i32
  %call190 = tail call i32 @rtl8188e_IOL_exec_cmds_sync(ptr noundef %22, ptr noundef %pxmit_frame.0, i32 noundef 1000, i32 noundef %conv189) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then192, label %if.then187.cleanup200_crit_edge

if.then187.cleanup200_crit_edge:                  ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup200

if.then192:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #5
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #6
  br label %cleanup200

cleanup200:                                       ; preds = %if.then192, %if.then187.cleanup200_crit_edge, %for.end.cleanup200_crit_edge, %cleanup.thread.cleanup200_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then187.cleanup200_crit_edge ], [ 1, %if.then192 ], [ 0, %for.end.cleanup200_crit_edge ], [ 0, %cleanup.thread.cleanup200_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigBB_PHY_8188E(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ReadAndConfig_PHY_REG_PG_8188E(ptr noundef %dm_odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.057 = phi i32 [ 0, %entry ], [ %add24, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @array_phy_reg_pg_8188e, i32 %i.057
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add3 = add nuw nsw i32 %i.057, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %1)
  %cmp5 = icmp ult i32 %1, -842150451
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx4 = getelementptr i32, ptr @array_phy_reg_pg_8188e, i32 %add3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %add1 = add nuw nsw i32 %i.057, 1
  %arrayidx2 = getelementptr i32, ptr @array_phy_reg_pg_8188e, i32 %add1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void @odm_ConfigBB_PHY_REG_PG_8188E(ptr noundef %dm_odm, i32 noundef %1, i32 noundef %5, i32 noundef %3) #3
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %1)
  %cmp.i = icmp eq i32 %1, -842150451
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %6 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i = icmp ne i32 %6, 0
  %7 = and i32 %1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 1792
  %or.cond.i = or i1 %cmp6.i, %cmp7.not.i
  br i1 %or.cond.i, label %CheckCondition.exit, label %if.end.i.if.then7_crit_edge

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

CheckCondition.exit:                              ; preds = %if.end.i
  %8 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.i = icmp ne i32 %8, 0
  %9 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %9)
  %cmp15.not.i = icmp eq i32 %9, 983040
  %or.cond1.i = or i1 %cmp13.i, %cmp15.not.i
  br i1 %or.cond1.i, label %CheckCondition.exit.cleanup_crit_edge, label %CheckCondition.exit.if.then7_crit_edge

CheckCondition.exit.if.then7_crit_edge:           ; preds = %CheckCondition.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

CheckCondition.exit.cleanup_crit_edge:            ; preds = %CheckCondition.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %CheckCondition.exit.if.then7_crit_edge, %if.end.i.if.then7_crit_edge
  %add10 = add nuw nsw i32 %i.057, 3
  %v2.0.in53 = getelementptr i32, ptr @array_phy_reg_pg_8188e, i32 %add10
  %10 = ptrtoint ptr %v2.0.in53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %v2.054 = load i32, ptr %v2.0.in53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.054)
  %cmp14.not55 = icmp eq i32 %v2.054, 57005
  br i1 %cmp14.not55, label %if.then7.cleanup_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %i.156 = phi i32 [ %add15, %while.body.while.body_crit_edge ], [ %add3, %if.then7.while.body_crit_edge ]
  %add15 = add i32 %i.156, 3
  %add17 = add i32 %i.156, 4
  %v2.0.in = getelementptr i32, ptr @array_phy_reg_pg_8188e, i32 %add17
  %11 = ptrtoint ptr %v2.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %v2.0 = load i32, ptr %v2.0.in, align 4
  %cmp14.not = icmp eq i32 %v2.0, 57005
  br i1 %cmp14.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %CheckCondition.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %i.3 = phi i32 [ %i.057, %if.then ], [ %i.057, %CheckCondition.exit.cleanup_crit_edge ], [ %i.057, %if.else.cleanup_crit_edge ], [ %add3, %if.then7.cleanup_crit_edge ], [ %add15, %while.body.cleanup_crit_edge ]
  %add24 = add i32 %i.3, 3
  %cmp = icmp ult i32 %add24, 264
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigBB_PHY_REG_PG_8188E(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c", i32 189, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c", i32 240, i32 4}
!8 = !{ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ODM_ReadAndConfig_AGC_TAB_1T_8188E._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c", i32 464, i32 4}
!12 = !{ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c", i32 548, i32 4}
!16 = !{ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ODM_ReadAndConfig_PHY_REG_1T_8188E._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @array_agc_tab_1t_8188e, !19, !"array_agc_tab_1t_8188e", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c", i32 38, i32 12}
!20 = !{ptr @array_phy_reg_1t_8188e, !21, !"array_phy_reg_1t_8188e", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c", i32 251, i32 12}
!22 = !{ptr @array_phy_reg_pg_8188e, !23, !"array_phy_reg_pg_8188e", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_BB.c", i32 558, i32 12}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
