; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_link.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.dp_link_private = type { i32, ptr, ptr, %struct.dp_link, %struct.dp_link_request, %struct.mutex, [6 x i8] }
%struct.dp_link_request = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid params\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to %s low power mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enter\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exit\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sink request=%#x\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lane=%d req_vol_swing=%d req_pre_emphasis=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Requested vSwingLevel=%d, change to %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Requested preEmphasisLevel=%d, change to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"adjusted: v_level=%d, p_level=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dp_link_get.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&link->psm_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DP parse sink count failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DP link status read failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sink count read failed. rlen=%zd\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sink_count = 0x%x, cp_ready = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aux read failed. rlen=%zd\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device service irq vector = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no test requested\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"link 0x%x not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Test:(0x%x) requested\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read phy link pattern. rlen=%zd\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_test_pattern_sel = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read link rate. rlen=%zd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid link rate = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"link rate = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read lane count. rlen=%zd\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid lane count = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lane count = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to read link video pattern. rlen=%zd\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid link video pattern = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read link bit depth. rlen=%zd\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid link bit depth = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to parse test_htotal(DP_TEST_H_TOTAL_HI)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to parse test_v_total(DP_TEST_V_TOTAL_HI)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to parse test_h_start(DP_TEST_H_START_HI)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to parse test_v_start(DP_TEST_V_START_HI)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to parse (DP_TEST_HSYNC_HI)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to parse (DP_TEST_VSYNC_HI)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to parse test_h_width(DP_TEST_H_WIDTH_HI)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to parse test_v_height\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to parse test_rr_d (DP_TEST_MISC1)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to parse test_rr_n\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [328 x i8], [88 x i8] } { [328 x i8] c"link video pattern = 0x%x\0Alink dynamic range = 0x%x\0Alink bit depth = 0x%x\0ATEST_H_TOTAL = %d, TEST_V_TOTAL = %d\0ATEST_H_START = %d, TEST_V_START = %d\0ATEST_HSYNC_POL = %d\0ATEST_HSYNC_WIDTH = %d\0ATEST_VSYNC_POL = %d\0ATEST_VSYNC_WIDTH = %d\0ATEST_H_WIDTH = %d\0ATEST_V_HEIGHT = %d\0ATEST_REFRESH_DENOMINATOR = %d\0ATEST_REFRESH_NUMERATOR = %d\0A\00", [88 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to read 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to read link audio mode. rlen=%zd\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sampling rate (0x%x) greater than max (0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"channel_count (0x%x) greater than max (0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sampling_rate = 0x%x, channel_count = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid audio pattern type = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"audio pattern type = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_1 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_2 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_3 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_4 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_5 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_6 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_7 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_audio_period_ch_8 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read test_audio_period (0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid test_audio_period_ch_1 = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Test:0x%x link rate = 0x%x, lane count = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no phy test\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid: link rate = 0x%x,lane count = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Current: rate = 0x%x, lane count = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Requested: rate = 0x%x, lane count = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vx: 0=%d, 1=%d, 2=%d, 3=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"px: 0=%d, 1=%d, 2=%d, 3=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Current: v_level = 0x%x, p_level = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Requested: v_level = 0x%x, p_level = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"channel_eq_done = %d, clock_recovery_done = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.70 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 10, i64 20, i64 30]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 18, i64 24, i64 30]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 10, i64 20, i64 30]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 795, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 814, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 827, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1061, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1104, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1120, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1127, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1142, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1201, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 747, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 754, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 726, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 735, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 638, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 642, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 645, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 660, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 664, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 580, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 586, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 536, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 541, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 546, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 550, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 556, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 561, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 381, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 387, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 397, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 408, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 419, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 426, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 433, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 440, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 448, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 456, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 463, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 470, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 478, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 485, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 489, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 317, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 225, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 232, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 241, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 249, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 202, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 208, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 131, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 138, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 146, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 153, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 160, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 167, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 174, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 181, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 103, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 111, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 777, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 898, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 904, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 910, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 914, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 855, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 861, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 871, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 881, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [36 x i8] c"../drivers/gpu/drm/msm/dp/dp_link.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 951, i32 8 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dp_link_get.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_link_get.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_link_send_test_response(ptr noundef readonly %dp_link) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_link, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %aux = getelementptr i8, ptr %dp_link, i32 -4
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %test_response = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 1
  %2 = ptrtoint ptr %test_response to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test_response, align 4
  %conv = trunc i32 %3 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %4 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 608, ptr noundef nonnull %value.addr.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_link_psm_config(ptr noundef %dp_link, ptr nocapture noundef readonly %link_info, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i24 = alloca i8, align 1
  %value.i25 = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %tobool.not = icmp eq ptr %dp_link, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %psm_mutex = getelementptr i8, ptr %dp_link, i32 152
  tail call void @mutex_lock_nested(ptr noundef %psm_mutex, i32 noundef 0) #6
  %aux = getelementptr i8, ptr %dp_link, i32 -4
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  br i1 %enable, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value.i, align 1, !annotation !148
  %3 = ptrtoint ptr %link_info to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %4)
  %cmp.i = icmp ult i8 %4, 17
  br i1 %cmp.i, label %if.then2.dp_aux_link_power_down.exit_crit_edge, label %if.end.i

if.then2.dp_aux_link_power_down.exit_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_aux_link_power_down.exit

if.end.i:                                         ; preds = %if.then2
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %1, i32 noundef 1536, ptr noundef nonnull %value.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.dp_aux_link_power_down.exit_crit_edge, label %if.end5.i

if.end.i.dp_aux_link_power_down.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_aux_link_power_down.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i, align 1
  %7 = and i8 %6, -4
  %8 = or i8 %7, 2
  store i8 %8, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  %9 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %value.addr.i.i, align 1
  %call.i20.i = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 1536, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  %10 = call i32 @llvm.smin.i32(i32 %call.i20.i, i32 0) #6
  br label %dp_aux_link_power_down.exit

dp_aux_link_power_down.exit:                      ; preds = %if.end5.i, %if.end.i.dp_aux_link_power_down.exit_crit_edge, %if.then2.dp_aux_link_power_down.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then2.dp_aux_link_power_down.exit_crit_edge ], [ %call.i.i, %if.end.i.dp_aux_link_power_down.exit_crit_edge ], [ %10, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i25) #6
  %11 = ptrtoint ptr %value.i25 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %value.i25, align 1, !annotation !148
  %12 = ptrtoint ptr %link_info to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %cmp.i26 = icmp ult i8 %13, 17
  br i1 %cmp.i26, label %if.else.dp_aux_link_power_up.exit_crit_edge, label %if.end.i29

if.else.dp_aux_link_power_up.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_aux_link_power_up.exit

if.end.i29:                                       ; preds = %if.else
  %call.i.i27 = call i32 @drm_dp_dpcd_read(ptr noundef %1, i32 noundef 1536, ptr noundef nonnull %value.i25, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %cmp2.i28 = icmp slt i32 %call.i.i27, 0
  br i1 %cmp2.i28, label %if.end.i29.dp_aux_link_power_up.exit_crit_edge, label %if.end5.i31

if.end.i29.dp_aux_link_power_up.exit_crit_edge:   ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_aux_link_power_up.exit

if.end5.i31:                                      ; preds = %if.end.i29
  %14 = ptrtoint ptr %value.i25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value.i25, align 1
  %16 = and i8 %15, -4
  %17 = or i8 %16, 1
  store i8 %17, ptr %value.i25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i24) #6
  %18 = ptrtoint ptr %value.addr.i.i24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %value.addr.i.i24, align 1
  %call.i20.i30 = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 1536, ptr noundef nonnull %value.addr.i.i24, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i30)
  %cmp11.i = icmp slt i32 %call.i20.i30, 0
  br i1 %cmp11.i, label %if.end5.i31.dp_aux_link_power_up.exit_crit_edge, label %if.end14.i

if.end5.i31.dp_aux_link_power_up.exit_crit_edge:  ; preds = %if.end5.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_aux_link_power_up.exit

if.end14.i:                                       ; preds = %if.end5.i31
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %dp_aux_link_power_up.exit

dp_aux_link_power_up.exit:                        ; preds = %if.end14.i, %if.end5.i31.dp_aux_link_power_up.exit_crit_edge, %if.end.i29.dp_aux_link_power_up.exit_crit_edge, %if.else.dp_aux_link_power_up.exit_crit_edge
  %retval.0.i32 = phi i32 [ 0, %if.end14.i ], [ 0, %if.else.dp_aux_link_power_up.exit_crit_edge ], [ %call.i.i27, %if.end.i29.dp_aux_link_power_up.exit_crit_edge ], [ %call.i20.i30, %if.end5.i31.dp_aux_link_power_up.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i25) #6
  br label %if.end5

if.end5:                                          ; preds = %dp_aux_link_power_up.exit, %dp_aux_link_power_down.exit
  %ret.0 = phi i32 [ %retval.0.i, %dp_aux_link_power_down.exit ], [ %retval.0.i32, %dp_aux_link_power_up.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.3, ptr @.str.4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull %cond) #6
  br label %if.end12

if.else9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %psm_enabled = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 2
  %19 = ptrtoint ptr %psm_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %psm_enabled, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then7
  call void @mutex_unlock(ptr noundef %psm_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_link_send_edid_checksum(ptr noundef readonly %dp_link, i8 noundef zeroext %checksum) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_link, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %aux = getelementptr i8, ptr %dp_link, i32 -4
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %2 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %checksum, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 609, ptr noundef nonnull %value.addr.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_link_process_request(ptr noundef %dp_link) local_unnamed_addr #0 align 64 {
entry:
  %bp.i133.i = alloca [2 x i8], align 1
  %bp.i121.i = alloca [2 x i8], align 1
  %bp.i108.i = alloca [2 x i8], align 1
  %bp.i98.i = alloca [2 x i8], align 1
  %bp.i86.i = alloca [2 x i8], align 1
  %bp.i78.i = alloca [2 x i8], align 1
  %bp.i69.i = alloca i8, align 1
  %bp.i62.i = alloca i8, align 1
  %data.i51.i = alloca i8, align 1
  %data.i44.i = alloca i8, align 1
  %bp.i212.i.i = alloca [2 x i8], align 1
  %bp.i.i.i = alloca [2 x i8], align 1
  %bp.i.i = alloca i8, align 1
  %data.i112.i.i.i = alloca i8, align 1
  %data.i101.i.i.i = alloca i8, align 1
  %data.i90.i.i.i = alloca i8, align 1
  %data.i79.i.i.i = alloca i8, align 1
  %data.i68.i.i.i = alloca i8, align 1
  %data.i.i.i.i = alloca i8, align 1
  %data.i10.i.i = alloca i8, align 1
  %data.i.i23.i = alloca i8, align 1
  %data.i.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_link, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dp_link, i32 -12
  %request.i = getelementptr i8, ptr %dp_link, i32 140
  %0 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %request.i, align 4
  %.compoundliteral.sroa.2.0.request.sroa_idx.i = getelementptr i8, ptr %dp_link, i32 144
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.request.sroa_idx.i = getelementptr i8, ptr %dp_link, i32 148
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i, align 4
  %test_video.i = getelementptr i8, ptr %dp_link, i32 12
  %3 = call ptr @memset(ptr %test_video.i, i32 0, i32 60)
  %test_bit_depth.i = getelementptr i8, ptr %dp_link, i32 16
  %4 = ptrtoint ptr %test_bit_depth.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %test_bit_depth.i, align 4
  %test_audio.i = getelementptr i8, ptr %dp_link, i32 72
  %5 = ptrtoint ptr %dp_link to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dp_link, align 4
  %test_response.i = getelementptr i8, ptr %dp_link, i32 4
  %6 = ptrtoint ptr %test_response.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %test_response.i, align 4
  %7 = call ptr @memset(ptr %test_audio.i, i32 0, i32 48)
  %sink_count.i = getelementptr i8, ptr %dp_link, i32 9
  %8 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sink_count.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %add.ptr, align 4
  %aux.i.i = getelementptr i8, ptr %dp_link, i32 -4
  %11 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aux.i.i, align 4
  %call.i.i.i = tail call i32 @drm_dp_dpcd_read(ptr noundef %12, i32 noundef 512, ptr noundef %sink_count.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %dp_link_parse_sink_status_field.exit.thread, label %if.end.i

dp_link_parse_sink_status_field.exit.thread:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %call.i.i.i) #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sink_count.i, align 1
  %and7.i.i = lshr i8 %14, 1
  %15 = and i8 %and7.i.i, 64
  %and11.i.i = and i8 %14, 63
  %or.i.i = or i8 %15, %and11.i.i
  store i8 %or.i.i, ptr %sink_count.i, align 1
  %conv17.i.i = zext i8 %or.i.i to i32
  %16 = lshr i8 %14, 6
  %17 = and i8 %16, 1
  %and.lobit.i.i = zext i8 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %conv17.i.i, i32 noundef %and.lobit.i.i) #6
  %18 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aux.i.i, align 4
  %link_status.i = getelementptr i8, ptr %dp_link, i32 244
  %call3.i = tail call i32 @drm_dp_dpcd_read_link_status(ptr noundef %19, ptr noundef %link_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 6
  br i1 %cmp4.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  br label %dp_link_parse_sink_status_field.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #6
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %data.i.i, align 1, !annotation !148
  %21 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aux.i.i, align 4
  %call.i.i18.i = call i32 @drm_dp_dpcd_read(ptr noundef %22, i32 noundef 513, ptr noundef nonnull %data.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18.i)
  %cmp.i19.i = icmp slt i32 %call.i.i18.i, 0
  br i1 %cmp.i19.i, label %if.then.i20.i, label %if.end.i21.i

if.then.i20.i:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call.i.i18.i) #6
  br label %dp_link_parse_request.exit.i

if.end.i21.i:                                     ; preds = %if.end7.i
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %conv.i.i) #6
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data.i.i, align 1
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.17) #6
  br label %dp_link_parse_request.exit.i

if.end3.i.i:                                      ; preds = %if.end.i21.i
  %28 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aux.i.i, align 4
  %call.i93.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %29, i32 noundef 536, ptr noundef nonnull %data.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %cmp6.i.i = icmp slt i32 %call.i93.i.i, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call.i93.i.i) #6
  br label %dp_link_parse_request.exit.i

if.end9.i.i:                                      ; preds = %if.end3.i.i
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data.i.i, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %if.end16.i.i [
    i8 0, label %if.end9.i.i.if.then14.i.i_crit_edge
    i8 16, label %if.end9.i.i.if.then14.i.i_crit_edge102
  ]

if.end9.i.i.if.then14.i.i_crit_edge102:           ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i.i

if.end9.i.i.if.then14.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end9.i.i.if.then14.i.i_crit_edge, %if.end9.i.i.if.then14.i.i_crit_edge102
  %conv15.i.i = zext i8 %31 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.18, i32 noundef %conv15.i.i) #6
  br label %if.else.i.i

if.end16.i.i:                                     ; preds = %if.end9.i.i
  %conv11.i.i = zext i8 %31 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %conv11.i.i) #6
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data.i.i, align 1
  %conv18.i.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv18.i.i, ptr %request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %34)
  %cmp21.i.i = icmp eq i8 %34, 8
  br i1 %cmp21.i.i, label %if.then23.i.i, label %if.end16.i.i.if.end32.i.i_crit_edge

if.end16.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

if.then23.i.i:                                    ; preds = %if.end16.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i.i) #6
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %data.i.i.i, align 1, !annotation !148
  %37 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aux.i.i, align 4
  %call.i.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %38, i32 noundef 584, ptr noundef nonnull %data.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call.i.i.i.i) #6
  br label %dp_link_parse_phy_test_params.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.then23.i.i
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data.i.i.i, align 1
  %41 = and i8 %40, 7
  %and.i.i.i = zext i8 %41 to i32
  %phy_params.i.i.i = getelementptr i8, ptr %dp_link, i32 116
  %42 = ptrtoint ptr %phy_params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i.i.i, ptr %phy_params.i.i.i, align 4
  %conv1.i.i.i = zext i8 %40 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %conv1.i.i.i) #6
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data.i.i.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %44, label %if.end.i.i.i.dp_link_parse_phy_test_params.exit.thread.i.i_crit_edge [
    i8 7, label %if.end.i.i.i.if.end27.i.i_crit_edge
    i8 0, label %if.end.i.i.i.if.end27.i.i_crit_edge103
    i8 1, label %if.end.i.i.i.if.end27.i.i_crit_edge104
    i8 2, label %if.end.i.i.i.if.end27.i.i_crit_edge105
    i8 3, label %if.end.i.i.i.if.end27.i.i_crit_edge106
    i8 4, label %if.end.i.i.i.if.end27.i.i_crit_edge107
    i8 5, label %if.end.i.i.i.if.end27.i.i_crit_edge108
  ]

if.end.i.i.i.if.end27.i.i_crit_edge108:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end.i.i.i.if.end27.i.i_crit_edge107:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end.i.i.i.if.end27.i.i_crit_edge106:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end.i.i.i.if.end27.i.i_crit_edge105:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end.i.i.i.if.end27.i.i_crit_edge104:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end.i.i.i.if.end27.i.i_crit_edge103:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end.i.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end.i.i.i.dp_link_parse_phy_test_params.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_link_parse_phy_test_params.exit.thread.i.i

dp_link_parse_phy_test_params.exit.thread.i.i:    ; preds = %if.end.i.i.i.dp_link_parse_phy_test_params.exit.thread.i.i_crit_edge, %if.then.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ %call.i.i.i.i, %if.then.i.i.i ], [ -22, %if.end.i.i.i.dp_link_parse_phy_test_params.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i) #6
  br label %if.then54.i.i

if.end27.i.i:                                     ; preds = %if.end.i.i.i.if.end27.i.i_crit_edge, %if.end.i.i.i.if.end27.i.i_crit_edge103, %if.end.i.i.i.if.end27.i.i_crit_edge104, %if.end.i.i.i.if.end27.i.i_crit_edge105, %if.end.i.i.i.if.end27.i.i_crit_edge106, %if.end.i.i.i.if.end27.i.i_crit_edge107, %if.end.i.i.i.if.end27.i.i_crit_edge108
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i) #6
  %call28.i.i = call fastcc i32 @dp_link_parse_link_training_params(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end32thread-pre-split.i.i, label %if.end27.i.i.if.then54.i.i_crit_edge

if.end27.i.i.if.then54.i.i_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54.i.i

if.end32thread-pre-split.i.i:                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i.i = load i32, ptr %request.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end32thread-pre-split.i.i, %if.end16.i.i.if.end32.i.i_crit_edge
  %47 = phi i32 [ %.pr.i.i, %if.end32thread-pre-split.i.i ], [ %conv18.i.i, %if.end16.i.i.if.end32.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp35.i.i = icmp eq i32 %47, 1
  br i1 %cmp35.i.i, label %if.then37.i.i, label %if.end32.i.i.if.end42.i.i_crit_edge

if.end32.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

if.then37.i.i:                                    ; preds = %if.end32.i.i
  %call38.i.i = call fastcc i32 @dp_link_parse_link_training_params(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool39.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.then37.i.i.if.end42.i.i_crit_edge, label %if.then37.i.i.if.then54.i.i_crit_edge

if.then37.i.i.if.then54.i.i_crit_edge:            ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54.i.i

if.then37.i.i.if.end42.i.i_crit_edge:             ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then37.i.i.if.end42.i.i_crit_edge, %if.end32.i.i.if.end42.i.i_crit_edge
  %48 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %request.i, align 4
  %and.i94.i.i = and i32 %49, 98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i.i)
  %tobool.not.i.i.i = icmp ne i32 %and.i94.i.i, 0
  %and2.i.i.i = and i32 %49, -99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %50 = and i1 %tobool.not.i.i.i, %tobool3.not.i.i.i
  br i1 %50, label %if.then46.i.i, label %if.end42.i.i.if.else.i.i_crit_edge

if.end42.i.i.if.else.i.i_crit_edge:               ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then46.i.i:                                    ; preds = %if.end42.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bp.i.i) #6
  %51 = ptrtoint ptr %bp.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %bp.i.i, align 1, !annotation !148
  %52 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aux.i.i, align 4
  %call.i.i32.i = call i32 @drm_dp_dpcd_read(ptr noundef %53, i32 noundef 545, ptr noundef nonnull %bp.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %cmp.i33.i = icmp slt i32 %call.i.i32.i, 0
  br i1 %cmp.i33.i, label %if.then.i34.i, label %if.end.i36.i

if.then.i34.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %call.i.i32.i) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end.i36.i:                                     ; preds = %if.then46.i.i
  %54 = ptrtoint ptr %bp.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bp.i.i, align 1
  %conv.i35.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %switch.i.i.i = icmp ult i8 %55, 4
  br i1 %switch.i.i.i, label %if.end4.i38.i, label %if.then2.i37.i

if.then2.i37.i:                                   ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %conv.i35.i) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end4.i38.i:                                    ; preds = %if.end.i36.i
  %56 = ptrtoint ptr %test_video.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv.i35.i, ptr %test_video.i, align 4
  %57 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %aux.i.i, align 4
  %call.i209.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %58, i32 noundef 562, ptr noundef nonnull %bp.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209.i.i)
  %cmp8.i.i = icmp slt i32 %call.i209.i.i, 0
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %call.i209.i.i) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end4.i38.i
  %59 = ptrtoint ptr %bp.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bp.i.i, align 1
  %61 = and i8 %60, 8
  %and.i.i = zext i8 %61 to i32
  %test_dyn_range.i.i = getelementptr i8, ptr %dp_link, i32 20
  %62 = ptrtoint ptr %test_dyn_range.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.i.i, ptr %test_dyn_range.i.i, align 4
  %63 = and i8 %60, -32
  store i8 %63, ptr %bp.i.i, align 1
  %conv18.i39.i = zext i8 %63 to i32
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %63, label %if.then20.i.i [
    i8 0, label %if.end11.i.i.if.end22.i.i_crit_edge
    i8 32, label %if.end11.i.i.if.end22.i.i_crit_edge109
    i8 64, label %if.end11.i.i.if.end22.i.i_crit_edge110
  ]

if.end11.i.i.if.end22.i.i_crit_edge110:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

if.end11.i.i.if.end22.i.i_crit_edge109:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

if.end11.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

if.then20.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %conv18.i39.i) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end22.i.i:                                     ; preds = %if.end11.i.i.if.end22.i.i_crit_edge, %if.end11.i.i.if.end22.i.i_crit_edge109, %if.end11.i.i.if.end22.i.i_crit_edge110
  %65 = ptrtoint ptr %test_bit_depth.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv18.i39.i, ptr %test_bit_depth.i, align 4
  %test_h_total.i.i = getelementptr i8, ptr %dp_link, i32 24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i.i.i) #6
  %66 = ptrtoint ptr %bp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %bp.i.i.i, align 1, !annotation !148
  %67 = getelementptr inbounds [2 x i8], ptr %bp.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %67, align 1, !annotation !148
  %69 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %aux.i.i, align 4
  %call.i210.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 546, ptr noundef nonnull %bp.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i210.i.i)
  %cmp1.i.i40.i = icmp slt i32 %call.i210.i.i, 2
  br i1 %cmp1.i.i40.i, label %if.then29.i.i, label %if.end30.i.i

if.then29.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 546) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i.i.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end30.i.i:                                     ; preds = %if.end22.i.i
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %67, align 1
  %conv.i.i41.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %bp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bp.i.i.i, align 1
  %conv5.i.i.i = zext i8 %74 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i41.i
  %75 = ptrtoint ptr %test_h_total.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i.i.i, ptr %test_h_total.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i.i.i) #6
  %test_v_total.i.i = getelementptr i8, ptr %dp_link, i32 28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i212.i.i) #6
  %76 = ptrtoint ptr %bp.i212.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %bp.i212.i.i, align 1, !annotation !148
  %77 = getelementptr inbounds [2 x i8], ptr %bp.i212.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %77, align 1, !annotation !148
  %79 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %aux.i.i, align 4
  %call.i214.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %80, i32 noundef 548, ptr noundef nonnull %bp.i212.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i214.i.i)
  %cmp1.i215.i.i = icmp slt i32 %call.i214.i.i, 2
  br i1 %cmp1.i215.i.i, label %if.then35.i.i, label %if.end36.i.i

if.then35.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 548) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i212.i.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end36.i.i:                                     ; preds = %if.end30.i.i
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %77, align 1
  %conv.i217.i.i = zext i8 %82 to i32
  %83 = ptrtoint ptr %bp.i212.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bp.i212.i.i, align 1
  %conv5.i218.i.i = zext i8 %84 to i32
  %shl.i219.i.i = shl nuw nsw i32 %conv5.i218.i.i, 8
  %or.i220.i.i = or i32 %shl.i219.i.i, %conv.i217.i.i
  %85 = ptrtoint ptr %test_v_total.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i220.i.i, ptr %test_v_total.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i212.i.i) #6
  %test_h_start.i.i = getelementptr i8, ptr %dp_link, i32 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i133.i) #6
  %86 = ptrtoint ptr %bp.i133.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %bp.i133.i, align 1, !annotation !148
  %87 = getelementptr inbounds [2 x i8], ptr %bp.i133.i, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %87, align 1, !annotation !148
  %89 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %aux.i.i, align 4
  %call.i135.i = call i32 @drm_dp_dpcd_read(ptr noundef %90, i32 noundef 550, ptr noundef nonnull %bp.i133.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i135.i)
  %cmp1.i136.i = icmp slt i32 %call.i135.i, 2
  br i1 %cmp1.i136.i, label %if.then41.i.i, label %if.end42.i42.i

if.then41.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 550) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i133.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end42.i42.i:                                   ; preds = %if.end36.i.i
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %87, align 1
  %conv.i138.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %bp.i133.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bp.i133.i, align 1
  %conv5.i139.i = zext i8 %94 to i32
  %shl.i140.i = shl nuw nsw i32 %conv5.i139.i, 8
  %or.i141.i = or i32 %shl.i140.i, %conv.i138.i
  %95 = ptrtoint ptr %test_h_start.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or.i141.i, ptr %test_h_start.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i133.i) #6
  %test_v_start.i.i = getelementptr i8, ptr %dp_link, i32 36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i121.i) #6
  %96 = ptrtoint ptr %bp.i121.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %bp.i121.i, align 1, !annotation !148
  %97 = getelementptr inbounds [2 x i8], ptr %bp.i121.i, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %97, align 1, !annotation !148
  %99 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %aux.i.i, align 4
  %call.i123.i = call i32 @drm_dp_dpcd_read(ptr noundef %100, i32 noundef 552, ptr noundef nonnull %bp.i121.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i123.i)
  %cmp1.i124.i = icmp slt i32 %call.i123.i, 2
  br i1 %cmp1.i124.i, label %if.then47.i.i, label %if.end48.i.i

if.then47.i.i:                                    ; preds = %if.end42.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 552) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i121.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end48.i.i:                                     ; preds = %if.end42.i42.i
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %97, align 1
  %conv.i126.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %bp.i121.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %bp.i121.i, align 1
  %conv5.i127.i = zext i8 %104 to i32
  %shl.i128.i = shl nuw nsw i32 %conv5.i127.i, 8
  %or.i129.i = or i32 %shl.i128.i, %conv.i126.i
  %105 = ptrtoint ptr %test_v_start.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or.i129.i, ptr %test_v_start.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i121.i) #6
  %test_hsync_pol.i.i = getelementptr i8, ptr %dp_link, i32 40
  %test_hsync_width.i.i = getelementptr i8, ptr %dp_link, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i108.i) #6
  %106 = ptrtoint ptr %bp.i108.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %bp.i108.i, align 1, !annotation !148
  %107 = getelementptr inbounds [2 x i8], ptr %bp.i108.i, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -1, ptr %107, align 1, !annotation !148
  %109 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %aux.i.i, align 4
  %call.i110.i = call i32 @drm_dp_dpcd_read(ptr noundef %110, i32 noundef 554, ptr noundef nonnull %bp.i108.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i110.i)
  %cmp1.i111.i = icmp slt i32 %call.i110.i, 2
  br i1 %cmp1.i111.i, label %if.then55.i.i, label %if.end56.i.i

if.then55.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 554) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i108.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end56.i.i:                                     ; preds = %if.end48.i.i
  %111 = ptrtoint ptr %bp.i108.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bp.i108.i, align 1
  %113 = lshr i8 %112, 7
  %shr.i113.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %test_hsync_pol.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shr.i113.i, ptr %test_hsync_pol.i.i, align 4
  %115 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %107, align 1
  %conv5.i114.i = zext i8 %116 to i32
  %117 = and i8 %112, 127
  %and8.i115.i = zext i8 %117 to i32
  %shl.i116.i = shl nuw nsw i32 %and8.i115.i, 8
  %or.i117.i = or i32 %shl.i116.i, %conv5.i114.i
  %118 = ptrtoint ptr %test_hsync_width.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or.i117.i, ptr %test_hsync_width.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i108.i) #6
  %test_vsync_pol.i.i = getelementptr i8, ptr %dp_link, i32 48
  %test_vsync_width.i.i = getelementptr i8, ptr %dp_link, i32 52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i98.i) #6
  %119 = ptrtoint ptr %bp.i98.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %bp.i98.i, align 1, !annotation !148
  %120 = getelementptr inbounds [2 x i8], ptr %bp.i98.i, i32 0, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -1, ptr %120, align 1, !annotation !148
  %122 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %aux.i.i, align 4
  %call.i100.i = call i32 @drm_dp_dpcd_read(ptr noundef %123, i32 noundef 556, ptr noundef nonnull %bp.i98.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i100.i)
  %cmp1.i101.i = icmp slt i32 %call.i100.i, 2
  br i1 %cmp1.i101.i, label %if.then63.i.i, label %if.end64.i.i

if.then63.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 556) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i98.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end64.i.i:                                     ; preds = %if.end56.i.i
  %124 = ptrtoint ptr %bp.i98.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bp.i98.i, align 1
  %126 = lshr i8 %125, 7
  %shr.i.i = zext i8 %126 to i32
  %127 = ptrtoint ptr %test_vsync_pol.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %shr.i.i, ptr %test_vsync_pol.i.i, align 4
  %128 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %120, align 1
  %conv5.i103.i = zext i8 %129 to i32
  %130 = and i8 %125, 127
  %and8.i.i = zext i8 %130 to i32
  %shl.i104.i = shl nuw nsw i32 %and8.i.i, 8
  %or.i105.i = or i32 %shl.i104.i, %conv5.i103.i
  %131 = ptrtoint ptr %test_vsync_width.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or.i105.i, ptr %test_vsync_width.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i98.i) #6
  %test_h_width.i.i = getelementptr i8, ptr %dp_link, i32 56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i86.i) #6
  %132 = ptrtoint ptr %bp.i86.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -1, ptr %bp.i86.i, align 1, !annotation !148
  %133 = getelementptr inbounds [2 x i8], ptr %bp.i86.i, i32 0, i32 1
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %133, align 1, !annotation !148
  %135 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %aux.i.i, align 4
  %call.i88.i = call i32 @drm_dp_dpcd_read(ptr noundef %136, i32 noundef 558, ptr noundef nonnull %bp.i86.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i88.i)
  %cmp1.i89.i = icmp slt i32 %call.i88.i, 2
  br i1 %cmp1.i89.i, label %if.then69.i.i, label %if.end70.i.i

if.then69.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 558) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i86.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end70.i.i:                                     ; preds = %if.end64.i.i
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %133, align 1
  %conv.i91.i = zext i8 %138 to i32
  %139 = ptrtoint ptr %bp.i86.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bp.i86.i, align 1
  %conv5.i92.i = zext i8 %140 to i32
  %shl.i93.i = shl nuw nsw i32 %conv5.i92.i, 8
  %or.i94.i = or i32 %shl.i93.i, %conv.i91.i
  %141 = ptrtoint ptr %test_h_width.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or.i94.i, ptr %test_h_width.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i86.i) #6
  %test_v_height.i.i = getelementptr i8, ptr %dp_link, i32 60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bp.i78.i) #6
  %142 = ptrtoint ptr %bp.i78.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -1, ptr %bp.i78.i, align 1, !annotation !148
  %143 = getelementptr inbounds [2 x i8], ptr %bp.i78.i, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -1, ptr %143, align 1, !annotation !148
  %145 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %aux.i.i, align 4
  %call.i80.i = call i32 @drm_dp_dpcd_read(ptr noundef %146, i32 noundef 560, ptr noundef nonnull %bp.i78.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i80.i)
  %cmp1.i.i = icmp slt i32 %call.i80.i, 2
  br i1 %cmp1.i.i, label %if.then75.i.i, label %if.end76.i.i

if.then75.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 560) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i78.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end76.i.i:                                     ; preds = %if.end70.i.i
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %143, align 1
  %conv.i82.i = zext i8 %148 to i32
  %149 = ptrtoint ptr %bp.i78.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bp.i78.i, align 1
  %conv5.i.i = zext i8 %150 to i32
  %shl.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or.i83.i = or i32 %shl.i.i, %conv.i82.i
  %151 = ptrtoint ptr %test_v_height.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %or.i83.i, ptr %test_v_height.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bp.i78.i) #6
  %test_rr_d.i.i = getelementptr i8, ptr %dp_link, i32 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bp.i69.i) #6
  %152 = ptrtoint ptr %bp.i69.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -1, ptr %bp.i69.i, align 1, !annotation !148
  %153 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %aux.i.i, align 4
  %call.i71.i = call i32 @drm_dp_dpcd_read(ptr noundef %154, i32 noundef 563, ptr noundef nonnull %bp.i69.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i71.i)
  %cmp.i72.i = icmp slt i32 %call.i71.i, 1
  br i1 %cmp.i72.i, label %if.then85.i.i, label %if.end86.i.i

if.then85.i.i:                                    ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 563) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bp.i69.i) #6
  %155 = ptrtoint ptr %test_rr_d.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %test_rr_d.i.i, align 4
  %and83.i.i = and i32 %156, 1
  store i32 %and83.i.i, ptr %test_rr_d.i.i, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

if.end86.i.i:                                     ; preds = %if.end76.i.i
  %157 = ptrtoint ptr %bp.i69.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bp.i69.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bp.i69.i) #6
  %159 = and i8 %158, 1
  %and83.i161.i = zext i8 %159 to i32
  %160 = ptrtoint ptr %test_rr_d.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %and83.i161.i, ptr %test_rr_d.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bp.i62.i) #6
  %161 = ptrtoint ptr %bp.i62.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -1, ptr %bp.i62.i, align 1, !annotation !148
  %162 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %aux.i.i, align 4
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %163, i32 noundef 564, ptr noundef nonnull %bp.i62.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i64.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i64.i, label %if.then91.i.i, label %end.i.i

if.then91.i.i:                                    ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 564) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bp.i62.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #6
  br label %dp_link_parse_video_pattern_params.exit.thread.i

dp_link_parse_video_pattern_params.exit.thread.i: ; preds = %if.then91.i.i, %if.then85.i.i, %if.then75.i.i, %if.then69.i.i, %if.then63.i.i, %if.then55.i.i, %if.then47.i.i, %if.then41.i.i, %if.then35.i.i, %if.then29.i.i, %if.then20.i.i, %if.then10.i.i, %if.then2.i37.i, %if.then.i34.i
  %retval.0.i43.ph.i = phi i32 [ -22, %if.then2.i37.i ], [ -22, %if.then20.i.i ], [ -22, %if.then91.i.i ], [ -22, %if.then85.i.i ], [ -22, %if.then75.i.i ], [ -22, %if.then69.i.i ], [ -22, %if.then63.i.i ], [ -22, %if.then55.i.i ], [ -22, %if.then47.i.i ], [ -22, %if.then41.i.i ], [ -22, %if.then35.i.i ], [ -22, %if.then29.i.i ], [ %call.i209.i.i, %if.then10.i.i ], [ %call.i.i32.i, %if.then.i34.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bp.i.i) #6
  br label %if.then54.i.i

end.i.i:                                          ; preds = %if.end86.i.i
  %test_rr_n.i.i = getelementptr i8, ptr %dp_link, i32 68
  %164 = ptrtoint ptr %bp.i62.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bp.i62.i, align 1
  %conv.i66.i = zext i8 %165 to i32
  %166 = ptrtoint ptr %test_rr_n.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv.i66.i, ptr %test_rr_n.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bp.i62.i) #6
  %167 = ptrtoint ptr %test_video.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %test_video.i, align 4
  %169 = ptrtoint ptr %test_dyn_range.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %test_dyn_range.i.i, align 4
  %171 = ptrtoint ptr %test_bit_depth.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %test_bit_depth.i, align 4
  %173 = ptrtoint ptr %test_h_total.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %test_h_total.i.i, align 4
  %175 = ptrtoint ptr %test_v_total.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %test_v_total.i.i, align 4
  %177 = ptrtoint ptr %test_h_start.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %test_h_start.i.i, align 4
  %179 = ptrtoint ptr %test_v_start.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %test_v_start.i.i, align 4
  %181 = ptrtoint ptr %test_hsync_pol.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %test_hsync_pol.i.i, align 4
  %183 = ptrtoint ptr %test_hsync_width.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %test_hsync_width.i.i, align 4
  %185 = ptrtoint ptr %test_vsync_pol.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %test_vsync_pol.i.i, align 4
  %187 = ptrtoint ptr %test_vsync_width.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %test_vsync_width.i.i, align 4
  %189 = ptrtoint ptr %test_h_width.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %test_h_width.i.i, align 4
  %191 = ptrtoint ptr %test_v_height.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %test_v_height.i.i, align 4
  %193 = ptrtoint ptr %test_rr_d.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %test_rr_d.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.42, i32 noundef %168, i32 noundef %170, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178, i32 noundef %180, i32 noundef %182, i32 noundef %184, i32 noundef %186, i32 noundef %188, i32 noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef %conv.i66.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bp.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i23.i) #6
  %195 = ptrtoint ptr %data.i.i23.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 -1, ptr %data.i.i23.i, align 1, !annotation !148
  %196 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %aux.i.i, align 4
  %call.i.i.i24.i = call i32 @drm_dp_dpcd_read(ptr noundef %197, i32 noundef 625, ptr noundef nonnull %data.i.i23.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i24.i)
  %cmp.i.i25.i = icmp slt i32 %call.i.i.i24.i, 0
  br i1 %cmp.i.i25.i, label %if.then.i.i26.i, label %if.end.i.i28.i

if.then.i.i26.i:                                  ; preds = %end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i24.i) #6
  br label %dp_link_parse_audio_mode.exit.thread.i.i

if.end.i.i28.i:                                   ; preds = %end.i.i
  %198 = ptrtoint ptr %data.i.i23.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %data.i.i23.i, align 1
  %conv.i.i.i = zext i8 %199 to i32
  %and.i.i27.i = and i32 %conv.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i27.i)
  %cmp1.i.i.i = icmp ugt i32 %and.i.i27.i, 6
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %and.i.i27.i, i32 noundef 6) #6
  br label %dp_link_parse_audio_mode.exit.thread.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i28.i
  %200 = lshr i32 %conv.i.i.i, 4
  %add.i.i.i = add nuw nsw i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %cmp7.i.i.i = icmp slt i8 %199, 0
  br i1 %cmp7.i.i.i, label %if.then9.i.i.i, label %if.end.i30.i

if.then9.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %add.i.i.i, i32 noundef 8) #6
  br label %dp_link_parse_audio_mode.exit.thread.i.i

dp_link_parse_audio_mode.exit.thread.i.i:         ; preds = %if.then9.i.i.i, %if.then3.i.i.i, %if.then.i.i26.i
  %retval.0.i.ph.i29.i = phi i32 [ -22, %if.then9.i.i.i ], [ -22, %if.then3.i.i.i ], [ %call.i.i.i24.i, %if.then.i.i26.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i23.i) #6
  br label %if.then54.i.i

if.end.i30.i:                                     ; preds = %if.end4.i.i.i
  %201 = ptrtoint ptr %test_audio.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and.i.i27.i, ptr %test_audio.i, align 4
  %test_audio_channel_count.i.i.i = getelementptr i8, ptr %dp_link, i32 76
  %202 = ptrtoint ptr %test_audio_channel_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add.i.i.i, ptr %test_audio_channel_count.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.47, i32 noundef %and.i.i27.i, i32 noundef %add.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i23.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i10.i.i) #6
  %203 = ptrtoint ptr %data.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -1, ptr %data.i10.i.i, align 1, !annotation !148
  %204 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %aux.i.i, align 4
  %call.i.i12.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %205, i32 noundef 626, ptr noundef nonnull %data.i10.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i.i)
  %cmp.i13.i.i = icmp slt i32 %call.i.i12.i.i, 0
  br i1 %cmp.i13.i.i, label %if.then.i14.i.i, label %if.end.i17.i.i

if.then.i14.i.i:                                  ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %call.i.i12.i.i) #6
  br label %dp_link_parse_audio_pattern_type.exit.thread.i.i

if.end.i17.i.i:                                   ; preds = %if.end.i30.i
  %206 = ptrtoint ptr %data.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %data.i10.i.i, align 1
  %conv.i15.i.i = zext i8 %207 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %207)
  %cmp1.i16.i.i = icmp ugt i8 %207, 1
  br i1 %cmp1.i16.i.i, label %if.then3.i18.i.i, label %if.end4.i.i

if.then3.i18.i.i:                                 ; preds = %if.end.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %conv.i15.i.i) #6
  br label %dp_link_parse_audio_pattern_type.exit.thread.i.i

dp_link_parse_audio_pattern_type.exit.thread.i.i: ; preds = %if.then3.i18.i.i, %if.then.i14.i.i
  %retval.0.i19.ph.i.i = phi i32 [ -22, %if.then3.i18.i.i ], [ %call.i.i12.i.i, %if.then.i14.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i10.i.i) #6
  br label %if.then54.i.i

if.end4.i.i:                                      ; preds = %if.end.i17.i.i
  %test_audio_pattern_type.i.i.i = getelementptr i8, ptr %dp_link, i32 80
  %208 = ptrtoint ptr %test_audio_pattern_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv.i15.i.i, ptr %test_audio_pattern_type.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.49, i32 noundef %conv.i15.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i10.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i.i.i) #6
  %209 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -1, ptr %data.i.i.i.i, align 1, !annotation !148
  %210 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %aux.i.i, align 4
  %call.i.i.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %211, i32 noundef 627, ptr noundef nonnull %data.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 627) #6
  br label %dp_link_get_period.exit.thread.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i
  %212 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %data.i.i.i.i, align 1
  %214 = and i8 %213, 15
  store i8 %214, ptr %data.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %214 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %214)
  %cmp3.i.i.i.i = icmp ugt i8 %214, 10
  br i1 %cmp3.i.i.i.i, label %if.then5.i.i.i.i, label %if.end.i20.i.i

if.then5.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i.i.i.i) #6
  br label %dp_link_get_period.exit.thread.i.i.i

dp_link_get_period.exit.thread.i.i.i:             ; preds = %if.then5.i.i.i.i, %if.then.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i.i) #6
  br label %if.then54.i.i

if.end.i20.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i.i) #6
  %test_audio_period_ch_1.i.i.i = getelementptr i8, ptr %dp_link, i32 84
  %215 = ptrtoint ptr %test_audio_period_ch_1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv2.i.i.i.i, ptr %test_audio_period_ch_1.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.50, i32 noundef %conv2.i.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i68.i.i.i) #6
  %216 = ptrtoint ptr %data.i68.i.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -1, ptr %data.i68.i.i.i, align 1, !annotation !148
  %217 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %aux.i.i, align 4
  %call.i.i70.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %218, i32 noundef 628, ptr noundef nonnull %data.i68.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70.i.i.i)
  %cmp.i71.i.i.i = icmp slt i32 %call.i.i70.i.i.i, 0
  br i1 %cmp.i71.i.i.i, label %if.then.i72.i.i.i, label %if.end.i75.i.i.i

if.then.i72.i.i.i:                                ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 628) #6
  br label %dp_link_get_period.exit78.thread.i.i.i

if.end.i75.i.i.i:                                 ; preds = %if.end.i20.i.i
  %219 = ptrtoint ptr %data.i68.i.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %data.i68.i.i.i, align 1
  %221 = and i8 %220, 15
  store i8 %221, ptr %data.i68.i.i.i, align 1
  %conv2.i73.i.i.i = zext i8 %221 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %221)
  %cmp3.i74.i.i.i = icmp ugt i8 %221, 10
  br i1 %cmp3.i74.i.i.i, label %if.then5.i76.i.i.i, label %if.end4.i21.i.i

if.then5.i76.i.i.i:                               ; preds = %if.end.i75.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i73.i.i.i) #6
  br label %dp_link_get_period.exit78.thread.i.i.i

dp_link_get_period.exit78.thread.i.i.i:           ; preds = %if.then5.i76.i.i.i, %if.then.i72.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i68.i.i.i) #6
  br label %if.then54.i.i

if.end4.i21.i.i:                                  ; preds = %if.end.i75.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i68.i.i.i) #6
  %test_audio_period_ch_2.i.i.i = getelementptr i8, ptr %dp_link, i32 88
  %222 = ptrtoint ptr %test_audio_period_ch_2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv2.i73.i.i.i, ptr %test_audio_period_ch_2.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.51, i32 noundef %conv2.i73.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i79.i.i.i) #6
  %223 = ptrtoint ptr %data.i79.i.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -1, ptr %data.i79.i.i.i, align 1, !annotation !148
  %224 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %aux.i.i, align 4
  %call.i.i81.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %225, i32 noundef 629, ptr noundef nonnull %data.i79.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81.i.i.i)
  %cmp.i82.i.i.i = icmp slt i32 %call.i.i81.i.i.i, 0
  br i1 %cmp.i82.i.i.i, label %if.then.i83.i.i.i, label %if.end.i86.i.i.i

if.then.i83.i.i.i:                                ; preds = %if.end4.i21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 629) #6
  br label %dp_link_get_period.exit89.thread.i.i.i

if.end.i86.i.i.i:                                 ; preds = %if.end4.i21.i.i
  %226 = ptrtoint ptr %data.i79.i.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %data.i79.i.i.i, align 1
  %228 = and i8 %227, 15
  store i8 %228, ptr %data.i79.i.i.i, align 1
  %conv2.i84.i.i.i = zext i8 %228 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %228)
  %cmp3.i85.i.i.i = icmp ugt i8 %228, 10
  br i1 %cmp3.i85.i.i.i, label %if.then5.i87.i.i.i, label %if.end8.i.i.i

if.then5.i87.i.i.i:                               ; preds = %if.end.i86.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i84.i.i.i) #6
  br label %dp_link_get_period.exit89.thread.i.i.i

dp_link_get_period.exit89.thread.i.i.i:           ; preds = %if.then5.i87.i.i.i, %if.then.i83.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i79.i.i.i) #6
  br label %if.then54.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i86.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i79.i.i.i) #6
  %test_audio_period_ch_3.i.i.i = getelementptr i8, ptr %dp_link, i32 92
  %229 = ptrtoint ptr %test_audio_period_ch_3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %conv2.i84.i.i.i, ptr %test_audio_period_ch_3.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.52, i32 noundef %conv2.i84.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i90.i.i.i) #6
  %230 = ptrtoint ptr %data.i90.i.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -1, ptr %data.i90.i.i.i, align 1, !annotation !148
  %231 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %aux.i.i, align 4
  %call.i.i92.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %232, i32 noundef 630, ptr noundef nonnull %data.i90.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92.i.i.i)
  %cmp.i93.i.i.i = icmp slt i32 %call.i.i92.i.i.i, 0
  br i1 %cmp.i93.i.i.i, label %if.then.i94.i.i.i, label %if.end.i97.i.i.i

if.then.i94.i.i.i:                                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 630) #6
  br label %dp_link_get_period.exit100.thread.i.i.i

if.end.i97.i.i.i:                                 ; preds = %if.end8.i.i.i
  %233 = ptrtoint ptr %data.i90.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %data.i90.i.i.i, align 1
  %235 = and i8 %234, 15
  store i8 %235, ptr %data.i90.i.i.i, align 1
  %conv2.i95.i.i.i = zext i8 %235 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %235)
  %cmp3.i96.i.i.i = icmp ugt i8 %235, 10
  br i1 %cmp3.i96.i.i.i, label %if.then5.i98.i.i.i, label %if.end12.i.i.i

if.then5.i98.i.i.i:                               ; preds = %if.end.i97.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i95.i.i.i) #6
  br label %dp_link_get_period.exit100.thread.i.i.i

dp_link_get_period.exit100.thread.i.i.i:          ; preds = %if.then5.i98.i.i.i, %if.then.i94.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i90.i.i.i) #6
  br label %if.then54.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i97.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i90.i.i.i) #6
  %test_audio_period_ch_4.i.i.i = getelementptr i8, ptr %dp_link, i32 96
  %236 = ptrtoint ptr %test_audio_period_ch_4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %conv2.i95.i.i.i, ptr %test_audio_period_ch_4.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.53, i32 noundef %conv2.i95.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i101.i.i.i) #6
  %237 = ptrtoint ptr %data.i101.i.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -1, ptr %data.i101.i.i.i, align 1, !annotation !148
  %238 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %aux.i.i, align 4
  %call.i.i103.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %239, i32 noundef 631, ptr noundef nonnull %data.i101.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103.i.i.i)
  %cmp.i104.i.i.i = icmp slt i32 %call.i.i103.i.i.i, 0
  br i1 %cmp.i104.i.i.i, label %if.then.i105.i.i.i, label %if.end.i108.i.i.i

if.then.i105.i.i.i:                               ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 631) #6
  br label %dp_link_get_period.exit111.thread.i.i.i

if.end.i108.i.i.i:                                ; preds = %if.end12.i.i.i
  %240 = ptrtoint ptr %data.i101.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %data.i101.i.i.i, align 1
  %242 = and i8 %241, 15
  store i8 %242, ptr %data.i101.i.i.i, align 1
  %conv2.i106.i.i.i = zext i8 %242 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %242)
  %cmp3.i107.i.i.i = icmp ugt i8 %242, 10
  br i1 %cmp3.i107.i.i.i, label %if.then5.i109.i.i.i, label %if.end16.i.i.i

if.then5.i109.i.i.i:                              ; preds = %if.end.i108.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i106.i.i.i) #6
  br label %dp_link_get_period.exit111.thread.i.i.i

dp_link_get_period.exit111.thread.i.i.i:          ; preds = %if.then5.i109.i.i.i, %if.then.i105.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i101.i.i.i) #6
  br label %if.then54.i.i

if.end16.i.i.i:                                   ; preds = %if.end.i108.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i101.i.i.i) #6
  %test_audio_period_ch_5.i.i.i = getelementptr i8, ptr %dp_link, i32 100
  %243 = ptrtoint ptr %test_audio_period_ch_5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv2.i106.i.i.i, ptr %test_audio_period_ch_5.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.54, i32 noundef %conv2.i106.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i112.i.i.i) #6
  %244 = ptrtoint ptr %data.i112.i.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 -1, ptr %data.i112.i.i.i, align 1, !annotation !148
  %245 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %aux.i.i, align 4
  %call.i.i114.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %246, i32 noundef 632, ptr noundef nonnull %data.i112.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114.i.i.i)
  %cmp.i115.i.i.i = icmp slt i32 %call.i.i114.i.i.i, 0
  br i1 %cmp.i115.i.i.i, label %if.then.i116.i.i.i, label %if.end.i119.i.i.i

if.then.i116.i.i.i:                               ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 632) #6
  br label %dp_link_get_period.exit122.thread.i.i.i

if.end.i119.i.i.i:                                ; preds = %if.end16.i.i.i
  %247 = ptrtoint ptr %data.i112.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %data.i112.i.i.i, align 1
  %249 = and i8 %248, 15
  store i8 %249, ptr %data.i112.i.i.i, align 1
  %conv2.i117.i.i.i = zext i8 %249 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %249)
  %cmp3.i118.i.i.i = icmp ugt i8 %249, 10
  br i1 %cmp3.i118.i.i.i, label %if.then5.i120.i.i.i, label %if.end20.i.i.i

if.then5.i120.i.i.i:                              ; preds = %if.end.i119.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i117.i.i.i) #6
  br label %dp_link_get_period.exit122.thread.i.i.i

dp_link_get_period.exit122.thread.i.i.i:          ; preds = %if.then5.i120.i.i.i, %if.then.i116.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i112.i.i.i) #6
  br label %if.then54.i.i

if.end20.i.i.i:                                   ; preds = %if.end.i119.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i112.i.i.i) #6
  %test_audio_period_ch_6.i.i.i = getelementptr i8, ptr %dp_link, i32 104
  %250 = ptrtoint ptr %test_audio_period_ch_6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %conv2.i117.i.i.i, ptr %test_audio_period_ch_6.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.55, i32 noundef %conv2.i117.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i51.i) #6
  %251 = ptrtoint ptr %data.i51.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 -1, ptr %data.i51.i, align 1, !annotation !148
  %252 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %aux.i.i, align 4
  %call.i.i53.i = call i32 @drm_dp_dpcd_read(ptr noundef %253, i32 noundef 633, ptr noundef nonnull %data.i51.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %cmp.i54.i = icmp slt i32 %call.i.i53.i, 0
  br i1 %cmp.i54.i, label %if.then.i55.i, label %if.end.i58.i

if.then.i55.i:                                    ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 633) #6
  br label %dp_link_get_period.exit61.thread.i

if.end.i58.i:                                     ; preds = %if.end20.i.i.i
  %254 = ptrtoint ptr %data.i51.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %data.i51.i, align 1
  %256 = and i8 %255, 15
  store i8 %256, ptr %data.i51.i, align 1
  %conv2.i56.i = zext i8 %256 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %256)
  %cmp3.i57.i = icmp ugt i8 %256, 10
  br i1 %cmp3.i57.i, label %if.then5.i59.i, label %if.end24.i.i.i

if.then5.i59.i:                                   ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i56.i) #6
  br label %dp_link_get_period.exit61.thread.i

dp_link_get_period.exit61.thread.i:               ; preds = %if.then5.i59.i, %if.then.i55.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i51.i) #6
  br label %if.then54.i.i

if.end24.i.i.i:                                   ; preds = %if.end.i58.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i51.i) #6
  %test_audio_period_ch_7.i.i.i = getelementptr i8, ptr %dp_link, i32 108
  %257 = ptrtoint ptr %test_audio_period_ch_7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %conv2.i56.i, ptr %test_audio_period_ch_7.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.56, i32 noundef %conv2.i56.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i44.i) #6
  %258 = ptrtoint ptr %data.i44.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 -1, ptr %data.i44.i, align 1, !annotation !148
  %259 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %aux.i.i, align 4
  %call.i.i46.i = call i32 @drm_dp_dpcd_read(ptr noundef %260, i32 noundef 634, ptr noundef nonnull %data.i44.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46.i)
  %cmp.i47.i = icmp slt i32 %call.i.i46.i, 0
  br i1 %cmp.i47.i, label %if.then.i48.i, label %if.end.i49.i

if.then.i48.i:                                    ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 634) #6
  br label %dp_link_get_period.exit.thread.i

if.end.i49.i:                                     ; preds = %if.end24.i.i.i
  %261 = ptrtoint ptr %data.i44.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %data.i44.i, align 1
  %263 = and i8 %262, 15
  store i8 %263, ptr %data.i44.i, align 1
  %conv2.i.i = zext i8 %263 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %263)
  %cmp3.i.i = icmp ugt i8 %263, 10
  br i1 %cmp3.i.i, label %if.then5.i.i, label %dp_link_parse_audio_pattern_params.exit.i

if.then5.i.i:                                     ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %conv2.i.i) #6
  br label %dp_link_get_period.exit.thread.i

dp_link_get_period.exit.thread.i:                 ; preds = %if.then5.i.i, %if.then.i48.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i44.i) #6
  br label %if.then54.i.i

dp_link_parse_audio_pattern_params.exit.i:        ; preds = %if.end.i49.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i44.i) #6
  %test_audio_period_ch_8.i.i.i = getelementptr i8, ptr %dp_link, i32 112
  %264 = ptrtoint ptr %test_audio_period_ch_8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %conv2.i.i, ptr %test_audio_period_ch_8.i.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef %conv2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool53.not.i.i = icmp eq i8 %263, 0
  br i1 %tobool53.not.i.i, label %dp_link_parse_audio_pattern_params.exit.i.if.else.i.i_crit_edge, label %dp_link_parse_audio_pattern_params.exit.i.if.then54.i.i_crit_edge

dp_link_parse_audio_pattern_params.exit.i.if.then54.i.i_crit_edge: ; preds = %dp_link_parse_audio_pattern_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54.i.i

dp_link_parse_audio_pattern_params.exit.i.if.else.i.i_crit_edge: ; preds = %dp_link_parse_audio_pattern_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then54.i.i:                                    ; preds = %dp_link_parse_audio_pattern_params.exit.i.if.then54.i.i_crit_edge, %dp_link_get_period.exit.thread.i, %dp_link_get_period.exit61.thread.i, %dp_link_get_period.exit122.thread.i.i.i, %dp_link_get_period.exit111.thread.i.i.i, %dp_link_get_period.exit100.thread.i.i.i, %dp_link_get_period.exit89.thread.i.i.i, %dp_link_get_period.exit78.thread.i.i.i, %dp_link_get_period.exit.thread.i.i.i, %dp_link_parse_audio_pattern_type.exit.thread.i.i, %dp_link_parse_audio_mode.exit.thread.i.i, %dp_link_parse_video_pattern_params.exit.thread.i, %if.then37.i.i.if.then54.i.i_crit_edge, %if.end27.i.i.if.then54.i.i_crit_edge, %dp_link_parse_phy_test_params.exit.thread.i.i
  %ret.299.i.i = phi i32 [ %conv2.i.i, %dp_link_parse_audio_pattern_params.exit.i.if.then54.i.i_crit_edge ], [ %retval.0.i.ph.i.i, %dp_link_parse_phy_test_params.exit.thread.i.i ], [ %call38.i.i, %if.then37.i.i.if.then54.i.i_crit_edge ], [ %call28.i.i, %if.end27.i.i.if.then54.i.i_crit_edge ], [ %retval.0.i43.ph.i, %dp_link_parse_video_pattern_params.exit.thread.i ], [ -22, %dp_link_get_period.exit.thread.i ], [ -22, %dp_link_get_period.exit61.thread.i ], [ -22, %dp_link_get_period.exit122.thread.i.i.i ], [ -22, %dp_link_get_period.exit111.thread.i.i.i ], [ -22, %dp_link_get_period.exit100.thread.i.i.i ], [ -22, %dp_link_get_period.exit89.thread.i.i.i ], [ -22, %dp_link_get_period.exit78.thread.i.i.i ], [ -22, %dp_link_get_period.exit.thread.i.i.i ], [ %retval.0.i19.ph.i.i, %dp_link_parse_audio_pattern_type.exit.thread.i.i ], [ %retval.0.i.ph.i29.i, %dp_link_parse_audio_mode.exit.thread.i.i ]
  %265 = ptrtoint ptr %test_response.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 2, ptr %test_response.i, align 4
  br label %dp_link_parse_request.exit.i

if.else.i.i:                                      ; preds = %dp_link_parse_audio_pattern_params.exit.i.if.else.i.i_crit_edge, %if.end42.i.i.if.else.i.i_crit_edge, %if.then14.i.i
  %266 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %267)
  %cmp57.not.i.i = icmp eq i32 %267, 4
  br i1 %cmp57.not.i.i, label %if.else62.i.i, label %if.then59.i.i

if.then59.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %268 = ptrtoint ptr %test_response.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 1, ptr %test_response.i, align 4
  br label %dp_link_parse_request.exit.i

if.else62.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %269 = ptrtoint ptr %test_response.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 4, ptr %test_response.i, align 4
  br label %dp_link_parse_request.exit.i

dp_link_parse_request.exit.i:                     ; preds = %if.else62.i.i, %if.then59.i.i, %if.then54.i.i, %if.then8.i.i, %if.then2.i.i, %if.then.i20.i
  %retval.0.i22.i = phi i32 [ %call.i.i18.i, %if.then.i20.i ], [ %call.i93.i.i, %if.then8.i.i ], [ 0, %if.then2.i.i ], [ 0, %if.then59.i.i ], [ 0, %if.else62.i.i ], [ %ret.299.i.i, %if.then54.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #6
  br label %dp_link_parse_sink_status_field.exit

dp_link_parse_sink_status_field.exit:             ; preds = %dp_link_parse_request.exit.i, %if.then6.i
  %retval.0.i = phi i32 [ %call3.i, %if.then6.i ], [ %retval.0.i22.i, %dp_link_parse_request.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool1.not, label %if.end3, label %dp_link_parse_sink_status_field.exit.cleanup_crit_edge

dp_link_parse_sink_status_field.exit.cleanup_crit_edge: ; preds = %dp_link_parse_sink_status_field.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %dp_link_parse_sink_status_field.exit
  %270 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %271)
  %cmp = icmp eq i32 %271, 4
  br i1 %cmp, label %if.end3.if.end43.sink.split_crit_edge, label %if.else

if.end3.if.end43.sink.split_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.else:                                          ; preds = %if.end3
  %arrayidx.i.i = getelementptr i8, ptr %dp_link, i32 246
  %272 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx.i.i, align 1
  %274 = and i8 %273, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool.not.i = icmp eq i8 %274, 0
  br i1 %tobool.not.i, label %if.end.i67, label %if.else.if.then7_crit_edge

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end.i67:                                       ; preds = %if.else
  %275 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %add.ptr, align 4
  %277 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %sink_count.i, align 1
  %conv1.i = zext i8 %278 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %276, i32 %conv1.i)
  %cmp.i = icmp eq i32 %276, %conv1.i
  br i1 %cmp.i, label %if.else10, label %if.end.i67.if.then7_crit_edge

if.end.i67.if.then7_crit_edge:                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %if.end.i67.if.then7_crit_edge, %if.else.if.then7_crit_edge
  %279 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %sink_count.i, align 1
  %conv7.i = zext i8 %280 to i32
  %281 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %conv7.i, ptr %add.ptr, align 4
  br label %if.end43.sink.split

if.else10:                                        ; preds = %if.end.i67
  %282 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %283)
  %cmp.not.i = icmp eq i32 %283, 1
  br i1 %cmp.not.i, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  %284 = ptrtoint ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i, align 4
  %286 = ptrtoint ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef %285, i32 noundef %287) #6
  %288 = ptrtoint ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i, align 4
  %num_lanes.i = getelementptr i8, ptr %dp_link, i32 132
  %290 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %num_lanes.i, align 4
  %291 = ptrtoint ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i, align 4
  %conv.i70 = trunc i32 %292 to i8
  %call.i = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %conv.i70) #6
  %rate.i = getelementptr i8, ptr %dp_link, i32 128
  %293 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %call.i, ptr %rate.i, align 4
  br label %if.end43.sink.split

if.else16:                                        ; preds = %if.else10
  %294 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %request.i, align 4
  %and.i = and i32 %295, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i74 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i74, label %if.then.i75, label %if.end.i77

if.then.i75:                                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.61) #6
  br label %if.else22

if.end.i77:                                       ; preds = %if.else16
  %296 = ptrtoint ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i, align 4
  %298 = zext i32 %297 to i64
  call void @__sanitizer_cov_trace_switch(i64 %298, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %297, label %if.end.i77.if.then4.i_crit_edge [
    i32 6, label %if.end.i77.lor.lhs.false.i_crit_edge
    i32 10, label %if.end.i77.lor.lhs.false.i_crit_edge111
    i32 20, label %if.end.i77.lor.lhs.false.i_crit_edge112
    i32 30, label %if.end.i77.lor.lhs.false.i_crit_edge113
  ]

if.end.i77.lor.lhs.false.i_crit_edge113:          ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.end.i77.lor.lhs.false.i_crit_edge112:          ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.end.i77.lor.lhs.false.i_crit_edge111:          ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.end.i77.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.end.i77.if.then4.i_crit_edge:                  ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %if.end.i77.lor.lhs.false.i_crit_edge, %if.end.i77.lor.lhs.false.i_crit_edge111, %if.end.i77.lor.lhs.false.i_crit_edge112, %if.end.i77.lor.lhs.false.i_crit_edge113
  %299 = ptrtoint ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i, align 4
  %301 = zext i32 %300 to i64
  call void @__sanitizer_cov_trace_switch(i64 %301, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %300, label %lor.lhs.false.i.if.then4.i_crit_edge [
    i32 1, label %lor.lhs.false.i.if.then19_crit_edge
    i32 2, label %lor.lhs.false.i.if.then19_crit_edge114
    i32 4, label %lor.lhs.false.i.if.then19_crit_edge115
  ]

lor.lhs.false.i.if.then19_crit_edge115:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

lor.lhs.false.i.if.then19_crit_edge114:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

lor.lhs.false.i.if.then19_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %if.end.i77.if.then4.i_crit_edge
  %302 = ptrtoint ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %297, i32 noundef %303) #6
  br label %if.else22

if.then19:                                        ; preds = %lor.lhs.false.i.if.then19_crit_edge, %lor.lhs.false.i.if.then19_crit_edge114, %lor.lhs.false.i.if.then19_crit_edge115
  %rate.i79 = getelementptr i8, ptr %dp_link, i32 128
  %304 = ptrtoint ptr %rate.i79 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rate.i79, align 4
  %num_lanes.i80 = getelementptr i8, ptr %dp_link, i32 132
  %306 = ptrtoint ptr %num_lanes.i80 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %num_lanes.i80, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.63, i32 noundef %305, i32 noundef %307) #6
  %308 = ptrtoint ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i, align 4
  %310 = ptrtoint ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.64, i32 noundef %309, i32 noundef %311) #6
  %312 = ptrtoint ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %.compoundliteral.sroa.3.0.request.sroa_idx.i, align 4
  %314 = ptrtoint ptr %num_lanes.i80 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %num_lanes.i80, align 4
  %315 = ptrtoint ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %.compoundliteral.sroa.2.0.request.sroa_idx.i, align 4
  %conv.i81 = trunc i32 %316 to i8
  %call23.i = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %conv.i81) #6
  %317 = ptrtoint ptr %rate.i79 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %call23.i, ptr %rate.i79, align 4
  %call.i.i82 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status.i, i32 noundef 0) #6
  %conv.i.i83 = zext i8 %call.i.i82 to i32
  %call3.i.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status.i, i32 noundef 1) #6
  %conv4.i.i = zext i8 %call3.i.i to i32
  %call7.i.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status.i, i32 noundef 2) #6
  %conv8.i.i = zext i8 %call7.i.i to i32
  %call11.i.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status.i, i32 noundef 3) #6
  %conv12.i.i = zext i8 %call11.i.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %conv.i.i83, i32 noundef %conv4.i.i, i32 noundef %conv8.i.i, i32 noundef %conv12.i.i) #6
  %call15.i.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status.i, i32 noundef 0) #6
  %conv16.i.i = zext i8 %call15.i.i to i32
  %call19.i.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status.i, i32 noundef 1) #6
  %conv20.i.i = zext i8 %call19.i.i to i32
  %call23.i.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status.i, i32 noundef 2) #6
  %conv24.i.i = zext i8 %call23.i.i to i32
  %call27.i.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status.i, i32 noundef 3) #6
  %conv28.i.i = zext i8 %call27.i.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66, i32 noundef %conv16.i.i, i32 noundef %conv20.i.i, i32 noundef %conv24.i.i, i32 noundef %conv28.i.i) #6
  %v_level.i.i = getelementptr i8, ptr %dp_link, i32 120
  %318 = ptrtoint ptr %v_level.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %v_level.i.i, align 4
  %conv29.i.i = zext i8 %319 to i32
  %p_level.i.i = getelementptr i8, ptr %dp_link, i32 121
  %320 = ptrtoint ptr %p_level.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %p_level.i.i, align 1
  %conv32.i.i = zext i8 %321 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.67, i32 noundef %conv29.i.i, i32 noundef %conv32.i.i) #6
  %call35.i.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status.i, i32 noundef 0) #6
  %322 = ptrtoint ptr %v_level.i.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %call35.i.i, ptr %v_level.i.i, align 4
  %call41.i.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status.i, i32 noundef 0) #6
  %323 = lshr i8 %call41.i.i, 3
  %324 = ptrtoint ptr %p_level.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %p_level.i.i, align 1
  %325 = ptrtoint ptr %v_level.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %v_level.i.i, align 4
  %conv53.i.i = zext i8 %326 to i32
  %conv57.i.i = zext i8 %323 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.68, i32 noundef %conv53.i.i, i32 noundef %conv57.i.i) #6
  br label %if.end43.sink.split

if.else22:                                        ; preds = %if.then4.i, %if.then.i75
  %num_lanes.i86 = getelementptr i8, ptr %dp_link, i32 132
  %327 = ptrtoint ptr %num_lanes.i86 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %num_lanes.i86, align 4
  %call.i87 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef %link_status.i, i32 noundef %328) #6
  %329 = ptrtoint ptr %num_lanes.i86 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %num_lanes.i86, align 4
  %call6.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef %link_status.i, i32 noundef %330) #6
  %conv.i88 = zext i1 %call.i87 to i32
  %conv9.i = zext i1 %call6.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.69, i32 noundef %conv.i88, i32 noundef %conv9.i) #6
  %331 = select i1 %call.i87, i1 %call6.i, i1 false
  br i1 %331, label %if.else28, label %if.else22.if.end43.sink.split_crit_edge

if.else22.if.end43.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.else28:                                        ; preds = %if.else22
  %332 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %request.i, align 4
  %334 = and i32 %333, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %334)
  %335 = icmp eq i32 %334, 2
  br i1 %335, label %if.then30, label %if.else28.if.end33_crit_edge

if.else28.if.end33_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %336 = ptrtoint ptr %dp_link to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %dp_link, align 4
  %or32 = or i32 %337, 2
  store i32 %or32, ptr %dp_link, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else28.if.end33_crit_edge
  %ret.0 = phi i32 [ 0, %if.then30 ], [ -22, %if.else28.if.end33_crit_edge ]
  %338 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %request.i, align 4
  %and.i92 = and i32 %339, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.i.not = icmp eq i32 %and.i92, 0
  br i1 %tobool.i.not, label %if.end33.if.end43_crit_edge, label %if.end33.if.end43.sink.split_crit_edge

if.end33.if.end43.sink.split_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end43.sink.split:                              ; preds = %if.end33.if.end43.sink.split_crit_edge, %if.else22.if.end43.sink.split_crit_edge, %if.then19, %if.then13, %if.then7, %if.end3.if.end43.sink.split_crit_edge
  %.sink101 = phi i32 [ 512, %if.then7 ], [ 8, %if.then19 ], [ 1, %if.then13 ], [ 4, %if.end3.if.end43.sink.split_crit_edge ], [ 128, %if.else22.if.end43.sink.split_crit_edge ], [ 32, %if.end33.if.end43.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ 0, %if.then7 ], [ 0, %if.then19 ], [ 0, %if.then13 ], [ 0, %if.end3.if.end43.sink.split_crit_edge ], [ 0, %if.else22.if.end43.sink.split_crit_edge ], [ -22, %if.end33.if.end43.sink.split_crit_edge ]
  %340 = ptrtoint ptr %dp_link to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %dp_link, align 4
  %or9 = or i32 %341, %.sink101
  store i32 %or9, ptr %dp_link, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.end33.if.end43_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end33.if.end43_crit_edge ], [ %ret.1.ph, %if.end43.sink.split ]
  %342 = ptrtoint ptr %dp_link to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %dp_link, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %343) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %dp_link_parse_sink_status_field.exit.cleanup_crit_edge, %dp_link_parse_sink_status_field.exit.thread, %if.then
  %retval.0 = phi i32 [ %ret.1, %if.end43 ], [ -22, %if.then ], [ %retval.0.i, %dp_link_parse_sink_status_field.exit.cleanup_crit_edge ], [ %call.i.i.i, %dp_link_parse_sink_status_field.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_link_get_colorimetry_config(ptr noundef readonly %dp_link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_link, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %request.i = getelementptr i8, ptr %dp_link, i32 140
  %0 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %request.i, align 4
  %2 = and i32 %1, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %test_dyn_range = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %test_dyn_range to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test_dyn_range, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %5, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_link_adjust_levels(ptr noundef %dp_link, ptr noundef %link_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_link, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_lanes = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp98.not = icmp eq i32 %1, 0
  br i1 %cmp98.not, label %if.end42.thread122, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.end42.thread122:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %v_level107 = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %v_level107 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %v_level107, align 4
  %p_level108 = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %p_level108 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %p_level108, align 1
  br label %if.end59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p_max.0101 = phi i32 [ %5, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %v_max.0100 = phi i32 [ %4, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call = tail call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status, i32 noundef %i.099) #6
  %call1 = tail call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status, i32 noundef %i.099) #6
  %conv = zext i8 %call to i32
  %conv2 = zext i8 %call1 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %i.099, i32 noundef %conv, i32 noundef %conv2) #6
  %4 = tail call i32 @llvm.smax.i32(i32 %v_max.0100, i32 %conv)
  %5 = tail call i32 @llvm.smax.i32(i32 %p_max.0101, i32 %conv2)
  %inc = add nuw i32 %i.099, 1
  %6 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_lanes, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = lshr i32 %5, 3
  %phi.cast = trunc i32 %phi.bo to i8
  %conv15 = trunc i32 %4 to i8
  %v_level = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %v_level to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %v_level, align 4
  %p_level = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %p_level to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %phi.cast, ptr %p_level, align 1
  %conv21 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv21)
  %cmp22 = icmp ugt i32 %conv21, 2
  br i1 %cmp22, label %if.then24, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %conv21, i32 noundef 2) #6
  %10 = ptrtoint ptr %v_level to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %v_level, align 4
  %11 = ptrtoint ptr %p_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %p_level, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %for.end.if.end30_crit_edge
  %12 = phi i8 [ %.pr, %if.then24 ], [ %phi.cast, %for.end.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp34 = icmp ugt i8 %12, 2
  br i1 %cmp34, label %if.end42.thread, label %if.end42

if.end42.thread:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %conv33 = zext i8 %12 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %conv33, i32 noundef 2) #6
  %13 = ptrtoint ptr %p_level to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %p_level, align 1
  br label %land.lhs.true

if.end42:                                         ; preds = %if.end30
  %14 = ptrtoint ptr %p_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr94.pr = load i8, ptr %p_level, align 1
  %conv45 = zext i8 %.pr94.pr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr94.pr)
  %cmp46 = icmp ugt i8 %.pr94.pr, 1
  br i1 %cmp46, label %if.end42.land.lhs.true_crit_edge, label %if.end42.if.end59_crit_edge

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.end42.land.lhs.true_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end42.land.lhs.true_crit_edge, %if.end42.thread
  %conv4597 = phi i32 [ 2, %if.end42.thread ], [ %conv45, %if.end42.land.lhs.true_crit_edge ]
  %15 = ptrtoint ptr %v_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %v_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp51 = icmp eq i8 %16, 2
  br i1 %cmp51, label %if.then53, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %conv4597, i32 noundef 1) #6
  %17 = ptrtoint ptr %p_level to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %p_level, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %land.lhs.true.if.end59_crit_edge, %if.end42.if.end59_crit_edge, %if.end42.thread122
  %v_level111119 = phi ptr [ %v_level, %if.then53 ], [ %v_level, %land.lhs.true.if.end59_crit_edge ], [ %v_level, %if.end42.if.end59_crit_edge ], [ %v_level107, %if.end42.thread122 ]
  %p_level112116 = phi ptr [ %p_level, %if.then53 ], [ %p_level, %land.lhs.true.if.end59_crit_edge ], [ %p_level, %if.end42.if.end59_crit_edge ], [ %p_level108, %if.end42.thread122 ]
  %18 = ptrtoint ptr %v_level111119 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %v_level111119, align 4
  %conv62 = zext i8 %19 to i32
  %20 = ptrtoint ptr %p_level112116 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p_level112116, align 1
  %conv65 = zext i8 %21 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %conv62, i32 noundef %conv65) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dp_link_reset_phy_params_vx_px(ptr nocapture noundef writeonly %dp_link) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %v_level = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %v_level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %v_level, align 4
  %p_level = getelementptr inbounds %struct.dp_link, ptr %dp_link, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %p_level to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %p_level, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dp_link_get_test_bits_depth(ptr nocapture noundef readnone %dp_link, i32 noundef %bpp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %bpp, label %entry.sw.epilog_crit_edge [
    i32 18, label %entry.sw.epilog.thread_crit_edge
    i32 24, label %sw.bb1
    i32 30, label %sw.bb2
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog.thread_crit_edge
  %tbd.0.ph = phi i32 [ 0, %entry.sw.epilog.thread_crit_edge ], [ 1, %sw.bb1 ], [ 2, %sw.bb2 ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.thread, %entry.sw.epilog_crit_edge
  %1 = phi i32 [ %tbd.0.ph, %sw.epilog.thread ], [ -1, %entry.sw.epilog_crit_edge ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_link_get(ptr noundef %dev, ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %aux, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 264, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.dp_link_private, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev7, align 4
  %aux8 = getelementptr inbounds %struct.dp_link_private, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %aux8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %aux, ptr %aux8, align 4
  %psm_mutex = getelementptr inbounds %struct.dp_link_private, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %psm_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @dp_link_get.__key) #6
  %dp_link9 = getelementptr inbounds %struct.dp_link_private, ptr %call.i, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dp_link9, %if.end6 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_link_parse_link_training_params(ptr nocapture noundef %link) unnamed_addr #0 align 64 {
entry:
  %bp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bp) #6
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bp, align 1, !annotation !148
  %aux = getelementptr inbounds %struct.dp_link_private, ptr %link, i32 0, i32 2
  %1 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aux, align 4
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %2, i32 noundef 537, ptr noundef nonnull %bp, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %call.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bp, align 1
  %conv = zext i8 %4 to i32
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %4, label %if.then2 [
    i8 6, label %if.end.if.end4_crit_edge
    i8 10, label %if.end.if.end4_crit_edge38
    i8 20, label %if.end.if.end4_crit_edge39
    i8 30, label %if.end.if.end4_crit_edge40
  ]

if.end.if.end4_crit_edge40:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.if.end4_crit_edge39:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.if.end4_crit_edge38:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %conv) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge38, %if.end.if.end4_crit_edge39, %if.end.if.end4_crit_edge40
  %test_link_rate = getelementptr inbounds %struct.dp_link_private, ptr %link, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %test_link_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %test_link_rate, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.24, i32 noundef %conv) #6
  %7 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aux, align 4
  %call.i36 = call i32 @drm_dp_dpcd_read(ptr noundef %8, i32 noundef 544, ptr noundef nonnull %bp, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp10 = icmp slt i32 %call.i36, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %call.i36) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bp, align 1
  %11 = and i8 %10, 31
  store i8 %11, ptr %bp, align 1
  %conv16 = zext i8 %11 to i32
  %12 = zext i32 %conv16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %conv16, label %if.then18 [
    i32 1, label %if.end13.if.end20_crit_edge
    i32 2, label %if.end13.if.end20_crit_edge41
    i32 4, label %if.end13.if.end20_crit_edge42
  ]

if.end13.if.end20_crit_edge42:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end13.if.end20_crit_edge41:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %conv16) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end13.if.end20_crit_edge, %if.end13.if.end20_crit_edge41, %if.end13.if.end20_crit_edge42
  %test_lane_count = getelementptr inbounds %struct.dp_link_private, ptr %link, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %test_lane_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv16, ptr %test_lane_count, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.27, i32 noundef %conv16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then12, %if.then2, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call.i36, %if.then12 ], [ 0, %if.end20 ], [ -22, %if.then18 ], [ -22, %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 795, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 814, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 827, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 1061, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 1104, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 1120, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 1127, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 1142, i32 2}
!18 = !{ptr @dp_link_get.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 1201, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 747, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 754, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 726, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 735, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 638, i32 3}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 642, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 645, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 660, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 664, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 580, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 586, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 536, i32 3}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 541, i32 3}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 546, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 550, i32 3}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 556, i32 3}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 561, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 381, i32 3}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 387, i32 3}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 397, i32 3}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 408, i32 3}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 419, i32 3}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 426, i32 3}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 433, i32 3}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 440, i32 3}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 448, i32 3}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 456, i32 3}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 463, i32 3}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 470, i32 3}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 478, i32 3}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 485, i32 3}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 489, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 317, i32 3}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 225, i32 3}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 232, i32 3}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 241, i32 3}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 249, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 202, i32 3}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 208, i32 2}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 131, i32 2}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 138, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 146, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 153, i32 2}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 160, i32 2}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 167, i32 2}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 174, i32 2}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 181, i32 2}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 103, i32 3}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 111, i32 3}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 777, i32 2}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 898, i32 3}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 904, i32 3}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 910, i32 2}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 914, i32 2}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 855, i32 2}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 861, i32 2}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 871, i32 2}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 881, i32 2}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/msm/dp/dp_link.c", i32 951, i32 8}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"auto-init"}
