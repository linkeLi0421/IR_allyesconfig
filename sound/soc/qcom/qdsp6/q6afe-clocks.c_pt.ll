; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6afe-clocks.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6afe-clocks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.q6dsp_clk_desc = type { ptr, i32, ptr, ptr, ptr }
%struct.q6dsp_clk_init = type { i32, i32, ptr, i32 }

@__initcall__kmod_q6afe_clocks__170_116_q6afe_clock_platform_driver_init6 = internal global ptr @q6afe_clock_platform_driver_init, section ".initcall6.init", align 4
@q6afe_clock_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @q6dsp_clock_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6afe_clock_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_q6afe_clock_platform_driver_exit = internal global ptr @q6afe_clock_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [56 x i8] c"q6afe_clocks.description=Q6 Audio Frontend clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [52 x i8] c"q6afe_clocks.file=sound/soc/qcom/qdsp6/q6afe-clocks\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"q6afe_clocks.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"q6afe-clock\00", [20 x i8] zeroinitializer }, align 32
@q6afe_clock_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6afe-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @q6dsp_clk_q6afe }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@q6dsp_clk_q6afe = internal constant { %struct.q6dsp_clk_desc, [44 x i8] } { %struct.q6dsp_clk_desc { ptr @q6afe_clks, i32 63, ptr @q6afe_set_lpass_clock, ptr @q6afe_vote_lpass_core_hw, ptr @q6afe_unvote_lpass_core_hw }, [44 x i8] zeroinitializer }, align 32
@q6afe_clks = internal constant { [63 x %struct.q6dsp_clk_init], [240 x i8] } { [63 x %struct.q6dsp_clk_init] [%struct.q6dsp_clk_init { i32 1, i32 256, ptr @.str.1, i32 19200000 }, %struct.q6dsp_clk_init { i32 2, i32 257, ptr @.str.2, i32 19200000 }, %struct.q6dsp_clk_init { i32 3, i32 258, ptr @.str.3, i32 19200000 }, %struct.q6dsp_clk_init { i32 4, i32 259, ptr @.str.4, i32 19200000 }, %struct.q6dsp_clk_init { i32 5, i32 260, ptr @.str.5, i32 19200000 }, %struct.q6dsp_clk_init { i32 6, i32 261, ptr @.str.6, i32 19200000 }, %struct.q6dsp_clk_init { i32 7, i32 262, ptr @.str.7, i32 19200000 }, %struct.q6dsp_clk_init { i32 8, i32 263, ptr @.str.8, i32 19200000 }, %struct.q6dsp_clk_init { i32 9, i32 264, ptr @.str.9, i32 19200000 }, %struct.q6dsp_clk_init { i32 10, i32 265, ptr @.str.10, i32 19200000 }, %struct.q6dsp_clk_init { i32 11, i32 266, ptr @.str.11, i32 19200000 }, %struct.q6dsp_clk_init { i32 12, i32 267, ptr @.str.12, i32 19200000 }, %struct.q6dsp_clk_init { i32 13, i32 268, ptr @.str.13, i32 19200000 }, %struct.q6dsp_clk_init { i32 14, i32 269, ptr @.str.14, i32 19200000 }, %struct.q6dsp_clk_init { i32 15, i32 270, ptr @.str.15, i32 19200000 }, %struct.q6dsp_clk_init { i32 16, i32 271, ptr @.str.16, i32 19200000 }, %struct.q6dsp_clk_init { i32 17, i32 272, ptr @.str.17, i32 19200000 }, %struct.q6dsp_clk_init { i32 18, i32 273, ptr @.str.18, i32 19200000 }, %struct.q6dsp_clk_init { i32 19, i32 274, ptr @.str.19, i32 19200000 }, %struct.q6dsp_clk_init { i32 20, i32 275, ptr @.str.20, i32 19200000 }, %struct.q6dsp_clk_init { i32 21, i32 276, ptr @.str.21, i32 19200000 }, %struct.q6dsp_clk_init { i32 22, i32 277, ptr @.str.22, i32 19200000 }, %struct.q6dsp_clk_init { i32 23, i32 278, ptr @.str.23, i32 19200000 }, %struct.q6dsp_clk_init { i32 24, i32 512, ptr @.str.24, i32 19200000 }, %struct.q6dsp_clk_init { i32 25, i32 513, ptr @.str.25, i32 19200000 }, %struct.q6dsp_clk_init { i32 26, i32 514, ptr @.str.26, i32 19200000 }, %struct.q6dsp_clk_init { i32 27, i32 515, ptr @.str.27, i32 19200000 }, %struct.q6dsp_clk_init { i32 28, i32 516, ptr @.str.28, i32 19200000 }, %struct.q6dsp_clk_init { i32 29, i32 517, ptr @.str.29, i32 19200000 }, %struct.q6dsp_clk_init { i32 30, i32 518, ptr @.str.30, i32 19200000 }, %struct.q6dsp_clk_init { i32 31, i32 519, ptr @.str.31, i32 19200000 }, %struct.q6dsp_clk_init { i32 32, i32 520, ptr @.str.32, i32 19200000 }, %struct.q6dsp_clk_init { i32 33, i32 521, ptr @.str.33, i32 19200000 }, %struct.q6dsp_clk_init { i32 34, i32 522, ptr @.str.34, i32 19200000 }, %struct.q6dsp_clk_init { i32 35, i32 512, ptr @.str.35, i32 19200000 }, %struct.q6dsp_clk_init { i32 36, i32 513, ptr @.str.36, i32 19200000 }, %struct.q6dsp_clk_init { i32 37, i32 514, ptr @.str.37, i32 19200000 }, %struct.q6dsp_clk_init { i32 38, i32 515, ptr @.str.38, i32 19200000 }, %struct.q6dsp_clk_init { i32 39, i32 516, ptr @.str.39, i32 19200000 }, %struct.q6dsp_clk_init { i32 40, i32 517, ptr @.str.40, i32 19200000 }, %struct.q6dsp_clk_init { i32 41, i32 518, ptr @.str.41, i32 19200000 }, %struct.q6dsp_clk_init { i32 42, i32 519, ptr @.str.42, i32 19200000 }, %struct.q6dsp_clk_init { i32 43, i32 520, ptr @.str.43, i32 19200000 }, %struct.q6dsp_clk_init { i32 44, i32 521, ptr @.str.44, i32 19200000 }, %struct.q6dsp_clk_init { i32 45, i32 522, ptr @.str.45, i32 19200000 }, %struct.q6dsp_clk_init { i32 46, i32 768, ptr @.str.46, i32 19200000 }, %struct.q6dsp_clk_init { i32 47, i32 769, ptr @.str.47, i32 19200000 }, %struct.q6dsp_clk_init { i32 48, i32 770, ptr @.str.48, i32 19200000 }, %struct.q6dsp_clk_init { i32 49, i32 772, ptr @.str.49, i32 19200000 }, %struct.q6dsp_clk_init { i32 50, i32 771, ptr @.str.50, i32 19200000 }, %struct.q6dsp_clk_init { i32 51, i32 773, ptr @.str.51, i32 19200000 }, %struct.q6dsp_clk_init { i32 52, i32 774, ptr @.str.52, i32 19200000 }, %struct.q6dsp_clk_init { i32 54, i32 777, ptr @.str.53, i32 19200000 }, %struct.q6dsp_clk_init { i32 55, i32 778, ptr @.str.54, i32 19200000 }, %struct.q6dsp_clk_init { i32 56, i32 779, ptr @.str.55, i32 19200000 }, %struct.q6dsp_clk_init { i32 57, i32 780, ptr @.str.56, i32 19200000 }, %struct.q6dsp_clk_init { i32 58, i32 781, ptr @.str.57, i32 19200000 }, %struct.q6dsp_clk_init { i32 59, i32 782, ptr @.str.58, i32 19200000 }, %struct.q6dsp_clk_init { i32 60, i32 783, ptr @.str.59, i32 19200000 }, %struct.q6dsp_clk_init { i32 61, i32 784, ptr @.str.60, i32 19200000 }, %struct.q6dsp_clk_init { i32 101, i32 2, ptr @.str.61, i32 0 }, %struct.q6dsp_clk_init { i32 102, i32 3, ptr @.str.62, i32 0 }, %struct.q6dsp_clk_init { i32 103, i32 4, ptr @.str.63, i32 0 }], [240 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_PRI_MI2S_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_PRI_MI2S_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_SEC_MI2S_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_SEC_MI2S_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_TER_MI2S_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_TER_MI2S_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_QUAD_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_QUAD_MI2S_EBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LPASS_CLK_ID_SPEAKER_I2S_IBIT\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LPASS_CLK_ID_SPEAKER_I2S_EBIT\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LPASS_CLK_ID_SPEAKER_I2S_OSR\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUI_MI2S_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUI_MI2S_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_SEN_MI2S_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_SEN_MI2S_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_INT0_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_INT1_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_INT2_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_INT3_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_INT4_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_INT5_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LPASS_CLK_ID_INT6_MI2S_IBIT\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_QUI_MI2S_OSR\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_PRI_PCM_IBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_PRI_PCM_EBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_SEC_PCM_IBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_SEC_PCM_EBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_TER_PCM_IBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_TER_PCM_EBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUAD_PCM_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUAD_PCM_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUIN_PCM_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUIN_PCM_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LPASS_CLK_ID_QUI_PCM_OSR\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_PRI_TDM_IBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_PRI_TDM_EBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_SEC_TDM_IBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_SEC_TDM_EBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_TER_TDM_IBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_TER_TDM_EBIT\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUAD_TDM_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUAD_TDM_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUIN_TDM_IBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_QUIN_TDM_EBIT\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_QUIN_TDM_OSR\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LPASS_CLK_ID_MCLK_1\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LPASS_CLK_ID_MCLK_2\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LPASS_CLK_ID_MCLK_3\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LPASS_CLK_ID_MCLK_4\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LPASS_CLK_ID_INTERNAL_DIGITAL_CODEC_CORE\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LPASS_CLK_ID_INT_MCLK_0\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LPASS_CLK_ID_INT_MCLK_1\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPASS_CLK_ID_WSA_CORE_MCLK\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LPASS_CLK_ID_WSA_CORE_NPL_MCLK\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_VA_CORE_MCLK\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_TX_CORE_MCLK\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LPASS_CLK_ID_TX_CORE_NPL_MCLK\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPASS_CLK_ID_RX_CORE_MCLK\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LPASS_CLK_ID_RX_CORE_NPL_MCLK\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LPASS_CLK_ID_VA_CORE_2X_MCLK\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LPASS_AVTIMER_MACRO\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LPASS_HW_MACRO\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LPASS_HW_DCODEC\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"q6afe_clock_platform_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 109, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 111, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"q6afe_clock_device_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 102, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"q6dsp_clk_q6afe\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 93, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"q6afe_clks\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 21, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 22, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 23, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 24, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 25, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 26, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 27, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 28, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 29, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 30, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 31, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 32, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 33, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 34, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 35, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 36, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 37, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 38, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 39, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 40, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 41, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 42, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 43, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 44, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 45, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 46, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 47, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 48, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 49, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 50, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 51, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 52, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 53, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 54, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 55, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 56, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 57, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 58, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 59, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 60, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 61, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 62, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 63, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 64, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 65, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 66, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 67, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 68, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 69, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 70, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 71, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 72, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 73, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 74, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 75, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 76, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 77, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 78, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 79, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 80, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 81, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 82, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 85, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [39 x i8] c"../sound/soc/qcom/qdsp6/q6afe-clocks.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 88, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_q6afe_clock_platform_driver_exit, ptr @__initcall__kmod_q6afe_clocks__170_116_q6afe_clock_platform_driver_init6, ptr @q6afe_clock_platform_driver_exit, ptr @q6afe_clock_platform_driver, ptr @.str, ptr @q6afe_clock_device_id, ptr @q6dsp_clk_q6afe, ptr @q6afe_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_clock_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_clock_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dsp_clk_q6afe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_clks to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @q6afe_clock_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @q6afe_clock_platform_driver, ptr noundef null) #2
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @q6afe_clock_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @platform_driver_unregister(ptr noundef nonnull @q6afe_clock_platform_driver) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6dsp_clock_dev_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_set_lpass_clock(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_vote_lpass_core_hw(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_unvote_lpass_core_hw(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_q6afe_clocks__170_116_q6afe_clock_platform_driver_init6, !1, !"__initcall__kmod_q6afe_clocks__170_116_q6afe_clock_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 116, i32 1}
!2 = !{ptr @__exitcall_q6afe_clock_platform_driver_exit, !1, !"__exitcall_q6afe_clock_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 118, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 119, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 111, i32 11}
!10 = !{ptr @q6afe_clock_platform_driver, !11, !"q6afe_clock_platform_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 109, i32 31}
!12 = !{ptr @q6afe_clock_device_id, !13, !"q6afe_clock_device_id", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 102, i32 34}
!14 = !{ptr @q6dsp_clk_q6afe, !15, !"q6dsp_clk_q6afe", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 93, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 22, i32 2}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 23, i32 2}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 24, i32 2}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 25, i32 2}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 26, i32 2}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 27, i32 2}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 28, i32 2}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 29, i32 2}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 30, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 31, i32 2}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 32, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 33, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 34, i32 2}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 35, i32 2}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 36, i32 2}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 37, i32 2}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 38, i32 2}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 39, i32 2}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 40, i32 2}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 41, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 42, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 43, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 44, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 45, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 46, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 47, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 48, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 49, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 50, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 51, i32 2}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 52, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 53, i32 2}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 54, i32 2}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 55, i32 2}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 56, i32 2}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 57, i32 2}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 58, i32 2}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 59, i32 2}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 60, i32 2}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 61, i32 2}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 62, i32 2}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 63, i32 2}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 64, i32 2}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 65, i32 2}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 66, i32 2}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 67, i32 2}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 68, i32 2}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 69, i32 2}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 70, i32 2}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 71, i32 2}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 72, i32 2}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 73, i32 2}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 74, i32 2}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 75, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 76, i32 2}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 77, i32 2}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 78, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 79, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 80, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 81, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 82, i32 2}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 85, i32 2}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 88, i32 2}
!142 = !{ptr @q6afe_clks, !143, !"q6afe_clks", i1 false, i1 false}
!143 = !{!"../sound/soc/qcom/qdsp6/q6afe-clocks.c", i32 21, i32 36}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
